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

/// BigQuery Reservation API - v1
///
/// A service to modify your BigQuery flat-rate reservations.
///
/// For more information, see <https://cloud.google.com/bigquery/>
///
/// Create an instance of [BigQueryReservationApi] to access these resources:
///
/// - [ProjectsResource]
///   - [ProjectsLocationsResource]
///     - [ProjectsLocationsCapacityCommitmentsResource]
///     - [ProjectsLocationsReservationsResource]
///       - [ProjectsLocationsReservationsAssignmentsResource]
library bigqueryreservation.v1;

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

/// A service to modify your BigQuery flat-rate reservations.
class BigQueryReservationApi {
  /// View and manage your data in Google BigQuery and see the email address for
  /// your Google Account
  static const bigqueryScope = 'https://www.googleapis.com/auth/bigquery';

  /// See, edit, configure, and delete your Google Cloud data and see the email
  /// address for your Google Account.
  static const cloudPlatformScope =
      'https://www.googleapis.com/auth/cloud-platform';

  final commons.ApiRequester _requester;

  ProjectsResource get projects => ProjectsResource(_requester);

  BigQueryReservationApi(http.Client client,
      {core.String rootUrl = 'https://bigqueryreservation.googleapis.com/',
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

  ProjectsLocationsCapacityCommitmentsResource get capacityCommitments =>
      ProjectsLocationsCapacityCommitmentsResource(_requester);
  ProjectsLocationsReservationsResource get reservations =>
      ProjectsLocationsReservationsResource(_requester);

  ProjectsLocationsResource(commons.ApiRequester client) : _requester = client;

  /// Retrieves a BI reservation.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Name of the requested reservation, for example:
  /// `projects/{project_id}/locations/{location_id}/biReservation`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/biReservation$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [BiReservation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<BiReservation> getBiReservation(
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
    return BiReservation.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Looks up assignments for a specified resource for a particular region.
  ///
  /// If the request is about a project: 1. Assignments created on the project
  /// will be returned if they exist. 2. Otherwise assignments created on the
  /// closest ancestor will be returned. 3. Assignments for different JobTypes
  /// will all be returned. The same logic applies if the request is about a
  /// folder. If the request is about an organization, then assignments created
  /// on the organization will be returned (organization doesn't have
  /// ancestors). Comparing to ListAssignments, there are some behavior
  /// differences: 1. permission on the assignee will be verified in this API.
  /// 2. Hierarchy lookup (project-\>folder-\>organization) happens in this API.
  /// 3. Parent here is `projects / * /locations / * `, instead of `projects / *
  /// /locations / * reservations / * `.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The resource name with location (project name could
  /// be the wildcard '-'), e.g.: `projects/-/locations/US`.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [pageSize] - The maximum number of items to return per page.
  ///
  /// [pageToken] - The next_page_token value returned from a previous List
  /// request, if any.
  ///
  /// [query] - Please specify resource name as assignee in the query. Examples:
  /// * `assignee=projects/myproject` * `assignee=folders/123` *
  /// `assignee=organizations/456`
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [SearchAllAssignmentsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<SearchAllAssignmentsResponse> searchAllAssignments(
    core.String parent, {
    core.int? pageSize,
    core.String? pageToken,
    core.String? query,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if (query != null) 'query': [query],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1/' + core.Uri.encodeFull('$parent') + ':searchAllAssignments';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return SearchAllAssignmentsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Deprecated: Looks up assignments for a specified resource for a particular
  /// region.
  ///
  /// If the request is about a project: 1. Assignments created on the project
  /// will be returned if they exist. 2. Otherwise assignments created on the
  /// closest ancestor will be returned. 3. Assignments for different JobTypes
  /// will all be returned. The same logic applies if the request is about a
  /// folder. If the request is about an organization, then assignments created
  /// on the organization will be returned (organization doesn't have
  /// ancestors). Comparing to ListAssignments, there are some behavior
  /// differences: 1. permission on the assignee will be verified in this API.
  /// 2. Hierarchy lookup (project-\>folder-\>organization) happens in this API.
  /// 3. Parent here is `projects / * /locations / * `, instead of `projects / *
  /// /locations / * reservations / * `. **Note** "-" cannot be used for
  /// projects nor locations.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The resource name of the admin project(containing
  /// project and location), e.g.: `projects/myproject/locations/US`.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [pageSize] - The maximum number of items to return per page.
  ///
  /// [pageToken] - The next_page_token value returned from a previous List
  /// request, if any.
  ///
  /// [query] - Please specify resource name as assignee in the query. Examples:
  /// * `assignee=projects/myproject` * `assignee=folders/123` *
  /// `assignee=organizations/456`
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [SearchAssignmentsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<SearchAssignmentsResponse> searchAssignments(
    core.String parent, {
    core.int? pageSize,
    core.String? pageToken,
    core.String? query,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if (query != null) 'query': [query],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + ':searchAssignments';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return SearchAssignmentsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Updates a BI reservation.
  ///
  /// Only fields specified in the `field_mask` are updated. A singleton BI
  /// reservation always exists with default size 0. In order to reserve BI
  /// capacity it needs to be updated to an amount greater than 0. In order to
  /// release BI capacity reservation size must be set to 0.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - The resource name of the singleton BI reservation. Reservation
  /// names have the form
  /// `projects/{project_id}/locations/{location_id}/biReservation`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/biReservation$`.
  ///
  /// [updateMask] - A list of fields to be updated in this request.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [BiReservation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<BiReservation> updateBiReservation(
    BiReservation request,
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
    return BiReservation.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsCapacityCommitmentsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsCapacityCommitmentsResource(commons.ApiRequester client)
      : _requester = client;

  /// Creates a new capacity commitment resource.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Resource name of the parent reservation. E.g.,
  /// `projects/myproject/locations/US`
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [capacityCommitmentId] - The optional capacity commitment ID. Capacity
  /// commitment name will be generated automatically if this field is empty.
  /// This field must only contain lower case alphanumeric characters or dashes.
  /// The first and last character cannot be a dash. Max length is 64
  /// characters. NOTE: this ID won't be kept if the capacity commitment is
  /// split or merged.
  ///
  /// [enforceSingleAdminProjectPerOrg] - If true, fail the request if another
  /// project in the organization has a capacity commitment.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [CapacityCommitment].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<CapacityCommitment> create(
    CapacityCommitment request,
    core.String parent, {
    core.String? capacityCommitmentId,
    core.bool? enforceSingleAdminProjectPerOrg,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (capacityCommitmentId != null)
        'capacityCommitmentId': [capacityCommitmentId],
      if (enforceSingleAdminProjectPerOrg != null)
        'enforceSingleAdminProjectPerOrg': [
          '${enforceSingleAdminProjectPerOrg}'
        ],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1/' + core.Uri.encodeFull('$parent') + '/capacityCommitments';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return CapacityCommitment.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Deletes a capacity commitment.
  ///
  /// Attempting to delete capacity commitment before its commitment_end_time
  /// will fail with the error code `google.rpc.Code.FAILED_PRECONDITION`.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Resource name of the capacity commitment to delete.
  /// E.g., `projects/myproject/locations/US/capacityCommitments/123`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/capacityCommitments/\[^/\]+$`.
  ///
  /// [force] - Can be used to force delete commitments even if assignments
  /// exist. Deleting commitments with assignments may cause queries to fail if
  /// they no longer have access to slots.
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
  async.Future<Empty> delete(
    core.String name, {
    core.bool? force,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (force != null) 'force': ['${force}'],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return Empty.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Returns information about the capacity commitment.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Resource name of the capacity commitment to retrieve.
  /// E.g., `projects/myproject/locations/US/capacityCommitments/123`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/capacityCommitments/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [CapacityCommitment].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<CapacityCommitment> get(
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
    return CapacityCommitment.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists all the capacity commitments for the admin project.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Resource name of the parent reservation. E.g.,
  /// `projects/myproject/locations/US`
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [pageSize] - The maximum number of items to return.
  ///
  /// [pageToken] - The next_page_token value returned from a previous List
  /// request, if any.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListCapacityCommitmentsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListCapacityCommitmentsResponse> list(
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
        'v1/' + core.Uri.encodeFull('$parent') + '/capacityCommitments';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListCapacityCommitmentsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Merges capacity commitments of the same plan into a single commitment.
  ///
  /// The resulting capacity commitment has the greater commitment_end_time out
  /// of the to-be-merged capacity commitments. Attempting to merge capacity
  /// commitments of different plan will fail with the error code
  /// `google.rpc.Code.FAILED_PRECONDITION`.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Parent resource that identifies admin project and location
  /// e.g., `projects/myproject/locations/us`
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [CapacityCommitment].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<CapacityCommitment> merge(
    MergeCapacityCommitmentsRequest request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1/' + core.Uri.encodeFull('$parent') + '/capacityCommitments:merge';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return CapacityCommitment.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Updates an existing capacity commitment.
  ///
  /// Only `plan` and `renewal_plan` fields can be updated. Plan can only be
  /// changed to a plan of a longer commitment period. Attempting to change to a
  /// plan with shorter commitment period will fail with the error code
  /// `google.rpc.Code.FAILED_PRECONDITION`.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Output only. The resource name of the capacity commitment, e.g.,
  /// `projects/myproject/locations/US/capacityCommitments/123` The
  /// commitment_id must only contain lower case alphanumeric characters or
  /// dashes. It must start with a letter and must not end with a dash. Its
  /// maximum length is 64 characters.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/capacityCommitments/\[^/\]+$`.
  ///
  /// [updateMask] - Standard field mask for the set of fields to be updated.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [CapacityCommitment].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<CapacityCommitment> patch(
    CapacityCommitment request,
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
    return CapacityCommitment.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Splits capacity commitment to two commitments of the same plan and
  /// `commitment_end_time`.
  ///
  /// A common use case is to enable downgrading commitments. For example, in
  /// order to downgrade from 10000 slots to 8000, you might split a 10000
  /// capacity commitment into commitments of 2000 and 8000. Then, you delete
  /// the first one after the commitment end time passes.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name e.g.,:
  /// `projects/myproject/locations/US/capacityCommitments/123`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/capacityCommitments/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [SplitCapacityCommitmentResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<SplitCapacityCommitmentResponse> split(
    SplitCapacityCommitmentRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':split';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return SplitCapacityCommitmentResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsReservationsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsReservationsAssignmentsResource get assignments =>
      ProjectsLocationsReservationsAssignmentsResource(_requester);

  ProjectsLocationsReservationsResource(commons.ApiRequester client)
      : _requester = client;

  /// Creates a new reservation resource.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Project, location. E.g.,
  /// `projects/myproject/locations/US`
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [reservationId] - The reservation ID. It must only contain lower case
  /// alphanumeric characters or dashes. It must start with a letter and must
  /// not end with a dash. Its maximum length is 64 characters.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Reservation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Reservation> create(
    Reservation request,
    core.String parent, {
    core.String? reservationId,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (reservationId != null) 'reservationId': [reservationId],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/reservations';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Reservation.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Deletes a reservation.
  ///
  /// Returns `google.rpc.Code.FAILED_PRECONDITION` when reservation has
  /// assignments.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Resource name of the reservation to retrieve. E.g.,
  /// `projects/myproject/locations/US/reservations/team1-prod`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/reservations/\[^/\]+$`.
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
  async.Future<Empty> delete(
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
    return Empty.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Returns information about the reservation.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Resource name of the reservation to retrieve. E.g.,
  /// `projects/myproject/locations/US/reservations/team1-prod`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/reservations/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Reservation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Reservation> get(
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
    return Reservation.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists all the reservations for the project in the specified location.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent resource name containing project and
  /// location, e.g.: `projects/myproject/locations/US`
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [pageSize] - The maximum number of items to return per page.
  ///
  /// [pageToken] - The next_page_token value returned from a previous List
  /// request, if any.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListReservationsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListReservationsResponse> list(
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

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/reservations';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListReservationsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Updates an existing reservation resource.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - The resource name of the reservation, e.g., `projects / *
  /// /locations / * /reservations/team1-prod`. The reservation_id must only
  /// contain lower case alphanumeric characters or dashes. It must start with a
  /// letter and must not end with a dash. Its maximum length is 64 characters.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/reservations/\[^/\]+$`.
  ///
  /// [updateMask] - Standard field mask for the set of fields to be updated.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Reservation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Reservation> patch(
    Reservation request,
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
    return Reservation.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsReservationsAssignmentsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsReservationsAssignmentsResource(commons.ApiRequester client)
      : _requester = client;

  /// Creates an assignment object which allows the given project to submit jobs
  /// of a certain type using slots from the specified reservation.
  ///
  /// Currently a resource (project, folder, organization) can only have one
  /// assignment per each (job_type, location) combination, and that reservation
  /// will be used for all jobs of the matching type. Different assignments can
  /// be created on different levels of the projects, folders or organization
  /// hierarchy. During query execution, the assignment is looked up at the
  /// project, folder and organization levels in that order. The first
  /// assignment found is applied to the query. When creating assignments, it
  /// does not matter if other assignments exist at higher levels. Example: *
  /// The organization `organizationA` contains two projects, `project1` and
  /// `project2`. * Assignments for all three entities (`organizationA`,
  /// `project1`, and `project2`) could all be created and mapped to the same or
  /// different reservations. "None" assignments represent an absence of the
  /// assignment. Projects assigned to None use on-demand pricing. To create a
  /// "None" assignment, use "none" as a reservation_id in the parent. Example
  /// parent: `projects/myproject/locations/US/reservations/none`. Returns
  /// `google.rpc.Code.PERMISSION_DENIED` if user does not have 'bigquery.admin'
  /// permissions on the project using the reservation and the project that owns
  /// this reservation. Returns `google.rpc.Code.INVALID_ARGUMENT` when location
  /// of the assignment does not match location of the reservation.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent resource name of the assignment E.g.
  /// `projects/myproject/locations/US/reservations/team1-prod`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/reservations/\[^/\]+$`.
  ///
  /// [assignmentId] - The optional assignment ID. Assignment name will be
  /// generated automatically if this field is empty. This field must only
  /// contain lower case alphanumeric characters or dashes. Max length is 64
  /// characters.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Assignment].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Assignment> create(
    Assignment request,
    core.String parent, {
    core.String? assignmentId,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (assignmentId != null) 'assignmentId': [assignmentId],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/assignments';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Assignment.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Deletes a assignment.
  ///
  /// No expansion will happen. Example: * Organization `organizationA` contains
  /// two projects, `project1` and `project2`. * Reservation `res1` exists and
  /// was created previously. * CreateAssignment was used previously to define
  /// the following associations between entities and reservations: `` and `` In
  /// this example, deletion of the `` assignment won't affect the other
  /// assignment ``. After said deletion, queries from `project1` will still use
  /// `res1` while queries from `project2` will switch to use on-demand mode.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Name of the resource, e.g.
  /// `projects/myproject/locations/US/reservations/team1-prod/assignments/123`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/reservations/\[^/\]+/assignments/\[^/\]+$`.
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
  async.Future<Empty> delete(
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
    return Empty.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists assignments.
  ///
  /// Only explicitly created assignments will be returned. Example: *
  /// Organization `organizationA` contains two projects, `project1` and
  /// `project2`. * Reservation `res1` exists and was created previously. *
  /// CreateAssignment was used previously to define the following associations
  /// between entities and reservations: `` and `` In this example,
  /// ListAssignments will just return the above two assignments for reservation
  /// `res1`, and no expansion/merge will happen. The wildcard "-" can be used
  /// for reservations in the request. In that case all assignments belongs to
  /// the specified project and location will be listed. **Note** "-" cannot be
  /// used for projects nor locations.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent resource name e.g.:
  /// `projects/myproject/locations/US/reservations/team1-prod` Or:
  /// `projects/myproject/locations/US/reservations/-`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/reservations/\[^/\]+$`.
  ///
  /// [pageSize] - The maximum number of items to return per page.
  ///
  /// [pageToken] - The next_page_token value returned from a previous List
  /// request, if any.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListAssignmentsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListAssignmentsResponse> list(
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

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/assignments';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListAssignmentsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Moves an assignment under a new reservation.
  ///
  /// This differs from removing an existing assignment and recreating a new one
  /// by providing a transactional change that ensures an assignee always has an
  /// associated reservation.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name of the assignment, e.g.
  /// `projects/myproject/locations/US/reservations/team1-prod/assignments/123`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/reservations/\[^/\]+/assignments/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Assignment].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Assignment> move(
    MoveAssignmentRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':move';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Assignment.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Updates an existing assignment.
  ///
  /// Only the `priority` field can be updated.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Output only. Name of the resource. E.g.:
  /// `projects/myproject/locations/US/reservations/team1-prod/assignments/123`.
  /// The assignment_id must only contain lower case alphanumeric characters or
  /// dashes and the max length is 64 characters.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/reservations/\[^/\]+/assignments/\[^/\]+$`.
  ///
  /// [updateMask] - Standard field mask for the set of fields to be updated.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Assignment].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Assignment> patch(
    Assignment request,
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
    return Assignment.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

/// An assignment allows a project to submit jobs of a certain type using slots
/// from the specified reservation.
class Assignment {
  /// The resource which will use the reservation.
  ///
  /// E.g. `projects/myproject`, `folders/123`, or `organizations/456`.
  core.String? assignee;

  /// Which type of jobs will use the reservation.
  /// Possible string values are:
  /// - "JOB_TYPE_UNSPECIFIED" : Invalid type. Requests with this value will be
  /// rejected with error code `google.rpc.Code.INVALID_ARGUMENT`.
  /// - "PIPELINE" : Pipeline (load/export) jobs from the project will use the
  /// reservation.
  /// - "QUERY" : Query jobs from the project will use the reservation.
  /// - "ML_EXTERNAL" : BigQuery ML jobs that use services external to BigQuery
  /// for model training. These jobs will not utilize idle slots from other
  /// reservations.
  core.String? jobType;

  /// Name of the resource.
  ///
  /// E.g.:
  /// `projects/myproject/locations/US/reservations/team1-prod/assignments/123`.
  /// The assignment_id must only contain lower case alphanumeric characters or
  /// dashes and the max length is 64 characters.
  ///
  /// Output only.
  core.String? name;

  /// State of the assignment.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : Invalid state value.
  /// - "PENDING" : Queries from assignee will be executed as on-demand, if
  /// related assignment is pending.
  /// - "ACTIVE" : Assignment is ready.
  core.String? state;

  Assignment({
    this.assignee,
    this.jobType,
    this.name,
    this.state,
  });

  Assignment.fromJson(core.Map json_)
      : this(
          assignee: json_.containsKey('assignee')
              ? json_['assignee'] as core.String
              : null,
          jobType: json_.containsKey('jobType')
              ? json_['jobType'] as core.String
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          state:
              json_.containsKey('state') ? json_['state'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (assignee != null) 'assignee': assignee!,
        if (jobType != null) 'jobType': jobType!,
        if (name != null) 'name': name!,
        if (state != null) 'state': state!,
      };
}

/// Represents a BI Reservation.
class BiReservation {
  /// The resource name of the singleton BI reservation.
  ///
  /// Reservation names have the form
  /// `projects/{project_id}/locations/{location_id}/biReservation`.
  core.String? name;

  /// Preferred tables to use BI capacity for.
  core.List<TableReference>? preferredTables;

  /// Size of a reservation, in bytes.
  core.String? size;

  /// The last update timestamp of a reservation.
  ///
  /// Output only.
  core.String? updateTime;

  BiReservation({
    this.name,
    this.preferredTables,
    this.size,
    this.updateTime,
  });

  BiReservation.fromJson(core.Map json_)
      : this(
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          preferredTables: json_.containsKey('preferredTables')
              ? (json_['preferredTables'] as core.List)
                  .map((value) => TableReference.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          size: json_.containsKey('size') ? json_['size'] as core.String : null,
          updateTime: json_.containsKey('updateTime')
              ? json_['updateTime'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (name != null) 'name': name!,
        if (preferredTables != null) 'preferredTables': preferredTables!,
        if (size != null) 'size': size!,
        if (updateTime != null) 'updateTime': updateTime!,
      };
}

/// Capacity commitment is a way to purchase compute capacity for BigQuery jobs
/// (in the form of slots) with some committed period of usage.
///
/// Annual commitments renew by default. Commitments can be removed after their
/// commitment end time passes. In order to remove annual commitment, its plan
/// needs to be changed to monthly or flex first. A capacity commitment resource
/// exists as a child resource of the admin project.
class CapacityCommitment {
  /// The end of the current commitment period.
  ///
  /// It is applicable only for ACTIVE capacity commitments.
  ///
  /// Output only.
  core.String? commitmentEndTime;

  /// The start of the current commitment period.
  ///
  /// It is applicable only for ACTIVE capacity commitments.
  ///
  /// Output only.
  core.String? commitmentStartTime;

  /// For FAILED commitment plan, provides the reason of failure.
  ///
  /// Output only.
  Status? failureStatus;

  /// Applicable only for commitments located within one of the BigQuery
  /// multi-regions (US or EU).
  ///
  /// If set to true, this commitment is placed in the organization's secondary
  /// region which is designated for disaster recovery purposes. If false, this
  /// commitment is placed in the organization's default region.
  core.bool? multiRegionAuxiliary;

  /// The resource name of the capacity commitment, e.g.,
  /// `projects/myproject/locations/US/capacityCommitments/123` The
  /// commitment_id must only contain lower case alphanumeric characters or
  /// dashes.
  ///
  /// It must start with a letter and must not end with a dash. Its maximum
  /// length is 64 characters.
  ///
  /// Output only.
  core.String? name;

  /// Capacity commitment commitment plan.
  /// Possible string values are:
  /// - "COMMITMENT_PLAN_UNSPECIFIED" : Invalid plan value. Requests with this
  /// value will be rejected with error code `google.rpc.Code.INVALID_ARGUMENT`.
  /// - "FLEX" : Flex commitments have committed period of 1 minute after
  /// becoming ACTIVE. After that, they are not in a committed period anymore
  /// and can be removed any time.
  /// - "TRIAL" : Trial commitments have a committed period of 182 days after
  /// becoming ACTIVE. After that, they are converted to a new commitment based
  /// on the `renewal_plan`. Default `renewal_plan` for Trial commitment is Flex
  /// so that it can be deleted right after committed period ends.
  /// - "MONTHLY" : Monthly commitments have a committed period of 30 days after
  /// becoming ACTIVE. After that, they are not in a committed period anymore
  /// and can be removed any time.
  /// - "ANNUAL" : Annual commitments have a committed period of 365 days after
  /// becoming ACTIVE. After that they are converted to a new commitment based
  /// on the renewal_plan.
  core.String? plan;

  /// The plan this capacity commitment is converted to after
  /// commitment_end_time passes.
  ///
  /// Once the plan is changed, committed period is extended according to
  /// commitment plan. Only applicable for ANNUAL and TRIAL commitments.
  /// Possible string values are:
  /// - "COMMITMENT_PLAN_UNSPECIFIED" : Invalid plan value. Requests with this
  /// value will be rejected with error code `google.rpc.Code.INVALID_ARGUMENT`.
  /// - "FLEX" : Flex commitments have committed period of 1 minute after
  /// becoming ACTIVE. After that, they are not in a committed period anymore
  /// and can be removed any time.
  /// - "TRIAL" : Trial commitments have a committed period of 182 days after
  /// becoming ACTIVE. After that, they are converted to a new commitment based
  /// on the `renewal_plan`. Default `renewal_plan` for Trial commitment is Flex
  /// so that it can be deleted right after committed period ends.
  /// - "MONTHLY" : Monthly commitments have a committed period of 30 days after
  /// becoming ACTIVE. After that, they are not in a committed period anymore
  /// and can be removed any time.
  /// - "ANNUAL" : Annual commitments have a committed period of 365 days after
  /// becoming ACTIVE. After that they are converted to a new commitment based
  /// on the renewal_plan.
  core.String? renewalPlan;

  /// Number of slots in this commitment.
  core.String? slotCount;

  /// State of the commitment.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : Invalid state value.
  /// - "PENDING" : Capacity commitment is pending provisioning. Pending
  /// capacity commitment does not contribute to the project's slot_capacity.
  /// - "ACTIVE" : Once slots are provisioned, capacity commitment becomes
  /// active. slot_count is added to the project's slot_capacity.
  /// - "FAILED" : Capacity commitment is failed to be activated by the backend.
  core.String? state;

  CapacityCommitment({
    this.commitmentEndTime,
    this.commitmentStartTime,
    this.failureStatus,
    this.multiRegionAuxiliary,
    this.name,
    this.plan,
    this.renewalPlan,
    this.slotCount,
    this.state,
  });

  CapacityCommitment.fromJson(core.Map json_)
      : this(
          commitmentEndTime: json_.containsKey('commitmentEndTime')
              ? json_['commitmentEndTime'] as core.String
              : null,
          commitmentStartTime: json_.containsKey('commitmentStartTime')
              ? json_['commitmentStartTime'] as core.String
              : null,
          failureStatus: json_.containsKey('failureStatus')
              ? Status.fromJson(
                  json_['failureStatus'] as core.Map<core.String, core.dynamic>)
              : null,
          multiRegionAuxiliary: json_.containsKey('multiRegionAuxiliary')
              ? json_['multiRegionAuxiliary'] as core.bool
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          plan: json_.containsKey('plan') ? json_['plan'] as core.String : null,
          renewalPlan: json_.containsKey('renewalPlan')
              ? json_['renewalPlan'] as core.String
              : null,
          slotCount: json_.containsKey('slotCount')
              ? json_['slotCount'] as core.String
              : null,
          state:
              json_.containsKey('state') ? json_['state'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (commitmentEndTime != null) 'commitmentEndTime': commitmentEndTime!,
        if (commitmentStartTime != null)
          'commitmentStartTime': commitmentStartTime!,
        if (failureStatus != null) 'failureStatus': failureStatus!,
        if (multiRegionAuxiliary != null)
          'multiRegionAuxiliary': multiRegionAuxiliary!,
        if (name != null) 'name': name!,
        if (plan != null) 'plan': plan!,
        if (renewalPlan != null) 'renewalPlan': renewalPlan!,
        if (slotCount != null) 'slotCount': slotCount!,
        if (state != null) 'state': state!,
      };
}

/// A generic empty message that you can re-use to avoid defining duplicated
/// empty messages in your APIs.
///
/// A typical example is to use it as the request or the response type of an API
/// method. For instance: service Foo { rpc Bar(google.protobuf.Empty) returns
/// (google.protobuf.Empty); }
typedef Empty = $Empty;

/// The response for ReservationService.ListAssignments.
class ListAssignmentsResponse {
  /// List of assignments visible to the user.
  core.List<Assignment>? assignments;

  /// Token to retrieve the next page of results, or empty if there are no more
  /// results in the list.
  core.String? nextPageToken;

  ListAssignmentsResponse({
    this.assignments,
    this.nextPageToken,
  });

  ListAssignmentsResponse.fromJson(core.Map json_)
      : this(
          assignments: json_.containsKey('assignments')
              ? (json_['assignments'] as core.List)
                  .map((value) => Assignment.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (assignments != null) 'assignments': assignments!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
      };
}

/// The response for ReservationService.ListCapacityCommitments.
class ListCapacityCommitmentsResponse {
  /// List of capacity commitments visible to the user.
  core.List<CapacityCommitment>? capacityCommitments;

  /// Token to retrieve the next page of results, or empty if there are no more
  /// results in the list.
  core.String? nextPageToken;

  ListCapacityCommitmentsResponse({
    this.capacityCommitments,
    this.nextPageToken,
  });

  ListCapacityCommitmentsResponse.fromJson(core.Map json_)
      : this(
          capacityCommitments: json_.containsKey('capacityCommitments')
              ? (json_['capacityCommitments'] as core.List)
                  .map((value) => CapacityCommitment.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (capacityCommitments != null)
          'capacityCommitments': capacityCommitments!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
      };
}

/// The response for ReservationService.ListReservations.
class ListReservationsResponse {
  /// Token to retrieve the next page of results, or empty if there are no more
  /// results in the list.
  core.String? nextPageToken;

  /// List of reservations visible to the user.
  core.List<Reservation>? reservations;

  ListReservationsResponse({
    this.nextPageToken,
    this.reservations,
  });

  ListReservationsResponse.fromJson(core.Map json_)
      : this(
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
          reservations: json_.containsKey('reservations')
              ? (json_['reservations'] as core.List)
                  .map((value) => Reservation.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (reservations != null) 'reservations': reservations!,
      };
}

/// The request for ReservationService.MergeCapacityCommitments.
class MergeCapacityCommitmentsRequest {
  /// Ids of capacity commitments to merge.
  ///
  /// These capacity commitments must exist under admin project and location
  /// specified in the parent. ID is the last portion of capacity commitment
  /// name e.g., 'abc' for
  /// projects/myproject/locations/US/capacityCommitments/abc
  core.List<core.String>? capacityCommitmentIds;

  MergeCapacityCommitmentsRequest({
    this.capacityCommitmentIds,
  });

  MergeCapacityCommitmentsRequest.fromJson(core.Map json_)
      : this(
          capacityCommitmentIds: json_.containsKey('capacityCommitmentIds')
              ? (json_['capacityCommitmentIds'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (capacityCommitmentIds != null)
          'capacityCommitmentIds': capacityCommitmentIds!,
      };
}

/// The request for ReservationService.MoveAssignment.
///
/// **Note**: "bigquery.reservationAssignments.create" permission is required on
/// the destination_id. **Note**: "bigquery.reservationAssignments.create" and
/// "bigquery.reservationAssignments.delete" permission are required on the
/// related assignee.
class MoveAssignmentRequest {
  /// The new reservation ID, e.g.:
  /// `projects/myotherproject/locations/US/reservations/team2-prod`
  core.String? destinationId;

  MoveAssignmentRequest({
    this.destinationId,
  });

  MoveAssignmentRequest.fromJson(core.Map json_)
      : this(
          destinationId: json_.containsKey('destinationId')
              ? json_['destinationId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (destinationId != null) 'destinationId': destinationId!,
      };
}

/// A reservation is a mechanism used to guarantee slots to users.
class Reservation {
  /// Maximum number of queries that are allowed to run concurrently in this
  /// reservation.
  ///
  /// This is a soft limit due to asynchronous nature of the system and various
  /// optimizations for small queries. Default value is 0 which means that
  /// concurrency will be automatically set based on the reservation size.
  core.String? concurrency;

  /// Creation time of the reservation.
  ///
  /// Output only.
  core.String? creationTime;

  /// If false, any query or pipeline job using this reservation will use idle
  /// slots from other reservations within the same admin project.
  ///
  /// If true, a query or pipeline job using this reservation will execute with
  /// the slot capacity specified in the slot_capacity field at most.
  core.bool? ignoreIdleSlots;

  /// Applicable only for reservations located within one of the BigQuery
  /// multi-regions (US or EU).
  ///
  /// If set to true, this reservation is placed in the organization's secondary
  /// region which is designated for disaster recovery purposes. If false, this
  /// reservation is placed in the organization's default region.
  core.bool? multiRegionAuxiliary;

  /// The resource name of the reservation, e.g., `projects / * /locations / *
  /// /reservations/team1-prod`.
  ///
  /// The reservation_id must only contain lower case alphanumeric characters or
  /// dashes. It must start with a letter and must not end with a dash. Its
  /// maximum length is 64 characters.
  core.String? name;

  /// Minimum slots available to this reservation.
  ///
  /// A slot is a unit of computational power in BigQuery, and serves as the
  /// unit of parallelism. Queries using this reservation might use more slots
  /// during runtime if ignore_idle_slots is set to false. If total
  /// slot_capacity of the reservation and its siblings exceeds the total
  /// slot_count of all capacity commitments, the request will fail with
  /// `google.rpc.Code.RESOURCE_EXHAUSTED`. NOTE: for reservations in US or EU
  /// multi-regions, slot capacity constraints are checked separately for
  /// default and auxiliary regions. See multi_region_auxiliary flag for more
  /// details.
  core.String? slotCapacity;

  /// Last update time of the reservation.
  ///
  /// Output only.
  core.String? updateTime;

  Reservation({
    this.concurrency,
    this.creationTime,
    this.ignoreIdleSlots,
    this.multiRegionAuxiliary,
    this.name,
    this.slotCapacity,
    this.updateTime,
  });

  Reservation.fromJson(core.Map json_)
      : this(
          concurrency: json_.containsKey('concurrency')
              ? json_['concurrency'] as core.String
              : null,
          creationTime: json_.containsKey('creationTime')
              ? json_['creationTime'] as core.String
              : null,
          ignoreIdleSlots: json_.containsKey('ignoreIdleSlots')
              ? json_['ignoreIdleSlots'] as core.bool
              : null,
          multiRegionAuxiliary: json_.containsKey('multiRegionAuxiliary')
              ? json_['multiRegionAuxiliary'] as core.bool
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          slotCapacity: json_.containsKey('slotCapacity')
              ? json_['slotCapacity'] as core.String
              : null,
          updateTime: json_.containsKey('updateTime')
              ? json_['updateTime'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (concurrency != null) 'concurrency': concurrency!,
        if (creationTime != null) 'creationTime': creationTime!,
        if (ignoreIdleSlots != null) 'ignoreIdleSlots': ignoreIdleSlots!,
        if (multiRegionAuxiliary != null)
          'multiRegionAuxiliary': multiRegionAuxiliary!,
        if (name != null) 'name': name!,
        if (slotCapacity != null) 'slotCapacity': slotCapacity!,
        if (updateTime != null) 'updateTime': updateTime!,
      };
}

/// The response for ReservationService.SearchAllAssignments.
class SearchAllAssignmentsResponse {
  /// List of assignments visible to the user.
  core.List<Assignment>? assignments;

  /// Token to retrieve the next page of results, or empty if there are no more
  /// results in the list.
  core.String? nextPageToken;

  SearchAllAssignmentsResponse({
    this.assignments,
    this.nextPageToken,
  });

  SearchAllAssignmentsResponse.fromJson(core.Map json_)
      : this(
          assignments: json_.containsKey('assignments')
              ? (json_['assignments'] as core.List)
                  .map((value) => Assignment.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (assignments != null) 'assignments': assignments!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
      };
}

/// The response for ReservationService.SearchAssignments.
class SearchAssignmentsResponse {
  /// List of assignments visible to the user.
  core.List<Assignment>? assignments;

  /// Token to retrieve the next page of results, or empty if there are no more
  /// results in the list.
  core.String? nextPageToken;

  SearchAssignmentsResponse({
    this.assignments,
    this.nextPageToken,
  });

  SearchAssignmentsResponse.fromJson(core.Map json_)
      : this(
          assignments: json_.containsKey('assignments')
              ? (json_['assignments'] as core.List)
                  .map((value) => Assignment.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (assignments != null) 'assignments': assignments!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
      };
}

/// The request for ReservationService.SplitCapacityCommitment.
class SplitCapacityCommitmentRequest {
  /// Number of slots in the capacity commitment after the split.
  core.String? slotCount;

  SplitCapacityCommitmentRequest({
    this.slotCount,
  });

  SplitCapacityCommitmentRequest.fromJson(core.Map json_)
      : this(
          slotCount: json_.containsKey('slotCount')
              ? json_['slotCount'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (slotCount != null) 'slotCount': slotCount!,
      };
}

/// The response for ReservationService.SplitCapacityCommitment.
class SplitCapacityCommitmentResponse {
  /// First capacity commitment, result of a split.
  CapacityCommitment? first;

  /// Second capacity commitment, result of a split.
  CapacityCommitment? second;

  SplitCapacityCommitmentResponse({
    this.first,
    this.second,
  });

  SplitCapacityCommitmentResponse.fromJson(core.Map json_)
      : this(
          first: json_.containsKey('first')
              ? CapacityCommitment.fromJson(
                  json_['first'] as core.Map<core.String, core.dynamic>)
              : null,
          second: json_.containsKey('second')
              ? CapacityCommitment.fromJson(
                  json_['second'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (first != null) 'first': first!,
        if (second != null) 'second': second!,
      };
}

/// The `Status` type defines a logical error model that is suitable for
/// different programming environments, including REST APIs and RPC APIs.
///
/// It is used by [gRPC](https://github.com/grpc). Each `Status` message
/// contains three pieces of data: error code, error message, and error details.
/// You can find out more about this error model and how to work with it in the
/// [API Design Guide](https://cloud.google.com/apis/design/errors).
typedef Status = $Status;

/// Fully qualified reference to BigQuery table.
///
/// Internally stored as google.cloud.bi.v1.BqTableReference.
class TableReference {
  /// The ID of the dataset in the above project.
  core.String? datasetId;

  /// The assigned project ID of the project.
  core.String? projectId;

  /// The ID of the table in the above dataset.
  core.String? tableId;

  TableReference({
    this.datasetId,
    this.projectId,
    this.tableId,
  });

  TableReference.fromJson(core.Map json_)
      : this(
          datasetId: json_.containsKey('datasetId')
              ? json_['datasetId'] as core.String
              : null,
          projectId: json_.containsKey('projectId')
              ? json_['projectId'] as core.String
              : null,
          tableId: json_.containsKey('tableId')
              ? json_['tableId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (datasetId != null) 'datasetId': datasetId!,
        if (projectId != null) 'projectId': projectId!,
        if (tableId != null) 'tableId': tableId!,
      };
}
