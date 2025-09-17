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

/// BigQuery Reservation API - v1
///
/// A service to modify your BigQuery reservations.
///
/// For more information, see <https://cloud.google.com/bigquery/>
///
/// Create an instance of [BigQueryReservationApi] to access these resources:
///
/// - [ProjectsResource]
///   - [ProjectsLocationsResource]
///     - [ProjectsLocationsCapacityCommitmentsResource]
///     - [ProjectsLocationsReservationGroupsResource]
///     - [ProjectsLocationsReservationsResource]
///       - [ProjectsLocationsReservationsAssignmentsResource]
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

/// A service to modify your BigQuery reservations.
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

  BigQueryReservationApi(
    http.Client client, {
    core.String rootUrl = 'https://bigqueryreservation.googleapis.com/',
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

  ProjectsLocationsCapacityCommitmentsResource get capacityCommitments =>
      ProjectsLocationsCapacityCommitmentsResource(_requester);
  ProjectsLocationsReservationGroupsResource get reservationGroups =>
      ProjectsLocationsReservationGroupsResource(_requester);
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
      response_ as core.Map<core.String, core.dynamic>,
    );
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
      response_ as core.Map<core.String, core.dynamic>,
    );
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
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
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
      response_ as core.Map<core.String, core.dynamic>,
    );
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
  /// [name] - Identifier. The resource name of the singleton BI reservation.
  /// Reservation names have the form
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
      response_ as core.Map<core.String, core.dynamic>,
    );
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
          '${enforceSingleAdminProjectPerOrg}',
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
      response_ as core.Map<core.String, core.dynamic>,
    );
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
      response_ as core.Map<core.String, core.dynamic>,
    );
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
      response_ as core.Map<core.String, core.dynamic>,
    );
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
      response_ as core.Map<core.String, core.dynamic>,
    );
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
      response_ as core.Map<core.String, core.dynamic>,
    );
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
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class ProjectsLocationsReservationGroupsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsReservationGroupsResource(commons.ApiRequester client)
    : _requester = client;

  /// Creates a new reservation group.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Project, location. E.g.,
  /// `projects/myproject/locations/US`
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [reservationGroupId] - Required. The reservation group ID. It must only
  /// contain lower case alphanumeric characters or dashes. It must start with a
  /// letter and must not end with a dash. Its maximum length is 64 characters.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ReservationGroup].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ReservationGroup> create(
    ReservationGroup request,
    core.String parent, {
    core.String? reservationGroupId,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (reservationGroupId != null)
        'reservationGroupId': [reservationGroupId],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/reservationGroups';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return ReservationGroup.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Deletes a reservation.
  ///
  /// Returns `google.rpc.Code.FAILED_PRECONDITION` when reservation has
  /// assignments.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Resource name of the reservation group to retrieve.
  /// E.g., `projects/myproject/locations/US/reservationGroups/team1-prod`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/reservationGroups/\[^/\]+$`.
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

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return Empty.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Returns information about the reservation group.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Resource name of the reservation group to retrieve.
  /// E.g., `projects/myproject/locations/US/reservationGroups/team1-prod`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/reservationGroups/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ReservationGroup].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ReservationGroup> get(
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
    return ReservationGroup.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Lists all the reservation groups for the project in the specified
  /// location.
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
  /// Completes with a [ListReservationGroupsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListReservationGroupsResponse> list(
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

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/reservationGroups';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListReservationGroupsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
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
      response_ as core.Map<core.String, core.dynamic>,
    );
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
  async.Future<Empty> delete(core.String name, {core.String? $fields}) async {
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

  /// Fail over a reservation to the secondary location.
  ///
  /// The operation should be done in the current secondary location, which will
  /// be promoted to the new primary location for the reservation. Attempting to
  /// failover a reservation in the current primary location will fail with the
  /// error code `google.rpc.Code.FAILED_PRECONDITION`.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Resource name of the reservation to failover. E.g.,
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
  async.Future<Reservation> failoverReservation(
    FailoverReservationRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':failoverReservation';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Reservation.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
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
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Gets the access control policy for a resource.
  ///
  /// May return: * A`NOT_FOUND` error if the resource doesn't exist or you
  /// don't have the permission to view it. * An empty policy if the resource
  /// exists but doesn't have a set policy. Supported resources are: -
  /// Reservations - ReservationAssignments To call this method, you must have
  /// the following Google IAM permissions: -
  /// `bigqueryreservation.reservations.getIamPolicy` to get policies on
  /// reservations.
  ///
  /// Request parameters:
  ///
  /// [resource] - REQUIRED: The resource for which the policy is being
  /// requested. See
  /// [Resource names](https://cloud.google.com/apis/design/resource_names) for
  /// the appropriate value for this field.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/reservations/\[^/\]+$`.
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
      if (options_requestedPolicyVersion != null)
        'options.requestedPolicyVersion': ['${options_requestedPolicyVersion}'],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$resource') + ':getIamPolicy';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return Policy.fromJson(response_ as core.Map<core.String, core.dynamic>);
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
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Updates an existing reservation resource.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Identifier. The resource name of the reservation, e.g., `projects
  /// / * /locations / * /reservations/team1-prod`. The reservation_id must only
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
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Sets an access control policy for a resource.
  ///
  /// Replaces any existing policy. Supported resources are: - Reservations To
  /// call this method, you must have the following Google IAM permissions: -
  /// `bigqueryreservation.reservations.setIamPolicy` to set policies on
  /// reservations.
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
  /// `^projects/\[^/\]+/locations/\[^/\]+/reservations/\[^/\]+$`.
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
      if ($fields != null) 'fields': [$fields],
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

  /// Gets your permissions on a resource.
  ///
  /// Returns an empty set of permissions if the resource doesn't exist.
  /// Supported resources are: - Reservations No Google IAM permissions are
  /// required to call this method.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [resource] - REQUIRED: The resource for which the policy detail is being
  /// requested. See
  /// [Resource names](https://cloud.google.com/apis/design/resource_names) for
  /// the appropriate value for this field.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/reservations/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [TestIamPermissionsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<TestIamPermissionsResponse> testIamPermissions(
    TestIamPermissionsRequest request,
    core.String resource, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1/' + core.Uri.encodeFull('$resource') + ':testIamPermissions';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return TestIamPermissionsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
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
      response_ as core.Map<core.String, core.dynamic>,
    );
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
  async.Future<Empty> delete(core.String name, {core.String? $fields}) async {
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

  /// Gets the access control policy for a resource.
  ///
  /// May return: * A`NOT_FOUND` error if the resource doesn't exist or you
  /// don't have the permission to view it. * An empty policy if the resource
  /// exists but doesn't have a set policy. Supported resources are: -
  /// Reservations - ReservationAssignments To call this method, you must have
  /// the following Google IAM permissions: -
  /// `bigqueryreservation.reservations.getIamPolicy` to get policies on
  /// reservations.
  ///
  /// Request parameters:
  ///
  /// [resource] - REQUIRED: The resource for which the policy is being
  /// requested. See
  /// [Resource names](https://cloud.google.com/apis/design/resource_names) for
  /// the appropriate value for this field.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/reservations/\[^/\]+/assignments/\[^/\]+$`.
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
      if (options_requestedPolicyVersion != null)
        'options.requestedPolicyVersion': ['${options_requestedPolicyVersion}'],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$resource') + ':getIamPolicy';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return Policy.fromJson(response_ as core.Map<core.String, core.dynamic>);
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
      response_ as core.Map<core.String, core.dynamic>,
    );
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
      response_ as core.Map<core.String, core.dynamic>,
    );
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
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Sets an access control policy for a resource.
  ///
  /// Replaces any existing policy. Supported resources are: - Reservations To
  /// call this method, you must have the following Google IAM permissions: -
  /// `bigqueryreservation.reservations.setIamPolicy` to set policies on
  /// reservations.
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
  /// `^projects/\[^/\]+/locations/\[^/\]+/reservations/\[^/\]+/assignments/\[^/\]+$`.
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
      if ($fields != null) 'fields': [$fields],
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

  /// Gets your permissions on a resource.
  ///
  /// Returns an empty set of permissions if the resource doesn't exist.
  /// Supported resources are: - Reservations No Google IAM permissions are
  /// required to call this method.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [resource] - REQUIRED: The resource for which the policy detail is being
  /// requested. See
  /// [Resource names](https://cloud.google.com/apis/design/resource_names) for
  /// the appropriate value for this field.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/reservations/\[^/\]+/assignments/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [TestIamPermissionsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<TestIamPermissionsResponse> testIamPermissions(
    TestIamPermissionsRequest request,
    core.String resource, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1/' + core.Uri.encodeFull('$resource') + ':testIamPermissions';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return TestIamPermissionsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

/// An assignment allows a project to submit jobs of a certain type using slots
/// from the specified reservation.
class Assignment {
  /// The resource which will use the reservation.
  ///
  /// E.g. `projects/myproject`, `folders/123`, or `organizations/456`.
  ///
  /// Optional.
  core.String? assignee;

  /// This field controls if "Gemini in BigQuery"
  /// (https://cloud.google.com/gemini/docs/bigquery/overview) features should
  /// be enabled for this reservation assignment, which is not on by default.
  ///
  /// "Gemini in BigQuery" has a distinct compliance posture from BigQuery. If
  /// this field is set to true, the assignment job type is QUERY, and the
  /// parent reservation edition is ENTERPRISE_PLUS, then the assignment will
  /// give the grantee project/organization access to "Gemini in BigQuery"
  /// features.
  ///
  /// Optional.
  core.bool? enableGeminiInBigquery;

  /// Which type of jobs will use the reservation.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "JOB_TYPE_UNSPECIFIED" : Invalid type. Requests with this value will be
  /// rejected with error code `google.rpc.Code.INVALID_ARGUMENT`.
  /// - "PIPELINE" : Pipeline (load/export) jobs from the project will use the
  /// reservation.
  /// - "QUERY" : Query jobs from the project will use the reservation.
  /// - "ML_EXTERNAL" : BigQuery ML jobs that use services external to BigQuery
  /// for model training. These jobs will not utilize idle slots from other
  /// reservations.
  /// - "BACKGROUND" : Background jobs that BigQuery runs for the customers in
  /// the background.
  /// - "CONTINUOUS" : Continuous SQL jobs will use this reservation.
  /// Reservations with continuous assignments cannot be mixed with
  /// non-continuous assignments.
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
    this.enableGeminiInBigquery,
    this.jobType,
    this.name,
    this.state,
  });

  Assignment.fromJson(core.Map json_)
    : this(
        assignee: json_['assignee'] as core.String?,
        enableGeminiInBigquery: json_['enableGeminiInBigquery'] as core.bool?,
        jobType: json_['jobType'] as core.String?,
        name: json_['name'] as core.String?,
        state: json_['state'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (assignee != null) 'assignee': assignee!,
    if (enableGeminiInBigquery != null)
      'enableGeminiInBigquery': enableGeminiInBigquery!,
    if (jobType != null) 'jobType': jobType!,
    if (name != null) 'name': name!,
    if (state != null) 'state': state!,
  };
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
        auditLogConfigs:
            (json_['auditLogConfigs'] as core.List?)
                ?.map(
                  (value) => AuditLogConfig.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        service: json_['service'] as core.String?,
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
typedef AuditLogConfig = $AuditLogConfig00;

/// Auto scaling settings.
class Autoscale {
  /// The slot capacity added to this reservation when autoscale happens.
  ///
  /// Will be between \[0, max_slots\]. Note: after users reduce max_slots, it
  /// may take a while before it can be propagated, so current_slots may stay in
  /// the original value and could be larger than max_slots for that brief
  /// period (less than one minute)
  ///
  /// Output only.
  core.String? currentSlots;

  /// Number of slots to be scaled when needed.
  ///
  /// Optional.
  core.String? maxSlots;

  Autoscale({this.currentSlots, this.maxSlots});

  Autoscale.fromJson(core.Map json_)
    : this(
        currentSlots: json_['currentSlots'] as core.String?,
        maxSlots: json_['maxSlots'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (currentSlots != null) 'currentSlots': currentSlots!,
    if (maxSlots != null) 'maxSlots': maxSlots!,
  };
}

/// Represents a BI Reservation.
class BiReservation {
  /// Identifier.
  ///
  /// The resource name of the singleton BI reservation. Reservation names have
  /// the form `projects/{project_id}/locations/{location_id}/biReservation`.
  core.String? name;

  /// Preferred tables to use BI capacity for.
  ///
  /// Optional.
  core.List<TableReference>? preferredTables;

  /// Size of a reservation, in bytes.
  ///
  /// Optional.
  core.String? size;

  /// The last update timestamp of a reservation.
  ///
  /// Output only.
  core.String? updateTime;

  BiReservation({this.name, this.preferredTables, this.size, this.updateTime});

  BiReservation.fromJson(core.Map json_)
    : this(
        name: json_['name'] as core.String?,
        preferredTables:
            (json_['preferredTables'] as core.List?)
                ?.map(
                  (value) => TableReference.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        size: json_['size'] as core.String?,
        updateTime: json_['updateTime'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (name != null) 'name': name!,
    if (preferredTables != null) 'preferredTables': preferredTables!,
    if (size != null) 'size': size!,
    if (updateTime != null) 'updateTime': updateTime!,
  };
}

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
        condition:
            json_.containsKey('condition')
                ? Expr.fromJson(
                  json_['condition'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        members:
            (json_['members'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        role: json_['role'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (condition != null) 'condition': condition!,
    if (members != null) 'members': members!,
    if (role != null) 'role': role!,
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
  /// It is applicable only for ACTIVE capacity commitments. Note after renewal,
  /// commitment_end_time is the time the renewed commitment expires. So itwould
  /// be at a time after commitment_start_time + committed period, because we
  /// don't change commitment_start_time ,
  ///
  /// Output only.
  core.String? commitmentEndTime;

  /// The start of the current commitment period.
  ///
  /// It is applicable only for ACTIVE capacity commitments. Note after the
  /// commitment is renewed, commitment_start_time won't be changed. It refers
  /// to the start time of the original commitment.
  ///
  /// Output only.
  core.String? commitmentStartTime;

  /// Edition of the capacity commitment.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "EDITION_UNSPECIFIED" : Default value, which will be treated as
  /// ENTERPRISE.
  /// - "STANDARD" : Standard edition.
  /// - "ENTERPRISE" : Enterprise edition.
  /// - "ENTERPRISE_PLUS" : Enterprise Plus edition.
  core.String? edition;

  /// For FAILED commitment plan, provides the reason of failure.
  ///
  /// Output only.
  Status? failureStatus;

  /// If true, the commitment is a flat-rate commitment, otherwise, it's an
  /// edition commitment.
  ///
  /// Output only.
  core.bool? isFlatRate;

  /// Applicable only for commitments located within one of the BigQuery
  /// multi-regions (US or EU).
  ///
  /// If set to true, this commitment is placed in the organization's secondary
  /// region which is designated for disaster recovery purposes. If false, this
  /// commitment is placed in the organization's default region. NOTE: this is a
  /// preview feature. Project must be allow-listed in order to set this field.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
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
  ///
  /// Optional.
  /// Possible string values are:
  /// - "COMMITMENT_PLAN_UNSPECIFIED" : Invalid plan value. Requests with this
  /// value will be rejected with error code `google.rpc.Code.INVALID_ARGUMENT`.
  /// - "FLEX" : Flex commitments have committed period of 1 minute after
  /// becoming ACTIVE. After that, they are not in a committed period anymore
  /// and can be removed any time.
  /// - "FLEX_FLAT_RATE" : Same as FLEX, should only be used if flat-rate
  /// commitments are still available.
  /// - "TRIAL" : Trial commitments have a committed period of 182 days after
  /// becoming ACTIVE. After that, they are converted to a new commitment based
  /// on the `renewal_plan`. Default `renewal_plan` for Trial commitment is Flex
  /// so that it can be deleted right after committed period ends.
  /// - "MONTHLY" : Monthly commitments have a committed period of 30 days after
  /// becoming ACTIVE. After that, they are not in a committed period anymore
  /// and can be removed any time.
  /// - "MONTHLY_FLAT_RATE" : Same as MONTHLY, should only be used if flat-rate
  /// commitments are still available.
  /// - "ANNUAL" : Annual commitments have a committed period of 365 days after
  /// becoming ACTIVE. After that they are converted to a new commitment based
  /// on the renewal_plan.
  /// - "ANNUAL_FLAT_RATE" : Same as ANNUAL, should only be used if flat-rate
  /// commitments are still available.
  /// - "THREE_YEAR" : 3-year commitments have a committed period of 1095(3 *
  /// 365) days after becoming ACTIVE. After that they are converted to a new
  /// commitment based on the renewal_plan.
  /// - "NONE" : Should only be used for `renewal_plan` and is only meaningful
  /// if edition is specified to values other than EDITION_UNSPECIFIED.
  /// Otherwise CreateCapacityCommitmentRequest or
  /// UpdateCapacityCommitmentRequest will be rejected with error code
  /// `google.rpc.Code.INVALID_ARGUMENT`. If the renewal_plan is NONE, capacity
  /// commitment will be removed at the end of its commitment period.
  core.String? plan;

  /// The plan this capacity commitment is converted to after
  /// commitment_end_time passes.
  ///
  /// Once the plan is changed, committed period is extended according to
  /// commitment plan. Only applicable for ANNUAL and TRIAL commitments.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "COMMITMENT_PLAN_UNSPECIFIED" : Invalid plan value. Requests with this
  /// value will be rejected with error code `google.rpc.Code.INVALID_ARGUMENT`.
  /// - "FLEX" : Flex commitments have committed period of 1 minute after
  /// becoming ACTIVE. After that, they are not in a committed period anymore
  /// and can be removed any time.
  /// - "FLEX_FLAT_RATE" : Same as FLEX, should only be used if flat-rate
  /// commitments are still available.
  /// - "TRIAL" : Trial commitments have a committed period of 182 days after
  /// becoming ACTIVE. After that, they are converted to a new commitment based
  /// on the `renewal_plan`. Default `renewal_plan` for Trial commitment is Flex
  /// so that it can be deleted right after committed period ends.
  /// - "MONTHLY" : Monthly commitments have a committed period of 30 days after
  /// becoming ACTIVE. After that, they are not in a committed period anymore
  /// and can be removed any time.
  /// - "MONTHLY_FLAT_RATE" : Same as MONTHLY, should only be used if flat-rate
  /// commitments are still available.
  /// - "ANNUAL" : Annual commitments have a committed period of 365 days after
  /// becoming ACTIVE. After that they are converted to a new commitment based
  /// on the renewal_plan.
  /// - "ANNUAL_FLAT_RATE" : Same as ANNUAL, should only be used if flat-rate
  /// commitments are still available.
  /// - "THREE_YEAR" : 3-year commitments have a committed period of 1095(3 *
  /// 365) days after becoming ACTIVE. After that they are converted to a new
  /// commitment based on the renewal_plan.
  /// - "NONE" : Should only be used for `renewal_plan` and is only meaningful
  /// if edition is specified to values other than EDITION_UNSPECIFIED.
  /// Otherwise CreateCapacityCommitmentRequest or
  /// UpdateCapacityCommitmentRequest will be rejected with error code
  /// `google.rpc.Code.INVALID_ARGUMENT`. If the renewal_plan is NONE, capacity
  /// commitment will be removed at the end of its commitment period.
  core.String? renewalPlan;

  /// Number of slots in this commitment.
  ///
  /// Optional.
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
    this.edition,
    this.failureStatus,
    this.isFlatRate,
    this.multiRegionAuxiliary,
    this.name,
    this.plan,
    this.renewalPlan,
    this.slotCount,
    this.state,
  });

  CapacityCommitment.fromJson(core.Map json_)
    : this(
        commitmentEndTime: json_['commitmentEndTime'] as core.String?,
        commitmentStartTime: json_['commitmentStartTime'] as core.String?,
        edition: json_['edition'] as core.String?,
        failureStatus:
            json_.containsKey('failureStatus')
                ? Status.fromJson(
                  json_['failureStatus'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        isFlatRate: json_['isFlatRate'] as core.bool?,
        multiRegionAuxiliary: json_['multiRegionAuxiliary'] as core.bool?,
        name: json_['name'] as core.String?,
        plan: json_['plan'] as core.String?,
        renewalPlan: json_['renewalPlan'] as core.String?,
        slotCount: json_['slotCount'] as core.String?,
        state: json_['state'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (commitmentEndTime != null) 'commitmentEndTime': commitmentEndTime!,
    if (commitmentStartTime != null)
      'commitmentStartTime': commitmentStartTime!,
    if (edition != null) 'edition': edition!,
    if (failureStatus != null) 'failureStatus': failureStatus!,
    if (isFlatRate != null) 'isFlatRate': isFlatRate!,
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

/// The request for ReservationService.FailoverReservation.
class FailoverReservationRequest {
  /// failover mode for the failover operation.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "FAILOVER_MODE_UNSPECIFIED" : Invalid value.
  /// - "SOFT" : When customers initiate a soft failover, BigQuery will wait
  /// until all committed writes are replicated to the secondary.
  /// - "HARD" : When customers initiate a hard failover, BigQuery will not wait
  /// until all committed writes are replicated to the secondary. There can be
  /// data loss for hard failover.
  core.String? failoverMode;

  FailoverReservationRequest({this.failoverMode});

  FailoverReservationRequest.fromJson(core.Map json_)
    : this(failoverMode: json_['failoverMode'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() => {
    if (failoverMode != null) 'failoverMode': failoverMode!,
  };
}

/// The response for ReservationService.ListAssignments.
class ListAssignmentsResponse {
  /// List of assignments visible to the user.
  core.List<Assignment>? assignments;

  /// Token to retrieve the next page of results, or empty if there are no more
  /// results in the list.
  core.String? nextPageToken;

  ListAssignmentsResponse({this.assignments, this.nextPageToken});

  ListAssignmentsResponse.fromJson(core.Map json_)
    : this(
        assignments:
            (json_['assignments'] as core.List?)
                ?.map(
                  (value) => Assignment.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        nextPageToken: json_['nextPageToken'] as core.String?,
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
        capacityCommitments:
            (json_['capacityCommitments'] as core.List?)
                ?.map(
                  (value) => CapacityCommitment.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        nextPageToken: json_['nextPageToken'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (capacityCommitments != null)
      'capacityCommitments': capacityCommitments!,
    if (nextPageToken != null) 'nextPageToken': nextPageToken!,
  };
}

/// The response for ReservationService.ListReservationGroups.
class ListReservationGroupsResponse {
  /// Token to retrieve the next page of results, or empty if there are no more
  /// results in the list.
  core.String? nextPageToken;

  /// List of reservations visible to the user.
  core.List<ReservationGroup>? reservationGroups;

  ListReservationGroupsResponse({this.nextPageToken, this.reservationGroups});

  ListReservationGroupsResponse.fromJson(core.Map json_)
    : this(
        nextPageToken: json_['nextPageToken'] as core.String?,
        reservationGroups:
            (json_['reservationGroups'] as core.List?)
                ?.map(
                  (value) => ReservationGroup.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (nextPageToken != null) 'nextPageToken': nextPageToken!,
    if (reservationGroups != null) 'reservationGroups': reservationGroups!,
  };
}

/// The response for ReservationService.ListReservations.
class ListReservationsResponse {
  /// Token to retrieve the next page of results, or empty if there are no more
  /// results in the list.
  core.String? nextPageToken;

  /// List of reservations visible to the user.
  core.List<Reservation>? reservations;

  ListReservationsResponse({this.nextPageToken, this.reservations});

  ListReservationsResponse.fromJson(core.Map json_)
    : this(
        nextPageToken: json_['nextPageToken'] as core.String?,
        reservations:
            (json_['reservations'] as core.List?)
                ?.map(
                  (value) => Reservation.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (nextPageToken != null) 'nextPageToken': nextPageToken!,
    if (reservations != null) 'reservations': reservations!,
  };
}

/// The request for ReservationService.MergeCapacityCommitments.
class MergeCapacityCommitmentsRequest {
  /// The optional resulting capacity commitment ID.
  ///
  /// Capacity commitment name will be generated automatically if this field is
  /// empty. This field must only contain lower case alphanumeric characters or
  /// dashes. The first and last character cannot be a dash. Max length is 64
  /// characters.
  ///
  /// Optional.
  core.String? capacityCommitmentId;

  /// Ids of capacity commitments to merge.
  ///
  /// These capacity commitments must exist under admin project and location
  /// specified in the parent. ID is the last portion of capacity commitment
  /// name e.g., 'abc' for
  /// projects/myproject/locations/US/capacityCommitments/abc
  core.List<core.String>? capacityCommitmentIds;

  MergeCapacityCommitmentsRequest({
    this.capacityCommitmentId,
    this.capacityCommitmentIds,
  });

  MergeCapacityCommitmentsRequest.fromJson(core.Map json_)
    : this(
        capacityCommitmentId: json_['capacityCommitmentId'] as core.String?,
        capacityCommitmentIds:
            (json_['capacityCommitmentIds'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (capacityCommitmentId != null)
      'capacityCommitmentId': capacityCommitmentId!,
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
  /// The optional assignment ID.
  ///
  /// A new assignment name is generated if this field is empty. This field can
  /// contain only lowercase alphanumeric characters or dashes. Max length is 64
  /// characters.
  core.String? assignmentId;

  /// The new reservation ID, e.g.:
  /// `projects/myotherproject/locations/US/reservations/team2-prod`
  core.String? destinationId;

  MoveAssignmentRequest({this.assignmentId, this.destinationId});

  MoveAssignmentRequest.fromJson(core.Map json_)
    : this(
        assignmentId: json_['assignmentId'] as core.String?,
        destinationId: json_['destinationId'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (assignmentId != null) 'assignmentId': assignmentId!,
    if (destinationId != null) 'destinationId': destinationId!,
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
        auditConfigs:
            (json_['auditConfigs'] as core.List?)
                ?.map(
                  (value) => AuditConfig.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        bindings:
            (json_['bindings'] as core.List?)
                ?.map(
                  (value) => Binding.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        etag: json_['etag'] as core.String?,
        version: json_['version'] as core.int?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (auditConfigs != null) 'auditConfigs': auditConfigs!,
    if (bindings != null) 'bindings': bindings!,
    if (etag != null) 'etag': etag!,
    if (version != null) 'version': version!,
  };
}

/// Disaster Recovery(DR) replication status of the reservation.
class ReplicationStatus {
  /// The last error encountered while trying to replicate changes from the
  /// primary to the secondary.
  ///
  /// This field is only available if the replication has not succeeded since.
  ///
  /// Output only.
  Status? error;

  /// The time at which the last error was encountered while trying to replicate
  /// changes from the primary to the secondary.
  ///
  /// This field is only available if the replication has not succeeded since.
  ///
  /// Output only.
  core.String? lastErrorTime;

  /// A timestamp corresponding to the last change on the primary that was
  /// successfully replicated to the secondary.
  ///
  /// Output only.
  core.String? lastReplicationTime;

  /// The time at which a soft failover for the reservation and its associated
  /// datasets was initiated.
  ///
  /// After this field is set, all subsequent changes to the reservation will be
  /// rejected unless a hard failover overrides this operation. This field will
  /// be cleared once the failover is complete.
  ///
  /// Output only.
  core.String? softFailoverStartTime;

  ReplicationStatus({
    this.error,
    this.lastErrorTime,
    this.lastReplicationTime,
    this.softFailoverStartTime,
  });

  ReplicationStatus.fromJson(core.Map json_)
    : this(
        error:
            json_.containsKey('error')
                ? Status.fromJson(
                  json_['error'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        lastErrorTime: json_['lastErrorTime'] as core.String?,
        lastReplicationTime: json_['lastReplicationTime'] as core.String?,
        softFailoverStartTime: json_['softFailoverStartTime'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (error != null) 'error': error!,
    if (lastErrorTime != null) 'lastErrorTime': lastErrorTime!,
    if (lastReplicationTime != null)
      'lastReplicationTime': lastReplicationTime!,
    if (softFailoverStartTime != null)
      'softFailoverStartTime': softFailoverStartTime!,
  };
}

/// A reservation is a mechanism used to guarantee slots to users.
class Reservation {
  /// The configuration parameters for the auto scaling feature.
  ///
  /// Optional.
  Autoscale? autoscale;

  /// Job concurrency target which sets a soft upper bound on the number of jobs
  /// that can run concurrently in this reservation.
  ///
  /// This is a soft target due to asynchronous nature of the system and various
  /// optimizations for small queries. Default value is 0 which means that
  /// concurrency target will be automatically computed by the system. NOTE:
  /// this field is exposed as target job concurrency in the Information Schema,
  /// DDL and BigQuery CLI.
  ///
  /// Optional.
  core.String? concurrency;

  /// Creation time of the reservation.
  ///
  /// Output only.
  core.String? creationTime;

  /// Edition of the reservation.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "EDITION_UNSPECIFIED" : Default value, which will be treated as
  /// ENTERPRISE.
  /// - "STANDARD" : Standard edition.
  /// - "ENTERPRISE" : Enterprise edition.
  /// - "ENTERPRISE_PLUS" : Enterprise Plus edition.
  core.String? edition;

  /// If false, any query or pipeline job using this reservation will use idle
  /// slots from other reservations within the same admin project.
  ///
  /// If true, a query or pipeline job using this reservation will execute with
  /// the slot capacity specified in the slot_capacity field at most.
  ///
  /// Optional.
  core.bool? ignoreIdleSlots;

  /// The labels associated with this reservation.
  ///
  /// You can use these to organize and group your reservations. You can set
  /// this property when you create or update a reservation.
  ///
  /// Optional.
  core.Map<core.String, core.String>? labels;

  /// The overall max slots for the reservation, covering slot_capacity
  /// (baseline), idle slots (if ignore_idle_slots is false) and scaled slots.
  ///
  /// If present, the reservation won't use more than the specified number of
  /// slots, even if there is demand and supply (from idle slots). NOTE: capping
  /// a reservation's idle slot usage is best effort and its usage may exceed
  /// the max_slots value. However, in terms of autoscale.current_slots (which
  /// accounts for the additional added slots), it will never exceed the
  /// max_slots - baseline. This field must be set together with the
  /// scaling_mode enum value, otherwise the request will be rejected with error
  /// code `google.rpc.Code.INVALID_ARGUMENT`. If the max_slots and scaling_mode
  /// are set, the autoscale or autoscale.max_slots field must be unset.
  /// Otherwise the request will be rejected with error code
  /// `google.rpc.Code.INVALID_ARGUMENT`. However, the autoscale field may still
  /// be in the output. The autopscale.max_slots will always show as 0 and the
  /// autoscaler.current_slots will represent the current slots from autoscaler
  /// excluding idle slots. For example, if the max_slots is 1000 and
  /// scaling_mode is AUTOSCALE_ONLY, then in the output, the
  /// autoscaler.max_slots will be 0 and the autoscaler.current_slots may be any
  /// value between 0 and 1000. If the max_slots is 1000, scaling_mode is
  /// ALL_SLOTS, the baseline is 100 and idle slots usage is 200, then in the
  /// output, the autoscaler.max_slots will be 0 and the
  /// autoscaler.current_slots will not be higher than 700. If the max_slots is
  /// 1000, scaling_mode is IDLE_SLOTS_ONLY, then in the output, the autoscaler
  /// field will be null. If the max_slots and scaling_mode are set, then the
  /// ignore_idle_slots field must be aligned with the scaling_mode enum
  /// value.(See details in ScalingMode comments). Otherwise the request will be
  /// rejected with error code `google.rpc.Code.INVALID_ARGUMENT`. Please note,
  /// the max_slots is for user to manage the part of slots greater than the
  /// baseline. Therefore, we don't allow users to set max_slots smaller or
  /// equal to the baseline as it will not be meaningful. If the field is
  /// present and slot_capacity\>=max_slots, requests will be rejected with
  /// error code `google.rpc.Code.INVALID_ARGUMENT`. Please note that if
  /// max_slots is set to 0, we will treat it as unset. Customers can set
  /// max_slots to 0 and set scaling_mode to SCALING_MODE_UNSPECIFIED to disable
  /// the max_slots feature.
  ///
  /// Optional.
  core.String? maxSlots;

  /// Applicable only for reservations located within one of the BigQuery
  /// multi-regions (US or EU).
  ///
  /// If set to true, this reservation is placed in the organization's secondary
  /// region which is designated for disaster recovery purposes. If false, this
  /// reservation is placed in the organization's default region. NOTE: this is
  /// a preview feature. Project must be allow-listed in order to set this
  /// field.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  core.bool? multiRegionAuxiliary;

  /// Identifier.
  ///
  /// The resource name of the reservation, e.g., `projects / * /locations / *
  /// /reservations/team1-prod`. The reservation_id must only contain lower case
  /// alphanumeric characters or dashes. It must start with a letter and must
  /// not end with a dash. Its maximum length is 64 characters.
  core.String? name;

  /// The location where the reservation was originally created.
  ///
  /// This is set only during the failover reservation's creation. All billing
  /// charges for the failover reservation will be applied to this location.
  ///
  /// Output only.
  core.String? originalPrimaryLocation;

  /// The current location of the reservation's primary replica.
  ///
  /// This field is only set for reservations using the managed disaster
  /// recovery feature.
  ///
  /// Output only.
  core.String? primaryLocation;

  /// The Disaster Recovery(DR) replication status of the reservation.
  ///
  /// This is only available for the primary replicas of DR/failover
  /// reservations and provides information about the both the staleness of the
  /// secondary and the last error encountered while trying to replicate changes
  /// from the primary to the secondary. If this field is blank, it means that
  /// the reservation is either not a DR reservation or the reservation is a DR
  /// secondary or that any replication operations on the reservation have
  /// succeeded.
  ///
  /// Output only.
  ReplicationStatus? replicationStatus;

  /// The reservation group that this reservation belongs to.
  ///
  /// You can set this property when you create or update a reservation.
  /// Reservations do not need to belong to a reservation group. Format:
  /// projects/{project}/locations/{location}/reservationGroups/{reservation_group}
  /// or just {reservation_group}
  ///
  /// Optional.
  core.String? reservationGroup;

  /// The scaling mode for the reservation.
  ///
  /// If the field is present but max_slots is not present, requests will be
  /// rejected with error code `google.rpc.Code.INVALID_ARGUMENT`.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "SCALING_MODE_UNSPECIFIED" : Default value of ScalingMode.
  /// - "AUTOSCALE_ONLY" : The reservation will scale up only using slots from
  /// autoscaling. It will not use any idle slots even if there may be some
  /// available. The upper limit that autoscaling can scale up to will be
  /// max_slots - baseline. For example, if max_slots is 1000, baseline is 200
  /// and customer sets ScalingMode to AUTOSCALE_ONLY, then autoscalerg will
  /// scale up to 800 slots and no idle slots will be used. Please note, in this
  /// mode, the ignore_idle_slots field must be set to true. Otherwise the
  /// request will be rejected with error code
  /// `google.rpc.Code.INVALID_ARGUMENT`.
  /// - "IDLE_SLOTS_ONLY" : The reservation will scale up using only idle slots
  /// contributed by other reservations or from unassigned commitments. If no
  /// idle slots are available it will not scale up further. If the idle slots
  /// which it is using are reclaimed by the contributing reservation(s) it may
  /// be forced to scale down. The max idle slots the reservation can be
  /// max_slots - baseline capacity. For example, if max_slots is 1000, baseline
  /// is 200 and customer sets ScalingMode to IDLE_SLOTS_ONLY, 1. if there are
  /// 1000 idle slots available in other reservations, the reservation will
  /// scale up to 1000 slots with 200 baseline and 800 idle slots. 2. if there
  /// are 500 idle slots available in other reservations, the reservation will
  /// scale up to 700 slots with 200 baseline and 300 idle slots. Please note,
  /// in this mode, the reservation might not be able to scale up to max_slots.
  /// Please note, in this mode, the ignore_idle_slots field must be set to
  /// false. Otherwise the request will be rejected with error code
  /// `google.rpc.Code.INVALID_ARGUMENT`.
  /// - "ALL_SLOTS" : The reservation will scale up using all slots available to
  /// it. It will use idle slots contributed by other reservations or from
  /// unassigned commitments first. If no idle slots are available it will scale
  /// up using autoscaling. For example, if max_slots is 1000, baseline is 200
  /// and customer sets ScalingMode to ALL_SLOTS, 1. if there are 800 idle slots
  /// available in other reservations, the reservation will scale up to 1000
  /// slots with 200 baseline and 800 idle slots. 2. if there are 500 idle slots
  /// available in other reservations, the reservation will scale up to 1000
  /// slots with 200 baseline, 500 idle slots and 300 autoscaling slots. 3. if
  /// there are no idle slots available in other reservations, it will scale up
  /// to 1000 slots with 200 baseline and 800 autoscaling slots. Please note, in
  /// this mode, the ignore_idle_slots field must be set to false. Otherwise the
  /// request will be rejected with error code
  /// `google.rpc.Code.INVALID_ARGUMENT`.
  core.String? scalingMode;

  /// The current location of the reservation's secondary replica.
  ///
  /// This field is only set for reservations using the managed disaster
  /// recovery feature. Users can set this in create reservation calls to create
  /// a failover reservation or in update reservation calls to convert a
  /// non-failover reservation to a failover reservation(or vice versa).
  ///
  /// Optional.
  core.String? secondaryLocation;

  /// Baseline slots available to this reservation.
  ///
  /// A slot is a unit of computational power in BigQuery, and serves as the
  /// unit of parallelism. Queries using this reservation might use more slots
  /// during runtime if ignore_idle_slots is set to false, or autoscaling is
  /// enabled. The total slot_capacity of the reservation and its siblings may
  /// exceed the total slot_count of capacity commitments. In that case, the
  /// exceeding slots will be charged with the autoscale SKU. You can increase
  /// the number of baseline slots in a reservation every few minutes. If you
  /// want to decrease your baseline slots, you are limited to once an hour if
  /// you have recently changed your baseline slot capacity and your baseline
  /// slots exceed your committed slots. Otherwise, you can decrease your
  /// baseline slots every few minutes.
  ///
  /// Optional.
  core.String? slotCapacity;

  /// Last update time of the reservation.
  ///
  /// Output only.
  core.String? updateTime;

  Reservation({
    this.autoscale,
    this.concurrency,
    this.creationTime,
    this.edition,
    this.ignoreIdleSlots,
    this.labels,
    this.maxSlots,
    this.multiRegionAuxiliary,
    this.name,
    this.originalPrimaryLocation,
    this.primaryLocation,
    this.replicationStatus,
    this.reservationGroup,
    this.scalingMode,
    this.secondaryLocation,
    this.slotCapacity,
    this.updateTime,
  });

  Reservation.fromJson(core.Map json_)
    : this(
        autoscale:
            json_.containsKey('autoscale')
                ? Autoscale.fromJson(
                  json_['autoscale'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        concurrency: json_['concurrency'] as core.String?,
        creationTime: json_['creationTime'] as core.String?,
        edition: json_['edition'] as core.String?,
        ignoreIdleSlots: json_['ignoreIdleSlots'] as core.bool?,
        labels: (json_['labels'] as core.Map<core.String, core.dynamic>?)?.map(
          (key, value) => core.MapEntry(key, value as core.String),
        ),
        maxSlots: json_['maxSlots'] as core.String?,
        multiRegionAuxiliary: json_['multiRegionAuxiliary'] as core.bool?,
        name: json_['name'] as core.String?,
        originalPrimaryLocation:
            json_['originalPrimaryLocation'] as core.String?,
        primaryLocation: json_['primaryLocation'] as core.String?,
        replicationStatus:
            json_.containsKey('replicationStatus')
                ? ReplicationStatus.fromJson(
                  json_['replicationStatus']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        reservationGroup: json_['reservationGroup'] as core.String?,
        scalingMode: json_['scalingMode'] as core.String?,
        secondaryLocation: json_['secondaryLocation'] as core.String?,
        slotCapacity: json_['slotCapacity'] as core.String?,
        updateTime: json_['updateTime'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (autoscale != null) 'autoscale': autoscale!,
    if (concurrency != null) 'concurrency': concurrency!,
    if (creationTime != null) 'creationTime': creationTime!,
    if (edition != null) 'edition': edition!,
    if (ignoreIdleSlots != null) 'ignoreIdleSlots': ignoreIdleSlots!,
    if (labels != null) 'labels': labels!,
    if (maxSlots != null) 'maxSlots': maxSlots!,
    if (multiRegionAuxiliary != null)
      'multiRegionAuxiliary': multiRegionAuxiliary!,
    if (name != null) 'name': name!,
    if (originalPrimaryLocation != null)
      'originalPrimaryLocation': originalPrimaryLocation!,
    if (primaryLocation != null) 'primaryLocation': primaryLocation!,
    if (replicationStatus != null) 'replicationStatus': replicationStatus!,
    if (reservationGroup != null) 'reservationGroup': reservationGroup!,
    if (scalingMode != null) 'scalingMode': scalingMode!,
    if (secondaryLocation != null) 'secondaryLocation': secondaryLocation!,
    if (slotCapacity != null) 'slotCapacity': slotCapacity!,
    if (updateTime != null) 'updateTime': updateTime!,
  };
}

/// A reservation group is a container for reservations.
class ReservationGroup {
  /// Identifier.
  ///
  /// The resource name of the reservation group, e.g., `projects / * /locations
  /// / * /reservationGroups/team1-prod`. The reservation_group_id must only
  /// contain lower case alphanumeric characters or dashes. It must start with a
  /// letter and must not end with a dash. Its maximum length is 64 characters.
  core.String? name;

  ReservationGroup({this.name});

  ReservationGroup.fromJson(core.Map json_)
    : this(name: json_['name'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() => {
    if (name != null) 'name': name!,
  };
}

/// The response for ReservationService.SearchAllAssignments.
class SearchAllAssignmentsResponse {
  /// List of assignments visible to the user.
  core.List<Assignment>? assignments;

  /// Token to retrieve the next page of results, or empty if there are no more
  /// results in the list.
  core.String? nextPageToken;

  SearchAllAssignmentsResponse({this.assignments, this.nextPageToken});

  SearchAllAssignmentsResponse.fromJson(core.Map json_)
    : this(
        assignments:
            (json_['assignments'] as core.List?)
                ?.map(
                  (value) => Assignment.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        nextPageToken: json_['nextPageToken'] as core.String?,
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

  SearchAssignmentsResponse({this.assignments, this.nextPageToken});

  SearchAssignmentsResponse.fromJson(core.Map json_)
    : this(
        assignments:
            (json_['assignments'] as core.List?)
                ?.map(
                  (value) => Assignment.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        nextPageToken: json_['nextPageToken'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (assignments != null) 'assignments': assignments!,
    if (nextPageToken != null) 'nextPageToken': nextPageToken!,
  };
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
        policy:
            json_.containsKey('policy')
                ? Policy.fromJson(
                  json_['policy'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        updateMask: json_['updateMask'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (policy != null) 'policy': policy!,
    if (updateMask != null) 'updateMask': updateMask!,
  };
}

/// The request for ReservationService.SplitCapacityCommitment.
class SplitCapacityCommitmentRequest {
  /// Number of slots in the capacity commitment after the split.
  core.String? slotCount;

  SplitCapacityCommitmentRequest({this.slotCount});

  SplitCapacityCommitmentRequest.fromJson(core.Map json_)
    : this(slotCount: json_['slotCount'] as core.String?);

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

  SplitCapacityCommitmentResponse({this.first, this.second});

  SplitCapacityCommitmentResponse.fromJson(core.Map json_)
    : this(
        first:
            json_.containsKey('first')
                ? CapacityCommitment.fromJson(
                  json_['first'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        second:
            json_.containsKey('second')
                ? CapacityCommitment.fromJson(
                  json_['second'] as core.Map<core.String, core.dynamic>,
                )
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
typedef Status = $Status00;

/// Fully qualified reference to BigQuery table.
///
/// Internally stored as google.cloud.bi.v1.BqTableReference.
class TableReference {
  /// The ID of the dataset in the above project.
  ///
  /// Optional.
  core.String? datasetId;

  /// The assigned project ID of the project.
  ///
  /// Optional.
  core.String? projectId;

  /// The ID of the table in the above dataset.
  ///
  /// Optional.
  core.String? tableId;

  TableReference({this.datasetId, this.projectId, this.tableId});

  TableReference.fromJson(core.Map json_)
    : this(
        datasetId: json_['datasetId'] as core.String?,
        projectId: json_['projectId'] as core.String?,
        tableId: json_['tableId'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (datasetId != null) 'datasetId': datasetId!,
    if (projectId != null) 'projectId': projectId!,
    if (tableId != null) 'tableId': tableId!,
  };
}

/// Request message for `TestIamPermissions` method.
typedef TestIamPermissionsRequest = $TestIamPermissionsRequest00;

/// Response message for `TestIamPermissions` method.
typedef TestIamPermissionsResponse = $PermissionsResponse;
