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

/// Data pipelines API - v1
///
/// Data Pipelines provides an interface for creating, updating, and managing
/// recurring Data Analytics jobs.
///
/// For more information, see
/// <https://cloud.google.com/dataflow/docs/guides/data-pipelines>
///
/// Create an instance of [DatapipelinesApi] to access these resources:
///
/// - [ProjectsResource]
///   - [ProjectsLocationsResource]
///     - [ProjectsLocationsPipelinesResource]
///       - [ProjectsLocationsPipelinesJobsResource]
///     - [ProjectsLocationsTransformDescriptionsResource]
library datapipelines.v1;

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

/// Data Pipelines provides an interface for creating, updating, and managing
/// recurring Data Analytics jobs.
class DatapipelinesApi {
  /// See, edit, configure, and delete your Google Cloud data and see the email
  /// address for your Google Account.
  static const cloudPlatformScope =
      'https://www.googleapis.com/auth/cloud-platform';

  final commons.ApiRequester _requester;

  ProjectsResource get projects => ProjectsResource(_requester);

  DatapipelinesApi(http.Client client,
      {core.String rootUrl = 'https://datapipelines.googleapis.com/',
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

  ProjectsLocationsPipelinesResource get pipelines =>
      ProjectsLocationsPipelinesResource(_requester);
  ProjectsLocationsTransformDescriptionsResource get transformDescriptions =>
      ProjectsLocationsTransformDescriptionsResource(_requester);

  ProjectsLocationsResource(commons.ApiRequester client) : _requester = client;

  /// Computes the schema for the transform.
  ///
  /// Computation from `raw_schema` will always occur if it is set. This
  /// requires that the transform supports that encoding. If no raw schema is
  /// provided and if the transform is for an IO, then this will attempt to
  /// connect to the resource using the details provided in `config` and infer
  /// the schema from that. If the transform is not an IO, is a sink that
  /// doesn't exist yet, or is a sink with no schema requirement, then this will
  /// fall back to basing the schema off the one provided in `input_schemas`.
  /// The computed schema will be validated.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [location] - Required. The full location formatted as
  /// "projects/{your-project}/locations/{google-cloud-region}". If attempting
  /// to infer the schema from an existing Google Cloud resource, the default
  /// Data Pipelines service account for this project will be used in making
  /// requests for the resource. If the region given for "{google-cloud-region}"
  /// is different than the region where the resource is stored, then the data
  /// will be transferred to and processed in the region specified here, but it
  /// will not be persistently stored in this region.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDatapipelinesV1Schema].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDatapipelinesV1Schema> computeSchema(
    GoogleCloudDatapipelinesV1ComputeSchemaRequest request,
    core.String location, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$location') + ':computeSchema';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudDatapipelinesV1Schema.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists pipelines.
  ///
  /// Returns a "FORBIDDEN" error if the caller doesn't have permission to
  /// access it.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The location name. For example:
  /// `projects/PROJECT_ID/locations/LOCATION_ID`.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [filter] - An expression for filtering the results of the request. If
  /// unspecified, all pipelines will be returned. Multiple filters can be
  /// applied and must be comma separated. Fields eligible for filtering are: +
  /// `type`: The type of the pipeline (streaming or batch). Allowed values are
  /// `ALL`, `BATCH`, and `STREAMING`. + `status`: The activity status of the
  /// pipeline. Allowed values are `ALL`, `ACTIVE`, `ARCHIVED`, and `PAUSED`.
  /// For example, to limit results to active batch processing pipelines:
  /// type:BATCH,status:ACTIVE
  ///
  /// [pageSize] - The maximum number of entities to return. The service may
  /// return fewer than this value, even if there are additional pages. If
  /// unspecified, the max limit is yet to be determined by the backend
  /// implementation.
  ///
  /// [pageToken] - A page token, received from a previous `ListPipelines` call.
  /// Provide this to retrieve the subsequent page. When paginating, all other
  /// parameters provided to `ListPipelines` must match the call that provided
  /// the page token.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDatapipelinesV1ListPipelinesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDatapipelinesV1ListPipelinesResponse> listPipelines(
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

    final url_ = 'v1/' + core.Uri.encodeFull('$parent');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudDatapipelinesV1ListPipelinesResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsPipelinesResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsPipelinesJobsResource get jobs =>
      ProjectsLocationsPipelinesJobsResource(_requester);

  ProjectsLocationsPipelinesResource(commons.ApiRequester client)
      : _requester = client;

  /// Creates a pipeline.
  ///
  /// For a batch pipeline, you can pass scheduler information. Data Pipelines
  /// uses the scheduler information to create an internal scheduler that runs
  /// jobs periodically. If the internal scheduler is not configured, you can
  /// use RunPipeline to run jobs.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The location name. For example:
  /// `projects/PROJECT_ID/locations/LOCATION_ID`.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDatapipelinesV1Pipeline].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDatapipelinesV1Pipeline> create(
    GoogleCloudDatapipelinesV1Pipeline request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/pipelines';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudDatapipelinesV1Pipeline.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Deletes a pipeline.
  ///
  /// If a scheduler job is attached to the pipeline, it will be deleted.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The pipeline name. For example:
  /// `projects/PROJECT_ID/locations/LOCATION_ID/pipelines/PIPELINE_ID`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/pipelines/\[^/\]+$`.
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

  /// Looks up a single pipeline.
  ///
  /// Returns a "NOT_FOUND" error if no such pipeline exists. Returns a
  /// "FORBIDDEN" error if the caller doesn't have permission to access it.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The pipeline name. For example:
  /// `projects/PROJECT_ID/locations/LOCATION_ID/pipelines/PIPELINE_ID`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/pipelines/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDatapipelinesV1Pipeline].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDatapipelinesV1Pipeline> get(
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
    return GoogleCloudDatapipelinesV1Pipeline.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Updates a pipeline.
  ///
  /// If successful, the updated Pipeline is returned. Returns `NOT_FOUND` if
  /// the pipeline doesn't exist. If UpdatePipeline does not return
  /// successfully, you can retry the UpdatePipeline request until you receive a
  /// successful response.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - The pipeline name. For example:
  /// `projects/PROJECT_ID/locations/LOCATION_ID/pipelines/PIPELINE_ID`. *
  /// `PROJECT_ID` can contain letters (\[A-Za-z\]), numbers (\[0-9\]), hyphens
  /// (-), colons (:), and periods (.). For more information, see
  /// [Identifying projects](https://cloud.google.com/resource-manager/docs/creating-managing-projects#identifying_projects).
  /// * `LOCATION_ID` is the canonical ID for the pipeline's location. The list
  /// of available locations can be obtained by calling
  /// `google.cloud.location.Locations.ListLocations`. Note that the Data
  /// Pipelines service is not available in all regions. It depends on Cloud
  /// Scheduler, an App Engine application, so it's only available in
  /// [App Engine regions](https://cloud.google.com/about/locations#region). *
  /// `PIPELINE_ID` is the ID of the pipeline. Must be unique for the selected
  /// project and location.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/pipelines/\[^/\]+$`.
  ///
  /// [updateMask] - The list of fields to be updated.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDatapipelinesV1Pipeline].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDatapipelinesV1Pipeline> patch(
    GoogleCloudDatapipelinesV1Pipeline request,
    core.String name, {
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (updateMask != null) 'updateMask': [updateMask],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudDatapipelinesV1Pipeline.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Creates a job for the specified pipeline directly.
  ///
  /// You can use this method when the internal scheduler is not configured and
  /// you want to trigger the job directly or through an external system.
  /// Returns a "NOT_FOUND" error if the pipeline doesn't exist. Returns a
  /// "FORBIDDEN" error if the user doesn't have permission to access the
  /// pipeline or run jobs for the pipeline.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The pipeline name. For example:
  /// `projects/PROJECT_ID/locations/LOCATION_ID/pipelines/PIPELINE_ID`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/pipelines/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDatapipelinesV1RunPipelineResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDatapipelinesV1RunPipelineResponse> run(
    GoogleCloudDatapipelinesV1RunPipelineRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':run';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudDatapipelinesV1RunPipelineResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Freezes pipeline execution permanently.
  ///
  /// If there's a corresponding scheduler entry, it's deleted, and the pipeline
  /// state is changed to "ARCHIVED". However, pipeline metadata is retained.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The pipeline name. For example:
  /// `projects/PROJECT_ID/locations/LOCATION_ID/pipelines/PIPELINE_ID`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/pipelines/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDatapipelinesV1Pipeline].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDatapipelinesV1Pipeline> stop(
    GoogleCloudDatapipelinesV1StopPipelineRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':stop';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudDatapipelinesV1Pipeline.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsPipelinesJobsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsPipelinesJobsResource(commons.ApiRequester client)
      : _requester = client;

  /// Lists jobs for a given pipeline.
  ///
  /// Throws a "FORBIDDEN" error if the caller doesn't have permission to access
  /// it.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The pipeline name. For example:
  /// `projects/PROJECT_ID/locations/LOCATION_ID/pipelines/PIPELINE_ID`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/pipelines/\[^/\]+$`.
  ///
  /// [pageSize] - The maximum number of entities to return. The service may
  /// return fewer than this value, even if there are additional pages. If
  /// unspecified, the max limit will be determined by the backend
  /// implementation.
  ///
  /// [pageToken] - A page token, received from a previous `ListJobs` call.
  /// Provide this to retrieve the subsequent page. When paginating, all other
  /// parameters provided to `ListJobs` must match the call that provided the
  /// page token.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDatapipelinesV1ListJobsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDatapipelinesV1ListJobsResponse> list(
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

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/jobs';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudDatapipelinesV1ListJobsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsTransformDescriptionsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsTransformDescriptionsResource(commons.ApiRequester client)
      : _requester = client;

  /// Gets transform descriptions in a batch, associated with a list of provided
  /// uniform resource names.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The project and location shared by all transform
  /// descriptions being retrieved, formatted as
  /// "projects/{project}/locations/{location}".
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [names] - Optional. The names of the transform descriptions being
  /// retrieved, formatted as
  /// "projects/{project}/locations/{location}/transformdescriptions/{transform_description}".
  /// If no name is provided, all of the transform descriptions will be
  /// returned.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a
  /// [GoogleCloudDatapipelinesV1BatchGetTransformDescriptionsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDatapipelinesV1BatchGetTransformDescriptionsResponse>
      batchGet(
    core.String parent, {
    core.List<core.String>? names,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (names != null) 'names': names,
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' +
        core.Uri.encodeFull('$parent') +
        '/transformDescriptions:batchGet';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudDatapipelinesV1BatchGetTransformDescriptionsResponse
        .fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Gets the transform description associated with the provided uniform
  /// resource name.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The full name formatted as
  /// "projects/{your-project}/locations/{google-cloud-region}/transformdescriptions/{uniform-resource-name}".
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/transformDescriptions/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDatapipelinesV1TransformDescription].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDatapipelinesV1TransformDescription> get(
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
    return GoogleCloudDatapipelinesV1TransformDescription.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

/// Represents an array of values.
///
/// The elements can be of any type.
class GoogleCloudDatapipelinesV1ArrayValue {
  /// The elements of the array.
  core.List<GoogleCloudDatapipelinesV1FieldValue>? elements;

  GoogleCloudDatapipelinesV1ArrayValue({
    this.elements,
  });

  GoogleCloudDatapipelinesV1ArrayValue.fromJson(core.Map json_)
      : this(
          elements: json_.containsKey('elements')
              ? (json_['elements'] as core.List)
                  .map((value) => GoogleCloudDatapipelinesV1FieldValue.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (elements != null) 'elements': elements!,
      };
}

/// Represents a non-dividable value.
class GoogleCloudDatapipelinesV1AtomicValue {
  /// A boolean value.
  core.bool? booleanValue;

  /// An 8-bit signed value.
  core.int? byteValue;

  /// An array of raw bytes.
  core.String? bytesValue;
  core.List<core.int> get bytesValueAsBytes =>
      convert.base64.decode(bytesValue!);

  set bytesValueAsBytes(core.List<core.int> bytes_) {
    bytesValue =
        convert.base64.encode(bytes_).replaceAll('/', '_').replaceAll('+', '-');
  }

  /// A datetime value.
  GoogleTypeDateTime? datetimeValue;

  /// A large decimal value, equivalent to Java BigDecimal.
  GoogleTypeDecimal? decimalValue;

  /// A 64-bit floating point value.
  core.double? doubleValue;

  /// A 32-bit floating point value.
  core.double? floatValue;

  /// A 16-bit signed value.
  core.int? int16Value;

  /// A 32-bit signed value.
  core.int? int32Value;

  /// A 64-bit signed value.
  core.String? int64Value;

  /// A string value.
  core.String? stringValue;

  GoogleCloudDatapipelinesV1AtomicValue({
    this.booleanValue,
    this.byteValue,
    this.bytesValue,
    this.datetimeValue,
    this.decimalValue,
    this.doubleValue,
    this.floatValue,
    this.int16Value,
    this.int32Value,
    this.int64Value,
    this.stringValue,
  });

  GoogleCloudDatapipelinesV1AtomicValue.fromJson(core.Map json_)
      : this(
          booleanValue: json_.containsKey('booleanValue')
              ? json_['booleanValue'] as core.bool
              : null,
          byteValue: json_.containsKey('byteValue')
              ? json_['byteValue'] as core.int
              : null,
          bytesValue: json_.containsKey('bytesValue')
              ? json_['bytesValue'] as core.String
              : null,
          datetimeValue: json_.containsKey('datetimeValue')
              ? GoogleTypeDateTime.fromJson(
                  json_['datetimeValue'] as core.Map<core.String, core.dynamic>)
              : null,
          decimalValue: json_.containsKey('decimalValue')
              ? GoogleTypeDecimal.fromJson(
                  json_['decimalValue'] as core.Map<core.String, core.dynamic>)
              : null,
          doubleValue: json_.containsKey('doubleValue')
              ? (json_['doubleValue'] as core.num).toDouble()
              : null,
          floatValue: json_.containsKey('floatValue')
              ? (json_['floatValue'] as core.num).toDouble()
              : null,
          int16Value: json_.containsKey('int16Value')
              ? json_['int16Value'] as core.int
              : null,
          int32Value: json_.containsKey('int32Value')
              ? json_['int32Value'] as core.int
              : null,
          int64Value: json_.containsKey('int64Value')
              ? json_['int64Value'] as core.String
              : null,
          stringValue: json_.containsKey('stringValue')
              ? json_['stringValue'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (booleanValue != null) 'booleanValue': booleanValue!,
        if (byteValue != null) 'byteValue': byteValue!,
        if (bytesValue != null) 'bytesValue': bytesValue!,
        if (datetimeValue != null) 'datetimeValue': datetimeValue!,
        if (decimalValue != null) 'decimalValue': decimalValue!,
        if (doubleValue != null) 'doubleValue': doubleValue!,
        if (floatValue != null) 'floatValue': floatValue!,
        if (int16Value != null) 'int16Value': int16Value!,
        if (int32Value != null) 'int32Value': int32Value!,
        if (int64Value != null) 'int64Value': int64Value!,
        if (stringValue != null) 'stringValue': stringValue!,
      };
}

/// Response message for BatchGetTransformDescriptions
class GoogleCloudDatapipelinesV1BatchGetTransformDescriptionsResponse {
  /// List of requested transform descriptions.
  core.List<GoogleCloudDatapipelinesV1TransformDescription>?
      transformDescriptions;

  GoogleCloudDatapipelinesV1BatchGetTransformDescriptionsResponse({
    this.transformDescriptions,
  });

  GoogleCloudDatapipelinesV1BatchGetTransformDescriptionsResponse.fromJson(
      core.Map json_)
      : this(
          transformDescriptions: json_.containsKey('transformDescriptions')
              ? (json_['transformDescriptions'] as core.List)
                  .map((value) =>
                      GoogleCloudDatapipelinesV1TransformDescription.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (transformDescriptions != null)
          'transformDescriptions': transformDescriptions!,
      };
}

/// Request message for ComputeSchema
class GoogleCloudDatapipelinesV1ComputeSchemaRequest {
  /// The configuration for the transform.
  ///
  /// If this is not a source, then each input with its schema must be set. It
  /// is not required to have any outputs set.
  ///
  /// Required.
  GoogleCloudDatapipelinesV1ConfiguredTransform? config;

  /// In relation to the full pipeline graph, the schemas of the transforms that
  /// are used as inputs to the one for `config`.
  ///
  /// If `config` represents a transform for reading from some resource, then
  /// this should be empty. For all other transforms, at least one value must be
  /// provided.
  ///
  /// Optional.
  core.List<GoogleCloudDatapipelinesV1Schema>? inputSchemas;

  /// If set, this will use the provided raw schema to compute the schema rather
  /// than connecting to any resources.
  ///
  /// Validation will still occur to make sure it is compatible with all input
  /// schemas. If the transform is an IO, the IO must support that schema type.
  ///
  /// Optional.
  GoogleCloudDatapipelinesV1RawSchemaInfo? rawSchema;

  GoogleCloudDatapipelinesV1ComputeSchemaRequest({
    this.config,
    this.inputSchemas,
    this.rawSchema,
  });

  GoogleCloudDatapipelinesV1ComputeSchemaRequest.fromJson(core.Map json_)
      : this(
          config: json_.containsKey('config')
              ? GoogleCloudDatapipelinesV1ConfiguredTransform.fromJson(
                  json_['config'] as core.Map<core.String, core.dynamic>)
              : null,
          inputSchemas: json_.containsKey('inputSchemas')
              ? (json_['inputSchemas'] as core.List)
                  .map((value) => GoogleCloudDatapipelinesV1Schema.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          rawSchema: json_.containsKey('rawSchema')
              ? GoogleCloudDatapipelinesV1RawSchemaInfo.fromJson(
                  json_['rawSchema'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (config != null) 'config': config!,
        if (inputSchemas != null) 'inputSchemas': inputSchemas!,
        if (rawSchema != null) 'rawSchema': rawSchema!,
      };
}

/// A fully configured transform that can be validated.
class GoogleCloudDatapipelinesV1ConfiguredTransform {
  /// Configuration values provided.
  ///
  /// These must match the schema provided in the row's schema.
  GoogleCloudDatapipelinesV1Row? config;

  /// Unique resource name of the transform.
  ///
  /// This should be the same as the equivalent `TransformDescription` value.
  core.String? uniformResourceName;

  GoogleCloudDatapipelinesV1ConfiguredTransform({
    this.config,
    this.uniformResourceName,
  });

  GoogleCloudDatapipelinesV1ConfiguredTransform.fromJson(core.Map json_)
      : this(
          config: json_.containsKey('config')
              ? GoogleCloudDatapipelinesV1Row.fromJson(
                  json_['config'] as core.Map<core.String, core.dynamic>)
              : null,
          uniformResourceName: json_.containsKey('uniformResourceName')
              ? json_['uniformResourceName'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (config != null) 'config': config!,
        if (uniformResourceName != null)
          'uniformResourceName': uniformResourceName!,
      };
}

/// Pipeline job details specific to the Dataflow API.
///
/// This is encapsulated here to allow for more executors to store their
/// specific details separately.
class GoogleCloudDatapipelinesV1DataflowJobDetails {
  /// The current number of workers used to run the jobs.
  ///
  /// Only set to a value if the job is still running.
  ///
  /// Output only.
  core.int? currentWorkers;

  /// Cached version of all the metrics of interest for the job.
  ///
  /// This value gets stored here when the job is terminated. As long as the job
  /// is running, this field is populated from the Dataflow API.
  core.Map<core.String, core.double>? resourceInfo;

  /// The SDK version used to run the job.
  ///
  /// Output only.
  GoogleCloudDatapipelinesV1SdkVersion? sdkVersion;

  GoogleCloudDatapipelinesV1DataflowJobDetails({
    this.currentWorkers,
    this.resourceInfo,
    this.sdkVersion,
  });

  GoogleCloudDatapipelinesV1DataflowJobDetails.fromJson(core.Map json_)
      : this(
          currentWorkers: json_.containsKey('currentWorkers')
              ? json_['currentWorkers'] as core.int
              : null,
          resourceInfo: json_.containsKey('resourceInfo')
              ? (json_['resourceInfo'] as core.Map<core.String, core.dynamic>)
                  .map(
                  (key, item) => core.MapEntry(
                    key,
                    (item as core.num).toDouble(),
                  ),
                )
              : null,
          sdkVersion: json_.containsKey('sdkVersion')
              ? GoogleCloudDatapipelinesV1SdkVersion.fromJson(
                  json_['sdkVersion'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (currentWorkers != null) 'currentWorkers': currentWorkers!,
        if (resourceInfo != null) 'resourceInfo': resourceInfo!,
        if (sdkVersion != null) 'sdkVersion': sdkVersion!,
      };
}

/// Represents a selected value from an EnumerationType.
class GoogleCloudDatapipelinesV1EnumerationValue {
  /// Name of the enum option.
  core.String? name;

  GoogleCloudDatapipelinesV1EnumerationValue({
    this.name,
  });

  GoogleCloudDatapipelinesV1EnumerationValue.fromJson(core.Map json_)
      : this(
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (name != null) 'name': name!,
      };
}

/// Info for a single field in the schema.
class GoogleCloudDatapipelinesV1Field {
  /// Name of the field.
  core.String? name;

  /// Type info for the field.
  GoogleCloudDatapipelinesV1FieldType? type;

  GoogleCloudDatapipelinesV1Field({
    this.name,
    this.type,
  });

  GoogleCloudDatapipelinesV1Field.fromJson(core.Map json_)
      : this(
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          type: json_.containsKey('type')
              ? GoogleCloudDatapipelinesV1FieldType.fromJson(
                  json_['type'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (name != null) 'name': name!,
        if (type != null) 'type': type!,
      };
}

/// Type info about a field.
class GoogleCloudDatapipelinesV1FieldType {
  /// If `type` is an array or iterable, this is the type contained in that
  /// array or iterable.
  GoogleCloudDatapipelinesV1FieldType? collectionElementType;

  /// If `type` is a logical type, this is the info for the specific logical
  /// type.
  GoogleCloudDatapipelinesV1LogicalType? logicalType;

  /// If `type` is a map, this is the key and value types for that map.
  GoogleCloudDatapipelinesV1MapType? mapType;

  /// Whether or not this field is nullable.
  core.bool? nullable;

  /// If `type` is a row, this is the schema of that row.
  GoogleCloudDatapipelinesV1Schema? rowSchema;

  /// Specific type of the field.
  ///
  /// For non-atomic types, the corresponding type info for that non-atomic must
  /// be set.
  /// Possible string values are:
  /// - "TYPE_NAME_UNSPECIFIED" : Type name is not set (generally an error)
  /// - "TYPE_NAME_BYTE" : 8-bit signed integer
  /// - "TYPE_NAME_INT16" : 16-bit signed integer
  /// - "TYPE_NAME_INT32" : 32-bit signed integer
  /// - "TYPE_NAME_INT64" : 64-bit signed integer
  /// - "TYPE_NAME_DECIMAL" : Large decimal type (equivalent to Java BigDecimal)
  /// - "TYPE_NAME_FLOAT" : 32-bit floating point integer
  /// - "TYPE_NAME_DOUBLE" : 64-bit floating point integer
  /// - "TYPE_NAME_STRING" : String
  /// - "TYPE_NAME_DATETIME" : Datetime
  /// - "TYPE_NAME_BOOLEAN" : Bool
  /// - "TYPE_NAME_BYTES" : Convenience for an ARRAY of BYTE values
  /// - "TYPE_NAME_ARRAY" : Array of some other values.
  /// - "TYPE_NAME_ITERABLE" : Iterable of some other values.
  /// - "TYPE_NAME_MAP" : Key/Value mapping between values.
  /// - "TYPE_NAME_ROW" : Struct that follows a particular schema
  /// - "TYPE_NAME_LOGICAL_TYPE" : Beam logical type
  core.String? type;

  GoogleCloudDatapipelinesV1FieldType({
    this.collectionElementType,
    this.logicalType,
    this.mapType,
    this.nullable,
    this.rowSchema,
    this.type,
  });

  GoogleCloudDatapipelinesV1FieldType.fromJson(core.Map json_)
      : this(
          collectionElementType: json_.containsKey('collectionElementType')
              ? GoogleCloudDatapipelinesV1FieldType.fromJson(
                  json_['collectionElementType']
                      as core.Map<core.String, core.dynamic>)
              : null,
          logicalType: json_.containsKey('logicalType')
              ? GoogleCloudDatapipelinesV1LogicalType.fromJson(
                  json_['logicalType'] as core.Map<core.String, core.dynamic>)
              : null,
          mapType: json_.containsKey('mapType')
              ? GoogleCloudDatapipelinesV1MapType.fromJson(
                  json_['mapType'] as core.Map<core.String, core.dynamic>)
              : null,
          nullable: json_.containsKey('nullable')
              ? json_['nullable'] as core.bool
              : null,
          rowSchema: json_.containsKey('rowSchema')
              ? GoogleCloudDatapipelinesV1Schema.fromJson(
                  json_['rowSchema'] as core.Map<core.String, core.dynamic>)
              : null,
          type: json_.containsKey('type') ? json_['type'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (collectionElementType != null)
          'collectionElementType': collectionElementType!,
        if (logicalType != null) 'logicalType': logicalType!,
        if (mapType != null) 'mapType': mapType!,
        if (nullable != null) 'nullable': nullable!,
        if (rowSchema != null) 'rowSchema': rowSchema!,
        if (type != null) 'type': type!,
      };
}

/// A single value in a row.
///
/// The value set must correspond to the correct type from the row's schema.
class GoogleCloudDatapipelinesV1FieldValue {
  /// The array value of this field.
  ///
  /// Corresponds to TYPE_NAME_ARRAY in the schema.
  GoogleCloudDatapipelinesV1ArrayValue? arrayValue;

  /// The atomic value of this field.
  ///
  /// Must correspond to the correct atomic type in the schema.
  GoogleCloudDatapipelinesV1AtomicValue? atomicValue;

  /// The enum value of this field.
  ///
  /// Corresponds to TYPE_NAME_LOGICAL_TYPE in the schema if that logical type
  /// represents an `EnumerationType` type.
  GoogleCloudDatapipelinesV1EnumerationValue? enumValue;

  /// The fixed-length byte collection of this field.
  ///
  /// Corresponds to TYPE_NAME_LOGICAL_TYPE in the schema if that logical type
  /// represents a `FixedBytes` type.
  GoogleCloudDatapipelinesV1FixedBytesValue? fixedBytesValue;

  /// The iterable value of this field.
  ///
  /// Corresponds to TYPE_NAME_ITERABLE in the schema.
  GoogleCloudDatapipelinesV1IterableValue? iterableValue;

  /// The map value of this field.
  ///
  /// Corresponds to TYPE_NAME_MAP in the schema.
  GoogleCloudDatapipelinesV1MapValue? mapValue;

  /// The row value of this field.
  ///
  /// Corresponds to TYPE_NAME_ROW in the schema. This row also holds to its own
  /// schema.
  GoogleCloudDatapipelinesV1Row? rowValue;

  GoogleCloudDatapipelinesV1FieldValue({
    this.arrayValue,
    this.atomicValue,
    this.enumValue,
    this.fixedBytesValue,
    this.iterableValue,
    this.mapValue,
    this.rowValue,
  });

  GoogleCloudDatapipelinesV1FieldValue.fromJson(core.Map json_)
      : this(
          arrayValue: json_.containsKey('arrayValue')
              ? GoogleCloudDatapipelinesV1ArrayValue.fromJson(
                  json_['arrayValue'] as core.Map<core.String, core.dynamic>)
              : null,
          atomicValue: json_.containsKey('atomicValue')
              ? GoogleCloudDatapipelinesV1AtomicValue.fromJson(
                  json_['atomicValue'] as core.Map<core.String, core.dynamic>)
              : null,
          enumValue: json_.containsKey('enumValue')
              ? GoogleCloudDatapipelinesV1EnumerationValue.fromJson(
                  json_['enumValue'] as core.Map<core.String, core.dynamic>)
              : null,
          fixedBytesValue: json_.containsKey('fixedBytesValue')
              ? GoogleCloudDatapipelinesV1FixedBytesValue.fromJson(
                  json_['fixedBytesValue']
                      as core.Map<core.String, core.dynamic>)
              : null,
          iterableValue: json_.containsKey('iterableValue')
              ? GoogleCloudDatapipelinesV1IterableValue.fromJson(
                  json_['iterableValue'] as core.Map<core.String, core.dynamic>)
              : null,
          mapValue: json_.containsKey('mapValue')
              ? GoogleCloudDatapipelinesV1MapValue.fromJson(
                  json_['mapValue'] as core.Map<core.String, core.dynamic>)
              : null,
          rowValue: json_.containsKey('rowValue')
              ? GoogleCloudDatapipelinesV1Row.fromJson(
                  json_['rowValue'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (arrayValue != null) 'arrayValue': arrayValue!,
        if (atomicValue != null) 'atomicValue': atomicValue!,
        if (enumValue != null) 'enumValue': enumValue!,
        if (fixedBytesValue != null) 'fixedBytesValue': fixedBytesValue!,
        if (iterableValue != null) 'iterableValue': iterableValue!,
        if (mapValue != null) 'mapValue': mapValue!,
        if (rowValue != null) 'rowValue': rowValue!,
      };
}

/// Represents a collection of bytes whose size is the same as the associated
/// FixedBytes size value.
class GoogleCloudDatapipelinesV1FixedBytesValue {
  /// The raw bytes.
  ///
  /// It must be exactly the size specified in the schema.
  core.String? value;
  core.List<core.int> get valueAsBytes => convert.base64.decode(value!);

  set valueAsBytes(core.List<core.int> bytes_) {
    value =
        convert.base64.encode(bytes_).replaceAll('/', '_').replaceAll('+', '-');
  }

  GoogleCloudDatapipelinesV1FixedBytesValue({
    this.value,
  });

  GoogleCloudDatapipelinesV1FixedBytesValue.fromJson(core.Map json_)
      : this(
          value:
              json_.containsKey('value') ? json_['value'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (value != null) 'value': value!,
      };
}

/// The environment values to be set at runtime for a Flex Template.
class GoogleCloudDatapipelinesV1FlexTemplateRuntimeEnvironment {
  /// Additional experiment flags for the job.
  core.List<core.String>? additionalExperiments;

  /// Additional user labels to be specified for the job.
  ///
  /// Keys and values must follow the restrictions specified in the
  /// [labeling restrictions](https://cloud.google.com/compute/docs/labeling-resources#restrictions).
  /// An object containing a list of key/value pairs. Example: `{ "name":
  /// "wrench", "mass": "1kg", "count": "3" }`.
  core.Map<core.String, core.String>? additionalUserLabels;

  /// Whether to enable Streaming Engine for the job.
  core.bool? enableStreamingEngine;

  /// Set FlexRS goal for the job.
  ///
  /// https://cloud.google.com/dataflow/docs/guides/flexrs
  /// Possible string values are:
  /// - "FLEXRS_UNSPECIFIED" : Run in the default mode.
  /// - "FLEXRS_SPEED_OPTIMIZED" : Optimize for lower execution time.
  /// - "FLEXRS_COST_OPTIMIZED" : Optimize for lower cost.
  core.String? flexrsGoal;

  /// Configuration for VM IPs.
  /// Possible string values are:
  /// - "WORKER_IP_UNSPECIFIED" : The configuration is unknown, or unspecified.
  /// - "WORKER_IP_PUBLIC" : Workers should have public IP addresses.
  /// - "WORKER_IP_PRIVATE" : Workers should have private IP addresses.
  core.String? ipConfiguration;

  /// Name for the Cloud KMS key for the job.
  ///
  /// Key format is: projects//locations//keyRings//cryptoKeys/
  core.String? kmsKeyName;

  /// The machine type to use for the job.
  ///
  /// Defaults to the value from the template if not specified.
  core.String? machineType;

  /// The maximum number of Compute Engine instances to be made available to
  /// your pipeline during execution, from 1 to 1000.
  core.int? maxWorkers;

  /// Network to which VMs will be assigned.
  ///
  /// If empty or unspecified, the service will use the network "default".
  core.String? network;

  /// The initial number of Compute Engine instances for the job.
  core.int? numWorkers;

  /// The email address of the service account to run the job as.
  core.String? serviceAccountEmail;

  /// Subnetwork to which VMs will be assigned, if desired.
  ///
  /// You can specify a subnetwork using either a complete URL or an abbreviated
  /// path. Expected to be of the form
  /// "https://www.googleapis.com/compute/v1/projects/HOST_PROJECT_ID/regions/REGION/subnetworks/SUBNETWORK"
  /// or "regions/REGION/subnetworks/SUBNETWORK". If the subnetwork is located
  /// in a Shared VPC network, you must use the complete URL.
  core.String? subnetwork;

  /// The Cloud Storage path to use for temporary files.
  ///
  /// Must be a valid Cloud Storage URL, beginning with `gs://`.
  core.String? tempLocation;

  /// The Compute Engine region
  /// (https://cloud.google.com/compute/docs/regions-zones/regions-zones) in
  /// which worker processing should occur, e.g. "us-west1".
  ///
  /// Mutually exclusive with worker_zone. If neither worker_region nor
  /// worker_zone is specified, defaults to the control plane region.
  core.String? workerRegion;

  /// The Compute Engine zone
  /// (https://cloud.google.com/compute/docs/regions-zones/regions-zones) in
  /// which worker processing should occur, e.g. "us-west1-a".
  ///
  /// Mutually exclusive with worker_region. If neither worker_region nor
  /// worker_zone is specified, a zone in the control plane region is chosen
  /// based on available capacity. If both `worker_zone` and `zone` are set,
  /// `worker_zone` takes precedence.
  core.String? workerZone;

  /// The Compute Engine
  /// [availability zone](https://cloud.google.com/compute/docs/regions-zones/regions-zones)
  /// for launching worker instances to run your pipeline.
  ///
  /// In the future, worker_zone will take precedence.
  core.String? zone;

  GoogleCloudDatapipelinesV1FlexTemplateRuntimeEnvironment({
    this.additionalExperiments,
    this.additionalUserLabels,
    this.enableStreamingEngine,
    this.flexrsGoal,
    this.ipConfiguration,
    this.kmsKeyName,
    this.machineType,
    this.maxWorkers,
    this.network,
    this.numWorkers,
    this.serviceAccountEmail,
    this.subnetwork,
    this.tempLocation,
    this.workerRegion,
    this.workerZone,
    this.zone,
  });

  GoogleCloudDatapipelinesV1FlexTemplateRuntimeEnvironment.fromJson(
      core.Map json_)
      : this(
          additionalExperiments: json_.containsKey('additionalExperiments')
              ? (json_['additionalExperiments'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          additionalUserLabels: json_.containsKey('additionalUserLabels')
              ? (json_['additionalUserLabels']
                      as core.Map<core.String, core.dynamic>)
                  .map(
                  (key, item) => core.MapEntry(
                    key,
                    item as core.String,
                  ),
                )
              : null,
          enableStreamingEngine: json_.containsKey('enableStreamingEngine')
              ? json_['enableStreamingEngine'] as core.bool
              : null,
          flexrsGoal: json_.containsKey('flexrsGoal')
              ? json_['flexrsGoal'] as core.String
              : null,
          ipConfiguration: json_.containsKey('ipConfiguration')
              ? json_['ipConfiguration'] as core.String
              : null,
          kmsKeyName: json_.containsKey('kmsKeyName')
              ? json_['kmsKeyName'] as core.String
              : null,
          machineType: json_.containsKey('machineType')
              ? json_['machineType'] as core.String
              : null,
          maxWorkers: json_.containsKey('maxWorkers')
              ? json_['maxWorkers'] as core.int
              : null,
          network: json_.containsKey('network')
              ? json_['network'] as core.String
              : null,
          numWorkers: json_.containsKey('numWorkers')
              ? json_['numWorkers'] as core.int
              : null,
          serviceAccountEmail: json_.containsKey('serviceAccountEmail')
              ? json_['serviceAccountEmail'] as core.String
              : null,
          subnetwork: json_.containsKey('subnetwork')
              ? json_['subnetwork'] as core.String
              : null,
          tempLocation: json_.containsKey('tempLocation')
              ? json_['tempLocation'] as core.String
              : null,
          workerRegion: json_.containsKey('workerRegion')
              ? json_['workerRegion'] as core.String
              : null,
          workerZone: json_.containsKey('workerZone')
              ? json_['workerZone'] as core.String
              : null,
          zone: json_.containsKey('zone') ? json_['zone'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (additionalExperiments != null)
          'additionalExperiments': additionalExperiments!,
        if (additionalUserLabels != null)
          'additionalUserLabels': additionalUserLabels!,
        if (enableStreamingEngine != null)
          'enableStreamingEngine': enableStreamingEngine!,
        if (flexrsGoal != null) 'flexrsGoal': flexrsGoal!,
        if (ipConfiguration != null) 'ipConfiguration': ipConfiguration!,
        if (kmsKeyName != null) 'kmsKeyName': kmsKeyName!,
        if (machineType != null) 'machineType': machineType!,
        if (maxWorkers != null) 'maxWorkers': maxWorkers!,
        if (network != null) 'network': network!,
        if (numWorkers != null) 'numWorkers': numWorkers!,
        if (serviceAccountEmail != null)
          'serviceAccountEmail': serviceAccountEmail!,
        if (subnetwork != null) 'subnetwork': subnetwork!,
        if (tempLocation != null) 'tempLocation': tempLocation!,
        if (workerRegion != null) 'workerRegion': workerRegion!,
        if (workerZone != null) 'workerZone': workerZone!,
        if (zone != null) 'zone': zone!,
      };
}

/// Represents an iterable of values.
///
/// The elements can be of any type.
class GoogleCloudDatapipelinesV1IterableValue {
  /// The elements of the iterable.
  core.List<GoogleCloudDatapipelinesV1FieldValue>? elements;

  GoogleCloudDatapipelinesV1IterableValue({
    this.elements,
  });

  GoogleCloudDatapipelinesV1IterableValue.fromJson(core.Map json_)
      : this(
          elements: json_.containsKey('elements')
              ? (json_['elements'] as core.List)
                  .map((value) => GoogleCloudDatapipelinesV1FieldValue.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (elements != null) 'elements': elements!,
      };
}

/// Definition of the job information maintained by the pipeline.
///
/// Fields in this entity are retrieved from the executor API (e.g. Dataflow
/// API).
class GoogleCloudDatapipelinesV1Job {
  /// The time of job creation.
  ///
  /// Output only.
  core.String? createTime;

  /// All the details that are specific to a Dataflow job.
  GoogleCloudDatapipelinesV1DataflowJobDetails? dataflowJobDetails;

  /// The time of job termination.
  ///
  /// This is absent if the job is still running.
  ///
  /// Output only.
  core.String? endTime;

  /// The internal ID for the job.
  ///
  /// Output only.
  core.String? id;

  /// The fully qualified resource name for the job.
  ///
  /// Required.
  core.String? name;

  /// The current state of the job.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : The job state isn't specified.
  /// - "STATE_PENDING" : The job is waiting to start execution.
  /// - "STATE_RUNNING" : The job is executing.
  /// - "STATE_DONE" : The job has finished execution successfully.
  /// - "STATE_FAILED" : The job has finished execution with a failure.
  /// - "STATE_CANCELLED" : The job has been terminated upon user request.
  core.String? state;

  /// Status capturing any error code or message related to job creation or
  /// execution.
  GoogleRpcStatus? status;

  GoogleCloudDatapipelinesV1Job({
    this.createTime,
    this.dataflowJobDetails,
    this.endTime,
    this.id,
    this.name,
    this.state,
    this.status,
  });

  GoogleCloudDatapipelinesV1Job.fromJson(core.Map json_)
      : this(
          createTime: json_.containsKey('createTime')
              ? json_['createTime'] as core.String
              : null,
          dataflowJobDetails: json_.containsKey('dataflowJobDetails')
              ? GoogleCloudDatapipelinesV1DataflowJobDetails.fromJson(
                  json_['dataflowJobDetails']
                      as core.Map<core.String, core.dynamic>)
              : null,
          endTime: json_.containsKey('endTime')
              ? json_['endTime'] as core.String
              : null,
          id: json_.containsKey('id') ? json_['id'] as core.String : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          state:
              json_.containsKey('state') ? json_['state'] as core.String : null,
          status: json_.containsKey('status')
              ? GoogleRpcStatus.fromJson(
                  json_['status'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (createTime != null) 'createTime': createTime!,
        if (dataflowJobDetails != null)
          'dataflowJobDetails': dataflowJobDetails!,
        if (endTime != null) 'endTime': endTime!,
        if (id != null) 'id': id!,
        if (name != null) 'name': name!,
        if (state != null) 'state': state!,
        if (status != null) 'status': status!,
      };
}

/// Launch Flex Template parameter.
class GoogleCloudDatapipelinesV1LaunchFlexTemplateParameter {
  /// Cloud Storage path to a file with a JSON-serialized ContainerSpec as
  /// content.
  core.String? containerSpecGcsPath;

  /// The runtime environment for the Flex Template job.
  GoogleCloudDatapipelinesV1FlexTemplateRuntimeEnvironment? environment;

  /// The job name to use for the created job.
  ///
  /// For an update job request, the job name should be the same as the existing
  /// running job.
  ///
  /// Required.
  core.String? jobName;

  /// Launch options for this Flex Template job.
  ///
  /// This is a common set of options across languages and templates. This
  /// should not be used to pass job parameters.
  core.Map<core.String, core.String>? launchOptions;

  /// The parameters for the Flex Template.
  ///
  /// Example: `{"num_workers":"5"}`
  core.Map<core.String, core.String>? parameters;

  /// Use this to pass transform name mappings for streaming update jobs.
  ///
  /// Example: `{"oldTransformName":"newTransformName",...}`
  core.Map<core.String, core.String>? transformNameMappings;

  /// Set this to true if you are sending a request to update a running
  /// streaming job.
  ///
  /// When set, the job name should be the same as the running job.
  core.bool? update;

  GoogleCloudDatapipelinesV1LaunchFlexTemplateParameter({
    this.containerSpecGcsPath,
    this.environment,
    this.jobName,
    this.launchOptions,
    this.parameters,
    this.transformNameMappings,
    this.update,
  });

  GoogleCloudDatapipelinesV1LaunchFlexTemplateParameter.fromJson(core.Map json_)
      : this(
          containerSpecGcsPath: json_.containsKey('containerSpecGcsPath')
              ? json_['containerSpecGcsPath'] as core.String
              : null,
          environment: json_.containsKey('environment')
              ? GoogleCloudDatapipelinesV1FlexTemplateRuntimeEnvironment
                  .fromJson(json_['environment']
                      as core.Map<core.String, core.dynamic>)
              : null,
          jobName: json_.containsKey('jobName')
              ? json_['jobName'] as core.String
              : null,
          launchOptions: json_.containsKey('launchOptions')
              ? (json_['launchOptions'] as core.Map<core.String, core.dynamic>)
                  .map(
                  (key, item) => core.MapEntry(
                    key,
                    item as core.String,
                  ),
                )
              : null,
          parameters: json_.containsKey('parameters')
              ? (json_['parameters'] as core.Map<core.String, core.dynamic>)
                  .map(
                  (key, item) => core.MapEntry(
                    key,
                    item as core.String,
                  ),
                )
              : null,
          transformNameMappings: json_.containsKey('transformNameMappings')
              ? (json_['transformNameMappings']
                      as core.Map<core.String, core.dynamic>)
                  .map(
                  (key, item) => core.MapEntry(
                    key,
                    item as core.String,
                  ),
                )
              : null,
          update:
              json_.containsKey('update') ? json_['update'] as core.bool : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (containerSpecGcsPath != null)
          'containerSpecGcsPath': containerSpecGcsPath!,
        if (environment != null) 'environment': environment!,
        if (jobName != null) 'jobName': jobName!,
        if (launchOptions != null) 'launchOptions': launchOptions!,
        if (parameters != null) 'parameters': parameters!,
        if (transformNameMappings != null)
          'transformNameMappings': transformNameMappings!,
        if (update != null) 'update': update!,
      };
}

/// A request to launch a Dataflow job from a Flex Template.
class GoogleCloudDatapipelinesV1LaunchFlexTemplateRequest {
  /// Parameter to launch a job from a Flex Template.
  ///
  /// Required.
  GoogleCloudDatapipelinesV1LaunchFlexTemplateParameter? launchParameter;

  /// The
  /// [regional endpoint](https://cloud.google.com/dataflow/docs/concepts/regional-endpoints)
  /// to which to direct the request.
  ///
  /// For example, `us-central1`, `us-west1`.
  ///
  /// Required.
  core.String? location;

  /// The ID of the Cloud Platform project that the job belongs to.
  ///
  /// Required.
  core.String? projectId;

  /// If true, the request is validated but not actually executed.
  ///
  /// Defaults to false.
  core.bool? validateOnly;

  GoogleCloudDatapipelinesV1LaunchFlexTemplateRequest({
    this.launchParameter,
    this.location,
    this.projectId,
    this.validateOnly,
  });

  GoogleCloudDatapipelinesV1LaunchFlexTemplateRequest.fromJson(core.Map json_)
      : this(
          launchParameter: json_.containsKey('launchParameter')
              ? GoogleCloudDatapipelinesV1LaunchFlexTemplateParameter.fromJson(
                  json_['launchParameter']
                      as core.Map<core.String, core.dynamic>)
              : null,
          location: json_.containsKey('location')
              ? json_['location'] as core.String
              : null,
          projectId: json_.containsKey('projectId')
              ? json_['projectId'] as core.String
              : null,
          validateOnly: json_.containsKey('validateOnly')
              ? json_['validateOnly'] as core.bool
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (launchParameter != null) 'launchParameter': launchParameter!,
        if (location != null) 'location': location!,
        if (projectId != null) 'projectId': projectId!,
        if (validateOnly != null) 'validateOnly': validateOnly!,
      };
}

/// Parameters to provide to the template being launched.
class GoogleCloudDatapipelinesV1LaunchTemplateParameters {
  /// The runtime environment for the job.
  GoogleCloudDatapipelinesV1RuntimeEnvironment? environment;

  /// The job name to use for the created job.
  ///
  /// Required.
  core.String? jobName;

  /// The runtime parameters to pass to the job.
  core.Map<core.String, core.String>? parameters;

  /// Map of transform name prefixes of the job to be replaced to the
  /// corresponding name prefixes of the new job.
  ///
  /// Only applicable when updating a pipeline.
  core.Map<core.String, core.String>? transformNameMapping;

  /// If set, replace the existing pipeline with the name specified by jobName
  /// with this pipeline, preserving state.
  core.bool? update;

  GoogleCloudDatapipelinesV1LaunchTemplateParameters({
    this.environment,
    this.jobName,
    this.parameters,
    this.transformNameMapping,
    this.update,
  });

  GoogleCloudDatapipelinesV1LaunchTemplateParameters.fromJson(core.Map json_)
      : this(
          environment: json_.containsKey('environment')
              ? GoogleCloudDatapipelinesV1RuntimeEnvironment.fromJson(
                  json_['environment'] as core.Map<core.String, core.dynamic>)
              : null,
          jobName: json_.containsKey('jobName')
              ? json_['jobName'] as core.String
              : null,
          parameters: json_.containsKey('parameters')
              ? (json_['parameters'] as core.Map<core.String, core.dynamic>)
                  .map(
                  (key, item) => core.MapEntry(
                    key,
                    item as core.String,
                  ),
                )
              : null,
          transformNameMapping: json_.containsKey('transformNameMapping')
              ? (json_['transformNameMapping']
                      as core.Map<core.String, core.dynamic>)
                  .map(
                  (key, item) => core.MapEntry(
                    key,
                    item as core.String,
                  ),
                )
              : null,
          update:
              json_.containsKey('update') ? json_['update'] as core.bool : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (environment != null) 'environment': environment!,
        if (jobName != null) 'jobName': jobName!,
        if (parameters != null) 'parameters': parameters!,
        if (transformNameMapping != null)
          'transformNameMapping': transformNameMapping!,
        if (update != null) 'update': update!,
      };
}

/// A request to launch a template.
class GoogleCloudDatapipelinesV1LaunchTemplateRequest {
  /// A Cloud Storage path to the template from which to create the job.
  ///
  /// Must be a valid Cloud Storage URL, beginning with 'gs://'.
  core.String? gcsPath;

  /// The parameters of the template to launch.
  ///
  /// This should be part of the body of the POST request.
  GoogleCloudDatapipelinesV1LaunchTemplateParameters? launchParameters;

  /// The
  /// [regional endpoint](https://cloud.google.com/dataflow/docs/concepts/regional-endpoints)
  /// to which to direct the request.
  core.String? location;

  /// The ID of the Cloud Platform project that the job belongs to.
  ///
  /// Required.
  core.String? projectId;

  /// If true, the request is validated but not actually executed.
  ///
  /// Defaults to false.
  core.bool? validateOnly;

  GoogleCloudDatapipelinesV1LaunchTemplateRequest({
    this.gcsPath,
    this.launchParameters,
    this.location,
    this.projectId,
    this.validateOnly,
  });

  GoogleCloudDatapipelinesV1LaunchTemplateRequest.fromJson(core.Map json_)
      : this(
          gcsPath: json_.containsKey('gcsPath')
              ? json_['gcsPath'] as core.String
              : null,
          launchParameters: json_.containsKey('launchParameters')
              ? GoogleCloudDatapipelinesV1LaunchTemplateParameters.fromJson(
                  json_['launchParameters']
                      as core.Map<core.String, core.dynamic>)
              : null,
          location: json_.containsKey('location')
              ? json_['location'] as core.String
              : null,
          projectId: json_.containsKey('projectId')
              ? json_['projectId'] as core.String
              : null,
          validateOnly: json_.containsKey('validateOnly')
              ? json_['validateOnly'] as core.bool
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (gcsPath != null) 'gcsPath': gcsPath!,
        if (launchParameters != null) 'launchParameters': launchParameters!,
        if (location != null) 'location': location!,
        if (projectId != null) 'projectId': projectId!,
        if (validateOnly != null) 'validateOnly': validateOnly!,
      };
}

/// Response message for ListJobs
class GoogleCloudDatapipelinesV1ListJobsResponse {
  /// Results that were accessible to the caller.
  ///
  /// Results are always in descending order of job creation date.
  core.List<GoogleCloudDatapipelinesV1Job>? jobs;

  /// A token, which can be sent as `page_token` to retrieve the next page.
  ///
  /// If this field is omitted, there are no subsequent pages.
  core.String? nextPageToken;

  GoogleCloudDatapipelinesV1ListJobsResponse({
    this.jobs,
    this.nextPageToken,
  });

  GoogleCloudDatapipelinesV1ListJobsResponse.fromJson(core.Map json_)
      : this(
          jobs: json_.containsKey('jobs')
              ? (json_['jobs'] as core.List)
                  .map((value) => GoogleCloudDatapipelinesV1Job.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (jobs != null) 'jobs': jobs!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
      };
}

/// Response message for ListPipelines.
class GoogleCloudDatapipelinesV1ListPipelinesResponse {
  /// A token, which can be sent as `page_token` to retrieve the next page.
  ///
  /// If this field is omitted, there are no subsequent pages.
  core.String? nextPageToken;

  /// Results that matched the filter criteria and were accessible to the
  /// caller.
  ///
  /// Results are always in descending order of pipeline creation date.
  core.List<GoogleCloudDatapipelinesV1Pipeline>? pipelines;

  GoogleCloudDatapipelinesV1ListPipelinesResponse({
    this.nextPageToken,
    this.pipelines,
  });

  GoogleCloudDatapipelinesV1ListPipelinesResponse.fromJson(core.Map json_)
      : this(
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
          pipelines: json_.containsKey('pipelines')
              ? (json_['pipelines'] as core.List)
                  .map((value) => GoogleCloudDatapipelinesV1Pipeline.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (pipelines != null) 'pipelines': pipelines!,
      };
}

/// Represents the input for creating a specified logical type.
class GoogleCloudDatapipelinesV1LogicalType {
  /// The enum represented by this logical type.
  GoogleCloudDatapipelinesV1LogicalTypeEnumerationType? enumerationType;

  /// The fixed-size byte collection represented by this logical type.
  GoogleCloudDatapipelinesV1LogicalTypeFixedBytes? fixedBytes;

  GoogleCloudDatapipelinesV1LogicalType({
    this.enumerationType,
    this.fixedBytes,
  });

  GoogleCloudDatapipelinesV1LogicalType.fromJson(core.Map json_)
      : this(
          enumerationType: json_.containsKey('enumerationType')
              ? GoogleCloudDatapipelinesV1LogicalTypeEnumerationType.fromJson(
                  json_['enumerationType']
                      as core.Map<core.String, core.dynamic>)
              : null,
          fixedBytes: json_.containsKey('fixedBytes')
              ? GoogleCloudDatapipelinesV1LogicalTypeFixedBytes.fromJson(
                  json_['fixedBytes'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (enumerationType != null) 'enumerationType': enumerationType!,
        if (fixedBytes != null) 'fixedBytes': fixedBytes!,
      };
}

/// Represents the Beam EnumerationType logical type.
class GoogleCloudDatapipelinesV1LogicalTypeEnumerationType {
  /// Names of the values.
  ///
  /// The numeric value is the same as the index.
  core.List<core.String>? values;

  GoogleCloudDatapipelinesV1LogicalTypeEnumerationType({
    this.values,
  });

  GoogleCloudDatapipelinesV1LogicalTypeEnumerationType.fromJson(core.Map json_)
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

/// Represents the Beam FixedBytes logical type.
class GoogleCloudDatapipelinesV1LogicalTypeFixedBytes {
  /// Number of bytes to allocate.
  core.int? sizeBytes;

  GoogleCloudDatapipelinesV1LogicalTypeFixedBytes({
    this.sizeBytes,
  });

  GoogleCloudDatapipelinesV1LogicalTypeFixedBytes.fromJson(core.Map json_)
      : this(
          sizeBytes: json_.containsKey('sizeBytes')
              ? json_['sizeBytes'] as core.int
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (sizeBytes != null) 'sizeBytes': sizeBytes!,
      };
}

/// Represents a map in a schema.
class GoogleCloudDatapipelinesV1MapType {
  /// Key type of the map.
  ///
  /// Only atomic types are supported.
  GoogleCloudDatapipelinesV1FieldType? mapKeyType;

  /// Value type of the map.
  GoogleCloudDatapipelinesV1FieldType? mapValueType;

  GoogleCloudDatapipelinesV1MapType({
    this.mapKeyType,
    this.mapValueType,
  });

  GoogleCloudDatapipelinesV1MapType.fromJson(core.Map json_)
      : this(
          mapKeyType: json_.containsKey('mapKeyType')
              ? GoogleCloudDatapipelinesV1FieldType.fromJson(
                  json_['mapKeyType'] as core.Map<core.String, core.dynamic>)
              : null,
          mapValueType: json_.containsKey('mapValueType')
              ? GoogleCloudDatapipelinesV1FieldType.fromJson(
                  json_['mapValueType'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (mapKeyType != null) 'mapKeyType': mapKeyType!,
        if (mapValueType != null) 'mapValueType': mapValueType!,
      };
}

/// Represents a key/value pairing.
class GoogleCloudDatapipelinesV1MapValue {
  /// The entries in the map.
  core.List<GoogleCloudDatapipelinesV1MapValueEntry>? entries;

  GoogleCloudDatapipelinesV1MapValue({
    this.entries,
  });

  GoogleCloudDatapipelinesV1MapValue.fromJson(core.Map json_)
      : this(
          entries: json_.containsKey('entries')
              ? (json_['entries'] as core.List)
                  .map((value) =>
                      GoogleCloudDatapipelinesV1MapValueEntry.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (entries != null) 'entries': entries!,
      };
}

/// A single entry in the map.
///
/// Each entry must have a unique key.
class GoogleCloudDatapipelinesV1MapValueEntry {
  /// The key value.
  ///
  /// Only atomic values are supported.
  GoogleCloudDatapipelinesV1FieldValue? key;

  /// The value associated with the key.
  ///
  /// It may be of any type.
  GoogleCloudDatapipelinesV1FieldValue? value;

  GoogleCloudDatapipelinesV1MapValueEntry({
    this.key,
    this.value,
  });

  GoogleCloudDatapipelinesV1MapValueEntry.fromJson(core.Map json_)
      : this(
          key: json_.containsKey('key')
              ? GoogleCloudDatapipelinesV1FieldValue.fromJson(
                  json_['key'] as core.Map<core.String, core.dynamic>)
              : null,
          value: json_.containsKey('value')
              ? GoogleCloudDatapipelinesV1FieldValue.fromJson(
                  json_['value'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (key != null) 'key': key!,
        if (value != null) 'value': value!,
      };
}

/// The main pipeline entity and all the necessary metadata for launching and
/// managing linked jobs.
class GoogleCloudDatapipelinesV1Pipeline {
  /// The timestamp when the pipeline was initially created.
  ///
  /// Set by the Data Pipelines service.
  ///
  /// Output only. Immutable.
  core.String? createTime;

  /// The display name of the pipeline.
  ///
  /// It can contain only letters (\[A-Za-z\]), numbers (\[0-9\]), hyphens (-),
  /// and underscores (_).
  ///
  /// Required.
  core.String? displayName;

  /// Number of jobs.
  ///
  /// Output only.
  core.int? jobCount;

  /// The timestamp when the pipeline was last modified.
  ///
  /// Set by the Data Pipelines service.
  ///
  /// Output only. Immutable.
  core.String? lastUpdateTime;

  /// The pipeline name.
  ///
  /// For example:
  /// `projects/PROJECT_ID/locations/LOCATION_ID/pipelines/PIPELINE_ID`. *
  /// `PROJECT_ID` can contain letters (\[A-Za-z\]), numbers (\[0-9\]), hyphens
  /// (-), colons (:), and periods (.). For more information, see
  /// [Identifying projects](https://cloud.google.com/resource-manager/docs/creating-managing-projects#identifying_projects).
  /// * `LOCATION_ID` is the canonical ID for the pipeline's location. The list
  /// of available locations can be obtained by calling
  /// `google.cloud.location.Locations.ListLocations`. Note that the Data
  /// Pipelines service is not available in all regions. It depends on Cloud
  /// Scheduler, an App Engine application, so it's only available in
  /// [App Engine regions](https://cloud.google.com/about/locations#region). *
  /// `PIPELINE_ID` is the ID of the pipeline. Must be unique for the selected
  /// project and location.
  core.String? name;

  /// The sources of the pipeline (for example, Dataplex).
  ///
  /// The keys and values are set by the corresponding sources during pipeline
  /// creation.
  ///
  /// Immutable.
  core.Map<core.String, core.String>? pipelineSources;

  /// Internal scheduling information for a pipeline.
  ///
  /// If this information is provided, periodic jobs will be created per the
  /// schedule. If not, users are responsible for creating jobs externally.
  GoogleCloudDatapipelinesV1ScheduleSpec? scheduleInfo;

  /// A service account email to be used with the Cloud Scheduler job.
  ///
  /// If not specified, the default compute engine service account will be used.
  ///
  /// Optional.
  core.String? schedulerServiceAccountEmail;

  /// The state of the pipeline.
  ///
  /// When the pipeline is created, the state is set to 'PIPELINE_STATE_ACTIVE'
  /// by default. State changes can be requested by setting the state to
  /// stopping, paused, or resuming. State cannot be changed through
  /// UpdatePipeline requests.
  ///
  /// Required.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : The pipeline state isn't specified.
  /// - "STATE_RESUMING" : The pipeline is getting started or resumed. When
  /// finished, the pipeline state will be 'PIPELINE_STATE_ACTIVE'.
  /// - "STATE_ACTIVE" : The pipeline is actively running.
  /// - "STATE_STOPPING" : The pipeline is in the process of stopping. When
  /// finished, the pipeline state will be 'PIPELINE_STATE_ARCHIVED'.
  /// - "STATE_ARCHIVED" : The pipeline has been stopped. This is a terminal
  /// state and cannot be undone.
  /// - "STATE_PAUSED" : The pipeline is paused. This is a non-terminal state.
  /// When the pipeline is paused, it will hold processing jobs, but can be
  /// resumed later. For a batch pipeline, this means pausing the scheduler job.
  /// For a streaming pipeline, creating a job snapshot to resume from will give
  /// the same effect.
  core.String? state;

  /// The type of the pipeline.
  ///
  /// This field affects the scheduling of the pipeline and the type of metrics
  /// to show for the pipeline.
  ///
  /// Required.
  /// Possible string values are:
  /// - "PIPELINE_TYPE_UNSPECIFIED" : The pipeline type isn't specified.
  /// - "PIPELINE_TYPE_BATCH" : A batch pipeline. It runs jobs on a specific
  /// schedule, and each job will automatically terminate once execution is
  /// finished.
  /// - "PIPELINE_TYPE_STREAMING" : A streaming pipeline. The underlying job is
  /// continuously running until it is manually terminated by the user. This
  /// type of pipeline doesn't have a schedule to run on, and the linked job
  /// gets created when the pipeline is created.
  core.String? type;

  /// Workload information for creating new jobs.
  GoogleCloudDatapipelinesV1Workload? workload;

  GoogleCloudDatapipelinesV1Pipeline({
    this.createTime,
    this.displayName,
    this.jobCount,
    this.lastUpdateTime,
    this.name,
    this.pipelineSources,
    this.scheduleInfo,
    this.schedulerServiceAccountEmail,
    this.state,
    this.type,
    this.workload,
  });

  GoogleCloudDatapipelinesV1Pipeline.fromJson(core.Map json_)
      : this(
          createTime: json_.containsKey('createTime')
              ? json_['createTime'] as core.String
              : null,
          displayName: json_.containsKey('displayName')
              ? json_['displayName'] as core.String
              : null,
          jobCount: json_.containsKey('jobCount')
              ? json_['jobCount'] as core.int
              : null,
          lastUpdateTime: json_.containsKey('lastUpdateTime')
              ? json_['lastUpdateTime'] as core.String
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          pipelineSources: json_.containsKey('pipelineSources')
              ? (json_['pipelineSources']
                      as core.Map<core.String, core.dynamic>)
                  .map(
                  (key, item) => core.MapEntry(
                    key,
                    item as core.String,
                  ),
                )
              : null,
          scheduleInfo: json_.containsKey('scheduleInfo')
              ? GoogleCloudDatapipelinesV1ScheduleSpec.fromJson(
                  json_['scheduleInfo'] as core.Map<core.String, core.dynamic>)
              : null,
          schedulerServiceAccountEmail:
              json_.containsKey('schedulerServiceAccountEmail')
                  ? json_['schedulerServiceAccountEmail'] as core.String
                  : null,
          state:
              json_.containsKey('state') ? json_['state'] as core.String : null,
          type: json_.containsKey('type') ? json_['type'] as core.String : null,
          workload: json_.containsKey('workload')
              ? GoogleCloudDatapipelinesV1Workload.fromJson(
                  json_['workload'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (createTime != null) 'createTime': createTime!,
        if (displayName != null) 'displayName': displayName!,
        if (jobCount != null) 'jobCount': jobCount!,
        if (lastUpdateTime != null) 'lastUpdateTime': lastUpdateTime!,
        if (name != null) 'name': name!,
        if (pipelineSources != null) 'pipelineSources': pipelineSources!,
        if (scheduleInfo != null) 'scheduleInfo': scheduleInfo!,
        if (schedulerServiceAccountEmail != null)
          'schedulerServiceAccountEmail': schedulerServiceAccountEmail!,
        if (state != null) 'state': state!,
        if (type != null) 'type': type!,
        if (workload != null) 'workload': workload!,
      };
}

/// The raw schema and its type.
class GoogleCloudDatapipelinesV1RawSchemaInfo {
  /// The schema.
  core.String? rawSchema;

  /// The type of the schema.
  /// Possible string values are:
  /// - "RAW_SCHEMA_TYPE_UNSPECIFIED" : The schema type is unknown.
  /// - "RAW_SCHEMA_TYPE_AVRO" : The schema is an Avro schema.
  core.String? type;

  GoogleCloudDatapipelinesV1RawSchemaInfo({
    this.rawSchema,
    this.type,
  });

  GoogleCloudDatapipelinesV1RawSchemaInfo.fromJson(core.Map json_)
      : this(
          rawSchema: json_.containsKey('rawSchema')
              ? json_['rawSchema'] as core.String
              : null,
          type: json_.containsKey('type') ? json_['type'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (rawSchema != null) 'rawSchema': rawSchema!,
        if (type != null) 'type': type!,
      };
}

/// Represents an Apache Beam row, though the `Any` nature of values is replaced
/// with more concrete representations of valid values.
class GoogleCloudDatapipelinesV1Row {
  /// The schema of the row's data.
  ///
  /// Required.
  GoogleCloudDatapipelinesV1SchemaSource? schema;

  /// The values of this Row.
  ///
  /// A fully built row is required to hold to the schema specified by `schema`.
  ///
  /// Required.
  core.List<GoogleCloudDatapipelinesV1FieldValue>? values;

  GoogleCloudDatapipelinesV1Row({
    this.schema,
    this.values,
  });

  GoogleCloudDatapipelinesV1Row.fromJson(core.Map json_)
      : this(
          schema: json_.containsKey('schema')
              ? GoogleCloudDatapipelinesV1SchemaSource.fromJson(
                  json_['schema'] as core.Map<core.String, core.dynamic>)
              : null,
          values: json_.containsKey('values')
              ? (json_['values'] as core.List)
                  .map((value) => GoogleCloudDatapipelinesV1FieldValue.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (schema != null) 'schema': schema!,
        if (values != null) 'values': values!,
      };
}

/// Request message for RunPipeline
typedef GoogleCloudDatapipelinesV1RunPipelineRequest = $Empty;

/// Response message for RunPipeline
class GoogleCloudDatapipelinesV1RunPipelineResponse {
  /// Job that was created as part of RunPipeline operation.
  GoogleCloudDatapipelinesV1Job? job;

  GoogleCloudDatapipelinesV1RunPipelineResponse({
    this.job,
  });

  GoogleCloudDatapipelinesV1RunPipelineResponse.fromJson(core.Map json_)
      : this(
          job: json_.containsKey('job')
              ? GoogleCloudDatapipelinesV1Job.fromJson(
                  json_['job'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (job != null) 'job': job!,
      };
}

/// The environment values to set at runtime.
class GoogleCloudDatapipelinesV1RuntimeEnvironment {
  /// Additional experiment flags for the job.
  core.List<core.String>? additionalExperiments;

  /// Additional user labels to be specified for the job.
  ///
  /// Keys and values should follow the restrictions specified in the
  /// [labeling restrictions](https://cloud.google.com/compute/docs/labeling-resources#restrictions)
  /// page. An object containing a list of key/value pairs. Example: { "name":
  /// "wrench", "mass": "1kg", "count": "3" }.
  core.Map<core.String, core.String>? additionalUserLabels;

  /// Whether to bypass the safety checks for the job's temporary directory.
  ///
  /// Use with caution.
  core.bool? bypassTempDirValidation;

  /// Whether to enable Streaming Engine for the job.
  core.bool? enableStreamingEngine;

  /// Configuration for VM IPs.
  /// Possible string values are:
  /// - "WORKER_IP_UNSPECIFIED" : The configuration is unknown, or unspecified.
  /// - "WORKER_IP_PUBLIC" : Workers should have public IP addresses.
  /// - "WORKER_IP_PRIVATE" : Workers should have private IP addresses.
  core.String? ipConfiguration;

  /// Name for the Cloud KMS key for the job.
  ///
  /// The key format is: projects//locations//keyRings//cryptoKeys/
  core.String? kmsKeyName;

  /// The machine type to use for the job.
  ///
  /// Defaults to the value from the template if not specified.
  core.String? machineType;

  /// The maximum number of Compute Engine instances to be made available to
  /// your pipeline during execution, from 1 to 1000.
  core.int? maxWorkers;

  /// Network to which VMs will be assigned.
  ///
  /// If empty or unspecified, the service will use the network "default".
  core.String? network;

  /// The initial number of Compute Engine instances for the job.
  core.int? numWorkers;

  /// The email address of the service account to run the job as.
  core.String? serviceAccountEmail;

  /// Subnetwork to which VMs will be assigned, if desired.
  ///
  /// You can specify a subnetwork using either a complete URL or an abbreviated
  /// path. Expected to be of the form
  /// "https://www.googleapis.com/compute/v1/projects/HOST_PROJECT_ID/regions/REGION/subnetworks/SUBNETWORK"
  /// or "regions/REGION/subnetworks/SUBNETWORK". If the subnetwork is located
  /// in a Shared VPC network, you must use the complete URL.
  core.String? subnetwork;

  /// The Cloud Storage path to use for temporary files.
  ///
  /// Must be a valid Cloud Storage URL, beginning with `gs://`.
  core.String? tempLocation;

  /// The Compute Engine region
  /// (https://cloud.google.com/compute/docs/regions-zones/regions-zones) in
  /// which worker processing should occur, e.g. "us-west1".
  ///
  /// Mutually exclusive with worker_zone. If neither worker_region nor
  /// worker_zone is specified, default to the control plane's region.
  core.String? workerRegion;

  /// The Compute Engine zone
  /// (https://cloud.google.com/compute/docs/regions-zones/regions-zones) in
  /// which worker processing should occur, e.g. "us-west1-a".
  ///
  /// Mutually exclusive with worker_region. If neither worker_region nor
  /// worker_zone is specified, a zone in the control plane's region is chosen
  /// based on available capacity. If both `worker_zone` and `zone` are set,
  /// `worker_zone` takes precedence.
  core.String? workerZone;

  /// The Compute Engine
  /// [availability zone](https://cloud.google.com/compute/docs/regions-zones/regions-zones)
  /// for launching worker instances to run your pipeline.
  ///
  /// In the future, worker_zone will take precedence.
  core.String? zone;

  GoogleCloudDatapipelinesV1RuntimeEnvironment({
    this.additionalExperiments,
    this.additionalUserLabels,
    this.bypassTempDirValidation,
    this.enableStreamingEngine,
    this.ipConfiguration,
    this.kmsKeyName,
    this.machineType,
    this.maxWorkers,
    this.network,
    this.numWorkers,
    this.serviceAccountEmail,
    this.subnetwork,
    this.tempLocation,
    this.workerRegion,
    this.workerZone,
    this.zone,
  });

  GoogleCloudDatapipelinesV1RuntimeEnvironment.fromJson(core.Map json_)
      : this(
          additionalExperiments: json_.containsKey('additionalExperiments')
              ? (json_['additionalExperiments'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          additionalUserLabels: json_.containsKey('additionalUserLabels')
              ? (json_['additionalUserLabels']
                      as core.Map<core.String, core.dynamic>)
                  .map(
                  (key, item) => core.MapEntry(
                    key,
                    item as core.String,
                  ),
                )
              : null,
          bypassTempDirValidation: json_.containsKey('bypassTempDirValidation')
              ? json_['bypassTempDirValidation'] as core.bool
              : null,
          enableStreamingEngine: json_.containsKey('enableStreamingEngine')
              ? json_['enableStreamingEngine'] as core.bool
              : null,
          ipConfiguration: json_.containsKey('ipConfiguration')
              ? json_['ipConfiguration'] as core.String
              : null,
          kmsKeyName: json_.containsKey('kmsKeyName')
              ? json_['kmsKeyName'] as core.String
              : null,
          machineType: json_.containsKey('machineType')
              ? json_['machineType'] as core.String
              : null,
          maxWorkers: json_.containsKey('maxWorkers')
              ? json_['maxWorkers'] as core.int
              : null,
          network: json_.containsKey('network')
              ? json_['network'] as core.String
              : null,
          numWorkers: json_.containsKey('numWorkers')
              ? json_['numWorkers'] as core.int
              : null,
          serviceAccountEmail: json_.containsKey('serviceAccountEmail')
              ? json_['serviceAccountEmail'] as core.String
              : null,
          subnetwork: json_.containsKey('subnetwork')
              ? json_['subnetwork'] as core.String
              : null,
          tempLocation: json_.containsKey('tempLocation')
              ? json_['tempLocation'] as core.String
              : null,
          workerRegion: json_.containsKey('workerRegion')
              ? json_['workerRegion'] as core.String
              : null,
          workerZone: json_.containsKey('workerZone')
              ? json_['workerZone'] as core.String
              : null,
          zone: json_.containsKey('zone') ? json_['zone'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (additionalExperiments != null)
          'additionalExperiments': additionalExperiments!,
        if (additionalUserLabels != null)
          'additionalUserLabels': additionalUserLabels!,
        if (bypassTempDirValidation != null)
          'bypassTempDirValidation': bypassTempDirValidation!,
        if (enableStreamingEngine != null)
          'enableStreamingEngine': enableStreamingEngine!,
        if (ipConfiguration != null) 'ipConfiguration': ipConfiguration!,
        if (kmsKeyName != null) 'kmsKeyName': kmsKeyName!,
        if (machineType != null) 'machineType': machineType!,
        if (maxWorkers != null) 'maxWorkers': maxWorkers!,
        if (network != null) 'network': network!,
        if (numWorkers != null) 'numWorkers': numWorkers!,
        if (serviceAccountEmail != null)
          'serviceAccountEmail': serviceAccountEmail!,
        if (subnetwork != null) 'subnetwork': subnetwork!,
        if (tempLocation != null) 'tempLocation': tempLocation!,
        if (workerRegion != null) 'workerRegion': workerRegion!,
        if (workerZone != null) 'workerZone': workerZone!,
        if (zone != null) 'zone': zone!,
      };
}

/// Details of the schedule the pipeline runs on.
class GoogleCloudDatapipelinesV1ScheduleSpec {
  /// When the next Scheduler job is going to run.
  ///
  /// Output only.
  core.String? nextJobTime;

  /// Unix-cron format of the schedule.
  ///
  /// This information is retrieved from the linked Cloud Scheduler.
  core.String? schedule;

  /// Timezone ID.
  ///
  /// This matches the timezone IDs used by the Cloud Scheduler API. If empty,
  /// UTC time is assumed.
  core.String? timeZone;

  GoogleCloudDatapipelinesV1ScheduleSpec({
    this.nextJobTime,
    this.schedule,
    this.timeZone,
  });

  GoogleCloudDatapipelinesV1ScheduleSpec.fromJson(core.Map json_)
      : this(
          nextJobTime: json_.containsKey('nextJobTime')
              ? json_['nextJobTime'] as core.String
              : null,
          schedule: json_.containsKey('schedule')
              ? json_['schedule'] as core.String
              : null,
          timeZone: json_.containsKey('timeZone')
              ? json_['timeZone'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (nextJobTime != null) 'nextJobTime': nextJobTime!,
        if (schedule != null) 'schedule': schedule!,
        if (timeZone != null) 'timeZone': timeZone!,
      };
}

/// Represents a simplified Apache Beam schema.
class GoogleCloudDatapipelinesV1Schema {
  /// Fields in the schema.
  ///
  /// Every field within a schema must have a unique name.
  core.List<GoogleCloudDatapipelinesV1Field>? fields;

  /// An identifier of the schema for looking it up in a repository.
  ///
  /// This only needs to be set if the schema is stored in a repository.
  core.String? referenceId;

  GoogleCloudDatapipelinesV1Schema({
    this.fields,
    this.referenceId,
  });

  GoogleCloudDatapipelinesV1Schema.fromJson(core.Map json_)
      : this(
          fields: json_.containsKey('fields')
              ? (json_['fields'] as core.List)
                  .map((value) => GoogleCloudDatapipelinesV1Field.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          referenceId: json_.containsKey('referenceId')
              ? json_['referenceId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (fields != null) 'fields': fields!,
        if (referenceId != null) 'referenceId': referenceId!,
      };
}

/// Holds a schema or a reference to a schema in some repository.
class GoogleCloudDatapipelinesV1SchemaSource {
  /// Schema located locally with the message.
  GoogleCloudDatapipelinesV1Schema? localSchema;

  /// The `reference_id` value of a schema in a repository.
  core.String? referenceId;

  GoogleCloudDatapipelinesV1SchemaSource({
    this.localSchema,
    this.referenceId,
  });

  GoogleCloudDatapipelinesV1SchemaSource.fromJson(core.Map json_)
      : this(
          localSchema: json_.containsKey('localSchema')
              ? GoogleCloudDatapipelinesV1Schema.fromJson(
                  json_['localSchema'] as core.Map<core.String, core.dynamic>)
              : null,
          referenceId: json_.containsKey('referenceId')
              ? json_['referenceId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (localSchema != null) 'localSchema': localSchema!,
        if (referenceId != null) 'referenceId': referenceId!,
      };
}

/// The version of the SDK used to run the job.
class GoogleCloudDatapipelinesV1SdkVersion {
  /// The support status for this SDK version.
  /// Possible string values are:
  /// - "UNKNOWN" : Dataflow is unaware of this version.
  /// - "SUPPORTED" : This is a known version of an SDK, and is supported.
  /// - "STALE" : A newer version of the SDK exists, and an update is
  /// recommended.
  /// - "DEPRECATED" : This version of the SDK is deprecated and will eventually
  /// be unsupported.
  /// - "UNSUPPORTED" : Support for this SDK version has ended and it should no
  /// longer be used.
  core.String? sdkSupportStatus;

  /// The version of the SDK used to run the job.
  core.String? version;

  /// A readable string describing the version of the SDK.
  core.String? versionDisplayName;

  GoogleCloudDatapipelinesV1SdkVersion({
    this.sdkSupportStatus,
    this.version,
    this.versionDisplayName,
  });

  GoogleCloudDatapipelinesV1SdkVersion.fromJson(core.Map json_)
      : this(
          sdkSupportStatus: json_.containsKey('sdkSupportStatus')
              ? json_['sdkSupportStatus'] as core.String
              : null,
          version: json_.containsKey('version')
              ? json_['version'] as core.String
              : null,
          versionDisplayName: json_.containsKey('versionDisplayName')
              ? json_['versionDisplayName'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (sdkSupportStatus != null) 'sdkSupportStatus': sdkSupportStatus!,
        if (version != null) 'version': version!,
        if (versionDisplayName != null)
          'versionDisplayName': versionDisplayName!,
      };
}

/// Request message for StopPipeline.
typedef GoogleCloudDatapipelinesV1StopPipelineRequest = $Empty;

/// Description of a schema-aware transform, which provides info on how it can
/// be configured.
class GoogleCloudDatapipelinesV1TransformDescription {
  /// The full name of this resource formatted as:
  /// projects/{project}/locations/{location}/transformDescriptions/{transform_description}
  /// `transform_description` is the same as the `uniform_resource_name` field.
  ///
  /// Output only.
  core.String? name;

  /// Available options for configuring the transform.
  GoogleCloudDatapipelinesV1Schema? options;

  /// Unique resource name of the transform.
  core.String? uniformResourceName;

  GoogleCloudDatapipelinesV1TransformDescription({
    this.name,
    this.options,
    this.uniformResourceName,
  });

  GoogleCloudDatapipelinesV1TransformDescription.fromJson(core.Map json_)
      : this(
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          options: json_.containsKey('options')
              ? GoogleCloudDatapipelinesV1Schema.fromJson(
                  json_['options'] as core.Map<core.String, core.dynamic>)
              : null,
          uniformResourceName: json_.containsKey('uniformResourceName')
              ? json_['uniformResourceName'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (name != null) 'name': name!,
        if (options != null) 'options': options!,
        if (uniformResourceName != null)
          'uniformResourceName': uniformResourceName!,
      };
}

/// Workload details for creating the pipeline jobs.
class GoogleCloudDatapipelinesV1Workload {
  /// Template information and additional parameters needed to launch a Dataflow
  /// job using the flex launch API.
  GoogleCloudDatapipelinesV1LaunchFlexTemplateRequest?
      dataflowFlexTemplateRequest;

  /// Template information and additional parameters needed to launch a Dataflow
  /// job using the standard launch API.
  GoogleCloudDatapipelinesV1LaunchTemplateRequest?
      dataflowLaunchTemplateRequest;

  GoogleCloudDatapipelinesV1Workload({
    this.dataflowFlexTemplateRequest,
    this.dataflowLaunchTemplateRequest,
  });

  GoogleCloudDatapipelinesV1Workload.fromJson(core.Map json_)
      : this(
          dataflowFlexTemplateRequest: json_
                  .containsKey('dataflowFlexTemplateRequest')
              ? GoogleCloudDatapipelinesV1LaunchFlexTemplateRequest.fromJson(
                  json_['dataflowFlexTemplateRequest']
                      as core.Map<core.String, core.dynamic>)
              : null,
          dataflowLaunchTemplateRequest:
              json_.containsKey('dataflowLaunchTemplateRequest')
                  ? GoogleCloudDatapipelinesV1LaunchTemplateRequest.fromJson(
                      json_['dataflowLaunchTemplateRequest']
                          as core.Map<core.String, core.dynamic>)
                  : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (dataflowFlexTemplateRequest != null)
          'dataflowFlexTemplateRequest': dataflowFlexTemplateRequest!,
        if (dataflowLaunchTemplateRequest != null)
          'dataflowLaunchTemplateRequest': dataflowLaunchTemplateRequest!,
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

/// A representation of a decimal value, such as 2.5.
///
/// Clients may convert values into language-native decimal formats, such as
/// Java's BigDecimal or Python's decimal.Decimal. \[BigDecimal\]:
/// https://docs.oracle.com/en/java/javase/11/docs/api/java.base/java/math/BigDecimal.html
/// \[decimal.Decimal\]: https://docs.python.org/3/library/decimal.html
typedef GoogleTypeDecimal = $GoogleTypeDecimal;

/// Represents a time zone from the
/// [IANA Time Zone Database](https://www.iana.org/time-zones).
typedef GoogleTypeTimeZone = $TimeZone;
