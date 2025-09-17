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

/// API Management API - v1alpha
///
/// Enables users to discover shadow APIs in existing Google Cloud
/// infrastructure.
///
/// For more information, see <https://cloud.google.com/apigee/>
///
/// Create an instance of [APIManagementApi] to access these resources:
///
/// - [ProjectsResource]
///   - [ProjectsLocationsResource]
///     - [ProjectsLocationsObservationJobsResource]
///       - [ProjectsLocationsObservationJobsApiObservationsResource]
/// - [ProjectsLocationsObservationJobsApiObservationsApiOperationsResource]
///     - [ProjectsLocationsObservationSourcesResource]
///     - [ProjectsLocationsOperationsResource]
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

/// Enables users to discover shadow APIs in existing Google Cloud
/// infrastructure.
class APIManagementApi {
  /// See, edit, configure, and delete your Google Cloud data and see the email
  /// address for your Google Account.
  static const cloudPlatformScope =
      'https://www.googleapis.com/auth/cloud-platform';

  final commons.ApiRequester _requester;

  ProjectsResource get projects => ProjectsResource(_requester);

  APIManagementApi(
    http.Client client, {
    core.String rootUrl = 'https://apim.googleapis.com/',
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

  ProjectsLocationsObservationJobsResource get observationJobs =>
      ProjectsLocationsObservationJobsResource(_requester);
  ProjectsLocationsObservationSourcesResource get observationSources =>
      ProjectsLocationsObservationSourcesResource(_requester);
  ProjectsLocationsOperationsResource get operations =>
      ProjectsLocationsOperationsResource(_requester);

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
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1alpha/' + core.Uri.encodeFull('$name');

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
  /// [extraLocationTypes] - Optional. A list of extra location types that
  /// should be used as conditions for controlling the visibility of the
  /// locations.
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
      if (extraLocationTypes != null) 'extraLocationTypes': extraLocationTypes,
      if (filter != null) 'filter': [filter],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1alpha/' + core.Uri.encodeFull('$name') + '/locations';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListLocationsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// ListApiObservationTags lists all extant tags on any observation in the
  /// given project.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent, which owns this collection of tags.
  /// Format: projects/{project}/locations/{location}
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [pageSize] - Optional. The maximum number of tags to return. The service
  /// may return fewer than this value. If unspecified, at most 10 tags will be
  /// returned. The maximum value is 1000; values above 1000 will be coerced to
  /// 1000.
  ///
  /// [pageToken] - Optional. A page token, received from a previous
  /// `ListApiObservationTags` call. Provide this to retrieve the subsequent
  /// page. When paginating, all other parameters provided to
  /// `ListApiObservationTags` must match the call that provided the page token.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListApiObservationTagsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListApiObservationTagsResponse> listApiObservationTags(
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

    final url_ =
        'v1alpha/' + core.Uri.encodeFull('$parent') + ':listApiObservationTags';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListApiObservationTagsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class ProjectsLocationsObservationJobsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsObservationJobsApiObservationsResource get apiObservations =>
      ProjectsLocationsObservationJobsApiObservationsResource(_requester);

  ProjectsLocationsObservationJobsResource(commons.ApiRequester client)
    : _requester = client;

  /// CreateObservationJob creates a new ObservationJob but does not have any
  /// effecton its own.
  ///
  /// It is a configuration that can be used in an Observation Job to collect
  /// data about existing APIs.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent resource where this ObservationJob will be
  /// created. Format: projects/{project}/locations/{location}
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [observationJobId] - Required. The ID to use for the Observation Job. This
  /// value should be 4-63 characters, and valid characters are /a-z-/.
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
    ObservationJob request,
    core.String parent, {
    core.String? observationJobId,
    core.String? requestId,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (observationJobId != null) 'observationJobId': [observationJobId],
      if (requestId != null) 'requestId': [requestId],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1alpha/' + core.Uri.encodeFull('$parent') + '/observationJobs';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// DeleteObservationJob deletes an ObservationJob.
  ///
  /// This method will fail if the observation job is currently being used by
  /// any ObservationSource, even if not enabled.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Name of the resource Format:
  /// projects/{project}/locations/{location}/observationJobs/{observation_job}
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/observationJobs/\[^/\]+$`.
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
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1alpha/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Disables the given ObservationJob.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the ObservationJob to disable. Format:
  /// projects/{project}/locations/{location}/observationJobs/{job}
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/observationJobs/\[^/\]+$`.
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
  async.Future<Operation> disable(
    DisableObservationJobRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1alpha/' + core.Uri.encodeFull('$name') + ':disable';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Enables the given ObservationJob.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the ObservationJob to enable. Format:
  /// projects/{project}/locations/{location}/observationJobs/{job}
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/observationJobs/\[^/\]+$`.
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
  async.Future<Operation> enable(
    EnableObservationJobRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1alpha/' + core.Uri.encodeFull('$name') + ':enable';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// GetObservationJob retrieves a single ObservationJob by name.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the ObservationJob to retrieve. Format:
  /// projects/{project}/locations/{location}/observationJobs/{job}
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/observationJobs/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ObservationJob].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ObservationJob> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1alpha/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ObservationJob.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// ListObservationJobs gets all ObservationJobs for a given project and
  /// location.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent, which owns this collection of
  /// ObservationJobs. Format: projects/{project}/locations/{location}
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [pageSize] - Optional. The maximum number of ObservationJobs to return.
  /// The service may return fewer than this value. If unspecified, at most 10
  /// ObservationJobs will be returned. The maximum value is 1000; values above
  /// 1000 will be coerced to 1000.
  ///
  /// [pageToken] - Optional. A page token, received from a previous
  /// `ListObservationJobs` call. Provide this to retrieve the subsequent page.
  /// When paginating, all other parameters provided to `ListObservationJobs`
  /// must match the call that provided the page token.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListObservationJobsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListObservationJobsResponse> list(
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

    final url_ =
        'v1alpha/' + core.Uri.encodeFull('$parent') + '/observationJobs';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListObservationJobsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class ProjectsLocationsObservationJobsApiObservationsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsObservationJobsApiObservationsApiOperationsResource
  get apiOperations =>
      ProjectsLocationsObservationJobsApiObservationsApiOperationsResource(
        _requester,
      );

  ProjectsLocationsObservationJobsApiObservationsResource(
    commons.ApiRequester client,
  ) : _requester = client;

  /// BatchEditTagsApiObservations adds or removes Tags for ApiObservations.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent resource shared by all ApiObservations
  /// being edited. Format:
  /// projects/{project}/locations/{location}/observationJobs/{observation_job}
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/observationJobs/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [BatchEditTagsApiObservationsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<BatchEditTagsApiObservationsResponse> batchEditTags(
    BatchEditTagsApiObservationsRequest request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1alpha/' +
        core.Uri.encodeFull('$parent') +
        '/apiObservations:batchEditTags';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return BatchEditTagsApiObservationsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// GetApiObservation retrieves a single ApiObservation by name.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the ApiObservation to retrieve. Format:
  /// projects/{project}/locations/{location}/observationJobs/{observation_job}/apiObservations/{api_observation}
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/observationJobs/\[^/\]+/apiObservations/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ApiObservation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ApiObservation> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1alpha/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ApiObservation.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// ListApiObservations gets all ApiObservations for a given project and
  /// location and ObservationJob.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent, which owns this collection of
  /// ApiObservations. Format:
  /// projects/{project}/locations/{location}/observationJobs/{observation_job}
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/observationJobs/\[^/\]+$`.
  ///
  /// [pageSize] - Optional. The maximum number of ApiObservations to return.
  /// The service may return fewer than this value. If unspecified, at most 10
  /// ApiObservations will be returned. The maximum value is 1000; values above
  /// 1000 will be coerced to 1000.
  ///
  /// [pageToken] - Optional. A page token, received from a previous
  /// `ListApiObservations` call. Provide this to retrieve the subsequent page.
  /// When paginating, all other parameters provided to `ListApiObservations`
  /// must match the call that provided the page token.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListApiObservationsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListApiObservationsResponse> list(
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

    final url_ =
        'v1alpha/' + core.Uri.encodeFull('$parent') + '/apiObservations';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListApiObservationsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class ProjectsLocationsObservationJobsApiObservationsApiOperationsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsObservationJobsApiObservationsApiOperationsResource(
    commons.ApiRequester client,
  ) : _requester = client;

  /// GetApiOperation retrieves a single ApiOperation by name.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the ApiOperation to retrieve. Format:
  /// projects/{project}/locations/{location}/observationJobs/{observation_job}/apiObservations/{api_observation}/apiOperation/{api_operation}
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/observationJobs/\[^/\]+/apiObservations/\[^/\]+/apiOperations/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ApiOperation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ApiOperation> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1alpha/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ApiOperation.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// ListApiOperations gets all ApiOperations for a given project and location
  /// and ObservationJob and ApiObservation.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent, which owns this collection of
  /// ApiOperations. Format:
  /// projects/{project}/locations/{location}/observationJobs/{observation_job}/apiObservations/{api_observation}
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/observationJobs/\[^/\]+/apiObservations/\[^/\]+$`.
  ///
  /// [pageSize] - Optional. The maximum number of ApiOperations to return. The
  /// service may return fewer than this value. If unspecified, at most 10
  /// ApiOperations will be returned. The maximum value is 1000; values above
  /// 1000 will be coerced to 1000.
  ///
  /// [pageToken] - Optional. A page token, received from a previous
  /// `ListApiApiOperations` call. Provide this to retrieve the subsequent page.
  /// When paginating, all other parameters provided to `ListApiApiOperations`
  /// must match the call that provided the page token.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListApiOperationsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListApiOperationsResponse> list(
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

    final url_ = 'v1alpha/' + core.Uri.encodeFull('$parent') + '/apiOperations';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListApiOperationsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class ProjectsLocationsObservationSourcesResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsObservationSourcesResource(commons.ApiRequester client)
    : _requester = client;

  /// CreateObservationSource creates a new ObservationSource but does not
  /// affect any deployed infrastructure.
  ///
  /// It is a configuration that can be used in an Observation Job to collect
  /// data about APIs running in user's dataplane.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Value for parent.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [observationSourceId] - Required. The ID to use for the Observation
  /// Source. This value should be 4-63 characters, and valid characters are
  /// /a-z-/.
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
    ObservationSource request,
    core.String parent, {
    core.String? observationSourceId,
    core.String? requestId,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (observationSourceId != null)
        'observationSourceId': [observationSourceId],
      if (requestId != null) 'requestId': [requestId],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1alpha/' + core.Uri.encodeFull('$parent') + '/observationSources';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// DeleteObservationSource deletes an observation source.
  ///
  /// This method will fail if the observation source is currently being used by
  /// any ObservationJob, even if not enabled.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Name of the resource Format:
  /// projects/{project}/locations/{location}/observationSources/{source}
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/observationSources/\[^/\]+$`.
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
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1alpha/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// GetObservationSource retrieves a single ObservationSource by name.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the ObservationSource to retrieve. Format:
  /// projects/{project}/locations/{location}/observationSources/{source}
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/observationSources/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ObservationSource].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ObservationSource> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1alpha/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ObservationSource.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// ListObservationSources gets all ObservationSources for a given project and
  /// location.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent, which owns this collection of
  /// ObservationSources. Format: projects/{project}/locations/{location}
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [pageSize] - Optional. The maximum number of ObservationSources to return.
  /// The service may return fewer than this value. If unspecified, at most 10
  /// ObservationSources will be returned. The maximum value is 1000; values
  /// above 1000 will be coerced to 1000.
  ///
  /// [pageToken] - Optional. A page token, received from a previous
  /// `ListObservationSources` call. Provide this to retrieve the subsequent
  /// page. When paginating, all other parameters provided to
  /// `ListObservationSources` must match the call that provided the page token.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListObservationSourcesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListObservationSourcesResponse> list(
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

    final url_ =
        'v1alpha/' + core.Uri.encodeFull('$parent') + '/observationSources';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListObservationSourcesResponse.fromJson(
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
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1alpha/' + core.Uri.encodeFull('$name') + ':cancel';

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
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1alpha/' + core.Uri.encodeFull('$name');

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
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1alpha/' + core.Uri.encodeFull('$name');

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
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (filter != null) 'filter': [filter],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1alpha/' + core.Uri.encodeFull('$name') + '/operations';

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

/// Message describing ApiObservation object
class ApiObservation {
  /// The number of observed API Operations.
  core.String? apiOperationCount;

  /// Create time stamp
  core.String? createTime;

  /// The hostname of requests processed for this Observation.
  core.String? hostname;

  /// Last event detected time stamp
  core.String? lastEventDetectedTime;

  /// Identifier.
  ///
  /// Name of resource
  core.String? name;

  /// The IP address (IPv4 or IPv6) of the origin server that the request was
  /// sent to.
  ///
  /// This field can include port information. Examples: `"192.168.1.1"`,
  /// `"10.0.0.1:80"`, `"FE80::0202:B3FF:FE1E:8329"`.
  core.List<core.String>? serverIps;

  /// Location of the Observation Source, for example "us-central1" or
  /// "europe-west1."
  core.List<core.String>? sourceLocations;

  /// Style of ApiObservation
  /// Possible string values are:
  /// - "STYLE_UNSPECIFIED" : Unknown style
  /// - "REST" : Style is Rest API
  /// - "GRPC" : Style is Grpc API
  /// - "GRAPHQL" : Style is GraphQL API
  core.String? style;

  /// User-defined tags to organize and sort
  core.List<core.String>? tags;

  /// Update time stamp
  core.String? updateTime;

  ApiObservation({
    this.apiOperationCount,
    this.createTime,
    this.hostname,
    this.lastEventDetectedTime,
    this.name,
    this.serverIps,
    this.sourceLocations,
    this.style,
    this.tags,
    this.updateTime,
  });

  ApiObservation.fromJson(core.Map json_)
    : this(
        apiOperationCount: json_['apiOperationCount'] as core.String?,
        createTime: json_['createTime'] as core.String?,
        hostname: json_['hostname'] as core.String?,
        lastEventDetectedTime: json_['lastEventDetectedTime'] as core.String?,
        name: json_['name'] as core.String?,
        serverIps:
            (json_['serverIps'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        sourceLocations:
            (json_['sourceLocations'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        style: json_['style'] as core.String?,
        tags:
            (json_['tags'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        updateTime: json_['updateTime'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (apiOperationCount != null) 'apiOperationCount': apiOperationCount!,
    if (createTime != null) 'createTime': createTime!,
    if (hostname != null) 'hostname': hostname!,
    if (lastEventDetectedTime != null)
      'lastEventDetectedTime': lastEventDetectedTime!,
    if (name != null) 'name': name!,
    if (serverIps != null) 'serverIps': serverIps!,
    if (sourceLocations != null) 'sourceLocations': sourceLocations!,
    if (style != null) 'style': style!,
    if (tags != null) 'tags': tags!,
    if (updateTime != null) 'updateTime': updateTime!,
  };
}

/// Message describing ApiOperation object
class ApiOperation {
  /// The number of occurrences of this API Operation.
  core.String? count;

  /// First seen time stamp
  core.String? firstSeenTime;

  /// An HTTP Operation.
  HttpOperation? httpOperation;

  /// Last seen time stamp
  core.String? lastSeenTime;

  /// Identifier.
  ///
  /// Name of resource
  core.String? name;

  ApiOperation({
    this.count,
    this.firstSeenTime,
    this.httpOperation,
    this.lastSeenTime,
    this.name,
  });

  ApiOperation.fromJson(core.Map json_)
    : this(
        count: json_['count'] as core.String?,
        firstSeenTime: json_['firstSeenTime'] as core.String?,
        httpOperation:
            json_.containsKey('httpOperation')
                ? HttpOperation.fromJson(
                  json_['httpOperation'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        lastSeenTime: json_['lastSeenTime'] as core.String?,
        name: json_['name'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (count != null) 'count': count!,
    if (firstSeenTime != null) 'firstSeenTime': firstSeenTime!,
    if (httpOperation != null) 'httpOperation': httpOperation!,
    if (lastSeenTime != null) 'lastSeenTime': lastSeenTime!,
    if (name != null) 'name': name!,
  };
}

/// Message for requesting batch edit tags for ApiObservations
class BatchEditTagsApiObservationsRequest {
  /// The request message specifying the resources to update.
  ///
  /// A maximum of 1000 apiObservations can be modified in a batch.
  ///
  /// Required.
  core.List<EditTagsApiObservationsRequest>? requests;

  BatchEditTagsApiObservationsRequest({this.requests});

  BatchEditTagsApiObservationsRequest.fromJson(core.Map json_)
    : this(
        requests:
            (json_['requests'] as core.List?)
                ?.map(
                  (value) => EditTagsApiObservationsRequest.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (requests != null) 'requests': requests!,
  };
}

/// Message for response to edit Tags for ApiObservations
class BatchEditTagsApiObservationsResponse {
  /// ApiObservations that were changed
  core.List<ApiObservation>? apiObservations;

  BatchEditTagsApiObservationsResponse({this.apiObservations});

  BatchEditTagsApiObservationsResponse.fromJson(core.Map json_)
    : this(
        apiObservations:
            (json_['apiObservations'] as core.List?)
                ?.map(
                  (value) => ApiObservation.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (apiObservations != null) 'apiObservations': apiObservations!,
  };
}

/// The request message for Operations.CancelOperation.
typedef CancelOperationRequest = $Empty;

/// Message for disabling an ObservationJob
typedef DisableObservationJobRequest = $Empty;

/// Message for requesting edit tags for ApiObservation
class EditTagsApiObservationsRequest {
  /// Identifier of ApiObservation need to be edit tags Format example:
  /// "apigee.googleapis.com|us-west1|443"
  ///
  /// Required.
  core.String? apiObservationId;

  /// Tag actions to be applied
  ///
  /// Required.
  core.List<TagAction>? tagActions;

  EditTagsApiObservationsRequest({this.apiObservationId, this.tagActions});

  EditTagsApiObservationsRequest.fromJson(core.Map json_)
    : this(
        apiObservationId: json_['apiObservationId'] as core.String?,
        tagActions:
            (json_['tagActions'] as core.List?)
                ?.map(
                  (value) => TagAction.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (apiObservationId != null) 'apiObservationId': apiObservationId!,
    if (tagActions != null) 'tagActions': tagActions!,
  };
}

/// A generic empty message that you can re-use to avoid defining duplicated
/// empty messages in your APIs.
///
/// A typical example is to use it as the request or the response type of an API
/// method. For instance: service Foo { rpc Bar(google.protobuf.Empty) returns
/// (google.protobuf.Empty); }
typedef Empty = $Empty;

/// Message for enabling an ObservationJob
typedef EnableObservationJobRequest = $Empty;

/// The GCLB observation source.
class GclbObservationSource {
  /// The VPC networks where traffic will be observed.
  ///
  /// All load balancers within this network will be observed. Currently, this
  /// is limited to only one network.
  ///
  /// Required.
  core.List<GclbObservationSourcePscNetworkConfig>? pscNetworkConfigs;

  GclbObservationSource({this.pscNetworkConfigs});

  GclbObservationSource.fromJson(core.Map json_)
    : this(
        pscNetworkConfigs:
            (json_['pscNetworkConfigs'] as core.List?)
                ?.map(
                  (value) => GclbObservationSourcePscNetworkConfig.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (pscNetworkConfigs != null) 'pscNetworkConfigs': pscNetworkConfigs!,
  };
}

/// Network information for setting up a PSC connection.
class GclbObservationSourcePscNetworkConfig {
  /// The VPC network.
  ///
  /// Format: `projects/{project_id}/global/networks/{network}`
  ///
  /// Required.
  core.String? network;

  /// The subnetwork in the source region that will be used to connect to the
  /// Cloud Load Balancers via PSC NEGs.
  ///
  /// Must belong to `network`. Format:
  /// projects/{project_id}/regions/{region}/subnetworks/{subnet}
  ///
  /// Required.
  core.String? subnetwork;

  GclbObservationSourcePscNetworkConfig({this.network, this.subnetwork});

  GclbObservationSourcePscNetworkConfig.fromJson(core.Map json_)
    : this(
        network: json_['network'] as core.String?,
        subnetwork: json_['subnetwork'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (network != null) 'network': network!,
    if (subnetwork != null) 'subnetwork': subnetwork!,
  };
}

/// An HTTP-based API Operation, sometimes called a "REST" Operation.
class HttpOperation {
  /// HTTP Method.
  /// Possible string values are:
  /// - "HTTP_METHOD_UNSPECIFIED" : Unspecified HTTP method
  /// - "GET" : GET HTTP method
  /// - "HEAD" : HEAD HTTP method
  /// - "POST" : POST HTTP method
  /// - "PUT" : PUT HTTP method
  /// - "PATCH" : PATCH HTTP method
  /// - "DELETE" : DELETE HTTP method
  /// - "TRACE" : TRACE HTTP method
  /// - "OPTIONS" : OPTIONS HTTP method
  /// - "CONNECT" : CONNECT HTTP method
  core.String? method;

  /// Path of the HTTP request.
  core.String? path;

  /// Path params of HttpOperation
  core.List<HttpOperationPathParam>? pathParams;

  /// Query params of HttpOperation
  core.Map<core.String, HttpOperationQueryParam>? queryParams;

  /// Request metadata.
  HttpOperationHttpRequest? request;

  /// Response metadata.
  HttpOperationHttpResponse? response;

  HttpOperation({
    this.method,
    this.path,
    this.pathParams,
    this.queryParams,
    this.request,
    this.response,
  });

  HttpOperation.fromJson(core.Map json_)
    : this(
        method: json_['method'] as core.String?,
        path: json_['path'] as core.String?,
        pathParams:
            (json_['pathParams'] as core.List?)
                ?.map(
                  (value) => HttpOperationPathParam.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        queryParams:
            (json_['queryParams'] as core.Map<core.String, core.dynamic>?)?.map(
              (key, value) => core.MapEntry(
                key,
                HttpOperationQueryParam.fromJson(
                  value as core.Map<core.String, core.dynamic>,
                ),
              ),
            ),
        request:
            json_.containsKey('request')
                ? HttpOperationHttpRequest.fromJson(
                  json_['request'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        response:
            json_.containsKey('response')
                ? HttpOperationHttpResponse.fromJson(
                  json_['response'] as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (method != null) 'method': method!,
    if (path != null) 'path': path!,
    if (pathParams != null) 'pathParams': pathParams!,
    if (queryParams != null) 'queryParams': queryParams!,
    if (request != null) 'request': request!,
    if (response != null) 'response': response!,
  };
}

/// An aggregation of HTTP header occurrences.
typedef HttpOperationHeader = $Header01;

/// An aggregation of HTTP requests.
class HttpOperationHttpRequest {
  /// Unordered map from header name to header metadata
  core.Map<core.String, HttpOperationHeader>? headers;

  HttpOperationHttpRequest({this.headers});

  HttpOperationHttpRequest.fromJson(core.Map json_)
    : this(
        headers: (json_['headers'] as core.Map<core.String, core.dynamic>?)
            ?.map(
              (key, value) => core.MapEntry(
                key,
                HttpOperationHeader.fromJson(
                  value as core.Map<core.String, core.dynamic>,
                ),
              ),
            ),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (headers != null) 'headers': headers!,
  };
}

/// An aggregation of HTTP responses.
class HttpOperationHttpResponse {
  /// Unordered map from header name to header metadata
  core.Map<core.String, HttpOperationHeader>? headers;

  /// Map of status code to observed count
  core.Map<core.String, core.String>? responseCodes;

  HttpOperationHttpResponse({this.headers, this.responseCodes});

  HttpOperationHttpResponse.fromJson(core.Map json_)
    : this(
        headers: (json_['headers'] as core.Map<core.String, core.dynamic>?)
            ?.map(
              (key, value) => core.MapEntry(
                key,
                HttpOperationHeader.fromJson(
                  value as core.Map<core.String, core.dynamic>,
                ),
              ),
            ),
        responseCodes: (json_['responseCodes']
                as core.Map<core.String, core.dynamic>?)
            ?.map((key, value) => core.MapEntry(key, value as core.String)),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (headers != null) 'headers': headers!,
    if (responseCodes != null) 'responseCodes': responseCodes!,
  };
}

/// HTTP Path parameter.
class HttpOperationPathParam {
  /// Data type of path param
  /// Possible string values are:
  /// - "DATA_TYPE_UNSPECIFIED" : Unspecified data type
  /// - "BOOL" : Boolean data type
  /// - "INTEGER" : Integer data type
  /// - "FLOAT" : Float data type
  /// - "STRING" : String data type
  /// - "UUID" : UUID data type
  core.String? dataType;

  /// Segment location in the path, 1-indexed
  core.int? position;

  HttpOperationPathParam({this.dataType, this.position});

  HttpOperationPathParam.fromJson(core.Map json_)
    : this(
        dataType: json_['dataType'] as core.String?,
        position: json_['position'] as core.int?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (dataType != null) 'dataType': dataType!,
    if (position != null) 'position': position!,
  };
}

/// An aggregation of HTTP query parameter occurrences.
class HttpOperationQueryParam {
  /// The number of occurrences of this query parameter across transactions.
  core.String? count;

  /// Data type of path param
  /// Possible string values are:
  /// - "DATA_TYPE_UNSPECIFIED" : Unspecified data type
  /// - "BOOL" : Boolean data type
  /// - "INTEGER" : Integer data type
  /// - "FLOAT" : Float data type
  /// - "STRING" : String data type
  /// - "UUID" : UUID data type
  core.String? dataType;

  /// Name of query param
  core.String? name;

  HttpOperationQueryParam({this.count, this.dataType, this.name});

  HttpOperationQueryParam.fromJson(core.Map json_)
    : this(
        count: json_['count'] as core.String?,
        dataType: json_['dataType'] as core.String?,
        name: json_['name'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (count != null) 'count': count!,
    if (dataType != null) 'dataType': dataType!,
    if (name != null) 'name': name!,
  };
}

/// Message for response to listing tags
class ListApiObservationTagsResponse {
  /// The tags from the specified project
  core.List<core.String>? apiObservationTags;

  /// A token, which can be sent as `page_token` to retrieve the next page.
  ///
  /// If this field is omitted, there are no subsequent pages.
  core.String? nextPageToken;

  ListApiObservationTagsResponse({this.apiObservationTags, this.nextPageToken});

  ListApiObservationTagsResponse.fromJson(core.Map json_)
    : this(
        apiObservationTags:
            (json_['apiObservationTags'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        nextPageToken: json_['nextPageToken'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (apiObservationTags != null) 'apiObservationTags': apiObservationTags!,
    if (nextPageToken != null) 'nextPageToken': nextPageToken!,
  };
}

/// Message for response to listing ApiObservations
class ListApiObservationsResponse {
  /// The ApiObservation from the specified project and location and
  /// ObservationJobs.
  core.List<ApiObservation>? apiObservations;

  /// A token, which can be sent as `page_token` to retrieve the next page.
  ///
  /// If this field is omitted, there are no subsequent pages.
  core.String? nextPageToken;

  ListApiObservationsResponse({this.apiObservations, this.nextPageToken});

  ListApiObservationsResponse.fromJson(core.Map json_)
    : this(
        apiObservations:
            (json_['apiObservations'] as core.List?)
                ?.map(
                  (value) => ApiObservation.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        nextPageToken: json_['nextPageToken'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (apiObservations != null) 'apiObservations': apiObservations!,
    if (nextPageToken != null) 'nextPageToken': nextPageToken!,
  };
}

/// Message for response to listing ApiOperations
class ListApiOperationsResponse {
  /// The ApiOperations from the specified project and location and
  /// ObservationJob and ApiObservation.
  core.List<ApiOperation>? apiOperations;

  /// A token, which can be sent as `page_token` to retrieve the next page.
  ///
  /// If this field is omitted, there are no subsequent pages.
  core.String? nextPageToken;

  ListApiOperationsResponse({this.apiOperations, this.nextPageToken});

  ListApiOperationsResponse.fromJson(core.Map json_)
    : this(
        apiOperations:
            (json_['apiOperations'] as core.List?)
                ?.map(
                  (value) => ApiOperation.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        nextPageToken: json_['nextPageToken'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (apiOperations != null) 'apiOperations': apiOperations!,
    if (nextPageToken != null) 'nextPageToken': nextPageToken!,
  };
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
        locations:
            (json_['locations'] as core.List?)
                ?.map(
                  (value) => Location.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        nextPageToken: json_['nextPageToken'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (locations != null) 'locations': locations!,
    if (nextPageToken != null) 'nextPageToken': nextPageToken!,
  };
}

/// Message for response to listing ObservationJobs
class ListObservationJobsResponse {
  /// A token, which can be sent as `page_token` to retrieve the next page.
  ///
  /// If this field is omitted, there are no subsequent pages.
  core.String? nextPageToken;

  /// The ObservationJob from the specified project and location.
  core.List<ObservationJob>? observationJobs;

  /// Locations that could not be reached.
  core.List<core.String>? unreachable;

  ListObservationJobsResponse({
    this.nextPageToken,
    this.observationJobs,
    this.unreachable,
  });

  ListObservationJobsResponse.fromJson(core.Map json_)
    : this(
        nextPageToken: json_['nextPageToken'] as core.String?,
        observationJobs:
            (json_['observationJobs'] as core.List?)
                ?.map(
                  (value) => ObservationJob.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        unreachable:
            (json_['unreachable'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (nextPageToken != null) 'nextPageToken': nextPageToken!,
    if (observationJobs != null) 'observationJobs': observationJobs!,
    if (unreachable != null) 'unreachable': unreachable!,
  };
}

/// Message for response to listing ObservationSources
class ListObservationSourcesResponse {
  /// A token, which can be sent as `page_token` to retrieve the next page.
  ///
  /// If this field is omitted, there are no subsequent pages.
  core.String? nextPageToken;

  /// The ObservationSource from the specified project and location.
  core.List<ObservationSource>? observationSources;

  /// Locations that could not be reached.
  core.List<core.String>? unreachable;

  ListObservationSourcesResponse({
    this.nextPageToken,
    this.observationSources,
    this.unreachable,
  });

  ListObservationSourcesResponse.fromJson(core.Map json_)
    : this(
        nextPageToken: json_['nextPageToken'] as core.String?,
        observationSources:
            (json_['observationSources'] as core.List?)
                ?.map(
                  (value) => ObservationSource.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        unreachable:
            (json_['unreachable'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (nextPageToken != null) 'nextPageToken': nextPageToken!,
    if (observationSources != null) 'observationSources': observationSources!,
    if (unreachable != null) 'unreachable': unreachable!,
  };
}

/// The response message for Operations.ListOperations.
class ListOperationsResponse {
  /// The standard List next-page token.
  core.String? nextPageToken;

  /// A list of operations that matches the specified filter in the request.
  core.List<Operation>? operations;

  ListOperationsResponse({this.nextPageToken, this.operations});

  ListOperationsResponse.fromJson(core.Map json_)
    : this(
        nextPageToken: json_['nextPageToken'] as core.String?,
        operations:
            (json_['operations'] as core.List?)
                ?.map(
                  (value) => Operation.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (nextPageToken != null) 'nextPageToken': nextPageToken!,
    if (operations != null) 'operations': operations!,
  };
}

/// A resource that represents a Google Cloud location.
typedef Location = $Location00;

/// Message describing ObservationJob object
class ObservationJob {
  /// Create time stamp
  ///
  /// Output only.
  core.String? createTime;

  /// Identifier.
  ///
  /// name of resource Format:
  /// projects/{project}/locations/{location}/observationJobs/{observation_job}
  core.String? name;

  /// These should be of the same kind of source.
  ///
  /// Optional.
  core.List<core.String>? sources;

  /// The observation job state
  ///
  /// Output only.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : Unspecified state
  /// - "CREATING" : Job is in the creating state
  /// - "ENABLING" : Job is in the enabling state
  /// - "ENABLED" : Job is enabled
  /// - "DISABLING" : Job is in the disabling state
  /// - "DISABLED" : Job is disabled
  /// - "DELETING" : Job is being deleted
  /// - "ERROR" : Job is in an error state
  core.String? state;

  /// Update time stamp
  ///
  /// Output only.
  core.String? updateTime;

  ObservationJob({
    this.createTime,
    this.name,
    this.sources,
    this.state,
    this.updateTime,
  });

  ObservationJob.fromJson(core.Map json_)
    : this(
        createTime: json_['createTime'] as core.String?,
        name: json_['name'] as core.String?,
        sources:
            (json_['sources'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        state: json_['state'] as core.String?,
        updateTime: json_['updateTime'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (createTime != null) 'createTime': createTime!,
    if (name != null) 'name': name!,
    if (sources != null) 'sources': sources!,
    if (state != null) 'state': state!,
    if (updateTime != null) 'updateTime': updateTime!,
  };
}

/// Observation source configuration types
class ObservationSource {
  /// Create time stamp
  ///
  /// Output only.
  core.String? createTime;

  /// The GCLB observation source
  GclbObservationSource? gclbObservationSource;

  /// Identifier.
  ///
  /// name of resource For MVP, each region can only have 1 source.
  core.String? name;

  /// The observation source state
  ///
  /// Output only.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : Unspecified state
  /// - "CREATING" : Source is in the creating state
  /// - "CREATED" : Source has been created and is ready to use
  /// - "DELETING" : Source is being deleted
  /// - "ERROR" : Source is in an error state
  core.String? state;

  /// Update time stamp
  ///
  /// Output only.
  core.String? updateTime;

  ObservationSource({
    this.createTime,
    this.gclbObservationSource,
    this.name,
    this.state,
    this.updateTime,
  });

  ObservationSource.fromJson(core.Map json_)
    : this(
        createTime: json_['createTime'] as core.String?,
        gclbObservationSource:
            json_.containsKey('gclbObservationSource')
                ? GclbObservationSource.fromJson(
                  json_['gclbObservationSource']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        name: json_['name'] as core.String?,
        state: json_['state'] as core.String?,
        updateTime: json_['updateTime'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (createTime != null) 'createTime': createTime!,
    if (gclbObservationSource != null)
      'gclbObservationSource': gclbObservationSource!,
    if (name != null) 'name': name!,
    if (state != null) 'state': state!,
    if (updateTime != null) 'updateTime': updateTime!,
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

/// Message for edit tag action
class TagAction {
  /// Action to be applied
  ///
  /// Required.
  /// Possible string values are:
  /// - "ACTION_UNSPECIFIED" : Unspecified.
  /// - "ADD" : Addition of a Tag.
  /// - "REMOVE" : Removal of a Tag.
  core.String? action;

  /// Tag to be added or removed
  ///
  /// Required.
  core.String? tag;

  TagAction({this.action, this.tag});

  TagAction.fromJson(core.Map json_)
    : this(
        action: json_['action'] as core.String?,
        tag: json_['tag'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (action != null) 'action': action!,
    if (tag != null) 'tag': tag!,
  };
}
