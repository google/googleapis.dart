// This is a generated file (see the discoveryapis_generator project).

// ignore_for_file: camel_case_types
// ignore_for_file: comment_references
// ignore_for_file: file_names
// ignore_for_file: library_names
// ignore_for_file: lines_longer_than_80_chars
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: prefer_expression_function_bodies
// ignore_for_file: prefer_interpolation_to_compose_strings
// ignore_for_file: unnecessary_brace_in_string_interps
// ignore_for_file: unnecessary_lambdas
// ignore_for_file: unnecessary_string_interpolations

/// Data Labeling API - v1beta1
///
/// Public API for Google Cloud AI Data Labeling Service.
///
/// For more information, see <https://cloud.google.com/data-labeling/docs/>
///
/// Create an instance of [DataLabelingApi] to access these resources:
///
/// - [ProjectsResource]
///   - [ProjectsAnnotationSpecSetsResource]
///   - [ProjectsDatasetsResource]
///     - [ProjectsDatasetsAnnotatedDatasetsResource]
///       - [ProjectsDatasetsAnnotatedDatasetsDataItemsResource]
///       - [ProjectsDatasetsAnnotatedDatasetsExamplesResource]
///       - [ProjectsDatasetsAnnotatedDatasetsFeedbackThreadsResource]
/// - [ProjectsDatasetsAnnotatedDatasetsFeedbackThreadsFeedbackMessagesResource]
///     - [ProjectsDatasetsDataItemsResource]
///     - [ProjectsDatasetsEvaluationsResource]
///       - [ProjectsDatasetsEvaluationsExampleComparisonsResource]
///     - [ProjectsDatasetsImageResource]
///     - [ProjectsDatasetsTextResource]
///     - [ProjectsDatasetsVideoResource]
///   - [ProjectsEvaluationJobsResource]
///   - [ProjectsEvaluationsResource]
///   - [ProjectsInstructionsResource]
///   - [ProjectsOperationsResource]
library datalabeling.v1beta1;

import 'dart:async' as async;
import 'dart:convert' as convert;
import 'dart:core' as core;

import 'package:_discoveryapis_commons/_discoveryapis_commons.dart' as commons;
import 'package:http/http.dart' as http;

import '../src/empty.dart';
import '../src/user_agent.dart';

export 'package:_discoveryapis_commons/_discoveryapis_commons.dart'
    show ApiRequestError, DetailedApiRequestError;

/// Public API for Google Cloud AI Data Labeling Service.
class DataLabelingApi {
  /// See, edit, configure, and delete your Google Cloud data and see the email
  /// address for your Google Account.
  static const cloudPlatformScope =
      'https://www.googleapis.com/auth/cloud-platform';

  final commons.ApiRequester _requester;

  ProjectsResource get projects => ProjectsResource(_requester);

  DataLabelingApi(http.Client client,
      {core.String rootUrl = 'https://datalabeling.googleapis.com/',
      core.String servicePath = ''})
      : _requester =
            commons.ApiRequester(client, rootUrl, servicePath, requestHeaders);
}

class ProjectsResource {
  final commons.ApiRequester _requester;

  ProjectsAnnotationSpecSetsResource get annotationSpecSets =>
      ProjectsAnnotationSpecSetsResource(_requester);
  ProjectsDatasetsResource get datasets => ProjectsDatasetsResource(_requester);
  ProjectsEvaluationJobsResource get evaluationJobs =>
      ProjectsEvaluationJobsResource(_requester);
  ProjectsEvaluationsResource get evaluations =>
      ProjectsEvaluationsResource(_requester);
  ProjectsInstructionsResource get instructions =>
      ProjectsInstructionsResource(_requester);
  ProjectsOperationsResource get operations =>
      ProjectsOperationsResource(_requester);

  ProjectsResource(commons.ApiRequester client) : _requester = client;
}

class ProjectsAnnotationSpecSetsResource {
  final commons.ApiRequester _requester;

  ProjectsAnnotationSpecSetsResource(commons.ApiRequester client)
      : _requester = client;

  /// Creates an annotation spec set by providing a set of labels.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. AnnotationSpecSet resource parent, format:
  /// projects/{project_id}
  /// Value must have pattern `^projects/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDatalabelingV1beta1AnnotationSpecSet].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDatalabelingV1beta1AnnotationSpecSet> create(
    GoogleCloudDatalabelingV1beta1CreateAnnotationSpecSetRequest request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request.toJson());
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url =
        'v1beta1/' + core.Uri.encodeFull('$parent') + '/annotationSpecSets';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return GoogleCloudDatalabelingV1beta1AnnotationSpecSet.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Deletes an annotation spec set by resource name.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. AnnotationSpec resource name, format:
  /// `projects/{project_id}/annotationSpecSets/{annotation_spec_set_id}`.
  /// Value must have pattern `^projects/\[^/\]+/annotationSpecSets/\[^/\]+$`.
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
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1beta1/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'DELETE',
      queryParams: _queryParams,
    );
    return GoogleProtobufEmpty.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Gets an annotation spec set by resource name.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. AnnotationSpecSet resource name, format:
  /// projects/{project_id}/annotationSpecSets/{annotation_spec_set_id}
  /// Value must have pattern `^projects/\[^/\]+/annotationSpecSets/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDatalabelingV1beta1AnnotationSpecSet].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDatalabelingV1beta1AnnotationSpecSet> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1beta1/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return GoogleCloudDatalabelingV1beta1AnnotationSpecSet.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Lists annotation spec sets for a project.
  ///
  /// Pagination is supported.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Parent of AnnotationSpecSet resource, format:
  /// projects/{project_id}
  /// Value must have pattern `^projects/\[^/\]+$`.
  ///
  /// [filter] - Optional. Filter is not supported at this moment.
  ///
  /// [pageSize] - Optional. Requested page size. Server may return fewer
  /// results than requested. Default value is 100.
  ///
  /// [pageToken] - Optional. A token identifying a page of results for the
  /// server to return. Typically obtained by
  /// ListAnnotationSpecSetsResponse.next_page_token of the previous
  /// \[DataLabelingService.ListAnnotationSpecSets\] call. Return first page if
  /// empty.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a
  /// [GoogleCloudDatalabelingV1beta1ListAnnotationSpecSetsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDatalabelingV1beta1ListAnnotationSpecSetsResponse>
      list(
    core.String parent, {
    core.String? filter,
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (filter != null) 'filter': [filter],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final _url =
        'v1beta1/' + core.Uri.encodeFull('$parent') + '/annotationSpecSets';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return GoogleCloudDatalabelingV1beta1ListAnnotationSpecSetsResponse
        .fromJson(_response as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsDatasetsResource {
  final commons.ApiRequester _requester;

  ProjectsDatasetsAnnotatedDatasetsResource get annotatedDatasets =>
      ProjectsDatasetsAnnotatedDatasetsResource(_requester);
  ProjectsDatasetsDataItemsResource get dataItems =>
      ProjectsDatasetsDataItemsResource(_requester);
  ProjectsDatasetsEvaluationsResource get evaluations =>
      ProjectsDatasetsEvaluationsResource(_requester);
  ProjectsDatasetsImageResource get image =>
      ProjectsDatasetsImageResource(_requester);
  ProjectsDatasetsTextResource get text =>
      ProjectsDatasetsTextResource(_requester);
  ProjectsDatasetsVideoResource get video =>
      ProjectsDatasetsVideoResource(_requester);

  ProjectsDatasetsResource(commons.ApiRequester client) : _requester = client;

  /// Creates dataset.
  ///
  /// If success return a Dataset resource.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Dataset resource parent, format:
  /// projects/{project_id}
  /// Value must have pattern `^projects/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDatalabelingV1beta1Dataset].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDatalabelingV1beta1Dataset> create(
    GoogleCloudDatalabelingV1beta1CreateDatasetRequest request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request.toJson());
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1beta1/' + core.Uri.encodeFull('$parent') + '/datasets';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return GoogleCloudDatalabelingV1beta1Dataset.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Deletes a dataset by resource name.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Dataset resource name, format:
  /// projects/{project_id}/datasets/{dataset_id}
  /// Value must have pattern `^projects/\[^/\]+/datasets/\[^/\]+$`.
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
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1beta1/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'DELETE',
      queryParams: _queryParams,
    );
    return GoogleProtobufEmpty.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Exports data and annotations from dataset.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Dataset resource name, format:
  /// projects/{project_id}/datasets/{dataset_id}
  /// Value must have pattern `^projects/\[^/\]+/datasets/\[^/\]+$`.
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
  async.Future<GoogleLongrunningOperation> exportData(
    GoogleCloudDatalabelingV1beta1ExportDataRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request.toJson());
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1beta1/' + core.Uri.encodeFull('$name') + ':exportData';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return GoogleLongrunningOperation.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Gets dataset by resource name.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Dataset resource name, format:
  /// projects/{project_id}/datasets/{dataset_id}
  /// Value must have pattern `^projects/\[^/\]+/datasets/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDatalabelingV1beta1Dataset].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDatalabelingV1beta1Dataset> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1beta1/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return GoogleCloudDatalabelingV1beta1Dataset.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Imports data into dataset based on source locations defined in request.
  ///
  /// It can be called multiple times for the same dataset. Each dataset can
  /// only have one long running operation running on it. For example, no
  /// labeling task (also long running operation) can be started while importing
  /// is still ongoing. Vice versa.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Dataset resource name, format:
  /// projects/{project_id}/datasets/{dataset_id}
  /// Value must have pattern `^projects/\[^/\]+/datasets/\[^/\]+$`.
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
  async.Future<GoogleLongrunningOperation> importData(
    GoogleCloudDatalabelingV1beta1ImportDataRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request.toJson());
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1beta1/' + core.Uri.encodeFull('$name') + ':importData';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return GoogleLongrunningOperation.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Lists datasets under a project.
  ///
  /// Pagination is supported.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Dataset resource parent, format:
  /// projects/{project_id}
  /// Value must have pattern `^projects/\[^/\]+$`.
  ///
  /// [filter] - Optional. Filter on dataset is not supported at this moment.
  ///
  /// [pageSize] - Optional. Requested page size. Server may return fewer
  /// results than requested. Default value is 100.
  ///
  /// [pageToken] - Optional. A token identifying a page of results for the
  /// server to return. Typically obtained by
  /// ListDatasetsResponse.next_page_token of the previous
  /// \[DataLabelingService.ListDatasets\] call. Returns the first page if
  /// empty.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDatalabelingV1beta1ListDatasetsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDatalabelingV1beta1ListDatasetsResponse> list(
    core.String parent, {
    core.String? filter,
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (filter != null) 'filter': [filter],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1beta1/' + core.Uri.encodeFull('$parent') + '/datasets';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return GoogleCloudDatalabelingV1beta1ListDatasetsResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsDatasetsAnnotatedDatasetsResource {
  final commons.ApiRequester _requester;

  ProjectsDatasetsAnnotatedDatasetsDataItemsResource get dataItems =>
      ProjectsDatasetsAnnotatedDatasetsDataItemsResource(_requester);
  ProjectsDatasetsAnnotatedDatasetsExamplesResource get examples =>
      ProjectsDatasetsAnnotatedDatasetsExamplesResource(_requester);
  ProjectsDatasetsAnnotatedDatasetsFeedbackThreadsResource
      get feedbackThreads =>
          ProjectsDatasetsAnnotatedDatasetsFeedbackThreadsResource(_requester);

  ProjectsDatasetsAnnotatedDatasetsResource(commons.ApiRequester client)
      : _requester = client;

  /// Deletes an annotated dataset by resource name.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Name of the annotated dataset to delete, format:
  /// projects/{project_id}/datasets/{dataset_id}/annotatedDatasets/
  /// {annotated_dataset_id}
  /// Value must have pattern
  /// `^projects/\[^/\]+/datasets/\[^/\]+/annotatedDatasets/\[^/\]+$`.
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
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1beta1/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'DELETE',
      queryParams: _queryParams,
    );
    return GoogleProtobufEmpty.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Gets an annotated dataset by resource name.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Name of the annotated dataset to get, format:
  /// projects/{project_id}/datasets/{dataset_id}/annotatedDatasets/
  /// {annotated_dataset_id}
  /// Value must have pattern
  /// `^projects/\[^/\]+/datasets/\[^/\]+/annotatedDatasets/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDatalabelingV1beta1AnnotatedDataset].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDatalabelingV1beta1AnnotatedDataset> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1beta1/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return GoogleCloudDatalabelingV1beta1AnnotatedDataset.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Lists annotated datasets for a dataset.
  ///
  /// Pagination is supported.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Name of the dataset to list annotated datasets,
  /// format: projects/{project_id}/datasets/{dataset_id}
  /// Value must have pattern `^projects/\[^/\]+/datasets/\[^/\]+$`.
  ///
  /// [filter] - Optional. Filter is not supported at this moment.
  ///
  /// [pageSize] - Optional. Requested page size. Server may return fewer
  /// results than requested. Default value is 100.
  ///
  /// [pageToken] - Optional. A token identifying a page of results for the
  /// server to return. Typically obtained by
  /// ListAnnotatedDatasetsResponse.next_page_token of the previous
  /// \[DataLabelingService.ListAnnotatedDatasets\] call. Return first page if
  /// empty.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a
  /// [GoogleCloudDatalabelingV1beta1ListAnnotatedDatasetsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDatalabelingV1beta1ListAnnotatedDatasetsResponse>
      list(
    core.String parent, {
    core.String? filter,
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (filter != null) 'filter': [filter],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final _url =
        'v1beta1/' + core.Uri.encodeFull('$parent') + '/annotatedDatasets';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return GoogleCloudDatalabelingV1beta1ListAnnotatedDatasetsResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsDatasetsAnnotatedDatasetsDataItemsResource {
  final commons.ApiRequester _requester;

  ProjectsDatasetsAnnotatedDatasetsDataItemsResource(
      commons.ApiRequester client)
      : _requester = client;

  /// Gets a data item in a dataset by resource name.
  ///
  /// This API can be called after data are imported into dataset.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the data item to get, format:
  /// projects/{project_id}/datasets/{dataset_id}/dataItems/{data_item_id}
  /// Value must have pattern
  /// `^projects/\[^/\]+/datasets/\[^/\]+/annotatedDatasets/\[^/\]+/dataItems/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDatalabelingV1beta1DataItem].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDatalabelingV1beta1DataItem> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1beta1/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return GoogleCloudDatalabelingV1beta1DataItem.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Lists data items in a dataset.
  ///
  /// This API can be called after data are imported into dataset. Pagination is
  /// supported.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Name of the dataset to list data items, format:
  /// projects/{project_id}/datasets/{dataset_id}
  /// Value must have pattern
  /// `^projects/\[^/\]+/datasets/\[^/\]+/annotatedDatasets/\[^/\]+$`.
  ///
  /// [filter] - Optional. Filter is not supported at this moment.
  ///
  /// [pageSize] - Optional. Requested page size. Server may return fewer
  /// results than requested. Default value is 100.
  ///
  /// [pageToken] - Optional. A token identifying a page of results for the
  /// server to return. Typically obtained by
  /// ListDataItemsResponse.next_page_token of the previous
  /// \[DataLabelingService.ListDataItems\] call. Return first page if empty.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDatalabelingV1beta1ListDataItemsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDatalabelingV1beta1ListDataItemsResponse> list(
    core.String parent, {
    core.String? filter,
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (filter != null) 'filter': [filter],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1beta1/' + core.Uri.encodeFull('$parent') + '/dataItems';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return GoogleCloudDatalabelingV1beta1ListDataItemsResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsDatasetsAnnotatedDatasetsExamplesResource {
  final commons.ApiRequester _requester;

  ProjectsDatasetsAnnotatedDatasetsExamplesResource(commons.ApiRequester client)
      : _requester = client;

  /// Gets an example by resource name, including both data and annotation.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Name of example, format:
  /// projects/{project_id}/datasets/{dataset_id}/annotatedDatasets/
  /// {annotated_dataset_id}/examples/{example_id}
  /// Value must have pattern
  /// `^projects/\[^/\]+/datasets/\[^/\]+/annotatedDatasets/\[^/\]+/examples/\[^/\]+$`.
  ///
  /// [filter] - Optional. An expression for filtering Examples. Filter by
  /// annotation_spec.display_name is supported. Format
  /// "annotation_spec.display_name = {display_name}"
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDatalabelingV1beta1Example].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDatalabelingV1beta1Example> get(
    core.String name, {
    core.String? filter,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (filter != null) 'filter': [filter],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1beta1/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return GoogleCloudDatalabelingV1beta1Example.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Lists examples in an annotated dataset.
  ///
  /// Pagination is supported.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Example resource parent.
  /// Value must have pattern
  /// `^projects/\[^/\]+/datasets/\[^/\]+/annotatedDatasets/\[^/\]+$`.
  ///
  /// [filter] - Optional. An expression for filtering Examples. For annotated
  /// datasets that have annotation spec set, filter by
  /// annotation_spec.display_name is supported. Format
  /// "annotation_spec.display_name = {display_name}"
  ///
  /// [pageSize] - Optional. Requested page size. Server may return fewer
  /// results than requested. Default value is 100.
  ///
  /// [pageToken] - Optional. A token identifying a page of results for the
  /// server to return. Typically obtained by
  /// ListExamplesResponse.next_page_token of the previous
  /// \[DataLabelingService.ListExamples\] call. Return first page if empty.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDatalabelingV1beta1ListExamplesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDatalabelingV1beta1ListExamplesResponse> list(
    core.String parent, {
    core.String? filter,
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (filter != null) 'filter': [filter],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1beta1/' + core.Uri.encodeFull('$parent') + '/examples';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return GoogleCloudDatalabelingV1beta1ListExamplesResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsDatasetsAnnotatedDatasetsFeedbackThreadsResource {
  final commons.ApiRequester _requester;

  ProjectsDatasetsAnnotatedDatasetsFeedbackThreadsFeedbackMessagesResource
      get feedbackMessages =>
          ProjectsDatasetsAnnotatedDatasetsFeedbackThreadsFeedbackMessagesResource(
              _requester);

  ProjectsDatasetsAnnotatedDatasetsFeedbackThreadsResource(
      commons.ApiRequester client)
      : _requester = client;

  /// Delete a FeedbackThread.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Name of the FeedbackThread that is going to be deleted.
  /// Format:
  /// 'projects/{project_id}/datasets/{dataset_id}/annotatedDatasets/{annotated_dataset_id}/feedbackThreads/{feedback_thread_id}'.
  /// Value must have pattern
  /// `^projects/\[^/\]+/datasets/\[^/\]+/annotatedDatasets/\[^/\]+/feedbackThreads/\[^/\]+$`.
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
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1beta1/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'DELETE',
      queryParams: _queryParams,
    );
    return GoogleProtobufEmpty.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Get a FeedbackThread object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Name of the feedback. Format:
  /// 'projects/{project_id}/datasets/{dataset_id}/annotatedDatasets/{annotated_dataset_id}/feedbackThreads/{feedback_thread_id}'.
  /// Value must have pattern
  /// `^projects/\[^/\]+/datasets/\[^/\]+/annotatedDatasets/\[^/\]+/feedbackThreads/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDatalabelingV1beta1FeedbackThread].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDatalabelingV1beta1FeedbackThread> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1beta1/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return GoogleCloudDatalabelingV1beta1FeedbackThread.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// List FeedbackThreads with pagination.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. FeedbackThread resource parent. Format:
  /// "projects/{project_id}/datasets/{dataset_id}/annotatedDatasets/{annotated_dataset_id}"
  /// Value must have pattern
  /// `^projects/\[^/\]+/datasets/\[^/\]+/annotatedDatasets/\[^/\]+$`.
  ///
  /// [pageSize] - Optional. Requested page size. Server may return fewer
  /// results than requested. Default value is 100.
  ///
  /// [pageToken] - Optional. A token identifying a page of results for the
  /// server to return. Typically obtained by
  /// ListFeedbackThreads.next_page_token of the previous
  /// \[DataLabelingService.ListFeedbackThreads\] call. Return first page if
  /// empty.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a
  /// [GoogleCloudDatalabelingV1beta1ListFeedbackThreadsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDatalabelingV1beta1ListFeedbackThreadsResponse> list(
    core.String parent, {
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final _url =
        'v1beta1/' + core.Uri.encodeFull('$parent') + '/feedbackThreads';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return GoogleCloudDatalabelingV1beta1ListFeedbackThreadsResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsDatasetsAnnotatedDatasetsFeedbackThreadsFeedbackMessagesResource {
  final commons.ApiRequester _requester;

  ProjectsDatasetsAnnotatedDatasetsFeedbackThreadsFeedbackMessagesResource(
      commons.ApiRequester client)
      : _requester = client;

  /// Create a FeedbackMessage object.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. FeedbackMessage resource parent, format:
  /// projects/{project_id}/datasets/{dataset_id}/annotatedDatasets/{annotated_dataset_id}/feedbackThreads/{feedback_thread_id}.
  /// Value must have pattern
  /// `^projects/\[^/\]+/datasets/\[^/\]+/annotatedDatasets/\[^/\]+/feedbackThreads/\[^/\]+$`.
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
    GoogleCloudDatalabelingV1beta1FeedbackMessage request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request.toJson());
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url =
        'v1beta1/' + core.Uri.encodeFull('$parent') + '/feedbackMessages';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return GoogleLongrunningOperation.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Delete a FeedbackMessage.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Name of the FeedbackMessage that is going to be
  /// deleted. Format:
  /// 'projects/{project_id}/datasets/{dataset_id}/annotatedDatasets/{annotated_dataset_id}/feedbackThreads/{feedback_thread_id}/feedbackMessages/{feedback_message_id}'.
  /// Value must have pattern
  /// `^projects/\[^/\]+/datasets/\[^/\]+/annotatedDatasets/\[^/\]+/feedbackThreads/\[^/\]+/feedbackMessages/\[^/\]+$`.
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
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1beta1/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'DELETE',
      queryParams: _queryParams,
    );
    return GoogleProtobufEmpty.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Get a FeedbackMessage object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Name of the feedback. Format:
  /// 'projects/{project_id}/datasets/{dataset_id}/annotatedDatasets/{annotated_dataset_id}/feedbackThreads/{feedback_thread_id}/feedbackMessages/{feedback_message_id}'.
  /// Value must have pattern
  /// `^projects/\[^/\]+/datasets/\[^/\]+/annotatedDatasets/\[^/\]+/feedbackThreads/\[^/\]+/feedbackMessages/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDatalabelingV1beta1FeedbackMessage].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDatalabelingV1beta1FeedbackMessage> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1beta1/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return GoogleCloudDatalabelingV1beta1FeedbackMessage.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// List FeedbackMessages with pagination.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. FeedbackMessage resource parent. Format:
  /// "projects/{project_id}/datasets/{dataset_id}/annotatedDatasets/{annotated_dataset_id}/feedbackThreads/{feedback_thread_id}"
  /// Value must have pattern
  /// `^projects/\[^/\]+/datasets/\[^/\]+/annotatedDatasets/\[^/\]+/feedbackThreads/\[^/\]+$`.
  ///
  /// [pageSize] - Optional. Requested page size. Server may return fewer
  /// results than requested. Default value is 100.
  ///
  /// [pageToken] - Optional. A token identifying a page of results for the
  /// server to return. Typically obtained by
  /// ListFeedbackMessages.next_page_token of the previous
  /// \[DataLabelingService.ListFeedbackMessages\] call. Return first page if
  /// empty.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a
  /// [GoogleCloudDatalabelingV1beta1ListFeedbackMessagesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDatalabelingV1beta1ListFeedbackMessagesResponse> list(
    core.String parent, {
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final _url =
        'v1beta1/' + core.Uri.encodeFull('$parent') + '/feedbackMessages';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return GoogleCloudDatalabelingV1beta1ListFeedbackMessagesResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsDatasetsDataItemsResource {
  final commons.ApiRequester _requester;

  ProjectsDatasetsDataItemsResource(commons.ApiRequester client)
      : _requester = client;

  /// Gets a data item in a dataset by resource name.
  ///
  /// This API can be called after data are imported into dataset.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the data item to get, format:
  /// projects/{project_id}/datasets/{dataset_id}/dataItems/{data_item_id}
  /// Value must have pattern
  /// `^projects/\[^/\]+/datasets/\[^/\]+/dataItems/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDatalabelingV1beta1DataItem].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDatalabelingV1beta1DataItem> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1beta1/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return GoogleCloudDatalabelingV1beta1DataItem.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Lists data items in a dataset.
  ///
  /// This API can be called after data are imported into dataset. Pagination is
  /// supported.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Name of the dataset to list data items, format:
  /// projects/{project_id}/datasets/{dataset_id}
  /// Value must have pattern `^projects/\[^/\]+/datasets/\[^/\]+$`.
  ///
  /// [filter] - Optional. Filter is not supported at this moment.
  ///
  /// [pageSize] - Optional. Requested page size. Server may return fewer
  /// results than requested. Default value is 100.
  ///
  /// [pageToken] - Optional. A token identifying a page of results for the
  /// server to return. Typically obtained by
  /// ListDataItemsResponse.next_page_token of the previous
  /// \[DataLabelingService.ListDataItems\] call. Return first page if empty.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDatalabelingV1beta1ListDataItemsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDatalabelingV1beta1ListDataItemsResponse> list(
    core.String parent, {
    core.String? filter,
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (filter != null) 'filter': [filter],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1beta1/' + core.Uri.encodeFull('$parent') + '/dataItems';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return GoogleCloudDatalabelingV1beta1ListDataItemsResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsDatasetsEvaluationsResource {
  final commons.ApiRequester _requester;

  ProjectsDatasetsEvaluationsExampleComparisonsResource
      get exampleComparisons =>
          ProjectsDatasetsEvaluationsExampleComparisonsResource(_requester);

  ProjectsDatasetsEvaluationsResource(commons.ApiRequester client)
      : _requester = client;

  /// Gets an evaluation by resource name (to search, use
  /// projects.evaluations.search).
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Name of the evaluation. Format:
  /// "projects/{project_id}/datasets/ {dataset_id}/evaluations/{evaluation_id}'
  /// Value must have pattern
  /// `^projects/\[^/\]+/datasets/\[^/\]+/evaluations/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDatalabelingV1beta1Evaluation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDatalabelingV1beta1Evaluation> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1beta1/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return GoogleCloudDatalabelingV1beta1Evaluation.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsDatasetsEvaluationsExampleComparisonsResource {
  final commons.ApiRequester _requester;

  ProjectsDatasetsEvaluationsExampleComparisonsResource(
      commons.ApiRequester client)
      : _requester = client;

  /// Searches example comparisons from an evaluation.
  ///
  /// The return format is a list of example comparisons that show ground truth
  /// and prediction(s) for a single input. Search by providing an evaluation
  /// ID.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Name of the Evaluation resource to search for example
  /// comparisons from. Format:
  /// "projects/{project_id}/datasets/{dataset_id}/evaluations/ {evaluation_id}"
  /// Value must have pattern
  /// `^projects/\[^/\]+/datasets/\[^/\]+/evaluations/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a
  /// [GoogleCloudDatalabelingV1beta1SearchExampleComparisonsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDatalabelingV1beta1SearchExampleComparisonsResponse>
      search(
    GoogleCloudDatalabelingV1beta1SearchExampleComparisonsRequest request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request.toJson());
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1beta1/' +
        core.Uri.encodeFull('$parent') +
        '/exampleComparisons:search';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return GoogleCloudDatalabelingV1beta1SearchExampleComparisonsResponse
        .fromJson(_response as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsDatasetsImageResource {
  final commons.ApiRequester _requester;

  ProjectsDatasetsImageResource(commons.ApiRequester client)
      : _requester = client;

  /// Starts a labeling task for image.
  ///
  /// The type of image labeling task is configured by feature in the request.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Name of the dataset to request labeling task, format:
  /// projects/{project_id}/datasets/{dataset_id}
  /// Value must have pattern `^projects/\[^/\]+/datasets/\[^/\]+$`.
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
  async.Future<GoogleLongrunningOperation> label(
    GoogleCloudDatalabelingV1beta1LabelImageRequest request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request.toJson());
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1beta1/' + core.Uri.encodeFull('$parent') + '/image:label';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return GoogleLongrunningOperation.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsDatasetsTextResource {
  final commons.ApiRequester _requester;

  ProjectsDatasetsTextResource(commons.ApiRequester client)
      : _requester = client;

  /// Starts a labeling task for text.
  ///
  /// The type of text labeling task is configured by feature in the request.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Name of the data set to request labeling task,
  /// format: projects/{project_id}/datasets/{dataset_id}
  /// Value must have pattern `^projects/\[^/\]+/datasets/\[^/\]+$`.
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
  async.Future<GoogleLongrunningOperation> label(
    GoogleCloudDatalabelingV1beta1LabelTextRequest request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request.toJson());
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1beta1/' + core.Uri.encodeFull('$parent') + '/text:label';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return GoogleLongrunningOperation.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsDatasetsVideoResource {
  final commons.ApiRequester _requester;

  ProjectsDatasetsVideoResource(commons.ApiRequester client)
      : _requester = client;

  /// Starts a labeling task for video.
  ///
  /// The type of video labeling task is configured by feature in the request.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Name of the dataset to request labeling task, format:
  /// projects/{project_id}/datasets/{dataset_id}
  /// Value must have pattern `^projects/\[^/\]+/datasets/\[^/\]+$`.
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
  async.Future<GoogleLongrunningOperation> label(
    GoogleCloudDatalabelingV1beta1LabelVideoRequest request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request.toJson());
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1beta1/' + core.Uri.encodeFull('$parent') + '/video:label';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return GoogleLongrunningOperation.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsEvaluationJobsResource {
  final commons.ApiRequester _requester;

  ProjectsEvaluationJobsResource(commons.ApiRequester client)
      : _requester = client;

  /// Creates an evaluation job.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Evaluation job resource parent. Format:
  /// "projects/{project_id}"
  /// Value must have pattern `^projects/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDatalabelingV1beta1EvaluationJob].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDatalabelingV1beta1EvaluationJob> create(
    GoogleCloudDatalabelingV1beta1CreateEvaluationJobRequest request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request.toJson());
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url =
        'v1beta1/' + core.Uri.encodeFull('$parent') + '/evaluationJobs';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return GoogleCloudDatalabelingV1beta1EvaluationJob.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Stops and deletes an evaluation job.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Name of the evaluation job that is going to be deleted.
  /// Format: "projects/{project_id}/evaluationJobs/{evaluation_job_id}"
  /// Value must have pattern `^projects/\[^/\]+/evaluationJobs/\[^/\]+$`.
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
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1beta1/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'DELETE',
      queryParams: _queryParams,
    );
    return GoogleProtobufEmpty.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Gets an evaluation job by resource name.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Name of the evaluation job. Format:
  /// "projects/{project_id} /evaluationJobs/{evaluation_job_id}"
  /// Value must have pattern `^projects/\[^/\]+/evaluationJobs/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDatalabelingV1beta1EvaluationJob].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDatalabelingV1beta1EvaluationJob> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1beta1/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return GoogleCloudDatalabelingV1beta1EvaluationJob.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Lists all evaluation jobs within a project with possible filters.
  ///
  /// Pagination is supported.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Evaluation job resource parent. Format:
  /// "projects/{project_id}"
  /// Value must have pattern `^projects/\[^/\]+$`.
  ///
  /// [filter] - Optional. You can filter the jobs to list by model_id (also
  /// known as model_name, as described in EvaluationJob.modelVersion) or by
  /// evaluation job state (as described in EvaluationJob.state). To filter by
  /// both criteria, use the `AND` operator or the `OR` operator. For example,
  /// you can use the following string for your filter: "evaluation_job.model_id
  /// = {model_name} AND evaluation_job.state = {evaluation_job_state}"
  ///
  /// [pageSize] - Optional. Requested page size. Server may return fewer
  /// results than requested. Default value is 100.
  ///
  /// [pageToken] - Optional. A token identifying a page of results for the
  /// server to return. Typically obtained by the nextPageToken in the response
  /// to the previous request. The request returns the first page if this is
  /// empty.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a
  /// [GoogleCloudDatalabelingV1beta1ListEvaluationJobsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDatalabelingV1beta1ListEvaluationJobsResponse> list(
    core.String parent, {
    core.String? filter,
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (filter != null) 'filter': [filter],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final _url =
        'v1beta1/' + core.Uri.encodeFull('$parent') + '/evaluationJobs';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return GoogleCloudDatalabelingV1beta1ListEvaluationJobsResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Updates an evaluation job.
  ///
  /// You can only update certain fields of the job's EvaluationJobConfig:
  /// `humanAnnotationConfig.instruction`, `exampleCount`, and
  /// `exampleSamplePercentage`. If you want to change any other aspect of the
  /// evaluation job, you must delete the job and create a new one.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Output only. After you create a job, Data Labeling Service
  /// assigns a name to the job with the following format:
  /// "projects/{project_id}/evaluationJobs/ {evaluation_job_id}"
  /// Value must have pattern `^projects/\[^/\]+/evaluationJobs/\[^/\]+$`.
  ///
  /// [updateMask] - Optional. Mask for which fields to update. You can only
  /// provide the following fields: *
  /// `evaluationJobConfig.humanAnnotationConfig.instruction` *
  /// `evaluationJobConfig.exampleCount` *
  /// `evaluationJobConfig.exampleSamplePercentage` You can provide more than
  /// one of these fields by separating them with commas.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDatalabelingV1beta1EvaluationJob].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDatalabelingV1beta1EvaluationJob> patch(
    GoogleCloudDatalabelingV1beta1EvaluationJob request,
    core.String name, {
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request.toJson());
    final _queryParams = <core.String, core.List<core.String>>{
      if (updateMask != null) 'updateMask': [updateMask],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1beta1/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'PATCH',
      body: _body,
      queryParams: _queryParams,
    );
    return GoogleCloudDatalabelingV1beta1EvaluationJob.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Pauses an evaluation job.
  ///
  /// Pausing an evaluation job that is already in a `PAUSED` state is a no-op.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Name of the evaluation job that is going to be paused.
  /// Format: "projects/{project_id}/evaluationJobs/{evaluation_job_id}"
  /// Value must have pattern `^projects/\[^/\]+/evaluationJobs/\[^/\]+$`.
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
  async.Future<GoogleProtobufEmpty> pause(
    GoogleCloudDatalabelingV1beta1PauseEvaluationJobRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request.toJson());
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1beta1/' + core.Uri.encodeFull('$name') + ':pause';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return GoogleProtobufEmpty.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Resumes a paused evaluation job.
  ///
  /// A deleted evaluation job can't be resumed. Resuming a running or scheduled
  /// evaluation job is a no-op.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Name of the evaluation job that is going to be resumed.
  /// Format: "projects/{project_id}/evaluationJobs/{evaluation_job_id}"
  /// Value must have pattern `^projects/\[^/\]+/evaluationJobs/\[^/\]+$`.
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
  async.Future<GoogleProtobufEmpty> resume(
    GoogleCloudDatalabelingV1beta1ResumeEvaluationJobRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request.toJson());
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1beta1/' + core.Uri.encodeFull('$name') + ':resume';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return GoogleProtobufEmpty.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsEvaluationsResource {
  final commons.ApiRequester _requester;

  ProjectsEvaluationsResource(commons.ApiRequester client)
      : _requester = client;

  /// Searches evaluations within a project.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Evaluation search parent (project ID). Format:
  /// "projects/ {project_id}"
  /// Value must have pattern `^projects/\[^/\]+$`.
  ///
  /// [filter] - Optional. To search evaluations, you can filter by the
  /// following: * evaluation_job.evaluation_job_id (the last part of
  /// EvaluationJob.name) * evaluation_job.model_id (the {model_name} portion of
  /// EvaluationJob.modelVersion) * evaluation_job.evaluation_job_run_time_start
  /// (Minimum threshold for the evaluationJobRunTime that created the
  /// evaluation) * evaluation_job.evaluation_job_run_time_end (Maximum
  /// threshold for the evaluationJobRunTime that created the evaluation) *
  /// evaluation_job.job_state (EvaluationJob.state) *
  /// annotation_spec.display_name (the Evaluation contains a metric for the
  /// annotation spec with this displayName) To filter by multiple critiera, use
  /// the `AND` operator or the `OR` operator. The following examples shows a
  /// string that filters by several critiera: "evaluation_job.evaluation_job_id
  /// = {evaluation_job_id} AND evaluation_job.model_id = {model_name} AND
  /// evaluation_job.evaluation_job_run_time_start = {timestamp_1} AND
  /// evaluation_job.evaluation_job_run_time_end = {timestamp_2} AND
  /// annotation_spec.display_name = {display_name}"
  ///
  /// [pageSize] - Optional. Requested page size. Server may return fewer
  /// results than requested. Default value is 100.
  ///
  /// [pageToken] - Optional. A token identifying a page of results for the
  /// server to return. Typically obtained by the nextPageToken of the response
  /// to a previous search request. If you don't specify this field, the API
  /// call requests the first page of the search.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a
  /// [GoogleCloudDatalabelingV1beta1SearchEvaluationsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDatalabelingV1beta1SearchEvaluationsResponse> search(
    core.String parent, {
    core.String? filter,
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (filter != null) 'filter': [filter],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final _url =
        'v1beta1/' + core.Uri.encodeFull('$parent') + '/evaluations:search';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return GoogleCloudDatalabelingV1beta1SearchEvaluationsResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsInstructionsResource {
  final commons.ApiRequester _requester;

  ProjectsInstructionsResource(commons.ApiRequester client)
      : _requester = client;

  /// Creates an instruction for how data should be labeled.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Instruction resource parent, format:
  /// projects/{project_id}
  /// Value must have pattern `^projects/\[^/\]+$`.
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
    GoogleCloudDatalabelingV1beta1CreateInstructionRequest request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request.toJson());
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1beta1/' + core.Uri.encodeFull('$parent') + '/instructions';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return GoogleLongrunningOperation.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Deletes an instruction object by resource name.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Instruction resource name, format:
  /// projects/{project_id}/instructions/{instruction_id}
  /// Value must have pattern `^projects/\[^/\]+/instructions/\[^/\]+$`.
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
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1beta1/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'DELETE',
      queryParams: _queryParams,
    );
    return GoogleProtobufEmpty.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Gets an instruction by resource name.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Instruction resource name, format:
  /// projects/{project_id}/instructions/{instruction_id}
  /// Value must have pattern `^projects/\[^/\]+/instructions/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDatalabelingV1beta1Instruction].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDatalabelingV1beta1Instruction> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1beta1/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return GoogleCloudDatalabelingV1beta1Instruction.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Lists instructions for a project.
  ///
  /// Pagination is supported.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Instruction resource parent, format:
  /// projects/{project_id}
  /// Value must have pattern `^projects/\[^/\]+$`.
  ///
  /// [filter] - Optional. Filter is not supported at this moment.
  ///
  /// [pageSize] - Optional. Requested page size. Server may return fewer
  /// results than requested. Default value is 100.
  ///
  /// [pageToken] - Optional. A token identifying a page of results for the
  /// server to return. Typically obtained by
  /// ListInstructionsResponse.next_page_token of the previous
  /// \[DataLabelingService.ListInstructions\] call. Return first page if empty.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDatalabelingV1beta1ListInstructionsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDatalabelingV1beta1ListInstructionsResponse> list(
    core.String parent, {
    core.String? filter,
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (filter != null) 'filter': [filter],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1beta1/' + core.Uri.encodeFull('$parent') + '/instructions';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return GoogleCloudDatalabelingV1beta1ListInstructionsResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsOperationsResource {
  final commons.ApiRequester _requester;

  ProjectsOperationsResource(commons.ApiRequester client) : _requester = client;

  /// Starts asynchronous cancellation on a long-running operation.
  ///
  /// The server makes a best effort to cancel the operation, but success is not
  /// guaranteed. If the server doesn't support this method, it returns
  /// `google.rpc.Code.UNIMPLEMENTED`. Clients can use Operations.GetOperation
  /// or other methods to check whether the cancellation succeeded or whether
  /// the operation completed despite cancellation. On successful cancellation,
  /// the operation is not deleted; instead, it becomes an operation with an
  /// Operation.error value with a google.rpc.Status.code of 1, corresponding to
  /// `Code.CANCELLED`.
  ///
  /// Request parameters:
  ///
  /// [name] - The name of the operation resource to be cancelled.
  /// Value must have pattern `^projects/\[^/\]+/operations/\[^/\]+$`.
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
  async.Future<GoogleProtobufEmpty> cancel(
    core.String name, {
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1beta1/' + core.Uri.encodeFull('$name') + ':cancel';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return GoogleProtobufEmpty.fromJson(
        _response as core.Map<core.String, core.dynamic>);
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
  /// Value must have pattern `^projects/\[^/\]+/operations/\[^/\]+$`.
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
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1beta1/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'DELETE',
      queryParams: _queryParams,
    );
    return GoogleProtobufEmpty.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

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
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1beta1/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return GoogleLongrunningOperation.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Lists operations that match the specified filter in the request.
  ///
  /// If the server doesn't support this method, it returns `UNIMPLEMENTED`.
  /// NOTE: the `name` binding allows API services to override the binding to
  /// use different resource name schemes, such as `users / * /operations`. To
  /// override the binding, API services can add a binding such as
  /// `"/v1/{name=users / * }/operations"` to their service configuration. For
  /// backwards compatibility, the default name includes the operations
  /// collection id, however overriding users must ensure the name binding is
  /// the parent resource, without the operations collection id.
  ///
  /// Request parameters:
  ///
  /// [name] - The name of the operation's parent resource.
  /// Value must have pattern `^projects/\[^/\]+$`.
  ///
  /// [filter] - The standard list filter.
  ///
  /// [pageSize] - The standard list page size.
  ///
  /// [pageToken] - The standard list page token.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleLongrunningListOperationsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleLongrunningListOperationsResponse> list(
    core.String name, {
    core.String? filter,
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (filter != null) 'filter': [filter],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1beta1/' + core.Uri.encodeFull('$name') + '/operations';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return GoogleLongrunningListOperationsResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

/// Metadata of a CreateInstruction operation.
class GoogleCloudDatalabelingV1alpha1CreateInstructionMetadata {
  /// Timestamp when create instruction request was created.
  core.String? createTime;

  /// The name of the created Instruction.
  ///
  /// projects/{project_id}/instructions/{instruction_id}
  core.String? instruction;

  /// Partial failures encountered.
  ///
  /// E.g. single files that couldn't be read. Status details field will contain
  /// standard GCP error details.
  core.List<GoogleRpcStatus>? partialFailures;

  GoogleCloudDatalabelingV1alpha1CreateInstructionMetadata({
    this.createTime,
    this.instruction,
    this.partialFailures,
  });

  GoogleCloudDatalabelingV1alpha1CreateInstructionMetadata.fromJson(
      core.Map _json)
      : this(
          createTime: _json.containsKey('createTime')
              ? _json['createTime'] as core.String
              : null,
          instruction: _json.containsKey('instruction')
              ? _json['instruction'] as core.String
              : null,
          partialFailures: _json.containsKey('partialFailures')
              ? (_json['partialFailures'] as core.List)
                  .map((value) => GoogleRpcStatus.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (createTime != null) 'createTime': createTime!,
        if (instruction != null) 'instruction': instruction!,
        if (partialFailures != null)
          'partialFailures':
              partialFailures!.map((value) => value.toJson()).toList(),
      };
}

/// Metadata of an ExportData operation.
class GoogleCloudDatalabelingV1alpha1ExportDataOperationMetadata {
  /// The name of annotated dataset in format "projects / * /datasets / *
  /// /annotatedDatasets / * ".
  ///
  /// Output only.
  core.String? annotatedDataset;

  /// Timestamp when export dataset request was created.
  ///
  /// Output only.
  core.String? createTime;

  /// The name of dataset to be exported.
  ///
  /// "projects / * /datasets / * "
  ///
  /// Output only.
  core.String? dataset;

  /// Partial failures encountered.
  ///
  /// E.g. single files that couldn't be read. Status details field will contain
  /// standard GCP error details.
  ///
  /// Output only.
  core.List<GoogleRpcStatus>? partialFailures;

  GoogleCloudDatalabelingV1alpha1ExportDataOperationMetadata({
    this.annotatedDataset,
    this.createTime,
    this.dataset,
    this.partialFailures,
  });

  GoogleCloudDatalabelingV1alpha1ExportDataOperationMetadata.fromJson(
      core.Map _json)
      : this(
          annotatedDataset: _json.containsKey('annotatedDataset')
              ? _json['annotatedDataset'] as core.String
              : null,
          createTime: _json.containsKey('createTime')
              ? _json['createTime'] as core.String
              : null,
          dataset: _json.containsKey('dataset')
              ? _json['dataset'] as core.String
              : null,
          partialFailures: _json.containsKey('partialFailures')
              ? (_json['partialFailures'] as core.List)
                  .map((value) => GoogleRpcStatus.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (annotatedDataset != null) 'annotatedDataset': annotatedDataset!,
        if (createTime != null) 'createTime': createTime!,
        if (dataset != null) 'dataset': dataset!,
        if (partialFailures != null)
          'partialFailures':
              partialFailures!.map((value) => value.toJson()).toList(),
      };
}

/// Response used for ExportDataset longrunning operation.
class GoogleCloudDatalabelingV1alpha1ExportDataOperationResponse {
  /// The name of annotated dataset in format "projects / * /datasets / *
  /// /annotatedDatasets / * ".
  ///
  /// Output only.
  core.String? annotatedDataset;

  /// Ouptut only.
  ///
  /// The name of dataset. "projects / * /datasets / * "
  core.String? dataset;

  /// Number of examples exported successfully.
  ///
  /// Output only.
  core.int? exportCount;

  /// Statistic infos of labels in the exported dataset.
  ///
  /// Output only.
  GoogleCloudDatalabelingV1alpha1LabelStats? labelStats;

  /// output_config in the ExportData request.
  ///
  /// Output only.
  GoogleCloudDatalabelingV1alpha1OutputConfig? outputConfig;

  /// Total number of examples requested to export
  ///
  /// Output only.
  core.int? totalCount;

  GoogleCloudDatalabelingV1alpha1ExportDataOperationResponse({
    this.annotatedDataset,
    this.dataset,
    this.exportCount,
    this.labelStats,
    this.outputConfig,
    this.totalCount,
  });

  GoogleCloudDatalabelingV1alpha1ExportDataOperationResponse.fromJson(
      core.Map _json)
      : this(
          annotatedDataset: _json.containsKey('annotatedDataset')
              ? _json['annotatedDataset'] as core.String
              : null,
          dataset: _json.containsKey('dataset')
              ? _json['dataset'] as core.String
              : null,
          exportCount: _json.containsKey('exportCount')
              ? _json['exportCount'] as core.int
              : null,
          labelStats: _json.containsKey('labelStats')
              ? GoogleCloudDatalabelingV1alpha1LabelStats.fromJson(
                  _json['labelStats'] as core.Map<core.String, core.dynamic>)
              : null,
          outputConfig: _json.containsKey('outputConfig')
              ? GoogleCloudDatalabelingV1alpha1OutputConfig.fromJson(
                  _json['outputConfig'] as core.Map<core.String, core.dynamic>)
              : null,
          totalCount: _json.containsKey('totalCount')
              ? _json['totalCount'] as core.int
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (annotatedDataset != null) 'annotatedDataset': annotatedDataset!,
        if (dataset != null) 'dataset': dataset!,
        if (exportCount != null) 'exportCount': exportCount!,
        if (labelStats != null) 'labelStats': labelStats!.toJson(),
        if (outputConfig != null) 'outputConfig': outputConfig!.toJson(),
        if (totalCount != null) 'totalCount': totalCount!,
      };
}

/// Export destination of the data.Only gcs path is allowed in output_uri.
class GoogleCloudDatalabelingV1alpha1GcsDestination {
  /// The format of the gcs destination.
  ///
  /// Only "text/csv" and "application/json" are supported.
  ///
  /// Required.
  core.String? mimeType;

  /// The output uri of destination file.
  ///
  /// Required.
  core.String? outputUri;

  GoogleCloudDatalabelingV1alpha1GcsDestination({
    this.mimeType,
    this.outputUri,
  });

  GoogleCloudDatalabelingV1alpha1GcsDestination.fromJson(core.Map _json)
      : this(
          mimeType: _json.containsKey('mimeType')
              ? _json['mimeType'] as core.String
              : null,
          outputUri: _json.containsKey('outputUri')
              ? _json['outputUri'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (mimeType != null) 'mimeType': mimeType!,
        if (outputUri != null) 'outputUri': outputUri!,
      };
}

/// Export folder destination of the data.
class GoogleCloudDatalabelingV1alpha1GcsFolderDestination {
  /// Cloud Storage directory to export data to.
  ///
  /// Required.
  core.String? outputFolderUri;

  GoogleCloudDatalabelingV1alpha1GcsFolderDestination({
    this.outputFolderUri,
  });

  GoogleCloudDatalabelingV1alpha1GcsFolderDestination.fromJson(core.Map _json)
      : this(
          outputFolderUri: _json.containsKey('outputFolderUri')
              ? _json['outputFolderUri'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (outputFolderUri != null) 'outputFolderUri': outputFolderUri!,
      };
}

/// Configuration for how human labeling task should be done.
class GoogleCloudDatalabelingV1alpha1HumanAnnotationConfig {
  /// A human-readable description for AnnotatedDataset.
  ///
  /// The description can be up to 10000 characters long.
  ///
  /// Optional.
  core.String? annotatedDatasetDescription;

  /// A human-readable name for AnnotatedDataset defined by users.
  ///
  /// Maximum of 64 characters .
  ///
  /// Required.
  core.String? annotatedDatasetDisplayName;

  /// If you want your own labeling contributors to manage and work on this
  /// labeling request, you can set these contributors here.
  ///
  /// We will give them access to the question types in crowdcompute. Note that
  /// these emails must be registered in crowdcompute worker UI:
  /// https://crowd-compute.appspot.com/
  ///
  /// Optional.
  core.List<core.String>? contributorEmails;

  /// Instruction resource name.
  ///
  /// Required.
  core.String? instruction;

  /// A human-readable label used to logically group labeling tasks.
  ///
  /// This string must match the regular expression `[a-zA-Z\\d_-]{0,128}`.
  ///
  /// Optional.
  core.String? labelGroup;

  /// The Language of this question, as a
  /// \[BCP-47\](https://www.rfc-editor.org/rfc/bcp/bcp47.txt).
  ///
  /// Default value is en-US. Only need to set this when task is language
  /// related. For example, French text classification.
  ///
  /// Optional.
  core.String? languageCode;

  /// Maximum duration for contributors to answer a question.
  ///
  /// Maximum is 3600 seconds. Default is 3600 seconds.
  ///
  /// Optional.
  core.String? questionDuration;

  /// Replication of questions.
  ///
  /// Each question will be sent to up to this number of contributors to label.
  /// Aggregated answers will be returned. Default is set to 1. For image
  /// related labeling, valid values are 1, 3, 5.
  ///
  /// Optional.
  core.int? replicaCount;

  /// Email of the user who started the labeling task and should be notified by
  /// email.
  ///
  /// If empty no notification will be sent.
  core.String? userEmailAddress;

  GoogleCloudDatalabelingV1alpha1HumanAnnotationConfig({
    this.annotatedDatasetDescription,
    this.annotatedDatasetDisplayName,
    this.contributorEmails,
    this.instruction,
    this.labelGroup,
    this.languageCode,
    this.questionDuration,
    this.replicaCount,
    this.userEmailAddress,
  });

  GoogleCloudDatalabelingV1alpha1HumanAnnotationConfig.fromJson(core.Map _json)
      : this(
          annotatedDatasetDescription:
              _json.containsKey('annotatedDatasetDescription')
                  ? _json['annotatedDatasetDescription'] as core.String
                  : null,
          annotatedDatasetDisplayName:
              _json.containsKey('annotatedDatasetDisplayName')
                  ? _json['annotatedDatasetDisplayName'] as core.String
                  : null,
          contributorEmails: _json.containsKey('contributorEmails')
              ? (_json['contributorEmails'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          instruction: _json.containsKey('instruction')
              ? _json['instruction'] as core.String
              : null,
          labelGroup: _json.containsKey('labelGroup')
              ? _json['labelGroup'] as core.String
              : null,
          languageCode: _json.containsKey('languageCode')
              ? _json['languageCode'] as core.String
              : null,
          questionDuration: _json.containsKey('questionDuration')
              ? _json['questionDuration'] as core.String
              : null,
          replicaCount: _json.containsKey('replicaCount')
              ? _json['replicaCount'] as core.int
              : null,
          userEmailAddress: _json.containsKey('userEmailAddress')
              ? _json['userEmailAddress'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (annotatedDatasetDescription != null)
          'annotatedDatasetDescription': annotatedDatasetDescription!,
        if (annotatedDatasetDisplayName != null)
          'annotatedDatasetDisplayName': annotatedDatasetDisplayName!,
        if (contributorEmails != null) 'contributorEmails': contributorEmails!,
        if (instruction != null) 'instruction': instruction!,
        if (labelGroup != null) 'labelGroup': labelGroup!,
        if (languageCode != null) 'languageCode': languageCode!,
        if (questionDuration != null) 'questionDuration': questionDuration!,
        if (replicaCount != null) 'replicaCount': replicaCount!,
        if (userEmailAddress != null) 'userEmailAddress': userEmailAddress!,
      };
}

/// Metadata of an ImportData operation.
class GoogleCloudDatalabelingV1alpha1ImportDataOperationMetadata {
  /// Timestamp when import dataset request was created.
  ///
  /// Output only.
  core.String? createTime;

  /// The name of imported dataset.
  ///
  /// "projects / * /datasets / * "
  ///
  /// Output only.
  core.String? dataset;

  /// Partial failures encountered.
  ///
  /// E.g. single files that couldn't be read. Status details field will contain
  /// standard GCP error details.
  ///
  /// Output only.
  core.List<GoogleRpcStatus>? partialFailures;

  GoogleCloudDatalabelingV1alpha1ImportDataOperationMetadata({
    this.createTime,
    this.dataset,
    this.partialFailures,
  });

  GoogleCloudDatalabelingV1alpha1ImportDataOperationMetadata.fromJson(
      core.Map _json)
      : this(
          createTime: _json.containsKey('createTime')
              ? _json['createTime'] as core.String
              : null,
          dataset: _json.containsKey('dataset')
              ? _json['dataset'] as core.String
              : null,
          partialFailures: _json.containsKey('partialFailures')
              ? (_json['partialFailures'] as core.List)
                  .map((value) => GoogleRpcStatus.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (createTime != null) 'createTime': createTime!,
        if (dataset != null) 'dataset': dataset!,
        if (partialFailures != null)
          'partialFailures':
              partialFailures!.map((value) => value.toJson()).toList(),
      };
}

/// Response used for ImportData longrunning operation.
class GoogleCloudDatalabelingV1alpha1ImportDataOperationResponse {
  /// Ouptut only.
  ///
  /// The name of imported dataset.
  core.String? dataset;

  /// Number of examples imported successfully.
  ///
  /// Output only.
  core.int? importCount;

  /// Total number of examples requested to import
  ///
  /// Output only.
  core.int? totalCount;

  GoogleCloudDatalabelingV1alpha1ImportDataOperationResponse({
    this.dataset,
    this.importCount,
    this.totalCount,
  });

  GoogleCloudDatalabelingV1alpha1ImportDataOperationResponse.fromJson(
      core.Map _json)
      : this(
          dataset: _json.containsKey('dataset')
              ? _json['dataset'] as core.String
              : null,
          importCount: _json.containsKey('importCount')
              ? _json['importCount'] as core.int
              : null,
          totalCount: _json.containsKey('totalCount')
              ? _json['totalCount'] as core.int
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (dataset != null) 'dataset': dataset!,
        if (importCount != null) 'importCount': importCount!,
        if (totalCount != null) 'totalCount': totalCount!,
      };
}

/// Details of a LabelImageBoundingBox operation metadata.
class GoogleCloudDatalabelingV1alpha1LabelImageBoundingBoxOperationMetadata {
  /// Basic human annotation config used in labeling request.
  GoogleCloudDatalabelingV1alpha1HumanAnnotationConfig? basicConfig;

  GoogleCloudDatalabelingV1alpha1LabelImageBoundingBoxOperationMetadata({
    this.basicConfig,
  });

  GoogleCloudDatalabelingV1alpha1LabelImageBoundingBoxOperationMetadata.fromJson(
      core.Map _json)
      : this(
          basicConfig: _json.containsKey('basicConfig')
              ? GoogleCloudDatalabelingV1alpha1HumanAnnotationConfig.fromJson(
                  _json['basicConfig'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (basicConfig != null) 'basicConfig': basicConfig!.toJson(),
      };
}

/// Details of LabelImageBoundingPoly operation metadata.
class GoogleCloudDatalabelingV1alpha1LabelImageBoundingPolyOperationMetadata {
  /// Basic human annotation config used in labeling request.
  GoogleCloudDatalabelingV1alpha1HumanAnnotationConfig? basicConfig;

  GoogleCloudDatalabelingV1alpha1LabelImageBoundingPolyOperationMetadata({
    this.basicConfig,
  });

  GoogleCloudDatalabelingV1alpha1LabelImageBoundingPolyOperationMetadata.fromJson(
      core.Map _json)
      : this(
          basicConfig: _json.containsKey('basicConfig')
              ? GoogleCloudDatalabelingV1alpha1HumanAnnotationConfig.fromJson(
                  _json['basicConfig'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (basicConfig != null) 'basicConfig': basicConfig!.toJson(),
      };
}

/// Metadata of a LabelImageClassification operation.
class GoogleCloudDatalabelingV1alpha1LabelImageClassificationOperationMetadata {
  /// Basic human annotation config used in labeling request.
  GoogleCloudDatalabelingV1alpha1HumanAnnotationConfig? basicConfig;

  GoogleCloudDatalabelingV1alpha1LabelImageClassificationOperationMetadata({
    this.basicConfig,
  });

  GoogleCloudDatalabelingV1alpha1LabelImageClassificationOperationMetadata.fromJson(
      core.Map _json)
      : this(
          basicConfig: _json.containsKey('basicConfig')
              ? GoogleCloudDatalabelingV1alpha1HumanAnnotationConfig.fromJson(
                  _json['basicConfig'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (basicConfig != null) 'basicConfig': basicConfig!.toJson(),
      };
}

/// Details of a LabelImageOrientedBoundingBox operation metadata.
class GoogleCloudDatalabelingV1alpha1LabelImageOrientedBoundingBoxOperationMetadata {
  /// Basic human annotation config.
  GoogleCloudDatalabelingV1alpha1HumanAnnotationConfig? basicConfig;

  GoogleCloudDatalabelingV1alpha1LabelImageOrientedBoundingBoxOperationMetadata({
    this.basicConfig,
  });

  GoogleCloudDatalabelingV1alpha1LabelImageOrientedBoundingBoxOperationMetadata.fromJson(
      core.Map _json)
      : this(
          basicConfig: _json.containsKey('basicConfig')
              ? GoogleCloudDatalabelingV1alpha1HumanAnnotationConfig.fromJson(
                  _json['basicConfig'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (basicConfig != null) 'basicConfig': basicConfig!.toJson(),
      };
}

/// Details of LabelImagePolyline operation metadata.
class GoogleCloudDatalabelingV1alpha1LabelImagePolylineOperationMetadata {
  /// Basic human annotation config used in labeling request.
  GoogleCloudDatalabelingV1alpha1HumanAnnotationConfig? basicConfig;

  GoogleCloudDatalabelingV1alpha1LabelImagePolylineOperationMetadata({
    this.basicConfig,
  });

  GoogleCloudDatalabelingV1alpha1LabelImagePolylineOperationMetadata.fromJson(
      core.Map _json)
      : this(
          basicConfig: _json.containsKey('basicConfig')
              ? GoogleCloudDatalabelingV1alpha1HumanAnnotationConfig.fromJson(
                  _json['basicConfig'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (basicConfig != null) 'basicConfig': basicConfig!.toJson(),
      };
}

/// Details of a LabelImageSegmentation operation metadata.
class GoogleCloudDatalabelingV1alpha1LabelImageSegmentationOperationMetadata {
  /// Basic human annotation config.
  GoogleCloudDatalabelingV1alpha1HumanAnnotationConfig? basicConfig;

  GoogleCloudDatalabelingV1alpha1LabelImageSegmentationOperationMetadata({
    this.basicConfig,
  });

  GoogleCloudDatalabelingV1alpha1LabelImageSegmentationOperationMetadata.fromJson(
      core.Map _json)
      : this(
          basicConfig: _json.containsKey('basicConfig')
              ? GoogleCloudDatalabelingV1alpha1HumanAnnotationConfig.fromJson(
                  _json['basicConfig'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (basicConfig != null) 'basicConfig': basicConfig!.toJson(),
      };
}

/// Metadata of a labeling operation, such as LabelImage or LabelVideo.
///
/// Next tag: 23
class GoogleCloudDatalabelingV1alpha1LabelOperationMetadata {
  /// The name of annotated dataset in format "projects / * /datasets / *
  /// /annotatedDatasets / * ".
  ///
  /// Output only.
  core.String? annotatedDataset;

  /// Timestamp when labeling request was created.
  ///
  /// Output only.
  core.String? createTime;

  /// The name of dataset to be labeled.
  ///
  /// "projects / * /datasets / * "
  ///
  /// Output only.
  core.String? dataset;

  /// Details of label image bounding box operation.
  GoogleCloudDatalabelingV1alpha1LabelImageBoundingBoxOperationMetadata?
      imageBoundingBoxDetails;

  /// Details of label image bounding poly operation.
  GoogleCloudDatalabelingV1alpha1LabelImageBoundingPolyOperationMetadata?
      imageBoundingPolyDetails;

  /// Details of label image classification operation.
  GoogleCloudDatalabelingV1alpha1LabelImageClassificationOperationMetadata?
      imageClassificationDetails;

  /// Details of label image oriented bounding box operation.
  GoogleCloudDatalabelingV1alpha1LabelImageOrientedBoundingBoxOperationMetadata?
      imageOrientedBoundingBoxDetails;

  /// Details of label image polyline operation.
  GoogleCloudDatalabelingV1alpha1LabelImagePolylineOperationMetadata?
      imagePolylineDetails;

  /// Details of label image segmentation operation.
  GoogleCloudDatalabelingV1alpha1LabelImageSegmentationOperationMetadata?
      imageSegmentationDetails;

  /// Partial failures encountered.
  ///
  /// E.g. single files that couldn't be read. Status details field will contain
  /// standard GCP error details.
  ///
  /// Output only.
  core.List<GoogleRpcStatus>? partialFailures;

  /// Progress of label operation.
  ///
  /// Range: \[0, 100\].
  ///
  /// Output only.
  core.int? progressPercent;

  /// Details of label text classification operation.
  GoogleCloudDatalabelingV1alpha1LabelTextClassificationOperationMetadata?
      textClassificationDetails;

  /// Details of label text entity extraction operation.
  GoogleCloudDatalabelingV1alpha1LabelTextEntityExtractionOperationMetadata?
      textEntityExtractionDetails;

  /// Details of label video classification operation.
  GoogleCloudDatalabelingV1alpha1LabelVideoClassificationOperationMetadata?
      videoClassificationDetails;

  /// Details of label video event operation.
  GoogleCloudDatalabelingV1alpha1LabelVideoEventOperationMetadata?
      videoEventDetails;

  /// Details of label video object detection operation.
  GoogleCloudDatalabelingV1alpha1LabelVideoObjectDetectionOperationMetadata?
      videoObjectDetectionDetails;

  /// Details of label video object tracking operation.
  GoogleCloudDatalabelingV1alpha1LabelVideoObjectTrackingOperationMetadata?
      videoObjectTrackingDetails;

  GoogleCloudDatalabelingV1alpha1LabelOperationMetadata({
    this.annotatedDataset,
    this.createTime,
    this.dataset,
    this.imageBoundingBoxDetails,
    this.imageBoundingPolyDetails,
    this.imageClassificationDetails,
    this.imageOrientedBoundingBoxDetails,
    this.imagePolylineDetails,
    this.imageSegmentationDetails,
    this.partialFailures,
    this.progressPercent,
    this.textClassificationDetails,
    this.textEntityExtractionDetails,
    this.videoClassificationDetails,
    this.videoEventDetails,
    this.videoObjectDetectionDetails,
    this.videoObjectTrackingDetails,
  });

  GoogleCloudDatalabelingV1alpha1LabelOperationMetadata.fromJson(core.Map _json)
      : this(
          annotatedDataset: _json.containsKey('annotatedDataset')
              ? _json['annotatedDataset'] as core.String
              : null,
          createTime: _json.containsKey('createTime')
              ? _json['createTime'] as core.String
              : null,
          dataset: _json.containsKey('dataset')
              ? _json['dataset'] as core.String
              : null,
          imageBoundingBoxDetails: _json.containsKey('imageBoundingBoxDetails')
              ? GoogleCloudDatalabelingV1alpha1LabelImageBoundingBoxOperationMetadata
                  .fromJson(_json['imageBoundingBoxDetails']
                      as core.Map<core.String, core.dynamic>)
              : null,
          imageBoundingPolyDetails: _json
                  .containsKey('imageBoundingPolyDetails')
              ? GoogleCloudDatalabelingV1alpha1LabelImageBoundingPolyOperationMetadata
                  .fromJson(_json['imageBoundingPolyDetails']
                      as core.Map<core.String, core.dynamic>)
              : null,
          imageClassificationDetails: _json
                  .containsKey('imageClassificationDetails')
              ? GoogleCloudDatalabelingV1alpha1LabelImageClassificationOperationMetadata
                  .fromJson(_json['imageClassificationDetails']
                      as core.Map<core.String, core.dynamic>)
              : null,
          imageOrientedBoundingBoxDetails: _json
                  .containsKey('imageOrientedBoundingBoxDetails')
              ? GoogleCloudDatalabelingV1alpha1LabelImageOrientedBoundingBoxOperationMetadata
                  .fromJson(_json['imageOrientedBoundingBoxDetails']
                      as core.Map<core.String, core.dynamic>)
              : null,
          imagePolylineDetails: _json.containsKey('imagePolylineDetails')
              ? GoogleCloudDatalabelingV1alpha1LabelImagePolylineOperationMetadata
                  .fromJson(_json['imagePolylineDetails']
                      as core.Map<core.String, core.dynamic>)
              : null,
          imageSegmentationDetails: _json
                  .containsKey('imageSegmentationDetails')
              ? GoogleCloudDatalabelingV1alpha1LabelImageSegmentationOperationMetadata
                  .fromJson(_json['imageSegmentationDetails']
                      as core.Map<core.String, core.dynamic>)
              : null,
          partialFailures: _json.containsKey('partialFailures')
              ? (_json['partialFailures'] as core.List)
                  .map((value) => GoogleRpcStatus.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          progressPercent: _json.containsKey('progressPercent')
              ? _json['progressPercent'] as core.int
              : null,
          textClassificationDetails: _json
                  .containsKey('textClassificationDetails')
              ? GoogleCloudDatalabelingV1alpha1LabelTextClassificationOperationMetadata
                  .fromJson(_json['textClassificationDetails']
                      as core.Map<core.String, core.dynamic>)
              : null,
          textEntityExtractionDetails: _json
                  .containsKey('textEntityExtractionDetails')
              ? GoogleCloudDatalabelingV1alpha1LabelTextEntityExtractionOperationMetadata
                  .fromJson(_json['textEntityExtractionDetails']
                      as core.Map<core.String, core.dynamic>)
              : null,
          videoClassificationDetails: _json
                  .containsKey('videoClassificationDetails')
              ? GoogleCloudDatalabelingV1alpha1LabelVideoClassificationOperationMetadata
                  .fromJson(_json['videoClassificationDetails']
                      as core.Map<core.String, core.dynamic>)
              : null,
          videoEventDetails: _json.containsKey('videoEventDetails')
              ? GoogleCloudDatalabelingV1alpha1LabelVideoEventOperationMetadata
                  .fromJson(_json['videoEventDetails']
                      as core.Map<core.String, core.dynamic>)
              : null,
          videoObjectDetectionDetails: _json
                  .containsKey('videoObjectDetectionDetails')
              ? GoogleCloudDatalabelingV1alpha1LabelVideoObjectDetectionOperationMetadata
                  .fromJson(_json['videoObjectDetectionDetails']
                      as core.Map<core.String, core.dynamic>)
              : null,
          videoObjectTrackingDetails: _json
                  .containsKey('videoObjectTrackingDetails')
              ? GoogleCloudDatalabelingV1alpha1LabelVideoObjectTrackingOperationMetadata
                  .fromJson(_json['videoObjectTrackingDetails']
                      as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (annotatedDataset != null) 'annotatedDataset': annotatedDataset!,
        if (createTime != null) 'createTime': createTime!,
        if (dataset != null) 'dataset': dataset!,
        if (imageBoundingBoxDetails != null)
          'imageBoundingBoxDetails': imageBoundingBoxDetails!.toJson(),
        if (imageBoundingPolyDetails != null)
          'imageBoundingPolyDetails': imageBoundingPolyDetails!.toJson(),
        if (imageClassificationDetails != null)
          'imageClassificationDetails': imageClassificationDetails!.toJson(),
        if (imageOrientedBoundingBoxDetails != null)
          'imageOrientedBoundingBoxDetails':
              imageOrientedBoundingBoxDetails!.toJson(),
        if (imagePolylineDetails != null)
          'imagePolylineDetails': imagePolylineDetails!.toJson(),
        if (imageSegmentationDetails != null)
          'imageSegmentationDetails': imageSegmentationDetails!.toJson(),
        if (partialFailures != null)
          'partialFailures':
              partialFailures!.map((value) => value.toJson()).toList(),
        if (progressPercent != null) 'progressPercent': progressPercent!,
        if (textClassificationDetails != null)
          'textClassificationDetails': textClassificationDetails!.toJson(),
        if (textEntityExtractionDetails != null)
          'textEntityExtractionDetails': textEntityExtractionDetails!.toJson(),
        if (videoClassificationDetails != null)
          'videoClassificationDetails': videoClassificationDetails!.toJson(),
        if (videoEventDetails != null)
          'videoEventDetails': videoEventDetails!.toJson(),
        if (videoObjectDetectionDetails != null)
          'videoObjectDetectionDetails': videoObjectDetectionDetails!.toJson(),
        if (videoObjectTrackingDetails != null)
          'videoObjectTrackingDetails': videoObjectTrackingDetails!.toJson(),
      };
}

/// Statistics about annotation specs.
class GoogleCloudDatalabelingV1alpha1LabelStats {
  /// Map of each annotation spec's example count.
  ///
  /// Key is the annotation spec name and value is the number of examples for
  /// that annotation spec. If the annotated dataset does not have annotation
  /// spec, the map will return a pair where the key is empty string and value
  /// is the total number of annotations.
  core.Map<core.String, core.String>? exampleCount;

  GoogleCloudDatalabelingV1alpha1LabelStats({
    this.exampleCount,
  });

  GoogleCloudDatalabelingV1alpha1LabelStats.fromJson(core.Map _json)
      : this(
          exampleCount: _json.containsKey('exampleCount')
              ? (_json['exampleCount'] as core.Map<core.String, core.dynamic>)
                  .map(
                  (key, item) => core.MapEntry(
                    key,
                    item as core.String,
                  ),
                )
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (exampleCount != null) 'exampleCount': exampleCount!,
      };
}

/// Details of a LabelTextClassification operation metadata.
class GoogleCloudDatalabelingV1alpha1LabelTextClassificationOperationMetadata {
  /// Basic human annotation config used in labeling request.
  GoogleCloudDatalabelingV1alpha1HumanAnnotationConfig? basicConfig;

  GoogleCloudDatalabelingV1alpha1LabelTextClassificationOperationMetadata({
    this.basicConfig,
  });

  GoogleCloudDatalabelingV1alpha1LabelTextClassificationOperationMetadata.fromJson(
      core.Map _json)
      : this(
          basicConfig: _json.containsKey('basicConfig')
              ? GoogleCloudDatalabelingV1alpha1HumanAnnotationConfig.fromJson(
                  _json['basicConfig'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (basicConfig != null) 'basicConfig': basicConfig!.toJson(),
      };
}

/// Details of a LabelTextEntityExtraction operation metadata.
class GoogleCloudDatalabelingV1alpha1LabelTextEntityExtractionOperationMetadata {
  /// Basic human annotation config used in labeling request.
  GoogleCloudDatalabelingV1alpha1HumanAnnotationConfig? basicConfig;

  GoogleCloudDatalabelingV1alpha1LabelTextEntityExtractionOperationMetadata({
    this.basicConfig,
  });

  GoogleCloudDatalabelingV1alpha1LabelTextEntityExtractionOperationMetadata.fromJson(
      core.Map _json)
      : this(
          basicConfig: _json.containsKey('basicConfig')
              ? GoogleCloudDatalabelingV1alpha1HumanAnnotationConfig.fromJson(
                  _json['basicConfig'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (basicConfig != null) 'basicConfig': basicConfig!.toJson(),
      };
}

/// Details of a LabelVideoClassification operation metadata.
class GoogleCloudDatalabelingV1alpha1LabelVideoClassificationOperationMetadata {
  /// Basic human annotation config used in labeling request.
  GoogleCloudDatalabelingV1alpha1HumanAnnotationConfig? basicConfig;

  GoogleCloudDatalabelingV1alpha1LabelVideoClassificationOperationMetadata({
    this.basicConfig,
  });

  GoogleCloudDatalabelingV1alpha1LabelVideoClassificationOperationMetadata.fromJson(
      core.Map _json)
      : this(
          basicConfig: _json.containsKey('basicConfig')
              ? GoogleCloudDatalabelingV1alpha1HumanAnnotationConfig.fromJson(
                  _json['basicConfig'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (basicConfig != null) 'basicConfig': basicConfig!.toJson(),
      };
}

/// Details of a LabelVideoEvent operation metadata.
class GoogleCloudDatalabelingV1alpha1LabelVideoEventOperationMetadata {
  /// Basic human annotation config used in labeling request.
  GoogleCloudDatalabelingV1alpha1HumanAnnotationConfig? basicConfig;

  GoogleCloudDatalabelingV1alpha1LabelVideoEventOperationMetadata({
    this.basicConfig,
  });

  GoogleCloudDatalabelingV1alpha1LabelVideoEventOperationMetadata.fromJson(
      core.Map _json)
      : this(
          basicConfig: _json.containsKey('basicConfig')
              ? GoogleCloudDatalabelingV1alpha1HumanAnnotationConfig.fromJson(
                  _json['basicConfig'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (basicConfig != null) 'basicConfig': basicConfig!.toJson(),
      };
}

/// Details of a LabelVideoObjectDetection operation metadata.
class GoogleCloudDatalabelingV1alpha1LabelVideoObjectDetectionOperationMetadata {
  /// Basic human annotation config used in labeling request.
  GoogleCloudDatalabelingV1alpha1HumanAnnotationConfig? basicConfig;

  GoogleCloudDatalabelingV1alpha1LabelVideoObjectDetectionOperationMetadata({
    this.basicConfig,
  });

  GoogleCloudDatalabelingV1alpha1LabelVideoObjectDetectionOperationMetadata.fromJson(
      core.Map _json)
      : this(
          basicConfig: _json.containsKey('basicConfig')
              ? GoogleCloudDatalabelingV1alpha1HumanAnnotationConfig.fromJson(
                  _json['basicConfig'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (basicConfig != null) 'basicConfig': basicConfig!.toJson(),
      };
}

/// Details of a LabelVideoObjectTracking operation metadata.
class GoogleCloudDatalabelingV1alpha1LabelVideoObjectTrackingOperationMetadata {
  /// Basic human annotation config used in labeling request.
  GoogleCloudDatalabelingV1alpha1HumanAnnotationConfig? basicConfig;

  GoogleCloudDatalabelingV1alpha1LabelVideoObjectTrackingOperationMetadata({
    this.basicConfig,
  });

  GoogleCloudDatalabelingV1alpha1LabelVideoObjectTrackingOperationMetadata.fromJson(
      core.Map _json)
      : this(
          basicConfig: _json.containsKey('basicConfig')
              ? GoogleCloudDatalabelingV1alpha1HumanAnnotationConfig.fromJson(
                  _json['basicConfig'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (basicConfig != null) 'basicConfig': basicConfig!.toJson(),
      };
}

/// The configuration of output data.
class GoogleCloudDatalabelingV1alpha1OutputConfig {
  /// Output to a file in Cloud Storage.
  ///
  /// Should be used for labeling output other than image segmentation.
  GoogleCloudDatalabelingV1alpha1GcsDestination? gcsDestination;

  /// Output to a folder in Cloud Storage.
  ///
  /// Should be used for image segmentation or document de-identification
  /// labeling outputs.
  GoogleCloudDatalabelingV1alpha1GcsFolderDestination? gcsFolderDestination;

  GoogleCloudDatalabelingV1alpha1OutputConfig({
    this.gcsDestination,
    this.gcsFolderDestination,
  });

  GoogleCloudDatalabelingV1alpha1OutputConfig.fromJson(core.Map _json)
      : this(
          gcsDestination: _json.containsKey('gcsDestination')
              ? GoogleCloudDatalabelingV1alpha1GcsDestination.fromJson(
                  _json['gcsDestination']
                      as core.Map<core.String, core.dynamic>)
              : null,
          gcsFolderDestination: _json.containsKey('gcsFolderDestination')
              ? GoogleCloudDatalabelingV1alpha1GcsFolderDestination.fromJson(
                  _json['gcsFolderDestination']
                      as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (gcsDestination != null) 'gcsDestination': gcsDestination!.toJson(),
        if (gcsFolderDestination != null)
          'gcsFolderDestination': gcsFolderDestination!.toJson(),
      };
}

/// AnnotatedDataset is a set holding annotations for data in a Dataset.
///
/// Each labeling task will generate an AnnotatedDataset under the Dataset that
/// the task is requested for.
class GoogleCloudDatalabelingV1beta1AnnotatedDataset {
  /// Source of the annotation.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "ANNOTATION_SOURCE_UNSPECIFIED"
  /// - "OPERATOR" : Answer is provided by a human contributor.
  core.String? annotationSource;

  /// Type of the annotation.
  ///
  /// It is specified when starting labeling task.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "ANNOTATION_TYPE_UNSPECIFIED"
  /// - "IMAGE_CLASSIFICATION_ANNOTATION" : Classification annotations in an
  /// image. Allowed for continuous evaluation.
  /// - "IMAGE_BOUNDING_BOX_ANNOTATION" : Bounding box annotations in an image.
  /// A form of image object detection. Allowed for continuous evaluation.
  /// - "IMAGE_ORIENTED_BOUNDING_BOX_ANNOTATION" : Oriented bounding box. The
  /// box does not have to be parallel to horizontal line.
  /// - "IMAGE_BOUNDING_POLY_ANNOTATION" : Bounding poly annotations in an
  /// image.
  /// - "IMAGE_POLYLINE_ANNOTATION" : Polyline annotations in an image.
  /// - "IMAGE_SEGMENTATION_ANNOTATION" : Segmentation annotations in an image.
  /// - "VIDEO_SHOTS_CLASSIFICATION_ANNOTATION" : Classification annotations in
  /// video shots.
  /// - "VIDEO_OBJECT_TRACKING_ANNOTATION" : Video object tracking annotation.
  /// - "VIDEO_OBJECT_DETECTION_ANNOTATION" : Video object detection annotation.
  /// - "VIDEO_EVENT_ANNOTATION" : Video event annotation.
  /// - "TEXT_CLASSIFICATION_ANNOTATION" : Classification for text. Allowed for
  /// continuous evaluation.
  /// - "TEXT_ENTITY_EXTRACTION_ANNOTATION" : Entity extraction for text.
  /// - "GENERAL_CLASSIFICATION_ANNOTATION" : General classification. Allowed
  /// for continuous evaluation.
  core.String? annotationType;

  /// The names of any related resources that are blocking changes to the
  /// annotated dataset.
  ///
  /// Output only.
  core.List<core.String>? blockingResources;

  /// Number of examples that have annotation in the annotated dataset.
  ///
  /// Output only.
  core.String? completedExampleCount;

  /// Time the AnnotatedDataset was created.
  ///
  /// Output only.
  core.String? createTime;

  /// The description of the AnnotatedDataset.
  ///
  /// It is specified in HumanAnnotationConfig when user starts a labeling task.
  /// Maximum of 10000 characters.
  ///
  /// Output only.
  core.String? description;

  /// The display name of the AnnotatedDataset.
  ///
  /// It is specified in HumanAnnotationConfig when user starts a labeling task.
  /// Maximum of 64 characters.
  ///
  /// Output only.
  core.String? displayName;

  /// Number of examples in the annotated dataset.
  ///
  /// Output only.
  core.String? exampleCount;

  /// Per label statistics.
  ///
  /// Output only.
  GoogleCloudDatalabelingV1beta1LabelStats? labelStats;

  /// Additional information about AnnotatedDataset.
  ///
  /// Output only.
  GoogleCloudDatalabelingV1beta1AnnotatedDatasetMetadata? metadata;

  /// AnnotatedDataset resource name in format of:
  /// projects/{project_id}/datasets/{dataset_id}/annotatedDatasets/
  /// {annotated_dataset_id}
  ///
  /// Output only.
  core.String? name;

  GoogleCloudDatalabelingV1beta1AnnotatedDataset({
    this.annotationSource,
    this.annotationType,
    this.blockingResources,
    this.completedExampleCount,
    this.createTime,
    this.description,
    this.displayName,
    this.exampleCount,
    this.labelStats,
    this.metadata,
    this.name,
  });

  GoogleCloudDatalabelingV1beta1AnnotatedDataset.fromJson(core.Map _json)
      : this(
          annotationSource: _json.containsKey('annotationSource')
              ? _json['annotationSource'] as core.String
              : null,
          annotationType: _json.containsKey('annotationType')
              ? _json['annotationType'] as core.String
              : null,
          blockingResources: _json.containsKey('blockingResources')
              ? (_json['blockingResources'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          completedExampleCount: _json.containsKey('completedExampleCount')
              ? _json['completedExampleCount'] as core.String
              : null,
          createTime: _json.containsKey('createTime')
              ? _json['createTime'] as core.String
              : null,
          description: _json.containsKey('description')
              ? _json['description'] as core.String
              : null,
          displayName: _json.containsKey('displayName')
              ? _json['displayName'] as core.String
              : null,
          exampleCount: _json.containsKey('exampleCount')
              ? _json['exampleCount'] as core.String
              : null,
          labelStats: _json.containsKey('labelStats')
              ? GoogleCloudDatalabelingV1beta1LabelStats.fromJson(
                  _json['labelStats'] as core.Map<core.String, core.dynamic>)
              : null,
          metadata: _json.containsKey('metadata')
              ? GoogleCloudDatalabelingV1beta1AnnotatedDatasetMetadata.fromJson(
                  _json['metadata'] as core.Map<core.String, core.dynamic>)
              : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (annotationSource != null) 'annotationSource': annotationSource!,
        if (annotationType != null) 'annotationType': annotationType!,
        if (blockingResources != null) 'blockingResources': blockingResources!,
        if (completedExampleCount != null)
          'completedExampleCount': completedExampleCount!,
        if (createTime != null) 'createTime': createTime!,
        if (description != null) 'description': description!,
        if (displayName != null) 'displayName': displayName!,
        if (exampleCount != null) 'exampleCount': exampleCount!,
        if (labelStats != null) 'labelStats': labelStats!.toJson(),
        if (metadata != null) 'metadata': metadata!.toJson(),
        if (name != null) 'name': name!,
      };
}

/// Metadata on AnnotatedDataset.
class GoogleCloudDatalabelingV1beta1AnnotatedDatasetMetadata {
  /// Configuration for image bounding box and bounding poly task.
  GoogleCloudDatalabelingV1beta1BoundingPolyConfig? boundingPolyConfig;

  /// Configuration for video event labeling task.
  GoogleCloudDatalabelingV1beta1EventConfig? eventConfig;

  /// HumanAnnotationConfig used when requesting the human labeling task for
  /// this AnnotatedDataset.
  GoogleCloudDatalabelingV1beta1HumanAnnotationConfig? humanAnnotationConfig;

  /// Configuration for image classification task.
  GoogleCloudDatalabelingV1beta1ImageClassificationConfig?
      imageClassificationConfig;

  /// Configuration for video object detection task.
  GoogleCloudDatalabelingV1beta1ObjectDetectionConfig? objectDetectionConfig;

  /// Configuration for video object tracking task.
  GoogleCloudDatalabelingV1beta1ObjectTrackingConfig? objectTrackingConfig;

  /// Configuration for image polyline task.
  GoogleCloudDatalabelingV1beta1PolylineConfig? polylineConfig;

  /// Configuration for image segmentation task.
  GoogleCloudDatalabelingV1beta1SegmentationConfig? segmentationConfig;

  /// Configuration for text classification task.
  GoogleCloudDatalabelingV1beta1TextClassificationConfig?
      textClassificationConfig;

  /// Configuration for text entity extraction task.
  GoogleCloudDatalabelingV1beta1TextEntityExtractionConfig?
      textEntityExtractionConfig;

  /// Configuration for video classification task.
  GoogleCloudDatalabelingV1beta1VideoClassificationConfig?
      videoClassificationConfig;

  GoogleCloudDatalabelingV1beta1AnnotatedDatasetMetadata({
    this.boundingPolyConfig,
    this.eventConfig,
    this.humanAnnotationConfig,
    this.imageClassificationConfig,
    this.objectDetectionConfig,
    this.objectTrackingConfig,
    this.polylineConfig,
    this.segmentationConfig,
    this.textClassificationConfig,
    this.textEntityExtractionConfig,
    this.videoClassificationConfig,
  });

  GoogleCloudDatalabelingV1beta1AnnotatedDatasetMetadata.fromJson(
      core.Map _json)
      : this(
          boundingPolyConfig: _json.containsKey('boundingPolyConfig')
              ? GoogleCloudDatalabelingV1beta1BoundingPolyConfig.fromJson(
                  _json['boundingPolyConfig']
                      as core.Map<core.String, core.dynamic>)
              : null,
          eventConfig: _json.containsKey('eventConfig')
              ? GoogleCloudDatalabelingV1beta1EventConfig.fromJson(
                  _json['eventConfig'] as core.Map<core.String, core.dynamic>)
              : null,
          humanAnnotationConfig: _json.containsKey('humanAnnotationConfig')
              ? GoogleCloudDatalabelingV1beta1HumanAnnotationConfig.fromJson(
                  _json['humanAnnotationConfig']
                      as core.Map<core.String, core.dynamic>)
              : null,
          imageClassificationConfig:
              _json.containsKey('imageClassificationConfig')
                  ? GoogleCloudDatalabelingV1beta1ImageClassificationConfig
                      .fromJson(_json['imageClassificationConfig']
                          as core.Map<core.String, core.dynamic>)
                  : null,
          objectDetectionConfig: _json.containsKey('objectDetectionConfig')
              ? GoogleCloudDatalabelingV1beta1ObjectDetectionConfig.fromJson(
                  _json['objectDetectionConfig']
                      as core.Map<core.String, core.dynamic>)
              : null,
          objectTrackingConfig: _json.containsKey('objectTrackingConfig')
              ? GoogleCloudDatalabelingV1beta1ObjectTrackingConfig.fromJson(
                  _json['objectTrackingConfig']
                      as core.Map<core.String, core.dynamic>)
              : null,
          polylineConfig: _json.containsKey('polylineConfig')
              ? GoogleCloudDatalabelingV1beta1PolylineConfig.fromJson(
                  _json['polylineConfig']
                      as core.Map<core.String, core.dynamic>)
              : null,
          segmentationConfig: _json.containsKey('segmentationConfig')
              ? GoogleCloudDatalabelingV1beta1SegmentationConfig.fromJson(
                  _json['segmentationConfig']
                      as core.Map<core.String, core.dynamic>)
              : null,
          textClassificationConfig: _json
                  .containsKey('textClassificationConfig')
              ? GoogleCloudDatalabelingV1beta1TextClassificationConfig.fromJson(
                  _json['textClassificationConfig']
                      as core.Map<core.String, core.dynamic>)
              : null,
          textEntityExtractionConfig:
              _json.containsKey('textEntityExtractionConfig')
                  ? GoogleCloudDatalabelingV1beta1TextEntityExtractionConfig
                      .fromJson(_json['textEntityExtractionConfig']
                          as core.Map<core.String, core.dynamic>)
                  : null,
          videoClassificationConfig:
              _json.containsKey('videoClassificationConfig')
                  ? GoogleCloudDatalabelingV1beta1VideoClassificationConfig
                      .fromJson(_json['videoClassificationConfig']
                          as core.Map<core.String, core.dynamic>)
                  : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (boundingPolyConfig != null)
          'boundingPolyConfig': boundingPolyConfig!.toJson(),
        if (eventConfig != null) 'eventConfig': eventConfig!.toJson(),
        if (humanAnnotationConfig != null)
          'humanAnnotationConfig': humanAnnotationConfig!.toJson(),
        if (imageClassificationConfig != null)
          'imageClassificationConfig': imageClassificationConfig!.toJson(),
        if (objectDetectionConfig != null)
          'objectDetectionConfig': objectDetectionConfig!.toJson(),
        if (objectTrackingConfig != null)
          'objectTrackingConfig': objectTrackingConfig!.toJson(),
        if (polylineConfig != null) 'polylineConfig': polylineConfig!.toJson(),
        if (segmentationConfig != null)
          'segmentationConfig': segmentationConfig!.toJson(),
        if (textClassificationConfig != null)
          'textClassificationConfig': textClassificationConfig!.toJson(),
        if (textEntityExtractionConfig != null)
          'textEntityExtractionConfig': textEntityExtractionConfig!.toJson(),
        if (videoClassificationConfig != null)
          'videoClassificationConfig': videoClassificationConfig!.toJson(),
      };
}

/// Annotation for Example.
///
/// Each example may have one or more annotations. For example in image
/// classification problem, each image might have one or more labels. We call
/// labels binded with this image an Annotation.
class GoogleCloudDatalabelingV1beta1Annotation {
  /// Annotation metadata, including information like votes for labels.
  ///
  /// Output only.
  GoogleCloudDatalabelingV1beta1AnnotationMetadata? annotationMetadata;

  /// Sentiment for this annotation.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "ANNOTATION_SENTIMENT_UNSPECIFIED"
  /// - "NEGATIVE" : This annotation describes negatively about the data.
  /// - "POSITIVE" : This label describes positively about the data.
  core.String? annotationSentiment;

  /// The source of the annotation.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "ANNOTATION_SOURCE_UNSPECIFIED"
  /// - "OPERATOR" : Answer is provided by a human contributor.
  core.String? annotationSource;

  /// This is the actual annotation value, e.g classification, bounding box
  /// values are stored here.
  ///
  /// Output only.
  GoogleCloudDatalabelingV1beta1AnnotationValue? annotationValue;

  /// Unique name of this annotation, format is:
  /// projects/{project_id}/datasets/{dataset_id}/annotatedDatasets/{annotated_dataset}/examples/{example_id}/annotations/{annotation_id}
  ///
  /// Output only.
  core.String? name;

  GoogleCloudDatalabelingV1beta1Annotation({
    this.annotationMetadata,
    this.annotationSentiment,
    this.annotationSource,
    this.annotationValue,
    this.name,
  });

  GoogleCloudDatalabelingV1beta1Annotation.fromJson(core.Map _json)
      : this(
          annotationMetadata: _json.containsKey('annotationMetadata')
              ? GoogleCloudDatalabelingV1beta1AnnotationMetadata.fromJson(
                  _json['annotationMetadata']
                      as core.Map<core.String, core.dynamic>)
              : null,
          annotationSentiment: _json.containsKey('annotationSentiment')
              ? _json['annotationSentiment'] as core.String
              : null,
          annotationSource: _json.containsKey('annotationSource')
              ? _json['annotationSource'] as core.String
              : null,
          annotationValue: _json.containsKey('annotationValue')
              ? GoogleCloudDatalabelingV1beta1AnnotationValue.fromJson(
                  _json['annotationValue']
                      as core.Map<core.String, core.dynamic>)
              : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (annotationMetadata != null)
          'annotationMetadata': annotationMetadata!.toJson(),
        if (annotationSentiment != null)
          'annotationSentiment': annotationSentiment!,
        if (annotationSource != null) 'annotationSource': annotationSource!,
        if (annotationValue != null)
          'annotationValue': annotationValue!.toJson(),
        if (name != null) 'name': name!,
      };
}

/// Additional information associated with the annotation.
class GoogleCloudDatalabelingV1beta1AnnotationMetadata {
  /// Metadata related to human labeling.
  GoogleCloudDatalabelingV1beta1OperatorMetadata? operatorMetadata;

  GoogleCloudDatalabelingV1beta1AnnotationMetadata({
    this.operatorMetadata,
  });

  GoogleCloudDatalabelingV1beta1AnnotationMetadata.fromJson(core.Map _json)
      : this(
          operatorMetadata: _json.containsKey('operatorMetadata')
              ? GoogleCloudDatalabelingV1beta1OperatorMetadata.fromJson(
                  _json['operatorMetadata']
                      as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (operatorMetadata != null)
          'operatorMetadata': operatorMetadata!.toJson(),
      };
}

/// Container of information related to one possible annotation that can be used
/// in a labeling task.
///
/// For example, an image classification task where images are labeled as `dog`
/// or `cat` must reference an AnnotationSpec for `dog` and an AnnotationSpec
/// for `cat`.
class GoogleCloudDatalabelingV1beta1AnnotationSpec {
  /// User-provided description of the annotation specification.
  ///
  /// The description can be up to 10,000 characters long.
  ///
  /// Optional.
  core.String? description;

  /// The display name of the AnnotationSpec.
  ///
  /// Maximum of 64 characters.
  ///
  /// Required.
  core.String? displayName;

  /// This is the integer index of the AnnotationSpec.
  ///
  /// The index for the whole AnnotationSpecSet is sequential starting from 0.
  /// For example, an AnnotationSpecSet with classes `dog` and `cat`, might
  /// contain one AnnotationSpec with `{ display_name: "dog", index: 0 }` and
  /// one AnnotationSpec with `{ display_name: "cat", index: 1 }`. This is
  /// especially useful for model training as it encodes the string labels into
  /// numeric values.
  ///
  /// Output only.
  core.int? index;

  GoogleCloudDatalabelingV1beta1AnnotationSpec({
    this.description,
    this.displayName,
    this.index,
  });

  GoogleCloudDatalabelingV1beta1AnnotationSpec.fromJson(core.Map _json)
      : this(
          description: _json.containsKey('description')
              ? _json['description'] as core.String
              : null,
          displayName: _json.containsKey('displayName')
              ? _json['displayName'] as core.String
              : null,
          index: _json.containsKey('index') ? _json['index'] as core.int : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (description != null) 'description': description!,
        if (displayName != null) 'displayName': displayName!,
        if (index != null) 'index': index!,
      };
}

/// An AnnotationSpecSet is a collection of label definitions.
///
/// For example, in image classification tasks, you define a set of possible
/// labels for images as an AnnotationSpecSet. An AnnotationSpecSet is immutable
/// upon creation.
class GoogleCloudDatalabelingV1beta1AnnotationSpecSet {
  /// The array of AnnotationSpecs that you define when you create the
  /// AnnotationSpecSet.
  ///
  /// These are the possible labels for the labeling task.
  ///
  /// Required.
  core.List<GoogleCloudDatalabelingV1beta1AnnotationSpec>? annotationSpecs;

  /// The names of any related resources that are blocking changes to the
  /// annotation spec set.
  ///
  /// Output only.
  core.List<core.String>? blockingResources;

  /// User-provided description of the annotation specification set.
  ///
  /// The description can be up to 10,000 characters long.
  ///
  /// Optional.
  core.String? description;

  /// The display name for AnnotationSpecSet that you define when you create it.
  ///
  /// Maximum of 64 characters.
  ///
  /// Required.
  core.String? displayName;

  /// The AnnotationSpecSet resource name in the following format:
  /// "projects/{project_id}/annotationSpecSets/{annotation_spec_set_id}"
  ///
  /// Output only.
  core.String? name;

  GoogleCloudDatalabelingV1beta1AnnotationSpecSet({
    this.annotationSpecs,
    this.blockingResources,
    this.description,
    this.displayName,
    this.name,
  });

  GoogleCloudDatalabelingV1beta1AnnotationSpecSet.fromJson(core.Map _json)
      : this(
          annotationSpecs: _json.containsKey('annotationSpecs')
              ? (_json['annotationSpecs'] as core.List)
                  .map((value) =>
                      GoogleCloudDatalabelingV1beta1AnnotationSpec.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          blockingResources: _json.containsKey('blockingResources')
              ? (_json['blockingResources'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          description: _json.containsKey('description')
              ? _json['description'] as core.String
              : null,
          displayName: _json.containsKey('displayName')
              ? _json['displayName'] as core.String
              : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (annotationSpecs != null)
          'annotationSpecs':
              annotationSpecs!.map((value) => value.toJson()).toList(),
        if (blockingResources != null) 'blockingResources': blockingResources!,
        if (description != null) 'description': description!,
        if (displayName != null) 'displayName': displayName!,
        if (name != null) 'name': name!,
      };
}

/// Annotation spec set with the setting of allowing multi labels or not.
class GoogleCloudDatalabelingV1beta1AnnotationSpecSetConfig {
  /// If allow_multi_label is true, contributors are able to choose multiple
  /// labels from one annotation spec set.
  ///
  /// Optional.
  core.bool? allowMultiLabel;

  /// Annotation spec set resource name.
  ///
  /// Required.
  core.String? annotationSpecSet;

  GoogleCloudDatalabelingV1beta1AnnotationSpecSetConfig({
    this.allowMultiLabel,
    this.annotationSpecSet,
  });

  GoogleCloudDatalabelingV1beta1AnnotationSpecSetConfig.fromJson(core.Map _json)
      : this(
          allowMultiLabel: _json.containsKey('allowMultiLabel')
              ? _json['allowMultiLabel'] as core.bool
              : null,
          annotationSpecSet: _json.containsKey('annotationSpecSet')
              ? _json['annotationSpecSet'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (allowMultiLabel != null) 'allowMultiLabel': allowMultiLabel!,
        if (annotationSpecSet != null) 'annotationSpecSet': annotationSpecSet!,
      };
}

/// Annotation value for an example.
class GoogleCloudDatalabelingV1beta1AnnotationValue {
  /// Annotation value for image bounding box, oriented bounding box and polygon
  /// cases.
  GoogleCloudDatalabelingV1beta1ImageBoundingPolyAnnotation?
      imageBoundingPolyAnnotation;

  /// Annotation value for image classification case.
  GoogleCloudDatalabelingV1beta1ImageClassificationAnnotation?
      imageClassificationAnnotation;

  /// Annotation value for image polyline cases.
  ///
  /// Polyline here is different from BoundingPoly. It is formed by line
  /// segments connected to each other but not closed form(Bounding Poly). The
  /// line segments can cross each other.
  GoogleCloudDatalabelingV1beta1ImagePolylineAnnotation?
      imagePolylineAnnotation;

  /// Annotation value for image segmentation.
  GoogleCloudDatalabelingV1beta1ImageSegmentationAnnotation?
      imageSegmentationAnnotation;

  /// Annotation value for text classification case.
  GoogleCloudDatalabelingV1beta1TextClassificationAnnotation?
      textClassificationAnnotation;

  /// Annotation value for text entity extraction case.
  GoogleCloudDatalabelingV1beta1TextEntityExtractionAnnotation?
      textEntityExtractionAnnotation;

  /// Annotation value for video classification case.
  GoogleCloudDatalabelingV1beta1VideoClassificationAnnotation?
      videoClassificationAnnotation;

  /// Annotation value for video event case.
  GoogleCloudDatalabelingV1beta1VideoEventAnnotation? videoEventAnnotation;

  /// Annotation value for video object detection and tracking case.
  GoogleCloudDatalabelingV1beta1VideoObjectTrackingAnnotation?
      videoObjectTrackingAnnotation;

  GoogleCloudDatalabelingV1beta1AnnotationValue({
    this.imageBoundingPolyAnnotation,
    this.imageClassificationAnnotation,
    this.imagePolylineAnnotation,
    this.imageSegmentationAnnotation,
    this.textClassificationAnnotation,
    this.textEntityExtractionAnnotation,
    this.videoClassificationAnnotation,
    this.videoEventAnnotation,
    this.videoObjectTrackingAnnotation,
  });

  GoogleCloudDatalabelingV1beta1AnnotationValue.fromJson(core.Map _json)
      : this(
          imageBoundingPolyAnnotation:
              _json.containsKey('imageBoundingPolyAnnotation')
                  ? GoogleCloudDatalabelingV1beta1ImageBoundingPolyAnnotation
                      .fromJson(_json['imageBoundingPolyAnnotation']
                          as core.Map<core.String, core.dynamic>)
                  : null,
          imageClassificationAnnotation:
              _json.containsKey('imageClassificationAnnotation')
                  ? GoogleCloudDatalabelingV1beta1ImageClassificationAnnotation
                      .fromJson(_json['imageClassificationAnnotation']
                          as core.Map<core.String, core.dynamic>)
                  : null,
          imagePolylineAnnotation: _json.containsKey('imagePolylineAnnotation')
              ? GoogleCloudDatalabelingV1beta1ImagePolylineAnnotation.fromJson(
                  _json['imagePolylineAnnotation']
                      as core.Map<core.String, core.dynamic>)
              : null,
          imageSegmentationAnnotation:
              _json.containsKey('imageSegmentationAnnotation')
                  ? GoogleCloudDatalabelingV1beta1ImageSegmentationAnnotation
                      .fromJson(_json['imageSegmentationAnnotation']
                          as core.Map<core.String, core.dynamic>)
                  : null,
          textClassificationAnnotation:
              _json.containsKey('textClassificationAnnotation')
                  ? GoogleCloudDatalabelingV1beta1TextClassificationAnnotation
                      .fromJson(_json['textClassificationAnnotation']
                          as core.Map<core.String, core.dynamic>)
                  : null,
          textEntityExtractionAnnotation:
              _json.containsKey('textEntityExtractionAnnotation')
                  ? GoogleCloudDatalabelingV1beta1TextEntityExtractionAnnotation
                      .fromJson(_json['textEntityExtractionAnnotation']
                          as core.Map<core.String, core.dynamic>)
                  : null,
          videoClassificationAnnotation:
              _json.containsKey('videoClassificationAnnotation')
                  ? GoogleCloudDatalabelingV1beta1VideoClassificationAnnotation
                      .fromJson(_json['videoClassificationAnnotation']
                          as core.Map<core.String, core.dynamic>)
                  : null,
          videoEventAnnotation: _json.containsKey('videoEventAnnotation')
              ? GoogleCloudDatalabelingV1beta1VideoEventAnnotation.fromJson(
                  _json['videoEventAnnotation']
                      as core.Map<core.String, core.dynamic>)
              : null,
          videoObjectTrackingAnnotation:
              _json.containsKey('videoObjectTrackingAnnotation')
                  ? GoogleCloudDatalabelingV1beta1VideoObjectTrackingAnnotation
                      .fromJson(_json['videoObjectTrackingAnnotation']
                          as core.Map<core.String, core.dynamic>)
                  : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (imageBoundingPolyAnnotation != null)
          'imageBoundingPolyAnnotation': imageBoundingPolyAnnotation!.toJson(),
        if (imageClassificationAnnotation != null)
          'imageClassificationAnnotation':
              imageClassificationAnnotation!.toJson(),
        if (imagePolylineAnnotation != null)
          'imagePolylineAnnotation': imagePolylineAnnotation!.toJson(),
        if (imageSegmentationAnnotation != null)
          'imageSegmentationAnnotation': imageSegmentationAnnotation!.toJson(),
        if (textClassificationAnnotation != null)
          'textClassificationAnnotation':
              textClassificationAnnotation!.toJson(),
        if (textEntityExtractionAnnotation != null)
          'textEntityExtractionAnnotation':
              textEntityExtractionAnnotation!.toJson(),
        if (videoClassificationAnnotation != null)
          'videoClassificationAnnotation':
              videoClassificationAnnotation!.toJson(),
        if (videoEventAnnotation != null)
          'videoEventAnnotation': videoEventAnnotation!.toJson(),
        if (videoObjectTrackingAnnotation != null)
          'videoObjectTrackingAnnotation':
              videoObjectTrackingAnnotation!.toJson(),
      };
}

/// Records a failed evaluation job run.
class GoogleCloudDatalabelingV1beta1Attempt {
  core.String? attemptTime;

  /// Details of errors that occurred.
  core.List<GoogleRpcStatus>? partialFailures;

  GoogleCloudDatalabelingV1beta1Attempt({
    this.attemptTime,
    this.partialFailures,
  });

  GoogleCloudDatalabelingV1beta1Attempt.fromJson(core.Map _json)
      : this(
          attemptTime: _json.containsKey('attemptTime')
              ? _json['attemptTime'] as core.String
              : null,
          partialFailures: _json.containsKey('partialFailures')
              ? (_json['partialFailures'] as core.List)
                  .map((value) => GoogleRpcStatus.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (attemptTime != null) 'attemptTime': attemptTime!,
        if (partialFailures != null)
          'partialFailures':
              partialFailures!.map((value) => value.toJson()).toList(),
      };
}

/// The BigQuery location for input data.
///
/// If used in an EvaluationJob, this is where the service saves the prediction
/// input and output sampled from the model version.
class GoogleCloudDatalabelingV1beta1BigQuerySource {
  /// BigQuery URI to a table, up to 2,000 characters long.
  ///
  /// If you specify the URI of a table that does not exist, Data Labeling
  /// Service creates a table at the URI with the correct schema when you create
  /// your EvaluationJob. If you specify the URI of a table that already exists,
  /// it must have the \[correct
  /// schema\](/ml-engine/docs/continuous-evaluation/create-job#table-schema).
  /// Provide the table URI in the following format: "bq://{your_project_id}/
  /// {your_dataset_name}/{your_table_name}" \[Learn
  /// more\](/ml-engine/docs/continuous-evaluation/create-job#table-schema).
  ///
  /// Required.
  core.String? inputUri;

  GoogleCloudDatalabelingV1beta1BigQuerySource({
    this.inputUri,
  });

  GoogleCloudDatalabelingV1beta1BigQuerySource.fromJson(core.Map _json)
      : this(
          inputUri: _json.containsKey('inputUri')
              ? _json['inputUri'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (inputUri != null) 'inputUri': inputUri!,
      };
}

/// Options regarding evaluation between bounding boxes.
class GoogleCloudDatalabelingV1beta1BoundingBoxEvaluationOptions {
  /// Minimum \[intersection-over-union
  /// (IOU)\](/vision/automl/object-detection/docs/evaluate#intersection-over-union)
  /// required for 2 bounding boxes to be considered a match.
  ///
  /// This must be a number between 0 and 1.
  core.double? iouThreshold;

  GoogleCloudDatalabelingV1beta1BoundingBoxEvaluationOptions({
    this.iouThreshold,
  });

  GoogleCloudDatalabelingV1beta1BoundingBoxEvaluationOptions.fromJson(
      core.Map _json)
      : this(
          iouThreshold: _json.containsKey('iouThreshold')
              ? (_json['iouThreshold'] as core.num).toDouble()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (iouThreshold != null) 'iouThreshold': iouThreshold!,
      };
}

/// A bounding polygon in the image.
class GoogleCloudDatalabelingV1beta1BoundingPoly {
  /// The bounding polygon vertices.
  core.List<GoogleCloudDatalabelingV1beta1Vertex>? vertices;

  GoogleCloudDatalabelingV1beta1BoundingPoly({
    this.vertices,
  });

  GoogleCloudDatalabelingV1beta1BoundingPoly.fromJson(core.Map _json)
      : this(
          vertices: _json.containsKey('vertices')
              ? (_json['vertices'] as core.List)
                  .map((value) => GoogleCloudDatalabelingV1beta1Vertex.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (vertices != null)
          'vertices': vertices!.map((value) => value.toJson()).toList(),
      };
}

/// Config for image bounding poly (and bounding box) human labeling task.
class GoogleCloudDatalabelingV1beta1BoundingPolyConfig {
  /// Annotation spec set resource name.
  ///
  /// Required.
  core.String? annotationSpecSet;

  /// Instruction message showed on contributors UI.
  ///
  /// Optional.
  core.String? instructionMessage;

  GoogleCloudDatalabelingV1beta1BoundingPolyConfig({
    this.annotationSpecSet,
    this.instructionMessage,
  });

  GoogleCloudDatalabelingV1beta1BoundingPolyConfig.fromJson(core.Map _json)
      : this(
          annotationSpecSet: _json.containsKey('annotationSpecSet')
              ? _json['annotationSpecSet'] as core.String
              : null,
          instructionMessage: _json.containsKey('instructionMessage')
              ? _json['instructionMessage'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (annotationSpecSet != null) 'annotationSpecSet': annotationSpecSet!,
        if (instructionMessage != null)
          'instructionMessage': instructionMessage!,
      };
}

/// Metadata for classification annotations.
class GoogleCloudDatalabelingV1beta1ClassificationMetadata {
  /// Whether the classification task is multi-label or not.
  core.bool? isMultiLabel;

  GoogleCloudDatalabelingV1beta1ClassificationMetadata({
    this.isMultiLabel,
  });

  GoogleCloudDatalabelingV1beta1ClassificationMetadata.fromJson(core.Map _json)
      : this(
          isMultiLabel: _json.containsKey('isMultiLabel')
              ? _json['isMultiLabel'] as core.bool
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (isMultiLabel != null) 'isMultiLabel': isMultiLabel!,
      };
}

/// Metrics calculated for a classification model.
class GoogleCloudDatalabelingV1beta1ClassificationMetrics {
  /// Confusion matrix of predicted labels vs.
  ///
  /// ground truth labels.
  GoogleCloudDatalabelingV1beta1ConfusionMatrix? confusionMatrix;

  /// Precision-recall curve based on ground truth labels, predicted labels, and
  /// scores for the predicted labels.
  GoogleCloudDatalabelingV1beta1PrCurve? prCurve;

  GoogleCloudDatalabelingV1beta1ClassificationMetrics({
    this.confusionMatrix,
    this.prCurve,
  });

  GoogleCloudDatalabelingV1beta1ClassificationMetrics.fromJson(core.Map _json)
      : this(
          confusionMatrix: _json.containsKey('confusionMatrix')
              ? GoogleCloudDatalabelingV1beta1ConfusionMatrix.fromJson(
                  _json['confusionMatrix']
                      as core.Map<core.String, core.dynamic>)
              : null,
          prCurve: _json.containsKey('prCurve')
              ? GoogleCloudDatalabelingV1beta1PrCurve.fromJson(
                  _json['prCurve'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (confusionMatrix != null)
          'confusionMatrix': confusionMatrix!.toJson(),
        if (prCurve != null) 'prCurve': prCurve!.toJson(),
      };
}

class GoogleCloudDatalabelingV1beta1ConfidenceMetricsEntry {
  /// Threshold used for this entry.
  ///
  /// For classification tasks, this is a classification threshold: a predicted
  /// label is categorized as positive or negative (in the context of this point
  /// on the PR curve) based on whether the label's score meets this threshold.
  /// For image object detection (bounding box) tasks, this is the
  /// \[intersection-over-union
  /// (IOU)\](/vision/automl/object-detection/docs/evaluate#intersection-over-union)
  /// threshold for the context of this point on the PR curve.
  core.double? confidenceThreshold;

  /// Harmonic mean of recall and precision.
  core.double? f1Score;

  /// The harmonic mean of recall_at1 and precision_at1.
  core.double? f1ScoreAt1;

  /// The harmonic mean of recall_at5 and precision_at5.
  core.double? f1ScoreAt5;

  /// Precision value.
  core.double? precision;

  /// Precision value for entries with label that has highest score.
  core.double? precisionAt1;

  /// Precision value for entries with label that has highest 5 scores.
  core.double? precisionAt5;

  /// Recall value.
  core.double? recall;

  /// Recall value for entries with label that has highest score.
  core.double? recallAt1;

  /// Recall value for entries with label that has highest 5 scores.
  core.double? recallAt5;

  GoogleCloudDatalabelingV1beta1ConfidenceMetricsEntry({
    this.confidenceThreshold,
    this.f1Score,
    this.f1ScoreAt1,
    this.f1ScoreAt5,
    this.precision,
    this.precisionAt1,
    this.precisionAt5,
    this.recall,
    this.recallAt1,
    this.recallAt5,
  });

  GoogleCloudDatalabelingV1beta1ConfidenceMetricsEntry.fromJson(core.Map _json)
      : this(
          confidenceThreshold: _json.containsKey('confidenceThreshold')
              ? (_json['confidenceThreshold'] as core.num).toDouble()
              : null,
          f1Score: _json.containsKey('f1Score')
              ? (_json['f1Score'] as core.num).toDouble()
              : null,
          f1ScoreAt1: _json.containsKey('f1ScoreAt1')
              ? (_json['f1ScoreAt1'] as core.num).toDouble()
              : null,
          f1ScoreAt5: _json.containsKey('f1ScoreAt5')
              ? (_json['f1ScoreAt5'] as core.num).toDouble()
              : null,
          precision: _json.containsKey('precision')
              ? (_json['precision'] as core.num).toDouble()
              : null,
          precisionAt1: _json.containsKey('precisionAt1')
              ? (_json['precisionAt1'] as core.num).toDouble()
              : null,
          precisionAt5: _json.containsKey('precisionAt5')
              ? (_json['precisionAt5'] as core.num).toDouble()
              : null,
          recall: _json.containsKey('recall')
              ? (_json['recall'] as core.num).toDouble()
              : null,
          recallAt1: _json.containsKey('recallAt1')
              ? (_json['recallAt1'] as core.num).toDouble()
              : null,
          recallAt5: _json.containsKey('recallAt5')
              ? (_json['recallAt5'] as core.num).toDouble()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (confidenceThreshold != null)
          'confidenceThreshold': confidenceThreshold!,
        if (f1Score != null) 'f1Score': f1Score!,
        if (f1ScoreAt1 != null) 'f1ScoreAt1': f1ScoreAt1!,
        if (f1ScoreAt5 != null) 'f1ScoreAt5': f1ScoreAt5!,
        if (precision != null) 'precision': precision!,
        if (precisionAt1 != null) 'precisionAt1': precisionAt1!,
        if (precisionAt5 != null) 'precisionAt5': precisionAt5!,
        if (recall != null) 'recall': recall!,
        if (recallAt1 != null) 'recallAt1': recallAt1!,
        if (recallAt5 != null) 'recallAt5': recallAt5!,
      };
}

/// Confusion matrix of the model running the classification.
///
/// Only applicable when the metrics entry aggregates multiple labels. Not
/// applicable when the entry is for a single label.
class GoogleCloudDatalabelingV1beta1ConfusionMatrix {
  core.List<GoogleCloudDatalabelingV1beta1Row>? row;

  GoogleCloudDatalabelingV1beta1ConfusionMatrix({
    this.row,
  });

  GoogleCloudDatalabelingV1beta1ConfusionMatrix.fromJson(core.Map _json)
      : this(
          row: _json.containsKey('row')
              ? (_json['row'] as core.List)
                  .map((value) => GoogleCloudDatalabelingV1beta1Row.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (row != null) 'row': row!.map((value) => value.toJson()).toList(),
      };
}

class GoogleCloudDatalabelingV1beta1ConfusionMatrixEntry {
  /// The annotation spec of a predicted label.
  GoogleCloudDatalabelingV1beta1AnnotationSpec? annotationSpec;

  /// Number of items predicted to have this label.
  ///
  /// (The ground truth label for these items is the `Row.annotationSpec` of
  /// this entry's parent.)
  core.int? itemCount;

  GoogleCloudDatalabelingV1beta1ConfusionMatrixEntry({
    this.annotationSpec,
    this.itemCount,
  });

  GoogleCloudDatalabelingV1beta1ConfusionMatrixEntry.fromJson(core.Map _json)
      : this(
          annotationSpec: _json.containsKey('annotationSpec')
              ? GoogleCloudDatalabelingV1beta1AnnotationSpec.fromJson(
                  _json['annotationSpec']
                      as core.Map<core.String, core.dynamic>)
              : null,
          itemCount: _json.containsKey('itemCount')
              ? _json['itemCount'] as core.int
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (annotationSpec != null) 'annotationSpec': annotationSpec!.toJson(),
        if (itemCount != null) 'itemCount': itemCount!,
      };
}

/// Request message for CreateAnnotationSpecSet.
class GoogleCloudDatalabelingV1beta1CreateAnnotationSpecSetRequest {
  /// Annotation spec set to create.
  ///
  /// Annotation specs must be included. Only one annotation spec will be
  /// accepted for annotation specs with same display_name.
  ///
  /// Required.
  GoogleCloudDatalabelingV1beta1AnnotationSpecSet? annotationSpecSet;

  GoogleCloudDatalabelingV1beta1CreateAnnotationSpecSetRequest({
    this.annotationSpecSet,
  });

  GoogleCloudDatalabelingV1beta1CreateAnnotationSpecSetRequest.fromJson(
      core.Map _json)
      : this(
          annotationSpecSet: _json.containsKey('annotationSpecSet')
              ? GoogleCloudDatalabelingV1beta1AnnotationSpecSet.fromJson(
                  _json['annotationSpecSet']
                      as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (annotationSpecSet != null)
          'annotationSpecSet': annotationSpecSet!.toJson(),
      };
}

/// Request message for CreateDataset.
class GoogleCloudDatalabelingV1beta1CreateDatasetRequest {
  /// The dataset to be created.
  ///
  /// Required.
  GoogleCloudDatalabelingV1beta1Dataset? dataset;

  GoogleCloudDatalabelingV1beta1CreateDatasetRequest({
    this.dataset,
  });

  GoogleCloudDatalabelingV1beta1CreateDatasetRequest.fromJson(core.Map _json)
      : this(
          dataset: _json.containsKey('dataset')
              ? GoogleCloudDatalabelingV1beta1Dataset.fromJson(
                  _json['dataset'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (dataset != null) 'dataset': dataset!.toJson(),
      };
}

/// Request message for CreateEvaluationJob.
class GoogleCloudDatalabelingV1beta1CreateEvaluationJobRequest {
  /// The evaluation job to create.
  ///
  /// Required.
  GoogleCloudDatalabelingV1beta1EvaluationJob? job;

  GoogleCloudDatalabelingV1beta1CreateEvaluationJobRequest({
    this.job,
  });

  GoogleCloudDatalabelingV1beta1CreateEvaluationJobRequest.fromJson(
      core.Map _json)
      : this(
          job: _json.containsKey('job')
              ? GoogleCloudDatalabelingV1beta1EvaluationJob.fromJson(
                  _json['job'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (job != null) 'job': job!.toJson(),
      };
}

/// Metadata of a CreateInstruction operation.
class GoogleCloudDatalabelingV1beta1CreateInstructionMetadata {
  /// Timestamp when create instruction request was created.
  core.String? createTime;

  /// The name of the created Instruction.
  ///
  /// projects/{project_id}/instructions/{instruction_id}
  core.String? instruction;

  /// Partial failures encountered.
  ///
  /// E.g. single files that couldn't be read. Status details field will contain
  /// standard GCP error details.
  core.List<GoogleRpcStatus>? partialFailures;

  GoogleCloudDatalabelingV1beta1CreateInstructionMetadata({
    this.createTime,
    this.instruction,
    this.partialFailures,
  });

  GoogleCloudDatalabelingV1beta1CreateInstructionMetadata.fromJson(
      core.Map _json)
      : this(
          createTime: _json.containsKey('createTime')
              ? _json['createTime'] as core.String
              : null,
          instruction: _json.containsKey('instruction')
              ? _json['instruction'] as core.String
              : null,
          partialFailures: _json.containsKey('partialFailures')
              ? (_json['partialFailures'] as core.List)
                  .map((value) => GoogleRpcStatus.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (createTime != null) 'createTime': createTime!,
        if (instruction != null) 'instruction': instruction!,
        if (partialFailures != null)
          'partialFailures':
              partialFailures!.map((value) => value.toJson()).toList(),
      };
}

/// Request message for CreateInstruction.
class GoogleCloudDatalabelingV1beta1CreateInstructionRequest {
  /// Instruction of how to perform the labeling task.
  ///
  /// Required.
  GoogleCloudDatalabelingV1beta1Instruction? instruction;

  GoogleCloudDatalabelingV1beta1CreateInstructionRequest({
    this.instruction,
  });

  GoogleCloudDatalabelingV1beta1CreateInstructionRequest.fromJson(
      core.Map _json)
      : this(
          instruction: _json.containsKey('instruction')
              ? GoogleCloudDatalabelingV1beta1Instruction.fromJson(
                  _json['instruction'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (instruction != null) 'instruction': instruction!.toJson(),
      };
}

/// Deprecated: this instruction format is not supported any more.
///
/// Instruction from a CSV file.
class GoogleCloudDatalabelingV1beta1CsvInstruction {
  /// CSV file for the instruction.
  ///
  /// Only gcs path is allowed.
  core.String? gcsFileUri;

  GoogleCloudDatalabelingV1beta1CsvInstruction({
    this.gcsFileUri,
  });

  GoogleCloudDatalabelingV1beta1CsvInstruction.fromJson(core.Map _json)
      : this(
          gcsFileUri: _json.containsKey('gcsFileUri')
              ? _json['gcsFileUri'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (gcsFileUri != null) 'gcsFileUri': gcsFileUri!,
      };
}

/// DataItem is a piece of data, without annotation.
///
/// For example, an image.
class GoogleCloudDatalabelingV1beta1DataItem {
  /// The image payload, a container of the image bytes/uri.
  GoogleCloudDatalabelingV1beta1ImagePayload? imagePayload;

  /// Name of the data item, in format of:
  /// projects/{project_id}/datasets/{dataset_id}/dataItems/{data_item_id}
  ///
  /// Output only.
  core.String? name;

  /// The text payload, a container of text content.
  GoogleCloudDatalabelingV1beta1TextPayload? textPayload;

  /// The video payload, a container of the video uri.
  GoogleCloudDatalabelingV1beta1VideoPayload? videoPayload;

  GoogleCloudDatalabelingV1beta1DataItem({
    this.imagePayload,
    this.name,
    this.textPayload,
    this.videoPayload,
  });

  GoogleCloudDatalabelingV1beta1DataItem.fromJson(core.Map _json)
      : this(
          imagePayload: _json.containsKey('imagePayload')
              ? GoogleCloudDatalabelingV1beta1ImagePayload.fromJson(
                  _json['imagePayload'] as core.Map<core.String, core.dynamic>)
              : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          textPayload: _json.containsKey('textPayload')
              ? GoogleCloudDatalabelingV1beta1TextPayload.fromJson(
                  _json['textPayload'] as core.Map<core.String, core.dynamic>)
              : null,
          videoPayload: _json.containsKey('videoPayload')
              ? GoogleCloudDatalabelingV1beta1VideoPayload.fromJson(
                  _json['videoPayload'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (imagePayload != null) 'imagePayload': imagePayload!.toJson(),
        if (name != null) 'name': name!,
        if (textPayload != null) 'textPayload': textPayload!.toJson(),
        if (videoPayload != null) 'videoPayload': videoPayload!.toJson(),
      };
}

/// Dataset is the resource to hold your data.
///
/// You can request multiple labeling tasks for a dataset while each one will
/// generate an AnnotatedDataset.
class GoogleCloudDatalabelingV1beta1Dataset {
  /// The names of any related resources that are blocking changes to the
  /// dataset.
  ///
  /// Output only.
  core.List<core.String>? blockingResources;

  /// Time the dataset is created.
  ///
  /// Output only.
  core.String? createTime;

  /// The number of data items in the dataset.
  ///
  /// Output only.
  core.String? dataItemCount;

  /// User-provided description of the annotation specification set.
  ///
  /// The description can be up to 10000 characters long.
  ///
  /// Optional.
  core.String? description;

  /// The display name of the dataset.
  ///
  /// Maximum of 64 characters.
  ///
  /// Required.
  core.String? displayName;

  /// This is populated with the original input configs where ImportData is
  /// called.
  ///
  /// It is available only after the clients import data to this dataset.
  ///
  /// Output only.
  core.List<GoogleCloudDatalabelingV1beta1InputConfig>? inputConfigs;

  /// Last time that the Dataset is migrated to AI Platform V2.
  ///
  /// If any of the AnnotatedDataset is migrated, the last_migration_time in
  /// Dataset is also updated.
  core.String? lastMigrateTime;

  /// Dataset resource name, format is:
  /// projects/{project_id}/datasets/{dataset_id}
  ///
  /// Output only.
  core.String? name;

  GoogleCloudDatalabelingV1beta1Dataset({
    this.blockingResources,
    this.createTime,
    this.dataItemCount,
    this.description,
    this.displayName,
    this.inputConfigs,
    this.lastMigrateTime,
    this.name,
  });

  GoogleCloudDatalabelingV1beta1Dataset.fromJson(core.Map _json)
      : this(
          blockingResources: _json.containsKey('blockingResources')
              ? (_json['blockingResources'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          createTime: _json.containsKey('createTime')
              ? _json['createTime'] as core.String
              : null,
          dataItemCount: _json.containsKey('dataItemCount')
              ? _json['dataItemCount'] as core.String
              : null,
          description: _json.containsKey('description')
              ? _json['description'] as core.String
              : null,
          displayName: _json.containsKey('displayName')
              ? _json['displayName'] as core.String
              : null,
          inputConfigs: _json.containsKey('inputConfigs')
              ? (_json['inputConfigs'] as core.List)
                  .map((value) =>
                      GoogleCloudDatalabelingV1beta1InputConfig.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          lastMigrateTime: _json.containsKey('lastMigrateTime')
              ? _json['lastMigrateTime'] as core.String
              : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (blockingResources != null) 'blockingResources': blockingResources!,
        if (createTime != null) 'createTime': createTime!,
        if (dataItemCount != null) 'dataItemCount': dataItemCount!,
        if (description != null) 'description': description!,
        if (displayName != null) 'displayName': displayName!,
        if (inputConfigs != null)
          'inputConfigs': inputConfigs!.map((value) => value.toJson()).toList(),
        if (lastMigrateTime != null) 'lastMigrateTime': lastMigrateTime!,
        if (name != null) 'name': name!,
      };
}

/// Describes an evaluation between a machine learning model's predictions and
/// ground truth labels.
///
/// Created when an EvaluationJob runs successfully.
class GoogleCloudDatalabelingV1beta1Evaluation {
  /// Type of task that the model version being evaluated performs, as defined
  /// in the evaluationJobConfig.inputConfig.annotationType field of the
  /// evaluation job that created this evaluation.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "ANNOTATION_TYPE_UNSPECIFIED"
  /// - "IMAGE_CLASSIFICATION_ANNOTATION" : Classification annotations in an
  /// image. Allowed for continuous evaluation.
  /// - "IMAGE_BOUNDING_BOX_ANNOTATION" : Bounding box annotations in an image.
  /// A form of image object detection. Allowed for continuous evaluation.
  /// - "IMAGE_ORIENTED_BOUNDING_BOX_ANNOTATION" : Oriented bounding box. The
  /// box does not have to be parallel to horizontal line.
  /// - "IMAGE_BOUNDING_POLY_ANNOTATION" : Bounding poly annotations in an
  /// image.
  /// - "IMAGE_POLYLINE_ANNOTATION" : Polyline annotations in an image.
  /// - "IMAGE_SEGMENTATION_ANNOTATION" : Segmentation annotations in an image.
  /// - "VIDEO_SHOTS_CLASSIFICATION_ANNOTATION" : Classification annotations in
  /// video shots.
  /// - "VIDEO_OBJECT_TRACKING_ANNOTATION" : Video object tracking annotation.
  /// - "VIDEO_OBJECT_DETECTION_ANNOTATION" : Video object detection annotation.
  /// - "VIDEO_EVENT_ANNOTATION" : Video event annotation.
  /// - "TEXT_CLASSIFICATION_ANNOTATION" : Classification for text. Allowed for
  /// continuous evaluation.
  /// - "TEXT_ENTITY_EXTRACTION_ANNOTATION" : Entity extraction for text.
  /// - "GENERAL_CLASSIFICATION_ANNOTATION" : General classification. Allowed
  /// for continuous evaluation.
  core.String? annotationType;

  /// Options used in the evaluation job that created this evaluation.
  ///
  /// Output only.
  GoogleCloudDatalabelingV1beta1EvaluationConfig? config;

  /// Timestamp for when this evaluation was created.
  ///
  /// Output only.
  core.String? createTime;

  /// The number of items in the ground truth dataset that were used for this
  /// evaluation.
  ///
  /// Only populated when the evaulation is for certain AnnotationTypes.
  ///
  /// Output only.
  core.String? evaluatedItemCount;

  /// Timestamp for when the evaluation job that created this evaluation ran.
  ///
  /// Output only.
  core.String? evaluationJobRunTime;

  /// Metrics comparing predictions to ground truth labels.
  ///
  /// Output only.
  GoogleCloudDatalabelingV1beta1EvaluationMetrics? evaluationMetrics;

  /// Resource name of an evaluation.
  ///
  /// The name has the following format:
  /// "projects/{project_id}/datasets/{dataset_id}/evaluations/ {evaluation_id}'
  ///
  /// Output only.
  core.String? name;

  GoogleCloudDatalabelingV1beta1Evaluation({
    this.annotationType,
    this.config,
    this.createTime,
    this.evaluatedItemCount,
    this.evaluationJobRunTime,
    this.evaluationMetrics,
    this.name,
  });

  GoogleCloudDatalabelingV1beta1Evaluation.fromJson(core.Map _json)
      : this(
          annotationType: _json.containsKey('annotationType')
              ? _json['annotationType'] as core.String
              : null,
          config: _json.containsKey('config')
              ? GoogleCloudDatalabelingV1beta1EvaluationConfig.fromJson(
                  _json['config'] as core.Map<core.String, core.dynamic>)
              : null,
          createTime: _json.containsKey('createTime')
              ? _json['createTime'] as core.String
              : null,
          evaluatedItemCount: _json.containsKey('evaluatedItemCount')
              ? _json['evaluatedItemCount'] as core.String
              : null,
          evaluationJobRunTime: _json.containsKey('evaluationJobRunTime')
              ? _json['evaluationJobRunTime'] as core.String
              : null,
          evaluationMetrics: _json.containsKey('evaluationMetrics')
              ? GoogleCloudDatalabelingV1beta1EvaluationMetrics.fromJson(
                  _json['evaluationMetrics']
                      as core.Map<core.String, core.dynamic>)
              : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (annotationType != null) 'annotationType': annotationType!,
        if (config != null) 'config': config!.toJson(),
        if (createTime != null) 'createTime': createTime!,
        if (evaluatedItemCount != null)
          'evaluatedItemCount': evaluatedItemCount!,
        if (evaluationJobRunTime != null)
          'evaluationJobRunTime': evaluationJobRunTime!,
        if (evaluationMetrics != null)
          'evaluationMetrics': evaluationMetrics!.toJson(),
        if (name != null) 'name': name!,
      };
}

/// Configuration details used for calculating evaluation metrics and creating
/// an Evaluation.
class GoogleCloudDatalabelingV1beta1EvaluationConfig {
  /// Only specify this field if the related model performs image object
  /// detection (`IMAGE_BOUNDING_BOX_ANNOTATION`).
  ///
  /// Describes how to evaluate bounding boxes.
  GoogleCloudDatalabelingV1beta1BoundingBoxEvaluationOptions?
      boundingBoxEvaluationOptions;

  GoogleCloudDatalabelingV1beta1EvaluationConfig({
    this.boundingBoxEvaluationOptions,
  });

  GoogleCloudDatalabelingV1beta1EvaluationConfig.fromJson(core.Map _json)
      : this(
          boundingBoxEvaluationOptions:
              _json.containsKey('boundingBoxEvaluationOptions')
                  ? GoogleCloudDatalabelingV1beta1BoundingBoxEvaluationOptions
                      .fromJson(_json['boundingBoxEvaluationOptions']
                          as core.Map<core.String, core.dynamic>)
                  : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (boundingBoxEvaluationOptions != null)
          'boundingBoxEvaluationOptions':
              boundingBoxEvaluationOptions!.toJson(),
      };
}

/// Defines an evaluation job that runs periodically to generate Evaluations.
///
/// \[Creating an evaluation
/// job\](/ml-engine/docs/continuous-evaluation/create-job) is the starting
/// point for using continuous evaluation.
class GoogleCloudDatalabelingV1beta1EvaluationJob {
  /// Name of the AnnotationSpecSet describing all the labels that your machine
  /// learning model outputs.
  ///
  /// You must create this resource before you create an evaluation job and
  /// provide its name in the following format:
  /// "projects/{project_id}/annotationSpecSets/{annotation_spec_set_id}"
  ///
  /// Required.
  core.String? annotationSpecSet;

  /// Every time the evaluation job runs and an error occurs, the failed attempt
  /// is appended to this array.
  ///
  /// Output only.
  core.List<GoogleCloudDatalabelingV1beta1Attempt>? attempts;

  /// Timestamp of when this evaluation job was created.
  ///
  /// Output only.
  core.String? createTime;

  /// Description of the job.
  ///
  /// The description can be up to 25,000 characters long.
  ///
  /// Required.
  core.String? description;

  /// Configuration details for the evaluation job.
  ///
  /// Required.
  GoogleCloudDatalabelingV1beta1EvaluationJobConfig? evaluationJobConfig;

  /// Whether you want Data Labeling Service to provide ground truth labels for
  /// prediction input.
  ///
  /// If you want the service to assign human labelers to annotate your data,
  /// set this to `true`. If you want to provide your own ground truth labels in
  /// the evaluation job's BigQuery table, set this to `false`.
  ///
  /// Required.
  core.bool? labelMissingGroundTruth;

  /// The \[AI Platform Prediction model
  /// version\](/ml-engine/docs/prediction-overview) to be evaluated.
  ///
  /// Prediction input and output is sampled from this model version. When
  /// creating an evaluation job, specify the model version in the following
  /// format:
  /// "projects/{project_id}/models/{model_name}/versions/{version_name}" There
  /// can only be one evaluation job per model version.
  ///
  /// Required.
  core.String? modelVersion;

  /// After you create a job, Data Labeling Service assigns a name to the job
  /// with the following format: "projects/{project_id}/evaluationJobs/
  /// {evaluation_job_id}"
  ///
  /// Output only.
  core.String? name;

  /// Describes the interval at which the job runs.
  ///
  /// This interval must be at least 1 day, and it is rounded to the nearest
  /// day. For example, if you specify a 50-hour interval, the job runs every 2
  /// days. You can provide the schedule in \[crontab
  /// format\](/scheduler/docs/configuring/cron-job-schedules) or in an
  /// \[English-like
  /// format\](/appengine/docs/standard/python/config/cronref#schedule_format).
  /// Regardless of what you specify, the job will run at 10:00 AM UTC. Only the
  /// interval from this schedule is used, not the specific time of day.
  ///
  /// Required.
  core.String? schedule;

  /// Describes the current state of the job.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED"
  /// - "SCHEDULED" : The job is scheduled to run at the configured interval.
  /// You can pause or delete the job. When the job is in this state, it samples
  /// prediction input and output from your model version into your BigQuery
  /// table as predictions occur.
  /// - "RUNNING" : The job is currently running. When the job runs, Data
  /// Labeling Service does several things: 1. If you have configured your job
  /// to use Data Labeling Service for ground truth labeling, the service
  /// creates a Dataset and a labeling task for all data sampled since the last
  /// time the job ran. Human labelers provide ground truth labels for your
  /// data. Human labeling may take hours, or even days, depending on how much
  /// data has been sampled. The job remains in the `RUNNING` state during this
  /// time, and it can even be running multiple times in parallel if it gets
  /// triggered again (for example 24 hours later) before the earlier run has
  /// completed. When human labelers have finished labeling the data, the next
  /// step occurs. If you have configured your job to provide your own ground
  /// truth labels, Data Labeling Service still creates a Dataset for newly
  /// sampled data, but it expects that you have already added ground truth
  /// labels to the BigQuery table by this time. The next step occurs
  /// immediately. 2. Data Labeling Service creates an Evaluation by comparing
  /// your model version's predictions with the ground truth labels. If the job
  /// remains in this state for a long time, it continues to sample prediction
  /// data into your BigQuery table and will run again at the next interval,
  /// even if it causes the job to run multiple times in parallel.
  /// - "PAUSED" : The job is not sampling prediction input and output into your
  /// BigQuery table and it will not run according to its schedule. You can
  /// resume the job.
  /// - "STOPPED" : The job has this state right before it is deleted.
  core.String? state;

  GoogleCloudDatalabelingV1beta1EvaluationJob({
    this.annotationSpecSet,
    this.attempts,
    this.createTime,
    this.description,
    this.evaluationJobConfig,
    this.labelMissingGroundTruth,
    this.modelVersion,
    this.name,
    this.schedule,
    this.state,
  });

  GoogleCloudDatalabelingV1beta1EvaluationJob.fromJson(core.Map _json)
      : this(
          annotationSpecSet: _json.containsKey('annotationSpecSet')
              ? _json['annotationSpecSet'] as core.String
              : null,
          attempts: _json.containsKey('attempts')
              ? (_json['attempts'] as core.List)
                  .map((value) =>
                      GoogleCloudDatalabelingV1beta1Attempt.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          createTime: _json.containsKey('createTime')
              ? _json['createTime'] as core.String
              : null,
          description: _json.containsKey('description')
              ? _json['description'] as core.String
              : null,
          evaluationJobConfig: _json.containsKey('evaluationJobConfig')
              ? GoogleCloudDatalabelingV1beta1EvaluationJobConfig.fromJson(
                  _json['evaluationJobConfig']
                      as core.Map<core.String, core.dynamic>)
              : null,
          labelMissingGroundTruth: _json.containsKey('labelMissingGroundTruth')
              ? _json['labelMissingGroundTruth'] as core.bool
              : null,
          modelVersion: _json.containsKey('modelVersion')
              ? _json['modelVersion'] as core.String
              : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          schedule: _json.containsKey('schedule')
              ? _json['schedule'] as core.String
              : null,
          state:
              _json.containsKey('state') ? _json['state'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (annotationSpecSet != null) 'annotationSpecSet': annotationSpecSet!,
        if (attempts != null)
          'attempts': attempts!.map((value) => value.toJson()).toList(),
        if (createTime != null) 'createTime': createTime!,
        if (description != null) 'description': description!,
        if (evaluationJobConfig != null)
          'evaluationJobConfig': evaluationJobConfig!.toJson(),
        if (labelMissingGroundTruth != null)
          'labelMissingGroundTruth': labelMissingGroundTruth!,
        if (modelVersion != null) 'modelVersion': modelVersion!,
        if (name != null) 'name': name!,
        if (schedule != null) 'schedule': schedule!,
        if (state != null) 'state': state!,
      };
}

/// Provides details for how an evaluation job sends email alerts based on the
/// results of a run.
class GoogleCloudDatalabelingV1beta1EvaluationJobAlertConfig {
  /// An email address to send alerts to.
  ///
  /// Required.
  core.String? email;

  /// A number between 0 and 1 that describes a minimum mean average precision
  /// threshold.
  ///
  /// When the evaluation job runs, if it calculates that your model version's
  /// predictions from the recent interval have meanAveragePrecision below this
  /// threshold, then it sends an alert to your specified email.
  ///
  /// Required.
  core.double? minAcceptableMeanAveragePrecision;

  GoogleCloudDatalabelingV1beta1EvaluationJobAlertConfig({
    this.email,
    this.minAcceptableMeanAveragePrecision,
  });

  GoogleCloudDatalabelingV1beta1EvaluationJobAlertConfig.fromJson(
      core.Map _json)
      : this(
          email:
              _json.containsKey('email') ? _json['email'] as core.String : null,
          minAcceptableMeanAveragePrecision:
              _json.containsKey('minAcceptableMeanAveragePrecision')
                  ? (_json['minAcceptableMeanAveragePrecision'] as core.num)
                      .toDouble()
                  : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (email != null) 'email': email!,
        if (minAcceptableMeanAveragePrecision != null)
          'minAcceptableMeanAveragePrecision':
              minAcceptableMeanAveragePrecision!,
      };
}

/// Configures specific details of how a continuous evaluation job works.
///
/// Provide this configuration when you create an EvaluationJob.
class GoogleCloudDatalabelingV1beta1EvaluationJobConfig {
  /// Prediction keys that tell Data Labeling Service where to find the data for
  /// evaluation in your BigQuery table.
  ///
  /// When the service samples prediction input and output from your model
  /// version and saves it to BigQuery, the data gets stored as JSON strings in
  /// the BigQuery table. These keys tell Data Labeling Service how to parse the
  /// JSON. You can provide the following entries in this field: *
  /// `data_json_key`: the data key for prediction input. You must provide
  /// either this key or `reference_json_key`. * `reference_json_key`: the data
  /// reference key for prediction input. You must provide either this key or
  /// `data_json_key`. * `label_json_key`: the label key for prediction output.
  /// Required. * `label_score_json_key`: the score key for prediction output.
  /// Required. * `bounding_box_json_key`: the bounding box key for prediction
  /// output. Required if your model version perform image object detection.
  /// Learn \[how to configure prediction
  /// keys\](/ml-engine/docs/continuous-evaluation/create-job#prediction-keys).
  ///
  /// Required.
  core.Map<core.String, core.String>? bigqueryImportKeys;

  /// Specify this field if your model version performs image object detection
  /// (bounding box detection).
  ///
  /// `annotationSpecSet` in this configuration must match
  /// EvaluationJob.annotationSpecSet.
  GoogleCloudDatalabelingV1beta1BoundingPolyConfig? boundingPolyConfig;

  /// Details for calculating evaluation metrics and creating Evaulations.
  ///
  /// If your model version performs image object detection, you must specify
  /// the `boundingBoxEvaluationOptions` field within this configuration.
  /// Otherwise, provide an empty object for this configuration.
  ///
  /// Required.
  GoogleCloudDatalabelingV1beta1EvaluationConfig? evaluationConfig;

  /// Configuration details for evaluation job alerts.
  ///
  /// Specify this field if you want to receive email alerts if the evaluation
  /// job finds that your predictions have low mean average precision during a
  /// run.
  ///
  /// Optional.
  GoogleCloudDatalabelingV1beta1EvaluationJobAlertConfig?
      evaluationJobAlertConfig;

  /// The maximum number of predictions to sample and save to BigQuery during
  /// each evaluation interval.
  ///
  /// This limit overrides `example_sample_percentage`: even if the service has
  /// not sampled enough predictions to fulfill `example_sample_perecentage`
  /// during an interval, it stops sampling predictions when it meets this
  /// limit.
  ///
  /// Required.
  core.int? exampleCount;

  /// Fraction of predictions to sample and save to BigQuery during each
  /// evaluation interval.
  ///
  /// For example, 0.1 means 10% of predictions served by your model version get
  /// saved to BigQuery.
  ///
  /// Required.
  core.double? exampleSamplePercentage;

  /// Details for human annotation of your data.
  ///
  /// If you set labelMissingGroundTruth to `true` for this evaluation job, then
  /// you must specify this field. If you plan to provide your own ground truth
  /// labels, then omit this field. Note that you must create an Instruction
  /// resource before you can specify this field. Provide the name of the
  /// instruction resource in the `instruction` field within this configuration.
  ///
  /// Optional.
  GoogleCloudDatalabelingV1beta1HumanAnnotationConfig? humanAnnotationConfig;

  /// Specify this field if your model version performs image classification or
  /// general classification.
  ///
  /// `annotationSpecSet` in this configuration must match
  /// EvaluationJob.annotationSpecSet. `allowMultiLabel` in this configuration
  /// must match `classificationMetadata.isMultiLabel` in input_config.
  GoogleCloudDatalabelingV1beta1ImageClassificationConfig?
      imageClassificationConfig;

  /// Rquired.
  ///
  /// Details for the sampled prediction input. Within this configuration, there
  /// are requirements for several fields: * `dataType` must be one of `IMAGE`,
  /// `TEXT`, or `GENERAL_DATA`. * `annotationType` must be one of
  /// `IMAGE_CLASSIFICATION_ANNOTATION`, `TEXT_CLASSIFICATION_ANNOTATION`,
  /// `GENERAL_CLASSIFICATION_ANNOTATION`, or `IMAGE_BOUNDING_BOX_ANNOTATION`
  /// (image object detection). * If your machine learning model performs
  /// classification, you must specify `classificationMetadata.isMultiLabel`. *
  /// You must specify `bigquerySource` (not `gcsSource`).
  GoogleCloudDatalabelingV1beta1InputConfig? inputConfig;

  /// Specify this field if your model version performs text classification.
  ///
  /// `annotationSpecSet` in this configuration must match
  /// EvaluationJob.annotationSpecSet. `allowMultiLabel` in this configuration
  /// must match `classificationMetadata.isMultiLabel` in input_config.
  GoogleCloudDatalabelingV1beta1TextClassificationConfig?
      textClassificationConfig;

  GoogleCloudDatalabelingV1beta1EvaluationJobConfig({
    this.bigqueryImportKeys,
    this.boundingPolyConfig,
    this.evaluationConfig,
    this.evaluationJobAlertConfig,
    this.exampleCount,
    this.exampleSamplePercentage,
    this.humanAnnotationConfig,
    this.imageClassificationConfig,
    this.inputConfig,
    this.textClassificationConfig,
  });

  GoogleCloudDatalabelingV1beta1EvaluationJobConfig.fromJson(core.Map _json)
      : this(
          bigqueryImportKeys: _json.containsKey('bigqueryImportKeys')
              ? (_json['bigqueryImportKeys']
                      as core.Map<core.String, core.dynamic>)
                  .map(
                  (key, item) => core.MapEntry(
                    key,
                    item as core.String,
                  ),
                )
              : null,
          boundingPolyConfig: _json.containsKey('boundingPolyConfig')
              ? GoogleCloudDatalabelingV1beta1BoundingPolyConfig.fromJson(
                  _json['boundingPolyConfig']
                      as core.Map<core.String, core.dynamic>)
              : null,
          evaluationConfig: _json.containsKey('evaluationConfig')
              ? GoogleCloudDatalabelingV1beta1EvaluationConfig.fromJson(
                  _json['evaluationConfig']
                      as core.Map<core.String, core.dynamic>)
              : null,
          evaluationJobAlertConfig: _json
                  .containsKey('evaluationJobAlertConfig')
              ? GoogleCloudDatalabelingV1beta1EvaluationJobAlertConfig.fromJson(
                  _json['evaluationJobAlertConfig']
                      as core.Map<core.String, core.dynamic>)
              : null,
          exampleCount: _json.containsKey('exampleCount')
              ? _json['exampleCount'] as core.int
              : null,
          exampleSamplePercentage: _json.containsKey('exampleSamplePercentage')
              ? (_json['exampleSamplePercentage'] as core.num).toDouble()
              : null,
          humanAnnotationConfig: _json.containsKey('humanAnnotationConfig')
              ? GoogleCloudDatalabelingV1beta1HumanAnnotationConfig.fromJson(
                  _json['humanAnnotationConfig']
                      as core.Map<core.String, core.dynamic>)
              : null,
          imageClassificationConfig:
              _json.containsKey('imageClassificationConfig')
                  ? GoogleCloudDatalabelingV1beta1ImageClassificationConfig
                      .fromJson(_json['imageClassificationConfig']
                          as core.Map<core.String, core.dynamic>)
                  : null,
          inputConfig: _json.containsKey('inputConfig')
              ? GoogleCloudDatalabelingV1beta1InputConfig.fromJson(
                  _json['inputConfig'] as core.Map<core.String, core.dynamic>)
              : null,
          textClassificationConfig: _json
                  .containsKey('textClassificationConfig')
              ? GoogleCloudDatalabelingV1beta1TextClassificationConfig.fromJson(
                  _json['textClassificationConfig']
                      as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (bigqueryImportKeys != null)
          'bigqueryImportKeys': bigqueryImportKeys!,
        if (boundingPolyConfig != null)
          'boundingPolyConfig': boundingPolyConfig!.toJson(),
        if (evaluationConfig != null)
          'evaluationConfig': evaluationConfig!.toJson(),
        if (evaluationJobAlertConfig != null)
          'evaluationJobAlertConfig': evaluationJobAlertConfig!.toJson(),
        if (exampleCount != null) 'exampleCount': exampleCount!,
        if (exampleSamplePercentage != null)
          'exampleSamplePercentage': exampleSamplePercentage!,
        if (humanAnnotationConfig != null)
          'humanAnnotationConfig': humanAnnotationConfig!.toJson(),
        if (imageClassificationConfig != null)
          'imageClassificationConfig': imageClassificationConfig!.toJson(),
        if (inputConfig != null) 'inputConfig': inputConfig!.toJson(),
        if (textClassificationConfig != null)
          'textClassificationConfig': textClassificationConfig!.toJson(),
      };
}

class GoogleCloudDatalabelingV1beta1EvaluationMetrics {
  GoogleCloudDatalabelingV1beta1ClassificationMetrics? classificationMetrics;
  GoogleCloudDatalabelingV1beta1ObjectDetectionMetrics? objectDetectionMetrics;

  GoogleCloudDatalabelingV1beta1EvaluationMetrics({
    this.classificationMetrics,
    this.objectDetectionMetrics,
  });

  GoogleCloudDatalabelingV1beta1EvaluationMetrics.fromJson(core.Map _json)
      : this(
          classificationMetrics: _json.containsKey('classificationMetrics')
              ? GoogleCloudDatalabelingV1beta1ClassificationMetrics.fromJson(
                  _json['classificationMetrics']
                      as core.Map<core.String, core.dynamic>)
              : null,
          objectDetectionMetrics: _json.containsKey('objectDetectionMetrics')
              ? GoogleCloudDatalabelingV1beta1ObjectDetectionMetrics.fromJson(
                  _json['objectDetectionMetrics']
                      as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (classificationMetrics != null)
          'classificationMetrics': classificationMetrics!.toJson(),
        if (objectDetectionMetrics != null)
          'objectDetectionMetrics': objectDetectionMetrics!.toJson(),
      };
}

/// Config for video event human labeling task.
class GoogleCloudDatalabelingV1beta1EventConfig {
  /// The list of annotation spec set resource name.
  ///
  /// Similar to video classification, we support selecting event from multiple
  /// AnnotationSpecSet at the same time.
  ///
  /// Required.
  core.List<core.String>? annotationSpecSets;

  /// Videos will be cut to smaller clips to make it easier for labelers to work
  /// on.
  ///
  /// Users can configure is field in seconds, if not set, default value is 60s.
  core.int? clipLength;

  /// The overlap length between different video clips.
  ///
  /// Users can configure is field in seconds, if not set, default value is 1s.
  core.int? overlapLength;

  GoogleCloudDatalabelingV1beta1EventConfig({
    this.annotationSpecSets,
    this.clipLength,
    this.overlapLength,
  });

  GoogleCloudDatalabelingV1beta1EventConfig.fromJson(core.Map _json)
      : this(
          annotationSpecSets: _json.containsKey('annotationSpecSets')
              ? (_json['annotationSpecSets'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          clipLength: _json.containsKey('clipLength')
              ? _json['clipLength'] as core.int
              : null,
          overlapLength: _json.containsKey('overlapLength')
              ? _json['overlapLength'] as core.int
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (annotationSpecSets != null)
          'annotationSpecSets': annotationSpecSets!,
        if (clipLength != null) 'clipLength': clipLength!,
        if (overlapLength != null) 'overlapLength': overlapLength!,
      };
}

/// An Example is a piece of data and its annotation.
///
/// For example, an image with label "house".
class GoogleCloudDatalabelingV1beta1Example {
  /// Annotations for the piece of data in Example.
  ///
  /// One piece of data can have multiple annotations.
  ///
  /// Output only.
  core.List<GoogleCloudDatalabelingV1beta1Annotation>? annotations;

  /// The image payload, a container of the image bytes/uri.
  GoogleCloudDatalabelingV1beta1ImagePayload? imagePayload;

  /// Name of the example, in format of:
  /// projects/{project_id}/datasets/{dataset_id}/annotatedDatasets/
  /// {annotated_dataset_id}/examples/{example_id}
  ///
  /// Output only.
  core.String? name;

  /// The text payload, a container of the text content.
  GoogleCloudDatalabelingV1beta1TextPayload? textPayload;

  /// The video payload, a container of the video uri.
  GoogleCloudDatalabelingV1beta1VideoPayload? videoPayload;

  GoogleCloudDatalabelingV1beta1Example({
    this.annotations,
    this.imagePayload,
    this.name,
    this.textPayload,
    this.videoPayload,
  });

  GoogleCloudDatalabelingV1beta1Example.fromJson(core.Map _json)
      : this(
          annotations: _json.containsKey('annotations')
              ? (_json['annotations'] as core.List)
                  .map((value) =>
                      GoogleCloudDatalabelingV1beta1Annotation.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          imagePayload: _json.containsKey('imagePayload')
              ? GoogleCloudDatalabelingV1beta1ImagePayload.fromJson(
                  _json['imagePayload'] as core.Map<core.String, core.dynamic>)
              : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          textPayload: _json.containsKey('textPayload')
              ? GoogleCloudDatalabelingV1beta1TextPayload.fromJson(
                  _json['textPayload'] as core.Map<core.String, core.dynamic>)
              : null,
          videoPayload: _json.containsKey('videoPayload')
              ? GoogleCloudDatalabelingV1beta1VideoPayload.fromJson(
                  _json['videoPayload'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (annotations != null)
          'annotations': annotations!.map((value) => value.toJson()).toList(),
        if (imagePayload != null) 'imagePayload': imagePayload!.toJson(),
        if (name != null) 'name': name!,
        if (textPayload != null) 'textPayload': textPayload!.toJson(),
        if (videoPayload != null) 'videoPayload': videoPayload!.toJson(),
      };
}

/// Example comparisons comparing ground truth output and predictions for a
/// specific input.
class GoogleCloudDatalabelingV1beta1ExampleComparison {
  /// The ground truth output for the input.
  GoogleCloudDatalabelingV1beta1Example? groundTruthExample;

  /// Predictions by the model for the input.
  core.List<GoogleCloudDatalabelingV1beta1Example>? modelCreatedExamples;

  GoogleCloudDatalabelingV1beta1ExampleComparison({
    this.groundTruthExample,
    this.modelCreatedExamples,
  });

  GoogleCloudDatalabelingV1beta1ExampleComparison.fromJson(core.Map _json)
      : this(
          groundTruthExample: _json.containsKey('groundTruthExample')
              ? GoogleCloudDatalabelingV1beta1Example.fromJson(
                  _json['groundTruthExample']
                      as core.Map<core.String, core.dynamic>)
              : null,
          modelCreatedExamples: _json.containsKey('modelCreatedExamples')
              ? (_json['modelCreatedExamples'] as core.List)
                  .map((value) =>
                      GoogleCloudDatalabelingV1beta1Example.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (groundTruthExample != null)
          'groundTruthExample': groundTruthExample!.toJson(),
        if (modelCreatedExamples != null)
          'modelCreatedExamples':
              modelCreatedExamples!.map((value) => value.toJson()).toList(),
      };
}

/// Metadata of an ExportData operation.
class GoogleCloudDatalabelingV1beta1ExportDataOperationMetadata {
  /// The name of annotated dataset in format "projects / * /datasets / *
  /// /annotatedDatasets / * ".
  ///
  /// Output only.
  core.String? annotatedDataset;

  /// Timestamp when export dataset request was created.
  ///
  /// Output only.
  core.String? createTime;

  /// The name of dataset to be exported.
  ///
  /// "projects / * /datasets / * "
  ///
  /// Output only.
  core.String? dataset;

  /// Partial failures encountered.
  ///
  /// E.g. single files that couldn't be read. Status details field will contain
  /// standard GCP error details.
  ///
  /// Output only.
  core.List<GoogleRpcStatus>? partialFailures;

  GoogleCloudDatalabelingV1beta1ExportDataOperationMetadata({
    this.annotatedDataset,
    this.createTime,
    this.dataset,
    this.partialFailures,
  });

  GoogleCloudDatalabelingV1beta1ExportDataOperationMetadata.fromJson(
      core.Map _json)
      : this(
          annotatedDataset: _json.containsKey('annotatedDataset')
              ? _json['annotatedDataset'] as core.String
              : null,
          createTime: _json.containsKey('createTime')
              ? _json['createTime'] as core.String
              : null,
          dataset: _json.containsKey('dataset')
              ? _json['dataset'] as core.String
              : null,
          partialFailures: _json.containsKey('partialFailures')
              ? (_json['partialFailures'] as core.List)
                  .map((value) => GoogleRpcStatus.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (annotatedDataset != null) 'annotatedDataset': annotatedDataset!,
        if (createTime != null) 'createTime': createTime!,
        if (dataset != null) 'dataset': dataset!,
        if (partialFailures != null)
          'partialFailures':
              partialFailures!.map((value) => value.toJson()).toList(),
      };
}

/// Response used for ExportDataset longrunning operation.
class GoogleCloudDatalabelingV1beta1ExportDataOperationResponse {
  /// The name of annotated dataset in format "projects / * /datasets / *
  /// /annotatedDatasets / * ".
  ///
  /// Output only.
  core.String? annotatedDataset;

  /// Ouptut only.
  ///
  /// The name of dataset. "projects / * /datasets / * "
  core.String? dataset;

  /// Number of examples exported successfully.
  ///
  /// Output only.
  core.int? exportCount;

  /// Statistic infos of labels in the exported dataset.
  ///
  /// Output only.
  GoogleCloudDatalabelingV1beta1LabelStats? labelStats;

  /// output_config in the ExportData request.
  ///
  /// Output only.
  GoogleCloudDatalabelingV1beta1OutputConfig? outputConfig;

  /// Total number of examples requested to export
  ///
  /// Output only.
  core.int? totalCount;

  GoogleCloudDatalabelingV1beta1ExportDataOperationResponse({
    this.annotatedDataset,
    this.dataset,
    this.exportCount,
    this.labelStats,
    this.outputConfig,
    this.totalCount,
  });

  GoogleCloudDatalabelingV1beta1ExportDataOperationResponse.fromJson(
      core.Map _json)
      : this(
          annotatedDataset: _json.containsKey('annotatedDataset')
              ? _json['annotatedDataset'] as core.String
              : null,
          dataset: _json.containsKey('dataset')
              ? _json['dataset'] as core.String
              : null,
          exportCount: _json.containsKey('exportCount')
              ? _json['exportCount'] as core.int
              : null,
          labelStats: _json.containsKey('labelStats')
              ? GoogleCloudDatalabelingV1beta1LabelStats.fromJson(
                  _json['labelStats'] as core.Map<core.String, core.dynamic>)
              : null,
          outputConfig: _json.containsKey('outputConfig')
              ? GoogleCloudDatalabelingV1beta1OutputConfig.fromJson(
                  _json['outputConfig'] as core.Map<core.String, core.dynamic>)
              : null,
          totalCount: _json.containsKey('totalCount')
              ? _json['totalCount'] as core.int
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (annotatedDataset != null) 'annotatedDataset': annotatedDataset!,
        if (dataset != null) 'dataset': dataset!,
        if (exportCount != null) 'exportCount': exportCount!,
        if (labelStats != null) 'labelStats': labelStats!.toJson(),
        if (outputConfig != null) 'outputConfig': outputConfig!.toJson(),
        if (totalCount != null) 'totalCount': totalCount!,
      };
}

/// Request message for ExportData API.
class GoogleCloudDatalabelingV1beta1ExportDataRequest {
  /// Annotated dataset resource name.
  ///
  /// DataItem in Dataset and their annotations in specified annotated dataset
  /// will be exported. It's in format of
  /// projects/{project_id}/datasets/{dataset_id}/annotatedDatasets/
  /// {annotated_dataset_id}
  ///
  /// Required.
  core.String? annotatedDataset;

  /// Filter is not supported at this moment.
  ///
  /// Optional.
  core.String? filter;

  /// Specify the output destination.
  ///
  /// Required.
  GoogleCloudDatalabelingV1beta1OutputConfig? outputConfig;

  /// Email of the user who started the export task and should be notified by
  /// email.
  ///
  /// If empty no notification will be sent.
  core.String? userEmailAddress;

  GoogleCloudDatalabelingV1beta1ExportDataRequest({
    this.annotatedDataset,
    this.filter,
    this.outputConfig,
    this.userEmailAddress,
  });

  GoogleCloudDatalabelingV1beta1ExportDataRequest.fromJson(core.Map _json)
      : this(
          annotatedDataset: _json.containsKey('annotatedDataset')
              ? _json['annotatedDataset'] as core.String
              : null,
          filter: _json.containsKey('filter')
              ? _json['filter'] as core.String
              : null,
          outputConfig: _json.containsKey('outputConfig')
              ? GoogleCloudDatalabelingV1beta1OutputConfig.fromJson(
                  _json['outputConfig'] as core.Map<core.String, core.dynamic>)
              : null,
          userEmailAddress: _json.containsKey('userEmailAddress')
              ? _json['userEmailAddress'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (annotatedDataset != null) 'annotatedDataset': annotatedDataset!,
        if (filter != null) 'filter': filter!,
        if (outputConfig != null) 'outputConfig': outputConfig!.toJson(),
        if (userEmailAddress != null) 'userEmailAddress': userEmailAddress!,
      };
}

/// A feedback message inside a feedback thread.
class GoogleCloudDatalabelingV1beta1FeedbackMessage {
  /// String content of the feedback.
  ///
  /// Maximum of 10000 characters.
  core.String? body;

  /// Create time.
  core.String? createTime;

  /// The image storing this feedback if the feedback is an image representing
  /// operator's comments.
  core.String? image;
  core.List<core.int> get imageAsBytes => convert.base64.decode(image!);

  set imageAsBytes(core.List<core.int> _bytes) {
    image =
        convert.base64.encode(_bytes).replaceAll('/', '_').replaceAll('+', '-');
  }

  /// Name of the feedback message in a feedback thread.
  ///
  /// Format:
  /// 'project/{project_id}/datasets/{dataset_id}/annotatedDatasets/{annotated_dataset_id}/feedbackThreads/{feedback_thread_id}/feedbackMessage/{feedback_message_id}'
  core.String? name;
  GoogleCloudDatalabelingV1beta1OperatorFeedbackMetadata?
      operatorFeedbackMetadata;
  GoogleCloudDatalabelingV1beta1RequesterFeedbackMetadata?
      requesterFeedbackMetadata;

  GoogleCloudDatalabelingV1beta1FeedbackMessage({
    this.body,
    this.createTime,
    this.image,
    this.name,
    this.operatorFeedbackMetadata,
    this.requesterFeedbackMetadata,
  });

  GoogleCloudDatalabelingV1beta1FeedbackMessage.fromJson(core.Map _json)
      : this(
          body: _json.containsKey('body') ? _json['body'] as core.String : null,
          createTime: _json.containsKey('createTime')
              ? _json['createTime'] as core.String
              : null,
          image:
              _json.containsKey('image') ? _json['image'] as core.String : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          operatorFeedbackMetadata: _json
                  .containsKey('operatorFeedbackMetadata')
              ? GoogleCloudDatalabelingV1beta1OperatorFeedbackMetadata.fromJson(
                  _json['operatorFeedbackMetadata']
                      as core.Map<core.String, core.dynamic>)
              : null,
          requesterFeedbackMetadata:
              _json.containsKey('requesterFeedbackMetadata')
                  ? GoogleCloudDatalabelingV1beta1RequesterFeedbackMetadata
                      .fromJson(_json['requesterFeedbackMetadata']
                          as core.Map<core.String, core.dynamic>)
                  : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (body != null) 'body': body!,
        if (createTime != null) 'createTime': createTime!,
        if (image != null) 'image': image!,
        if (name != null) 'name': name!,
        if (operatorFeedbackMetadata != null)
          'operatorFeedbackMetadata': operatorFeedbackMetadata!.toJson(),
        if (requesterFeedbackMetadata != null)
          'requesterFeedbackMetadata': requesterFeedbackMetadata!.toJson(),
      };
}

/// A feedback thread of a certain labeling task on a certain annotated dataset.
class GoogleCloudDatalabelingV1beta1FeedbackThread {
  /// Metadata regarding the feedback thread.
  GoogleCloudDatalabelingV1beta1FeedbackThreadMetadata? feedbackThreadMetadata;

  /// Name of the feedback thread.
  ///
  /// Format:
  /// 'project/{project_id}/datasets/{dataset_id}/annotatedDatasets/{annotated_dataset_id}/feedbackThreads/{feedback_thread_id}'
  core.String? name;

  GoogleCloudDatalabelingV1beta1FeedbackThread({
    this.feedbackThreadMetadata,
    this.name,
  });

  GoogleCloudDatalabelingV1beta1FeedbackThread.fromJson(core.Map _json)
      : this(
          feedbackThreadMetadata: _json.containsKey('feedbackThreadMetadata')
              ? GoogleCloudDatalabelingV1beta1FeedbackThreadMetadata.fromJson(
                  _json['feedbackThreadMetadata']
                      as core.Map<core.String, core.dynamic>)
              : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (feedbackThreadMetadata != null)
          'feedbackThreadMetadata': feedbackThreadMetadata!.toJson(),
        if (name != null) 'name': name!,
      };
}

class GoogleCloudDatalabelingV1beta1FeedbackThreadMetadata {
  /// When the thread is created
  core.String? createTime;

  /// When the thread is last updated.
  core.String? lastUpdateTime;

  ///
  /// Possible string values are:
  /// - "FEEDBACK_THREAD_STATUS_UNSPECIFIED"
  /// - "NEW" : Feedback thread is created with no reply;
  /// - "REPLIED" : Feedback thread is replied at least once;
  core.String? status;

  /// An image thumbnail of this thread.
  core.String? thumbnail;
  core.List<core.int> get thumbnailAsBytes => convert.base64.decode(thumbnail!);

  set thumbnailAsBytes(core.List<core.int> _bytes) {
    thumbnail =
        convert.base64.encode(_bytes).replaceAll('/', '_').replaceAll('+', '-');
  }

  GoogleCloudDatalabelingV1beta1FeedbackThreadMetadata({
    this.createTime,
    this.lastUpdateTime,
    this.status,
    this.thumbnail,
  });

  GoogleCloudDatalabelingV1beta1FeedbackThreadMetadata.fromJson(core.Map _json)
      : this(
          createTime: _json.containsKey('createTime')
              ? _json['createTime'] as core.String
              : null,
          lastUpdateTime: _json.containsKey('lastUpdateTime')
              ? _json['lastUpdateTime'] as core.String
              : null,
          status: _json.containsKey('status')
              ? _json['status'] as core.String
              : null,
          thumbnail: _json.containsKey('thumbnail')
              ? _json['thumbnail'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (createTime != null) 'createTime': createTime!,
        if (lastUpdateTime != null) 'lastUpdateTime': lastUpdateTime!,
        if (status != null) 'status': status!,
        if (thumbnail != null) 'thumbnail': thumbnail!,
      };
}

/// Export destination of the data.Only gcs path is allowed in output_uri.
class GoogleCloudDatalabelingV1beta1GcsDestination {
  /// The format of the gcs destination.
  ///
  /// Only "text/csv" and "application/json" are supported.
  ///
  /// Required.
  core.String? mimeType;

  /// The output uri of destination file.
  ///
  /// Required.
  core.String? outputUri;

  GoogleCloudDatalabelingV1beta1GcsDestination({
    this.mimeType,
    this.outputUri,
  });

  GoogleCloudDatalabelingV1beta1GcsDestination.fromJson(core.Map _json)
      : this(
          mimeType: _json.containsKey('mimeType')
              ? _json['mimeType'] as core.String
              : null,
          outputUri: _json.containsKey('outputUri')
              ? _json['outputUri'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (mimeType != null) 'mimeType': mimeType!,
        if (outputUri != null) 'outputUri': outputUri!,
      };
}

/// Export folder destination of the data.
class GoogleCloudDatalabelingV1beta1GcsFolderDestination {
  /// Cloud Storage directory to export data to.
  ///
  /// Required.
  core.String? outputFolderUri;

  GoogleCloudDatalabelingV1beta1GcsFolderDestination({
    this.outputFolderUri,
  });

  GoogleCloudDatalabelingV1beta1GcsFolderDestination.fromJson(core.Map _json)
      : this(
          outputFolderUri: _json.containsKey('outputFolderUri')
              ? _json['outputFolderUri'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (outputFolderUri != null) 'outputFolderUri': outputFolderUri!,
      };
}

/// Source of the Cloud Storage file to be imported.
class GoogleCloudDatalabelingV1beta1GcsSource {
  /// The input URI of source file.
  ///
  /// This must be a Cloud Storage path (`gs://...`).
  ///
  /// Required.
  core.String? inputUri;

  /// The format of the source file.
  ///
  /// Only "text/csv" is supported.
  ///
  /// Required.
  core.String? mimeType;

  GoogleCloudDatalabelingV1beta1GcsSource({
    this.inputUri,
    this.mimeType,
  });

  GoogleCloudDatalabelingV1beta1GcsSource.fromJson(core.Map _json)
      : this(
          inputUri: _json.containsKey('inputUri')
              ? _json['inputUri'] as core.String
              : null,
          mimeType: _json.containsKey('mimeType')
              ? _json['mimeType'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (inputUri != null) 'inputUri': inputUri!,
        if (mimeType != null) 'mimeType': mimeType!,
      };
}

/// Configuration for how human labeling task should be done.
class GoogleCloudDatalabelingV1beta1HumanAnnotationConfig {
  /// A human-readable description for AnnotatedDataset.
  ///
  /// The description can be up to 10000 characters long.
  ///
  /// Optional.
  core.String? annotatedDatasetDescription;

  /// A human-readable name for AnnotatedDataset defined by users.
  ///
  /// Maximum of 64 characters .
  ///
  /// Required.
  core.String? annotatedDatasetDisplayName;

  /// If you want your own labeling contributors to manage and work on this
  /// labeling request, you can set these contributors here.
  ///
  /// We will give them access to the question types in crowdcompute. Note that
  /// these emails must be registered in crowdcompute worker UI:
  /// https://crowd-compute.appspot.com/
  ///
  /// Optional.
  core.List<core.String>? contributorEmails;

  /// Instruction resource name.
  ///
  /// Required.
  core.String? instruction;

  /// A human-readable label used to logically group labeling tasks.
  ///
  /// This string must match the regular expression `[a-zA-Z\\d_-]{0,128}`.
  ///
  /// Optional.
  core.String? labelGroup;

  /// The Language of this question, as a
  /// \[BCP-47\](https://www.rfc-editor.org/rfc/bcp/bcp47.txt).
  ///
  /// Default value is en-US. Only need to set this when task is language
  /// related. For example, French text classification.
  ///
  /// Optional.
  core.String? languageCode;

  /// Maximum duration for contributors to answer a question.
  ///
  /// Maximum is 3600 seconds. Default is 3600 seconds.
  ///
  /// Optional.
  core.String? questionDuration;

  /// Replication of questions.
  ///
  /// Each question will be sent to up to this number of contributors to label.
  /// Aggregated answers will be returned. Default is set to 1. For image
  /// related labeling, valid values are 1, 3, 5.
  ///
  /// Optional.
  core.int? replicaCount;

  /// Email of the user who started the labeling task and should be notified by
  /// email.
  ///
  /// If empty no notification will be sent.
  core.String? userEmailAddress;

  GoogleCloudDatalabelingV1beta1HumanAnnotationConfig({
    this.annotatedDatasetDescription,
    this.annotatedDatasetDisplayName,
    this.contributorEmails,
    this.instruction,
    this.labelGroup,
    this.languageCode,
    this.questionDuration,
    this.replicaCount,
    this.userEmailAddress,
  });

  GoogleCloudDatalabelingV1beta1HumanAnnotationConfig.fromJson(core.Map _json)
      : this(
          annotatedDatasetDescription:
              _json.containsKey('annotatedDatasetDescription')
                  ? _json['annotatedDatasetDescription'] as core.String
                  : null,
          annotatedDatasetDisplayName:
              _json.containsKey('annotatedDatasetDisplayName')
                  ? _json['annotatedDatasetDisplayName'] as core.String
                  : null,
          contributorEmails: _json.containsKey('contributorEmails')
              ? (_json['contributorEmails'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          instruction: _json.containsKey('instruction')
              ? _json['instruction'] as core.String
              : null,
          labelGroup: _json.containsKey('labelGroup')
              ? _json['labelGroup'] as core.String
              : null,
          languageCode: _json.containsKey('languageCode')
              ? _json['languageCode'] as core.String
              : null,
          questionDuration: _json.containsKey('questionDuration')
              ? _json['questionDuration'] as core.String
              : null,
          replicaCount: _json.containsKey('replicaCount')
              ? _json['replicaCount'] as core.int
              : null,
          userEmailAddress: _json.containsKey('userEmailAddress')
              ? _json['userEmailAddress'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (annotatedDatasetDescription != null)
          'annotatedDatasetDescription': annotatedDatasetDescription!,
        if (annotatedDatasetDisplayName != null)
          'annotatedDatasetDisplayName': annotatedDatasetDisplayName!,
        if (contributorEmails != null) 'contributorEmails': contributorEmails!,
        if (instruction != null) 'instruction': instruction!,
        if (labelGroup != null) 'labelGroup': labelGroup!,
        if (languageCode != null) 'languageCode': languageCode!,
        if (questionDuration != null) 'questionDuration': questionDuration!,
        if (replicaCount != null) 'replicaCount': replicaCount!,
        if (userEmailAddress != null) 'userEmailAddress': userEmailAddress!,
      };
}

/// Image bounding poly annotation.
///
/// It represents a polygon including bounding box in the image.
class GoogleCloudDatalabelingV1beta1ImageBoundingPolyAnnotation {
  /// Label of object in this bounding polygon.
  GoogleCloudDatalabelingV1beta1AnnotationSpec? annotationSpec;
  GoogleCloudDatalabelingV1beta1BoundingPoly? boundingPoly;
  GoogleCloudDatalabelingV1beta1NormalizedBoundingPoly? normalizedBoundingPoly;

  GoogleCloudDatalabelingV1beta1ImageBoundingPolyAnnotation({
    this.annotationSpec,
    this.boundingPoly,
    this.normalizedBoundingPoly,
  });

  GoogleCloudDatalabelingV1beta1ImageBoundingPolyAnnotation.fromJson(
      core.Map _json)
      : this(
          annotationSpec: _json.containsKey('annotationSpec')
              ? GoogleCloudDatalabelingV1beta1AnnotationSpec.fromJson(
                  _json['annotationSpec']
                      as core.Map<core.String, core.dynamic>)
              : null,
          boundingPoly: _json.containsKey('boundingPoly')
              ? GoogleCloudDatalabelingV1beta1BoundingPoly.fromJson(
                  _json['boundingPoly'] as core.Map<core.String, core.dynamic>)
              : null,
          normalizedBoundingPoly: _json.containsKey('normalizedBoundingPoly')
              ? GoogleCloudDatalabelingV1beta1NormalizedBoundingPoly.fromJson(
                  _json['normalizedBoundingPoly']
                      as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (annotationSpec != null) 'annotationSpec': annotationSpec!.toJson(),
        if (boundingPoly != null) 'boundingPoly': boundingPoly!.toJson(),
        if (normalizedBoundingPoly != null)
          'normalizedBoundingPoly': normalizedBoundingPoly!.toJson(),
      };
}

/// Image classification annotation definition.
class GoogleCloudDatalabelingV1beta1ImageClassificationAnnotation {
  /// Label of image.
  GoogleCloudDatalabelingV1beta1AnnotationSpec? annotationSpec;

  GoogleCloudDatalabelingV1beta1ImageClassificationAnnotation({
    this.annotationSpec,
  });

  GoogleCloudDatalabelingV1beta1ImageClassificationAnnotation.fromJson(
      core.Map _json)
      : this(
          annotationSpec: _json.containsKey('annotationSpec')
              ? GoogleCloudDatalabelingV1beta1AnnotationSpec.fromJson(
                  _json['annotationSpec']
                      as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (annotationSpec != null) 'annotationSpec': annotationSpec!.toJson(),
      };
}

/// Config for image classification human labeling task.
class GoogleCloudDatalabelingV1beta1ImageClassificationConfig {
  /// If allow_multi_label is true, contributors are able to choose multiple
  /// labels for one image.
  ///
  /// Optional.
  core.bool? allowMultiLabel;

  /// Annotation spec set resource name.
  ///
  /// Required.
  core.String? annotationSpecSet;

  /// The type of how to aggregate answers.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "STRING_AGGREGATION_TYPE_UNSPECIFIED"
  /// - "MAJORITY_VOTE" : Majority vote to aggregate answers.
  /// - "UNANIMOUS_VOTE" : Unanimous answers will be adopted.
  /// - "NO_AGGREGATION" : Preserve all answers by crowd compute.
  core.String? answerAggregationType;

  GoogleCloudDatalabelingV1beta1ImageClassificationConfig({
    this.allowMultiLabel,
    this.annotationSpecSet,
    this.answerAggregationType,
  });

  GoogleCloudDatalabelingV1beta1ImageClassificationConfig.fromJson(
      core.Map _json)
      : this(
          allowMultiLabel: _json.containsKey('allowMultiLabel')
              ? _json['allowMultiLabel'] as core.bool
              : null,
          annotationSpecSet: _json.containsKey('annotationSpecSet')
              ? _json['annotationSpecSet'] as core.String
              : null,
          answerAggregationType: _json.containsKey('answerAggregationType')
              ? _json['answerAggregationType'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (allowMultiLabel != null) 'allowMultiLabel': allowMultiLabel!,
        if (annotationSpecSet != null) 'annotationSpecSet': annotationSpecSet!,
        if (answerAggregationType != null)
          'answerAggregationType': answerAggregationType!,
      };
}

/// Container of information about an image.
class GoogleCloudDatalabelingV1beta1ImagePayload {
  /// A byte string of a thumbnail image.
  core.String? imageThumbnail;
  core.List<core.int> get imageThumbnailAsBytes =>
      convert.base64.decode(imageThumbnail!);

  set imageThumbnailAsBytes(core.List<core.int> _bytes) {
    imageThumbnail =
        convert.base64.encode(_bytes).replaceAll('/', '_').replaceAll('+', '-');
  }

  /// Image uri from the user bucket.
  core.String? imageUri;

  /// Image format.
  core.String? mimeType;

  /// Signed uri of the image file in the service bucket.
  core.String? signedUri;

  GoogleCloudDatalabelingV1beta1ImagePayload({
    this.imageThumbnail,
    this.imageUri,
    this.mimeType,
    this.signedUri,
  });

  GoogleCloudDatalabelingV1beta1ImagePayload.fromJson(core.Map _json)
      : this(
          imageThumbnail: _json.containsKey('imageThumbnail')
              ? _json['imageThumbnail'] as core.String
              : null,
          imageUri: _json.containsKey('imageUri')
              ? _json['imageUri'] as core.String
              : null,
          mimeType: _json.containsKey('mimeType')
              ? _json['mimeType'] as core.String
              : null,
          signedUri: _json.containsKey('signedUri')
              ? _json['signedUri'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (imageThumbnail != null) 'imageThumbnail': imageThumbnail!,
        if (imageUri != null) 'imageUri': imageUri!,
        if (mimeType != null) 'mimeType': mimeType!,
        if (signedUri != null) 'signedUri': signedUri!,
      };
}

/// A polyline for the image annotation.
class GoogleCloudDatalabelingV1beta1ImagePolylineAnnotation {
  /// Label of this polyline.
  GoogleCloudDatalabelingV1beta1AnnotationSpec? annotationSpec;
  GoogleCloudDatalabelingV1beta1NormalizedPolyline? normalizedPolyline;
  GoogleCloudDatalabelingV1beta1Polyline? polyline;

  GoogleCloudDatalabelingV1beta1ImagePolylineAnnotation({
    this.annotationSpec,
    this.normalizedPolyline,
    this.polyline,
  });

  GoogleCloudDatalabelingV1beta1ImagePolylineAnnotation.fromJson(core.Map _json)
      : this(
          annotationSpec: _json.containsKey('annotationSpec')
              ? GoogleCloudDatalabelingV1beta1AnnotationSpec.fromJson(
                  _json['annotationSpec']
                      as core.Map<core.String, core.dynamic>)
              : null,
          normalizedPolyline: _json.containsKey('normalizedPolyline')
              ? GoogleCloudDatalabelingV1beta1NormalizedPolyline.fromJson(
                  _json['normalizedPolyline']
                      as core.Map<core.String, core.dynamic>)
              : null,
          polyline: _json.containsKey('polyline')
              ? GoogleCloudDatalabelingV1beta1Polyline.fromJson(
                  _json['polyline'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (annotationSpec != null) 'annotationSpec': annotationSpec!.toJson(),
        if (normalizedPolyline != null)
          'normalizedPolyline': normalizedPolyline!.toJson(),
        if (polyline != null) 'polyline': polyline!.toJson(),
      };
}

/// Image segmentation annotation.
class GoogleCloudDatalabelingV1beta1ImageSegmentationAnnotation {
  /// The mapping between rgb color and annotation spec.
  ///
  /// The key is the rgb color represented in format of rgb(0, 0, 0). The value
  /// is the AnnotationSpec.
  core.Map<core.String, GoogleCloudDatalabelingV1beta1AnnotationSpec>?
      annotationColors;

  /// A byte string of a full image's color map.
  core.String? imageBytes;
  core.List<core.int> get imageBytesAsBytes =>
      convert.base64.decode(imageBytes!);

  set imageBytesAsBytes(core.List<core.int> _bytes) {
    imageBytes =
        convert.base64.encode(_bytes).replaceAll('/', '_').replaceAll('+', '-');
  }

  /// Image format.
  core.String? mimeType;

  GoogleCloudDatalabelingV1beta1ImageSegmentationAnnotation({
    this.annotationColors,
    this.imageBytes,
    this.mimeType,
  });

  GoogleCloudDatalabelingV1beta1ImageSegmentationAnnotation.fromJson(
      core.Map _json)
      : this(
          annotationColors: _json.containsKey('annotationColors')
              ? (_json['annotationColors']
                      as core.Map<core.String, core.dynamic>)
                  .map(
                  (key, item) => core.MapEntry(
                    key,
                    GoogleCloudDatalabelingV1beta1AnnotationSpec.fromJson(
                        item as core.Map<core.String, core.dynamic>),
                  ),
                )
              : null,
          imageBytes: _json.containsKey('imageBytes')
              ? _json['imageBytes'] as core.String
              : null,
          mimeType: _json.containsKey('mimeType')
              ? _json['mimeType'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (annotationColors != null)
          'annotationColors': annotationColors!
              .map((key, item) => core.MapEntry(key, item.toJson())),
        if (imageBytes != null) 'imageBytes': imageBytes!,
        if (mimeType != null) 'mimeType': mimeType!,
      };
}

/// Metadata of an ImportData operation.
class GoogleCloudDatalabelingV1beta1ImportDataOperationMetadata {
  /// Timestamp when import dataset request was created.
  ///
  /// Output only.
  core.String? createTime;

  /// The name of imported dataset.
  ///
  /// "projects / * /datasets / * "
  ///
  /// Output only.
  core.String? dataset;

  /// Partial failures encountered.
  ///
  /// E.g. single files that couldn't be read. Status details field will contain
  /// standard GCP error details.
  ///
  /// Output only.
  core.List<GoogleRpcStatus>? partialFailures;

  GoogleCloudDatalabelingV1beta1ImportDataOperationMetadata({
    this.createTime,
    this.dataset,
    this.partialFailures,
  });

  GoogleCloudDatalabelingV1beta1ImportDataOperationMetadata.fromJson(
      core.Map _json)
      : this(
          createTime: _json.containsKey('createTime')
              ? _json['createTime'] as core.String
              : null,
          dataset: _json.containsKey('dataset')
              ? _json['dataset'] as core.String
              : null,
          partialFailures: _json.containsKey('partialFailures')
              ? (_json['partialFailures'] as core.List)
                  .map((value) => GoogleRpcStatus.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (createTime != null) 'createTime': createTime!,
        if (dataset != null) 'dataset': dataset!,
        if (partialFailures != null)
          'partialFailures':
              partialFailures!.map((value) => value.toJson()).toList(),
      };
}

/// Response used for ImportData longrunning operation.
class GoogleCloudDatalabelingV1beta1ImportDataOperationResponse {
  /// Ouptut only.
  ///
  /// The name of imported dataset.
  core.String? dataset;

  /// Number of examples imported successfully.
  ///
  /// Output only.
  core.int? importCount;

  /// Total number of examples requested to import
  ///
  /// Output only.
  core.int? totalCount;

  GoogleCloudDatalabelingV1beta1ImportDataOperationResponse({
    this.dataset,
    this.importCount,
    this.totalCount,
  });

  GoogleCloudDatalabelingV1beta1ImportDataOperationResponse.fromJson(
      core.Map _json)
      : this(
          dataset: _json.containsKey('dataset')
              ? _json['dataset'] as core.String
              : null,
          importCount: _json.containsKey('importCount')
              ? _json['importCount'] as core.int
              : null,
          totalCount: _json.containsKey('totalCount')
              ? _json['totalCount'] as core.int
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (dataset != null) 'dataset': dataset!,
        if (importCount != null) 'importCount': importCount!,
        if (totalCount != null) 'totalCount': totalCount!,
      };
}

/// Request message for ImportData API.
class GoogleCloudDatalabelingV1beta1ImportDataRequest {
  /// Specify the input source of the data.
  ///
  /// Required.
  GoogleCloudDatalabelingV1beta1InputConfig? inputConfig;

  /// Email of the user who started the import task and should be notified by
  /// email.
  ///
  /// If empty no notification will be sent.
  core.String? userEmailAddress;

  GoogleCloudDatalabelingV1beta1ImportDataRequest({
    this.inputConfig,
    this.userEmailAddress,
  });

  GoogleCloudDatalabelingV1beta1ImportDataRequest.fromJson(core.Map _json)
      : this(
          inputConfig: _json.containsKey('inputConfig')
              ? GoogleCloudDatalabelingV1beta1InputConfig.fromJson(
                  _json['inputConfig'] as core.Map<core.String, core.dynamic>)
              : null,
          userEmailAddress: _json.containsKey('userEmailAddress')
              ? _json['userEmailAddress'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (inputConfig != null) 'inputConfig': inputConfig!.toJson(),
        if (userEmailAddress != null) 'userEmailAddress': userEmailAddress!,
      };
}

/// The configuration of input data, including data type, location, etc.
class GoogleCloudDatalabelingV1beta1InputConfig {
  /// The type of annotation to be performed on this data.
  ///
  /// You must specify this field if you are using this InputConfig in an
  /// EvaluationJob.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "ANNOTATION_TYPE_UNSPECIFIED"
  /// - "IMAGE_CLASSIFICATION_ANNOTATION" : Classification annotations in an
  /// image. Allowed for continuous evaluation.
  /// - "IMAGE_BOUNDING_BOX_ANNOTATION" : Bounding box annotations in an image.
  /// A form of image object detection. Allowed for continuous evaluation.
  /// - "IMAGE_ORIENTED_BOUNDING_BOX_ANNOTATION" : Oriented bounding box. The
  /// box does not have to be parallel to horizontal line.
  /// - "IMAGE_BOUNDING_POLY_ANNOTATION" : Bounding poly annotations in an
  /// image.
  /// - "IMAGE_POLYLINE_ANNOTATION" : Polyline annotations in an image.
  /// - "IMAGE_SEGMENTATION_ANNOTATION" : Segmentation annotations in an image.
  /// - "VIDEO_SHOTS_CLASSIFICATION_ANNOTATION" : Classification annotations in
  /// video shots.
  /// - "VIDEO_OBJECT_TRACKING_ANNOTATION" : Video object tracking annotation.
  /// - "VIDEO_OBJECT_DETECTION_ANNOTATION" : Video object detection annotation.
  /// - "VIDEO_EVENT_ANNOTATION" : Video event annotation.
  /// - "TEXT_CLASSIFICATION_ANNOTATION" : Classification for text. Allowed for
  /// continuous evaluation.
  /// - "TEXT_ENTITY_EXTRACTION_ANNOTATION" : Entity extraction for text.
  /// - "GENERAL_CLASSIFICATION_ANNOTATION" : General classification. Allowed
  /// for continuous evaluation.
  core.String? annotationType;

  /// Source located in BigQuery.
  ///
  /// You must specify this field if you are using this InputConfig in an
  /// EvaluationJob.
  GoogleCloudDatalabelingV1beta1BigQuerySource? bigquerySource;

  /// Metadata about annotations for the input.
  ///
  /// You must specify this field if you are using this InputConfig in an
  /// EvaluationJob for a model version that performs classification.
  ///
  /// Optional.
  GoogleCloudDatalabelingV1beta1ClassificationMetadata? classificationMetadata;

  /// Data type must be specifed when user tries to import data.
  ///
  /// Required.
  /// Possible string values are:
  /// - "DATA_TYPE_UNSPECIFIED" : Data type is unspecified.
  /// - "IMAGE" : Allowed for continuous evaluation.
  /// - "VIDEO" : Video data type.
  /// - "TEXT" : Allowed for continuous evaluation.
  /// - "GENERAL_DATA" : Allowed for continuous evaluation.
  core.String? dataType;

  /// Source located in Cloud Storage.
  GoogleCloudDatalabelingV1beta1GcsSource? gcsSource;

  /// Required for text import, as language code must be specified.
  GoogleCloudDatalabelingV1beta1TextMetadata? textMetadata;

  GoogleCloudDatalabelingV1beta1InputConfig({
    this.annotationType,
    this.bigquerySource,
    this.classificationMetadata,
    this.dataType,
    this.gcsSource,
    this.textMetadata,
  });

  GoogleCloudDatalabelingV1beta1InputConfig.fromJson(core.Map _json)
      : this(
          annotationType: _json.containsKey('annotationType')
              ? _json['annotationType'] as core.String
              : null,
          bigquerySource: _json.containsKey('bigquerySource')
              ? GoogleCloudDatalabelingV1beta1BigQuerySource.fromJson(
                  _json['bigquerySource']
                      as core.Map<core.String, core.dynamic>)
              : null,
          classificationMetadata: _json.containsKey('classificationMetadata')
              ? GoogleCloudDatalabelingV1beta1ClassificationMetadata.fromJson(
                  _json['classificationMetadata']
                      as core.Map<core.String, core.dynamic>)
              : null,
          dataType: _json.containsKey('dataType')
              ? _json['dataType'] as core.String
              : null,
          gcsSource: _json.containsKey('gcsSource')
              ? GoogleCloudDatalabelingV1beta1GcsSource.fromJson(
                  _json['gcsSource'] as core.Map<core.String, core.dynamic>)
              : null,
          textMetadata: _json.containsKey('textMetadata')
              ? GoogleCloudDatalabelingV1beta1TextMetadata.fromJson(
                  _json['textMetadata'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (annotationType != null) 'annotationType': annotationType!,
        if (bigquerySource != null) 'bigquerySource': bigquerySource!.toJson(),
        if (classificationMetadata != null)
          'classificationMetadata': classificationMetadata!.toJson(),
        if (dataType != null) 'dataType': dataType!,
        if (gcsSource != null) 'gcsSource': gcsSource!.toJson(),
        if (textMetadata != null) 'textMetadata': textMetadata!.toJson(),
      };
}

/// Instruction of how to perform the labeling task for human operators.
///
/// Currently only PDF instruction is supported.
class GoogleCloudDatalabelingV1beta1Instruction {
  /// The names of any related resources that are blocking changes to the
  /// instruction.
  ///
  /// Output only.
  core.List<core.String>? blockingResources;

  /// Creation time of instruction.
  ///
  /// Output only.
  core.String? createTime;

  /// Deprecated: this instruction format is not supported any more.
  ///
  /// Instruction from a CSV file, such as for classification task. The CSV file
  /// should have exact two columns, in the following format: * The first column
  /// is labeled data, such as an image reference, text. * The second column is
  /// comma separated labels associated with data.
  GoogleCloudDatalabelingV1beta1CsvInstruction? csvInstruction;

  /// The data type of this instruction.
  ///
  /// Required.
  /// Possible string values are:
  /// - "DATA_TYPE_UNSPECIFIED" : Data type is unspecified.
  /// - "IMAGE" : Allowed for continuous evaluation.
  /// - "VIDEO" : Video data type.
  /// - "TEXT" : Allowed for continuous evaluation.
  /// - "GENERAL_DATA" : Allowed for continuous evaluation.
  core.String? dataType;

  /// User-provided description of the instruction.
  ///
  /// The description can be up to 10000 characters long.
  ///
  /// Optional.
  core.String? description;

  /// The display name of the instruction.
  ///
  /// Maximum of 64 characters.
  ///
  /// Required.
  core.String? displayName;

  /// Instruction resource name, format:
  /// projects/{project_id}/instructions/{instruction_id}
  ///
  /// Output only.
  core.String? name;

  /// Instruction from a PDF document.
  ///
  /// The PDF should be in a Cloud Storage bucket.
  GoogleCloudDatalabelingV1beta1PdfInstruction? pdfInstruction;

  /// Last update time of instruction.
  ///
  /// Output only.
  core.String? updateTime;

  GoogleCloudDatalabelingV1beta1Instruction({
    this.blockingResources,
    this.createTime,
    this.csvInstruction,
    this.dataType,
    this.description,
    this.displayName,
    this.name,
    this.pdfInstruction,
    this.updateTime,
  });

  GoogleCloudDatalabelingV1beta1Instruction.fromJson(core.Map _json)
      : this(
          blockingResources: _json.containsKey('blockingResources')
              ? (_json['blockingResources'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          createTime: _json.containsKey('createTime')
              ? _json['createTime'] as core.String
              : null,
          csvInstruction: _json.containsKey('csvInstruction')
              ? GoogleCloudDatalabelingV1beta1CsvInstruction.fromJson(
                  _json['csvInstruction']
                      as core.Map<core.String, core.dynamic>)
              : null,
          dataType: _json.containsKey('dataType')
              ? _json['dataType'] as core.String
              : null,
          description: _json.containsKey('description')
              ? _json['description'] as core.String
              : null,
          displayName: _json.containsKey('displayName')
              ? _json['displayName'] as core.String
              : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          pdfInstruction: _json.containsKey('pdfInstruction')
              ? GoogleCloudDatalabelingV1beta1PdfInstruction.fromJson(
                  _json['pdfInstruction']
                      as core.Map<core.String, core.dynamic>)
              : null,
          updateTime: _json.containsKey('updateTime')
              ? _json['updateTime'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (blockingResources != null) 'blockingResources': blockingResources!,
        if (createTime != null) 'createTime': createTime!,
        if (csvInstruction != null) 'csvInstruction': csvInstruction!.toJson(),
        if (dataType != null) 'dataType': dataType!,
        if (description != null) 'description': description!,
        if (displayName != null) 'displayName': displayName!,
        if (name != null) 'name': name!,
        if (pdfInstruction != null) 'pdfInstruction': pdfInstruction!.toJson(),
        if (updateTime != null) 'updateTime': updateTime!,
      };
}

/// Details of a LabelImageBoundingBox operation metadata.
class GoogleCloudDatalabelingV1beta1LabelImageBoundingBoxOperationMetadata {
  /// Basic human annotation config used in labeling request.
  GoogleCloudDatalabelingV1beta1HumanAnnotationConfig? basicConfig;

  GoogleCloudDatalabelingV1beta1LabelImageBoundingBoxOperationMetadata({
    this.basicConfig,
  });

  GoogleCloudDatalabelingV1beta1LabelImageBoundingBoxOperationMetadata.fromJson(
      core.Map _json)
      : this(
          basicConfig: _json.containsKey('basicConfig')
              ? GoogleCloudDatalabelingV1beta1HumanAnnotationConfig.fromJson(
                  _json['basicConfig'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (basicConfig != null) 'basicConfig': basicConfig!.toJson(),
      };
}

/// Details of LabelImageBoundingPoly operation metadata.
class GoogleCloudDatalabelingV1beta1LabelImageBoundingPolyOperationMetadata {
  /// Basic human annotation config used in labeling request.
  GoogleCloudDatalabelingV1beta1HumanAnnotationConfig? basicConfig;

  GoogleCloudDatalabelingV1beta1LabelImageBoundingPolyOperationMetadata({
    this.basicConfig,
  });

  GoogleCloudDatalabelingV1beta1LabelImageBoundingPolyOperationMetadata.fromJson(
      core.Map _json)
      : this(
          basicConfig: _json.containsKey('basicConfig')
              ? GoogleCloudDatalabelingV1beta1HumanAnnotationConfig.fromJson(
                  _json['basicConfig'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (basicConfig != null) 'basicConfig': basicConfig!.toJson(),
      };
}

/// Metadata of a LabelImageClassification operation.
class GoogleCloudDatalabelingV1beta1LabelImageClassificationOperationMetadata {
  /// Basic human annotation config used in labeling request.
  GoogleCloudDatalabelingV1beta1HumanAnnotationConfig? basicConfig;

  GoogleCloudDatalabelingV1beta1LabelImageClassificationOperationMetadata({
    this.basicConfig,
  });

  GoogleCloudDatalabelingV1beta1LabelImageClassificationOperationMetadata.fromJson(
      core.Map _json)
      : this(
          basicConfig: _json.containsKey('basicConfig')
              ? GoogleCloudDatalabelingV1beta1HumanAnnotationConfig.fromJson(
                  _json['basicConfig'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (basicConfig != null) 'basicConfig': basicConfig!.toJson(),
      };
}

/// Details of a LabelImageOrientedBoundingBox operation metadata.
class GoogleCloudDatalabelingV1beta1LabelImageOrientedBoundingBoxOperationMetadata {
  /// Basic human annotation config.
  GoogleCloudDatalabelingV1beta1HumanAnnotationConfig? basicConfig;

  GoogleCloudDatalabelingV1beta1LabelImageOrientedBoundingBoxOperationMetadata({
    this.basicConfig,
  });

  GoogleCloudDatalabelingV1beta1LabelImageOrientedBoundingBoxOperationMetadata.fromJson(
      core.Map _json)
      : this(
          basicConfig: _json.containsKey('basicConfig')
              ? GoogleCloudDatalabelingV1beta1HumanAnnotationConfig.fromJson(
                  _json['basicConfig'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (basicConfig != null) 'basicConfig': basicConfig!.toJson(),
      };
}

/// Details of LabelImagePolyline operation metadata.
class GoogleCloudDatalabelingV1beta1LabelImagePolylineOperationMetadata {
  /// Basic human annotation config used in labeling request.
  GoogleCloudDatalabelingV1beta1HumanAnnotationConfig? basicConfig;

  GoogleCloudDatalabelingV1beta1LabelImagePolylineOperationMetadata({
    this.basicConfig,
  });

  GoogleCloudDatalabelingV1beta1LabelImagePolylineOperationMetadata.fromJson(
      core.Map _json)
      : this(
          basicConfig: _json.containsKey('basicConfig')
              ? GoogleCloudDatalabelingV1beta1HumanAnnotationConfig.fromJson(
                  _json['basicConfig'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (basicConfig != null) 'basicConfig': basicConfig!.toJson(),
      };
}

/// Request message for starting an image labeling task.
class GoogleCloudDatalabelingV1beta1LabelImageRequest {
  /// Basic human annotation config.
  ///
  /// Required.
  GoogleCloudDatalabelingV1beta1HumanAnnotationConfig? basicConfig;

  /// Configuration for bounding box and bounding poly task.
  ///
  /// One of image_classification_config, bounding_poly_config, polyline_config
  /// and segmentation_config are required.
  GoogleCloudDatalabelingV1beta1BoundingPolyConfig? boundingPolyConfig;

  /// The type of image labeling task.
  ///
  /// Required.
  /// Possible string values are:
  /// - "FEATURE_UNSPECIFIED"
  /// - "CLASSIFICATION" : Label whole image with one or more of labels.
  /// - "BOUNDING_BOX" : Label image with bounding boxes for labels.
  /// - "ORIENTED_BOUNDING_BOX" : Label oriented bounding box. The box does not
  /// have to be parallel to horizontal line.
  /// - "BOUNDING_POLY" : Label images with bounding poly. A bounding poly is a
  /// plane figure that is bounded by a finite chain of straight line segments
  /// closing in a loop.
  /// - "POLYLINE" : Label images with polyline. Polyline is formed by connected
  /// line segments which are not in closed form.
  /// - "SEGMENTATION" : Label images with segmentation. Segmentation is
  /// different from bounding poly since it is more fine-grained, pixel level
  /// annotation.
  core.String? feature;

  /// Configuration for image classification task.
  ///
  /// One of image_classification_config, bounding_poly_config, polyline_config
  /// and segmentation_config are required.
  GoogleCloudDatalabelingV1beta1ImageClassificationConfig?
      imageClassificationConfig;

  /// Configuration for polyline task.
  ///
  /// One of image_classification_config, bounding_poly_config, polyline_config
  /// and segmentation_config are required.
  GoogleCloudDatalabelingV1beta1PolylineConfig? polylineConfig;

  /// Configuration for segmentation task.
  ///
  /// One of image_classification_config, bounding_poly_config, polyline_config
  /// and segmentation_config are required.
  GoogleCloudDatalabelingV1beta1SegmentationConfig? segmentationConfig;

  GoogleCloudDatalabelingV1beta1LabelImageRequest({
    this.basicConfig,
    this.boundingPolyConfig,
    this.feature,
    this.imageClassificationConfig,
    this.polylineConfig,
    this.segmentationConfig,
  });

  GoogleCloudDatalabelingV1beta1LabelImageRequest.fromJson(core.Map _json)
      : this(
          basicConfig: _json.containsKey('basicConfig')
              ? GoogleCloudDatalabelingV1beta1HumanAnnotationConfig.fromJson(
                  _json['basicConfig'] as core.Map<core.String, core.dynamic>)
              : null,
          boundingPolyConfig: _json.containsKey('boundingPolyConfig')
              ? GoogleCloudDatalabelingV1beta1BoundingPolyConfig.fromJson(
                  _json['boundingPolyConfig']
                      as core.Map<core.String, core.dynamic>)
              : null,
          feature: _json.containsKey('feature')
              ? _json['feature'] as core.String
              : null,
          imageClassificationConfig:
              _json.containsKey('imageClassificationConfig')
                  ? GoogleCloudDatalabelingV1beta1ImageClassificationConfig
                      .fromJson(_json['imageClassificationConfig']
                          as core.Map<core.String, core.dynamic>)
                  : null,
          polylineConfig: _json.containsKey('polylineConfig')
              ? GoogleCloudDatalabelingV1beta1PolylineConfig.fromJson(
                  _json['polylineConfig']
                      as core.Map<core.String, core.dynamic>)
              : null,
          segmentationConfig: _json.containsKey('segmentationConfig')
              ? GoogleCloudDatalabelingV1beta1SegmentationConfig.fromJson(
                  _json['segmentationConfig']
                      as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (basicConfig != null) 'basicConfig': basicConfig!.toJson(),
        if (boundingPolyConfig != null)
          'boundingPolyConfig': boundingPolyConfig!.toJson(),
        if (feature != null) 'feature': feature!,
        if (imageClassificationConfig != null)
          'imageClassificationConfig': imageClassificationConfig!.toJson(),
        if (polylineConfig != null) 'polylineConfig': polylineConfig!.toJson(),
        if (segmentationConfig != null)
          'segmentationConfig': segmentationConfig!.toJson(),
      };
}

/// Details of a LabelImageSegmentation operation metadata.
class GoogleCloudDatalabelingV1beta1LabelImageSegmentationOperationMetadata {
  /// Basic human annotation config.
  GoogleCloudDatalabelingV1beta1HumanAnnotationConfig? basicConfig;

  GoogleCloudDatalabelingV1beta1LabelImageSegmentationOperationMetadata({
    this.basicConfig,
  });

  GoogleCloudDatalabelingV1beta1LabelImageSegmentationOperationMetadata.fromJson(
      core.Map _json)
      : this(
          basicConfig: _json.containsKey('basicConfig')
              ? GoogleCloudDatalabelingV1beta1HumanAnnotationConfig.fromJson(
                  _json['basicConfig'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (basicConfig != null) 'basicConfig': basicConfig!.toJson(),
      };
}

/// Metadata of a labeling operation, such as LabelImage or LabelVideo.
///
/// Next tag: 23
class GoogleCloudDatalabelingV1beta1LabelOperationMetadata {
  /// The name of annotated dataset in format "projects / * /datasets / *
  /// /annotatedDatasets / * ".
  ///
  /// Output only.
  core.String? annotatedDataset;

  /// Timestamp when labeling request was created.
  ///
  /// Output only.
  core.String? createTime;

  /// The name of dataset to be labeled.
  ///
  /// "projects / * /datasets / * "
  ///
  /// Output only.
  core.String? dataset;

  /// Details of label image bounding box operation.
  GoogleCloudDatalabelingV1beta1LabelImageBoundingBoxOperationMetadata?
      imageBoundingBoxDetails;

  /// Details of label image bounding poly operation.
  GoogleCloudDatalabelingV1beta1LabelImageBoundingPolyOperationMetadata?
      imageBoundingPolyDetails;

  /// Details of label image classification operation.
  GoogleCloudDatalabelingV1beta1LabelImageClassificationOperationMetadata?
      imageClassificationDetails;

  /// Details of label image oriented bounding box operation.
  GoogleCloudDatalabelingV1beta1LabelImageOrientedBoundingBoxOperationMetadata?
      imageOrientedBoundingBoxDetails;

  /// Details of label image polyline operation.
  GoogleCloudDatalabelingV1beta1LabelImagePolylineOperationMetadata?
      imagePolylineDetails;

  /// Details of label image segmentation operation.
  GoogleCloudDatalabelingV1beta1LabelImageSegmentationOperationMetadata?
      imageSegmentationDetails;

  /// Partial failures encountered.
  ///
  /// E.g. single files that couldn't be read. Status details field will contain
  /// standard GCP error details.
  ///
  /// Output only.
  core.List<GoogleRpcStatus>? partialFailures;

  /// Progress of label operation.
  ///
  /// Range: \[0, 100\].
  ///
  /// Output only.
  core.int? progressPercent;

  /// Details of label text classification operation.
  GoogleCloudDatalabelingV1beta1LabelTextClassificationOperationMetadata?
      textClassificationDetails;

  /// Details of label text entity extraction operation.
  GoogleCloudDatalabelingV1beta1LabelTextEntityExtractionOperationMetadata?
      textEntityExtractionDetails;

  /// Details of label video classification operation.
  GoogleCloudDatalabelingV1beta1LabelVideoClassificationOperationMetadata?
      videoClassificationDetails;

  /// Details of label video event operation.
  GoogleCloudDatalabelingV1beta1LabelVideoEventOperationMetadata?
      videoEventDetails;

  /// Details of label video object detection operation.
  GoogleCloudDatalabelingV1beta1LabelVideoObjectDetectionOperationMetadata?
      videoObjectDetectionDetails;

  /// Details of label video object tracking operation.
  GoogleCloudDatalabelingV1beta1LabelVideoObjectTrackingOperationMetadata?
      videoObjectTrackingDetails;

  GoogleCloudDatalabelingV1beta1LabelOperationMetadata({
    this.annotatedDataset,
    this.createTime,
    this.dataset,
    this.imageBoundingBoxDetails,
    this.imageBoundingPolyDetails,
    this.imageClassificationDetails,
    this.imageOrientedBoundingBoxDetails,
    this.imagePolylineDetails,
    this.imageSegmentationDetails,
    this.partialFailures,
    this.progressPercent,
    this.textClassificationDetails,
    this.textEntityExtractionDetails,
    this.videoClassificationDetails,
    this.videoEventDetails,
    this.videoObjectDetectionDetails,
    this.videoObjectTrackingDetails,
  });

  GoogleCloudDatalabelingV1beta1LabelOperationMetadata.fromJson(core.Map _json)
      : this(
          annotatedDataset: _json.containsKey('annotatedDataset')
              ? _json['annotatedDataset'] as core.String
              : null,
          createTime: _json.containsKey('createTime')
              ? _json['createTime'] as core.String
              : null,
          dataset: _json.containsKey('dataset')
              ? _json['dataset'] as core.String
              : null,
          imageBoundingBoxDetails: _json.containsKey('imageBoundingBoxDetails')
              ? GoogleCloudDatalabelingV1beta1LabelImageBoundingBoxOperationMetadata
                  .fromJson(_json['imageBoundingBoxDetails']
                      as core.Map<core.String, core.dynamic>)
              : null,
          imageBoundingPolyDetails: _json
                  .containsKey('imageBoundingPolyDetails')
              ? GoogleCloudDatalabelingV1beta1LabelImageBoundingPolyOperationMetadata
                  .fromJson(_json['imageBoundingPolyDetails']
                      as core.Map<core.String, core.dynamic>)
              : null,
          imageClassificationDetails: _json
                  .containsKey('imageClassificationDetails')
              ? GoogleCloudDatalabelingV1beta1LabelImageClassificationOperationMetadata
                  .fromJson(_json['imageClassificationDetails']
                      as core.Map<core.String, core.dynamic>)
              : null,
          imageOrientedBoundingBoxDetails: _json
                  .containsKey('imageOrientedBoundingBoxDetails')
              ? GoogleCloudDatalabelingV1beta1LabelImageOrientedBoundingBoxOperationMetadata
                  .fromJson(_json['imageOrientedBoundingBoxDetails']
                      as core.Map<core.String, core.dynamic>)
              : null,
          imagePolylineDetails: _json.containsKey('imagePolylineDetails')
              ? GoogleCloudDatalabelingV1beta1LabelImagePolylineOperationMetadata
                  .fromJson(_json['imagePolylineDetails']
                      as core.Map<core.String, core.dynamic>)
              : null,
          imageSegmentationDetails: _json
                  .containsKey('imageSegmentationDetails')
              ? GoogleCloudDatalabelingV1beta1LabelImageSegmentationOperationMetadata
                  .fromJson(_json['imageSegmentationDetails']
                      as core.Map<core.String, core.dynamic>)
              : null,
          partialFailures: _json.containsKey('partialFailures')
              ? (_json['partialFailures'] as core.List)
                  .map((value) => GoogleRpcStatus.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          progressPercent: _json.containsKey('progressPercent')
              ? _json['progressPercent'] as core.int
              : null,
          textClassificationDetails: _json
                  .containsKey('textClassificationDetails')
              ? GoogleCloudDatalabelingV1beta1LabelTextClassificationOperationMetadata
                  .fromJson(_json['textClassificationDetails']
                      as core.Map<core.String, core.dynamic>)
              : null,
          textEntityExtractionDetails: _json
                  .containsKey('textEntityExtractionDetails')
              ? GoogleCloudDatalabelingV1beta1LabelTextEntityExtractionOperationMetadata
                  .fromJson(_json['textEntityExtractionDetails']
                      as core.Map<core.String, core.dynamic>)
              : null,
          videoClassificationDetails: _json
                  .containsKey('videoClassificationDetails')
              ? GoogleCloudDatalabelingV1beta1LabelVideoClassificationOperationMetadata
                  .fromJson(_json['videoClassificationDetails']
                      as core.Map<core.String, core.dynamic>)
              : null,
          videoEventDetails: _json.containsKey('videoEventDetails')
              ? GoogleCloudDatalabelingV1beta1LabelVideoEventOperationMetadata
                  .fromJson(_json['videoEventDetails']
                      as core.Map<core.String, core.dynamic>)
              : null,
          videoObjectDetectionDetails: _json
                  .containsKey('videoObjectDetectionDetails')
              ? GoogleCloudDatalabelingV1beta1LabelVideoObjectDetectionOperationMetadata
                  .fromJson(_json['videoObjectDetectionDetails']
                      as core.Map<core.String, core.dynamic>)
              : null,
          videoObjectTrackingDetails: _json
                  .containsKey('videoObjectTrackingDetails')
              ? GoogleCloudDatalabelingV1beta1LabelVideoObjectTrackingOperationMetadata
                  .fromJson(_json['videoObjectTrackingDetails']
                      as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (annotatedDataset != null) 'annotatedDataset': annotatedDataset!,
        if (createTime != null) 'createTime': createTime!,
        if (dataset != null) 'dataset': dataset!,
        if (imageBoundingBoxDetails != null)
          'imageBoundingBoxDetails': imageBoundingBoxDetails!.toJson(),
        if (imageBoundingPolyDetails != null)
          'imageBoundingPolyDetails': imageBoundingPolyDetails!.toJson(),
        if (imageClassificationDetails != null)
          'imageClassificationDetails': imageClassificationDetails!.toJson(),
        if (imageOrientedBoundingBoxDetails != null)
          'imageOrientedBoundingBoxDetails':
              imageOrientedBoundingBoxDetails!.toJson(),
        if (imagePolylineDetails != null)
          'imagePolylineDetails': imagePolylineDetails!.toJson(),
        if (imageSegmentationDetails != null)
          'imageSegmentationDetails': imageSegmentationDetails!.toJson(),
        if (partialFailures != null)
          'partialFailures':
              partialFailures!.map((value) => value.toJson()).toList(),
        if (progressPercent != null) 'progressPercent': progressPercent!,
        if (textClassificationDetails != null)
          'textClassificationDetails': textClassificationDetails!.toJson(),
        if (textEntityExtractionDetails != null)
          'textEntityExtractionDetails': textEntityExtractionDetails!.toJson(),
        if (videoClassificationDetails != null)
          'videoClassificationDetails': videoClassificationDetails!.toJson(),
        if (videoEventDetails != null)
          'videoEventDetails': videoEventDetails!.toJson(),
        if (videoObjectDetectionDetails != null)
          'videoObjectDetectionDetails': videoObjectDetectionDetails!.toJson(),
        if (videoObjectTrackingDetails != null)
          'videoObjectTrackingDetails': videoObjectTrackingDetails!.toJson(),
      };
}

/// Statistics about annotation specs.
class GoogleCloudDatalabelingV1beta1LabelStats {
  /// Map of each annotation spec's example count.
  ///
  /// Key is the annotation spec name and value is the number of examples for
  /// that annotation spec. If the annotated dataset does not have annotation
  /// spec, the map will return a pair where the key is empty string and value
  /// is the total number of annotations.
  core.Map<core.String, core.String>? exampleCount;

  GoogleCloudDatalabelingV1beta1LabelStats({
    this.exampleCount,
  });

  GoogleCloudDatalabelingV1beta1LabelStats.fromJson(core.Map _json)
      : this(
          exampleCount: _json.containsKey('exampleCount')
              ? (_json['exampleCount'] as core.Map<core.String, core.dynamic>)
                  .map(
                  (key, item) => core.MapEntry(
                    key,
                    item as core.String,
                  ),
                )
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (exampleCount != null) 'exampleCount': exampleCount!,
      };
}

/// Details of a LabelTextClassification operation metadata.
class GoogleCloudDatalabelingV1beta1LabelTextClassificationOperationMetadata {
  /// Basic human annotation config used in labeling request.
  GoogleCloudDatalabelingV1beta1HumanAnnotationConfig? basicConfig;

  GoogleCloudDatalabelingV1beta1LabelTextClassificationOperationMetadata({
    this.basicConfig,
  });

  GoogleCloudDatalabelingV1beta1LabelTextClassificationOperationMetadata.fromJson(
      core.Map _json)
      : this(
          basicConfig: _json.containsKey('basicConfig')
              ? GoogleCloudDatalabelingV1beta1HumanAnnotationConfig.fromJson(
                  _json['basicConfig'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (basicConfig != null) 'basicConfig': basicConfig!.toJson(),
      };
}

/// Details of a LabelTextEntityExtraction operation metadata.
class GoogleCloudDatalabelingV1beta1LabelTextEntityExtractionOperationMetadata {
  /// Basic human annotation config used in labeling request.
  GoogleCloudDatalabelingV1beta1HumanAnnotationConfig? basicConfig;

  GoogleCloudDatalabelingV1beta1LabelTextEntityExtractionOperationMetadata({
    this.basicConfig,
  });

  GoogleCloudDatalabelingV1beta1LabelTextEntityExtractionOperationMetadata.fromJson(
      core.Map _json)
      : this(
          basicConfig: _json.containsKey('basicConfig')
              ? GoogleCloudDatalabelingV1beta1HumanAnnotationConfig.fromJson(
                  _json['basicConfig'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (basicConfig != null) 'basicConfig': basicConfig!.toJson(),
      };
}

/// Request message for LabelText.
class GoogleCloudDatalabelingV1beta1LabelTextRequest {
  /// Basic human annotation config.
  ///
  /// Required.
  GoogleCloudDatalabelingV1beta1HumanAnnotationConfig? basicConfig;

  /// The type of text labeling task.
  ///
  /// Required.
  /// Possible string values are:
  /// - "FEATURE_UNSPECIFIED"
  /// - "TEXT_CLASSIFICATION" : Label text content to one of more labels.
  /// - "TEXT_ENTITY_EXTRACTION" : Label entities and their span in text.
  core.String? feature;

  /// Configuration for text classification task.
  ///
  /// One of text_classification_config and text_entity_extraction_config is
  /// required.
  GoogleCloudDatalabelingV1beta1TextClassificationConfig?
      textClassificationConfig;

  /// Configuration for entity extraction task.
  ///
  /// One of text_classification_config and text_entity_extraction_config is
  /// required.
  GoogleCloudDatalabelingV1beta1TextEntityExtractionConfig?
      textEntityExtractionConfig;

  GoogleCloudDatalabelingV1beta1LabelTextRequest({
    this.basicConfig,
    this.feature,
    this.textClassificationConfig,
    this.textEntityExtractionConfig,
  });

  GoogleCloudDatalabelingV1beta1LabelTextRequest.fromJson(core.Map _json)
      : this(
          basicConfig: _json.containsKey('basicConfig')
              ? GoogleCloudDatalabelingV1beta1HumanAnnotationConfig.fromJson(
                  _json['basicConfig'] as core.Map<core.String, core.dynamic>)
              : null,
          feature: _json.containsKey('feature')
              ? _json['feature'] as core.String
              : null,
          textClassificationConfig: _json
                  .containsKey('textClassificationConfig')
              ? GoogleCloudDatalabelingV1beta1TextClassificationConfig.fromJson(
                  _json['textClassificationConfig']
                      as core.Map<core.String, core.dynamic>)
              : null,
          textEntityExtractionConfig:
              _json.containsKey('textEntityExtractionConfig')
                  ? GoogleCloudDatalabelingV1beta1TextEntityExtractionConfig
                      .fromJson(_json['textEntityExtractionConfig']
                          as core.Map<core.String, core.dynamic>)
                  : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (basicConfig != null) 'basicConfig': basicConfig!.toJson(),
        if (feature != null) 'feature': feature!,
        if (textClassificationConfig != null)
          'textClassificationConfig': textClassificationConfig!.toJson(),
        if (textEntityExtractionConfig != null)
          'textEntityExtractionConfig': textEntityExtractionConfig!.toJson(),
      };
}

/// Details of a LabelVideoClassification operation metadata.
class GoogleCloudDatalabelingV1beta1LabelVideoClassificationOperationMetadata {
  /// Basic human annotation config used in labeling request.
  GoogleCloudDatalabelingV1beta1HumanAnnotationConfig? basicConfig;

  GoogleCloudDatalabelingV1beta1LabelVideoClassificationOperationMetadata({
    this.basicConfig,
  });

  GoogleCloudDatalabelingV1beta1LabelVideoClassificationOperationMetadata.fromJson(
      core.Map _json)
      : this(
          basicConfig: _json.containsKey('basicConfig')
              ? GoogleCloudDatalabelingV1beta1HumanAnnotationConfig.fromJson(
                  _json['basicConfig'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (basicConfig != null) 'basicConfig': basicConfig!.toJson(),
      };
}

/// Details of a LabelVideoEvent operation metadata.
class GoogleCloudDatalabelingV1beta1LabelVideoEventOperationMetadata {
  /// Basic human annotation config used in labeling request.
  GoogleCloudDatalabelingV1beta1HumanAnnotationConfig? basicConfig;

  GoogleCloudDatalabelingV1beta1LabelVideoEventOperationMetadata({
    this.basicConfig,
  });

  GoogleCloudDatalabelingV1beta1LabelVideoEventOperationMetadata.fromJson(
      core.Map _json)
      : this(
          basicConfig: _json.containsKey('basicConfig')
              ? GoogleCloudDatalabelingV1beta1HumanAnnotationConfig.fromJson(
                  _json['basicConfig'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (basicConfig != null) 'basicConfig': basicConfig!.toJson(),
      };
}

/// Details of a LabelVideoObjectDetection operation metadata.
class GoogleCloudDatalabelingV1beta1LabelVideoObjectDetectionOperationMetadata {
  /// Basic human annotation config used in labeling request.
  GoogleCloudDatalabelingV1beta1HumanAnnotationConfig? basicConfig;

  GoogleCloudDatalabelingV1beta1LabelVideoObjectDetectionOperationMetadata({
    this.basicConfig,
  });

  GoogleCloudDatalabelingV1beta1LabelVideoObjectDetectionOperationMetadata.fromJson(
      core.Map _json)
      : this(
          basicConfig: _json.containsKey('basicConfig')
              ? GoogleCloudDatalabelingV1beta1HumanAnnotationConfig.fromJson(
                  _json['basicConfig'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (basicConfig != null) 'basicConfig': basicConfig!.toJson(),
      };
}

/// Details of a LabelVideoObjectTracking operation metadata.
class GoogleCloudDatalabelingV1beta1LabelVideoObjectTrackingOperationMetadata {
  /// Basic human annotation config used in labeling request.
  GoogleCloudDatalabelingV1beta1HumanAnnotationConfig? basicConfig;

  GoogleCloudDatalabelingV1beta1LabelVideoObjectTrackingOperationMetadata({
    this.basicConfig,
  });

  GoogleCloudDatalabelingV1beta1LabelVideoObjectTrackingOperationMetadata.fromJson(
      core.Map _json)
      : this(
          basicConfig: _json.containsKey('basicConfig')
              ? GoogleCloudDatalabelingV1beta1HumanAnnotationConfig.fromJson(
                  _json['basicConfig'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (basicConfig != null) 'basicConfig': basicConfig!.toJson(),
      };
}

/// Request message for LabelVideo.
class GoogleCloudDatalabelingV1beta1LabelVideoRequest {
  /// Basic human annotation config.
  ///
  /// Required.
  GoogleCloudDatalabelingV1beta1HumanAnnotationConfig? basicConfig;

  /// Configuration for video event task.
  ///
  /// One of video_classification_config, object_detection_config,
  /// object_tracking_config and event_config is required.
  GoogleCloudDatalabelingV1beta1EventConfig? eventConfig;

  /// The type of video labeling task.
  ///
  /// Required.
  /// Possible string values are:
  /// - "FEATURE_UNSPECIFIED"
  /// - "CLASSIFICATION" : Label whole video or video segment with one or more
  /// labels.
  /// - "OBJECT_DETECTION" : Label objects with bounding box on image frames
  /// extracted from the video.
  /// - "OBJECT_TRACKING" : Label and track objects in video.
  /// - "EVENT" : Label the range of video for the specified events.
  core.String? feature;

  /// Configuration for video object detection task.
  ///
  /// One of video_classification_config, object_detection_config,
  /// object_tracking_config and event_config is required.
  GoogleCloudDatalabelingV1beta1ObjectDetectionConfig? objectDetectionConfig;

  /// Configuration for video object tracking task.
  ///
  /// One of video_classification_config, object_detection_config,
  /// object_tracking_config and event_config is required.
  GoogleCloudDatalabelingV1beta1ObjectTrackingConfig? objectTrackingConfig;

  /// Configuration for video classification task.
  ///
  /// One of video_classification_config, object_detection_config,
  /// object_tracking_config and event_config is required.
  GoogleCloudDatalabelingV1beta1VideoClassificationConfig?
      videoClassificationConfig;

  GoogleCloudDatalabelingV1beta1LabelVideoRequest({
    this.basicConfig,
    this.eventConfig,
    this.feature,
    this.objectDetectionConfig,
    this.objectTrackingConfig,
    this.videoClassificationConfig,
  });

  GoogleCloudDatalabelingV1beta1LabelVideoRequest.fromJson(core.Map _json)
      : this(
          basicConfig: _json.containsKey('basicConfig')
              ? GoogleCloudDatalabelingV1beta1HumanAnnotationConfig.fromJson(
                  _json['basicConfig'] as core.Map<core.String, core.dynamic>)
              : null,
          eventConfig: _json.containsKey('eventConfig')
              ? GoogleCloudDatalabelingV1beta1EventConfig.fromJson(
                  _json['eventConfig'] as core.Map<core.String, core.dynamic>)
              : null,
          feature: _json.containsKey('feature')
              ? _json['feature'] as core.String
              : null,
          objectDetectionConfig: _json.containsKey('objectDetectionConfig')
              ? GoogleCloudDatalabelingV1beta1ObjectDetectionConfig.fromJson(
                  _json['objectDetectionConfig']
                      as core.Map<core.String, core.dynamic>)
              : null,
          objectTrackingConfig: _json.containsKey('objectTrackingConfig')
              ? GoogleCloudDatalabelingV1beta1ObjectTrackingConfig.fromJson(
                  _json['objectTrackingConfig']
                      as core.Map<core.String, core.dynamic>)
              : null,
          videoClassificationConfig:
              _json.containsKey('videoClassificationConfig')
                  ? GoogleCloudDatalabelingV1beta1VideoClassificationConfig
                      .fromJson(_json['videoClassificationConfig']
                          as core.Map<core.String, core.dynamic>)
                  : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (basicConfig != null) 'basicConfig': basicConfig!.toJson(),
        if (eventConfig != null) 'eventConfig': eventConfig!.toJson(),
        if (feature != null) 'feature': feature!,
        if (objectDetectionConfig != null)
          'objectDetectionConfig': objectDetectionConfig!.toJson(),
        if (objectTrackingConfig != null)
          'objectTrackingConfig': objectTrackingConfig!.toJson(),
        if (videoClassificationConfig != null)
          'videoClassificationConfig': videoClassificationConfig!.toJson(),
      };
}

/// Results of listing annotated datasets for a dataset.
class GoogleCloudDatalabelingV1beta1ListAnnotatedDatasetsResponse {
  /// The list of annotated datasets to return.
  core.List<GoogleCloudDatalabelingV1beta1AnnotatedDataset>? annotatedDatasets;

  /// A token to retrieve next page of results.
  core.String? nextPageToken;

  GoogleCloudDatalabelingV1beta1ListAnnotatedDatasetsResponse({
    this.annotatedDatasets,
    this.nextPageToken,
  });

  GoogleCloudDatalabelingV1beta1ListAnnotatedDatasetsResponse.fromJson(
      core.Map _json)
      : this(
          annotatedDatasets: _json.containsKey('annotatedDatasets')
              ? (_json['annotatedDatasets'] as core.List)
                  .map((value) =>
                      GoogleCloudDatalabelingV1beta1AnnotatedDataset.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          nextPageToken: _json.containsKey('nextPageToken')
              ? _json['nextPageToken'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (annotatedDatasets != null)
          'annotatedDatasets':
              annotatedDatasets!.map((value) => value.toJson()).toList(),
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
      };
}

/// Results of listing annotation spec set under a project.
class GoogleCloudDatalabelingV1beta1ListAnnotationSpecSetsResponse {
  /// The list of annotation spec sets.
  core.List<GoogleCloudDatalabelingV1beta1AnnotationSpecSet>?
      annotationSpecSets;

  /// A token to retrieve next page of results.
  core.String? nextPageToken;

  GoogleCloudDatalabelingV1beta1ListAnnotationSpecSetsResponse({
    this.annotationSpecSets,
    this.nextPageToken,
  });

  GoogleCloudDatalabelingV1beta1ListAnnotationSpecSetsResponse.fromJson(
      core.Map _json)
      : this(
          annotationSpecSets: _json.containsKey('annotationSpecSets')
              ? (_json['annotationSpecSets'] as core.List)
                  .map((value) =>
                      GoogleCloudDatalabelingV1beta1AnnotationSpecSet.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          nextPageToken: _json.containsKey('nextPageToken')
              ? _json['nextPageToken'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (annotationSpecSets != null)
          'annotationSpecSets':
              annotationSpecSets!.map((value) => value.toJson()).toList(),
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
      };
}

/// Results of listing data items in a dataset.
class GoogleCloudDatalabelingV1beta1ListDataItemsResponse {
  /// The list of data items to return.
  core.List<GoogleCloudDatalabelingV1beta1DataItem>? dataItems;

  /// A token to retrieve next page of results.
  core.String? nextPageToken;

  GoogleCloudDatalabelingV1beta1ListDataItemsResponse({
    this.dataItems,
    this.nextPageToken,
  });

  GoogleCloudDatalabelingV1beta1ListDataItemsResponse.fromJson(core.Map _json)
      : this(
          dataItems: _json.containsKey('dataItems')
              ? (_json['dataItems'] as core.List)
                  .map((value) =>
                      GoogleCloudDatalabelingV1beta1DataItem.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          nextPageToken: _json.containsKey('nextPageToken')
              ? _json['nextPageToken'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (dataItems != null)
          'dataItems': dataItems!.map((value) => value.toJson()).toList(),
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
      };
}

/// Results of listing datasets within a project.
class GoogleCloudDatalabelingV1beta1ListDatasetsResponse {
  /// The list of datasets to return.
  core.List<GoogleCloudDatalabelingV1beta1Dataset>? datasets;

  /// A token to retrieve next page of results.
  core.String? nextPageToken;

  GoogleCloudDatalabelingV1beta1ListDatasetsResponse({
    this.datasets,
    this.nextPageToken,
  });

  GoogleCloudDatalabelingV1beta1ListDatasetsResponse.fromJson(core.Map _json)
      : this(
          datasets: _json.containsKey('datasets')
              ? (_json['datasets'] as core.List)
                  .map((value) =>
                      GoogleCloudDatalabelingV1beta1Dataset.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          nextPageToken: _json.containsKey('nextPageToken')
              ? _json['nextPageToken'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (datasets != null)
          'datasets': datasets!.map((value) => value.toJson()).toList(),
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
      };
}

/// Results for listing evaluation jobs.
class GoogleCloudDatalabelingV1beta1ListEvaluationJobsResponse {
  /// The list of evaluation jobs to return.
  core.List<GoogleCloudDatalabelingV1beta1EvaluationJob>? evaluationJobs;

  /// A token to retrieve next page of results.
  core.String? nextPageToken;

  GoogleCloudDatalabelingV1beta1ListEvaluationJobsResponse({
    this.evaluationJobs,
    this.nextPageToken,
  });

  GoogleCloudDatalabelingV1beta1ListEvaluationJobsResponse.fromJson(
      core.Map _json)
      : this(
          evaluationJobs: _json.containsKey('evaluationJobs')
              ? (_json['evaluationJobs'] as core.List)
                  .map((value) =>
                      GoogleCloudDatalabelingV1beta1EvaluationJob.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          nextPageToken: _json.containsKey('nextPageToken')
              ? _json['nextPageToken'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (evaluationJobs != null)
          'evaluationJobs':
              evaluationJobs!.map((value) => value.toJson()).toList(),
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
      };
}

/// Results of listing Examples in and annotated dataset.
class GoogleCloudDatalabelingV1beta1ListExamplesResponse {
  /// The list of examples to return.
  core.List<GoogleCloudDatalabelingV1beta1Example>? examples;

  /// A token to retrieve next page of results.
  core.String? nextPageToken;

  GoogleCloudDatalabelingV1beta1ListExamplesResponse({
    this.examples,
    this.nextPageToken,
  });

  GoogleCloudDatalabelingV1beta1ListExamplesResponse.fromJson(core.Map _json)
      : this(
          examples: _json.containsKey('examples')
              ? (_json['examples'] as core.List)
                  .map((value) =>
                      GoogleCloudDatalabelingV1beta1Example.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          nextPageToken: _json.containsKey('nextPageToken')
              ? _json['nextPageToken'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (examples != null)
          'examples': examples!.map((value) => value.toJson()).toList(),
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
      };
}

/// Results for listing FeedbackMessages.
class GoogleCloudDatalabelingV1beta1ListFeedbackMessagesResponse {
  /// The list of feedback messages to return.
  core.List<GoogleCloudDatalabelingV1beta1FeedbackMessage>? feedbackMessages;

  /// A token to retrieve next page of results.
  core.String? nextPageToken;

  GoogleCloudDatalabelingV1beta1ListFeedbackMessagesResponse({
    this.feedbackMessages,
    this.nextPageToken,
  });

  GoogleCloudDatalabelingV1beta1ListFeedbackMessagesResponse.fromJson(
      core.Map _json)
      : this(
          feedbackMessages: _json.containsKey('feedbackMessages')
              ? (_json['feedbackMessages'] as core.List)
                  .map((value) =>
                      GoogleCloudDatalabelingV1beta1FeedbackMessage.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          nextPageToken: _json.containsKey('nextPageToken')
              ? _json['nextPageToken'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (feedbackMessages != null)
          'feedbackMessages':
              feedbackMessages!.map((value) => value.toJson()).toList(),
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
      };
}

/// Results for listing FeedbackThreads.
class GoogleCloudDatalabelingV1beta1ListFeedbackThreadsResponse {
  /// The list of feedback threads to return.
  core.List<GoogleCloudDatalabelingV1beta1FeedbackThread>? feedbackThreads;

  /// A token to retrieve next page of results.
  core.String? nextPageToken;

  GoogleCloudDatalabelingV1beta1ListFeedbackThreadsResponse({
    this.feedbackThreads,
    this.nextPageToken,
  });

  GoogleCloudDatalabelingV1beta1ListFeedbackThreadsResponse.fromJson(
      core.Map _json)
      : this(
          feedbackThreads: _json.containsKey('feedbackThreads')
              ? (_json['feedbackThreads'] as core.List)
                  .map((value) =>
                      GoogleCloudDatalabelingV1beta1FeedbackThread.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          nextPageToken: _json.containsKey('nextPageToken')
              ? _json['nextPageToken'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (feedbackThreads != null)
          'feedbackThreads':
              feedbackThreads!.map((value) => value.toJson()).toList(),
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
      };
}

/// Results of listing instructions under a project.
class GoogleCloudDatalabelingV1beta1ListInstructionsResponse {
  /// The list of Instructions to return.
  core.List<GoogleCloudDatalabelingV1beta1Instruction>? instructions;

  /// A token to retrieve next page of results.
  core.String? nextPageToken;

  GoogleCloudDatalabelingV1beta1ListInstructionsResponse({
    this.instructions,
    this.nextPageToken,
  });

  GoogleCloudDatalabelingV1beta1ListInstructionsResponse.fromJson(
      core.Map _json)
      : this(
          instructions: _json.containsKey('instructions')
              ? (_json['instructions'] as core.List)
                  .map((value) =>
                      GoogleCloudDatalabelingV1beta1Instruction.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          nextPageToken: _json.containsKey('nextPageToken')
              ? _json['nextPageToken'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (instructions != null)
          'instructions': instructions!.map((value) => value.toJson()).toList(),
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
      };
}

/// Normalized bounding polygon.
class GoogleCloudDatalabelingV1beta1NormalizedBoundingPoly {
  /// The bounding polygon normalized vertices.
  core.List<GoogleCloudDatalabelingV1beta1NormalizedVertex>? normalizedVertices;

  GoogleCloudDatalabelingV1beta1NormalizedBoundingPoly({
    this.normalizedVertices,
  });

  GoogleCloudDatalabelingV1beta1NormalizedBoundingPoly.fromJson(core.Map _json)
      : this(
          normalizedVertices: _json.containsKey('normalizedVertices')
              ? (_json['normalizedVertices'] as core.List)
                  .map((value) =>
                      GoogleCloudDatalabelingV1beta1NormalizedVertex.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (normalizedVertices != null)
          'normalizedVertices':
              normalizedVertices!.map((value) => value.toJson()).toList(),
      };
}

/// Normalized polyline.
class GoogleCloudDatalabelingV1beta1NormalizedPolyline {
  /// The normalized polyline vertices.
  core.List<GoogleCloudDatalabelingV1beta1NormalizedVertex>? normalizedVertices;

  GoogleCloudDatalabelingV1beta1NormalizedPolyline({
    this.normalizedVertices,
  });

  GoogleCloudDatalabelingV1beta1NormalizedPolyline.fromJson(core.Map _json)
      : this(
          normalizedVertices: _json.containsKey('normalizedVertices')
              ? (_json['normalizedVertices'] as core.List)
                  .map((value) =>
                      GoogleCloudDatalabelingV1beta1NormalizedVertex.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (normalizedVertices != null)
          'normalizedVertices':
              normalizedVertices!.map((value) => value.toJson()).toList(),
      };
}

/// A vertex represents a 2D point in the image.
///
/// NOTE: the normalized vertex coordinates are relative to the original image
/// and range from 0 to 1.
class GoogleCloudDatalabelingV1beta1NormalizedVertex {
  /// X coordinate.
  core.double? x;

  /// Y coordinate.
  core.double? y;

  GoogleCloudDatalabelingV1beta1NormalizedVertex({
    this.x,
    this.y,
  });

  GoogleCloudDatalabelingV1beta1NormalizedVertex.fromJson(core.Map _json)
      : this(
          x: _json.containsKey('x')
              ? (_json['x'] as core.num).toDouble()
              : null,
          y: _json.containsKey('y')
              ? (_json['y'] as core.num).toDouble()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (x != null) 'x': x!,
        if (y != null) 'y': y!,
      };
}

/// Config for video object detection human labeling task.
///
/// Object detection will be conducted on the images extracted from the video,
/// and those objects will be labeled with bounding boxes. User need to specify
/// the number of images to be extracted per second as the extraction frame
/// rate.
class GoogleCloudDatalabelingV1beta1ObjectDetectionConfig {
  /// Annotation spec set resource name.
  ///
  /// Required.
  core.String? annotationSpecSet;

  /// Number of frames per second to be extracted from the video.
  ///
  /// Required.
  core.double? extractionFrameRate;

  GoogleCloudDatalabelingV1beta1ObjectDetectionConfig({
    this.annotationSpecSet,
    this.extractionFrameRate,
  });

  GoogleCloudDatalabelingV1beta1ObjectDetectionConfig.fromJson(core.Map _json)
      : this(
          annotationSpecSet: _json.containsKey('annotationSpecSet')
              ? _json['annotationSpecSet'] as core.String
              : null,
          extractionFrameRate: _json.containsKey('extractionFrameRate')
              ? (_json['extractionFrameRate'] as core.num).toDouble()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (annotationSpecSet != null) 'annotationSpecSet': annotationSpecSet!,
        if (extractionFrameRate != null)
          'extractionFrameRate': extractionFrameRate!,
      };
}

/// Metrics calculated for an image object detection (bounding box) model.
class GoogleCloudDatalabelingV1beta1ObjectDetectionMetrics {
  /// Precision-recall curve.
  GoogleCloudDatalabelingV1beta1PrCurve? prCurve;

  GoogleCloudDatalabelingV1beta1ObjectDetectionMetrics({
    this.prCurve,
  });

  GoogleCloudDatalabelingV1beta1ObjectDetectionMetrics.fromJson(core.Map _json)
      : this(
          prCurve: _json.containsKey('prCurve')
              ? GoogleCloudDatalabelingV1beta1PrCurve.fromJson(
                  _json['prCurve'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (prCurve != null) 'prCurve': prCurve!.toJson(),
      };
}

/// Config for video object tracking human labeling task.
class GoogleCloudDatalabelingV1beta1ObjectTrackingConfig {
  /// Annotation spec set resource name.
  ///
  /// Required.
  core.String? annotationSpecSet;

  /// Videos will be cut to smaller clips to make it easier for labelers to work
  /// on.
  ///
  /// Users can configure is field in seconds, if not set, default value is 20s.
  core.int? clipLength;

  /// The overlap length between different video clips.
  ///
  /// Users can configure is field in seconds, if not set, default value is
  /// 0.3s.
  core.int? overlapLength;

  GoogleCloudDatalabelingV1beta1ObjectTrackingConfig({
    this.annotationSpecSet,
    this.clipLength,
    this.overlapLength,
  });

  GoogleCloudDatalabelingV1beta1ObjectTrackingConfig.fromJson(core.Map _json)
      : this(
          annotationSpecSet: _json.containsKey('annotationSpecSet')
              ? _json['annotationSpecSet'] as core.String
              : null,
          clipLength: _json.containsKey('clipLength')
              ? _json['clipLength'] as core.int
              : null,
          overlapLength: _json.containsKey('overlapLength')
              ? _json['overlapLength'] as core.int
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (annotationSpecSet != null) 'annotationSpecSet': annotationSpecSet!,
        if (clipLength != null) 'clipLength': clipLength!,
        if (overlapLength != null) 'overlapLength': overlapLength!,
      };
}

/// Video frame level annotation for object detection and tracking.
class GoogleCloudDatalabelingV1beta1ObjectTrackingFrame {
  GoogleCloudDatalabelingV1beta1BoundingPoly? boundingPoly;
  GoogleCloudDatalabelingV1beta1NormalizedBoundingPoly? normalizedBoundingPoly;

  /// The time offset of this frame relative to the beginning of the video.
  core.String? timeOffset;

  GoogleCloudDatalabelingV1beta1ObjectTrackingFrame({
    this.boundingPoly,
    this.normalizedBoundingPoly,
    this.timeOffset,
  });

  GoogleCloudDatalabelingV1beta1ObjectTrackingFrame.fromJson(core.Map _json)
      : this(
          boundingPoly: _json.containsKey('boundingPoly')
              ? GoogleCloudDatalabelingV1beta1BoundingPoly.fromJson(
                  _json['boundingPoly'] as core.Map<core.String, core.dynamic>)
              : null,
          normalizedBoundingPoly: _json.containsKey('normalizedBoundingPoly')
              ? GoogleCloudDatalabelingV1beta1NormalizedBoundingPoly.fromJson(
                  _json['normalizedBoundingPoly']
                      as core.Map<core.String, core.dynamic>)
              : null,
          timeOffset: _json.containsKey('timeOffset')
              ? _json['timeOffset'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (boundingPoly != null) 'boundingPoly': boundingPoly!.toJson(),
        if (normalizedBoundingPoly != null)
          'normalizedBoundingPoly': normalizedBoundingPoly!.toJson(),
        if (timeOffset != null) 'timeOffset': timeOffset!,
      };
}

/// Metadata describing the feedback from the operator.
typedef GoogleCloudDatalabelingV1beta1OperatorFeedbackMetadata = $Empty;

/// General information useful for labels coming from contributors.
class GoogleCloudDatalabelingV1beta1OperatorMetadata {
  /// Comments from contributors.
  core.List<core.String>? comments;

  /// The total number of contributors that choose this label.
  core.int? labelVotes;

  /// Confidence score corresponding to a label.
  ///
  /// For examle, if 3 contributors have answered the question and 2 of them
  /// agree on the final label, the confidence score will be 0.67 (2/3).
  core.double? score;

  /// The total number of contributors that answer this question.
  core.int? totalVotes;

  GoogleCloudDatalabelingV1beta1OperatorMetadata({
    this.comments,
    this.labelVotes,
    this.score,
    this.totalVotes,
  });

  GoogleCloudDatalabelingV1beta1OperatorMetadata.fromJson(core.Map _json)
      : this(
          comments: _json.containsKey('comments')
              ? (_json['comments'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          labelVotes: _json.containsKey('labelVotes')
              ? _json['labelVotes'] as core.int
              : null,
          score: _json.containsKey('score')
              ? (_json['score'] as core.num).toDouble()
              : null,
          totalVotes: _json.containsKey('totalVotes')
              ? _json['totalVotes'] as core.int
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (comments != null) 'comments': comments!,
        if (labelVotes != null) 'labelVotes': labelVotes!,
        if (score != null) 'score': score!,
        if (totalVotes != null) 'totalVotes': totalVotes!,
      };
}

/// The configuration of output data.
class GoogleCloudDatalabelingV1beta1OutputConfig {
  /// Output to a file in Cloud Storage.
  ///
  /// Should be used for labeling output other than image segmentation.
  GoogleCloudDatalabelingV1beta1GcsDestination? gcsDestination;

  /// Output to a folder in Cloud Storage.
  ///
  /// Should be used for image segmentation or document de-identification
  /// labeling outputs.
  GoogleCloudDatalabelingV1beta1GcsFolderDestination? gcsFolderDestination;

  GoogleCloudDatalabelingV1beta1OutputConfig({
    this.gcsDestination,
    this.gcsFolderDestination,
  });

  GoogleCloudDatalabelingV1beta1OutputConfig.fromJson(core.Map _json)
      : this(
          gcsDestination: _json.containsKey('gcsDestination')
              ? GoogleCloudDatalabelingV1beta1GcsDestination.fromJson(
                  _json['gcsDestination']
                      as core.Map<core.String, core.dynamic>)
              : null,
          gcsFolderDestination: _json.containsKey('gcsFolderDestination')
              ? GoogleCloudDatalabelingV1beta1GcsFolderDestination.fromJson(
                  _json['gcsFolderDestination']
                      as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (gcsDestination != null) 'gcsDestination': gcsDestination!.toJson(),
        if (gcsFolderDestination != null)
          'gcsFolderDestination': gcsFolderDestination!.toJson(),
      };
}

/// Request message for PauseEvaluationJob.
typedef GoogleCloudDatalabelingV1beta1PauseEvaluationJobRequest = $Empty;

/// Instruction from a PDF file.
class GoogleCloudDatalabelingV1beta1PdfInstruction {
  /// PDF file for the instruction.
  ///
  /// Only gcs path is allowed.
  core.String? gcsFileUri;

  GoogleCloudDatalabelingV1beta1PdfInstruction({
    this.gcsFileUri,
  });

  GoogleCloudDatalabelingV1beta1PdfInstruction.fromJson(core.Map _json)
      : this(
          gcsFileUri: _json.containsKey('gcsFileUri')
              ? _json['gcsFileUri'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (gcsFileUri != null) 'gcsFileUri': gcsFileUri!,
      };
}

/// A line with multiple line segments.
class GoogleCloudDatalabelingV1beta1Polyline {
  /// The polyline vertices.
  core.List<GoogleCloudDatalabelingV1beta1Vertex>? vertices;

  GoogleCloudDatalabelingV1beta1Polyline({
    this.vertices,
  });

  GoogleCloudDatalabelingV1beta1Polyline.fromJson(core.Map _json)
      : this(
          vertices: _json.containsKey('vertices')
              ? (_json['vertices'] as core.List)
                  .map((value) => GoogleCloudDatalabelingV1beta1Vertex.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (vertices != null)
          'vertices': vertices!.map((value) => value.toJson()).toList(),
      };
}

/// Config for image polyline human labeling task.
class GoogleCloudDatalabelingV1beta1PolylineConfig {
  /// Annotation spec set resource name.
  ///
  /// Required.
  core.String? annotationSpecSet;

  /// Instruction message showed on contributors UI.
  ///
  /// Optional.
  core.String? instructionMessage;

  GoogleCloudDatalabelingV1beta1PolylineConfig({
    this.annotationSpecSet,
    this.instructionMessage,
  });

  GoogleCloudDatalabelingV1beta1PolylineConfig.fromJson(core.Map _json)
      : this(
          annotationSpecSet: _json.containsKey('annotationSpecSet')
              ? _json['annotationSpecSet'] as core.String
              : null,
          instructionMessage: _json.containsKey('instructionMessage')
              ? _json['instructionMessage'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (annotationSpecSet != null) 'annotationSpecSet': annotationSpecSet!,
        if (instructionMessage != null)
          'instructionMessage': instructionMessage!,
      };
}

class GoogleCloudDatalabelingV1beta1PrCurve {
  /// The annotation spec of the label for which the precision-recall curve
  /// calculated.
  ///
  /// If this field is empty, that means the precision-recall curve is an
  /// aggregate curve for all labels.
  GoogleCloudDatalabelingV1beta1AnnotationSpec? annotationSpec;

  /// Area under the precision-recall curve.
  ///
  /// Not to be confused with area under a receiver operating characteristic
  /// (ROC) curve.
  core.double? areaUnderCurve;

  /// Entries that make up the precision-recall graph.
  ///
  /// Each entry is a "point" on the graph drawn for a different
  /// `confidence_threshold`.
  core.List<GoogleCloudDatalabelingV1beta1ConfidenceMetricsEntry>?
      confidenceMetricsEntries;

  /// Mean average prcision of this curve.
  core.double? meanAveragePrecision;

  GoogleCloudDatalabelingV1beta1PrCurve({
    this.annotationSpec,
    this.areaUnderCurve,
    this.confidenceMetricsEntries,
    this.meanAveragePrecision,
  });

  GoogleCloudDatalabelingV1beta1PrCurve.fromJson(core.Map _json)
      : this(
          annotationSpec: _json.containsKey('annotationSpec')
              ? GoogleCloudDatalabelingV1beta1AnnotationSpec.fromJson(
                  _json['annotationSpec']
                      as core.Map<core.String, core.dynamic>)
              : null,
          areaUnderCurve: _json.containsKey('areaUnderCurve')
              ? (_json['areaUnderCurve'] as core.num).toDouble()
              : null,
          confidenceMetricsEntries: _json
                  .containsKey('confidenceMetricsEntries')
              ? (_json['confidenceMetricsEntries'] as core.List)
                  .map((value) =>
                      GoogleCloudDatalabelingV1beta1ConfidenceMetricsEntry
                          .fromJson(
                              value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          meanAveragePrecision: _json.containsKey('meanAveragePrecision')
              ? (_json['meanAveragePrecision'] as core.num).toDouble()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (annotationSpec != null) 'annotationSpec': annotationSpec!.toJson(),
        if (areaUnderCurve != null) 'areaUnderCurve': areaUnderCurve!,
        if (confidenceMetricsEntries != null)
          'confidenceMetricsEntries':
              confidenceMetricsEntries!.map((value) => value.toJson()).toList(),
        if (meanAveragePrecision != null)
          'meanAveragePrecision': meanAveragePrecision!,
      };
}

/// Metadata describing the feedback from the labeling task requester.
typedef GoogleCloudDatalabelingV1beta1RequesterFeedbackMetadata = $Empty;

/// Request message ResumeEvaluationJob.
typedef GoogleCloudDatalabelingV1beta1ResumeEvaluationJobRequest = $Empty;

/// A row in the confusion matrix.
///
/// Each entry in this row has the same ground truth label.
class GoogleCloudDatalabelingV1beta1Row {
  /// The annotation spec of the ground truth label for this row.
  GoogleCloudDatalabelingV1beta1AnnotationSpec? annotationSpec;

  /// A list of the confusion matrix entries.
  ///
  /// One entry for each possible predicted label.
  core.List<GoogleCloudDatalabelingV1beta1ConfusionMatrixEntry>? entries;

  GoogleCloudDatalabelingV1beta1Row({
    this.annotationSpec,
    this.entries,
  });

  GoogleCloudDatalabelingV1beta1Row.fromJson(core.Map _json)
      : this(
          annotationSpec: _json.containsKey('annotationSpec')
              ? GoogleCloudDatalabelingV1beta1AnnotationSpec.fromJson(
                  _json['annotationSpec']
                      as core.Map<core.String, core.dynamic>)
              : null,
          entries: _json.containsKey('entries')
              ? (_json['entries'] as core.List)
                  .map((value) =>
                      GoogleCloudDatalabelingV1beta1ConfusionMatrixEntry
                          .fromJson(
                              value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (annotationSpec != null) 'annotationSpec': annotationSpec!.toJson(),
        if (entries != null)
          'entries': entries!.map((value) => value.toJson()).toList(),
      };
}

/// Results of searching evaluations.
class GoogleCloudDatalabelingV1beta1SearchEvaluationsResponse {
  /// The list of evaluations matching the search.
  core.List<GoogleCloudDatalabelingV1beta1Evaluation>? evaluations;

  /// A token to retrieve next page of results.
  core.String? nextPageToken;

  GoogleCloudDatalabelingV1beta1SearchEvaluationsResponse({
    this.evaluations,
    this.nextPageToken,
  });

  GoogleCloudDatalabelingV1beta1SearchEvaluationsResponse.fromJson(
      core.Map _json)
      : this(
          evaluations: _json.containsKey('evaluations')
              ? (_json['evaluations'] as core.List)
                  .map((value) =>
                      GoogleCloudDatalabelingV1beta1Evaluation.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          nextPageToken: _json.containsKey('nextPageToken')
              ? _json['nextPageToken'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (evaluations != null)
          'evaluations': evaluations!.map((value) => value.toJson()).toList(),
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
      };
}

/// Request message of SearchExampleComparisons.
class GoogleCloudDatalabelingV1beta1SearchExampleComparisonsRequest {
  /// Requested page size.
  ///
  /// Server may return fewer results than requested. Default value is 100.
  ///
  /// Optional.
  core.int? pageSize;

  /// A token identifying a page of results for the server to return.
  ///
  /// Typically obtained by the nextPageToken of the response to a previous
  /// search rquest. If you don't specify this field, the API call requests the
  /// first page of the search.
  ///
  /// Optional.
  core.String? pageToken;

  GoogleCloudDatalabelingV1beta1SearchExampleComparisonsRequest({
    this.pageSize,
    this.pageToken,
  });

  GoogleCloudDatalabelingV1beta1SearchExampleComparisonsRequest.fromJson(
      core.Map _json)
      : this(
          pageSize: _json.containsKey('pageSize')
              ? _json['pageSize'] as core.int
              : null,
          pageToken: _json.containsKey('pageToken')
              ? _json['pageToken'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (pageSize != null) 'pageSize': pageSize!,
        if (pageToken != null) 'pageToken': pageToken!,
      };
}

/// Results of searching example comparisons.
class GoogleCloudDatalabelingV1beta1SearchExampleComparisonsResponse {
  /// A list of example comparisons matching the search criteria.
  core.List<GoogleCloudDatalabelingV1beta1ExampleComparison>?
      exampleComparisons;

  /// A token to retrieve next page of results.
  core.String? nextPageToken;

  GoogleCloudDatalabelingV1beta1SearchExampleComparisonsResponse({
    this.exampleComparisons,
    this.nextPageToken,
  });

  GoogleCloudDatalabelingV1beta1SearchExampleComparisonsResponse.fromJson(
      core.Map _json)
      : this(
          exampleComparisons: _json.containsKey('exampleComparisons')
              ? (_json['exampleComparisons'] as core.List)
                  .map((value) =>
                      GoogleCloudDatalabelingV1beta1ExampleComparison.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          nextPageToken: _json.containsKey('nextPageToken')
              ? _json['nextPageToken'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (exampleComparisons != null)
          'exampleComparisons':
              exampleComparisons!.map((value) => value.toJson()).toList(),
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
      };
}

/// Config for image segmentation
class GoogleCloudDatalabelingV1beta1SegmentationConfig {
  /// Annotation spec set resource name.
  ///
  /// format: projects/{project_id}/annotationSpecSets/{annotation_spec_set_id}
  ///
  /// Required.
  core.String? annotationSpecSet;

  /// Instruction message showed on labelers UI.
  core.String? instructionMessage;

  GoogleCloudDatalabelingV1beta1SegmentationConfig({
    this.annotationSpecSet,
    this.instructionMessage,
  });

  GoogleCloudDatalabelingV1beta1SegmentationConfig.fromJson(core.Map _json)
      : this(
          annotationSpecSet: _json.containsKey('annotationSpecSet')
              ? _json['annotationSpecSet'] as core.String
              : null,
          instructionMessage: _json.containsKey('instructionMessage')
              ? _json['instructionMessage'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (annotationSpecSet != null) 'annotationSpecSet': annotationSpecSet!,
        if (instructionMessage != null)
          'instructionMessage': instructionMessage!,
      };
}

/// Config for setting up sentiments.
class GoogleCloudDatalabelingV1beta1SentimentConfig {
  /// If set to true, contributors will have the option to select sentiment of
  /// the label they selected, to mark it as negative or positive label.
  ///
  /// Default is false.
  core.bool? enableLabelSentimentSelection;

  GoogleCloudDatalabelingV1beta1SentimentConfig({
    this.enableLabelSentimentSelection,
  });

  GoogleCloudDatalabelingV1beta1SentimentConfig.fromJson(core.Map _json)
      : this(
          enableLabelSentimentSelection:
              _json.containsKey('enableLabelSentimentSelection')
                  ? _json['enableLabelSentimentSelection'] as core.bool
                  : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (enableLabelSentimentSelection != null)
          'enableLabelSentimentSelection': enableLabelSentimentSelection!,
      };
}

/// Start and end position in a sequence (e.g. text segment).
class GoogleCloudDatalabelingV1beta1SequentialSegment {
  /// End position (exclusive).
  core.int? end;

  /// Start position (inclusive).
  core.int? start;

  GoogleCloudDatalabelingV1beta1SequentialSegment({
    this.end,
    this.start,
  });

  GoogleCloudDatalabelingV1beta1SequentialSegment.fromJson(core.Map _json)
      : this(
          end: _json.containsKey('end') ? _json['end'] as core.int : null,
          start: _json.containsKey('start') ? _json['start'] as core.int : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (end != null) 'end': end!,
        if (start != null) 'start': start!,
      };
}

/// Text classification annotation.
class GoogleCloudDatalabelingV1beta1TextClassificationAnnotation {
  /// Label of the text.
  GoogleCloudDatalabelingV1beta1AnnotationSpec? annotationSpec;

  GoogleCloudDatalabelingV1beta1TextClassificationAnnotation({
    this.annotationSpec,
  });

  GoogleCloudDatalabelingV1beta1TextClassificationAnnotation.fromJson(
      core.Map _json)
      : this(
          annotationSpec: _json.containsKey('annotationSpec')
              ? GoogleCloudDatalabelingV1beta1AnnotationSpec.fromJson(
                  _json['annotationSpec']
                      as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (annotationSpec != null) 'annotationSpec': annotationSpec!.toJson(),
      };
}

/// Config for text classification human labeling task.
class GoogleCloudDatalabelingV1beta1TextClassificationConfig {
  /// If allow_multi_label is true, contributors are able to choose multiple
  /// labels for one text segment.
  ///
  /// Optional.
  core.bool? allowMultiLabel;

  /// Annotation spec set resource name.
  ///
  /// Required.
  core.String? annotationSpecSet;

  /// Configs for sentiment selection.
  ///
  /// We deprecate sentiment analysis in data labeling side as it is
  /// incompatible with uCAIP.
  ///
  /// Optional.
  GoogleCloudDatalabelingV1beta1SentimentConfig? sentimentConfig;

  GoogleCloudDatalabelingV1beta1TextClassificationConfig({
    this.allowMultiLabel,
    this.annotationSpecSet,
    this.sentimentConfig,
  });

  GoogleCloudDatalabelingV1beta1TextClassificationConfig.fromJson(
      core.Map _json)
      : this(
          allowMultiLabel: _json.containsKey('allowMultiLabel')
              ? _json['allowMultiLabel'] as core.bool
              : null,
          annotationSpecSet: _json.containsKey('annotationSpecSet')
              ? _json['annotationSpecSet'] as core.String
              : null,
          sentimentConfig: _json.containsKey('sentimentConfig')
              ? GoogleCloudDatalabelingV1beta1SentimentConfig.fromJson(
                  _json['sentimentConfig']
                      as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (allowMultiLabel != null) 'allowMultiLabel': allowMultiLabel!,
        if (annotationSpecSet != null) 'annotationSpecSet': annotationSpecSet!,
        if (sentimentConfig != null)
          'sentimentConfig': sentimentConfig!.toJson(),
      };
}

/// Text entity extraction annotation.
class GoogleCloudDatalabelingV1beta1TextEntityExtractionAnnotation {
  /// Label of the text entities.
  GoogleCloudDatalabelingV1beta1AnnotationSpec? annotationSpec;

  /// Position of the entity.
  GoogleCloudDatalabelingV1beta1SequentialSegment? sequentialSegment;

  GoogleCloudDatalabelingV1beta1TextEntityExtractionAnnotation({
    this.annotationSpec,
    this.sequentialSegment,
  });

  GoogleCloudDatalabelingV1beta1TextEntityExtractionAnnotation.fromJson(
      core.Map _json)
      : this(
          annotationSpec: _json.containsKey('annotationSpec')
              ? GoogleCloudDatalabelingV1beta1AnnotationSpec.fromJson(
                  _json['annotationSpec']
                      as core.Map<core.String, core.dynamic>)
              : null,
          sequentialSegment: _json.containsKey('sequentialSegment')
              ? GoogleCloudDatalabelingV1beta1SequentialSegment.fromJson(
                  _json['sequentialSegment']
                      as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (annotationSpec != null) 'annotationSpec': annotationSpec!.toJson(),
        if (sequentialSegment != null)
          'sequentialSegment': sequentialSegment!.toJson(),
      };
}

/// Config for text entity extraction human labeling task.
class GoogleCloudDatalabelingV1beta1TextEntityExtractionConfig {
  /// Annotation spec set resource name.
  ///
  /// Required.
  core.String? annotationSpecSet;

  GoogleCloudDatalabelingV1beta1TextEntityExtractionConfig({
    this.annotationSpecSet,
  });

  GoogleCloudDatalabelingV1beta1TextEntityExtractionConfig.fromJson(
      core.Map _json)
      : this(
          annotationSpecSet: _json.containsKey('annotationSpecSet')
              ? _json['annotationSpecSet'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (annotationSpecSet != null) 'annotationSpecSet': annotationSpecSet!,
      };
}

/// Metadata for the text.
class GoogleCloudDatalabelingV1beta1TextMetadata {
  /// The language of this text, as a
  /// \[BCP-47\](https://www.rfc-editor.org/rfc/bcp/bcp47.txt).
  ///
  /// Default value is en-US.
  core.String? languageCode;

  GoogleCloudDatalabelingV1beta1TextMetadata({
    this.languageCode,
  });

  GoogleCloudDatalabelingV1beta1TextMetadata.fromJson(core.Map _json)
      : this(
          languageCode: _json.containsKey('languageCode')
              ? _json['languageCode'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (languageCode != null) 'languageCode': languageCode!,
      };
}

/// Container of information about a piece of text.
class GoogleCloudDatalabelingV1beta1TextPayload {
  /// Text content.
  core.String? textContent;

  GoogleCloudDatalabelingV1beta1TextPayload({
    this.textContent,
  });

  GoogleCloudDatalabelingV1beta1TextPayload.fromJson(core.Map _json)
      : this(
          textContent: _json.containsKey('textContent')
              ? _json['textContent'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (textContent != null) 'textContent': textContent!,
      };
}

/// A time period inside of an example that has a time dimension (e.g. video).
class GoogleCloudDatalabelingV1beta1TimeSegment {
  /// End of the time segment (exclusive), represented as the duration since the
  /// example start.
  core.String? endTimeOffset;

  /// Start of the time segment (inclusive), represented as the duration since
  /// the example start.
  core.String? startTimeOffset;

  GoogleCloudDatalabelingV1beta1TimeSegment({
    this.endTimeOffset,
    this.startTimeOffset,
  });

  GoogleCloudDatalabelingV1beta1TimeSegment.fromJson(core.Map _json)
      : this(
          endTimeOffset: _json.containsKey('endTimeOffset')
              ? _json['endTimeOffset'] as core.String
              : null,
          startTimeOffset: _json.containsKey('startTimeOffset')
              ? _json['startTimeOffset'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (endTimeOffset != null) 'endTimeOffset': endTimeOffset!,
        if (startTimeOffset != null) 'startTimeOffset': startTimeOffset!,
      };
}

/// A vertex represents a 2D point in the image.
///
/// NOTE: the vertex coordinates are in the same scale as the original image.
class GoogleCloudDatalabelingV1beta1Vertex {
  /// X coordinate.
  core.int? x;

  /// Y coordinate.
  core.int? y;

  GoogleCloudDatalabelingV1beta1Vertex({
    this.x,
    this.y,
  });

  GoogleCloudDatalabelingV1beta1Vertex.fromJson(core.Map _json)
      : this(
          x: _json.containsKey('x') ? _json['x'] as core.int : null,
          y: _json.containsKey('y') ? _json['y'] as core.int : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (x != null) 'x': x!,
        if (y != null) 'y': y!,
      };
}

/// Video classification annotation.
class GoogleCloudDatalabelingV1beta1VideoClassificationAnnotation {
  /// Label of the segment specified by time_segment.
  GoogleCloudDatalabelingV1beta1AnnotationSpec? annotationSpec;

  /// The time segment of the video to which the annotation applies.
  GoogleCloudDatalabelingV1beta1TimeSegment? timeSegment;

  GoogleCloudDatalabelingV1beta1VideoClassificationAnnotation({
    this.annotationSpec,
    this.timeSegment,
  });

  GoogleCloudDatalabelingV1beta1VideoClassificationAnnotation.fromJson(
      core.Map _json)
      : this(
          annotationSpec: _json.containsKey('annotationSpec')
              ? GoogleCloudDatalabelingV1beta1AnnotationSpec.fromJson(
                  _json['annotationSpec']
                      as core.Map<core.String, core.dynamic>)
              : null,
          timeSegment: _json.containsKey('timeSegment')
              ? GoogleCloudDatalabelingV1beta1TimeSegment.fromJson(
                  _json['timeSegment'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (annotationSpec != null) 'annotationSpec': annotationSpec!.toJson(),
        if (timeSegment != null) 'timeSegment': timeSegment!.toJson(),
      };
}

/// Config for video classification human labeling task.
///
/// Currently two types of video classification are supported: 1. Assign labels
/// on the entire video. 2. Split the video into multiple video clips based on
/// camera shot, and assign labels on each video clip.
class GoogleCloudDatalabelingV1beta1VideoClassificationConfig {
  /// The list of annotation spec set configs.
  ///
  /// Since watching a video clip takes much longer time than an image, we
  /// support label with multiple AnnotationSpecSet at the same time. Labels in
  /// each AnnotationSpecSet will be shown in a group to contributors.
  /// Contributors can select one or more (depending on whether to allow multi
  /// label) from each group.
  ///
  /// Required.
  core.List<GoogleCloudDatalabelingV1beta1AnnotationSpecSetConfig>?
      annotationSpecSetConfigs;

  /// Option to apply shot detection on the video.
  ///
  /// Optional.
  core.bool? applyShotDetection;

  GoogleCloudDatalabelingV1beta1VideoClassificationConfig({
    this.annotationSpecSetConfigs,
    this.applyShotDetection,
  });

  GoogleCloudDatalabelingV1beta1VideoClassificationConfig.fromJson(
      core.Map _json)
      : this(
          annotationSpecSetConfigs:
              _json.containsKey('annotationSpecSetConfigs')
                  ? (_json['annotationSpecSetConfigs'] as core.List)
                      .map((value) =>
                          GoogleCloudDatalabelingV1beta1AnnotationSpecSetConfig
                              .fromJson(
                                  value as core.Map<core.String, core.dynamic>))
                      .toList()
                  : null,
          applyShotDetection: _json.containsKey('applyShotDetection')
              ? _json['applyShotDetection'] as core.bool
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (annotationSpecSetConfigs != null)
          'annotationSpecSetConfigs':
              annotationSpecSetConfigs!.map((value) => value.toJson()).toList(),
        if (applyShotDetection != null)
          'applyShotDetection': applyShotDetection!,
      };
}

/// Video event annotation.
class GoogleCloudDatalabelingV1beta1VideoEventAnnotation {
  /// Label of the event in this annotation.
  GoogleCloudDatalabelingV1beta1AnnotationSpec? annotationSpec;

  /// The time segment of the video to which the annotation applies.
  GoogleCloudDatalabelingV1beta1TimeSegment? timeSegment;

  GoogleCloudDatalabelingV1beta1VideoEventAnnotation({
    this.annotationSpec,
    this.timeSegment,
  });

  GoogleCloudDatalabelingV1beta1VideoEventAnnotation.fromJson(core.Map _json)
      : this(
          annotationSpec: _json.containsKey('annotationSpec')
              ? GoogleCloudDatalabelingV1beta1AnnotationSpec.fromJson(
                  _json['annotationSpec']
                      as core.Map<core.String, core.dynamic>)
              : null,
          timeSegment: _json.containsKey('timeSegment')
              ? GoogleCloudDatalabelingV1beta1TimeSegment.fromJson(
                  _json['timeSegment'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (annotationSpec != null) 'annotationSpec': annotationSpec!.toJson(),
        if (timeSegment != null) 'timeSegment': timeSegment!.toJson(),
      };
}

/// Video object tracking annotation.
class GoogleCloudDatalabelingV1beta1VideoObjectTrackingAnnotation {
  /// Label of the object tracked in this annotation.
  GoogleCloudDatalabelingV1beta1AnnotationSpec? annotationSpec;

  /// The list of frames where this object track appears.
  core.List<GoogleCloudDatalabelingV1beta1ObjectTrackingFrame>?
      objectTrackingFrames;

  /// The time segment of the video to which object tracking applies.
  GoogleCloudDatalabelingV1beta1TimeSegment? timeSegment;

  GoogleCloudDatalabelingV1beta1VideoObjectTrackingAnnotation({
    this.annotationSpec,
    this.objectTrackingFrames,
    this.timeSegment,
  });

  GoogleCloudDatalabelingV1beta1VideoObjectTrackingAnnotation.fromJson(
      core.Map _json)
      : this(
          annotationSpec: _json.containsKey('annotationSpec')
              ? GoogleCloudDatalabelingV1beta1AnnotationSpec.fromJson(
                  _json['annotationSpec']
                      as core.Map<core.String, core.dynamic>)
              : null,
          objectTrackingFrames: _json.containsKey('objectTrackingFrames')
              ? (_json['objectTrackingFrames'] as core.List)
                  .map((value) =>
                      GoogleCloudDatalabelingV1beta1ObjectTrackingFrame
                          .fromJson(
                              value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          timeSegment: _json.containsKey('timeSegment')
              ? GoogleCloudDatalabelingV1beta1TimeSegment.fromJson(
                  _json['timeSegment'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (annotationSpec != null) 'annotationSpec': annotationSpec!.toJson(),
        if (objectTrackingFrames != null)
          'objectTrackingFrames':
              objectTrackingFrames!.map((value) => value.toJson()).toList(),
        if (timeSegment != null) 'timeSegment': timeSegment!.toJson(),
      };
}

/// Container of information of a video.
class GoogleCloudDatalabelingV1beta1VideoPayload {
  /// FPS of the video.
  core.double? frameRate;

  /// Video format.
  core.String? mimeType;

  /// Signed uri of the video file in the service bucket.
  core.String? signedUri;

  /// The list of video thumbnails.
  core.List<GoogleCloudDatalabelingV1beta1VideoThumbnail>? videoThumbnails;

  /// Video uri from the user bucket.
  core.String? videoUri;

  GoogleCloudDatalabelingV1beta1VideoPayload({
    this.frameRate,
    this.mimeType,
    this.signedUri,
    this.videoThumbnails,
    this.videoUri,
  });

  GoogleCloudDatalabelingV1beta1VideoPayload.fromJson(core.Map _json)
      : this(
          frameRate: _json.containsKey('frameRate')
              ? (_json['frameRate'] as core.num).toDouble()
              : null,
          mimeType: _json.containsKey('mimeType')
              ? _json['mimeType'] as core.String
              : null,
          signedUri: _json.containsKey('signedUri')
              ? _json['signedUri'] as core.String
              : null,
          videoThumbnails: _json.containsKey('videoThumbnails')
              ? (_json['videoThumbnails'] as core.List)
                  .map((value) =>
                      GoogleCloudDatalabelingV1beta1VideoThumbnail.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          videoUri: _json.containsKey('videoUri')
              ? _json['videoUri'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (frameRate != null) 'frameRate': frameRate!,
        if (mimeType != null) 'mimeType': mimeType!,
        if (signedUri != null) 'signedUri': signedUri!,
        if (videoThumbnails != null)
          'videoThumbnails':
              videoThumbnails!.map((value) => value.toJson()).toList(),
        if (videoUri != null) 'videoUri': videoUri!,
      };
}

/// Container of information of a video thumbnail.
class GoogleCloudDatalabelingV1beta1VideoThumbnail {
  /// A byte string of the video frame.
  core.String? thumbnail;
  core.List<core.int> get thumbnailAsBytes => convert.base64.decode(thumbnail!);

  set thumbnailAsBytes(core.List<core.int> _bytes) {
    thumbnail =
        convert.base64.encode(_bytes).replaceAll('/', '_').replaceAll('+', '-');
  }

  /// Time offset relative to the beginning of the video, corresponding to the
  /// video frame where the thumbnail has been extracted from.
  core.String? timeOffset;

  GoogleCloudDatalabelingV1beta1VideoThumbnail({
    this.thumbnail,
    this.timeOffset,
  });

  GoogleCloudDatalabelingV1beta1VideoThumbnail.fromJson(core.Map _json)
      : this(
          thumbnail: _json.containsKey('thumbnail')
              ? _json['thumbnail'] as core.String
              : null,
          timeOffset: _json.containsKey('timeOffset')
              ? _json['timeOffset'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (thumbnail != null) 'thumbnail': thumbnail!,
        if (timeOffset != null) 'timeOffset': timeOffset!,
      };
}

/// Metadata of a CreateInstruction operation.
class GoogleCloudDatalabelingV1p1alpha1CreateInstructionMetadata {
  /// Timestamp when create instruction request was created.
  core.String? createTime;

  /// The name of the created Instruction.
  ///
  /// projects/{project_id}/instructions/{instruction_id}
  core.String? instruction;

  /// Partial failures encountered.
  ///
  /// E.g. single files that couldn't be read. Status details field will contain
  /// standard GCP error details.
  core.List<GoogleRpcStatus>? partialFailures;

  GoogleCloudDatalabelingV1p1alpha1CreateInstructionMetadata({
    this.createTime,
    this.instruction,
    this.partialFailures,
  });

  GoogleCloudDatalabelingV1p1alpha1CreateInstructionMetadata.fromJson(
      core.Map _json)
      : this(
          createTime: _json.containsKey('createTime')
              ? _json['createTime'] as core.String
              : null,
          instruction: _json.containsKey('instruction')
              ? _json['instruction'] as core.String
              : null,
          partialFailures: _json.containsKey('partialFailures')
              ? (_json['partialFailures'] as core.List)
                  .map((value) => GoogleRpcStatus.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (createTime != null) 'createTime': createTime!,
        if (instruction != null) 'instruction': instruction!,
        if (partialFailures != null)
          'partialFailures':
              partialFailures!.map((value) => value.toJson()).toList(),
      };
}

/// Metadata of an ExportData operation.
class GoogleCloudDatalabelingV1p1alpha1ExportDataOperationMetadata {
  /// The name of annotated dataset in format "projects / * /datasets / *
  /// /annotatedDatasets / * ".
  ///
  /// Output only.
  core.String? annotatedDataset;

  /// Timestamp when export dataset request was created.
  ///
  /// Output only.
  core.String? createTime;

  /// The name of dataset to be exported.
  ///
  /// "projects / * /datasets / * "
  ///
  /// Output only.
  core.String? dataset;

  /// Partial failures encountered.
  ///
  /// E.g. single files that couldn't be read. Status details field will contain
  /// standard GCP error details.
  ///
  /// Output only.
  core.List<GoogleRpcStatus>? partialFailures;

  GoogleCloudDatalabelingV1p1alpha1ExportDataOperationMetadata({
    this.annotatedDataset,
    this.createTime,
    this.dataset,
    this.partialFailures,
  });

  GoogleCloudDatalabelingV1p1alpha1ExportDataOperationMetadata.fromJson(
      core.Map _json)
      : this(
          annotatedDataset: _json.containsKey('annotatedDataset')
              ? _json['annotatedDataset'] as core.String
              : null,
          createTime: _json.containsKey('createTime')
              ? _json['createTime'] as core.String
              : null,
          dataset: _json.containsKey('dataset')
              ? _json['dataset'] as core.String
              : null,
          partialFailures: _json.containsKey('partialFailures')
              ? (_json['partialFailures'] as core.List)
                  .map((value) => GoogleRpcStatus.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (annotatedDataset != null) 'annotatedDataset': annotatedDataset!,
        if (createTime != null) 'createTime': createTime!,
        if (dataset != null) 'dataset': dataset!,
        if (partialFailures != null)
          'partialFailures':
              partialFailures!.map((value) => value.toJson()).toList(),
      };
}

/// Response used for ExportDataset longrunning operation.
class GoogleCloudDatalabelingV1p1alpha1ExportDataOperationResponse {
  /// The name of annotated dataset in format "projects / * /datasets / *
  /// /annotatedDatasets / * ".
  ///
  /// Output only.
  core.String? annotatedDataset;

  /// Ouptut only.
  ///
  /// The name of dataset. "projects / * /datasets / * "
  core.String? dataset;

  /// Number of examples exported successfully.
  ///
  /// Output only.
  core.int? exportCount;

  /// Statistic infos of labels in the exported dataset.
  ///
  /// Output only.
  GoogleCloudDatalabelingV1p1alpha1LabelStats? labelStats;

  /// output_config in the ExportData request.
  ///
  /// Output only.
  GoogleCloudDatalabelingV1p1alpha1OutputConfig? outputConfig;

  /// Total number of examples requested to export
  ///
  /// Output only.
  core.int? totalCount;

  GoogleCloudDatalabelingV1p1alpha1ExportDataOperationResponse({
    this.annotatedDataset,
    this.dataset,
    this.exportCount,
    this.labelStats,
    this.outputConfig,
    this.totalCount,
  });

  GoogleCloudDatalabelingV1p1alpha1ExportDataOperationResponse.fromJson(
      core.Map _json)
      : this(
          annotatedDataset: _json.containsKey('annotatedDataset')
              ? _json['annotatedDataset'] as core.String
              : null,
          dataset: _json.containsKey('dataset')
              ? _json['dataset'] as core.String
              : null,
          exportCount: _json.containsKey('exportCount')
              ? _json['exportCount'] as core.int
              : null,
          labelStats: _json.containsKey('labelStats')
              ? GoogleCloudDatalabelingV1p1alpha1LabelStats.fromJson(
                  _json['labelStats'] as core.Map<core.String, core.dynamic>)
              : null,
          outputConfig: _json.containsKey('outputConfig')
              ? GoogleCloudDatalabelingV1p1alpha1OutputConfig.fromJson(
                  _json['outputConfig'] as core.Map<core.String, core.dynamic>)
              : null,
          totalCount: _json.containsKey('totalCount')
              ? _json['totalCount'] as core.int
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (annotatedDataset != null) 'annotatedDataset': annotatedDataset!,
        if (dataset != null) 'dataset': dataset!,
        if (exportCount != null) 'exportCount': exportCount!,
        if (labelStats != null) 'labelStats': labelStats!.toJson(),
        if (outputConfig != null) 'outputConfig': outputConfig!.toJson(),
        if (totalCount != null) 'totalCount': totalCount!,
      };
}

/// Export destination of the data.Only gcs path is allowed in output_uri.
class GoogleCloudDatalabelingV1p1alpha1GcsDestination {
  /// The format of the gcs destination.
  ///
  /// Only "text/csv" and "application/json" are supported.
  ///
  /// Required.
  core.String? mimeType;

  /// The output uri of destination file.
  ///
  /// Required.
  core.String? outputUri;

  GoogleCloudDatalabelingV1p1alpha1GcsDestination({
    this.mimeType,
    this.outputUri,
  });

  GoogleCloudDatalabelingV1p1alpha1GcsDestination.fromJson(core.Map _json)
      : this(
          mimeType: _json.containsKey('mimeType')
              ? _json['mimeType'] as core.String
              : null,
          outputUri: _json.containsKey('outputUri')
              ? _json['outputUri'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (mimeType != null) 'mimeType': mimeType!,
        if (outputUri != null) 'outputUri': outputUri!,
      };
}

/// Export folder destination of the data.
class GoogleCloudDatalabelingV1p1alpha1GcsFolderDestination {
  /// Cloud Storage directory to export data to.
  ///
  /// Required.
  core.String? outputFolderUri;

  GoogleCloudDatalabelingV1p1alpha1GcsFolderDestination({
    this.outputFolderUri,
  });

  GoogleCloudDatalabelingV1p1alpha1GcsFolderDestination.fromJson(core.Map _json)
      : this(
          outputFolderUri: _json.containsKey('outputFolderUri')
              ? _json['outputFolderUri'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (outputFolderUri != null) 'outputFolderUri': outputFolderUri!,
      };
}

/// Metadata of an GenerateAnalysisReport operation.
class GoogleCloudDatalabelingV1p1alpha1GenerateAnalysisReportOperationMetadata {
  /// Timestamp when generate report request was created.
  core.String? createTime;

  /// The name of the dataset for which the analysis report is generated.
  ///
  /// Format: "projects / * /datasets / * "
  core.String? dataset;

  GoogleCloudDatalabelingV1p1alpha1GenerateAnalysisReportOperationMetadata({
    this.createTime,
    this.dataset,
  });

  GoogleCloudDatalabelingV1p1alpha1GenerateAnalysisReportOperationMetadata.fromJson(
      core.Map _json)
      : this(
          createTime: _json.containsKey('createTime')
              ? _json['createTime'] as core.String
              : null,
          dataset: _json.containsKey('dataset')
              ? _json['dataset'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (createTime != null) 'createTime': createTime!,
        if (dataset != null) 'dataset': dataset!,
      };
}

/// Configuration for how human labeling task should be done.
class GoogleCloudDatalabelingV1p1alpha1HumanAnnotationConfig {
  /// A human-readable description for AnnotatedDataset.
  ///
  /// The description can be up to 10000 characters long.
  ///
  /// Optional.
  core.String? annotatedDatasetDescription;

  /// A human-readable name for AnnotatedDataset defined by users.
  ///
  /// Maximum of 64 characters .
  ///
  /// Required.
  core.String? annotatedDatasetDisplayName;

  /// If you want your own labeling contributors to manage and work on this
  /// labeling request, you can set these contributors here.
  ///
  /// We will give them access to the question types in crowdcompute. Note that
  /// these emails must be registered in crowdcompute worker UI:
  /// https://crowd-compute.appspot.com/
  ///
  /// Optional.
  core.List<core.String>? contributorEmails;

  /// Instruction resource name.
  ///
  /// Required.
  core.String? instruction;

  /// A human-readable label used to logically group labeling tasks.
  ///
  /// This string must match the regular expression `[a-zA-Z\\d_-]{0,128}`.
  ///
  /// Optional.
  core.String? labelGroup;

  /// The Language of this question, as a
  /// \[BCP-47\](https://www.rfc-editor.org/rfc/bcp/bcp47.txt).
  ///
  /// Default value is en-US. Only need to set this when task is language
  /// related. For example, French text classification.
  ///
  /// Optional.
  core.String? languageCode;

  /// Maximum duration for contributors to answer a question.
  ///
  /// Maximum is 3600 seconds. Default is 3600 seconds.
  ///
  /// Optional.
  core.String? questionDuration;

  /// Replication of questions.
  ///
  /// Each question will be sent to up to this number of contributors to label.
  /// Aggregated answers will be returned. Default is set to 1. For image
  /// related labeling, valid values are 1, 3, 5.
  ///
  /// Optional.
  core.int? replicaCount;

  /// Email of the user who started the labeling task and should be notified by
  /// email.
  ///
  /// If empty no notification will be sent.
  core.String? userEmailAddress;

  GoogleCloudDatalabelingV1p1alpha1HumanAnnotationConfig({
    this.annotatedDatasetDescription,
    this.annotatedDatasetDisplayName,
    this.contributorEmails,
    this.instruction,
    this.labelGroup,
    this.languageCode,
    this.questionDuration,
    this.replicaCount,
    this.userEmailAddress,
  });

  GoogleCloudDatalabelingV1p1alpha1HumanAnnotationConfig.fromJson(
      core.Map _json)
      : this(
          annotatedDatasetDescription:
              _json.containsKey('annotatedDatasetDescription')
                  ? _json['annotatedDatasetDescription'] as core.String
                  : null,
          annotatedDatasetDisplayName:
              _json.containsKey('annotatedDatasetDisplayName')
                  ? _json['annotatedDatasetDisplayName'] as core.String
                  : null,
          contributorEmails: _json.containsKey('contributorEmails')
              ? (_json['contributorEmails'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          instruction: _json.containsKey('instruction')
              ? _json['instruction'] as core.String
              : null,
          labelGroup: _json.containsKey('labelGroup')
              ? _json['labelGroup'] as core.String
              : null,
          languageCode: _json.containsKey('languageCode')
              ? _json['languageCode'] as core.String
              : null,
          questionDuration: _json.containsKey('questionDuration')
              ? _json['questionDuration'] as core.String
              : null,
          replicaCount: _json.containsKey('replicaCount')
              ? _json['replicaCount'] as core.int
              : null,
          userEmailAddress: _json.containsKey('userEmailAddress')
              ? _json['userEmailAddress'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (annotatedDatasetDescription != null)
          'annotatedDatasetDescription': annotatedDatasetDescription!,
        if (annotatedDatasetDisplayName != null)
          'annotatedDatasetDisplayName': annotatedDatasetDisplayName!,
        if (contributorEmails != null) 'contributorEmails': contributorEmails!,
        if (instruction != null) 'instruction': instruction!,
        if (labelGroup != null) 'labelGroup': labelGroup!,
        if (languageCode != null) 'languageCode': languageCode!,
        if (questionDuration != null) 'questionDuration': questionDuration!,
        if (replicaCount != null) 'replicaCount': replicaCount!,
        if (userEmailAddress != null) 'userEmailAddress': userEmailAddress!,
      };
}

/// Metadata of an ImportData operation.
class GoogleCloudDatalabelingV1p1alpha1ImportDataOperationMetadata {
  /// Timestamp when import dataset request was created.
  ///
  /// Output only.
  core.String? createTime;

  /// The name of imported dataset.
  ///
  /// "projects / * /datasets / * "
  ///
  /// Output only.
  core.String? dataset;

  /// Partial failures encountered.
  ///
  /// E.g. single files that couldn't be read. Status details field will contain
  /// standard GCP error details.
  ///
  /// Output only.
  core.List<GoogleRpcStatus>? partialFailures;

  GoogleCloudDatalabelingV1p1alpha1ImportDataOperationMetadata({
    this.createTime,
    this.dataset,
    this.partialFailures,
  });

  GoogleCloudDatalabelingV1p1alpha1ImportDataOperationMetadata.fromJson(
      core.Map _json)
      : this(
          createTime: _json.containsKey('createTime')
              ? _json['createTime'] as core.String
              : null,
          dataset: _json.containsKey('dataset')
              ? _json['dataset'] as core.String
              : null,
          partialFailures: _json.containsKey('partialFailures')
              ? (_json['partialFailures'] as core.List)
                  .map((value) => GoogleRpcStatus.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (createTime != null) 'createTime': createTime!,
        if (dataset != null) 'dataset': dataset!,
        if (partialFailures != null)
          'partialFailures':
              partialFailures!.map((value) => value.toJson()).toList(),
      };
}

/// Response used for ImportData longrunning operation.
class GoogleCloudDatalabelingV1p1alpha1ImportDataOperationResponse {
  /// Ouptut only.
  ///
  /// The name of imported dataset.
  core.String? dataset;

  /// Number of examples imported successfully.
  ///
  /// Output only.
  core.int? importCount;

  /// Total number of examples requested to import
  ///
  /// Output only.
  core.int? totalCount;

  GoogleCloudDatalabelingV1p1alpha1ImportDataOperationResponse({
    this.dataset,
    this.importCount,
    this.totalCount,
  });

  GoogleCloudDatalabelingV1p1alpha1ImportDataOperationResponse.fromJson(
      core.Map _json)
      : this(
          dataset: _json.containsKey('dataset')
              ? _json['dataset'] as core.String
              : null,
          importCount: _json.containsKey('importCount')
              ? _json['importCount'] as core.int
              : null,
          totalCount: _json.containsKey('totalCount')
              ? _json['totalCount'] as core.int
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (dataset != null) 'dataset': dataset!,
        if (importCount != null) 'importCount': importCount!,
        if (totalCount != null) 'totalCount': totalCount!,
      };
}

/// Details of a LabelImageBoundingBox operation metadata.
class GoogleCloudDatalabelingV1p1alpha1LabelImageBoundingBoxOperationMetadata {
  /// Basic human annotation config used in labeling request.
  GoogleCloudDatalabelingV1p1alpha1HumanAnnotationConfig? basicConfig;

  GoogleCloudDatalabelingV1p1alpha1LabelImageBoundingBoxOperationMetadata({
    this.basicConfig,
  });

  GoogleCloudDatalabelingV1p1alpha1LabelImageBoundingBoxOperationMetadata.fromJson(
      core.Map _json)
      : this(
          basicConfig: _json.containsKey('basicConfig')
              ? GoogleCloudDatalabelingV1p1alpha1HumanAnnotationConfig.fromJson(
                  _json['basicConfig'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (basicConfig != null) 'basicConfig': basicConfig!.toJson(),
      };
}

/// Details of LabelImageBoundingPoly operation metadata.
class GoogleCloudDatalabelingV1p1alpha1LabelImageBoundingPolyOperationMetadata {
  /// Basic human annotation config used in labeling request.
  GoogleCloudDatalabelingV1p1alpha1HumanAnnotationConfig? basicConfig;

  GoogleCloudDatalabelingV1p1alpha1LabelImageBoundingPolyOperationMetadata({
    this.basicConfig,
  });

  GoogleCloudDatalabelingV1p1alpha1LabelImageBoundingPolyOperationMetadata.fromJson(
      core.Map _json)
      : this(
          basicConfig: _json.containsKey('basicConfig')
              ? GoogleCloudDatalabelingV1p1alpha1HumanAnnotationConfig.fromJson(
                  _json['basicConfig'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (basicConfig != null) 'basicConfig': basicConfig!.toJson(),
      };
}

/// Metadata of a LabelImageClassification operation.
class GoogleCloudDatalabelingV1p1alpha1LabelImageClassificationOperationMetadata {
  /// Basic human annotation config used in labeling request.
  GoogleCloudDatalabelingV1p1alpha1HumanAnnotationConfig? basicConfig;

  GoogleCloudDatalabelingV1p1alpha1LabelImageClassificationOperationMetadata({
    this.basicConfig,
  });

  GoogleCloudDatalabelingV1p1alpha1LabelImageClassificationOperationMetadata.fromJson(
      core.Map _json)
      : this(
          basicConfig: _json.containsKey('basicConfig')
              ? GoogleCloudDatalabelingV1p1alpha1HumanAnnotationConfig.fromJson(
                  _json['basicConfig'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (basicConfig != null) 'basicConfig': basicConfig!.toJson(),
      };
}

/// Details of a LabelImageOrientedBoundingBox operation metadata.
class GoogleCloudDatalabelingV1p1alpha1LabelImageOrientedBoundingBoxOperationMetadata {
  /// Basic human annotation config.
  GoogleCloudDatalabelingV1p1alpha1HumanAnnotationConfig? basicConfig;

  GoogleCloudDatalabelingV1p1alpha1LabelImageOrientedBoundingBoxOperationMetadata({
    this.basicConfig,
  });

  GoogleCloudDatalabelingV1p1alpha1LabelImageOrientedBoundingBoxOperationMetadata.fromJson(
      core.Map _json)
      : this(
          basicConfig: _json.containsKey('basicConfig')
              ? GoogleCloudDatalabelingV1p1alpha1HumanAnnotationConfig.fromJson(
                  _json['basicConfig'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (basicConfig != null) 'basicConfig': basicConfig!.toJson(),
      };
}

/// Details of LabelImagePolyline operation metadata.
class GoogleCloudDatalabelingV1p1alpha1LabelImagePolylineOperationMetadata {
  /// Basic human annotation config used in labeling request.
  GoogleCloudDatalabelingV1p1alpha1HumanAnnotationConfig? basicConfig;

  GoogleCloudDatalabelingV1p1alpha1LabelImagePolylineOperationMetadata({
    this.basicConfig,
  });

  GoogleCloudDatalabelingV1p1alpha1LabelImagePolylineOperationMetadata.fromJson(
      core.Map _json)
      : this(
          basicConfig: _json.containsKey('basicConfig')
              ? GoogleCloudDatalabelingV1p1alpha1HumanAnnotationConfig.fromJson(
                  _json['basicConfig'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (basicConfig != null) 'basicConfig': basicConfig!.toJson(),
      };
}

/// Details of a LabelImageSegmentation operation metadata.
class GoogleCloudDatalabelingV1p1alpha1LabelImageSegmentationOperationMetadata {
  /// Basic human annotation config.
  GoogleCloudDatalabelingV1p1alpha1HumanAnnotationConfig? basicConfig;

  GoogleCloudDatalabelingV1p1alpha1LabelImageSegmentationOperationMetadata({
    this.basicConfig,
  });

  GoogleCloudDatalabelingV1p1alpha1LabelImageSegmentationOperationMetadata.fromJson(
      core.Map _json)
      : this(
          basicConfig: _json.containsKey('basicConfig')
              ? GoogleCloudDatalabelingV1p1alpha1HumanAnnotationConfig.fromJson(
                  _json['basicConfig'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (basicConfig != null) 'basicConfig': basicConfig!.toJson(),
      };
}

/// Metadata of a labeling operation, such as LabelImage or LabelVideo.
///
/// Next tag: 23
class GoogleCloudDatalabelingV1p1alpha1LabelOperationMetadata {
  /// The name of annotated dataset in format "projects / * /datasets / *
  /// /annotatedDatasets / * ".
  ///
  /// Output only.
  core.String? annotatedDataset;

  /// Timestamp when labeling request was created.
  ///
  /// Output only.
  core.String? createTime;

  /// The name of dataset to be labeled.
  ///
  /// "projects / * /datasets / * "
  ///
  /// Output only.
  core.String? dataset;

  /// Details of label image bounding box operation.
  GoogleCloudDatalabelingV1p1alpha1LabelImageBoundingBoxOperationMetadata?
      imageBoundingBoxDetails;

  /// Details of label image bounding poly operation.
  GoogleCloudDatalabelingV1p1alpha1LabelImageBoundingPolyOperationMetadata?
      imageBoundingPolyDetails;

  /// Details of label image classification operation.
  GoogleCloudDatalabelingV1p1alpha1LabelImageClassificationOperationMetadata?
      imageClassificationDetails;

  /// Details of label image oriented bounding box operation.
  GoogleCloudDatalabelingV1p1alpha1LabelImageOrientedBoundingBoxOperationMetadata?
      imageOrientedBoundingBoxDetails;

  /// Details of label image polyline operation.
  GoogleCloudDatalabelingV1p1alpha1LabelImagePolylineOperationMetadata?
      imagePolylineDetails;

  /// Details of label image segmentation operation.
  GoogleCloudDatalabelingV1p1alpha1LabelImageSegmentationOperationMetadata?
      imageSegmentationDetails;

  /// Partial failures encountered.
  ///
  /// E.g. single files that couldn't be read. Status details field will contain
  /// standard GCP error details.
  ///
  /// Output only.
  core.List<GoogleRpcStatus>? partialFailures;

  /// Progress of label operation.
  ///
  /// Range: \[0, 100\].
  ///
  /// Output only.
  core.int? progressPercent;

  /// Details of label text classification operation.
  GoogleCloudDatalabelingV1p1alpha1LabelTextClassificationOperationMetadata?
      textClassificationDetails;

  /// Details of label text entity extraction operation.
  GoogleCloudDatalabelingV1p1alpha1LabelTextEntityExtractionOperationMetadata?
      textEntityExtractionDetails;

  /// Details of label video classification operation.
  GoogleCloudDatalabelingV1p1alpha1LabelVideoClassificationOperationMetadata?
      videoClassificationDetails;

  /// Details of label video event operation.
  GoogleCloudDatalabelingV1p1alpha1LabelVideoEventOperationMetadata?
      videoEventDetails;

  /// Details of label video object detection operation.
  GoogleCloudDatalabelingV1p1alpha1LabelVideoObjectDetectionOperationMetadata?
      videoObjectDetectionDetails;

  /// Details of label video object tracking operation.
  GoogleCloudDatalabelingV1p1alpha1LabelVideoObjectTrackingOperationMetadata?
      videoObjectTrackingDetails;

  GoogleCloudDatalabelingV1p1alpha1LabelOperationMetadata({
    this.annotatedDataset,
    this.createTime,
    this.dataset,
    this.imageBoundingBoxDetails,
    this.imageBoundingPolyDetails,
    this.imageClassificationDetails,
    this.imageOrientedBoundingBoxDetails,
    this.imagePolylineDetails,
    this.imageSegmentationDetails,
    this.partialFailures,
    this.progressPercent,
    this.textClassificationDetails,
    this.textEntityExtractionDetails,
    this.videoClassificationDetails,
    this.videoEventDetails,
    this.videoObjectDetectionDetails,
    this.videoObjectTrackingDetails,
  });

  GoogleCloudDatalabelingV1p1alpha1LabelOperationMetadata.fromJson(
      core.Map _json)
      : this(
          annotatedDataset: _json.containsKey('annotatedDataset')
              ? _json['annotatedDataset'] as core.String
              : null,
          createTime: _json.containsKey('createTime')
              ? _json['createTime'] as core.String
              : null,
          dataset: _json.containsKey('dataset')
              ? _json['dataset'] as core.String
              : null,
          imageBoundingBoxDetails: _json.containsKey('imageBoundingBoxDetails')
              ? GoogleCloudDatalabelingV1p1alpha1LabelImageBoundingBoxOperationMetadata
                  .fromJson(_json['imageBoundingBoxDetails']
                      as core.Map<core.String, core.dynamic>)
              : null,
          imageBoundingPolyDetails: _json
                  .containsKey('imageBoundingPolyDetails')
              ? GoogleCloudDatalabelingV1p1alpha1LabelImageBoundingPolyOperationMetadata
                  .fromJson(_json['imageBoundingPolyDetails']
                      as core.Map<core.String, core.dynamic>)
              : null,
          imageClassificationDetails: _json
                  .containsKey('imageClassificationDetails')
              ? GoogleCloudDatalabelingV1p1alpha1LabelImageClassificationOperationMetadata
                  .fromJson(_json['imageClassificationDetails']
                      as core.Map<core.String, core.dynamic>)
              : null,
          imageOrientedBoundingBoxDetails: _json
                  .containsKey('imageOrientedBoundingBoxDetails')
              ? GoogleCloudDatalabelingV1p1alpha1LabelImageOrientedBoundingBoxOperationMetadata
                  .fromJson(_json['imageOrientedBoundingBoxDetails']
                      as core.Map<core.String, core.dynamic>)
              : null,
          imagePolylineDetails: _json.containsKey('imagePolylineDetails')
              ? GoogleCloudDatalabelingV1p1alpha1LabelImagePolylineOperationMetadata
                  .fromJson(_json['imagePolylineDetails']
                      as core.Map<core.String, core.dynamic>)
              : null,
          imageSegmentationDetails: _json
                  .containsKey('imageSegmentationDetails')
              ? GoogleCloudDatalabelingV1p1alpha1LabelImageSegmentationOperationMetadata
                  .fromJson(_json['imageSegmentationDetails']
                      as core.Map<core.String, core.dynamic>)
              : null,
          partialFailures: _json.containsKey('partialFailures')
              ? (_json['partialFailures'] as core.List)
                  .map((value) => GoogleRpcStatus.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          progressPercent: _json.containsKey('progressPercent')
              ? _json['progressPercent'] as core.int
              : null,
          textClassificationDetails: _json
                  .containsKey('textClassificationDetails')
              ? GoogleCloudDatalabelingV1p1alpha1LabelTextClassificationOperationMetadata
                  .fromJson(_json['textClassificationDetails']
                      as core.Map<core.String, core.dynamic>)
              : null,
          textEntityExtractionDetails: _json
                  .containsKey('textEntityExtractionDetails')
              ? GoogleCloudDatalabelingV1p1alpha1LabelTextEntityExtractionOperationMetadata
                  .fromJson(_json['textEntityExtractionDetails']
                      as core.Map<core.String, core.dynamic>)
              : null,
          videoClassificationDetails: _json
                  .containsKey('videoClassificationDetails')
              ? GoogleCloudDatalabelingV1p1alpha1LabelVideoClassificationOperationMetadata
                  .fromJson(_json['videoClassificationDetails']
                      as core.Map<core.String, core.dynamic>)
              : null,
          videoEventDetails: _json.containsKey('videoEventDetails')
              ? GoogleCloudDatalabelingV1p1alpha1LabelVideoEventOperationMetadata
                  .fromJson(_json['videoEventDetails']
                      as core.Map<core.String, core.dynamic>)
              : null,
          videoObjectDetectionDetails: _json
                  .containsKey('videoObjectDetectionDetails')
              ? GoogleCloudDatalabelingV1p1alpha1LabelVideoObjectDetectionOperationMetadata
                  .fromJson(_json['videoObjectDetectionDetails']
                      as core.Map<core.String, core.dynamic>)
              : null,
          videoObjectTrackingDetails: _json
                  .containsKey('videoObjectTrackingDetails')
              ? GoogleCloudDatalabelingV1p1alpha1LabelVideoObjectTrackingOperationMetadata
                  .fromJson(_json['videoObjectTrackingDetails']
                      as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (annotatedDataset != null) 'annotatedDataset': annotatedDataset!,
        if (createTime != null) 'createTime': createTime!,
        if (dataset != null) 'dataset': dataset!,
        if (imageBoundingBoxDetails != null)
          'imageBoundingBoxDetails': imageBoundingBoxDetails!.toJson(),
        if (imageBoundingPolyDetails != null)
          'imageBoundingPolyDetails': imageBoundingPolyDetails!.toJson(),
        if (imageClassificationDetails != null)
          'imageClassificationDetails': imageClassificationDetails!.toJson(),
        if (imageOrientedBoundingBoxDetails != null)
          'imageOrientedBoundingBoxDetails':
              imageOrientedBoundingBoxDetails!.toJson(),
        if (imagePolylineDetails != null)
          'imagePolylineDetails': imagePolylineDetails!.toJson(),
        if (imageSegmentationDetails != null)
          'imageSegmentationDetails': imageSegmentationDetails!.toJson(),
        if (partialFailures != null)
          'partialFailures':
              partialFailures!.map((value) => value.toJson()).toList(),
        if (progressPercent != null) 'progressPercent': progressPercent!,
        if (textClassificationDetails != null)
          'textClassificationDetails': textClassificationDetails!.toJson(),
        if (textEntityExtractionDetails != null)
          'textEntityExtractionDetails': textEntityExtractionDetails!.toJson(),
        if (videoClassificationDetails != null)
          'videoClassificationDetails': videoClassificationDetails!.toJson(),
        if (videoEventDetails != null)
          'videoEventDetails': videoEventDetails!.toJson(),
        if (videoObjectDetectionDetails != null)
          'videoObjectDetectionDetails': videoObjectDetectionDetails!.toJson(),
        if (videoObjectTrackingDetails != null)
          'videoObjectTrackingDetails': videoObjectTrackingDetails!.toJson(),
      };
}

/// Statistics about annotation specs.
class GoogleCloudDatalabelingV1p1alpha1LabelStats {
  /// Map of each annotation spec's example count.
  ///
  /// Key is the annotation spec name and value is the number of examples for
  /// that annotation spec. If the annotated dataset does not have annotation
  /// spec, the map will return a pair where the key is empty string and value
  /// is the total number of annotations.
  core.Map<core.String, core.String>? exampleCount;

  GoogleCloudDatalabelingV1p1alpha1LabelStats({
    this.exampleCount,
  });

  GoogleCloudDatalabelingV1p1alpha1LabelStats.fromJson(core.Map _json)
      : this(
          exampleCount: _json.containsKey('exampleCount')
              ? (_json['exampleCount'] as core.Map<core.String, core.dynamic>)
                  .map(
                  (key, item) => core.MapEntry(
                    key,
                    item as core.String,
                  ),
                )
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (exampleCount != null) 'exampleCount': exampleCount!,
      };
}

/// Details of a LabelTextClassification operation metadata.
class GoogleCloudDatalabelingV1p1alpha1LabelTextClassificationOperationMetadata {
  /// Basic human annotation config used in labeling request.
  GoogleCloudDatalabelingV1p1alpha1HumanAnnotationConfig? basicConfig;

  GoogleCloudDatalabelingV1p1alpha1LabelTextClassificationOperationMetadata({
    this.basicConfig,
  });

  GoogleCloudDatalabelingV1p1alpha1LabelTextClassificationOperationMetadata.fromJson(
      core.Map _json)
      : this(
          basicConfig: _json.containsKey('basicConfig')
              ? GoogleCloudDatalabelingV1p1alpha1HumanAnnotationConfig.fromJson(
                  _json['basicConfig'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (basicConfig != null) 'basicConfig': basicConfig!.toJson(),
      };
}

/// Details of a LabelTextEntityExtraction operation metadata.
class GoogleCloudDatalabelingV1p1alpha1LabelTextEntityExtractionOperationMetadata {
  /// Basic human annotation config used in labeling request.
  GoogleCloudDatalabelingV1p1alpha1HumanAnnotationConfig? basicConfig;

  GoogleCloudDatalabelingV1p1alpha1LabelTextEntityExtractionOperationMetadata({
    this.basicConfig,
  });

  GoogleCloudDatalabelingV1p1alpha1LabelTextEntityExtractionOperationMetadata.fromJson(
      core.Map _json)
      : this(
          basicConfig: _json.containsKey('basicConfig')
              ? GoogleCloudDatalabelingV1p1alpha1HumanAnnotationConfig.fromJson(
                  _json['basicConfig'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (basicConfig != null) 'basicConfig': basicConfig!.toJson(),
      };
}

/// Details of a LabelVideoClassification operation metadata.
class GoogleCloudDatalabelingV1p1alpha1LabelVideoClassificationOperationMetadata {
  /// Basic human annotation config used in labeling request.
  GoogleCloudDatalabelingV1p1alpha1HumanAnnotationConfig? basicConfig;

  GoogleCloudDatalabelingV1p1alpha1LabelVideoClassificationOperationMetadata({
    this.basicConfig,
  });

  GoogleCloudDatalabelingV1p1alpha1LabelVideoClassificationOperationMetadata.fromJson(
      core.Map _json)
      : this(
          basicConfig: _json.containsKey('basicConfig')
              ? GoogleCloudDatalabelingV1p1alpha1HumanAnnotationConfig.fromJson(
                  _json['basicConfig'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (basicConfig != null) 'basicConfig': basicConfig!.toJson(),
      };
}

/// Details of a LabelVideoEvent operation metadata.
class GoogleCloudDatalabelingV1p1alpha1LabelVideoEventOperationMetadata {
  /// Basic human annotation config used in labeling request.
  GoogleCloudDatalabelingV1p1alpha1HumanAnnotationConfig? basicConfig;

  GoogleCloudDatalabelingV1p1alpha1LabelVideoEventOperationMetadata({
    this.basicConfig,
  });

  GoogleCloudDatalabelingV1p1alpha1LabelVideoEventOperationMetadata.fromJson(
      core.Map _json)
      : this(
          basicConfig: _json.containsKey('basicConfig')
              ? GoogleCloudDatalabelingV1p1alpha1HumanAnnotationConfig.fromJson(
                  _json['basicConfig'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (basicConfig != null) 'basicConfig': basicConfig!.toJson(),
      };
}

/// Details of a LabelVideoObjectDetection operation metadata.
class GoogleCloudDatalabelingV1p1alpha1LabelVideoObjectDetectionOperationMetadata {
  /// Basic human annotation config used in labeling request.
  GoogleCloudDatalabelingV1p1alpha1HumanAnnotationConfig? basicConfig;

  GoogleCloudDatalabelingV1p1alpha1LabelVideoObjectDetectionOperationMetadata({
    this.basicConfig,
  });

  GoogleCloudDatalabelingV1p1alpha1LabelVideoObjectDetectionOperationMetadata.fromJson(
      core.Map _json)
      : this(
          basicConfig: _json.containsKey('basicConfig')
              ? GoogleCloudDatalabelingV1p1alpha1HumanAnnotationConfig.fromJson(
                  _json['basicConfig'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (basicConfig != null) 'basicConfig': basicConfig!.toJson(),
      };
}

/// Details of a LabelVideoObjectTracking operation metadata.
class GoogleCloudDatalabelingV1p1alpha1LabelVideoObjectTrackingOperationMetadata {
  /// Basic human annotation config used in labeling request.
  GoogleCloudDatalabelingV1p1alpha1HumanAnnotationConfig? basicConfig;

  GoogleCloudDatalabelingV1p1alpha1LabelVideoObjectTrackingOperationMetadata({
    this.basicConfig,
  });

  GoogleCloudDatalabelingV1p1alpha1LabelVideoObjectTrackingOperationMetadata.fromJson(
      core.Map _json)
      : this(
          basicConfig: _json.containsKey('basicConfig')
              ? GoogleCloudDatalabelingV1p1alpha1HumanAnnotationConfig.fromJson(
                  _json['basicConfig'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (basicConfig != null) 'basicConfig': basicConfig!.toJson(),
      };
}

/// The configuration of output data.
class GoogleCloudDatalabelingV1p1alpha1OutputConfig {
  /// Output to a file in Cloud Storage.
  ///
  /// Should be used for labeling output other than image segmentation.
  GoogleCloudDatalabelingV1p1alpha1GcsDestination? gcsDestination;

  /// Output to a folder in Cloud Storage.
  ///
  /// Should be used for image segmentation or document de-identification
  /// labeling outputs.
  GoogleCloudDatalabelingV1p1alpha1GcsFolderDestination? gcsFolderDestination;

  GoogleCloudDatalabelingV1p1alpha1OutputConfig({
    this.gcsDestination,
    this.gcsFolderDestination,
  });

  GoogleCloudDatalabelingV1p1alpha1OutputConfig.fromJson(core.Map _json)
      : this(
          gcsDestination: _json.containsKey('gcsDestination')
              ? GoogleCloudDatalabelingV1p1alpha1GcsDestination.fromJson(
                  _json['gcsDestination']
                      as core.Map<core.String, core.dynamic>)
              : null,
          gcsFolderDestination: _json.containsKey('gcsFolderDestination')
              ? GoogleCloudDatalabelingV1p1alpha1GcsFolderDestination.fromJson(
                  _json['gcsFolderDestination']
                      as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (gcsDestination != null) 'gcsDestination': gcsDestination!.toJson(),
        if (gcsFolderDestination != null)
          'gcsFolderDestination': gcsFolderDestination!.toJson(),
      };
}

/// Metadata of a CreateInstruction operation.
class GoogleCloudDatalabelingV1p2alpha1CreateInstructionMetadata {
  /// Timestamp when create instruction request was created.
  core.String? createTime;

  /// The name of the created Instruction.
  ///
  /// projects/{project_id}/instructions/{instruction_id}
  core.String? instruction;

  /// Partial failures encountered.
  ///
  /// E.g. single files that couldn't be read. Status details field will contain
  /// standard GCP error details.
  core.List<GoogleRpcStatus>? partialFailures;

  GoogleCloudDatalabelingV1p2alpha1CreateInstructionMetadata({
    this.createTime,
    this.instruction,
    this.partialFailures,
  });

  GoogleCloudDatalabelingV1p2alpha1CreateInstructionMetadata.fromJson(
      core.Map _json)
      : this(
          createTime: _json.containsKey('createTime')
              ? _json['createTime'] as core.String
              : null,
          instruction: _json.containsKey('instruction')
              ? _json['instruction'] as core.String
              : null,
          partialFailures: _json.containsKey('partialFailures')
              ? (_json['partialFailures'] as core.List)
                  .map((value) => GoogleRpcStatus.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (createTime != null) 'createTime': createTime!,
        if (instruction != null) 'instruction': instruction!,
        if (partialFailures != null)
          'partialFailures':
              partialFailures!.map((value) => value.toJson()).toList(),
      };
}

/// Metadata of an ExportData operation.
class GoogleCloudDatalabelingV1p2alpha1ExportDataOperationMetadata {
  /// The name of annotated dataset in format "projects / * /datasets / *
  /// /annotatedDatasets / * ".
  ///
  /// Output only.
  core.String? annotatedDataset;

  /// Timestamp when export dataset request was created.
  ///
  /// Output only.
  core.String? createTime;

  /// The name of dataset to be exported.
  ///
  /// "projects / * /datasets / * "
  ///
  /// Output only.
  core.String? dataset;

  /// Partial failures encountered.
  ///
  /// E.g. single files that couldn't be read. Status details field will contain
  /// standard GCP error details.
  ///
  /// Output only.
  core.List<GoogleRpcStatus>? partialFailures;

  GoogleCloudDatalabelingV1p2alpha1ExportDataOperationMetadata({
    this.annotatedDataset,
    this.createTime,
    this.dataset,
    this.partialFailures,
  });

  GoogleCloudDatalabelingV1p2alpha1ExportDataOperationMetadata.fromJson(
      core.Map _json)
      : this(
          annotatedDataset: _json.containsKey('annotatedDataset')
              ? _json['annotatedDataset'] as core.String
              : null,
          createTime: _json.containsKey('createTime')
              ? _json['createTime'] as core.String
              : null,
          dataset: _json.containsKey('dataset')
              ? _json['dataset'] as core.String
              : null,
          partialFailures: _json.containsKey('partialFailures')
              ? (_json['partialFailures'] as core.List)
                  .map((value) => GoogleRpcStatus.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (annotatedDataset != null) 'annotatedDataset': annotatedDataset!,
        if (createTime != null) 'createTime': createTime!,
        if (dataset != null) 'dataset': dataset!,
        if (partialFailures != null)
          'partialFailures':
              partialFailures!.map((value) => value.toJson()).toList(),
      };
}

/// Response used for ExportDataset longrunning operation.
class GoogleCloudDatalabelingV1p2alpha1ExportDataOperationResponse {
  /// The name of annotated dataset in format "projects / * /datasets / *
  /// /annotatedDatasets / * ".
  ///
  /// Output only.
  core.String? annotatedDataset;

  /// Ouptut only.
  ///
  /// The name of dataset. "projects / * /datasets / * "
  core.String? dataset;

  /// Number of examples exported successfully.
  ///
  /// Output only.
  core.int? exportCount;

  /// Statistic infos of labels in the exported dataset.
  ///
  /// Output only.
  GoogleCloudDatalabelingV1p2alpha1LabelStats? labelStats;

  /// output_config in the ExportData request.
  ///
  /// Output only.
  GoogleCloudDatalabelingV1p2alpha1OutputConfig? outputConfig;

  /// Total number of examples requested to export
  ///
  /// Output only.
  core.int? totalCount;

  GoogleCloudDatalabelingV1p2alpha1ExportDataOperationResponse({
    this.annotatedDataset,
    this.dataset,
    this.exportCount,
    this.labelStats,
    this.outputConfig,
    this.totalCount,
  });

  GoogleCloudDatalabelingV1p2alpha1ExportDataOperationResponse.fromJson(
      core.Map _json)
      : this(
          annotatedDataset: _json.containsKey('annotatedDataset')
              ? _json['annotatedDataset'] as core.String
              : null,
          dataset: _json.containsKey('dataset')
              ? _json['dataset'] as core.String
              : null,
          exportCount: _json.containsKey('exportCount')
              ? _json['exportCount'] as core.int
              : null,
          labelStats: _json.containsKey('labelStats')
              ? GoogleCloudDatalabelingV1p2alpha1LabelStats.fromJson(
                  _json['labelStats'] as core.Map<core.String, core.dynamic>)
              : null,
          outputConfig: _json.containsKey('outputConfig')
              ? GoogleCloudDatalabelingV1p2alpha1OutputConfig.fromJson(
                  _json['outputConfig'] as core.Map<core.String, core.dynamic>)
              : null,
          totalCount: _json.containsKey('totalCount')
              ? _json['totalCount'] as core.int
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (annotatedDataset != null) 'annotatedDataset': annotatedDataset!,
        if (dataset != null) 'dataset': dataset!,
        if (exportCount != null) 'exportCount': exportCount!,
        if (labelStats != null) 'labelStats': labelStats!.toJson(),
        if (outputConfig != null) 'outputConfig': outputConfig!.toJson(),
        if (totalCount != null) 'totalCount': totalCount!,
      };
}

/// Export destination of the data.Only gcs path is allowed in output_uri.
class GoogleCloudDatalabelingV1p2alpha1GcsDestination {
  /// The format of the gcs destination.
  ///
  /// Only "text/csv" and "application/json" are supported.
  ///
  /// Required.
  core.String? mimeType;

  /// The output uri of destination file.
  ///
  /// Required.
  core.String? outputUri;

  GoogleCloudDatalabelingV1p2alpha1GcsDestination({
    this.mimeType,
    this.outputUri,
  });

  GoogleCloudDatalabelingV1p2alpha1GcsDestination.fromJson(core.Map _json)
      : this(
          mimeType: _json.containsKey('mimeType')
              ? _json['mimeType'] as core.String
              : null,
          outputUri: _json.containsKey('outputUri')
              ? _json['outputUri'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (mimeType != null) 'mimeType': mimeType!,
        if (outputUri != null) 'outputUri': outputUri!,
      };
}

/// Export folder destination of the data.
class GoogleCloudDatalabelingV1p2alpha1GcsFolderDestination {
  /// Cloud Storage directory to export data to.
  ///
  /// Required.
  core.String? outputFolderUri;

  GoogleCloudDatalabelingV1p2alpha1GcsFolderDestination({
    this.outputFolderUri,
  });

  GoogleCloudDatalabelingV1p2alpha1GcsFolderDestination.fromJson(core.Map _json)
      : this(
          outputFolderUri: _json.containsKey('outputFolderUri')
              ? _json['outputFolderUri'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (outputFolderUri != null) 'outputFolderUri': outputFolderUri!,
      };
}

/// Configuration for how human labeling task should be done.
class GoogleCloudDatalabelingV1p2alpha1HumanAnnotationConfig {
  /// A human-readable description for AnnotatedDataset.
  ///
  /// The description can be up to 10000 characters long.
  ///
  /// Optional.
  core.String? annotatedDatasetDescription;

  /// A human-readable name for AnnotatedDataset defined by users.
  ///
  /// Maximum of 64 characters .
  ///
  /// Required.
  core.String? annotatedDatasetDisplayName;

  /// If you want your own labeling contributors to manage and work on this
  /// labeling request, you can set these contributors here.
  ///
  /// We will give them access to the question types in crowdcompute. Note that
  /// these emails must be registered in crowdcompute worker UI:
  /// https://crowd-compute.appspot.com/
  ///
  /// Optional.
  core.List<core.String>? contributorEmails;

  /// Instruction resource name.
  ///
  /// Required.
  core.String? instruction;

  /// A human-readable label used to logically group labeling tasks.
  ///
  /// This string must match the regular expression `[a-zA-Z\\d_-]{0,128}`.
  ///
  /// Optional.
  core.String? labelGroup;

  /// The Language of this question, as a
  /// \[BCP-47\](https://www.rfc-editor.org/rfc/bcp/bcp47.txt).
  ///
  /// Default value is en-US. Only need to set this when task is language
  /// related. For example, French text classification.
  ///
  /// Optional.
  core.String? languageCode;

  /// Maximum duration for contributors to answer a question.
  ///
  /// Maximum is 3600 seconds. Default is 3600 seconds.
  ///
  /// Optional.
  core.String? questionDuration;

  /// Replication of questions.
  ///
  /// Each question will be sent to up to this number of contributors to label.
  /// Aggregated answers will be returned. Default is set to 1. For image
  /// related labeling, valid values are 1, 3, 5.
  ///
  /// Optional.
  core.int? replicaCount;

  /// Email of the user who started the labeling task and should be notified by
  /// email.
  ///
  /// If empty no notification will be sent.
  core.String? userEmailAddress;

  GoogleCloudDatalabelingV1p2alpha1HumanAnnotationConfig({
    this.annotatedDatasetDescription,
    this.annotatedDatasetDisplayName,
    this.contributorEmails,
    this.instruction,
    this.labelGroup,
    this.languageCode,
    this.questionDuration,
    this.replicaCount,
    this.userEmailAddress,
  });

  GoogleCloudDatalabelingV1p2alpha1HumanAnnotationConfig.fromJson(
      core.Map _json)
      : this(
          annotatedDatasetDescription:
              _json.containsKey('annotatedDatasetDescription')
                  ? _json['annotatedDatasetDescription'] as core.String
                  : null,
          annotatedDatasetDisplayName:
              _json.containsKey('annotatedDatasetDisplayName')
                  ? _json['annotatedDatasetDisplayName'] as core.String
                  : null,
          contributorEmails: _json.containsKey('contributorEmails')
              ? (_json['contributorEmails'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          instruction: _json.containsKey('instruction')
              ? _json['instruction'] as core.String
              : null,
          labelGroup: _json.containsKey('labelGroup')
              ? _json['labelGroup'] as core.String
              : null,
          languageCode: _json.containsKey('languageCode')
              ? _json['languageCode'] as core.String
              : null,
          questionDuration: _json.containsKey('questionDuration')
              ? _json['questionDuration'] as core.String
              : null,
          replicaCount: _json.containsKey('replicaCount')
              ? _json['replicaCount'] as core.int
              : null,
          userEmailAddress: _json.containsKey('userEmailAddress')
              ? _json['userEmailAddress'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (annotatedDatasetDescription != null)
          'annotatedDatasetDescription': annotatedDatasetDescription!,
        if (annotatedDatasetDisplayName != null)
          'annotatedDatasetDisplayName': annotatedDatasetDisplayName!,
        if (contributorEmails != null) 'contributorEmails': contributorEmails!,
        if (instruction != null) 'instruction': instruction!,
        if (labelGroup != null) 'labelGroup': labelGroup!,
        if (languageCode != null) 'languageCode': languageCode!,
        if (questionDuration != null) 'questionDuration': questionDuration!,
        if (replicaCount != null) 'replicaCount': replicaCount!,
        if (userEmailAddress != null) 'userEmailAddress': userEmailAddress!,
      };
}

/// Metadata of an ImportData operation.
class GoogleCloudDatalabelingV1p2alpha1ImportDataOperationMetadata {
  /// Timestamp when import dataset request was created.
  ///
  /// Output only.
  core.String? createTime;

  /// The name of imported dataset.
  ///
  /// "projects / * /datasets / * "
  ///
  /// Output only.
  core.String? dataset;

  /// Partial failures encountered.
  ///
  /// E.g. single files that couldn't be read. Status details field will contain
  /// standard GCP error details.
  ///
  /// Output only.
  core.List<GoogleRpcStatus>? partialFailures;

  GoogleCloudDatalabelingV1p2alpha1ImportDataOperationMetadata({
    this.createTime,
    this.dataset,
    this.partialFailures,
  });

  GoogleCloudDatalabelingV1p2alpha1ImportDataOperationMetadata.fromJson(
      core.Map _json)
      : this(
          createTime: _json.containsKey('createTime')
              ? _json['createTime'] as core.String
              : null,
          dataset: _json.containsKey('dataset')
              ? _json['dataset'] as core.String
              : null,
          partialFailures: _json.containsKey('partialFailures')
              ? (_json['partialFailures'] as core.List)
                  .map((value) => GoogleRpcStatus.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (createTime != null) 'createTime': createTime!,
        if (dataset != null) 'dataset': dataset!,
        if (partialFailures != null)
          'partialFailures':
              partialFailures!.map((value) => value.toJson()).toList(),
      };
}

/// Response used for ImportData longrunning operation.
class GoogleCloudDatalabelingV1p2alpha1ImportDataOperationResponse {
  /// Ouptut only.
  ///
  /// The name of imported dataset.
  core.String? dataset;

  /// Number of examples imported successfully.
  ///
  /// Output only.
  core.int? importCount;

  /// Total number of examples requested to import
  ///
  /// Output only.
  core.int? totalCount;

  GoogleCloudDatalabelingV1p2alpha1ImportDataOperationResponse({
    this.dataset,
    this.importCount,
    this.totalCount,
  });

  GoogleCloudDatalabelingV1p2alpha1ImportDataOperationResponse.fromJson(
      core.Map _json)
      : this(
          dataset: _json.containsKey('dataset')
              ? _json['dataset'] as core.String
              : null,
          importCount: _json.containsKey('importCount')
              ? _json['importCount'] as core.int
              : null,
          totalCount: _json.containsKey('totalCount')
              ? _json['totalCount'] as core.int
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (dataset != null) 'dataset': dataset!,
        if (importCount != null) 'importCount': importCount!,
        if (totalCount != null) 'totalCount': totalCount!,
      };
}

/// Details of a LabelImageBoundingBox operation metadata.
class GoogleCloudDatalabelingV1p2alpha1LabelImageBoundingBoxOperationMetadata {
  /// Basic human annotation config used in labeling request.
  GoogleCloudDatalabelingV1p2alpha1HumanAnnotationConfig? basicConfig;

  GoogleCloudDatalabelingV1p2alpha1LabelImageBoundingBoxOperationMetadata({
    this.basicConfig,
  });

  GoogleCloudDatalabelingV1p2alpha1LabelImageBoundingBoxOperationMetadata.fromJson(
      core.Map _json)
      : this(
          basicConfig: _json.containsKey('basicConfig')
              ? GoogleCloudDatalabelingV1p2alpha1HumanAnnotationConfig.fromJson(
                  _json['basicConfig'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (basicConfig != null) 'basicConfig': basicConfig!.toJson(),
      };
}

/// Details of LabelImageBoundingPoly operation metadata.
class GoogleCloudDatalabelingV1p2alpha1LabelImageBoundingPolyOperationMetadata {
  /// Basic human annotation config used in labeling request.
  GoogleCloudDatalabelingV1p2alpha1HumanAnnotationConfig? basicConfig;

  GoogleCloudDatalabelingV1p2alpha1LabelImageBoundingPolyOperationMetadata({
    this.basicConfig,
  });

  GoogleCloudDatalabelingV1p2alpha1LabelImageBoundingPolyOperationMetadata.fromJson(
      core.Map _json)
      : this(
          basicConfig: _json.containsKey('basicConfig')
              ? GoogleCloudDatalabelingV1p2alpha1HumanAnnotationConfig.fromJson(
                  _json['basicConfig'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (basicConfig != null) 'basicConfig': basicConfig!.toJson(),
      };
}

/// Metadata of a LabelImageClassification operation.
class GoogleCloudDatalabelingV1p2alpha1LabelImageClassificationOperationMetadata {
  /// Basic human annotation config used in labeling request.
  GoogleCloudDatalabelingV1p2alpha1HumanAnnotationConfig? basicConfig;

  GoogleCloudDatalabelingV1p2alpha1LabelImageClassificationOperationMetadata({
    this.basicConfig,
  });

  GoogleCloudDatalabelingV1p2alpha1LabelImageClassificationOperationMetadata.fromJson(
      core.Map _json)
      : this(
          basicConfig: _json.containsKey('basicConfig')
              ? GoogleCloudDatalabelingV1p2alpha1HumanAnnotationConfig.fromJson(
                  _json['basicConfig'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (basicConfig != null) 'basicConfig': basicConfig!.toJson(),
      };
}

/// Details of a LabelImageOrientedBoundingBox operation metadata.
class GoogleCloudDatalabelingV1p2alpha1LabelImageOrientedBoundingBoxOperationMetadata {
  /// Basic human annotation config.
  GoogleCloudDatalabelingV1p2alpha1HumanAnnotationConfig? basicConfig;

  GoogleCloudDatalabelingV1p2alpha1LabelImageOrientedBoundingBoxOperationMetadata({
    this.basicConfig,
  });

  GoogleCloudDatalabelingV1p2alpha1LabelImageOrientedBoundingBoxOperationMetadata.fromJson(
      core.Map _json)
      : this(
          basicConfig: _json.containsKey('basicConfig')
              ? GoogleCloudDatalabelingV1p2alpha1HumanAnnotationConfig.fromJson(
                  _json['basicConfig'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (basicConfig != null) 'basicConfig': basicConfig!.toJson(),
      };
}

/// Details of LabelImagePolyline operation metadata.
class GoogleCloudDatalabelingV1p2alpha1LabelImagePolylineOperationMetadata {
  /// Basic human annotation config used in labeling request.
  GoogleCloudDatalabelingV1p2alpha1HumanAnnotationConfig? basicConfig;

  GoogleCloudDatalabelingV1p2alpha1LabelImagePolylineOperationMetadata({
    this.basicConfig,
  });

  GoogleCloudDatalabelingV1p2alpha1LabelImagePolylineOperationMetadata.fromJson(
      core.Map _json)
      : this(
          basicConfig: _json.containsKey('basicConfig')
              ? GoogleCloudDatalabelingV1p2alpha1HumanAnnotationConfig.fromJson(
                  _json['basicConfig'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (basicConfig != null) 'basicConfig': basicConfig!.toJson(),
      };
}

/// Details of a LabelImageSegmentation operation metadata.
class GoogleCloudDatalabelingV1p2alpha1LabelImageSegmentationOperationMetadata {
  /// Basic human annotation config.
  GoogleCloudDatalabelingV1p2alpha1HumanAnnotationConfig? basicConfig;

  GoogleCloudDatalabelingV1p2alpha1LabelImageSegmentationOperationMetadata({
    this.basicConfig,
  });

  GoogleCloudDatalabelingV1p2alpha1LabelImageSegmentationOperationMetadata.fromJson(
      core.Map _json)
      : this(
          basicConfig: _json.containsKey('basicConfig')
              ? GoogleCloudDatalabelingV1p2alpha1HumanAnnotationConfig.fromJson(
                  _json['basicConfig'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (basicConfig != null) 'basicConfig': basicConfig!.toJson(),
      };
}

/// Metadata of a labeling operation, such as LabelImage or LabelVideo.
///
/// Next tag: 23
class GoogleCloudDatalabelingV1p2alpha1LabelOperationMetadata {
  /// The name of annotated dataset in format "projects / * /datasets / *
  /// /annotatedDatasets / * ".
  ///
  /// Output only.
  core.String? annotatedDataset;

  /// Timestamp when labeling request was created.
  ///
  /// Output only.
  core.String? createTime;

  /// The name of dataset to be labeled.
  ///
  /// "projects / * /datasets / * "
  ///
  /// Output only.
  core.String? dataset;

  /// Details of label image bounding box operation.
  GoogleCloudDatalabelingV1p2alpha1LabelImageBoundingBoxOperationMetadata?
      imageBoundingBoxDetails;

  /// Details of label image bounding poly operation.
  GoogleCloudDatalabelingV1p2alpha1LabelImageBoundingPolyOperationMetadata?
      imageBoundingPolyDetails;

  /// Details of label image classification operation.
  GoogleCloudDatalabelingV1p2alpha1LabelImageClassificationOperationMetadata?
      imageClassificationDetails;

  /// Details of label image oriented bounding box operation.
  GoogleCloudDatalabelingV1p2alpha1LabelImageOrientedBoundingBoxOperationMetadata?
      imageOrientedBoundingBoxDetails;

  /// Details of label image polyline operation.
  GoogleCloudDatalabelingV1p2alpha1LabelImagePolylineOperationMetadata?
      imagePolylineDetails;

  /// Details of label image segmentation operation.
  GoogleCloudDatalabelingV1p2alpha1LabelImageSegmentationOperationMetadata?
      imageSegmentationDetails;

  /// Partial failures encountered.
  ///
  /// E.g. single files that couldn't be read. Status details field will contain
  /// standard GCP error details.
  ///
  /// Output only.
  core.List<GoogleRpcStatus>? partialFailures;

  /// Progress of label operation.
  ///
  /// Range: \[0, 100\].
  ///
  /// Output only.
  core.int? progressPercent;

  /// Details of label text classification operation.
  GoogleCloudDatalabelingV1p2alpha1LabelTextClassificationOperationMetadata?
      textClassificationDetails;

  /// Details of label text entity extraction operation.
  GoogleCloudDatalabelingV1p2alpha1LabelTextEntityExtractionOperationMetadata?
      textEntityExtractionDetails;

  /// Details of label video classification operation.
  GoogleCloudDatalabelingV1p2alpha1LabelVideoClassificationOperationMetadata?
      videoClassificationDetails;

  /// Details of label video event operation.
  GoogleCloudDatalabelingV1p2alpha1LabelVideoEventOperationMetadata?
      videoEventDetails;

  /// Details of label video object detection operation.
  GoogleCloudDatalabelingV1p2alpha1LabelVideoObjectDetectionOperationMetadata?
      videoObjectDetectionDetails;

  /// Details of label video object tracking operation.
  GoogleCloudDatalabelingV1p2alpha1LabelVideoObjectTrackingOperationMetadata?
      videoObjectTrackingDetails;

  GoogleCloudDatalabelingV1p2alpha1LabelOperationMetadata({
    this.annotatedDataset,
    this.createTime,
    this.dataset,
    this.imageBoundingBoxDetails,
    this.imageBoundingPolyDetails,
    this.imageClassificationDetails,
    this.imageOrientedBoundingBoxDetails,
    this.imagePolylineDetails,
    this.imageSegmentationDetails,
    this.partialFailures,
    this.progressPercent,
    this.textClassificationDetails,
    this.textEntityExtractionDetails,
    this.videoClassificationDetails,
    this.videoEventDetails,
    this.videoObjectDetectionDetails,
    this.videoObjectTrackingDetails,
  });

  GoogleCloudDatalabelingV1p2alpha1LabelOperationMetadata.fromJson(
      core.Map _json)
      : this(
          annotatedDataset: _json.containsKey('annotatedDataset')
              ? _json['annotatedDataset'] as core.String
              : null,
          createTime: _json.containsKey('createTime')
              ? _json['createTime'] as core.String
              : null,
          dataset: _json.containsKey('dataset')
              ? _json['dataset'] as core.String
              : null,
          imageBoundingBoxDetails: _json.containsKey('imageBoundingBoxDetails')
              ? GoogleCloudDatalabelingV1p2alpha1LabelImageBoundingBoxOperationMetadata
                  .fromJson(_json['imageBoundingBoxDetails']
                      as core.Map<core.String, core.dynamic>)
              : null,
          imageBoundingPolyDetails: _json
                  .containsKey('imageBoundingPolyDetails')
              ? GoogleCloudDatalabelingV1p2alpha1LabelImageBoundingPolyOperationMetadata
                  .fromJson(_json['imageBoundingPolyDetails']
                      as core.Map<core.String, core.dynamic>)
              : null,
          imageClassificationDetails: _json
                  .containsKey('imageClassificationDetails')
              ? GoogleCloudDatalabelingV1p2alpha1LabelImageClassificationOperationMetadata
                  .fromJson(_json['imageClassificationDetails']
                      as core.Map<core.String, core.dynamic>)
              : null,
          imageOrientedBoundingBoxDetails: _json
                  .containsKey('imageOrientedBoundingBoxDetails')
              ? GoogleCloudDatalabelingV1p2alpha1LabelImageOrientedBoundingBoxOperationMetadata
                  .fromJson(_json['imageOrientedBoundingBoxDetails']
                      as core.Map<core.String, core.dynamic>)
              : null,
          imagePolylineDetails: _json.containsKey('imagePolylineDetails')
              ? GoogleCloudDatalabelingV1p2alpha1LabelImagePolylineOperationMetadata
                  .fromJson(_json['imagePolylineDetails']
                      as core.Map<core.String, core.dynamic>)
              : null,
          imageSegmentationDetails: _json
                  .containsKey('imageSegmentationDetails')
              ? GoogleCloudDatalabelingV1p2alpha1LabelImageSegmentationOperationMetadata
                  .fromJson(_json['imageSegmentationDetails']
                      as core.Map<core.String, core.dynamic>)
              : null,
          partialFailures: _json.containsKey('partialFailures')
              ? (_json['partialFailures'] as core.List)
                  .map((value) => GoogleRpcStatus.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          progressPercent: _json.containsKey('progressPercent')
              ? _json['progressPercent'] as core.int
              : null,
          textClassificationDetails: _json
                  .containsKey('textClassificationDetails')
              ? GoogleCloudDatalabelingV1p2alpha1LabelTextClassificationOperationMetadata
                  .fromJson(_json['textClassificationDetails']
                      as core.Map<core.String, core.dynamic>)
              : null,
          textEntityExtractionDetails: _json
                  .containsKey('textEntityExtractionDetails')
              ? GoogleCloudDatalabelingV1p2alpha1LabelTextEntityExtractionOperationMetadata
                  .fromJson(_json['textEntityExtractionDetails']
                      as core.Map<core.String, core.dynamic>)
              : null,
          videoClassificationDetails: _json
                  .containsKey('videoClassificationDetails')
              ? GoogleCloudDatalabelingV1p2alpha1LabelVideoClassificationOperationMetadata
                  .fromJson(_json['videoClassificationDetails']
                      as core.Map<core.String, core.dynamic>)
              : null,
          videoEventDetails: _json.containsKey('videoEventDetails')
              ? GoogleCloudDatalabelingV1p2alpha1LabelVideoEventOperationMetadata
                  .fromJson(_json['videoEventDetails']
                      as core.Map<core.String, core.dynamic>)
              : null,
          videoObjectDetectionDetails: _json
                  .containsKey('videoObjectDetectionDetails')
              ? GoogleCloudDatalabelingV1p2alpha1LabelVideoObjectDetectionOperationMetadata
                  .fromJson(_json['videoObjectDetectionDetails']
                      as core.Map<core.String, core.dynamic>)
              : null,
          videoObjectTrackingDetails: _json
                  .containsKey('videoObjectTrackingDetails')
              ? GoogleCloudDatalabelingV1p2alpha1LabelVideoObjectTrackingOperationMetadata
                  .fromJson(_json['videoObjectTrackingDetails']
                      as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (annotatedDataset != null) 'annotatedDataset': annotatedDataset!,
        if (createTime != null) 'createTime': createTime!,
        if (dataset != null) 'dataset': dataset!,
        if (imageBoundingBoxDetails != null)
          'imageBoundingBoxDetails': imageBoundingBoxDetails!.toJson(),
        if (imageBoundingPolyDetails != null)
          'imageBoundingPolyDetails': imageBoundingPolyDetails!.toJson(),
        if (imageClassificationDetails != null)
          'imageClassificationDetails': imageClassificationDetails!.toJson(),
        if (imageOrientedBoundingBoxDetails != null)
          'imageOrientedBoundingBoxDetails':
              imageOrientedBoundingBoxDetails!.toJson(),
        if (imagePolylineDetails != null)
          'imagePolylineDetails': imagePolylineDetails!.toJson(),
        if (imageSegmentationDetails != null)
          'imageSegmentationDetails': imageSegmentationDetails!.toJson(),
        if (partialFailures != null)
          'partialFailures':
              partialFailures!.map((value) => value.toJson()).toList(),
        if (progressPercent != null) 'progressPercent': progressPercent!,
        if (textClassificationDetails != null)
          'textClassificationDetails': textClassificationDetails!.toJson(),
        if (textEntityExtractionDetails != null)
          'textEntityExtractionDetails': textEntityExtractionDetails!.toJson(),
        if (videoClassificationDetails != null)
          'videoClassificationDetails': videoClassificationDetails!.toJson(),
        if (videoEventDetails != null)
          'videoEventDetails': videoEventDetails!.toJson(),
        if (videoObjectDetectionDetails != null)
          'videoObjectDetectionDetails': videoObjectDetectionDetails!.toJson(),
        if (videoObjectTrackingDetails != null)
          'videoObjectTrackingDetails': videoObjectTrackingDetails!.toJson(),
      };
}

/// Statistics about annotation specs.
class GoogleCloudDatalabelingV1p2alpha1LabelStats {
  /// Map of each annotation spec's example count.
  ///
  /// Key is the annotation spec name and value is the number of examples for
  /// that annotation spec. If the annotated dataset does not have annotation
  /// spec, the map will return a pair where the key is empty string and value
  /// is the total number of annotations.
  core.Map<core.String, core.String>? exampleCount;

  GoogleCloudDatalabelingV1p2alpha1LabelStats({
    this.exampleCount,
  });

  GoogleCloudDatalabelingV1p2alpha1LabelStats.fromJson(core.Map _json)
      : this(
          exampleCount: _json.containsKey('exampleCount')
              ? (_json['exampleCount'] as core.Map<core.String, core.dynamic>)
                  .map(
                  (key, item) => core.MapEntry(
                    key,
                    item as core.String,
                  ),
                )
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (exampleCount != null) 'exampleCount': exampleCount!,
      };
}

/// Details of a LabelTextClassification operation metadata.
class GoogleCloudDatalabelingV1p2alpha1LabelTextClassificationOperationMetadata {
  /// Basic human annotation config used in labeling request.
  GoogleCloudDatalabelingV1p2alpha1HumanAnnotationConfig? basicConfig;

  GoogleCloudDatalabelingV1p2alpha1LabelTextClassificationOperationMetadata({
    this.basicConfig,
  });

  GoogleCloudDatalabelingV1p2alpha1LabelTextClassificationOperationMetadata.fromJson(
      core.Map _json)
      : this(
          basicConfig: _json.containsKey('basicConfig')
              ? GoogleCloudDatalabelingV1p2alpha1HumanAnnotationConfig.fromJson(
                  _json['basicConfig'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (basicConfig != null) 'basicConfig': basicConfig!.toJson(),
      };
}

/// Details of a LabelTextEntityExtraction operation metadata.
class GoogleCloudDatalabelingV1p2alpha1LabelTextEntityExtractionOperationMetadata {
  /// Basic human annotation config used in labeling request.
  GoogleCloudDatalabelingV1p2alpha1HumanAnnotationConfig? basicConfig;

  GoogleCloudDatalabelingV1p2alpha1LabelTextEntityExtractionOperationMetadata({
    this.basicConfig,
  });

  GoogleCloudDatalabelingV1p2alpha1LabelTextEntityExtractionOperationMetadata.fromJson(
      core.Map _json)
      : this(
          basicConfig: _json.containsKey('basicConfig')
              ? GoogleCloudDatalabelingV1p2alpha1HumanAnnotationConfig.fromJson(
                  _json['basicConfig'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (basicConfig != null) 'basicConfig': basicConfig!.toJson(),
      };
}

/// Details of a LabelVideoClassification operation metadata.
class GoogleCloudDatalabelingV1p2alpha1LabelVideoClassificationOperationMetadata {
  /// Basic human annotation config used in labeling request.
  GoogleCloudDatalabelingV1p2alpha1HumanAnnotationConfig? basicConfig;

  GoogleCloudDatalabelingV1p2alpha1LabelVideoClassificationOperationMetadata({
    this.basicConfig,
  });

  GoogleCloudDatalabelingV1p2alpha1LabelVideoClassificationOperationMetadata.fromJson(
      core.Map _json)
      : this(
          basicConfig: _json.containsKey('basicConfig')
              ? GoogleCloudDatalabelingV1p2alpha1HumanAnnotationConfig.fromJson(
                  _json['basicConfig'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (basicConfig != null) 'basicConfig': basicConfig!.toJson(),
      };
}

/// Details of a LabelVideoEvent operation metadata.
class GoogleCloudDatalabelingV1p2alpha1LabelVideoEventOperationMetadata {
  /// Basic human annotation config used in labeling request.
  GoogleCloudDatalabelingV1p2alpha1HumanAnnotationConfig? basicConfig;

  GoogleCloudDatalabelingV1p2alpha1LabelVideoEventOperationMetadata({
    this.basicConfig,
  });

  GoogleCloudDatalabelingV1p2alpha1LabelVideoEventOperationMetadata.fromJson(
      core.Map _json)
      : this(
          basicConfig: _json.containsKey('basicConfig')
              ? GoogleCloudDatalabelingV1p2alpha1HumanAnnotationConfig.fromJson(
                  _json['basicConfig'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (basicConfig != null) 'basicConfig': basicConfig!.toJson(),
      };
}

/// Details of a LabelVideoObjectDetection operation metadata.
class GoogleCloudDatalabelingV1p2alpha1LabelVideoObjectDetectionOperationMetadata {
  /// Basic human annotation config used in labeling request.
  GoogleCloudDatalabelingV1p2alpha1HumanAnnotationConfig? basicConfig;

  GoogleCloudDatalabelingV1p2alpha1LabelVideoObjectDetectionOperationMetadata({
    this.basicConfig,
  });

  GoogleCloudDatalabelingV1p2alpha1LabelVideoObjectDetectionOperationMetadata.fromJson(
      core.Map _json)
      : this(
          basicConfig: _json.containsKey('basicConfig')
              ? GoogleCloudDatalabelingV1p2alpha1HumanAnnotationConfig.fromJson(
                  _json['basicConfig'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (basicConfig != null) 'basicConfig': basicConfig!.toJson(),
      };
}

/// Details of a LabelVideoObjectTracking operation metadata.
class GoogleCloudDatalabelingV1p2alpha1LabelVideoObjectTrackingOperationMetadata {
  /// Basic human annotation config used in labeling request.
  GoogleCloudDatalabelingV1p2alpha1HumanAnnotationConfig? basicConfig;

  GoogleCloudDatalabelingV1p2alpha1LabelVideoObjectTrackingOperationMetadata({
    this.basicConfig,
  });

  GoogleCloudDatalabelingV1p2alpha1LabelVideoObjectTrackingOperationMetadata.fromJson(
      core.Map _json)
      : this(
          basicConfig: _json.containsKey('basicConfig')
              ? GoogleCloudDatalabelingV1p2alpha1HumanAnnotationConfig.fromJson(
                  _json['basicConfig'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (basicConfig != null) 'basicConfig': basicConfig!.toJson(),
      };
}

/// The configuration of output data.
class GoogleCloudDatalabelingV1p2alpha1OutputConfig {
  /// Output to a file in Cloud Storage.
  ///
  /// Should be used for labeling output other than image segmentation.
  GoogleCloudDatalabelingV1p2alpha1GcsDestination? gcsDestination;

  /// Output to a folder in Cloud Storage.
  ///
  /// Should be used for image segmentation or document de-identification
  /// labeling outputs.
  GoogleCloudDatalabelingV1p2alpha1GcsFolderDestination? gcsFolderDestination;

  GoogleCloudDatalabelingV1p2alpha1OutputConfig({
    this.gcsDestination,
    this.gcsFolderDestination,
  });

  GoogleCloudDatalabelingV1p2alpha1OutputConfig.fromJson(core.Map _json)
      : this(
          gcsDestination: _json.containsKey('gcsDestination')
              ? GoogleCloudDatalabelingV1p2alpha1GcsDestination.fromJson(
                  _json['gcsDestination']
                      as core.Map<core.String, core.dynamic>)
              : null,
          gcsFolderDestination: _json.containsKey('gcsFolderDestination')
              ? GoogleCloudDatalabelingV1p2alpha1GcsFolderDestination.fromJson(
                  _json['gcsFolderDestination']
                      as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (gcsDestination != null) 'gcsDestination': gcsDestination!.toJson(),
        if (gcsFolderDestination != null)
          'gcsFolderDestination': gcsFolderDestination!.toJson(),
      };
}

/// The response message for Operations.ListOperations.
class GoogleLongrunningListOperationsResponse {
  /// The standard List next-page token.
  core.String? nextPageToken;

  /// A list of operations that matches the specified filter in the request.
  core.List<GoogleLongrunningOperation>? operations;

  GoogleLongrunningListOperationsResponse({
    this.nextPageToken,
    this.operations,
  });

  GoogleLongrunningListOperationsResponse.fromJson(core.Map _json)
      : this(
          nextPageToken: _json.containsKey('nextPageToken')
              ? _json['nextPageToken'] as core.String
              : null,
          operations: _json.containsKey('operations')
              ? (_json['operations'] as core.List)
                  .map((value) => GoogleLongrunningOperation.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (operations != null)
          'operations': operations!.map((value) => value.toJson()).toList(),
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

  /// The normal response of the operation in case of success.
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

  GoogleLongrunningOperation.fromJson(core.Map _json)
      : this(
          done: _json.containsKey('done') ? _json['done'] as core.bool : null,
          error: _json.containsKey('error')
              ? GoogleRpcStatus.fromJson(
                  _json['error'] as core.Map<core.String, core.dynamic>)
              : null,
          metadata: _json.containsKey('metadata')
              ? _json['metadata'] as core.Map<core.String, core.dynamic>
              : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          response: _json.containsKey('response')
              ? _json['response'] as core.Map<core.String, core.dynamic>
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (done != null) 'done': done!,
        if (error != null) 'error': error!.toJson(),
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
/// (google.protobuf.Empty); } The JSON representation for `Empty` is empty JSON
/// object `{}`.
typedef GoogleProtobufEmpty = $Empty;

/// The `Status` type defines a logical error model that is suitable for
/// different programming environments, including REST APIs and RPC APIs.
///
/// It is used by [gRPC](https://github.com/grpc). Each `Status` message
/// contains three pieces of data: error code, error message, and error details.
/// You can find out more about this error model and how to work with it in the
/// [API Design Guide](https://cloud.google.com/apis/design/errors).
class GoogleRpcStatus {
  /// The status code, which should be an enum value of google.rpc.Code.
  core.int? code;

  /// A list of messages that carry the error details.
  ///
  /// There is a common set of message types for APIs to use.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.List<core.Map<core.String, core.Object?>>? details;

  /// A developer-facing error message, which should be in English.
  ///
  /// Any user-facing error message should be localized and sent in the
  /// google.rpc.Status.details field, or localized by the client.
  core.String? message;

  GoogleRpcStatus({
    this.code,
    this.details,
    this.message,
  });

  GoogleRpcStatus.fromJson(core.Map _json)
      : this(
          code: _json.containsKey('code') ? _json['code'] as core.int : null,
          details: _json.containsKey('details')
              ? (_json['details'] as core.List)
                  .map((value) => value as core.Map<core.String, core.dynamic>)
                  .toList()
              : null,
          message: _json.containsKey('message')
              ? _json['message'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (code != null) 'code': code!,
        if (details != null) 'details': details!,
        if (message != null) 'message': message!,
      };
}
