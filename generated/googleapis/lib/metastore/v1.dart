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

/// Dataproc Metastore API - v1
///
/// The Dataproc Metastore API is used to manage the lifecycle and configuration
/// of metastore services.
///
/// For more information, see <https://cloud.google.com/dataproc-metastore/docs>
///
/// Create an instance of [DataprocMetastoreApi] to access these resources:
///
/// - [ProjectsResource]
///   - [ProjectsLocationsResource]
///     - [ProjectsLocationsFederationsResource]
///     - [ProjectsLocationsOperationsResource]
///     - [ProjectsLocationsServicesResource]
///       - [ProjectsLocationsServicesBackupsResource]
///       - [ProjectsLocationsServicesDatabasesResource]
///         - [ProjectsLocationsServicesDatabasesTablesResource]
///       - [ProjectsLocationsServicesMetadataImportsResource]
///       - [ProjectsLocationsServicesMigrationExecutionsResource]
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

/// The Dataproc Metastore API is used to manage the lifecycle and configuration
/// of metastore services.
class DataprocMetastoreApi {
  /// See, edit, configure, and delete your Google Cloud data and see the email
  /// address for your Google Account.
  static const cloudPlatformScope =
      'https://www.googleapis.com/auth/cloud-platform';

  final commons.ApiRequester _requester;

  ProjectsResource get projects => ProjectsResource(_requester);

  DataprocMetastoreApi(http.Client client,
      {core.String rootUrl = 'https://metastore.googleapis.com/',
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

  ProjectsLocationsFederationsResource get federations =>
      ProjectsLocationsFederationsResource(_requester);
  ProjectsLocationsOperationsResource get operations =>
      ProjectsLocationsOperationsResource(_requester);
  ProjectsLocationsServicesResource get services =>
      ProjectsLocationsServicesResource(_requester);

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
  async.Future<Location> get(
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
    return Location.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists information about the supported locations for this service.
  ///
  /// Request parameters:
  ///
  /// [name] - The resource that owns the locations collection, if applicable.
  /// Value must have pattern `^projects/\[^/\]+$`.
  ///
  /// [filter] - A filter to narrow down results to a preferred subset. The
  /// filtering language accepts strings like "displayName=tokyo", and is
  /// documented in more detail in AIP-160 (https://google.aip.dev/160).
  ///
  /// [pageSize] - The maximum number of results to return. If not set, the
  /// service selects a default.
  ///
  /// [pageToken] - A page token received from the next_page_token field in the
  /// response. Send that page token to receive the subsequent page.
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

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + '/locations';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListLocationsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsFederationsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsFederationsResource(commons.ApiRequester client)
      : _requester = client;

  /// Creates a metastore federation in a project and location.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The relative resource name of the location in which
  /// to create a federation service, in the following
  /// form:projects/{project_number}/locations/{location_id}.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [federationId] - Required. The ID of the metastore federation, which is
  /// used as the final component of the metastore federation's name.This value
  /// must be between 2 and 63 characters long inclusive, begin with a letter,
  /// end with a letter or number, and consist of alpha-numeric ASCII characters
  /// or hyphens.
  ///
  /// [requestId] - Optional. A request ID. Specify a unique request ID to allow
  /// the server to ignore the request if it has completed. The server will
  /// ignore subsequent requests that provide a duplicate request ID for at
  /// least 60 minutes after the first request.For example, if an initial
  /// request times out, followed by another request with the same request ID,
  /// the server ignores the second request to prevent the creation of duplicate
  /// commitments.The request ID must be a valid UUID
  /// (https://en.wikipedia.org/wiki/Universally_unique_identifier#Format) A
  /// zero UUID (00000000-0000-0000-0000-000000000000) is not supported.
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
    Federation request,
    core.String parent, {
    core.String? federationId,
    core.String? requestId,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (federationId != null) 'federationId': [federationId],
      if (requestId != null) 'requestId': [requestId],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/federations';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Deletes a single federation.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The relative resource name of the metastore federation
  /// to delete, in the following
  /// form:projects/{project_number}/locations/{location_id}/federations/{federation_id}.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/federations/\[^/\]+$`.
  ///
  /// [requestId] - Optional. A request ID. Specify a unique request ID to allow
  /// the server to ignore the request if it has completed. The server will
  /// ignore subsequent requests that provide a duplicate request ID for at
  /// least 60 minutes after the first request.For example, if an initial
  /// request times out, followed by another request with the same request ID,
  /// the server ignores the second request to prevent the creation of duplicate
  /// commitments.The request ID must be a valid UUID
  /// (https://en.wikipedia.org/wiki/Universally_unique_identifier#Format) A
  /// zero UUID (00000000-0000-0000-0000-000000000000) is not supported.
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
    core.String? requestId,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (requestId != null) 'requestId': [requestId],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Gets the details of a single federation.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The relative resource name of the metastore federation
  /// to retrieve, in the following
  /// form:projects/{project_number}/locations/{location_id}/federations/{federation_id}.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/federations/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Federation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Federation> get(
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
    return Federation.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Gets the access control policy for a resource.
  ///
  /// Returns an empty policy if the resource exists and does not have a policy
  /// set.
  ///
  /// Request parameters:
  ///
  /// [resource] - REQUIRED: The resource for which the policy is being
  /// requested. See Resource names
  /// (https://cloud.google.com/apis/design/resource_names) for the appropriate
  /// value for this field.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/federations/\[^/\]+$`.
  ///
  /// [options_requestedPolicyVersion] - Optional. The maximum policy version
  /// that will be used to format the policy.Valid values are 0, 1, and 3.
  /// Requests specifying an invalid value will be rejected.Requests for
  /// policies with any conditional role bindings must specify version 3.
  /// Policies with no conditional role bindings may specify any valid value or
  /// leave the field unset.The policy in the response might use the policy
  /// version that you specified, or it might use a lower policy version. For
  /// example, if you specify version 3, but the policy has no conditional role
  /// bindings, the response uses version 1.To learn which resources support
  /// conditions in their IAM policies, see the IAM documentation
  /// (https://cloud.google.com/iam/help/conditions/resource-policies).
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

  /// Lists federations in a project and location.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The relative resource name of the location of
  /// metastore federations to list, in the following form:
  /// projects/{project_number}/locations/{location_id}.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [filter] - Optional. The filter to apply to list results.
  ///
  /// [orderBy] - Optional. Specify the ordering of results as described in
  /// Sorting Order
  /// (https://cloud.google.com/apis/design/design_patterns#sorting_order). If
  /// not specified, the results will be sorted in the default order.
  ///
  /// [pageSize] - Optional. The maximum number of federations to return. The
  /// response may contain less than the maximum number. If unspecified, no more
  /// than 500 services are returned. The maximum value is 1000; values above
  /// 1000 are changed to 1000.
  ///
  /// [pageToken] - Optional. A page token, received from a previous
  /// ListFederationServices call. Provide this token to retrieve the subsequent
  /// page.To retrieve the first page, supply an empty page token.When
  /// paginating, other parameters provided to ListFederationServices must match
  /// the call that provided the page token.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListFederationsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListFederationsResponse> list(
    core.String parent, {
    core.String? filter,
    core.String? orderBy,
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (filter != null) 'filter': [filter],
      if (orderBy != null) 'orderBy': [orderBy],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/federations';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListFederationsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Updates the fields of a federation.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Immutable. The relative resource name of the federation, of the
  /// form:
  /// projects/{project_number}/locations/{location_id}/federations/{federation_id}\`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/federations/\[^/\]+$`.
  ///
  /// [requestId] - Optional. A request ID. Specify a unique request ID to allow
  /// the server to ignore the request if it has completed. The server will
  /// ignore subsequent requests that provide a duplicate request ID for at
  /// least 60 minutes after the first request.For example, if an initial
  /// request times out, followed by another request with the same request ID,
  /// the server ignores the second request to prevent the creation of duplicate
  /// commitments.The request ID must be a valid UUID
  /// (https://en.wikipedia.org/wiki/Universally_unique_identifier#Format) A
  /// zero UUID (00000000-0000-0000-0000-000000000000) is not supported.
  ///
  /// [updateMask] - Required. A field mask used to specify the fields to be
  /// overwritten in the metastore federation resource by the update. Fields
  /// specified in the update_mask are relative to the resource (not to the full
  /// request). A field is overwritten if it is in the mask.
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
    Federation request,
    core.String name, {
    core.String? requestId,
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (requestId != null) 'requestId': [requestId],
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
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Sets the access control policy on the specified resource.
  ///
  /// Replaces any existing policy.Can return NOT_FOUND, INVALID_ARGUMENT, and
  /// PERMISSION_DENIED errors.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [resource] - REQUIRED: The resource for which the policy is being
  /// specified. See Resource names
  /// (https://cloud.google.com/apis/design/resource_names) for the appropriate
  /// value for this field.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/federations/\[^/\]+$`.
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

  /// Returns permissions that a caller has on the specified resource.
  ///
  /// If the resource does not exist, this will return an empty set of
  /// permissions, not a NOT_FOUND error.Note: This operation is designed to be
  /// used for building permission-aware UIs and command-line tools, not for
  /// authorization checking. This operation may "fail open" without warning.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [resource] - REQUIRED: The resource for which the policy detail is being
  /// requested. See Resource names
  /// (https://cloud.google.com/apis/design/resource_names) for the appropriate
  /// value for this field.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/federations/\[^/\]+$`.
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
        response_ as core.Map<core.String, core.dynamic>);
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
  /// google.rpc.Code.UNIMPLEMENTED. Clients can use Operations.GetOperation or
  /// other methods to check whether the cancellation succeeded or whether the
  /// operation completed despite cancellation. On successful cancellation, the
  /// operation is not deleted; instead, it becomes an operation with an
  /// Operation.error value with a google.rpc.Status.code of 1, corresponding to
  /// Code.CANCELLED.
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

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':cancel';

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
  /// support this method, it returns google.rpc.Code.UNIMPLEMENTED.
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
  async.Future<Operation> get(
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
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists operations that match the specified filter in the request.
  ///
  /// If the server doesn't support this method, it returns UNIMPLEMENTED.
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

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + '/operations';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListOperationsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsServicesResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsServicesBackupsResource get backups =>
      ProjectsLocationsServicesBackupsResource(_requester);
  ProjectsLocationsServicesDatabasesResource get databases =>
      ProjectsLocationsServicesDatabasesResource(_requester);
  ProjectsLocationsServicesMetadataImportsResource get metadataImports =>
      ProjectsLocationsServicesMetadataImportsResource(_requester);
  ProjectsLocationsServicesMigrationExecutionsResource
      get migrationExecutions =>
          ProjectsLocationsServicesMigrationExecutionsResource(_requester);

  ProjectsLocationsServicesResource(commons.ApiRequester client)
      : _requester = client;

  /// Alter metadata resource location.
  ///
  /// The metadata resource can be a database, table, or partition. This
  /// functionality only updates the parent directory for the respective
  /// metadata resource and does not transfer any existing data to the new
  /// location.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [service] - Required. The relative resource name of the metastore service
  /// to mutate metadata, in the following
  /// format:projects/{project_id}/locations/{location_id}/services/{service_id}.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/services/\[^/\]+$`.
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
  async.Future<Operation> alterLocation(
    AlterMetadataResourceLocationRequest request,
    core.String service, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$service') + ':alterLocation';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Alter metadata table properties.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [service] - Required. The relative resource name of the Dataproc Metastore
  /// service that's being used to mutate metadata table properties, in the
  /// following
  /// format:projects/{project_id}/locations/{location_id}/services/{service_id}.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/services/\[^/\]+$`.
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
  async.Future<Operation> alterTableProperties(
    AlterTablePropertiesRequest request,
    core.String service, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1/' + core.Uri.encodeFull('$service') + ':alterTableProperties';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Cancels the ongoing Managed Migration process.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [service] - Required. The relative resource name of the metastore service
  /// to cancel the ongoing migration to, in the following
  /// format:projects/{project_id}/locations/{location_id}/services/{service_id}.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/services/\[^/\]+$`.
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
  async.Future<Operation> cancelMigration(
    CancelMigrationRequest request,
    core.String service, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$service') + ':cancelMigration';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Completes the managed migration process.
  ///
  /// The Dataproc Metastore service will switch to using its own backend
  /// database after successful migration.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [service] - Required. The relative resource name of the metastore service
  /// to complete the migration to, in the following
  /// format:projects/{project_id}/locations/{location_id}/services/{service_id}.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/services/\[^/\]+$`.
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
  async.Future<Operation> completeMigration(
    CompleteMigrationRequest request,
    core.String service, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$service') + ':completeMigration';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Creates a metastore service in a project and location.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The relative resource name of the location in which
  /// to create a metastore service, in the following
  /// form:projects/{project_number}/locations/{location_id}.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [requestId] - Optional. A request ID. Specify a unique request ID to allow
  /// the server to ignore the request if it has completed. The server will
  /// ignore subsequent requests that provide a duplicate request ID for at
  /// least 60 minutes after the first request.For example, if an initial
  /// request times out, followed by another request with the same request ID,
  /// the server ignores the second request to prevent the creation of duplicate
  /// commitments.The request ID must be a valid UUID
  /// (https://en.wikipedia.org/wiki/Universally_unique_identifier#Format) A
  /// zero UUID (00000000-0000-0000-0000-000000000000) is not supported.
  ///
  /// [serviceId] - Required. The ID of the metastore service, which is used as
  /// the final component of the metastore service's name.This value must be
  /// between 2 and 63 characters long inclusive, begin with a letter, end with
  /// a letter or number, and consist of alpha-numeric ASCII characters or
  /// hyphens.
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
    Service request,
    core.String parent, {
    core.String? requestId,
    core.String? serviceId,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (requestId != null) 'requestId': [requestId],
      if (serviceId != null) 'serviceId': [serviceId],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/services';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Deletes a single service.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The relative resource name of the metastore service to
  /// delete, in the following
  /// form:projects/{project_number}/locations/{location_id}/services/{service_id}.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/services/\[^/\]+$`.
  ///
  /// [requestId] - Optional. A request ID. Specify a unique request ID to allow
  /// the server to ignore the request if it has completed. The server will
  /// ignore subsequent requests that provide a duplicate request ID for at
  /// least 60 minutes after the first request.For example, if an initial
  /// request times out, followed by another request with the same request ID,
  /// the server ignores the second request to prevent the creation of duplicate
  /// commitments.The request ID must be a valid UUID
  /// (https://en.wikipedia.org/wiki/Universally_unique_identifier#Format) A
  /// zero UUID (00000000-0000-0000-0000-000000000000) is not supported.
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
    core.String? requestId,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (requestId != null) 'requestId': [requestId],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Exports metadata from a service.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [service] - Required. The relative resource name of the metastore service
  /// to run export, in the following
  /// form:projects/{project_id}/locations/{location_id}/services/{service_id}.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/services/\[^/\]+$`.
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
  async.Future<Operation> exportMetadata(
    ExportMetadataRequest request,
    core.String service, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$service') + ':exportMetadata';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Gets the details of a single service.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The relative resource name of the metastore service to
  /// retrieve, in the following
  /// form:projects/{project_number}/locations/{location_id}/services/{service_id}.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/services/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Service].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Service> get(
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
    return Service.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Gets the access control policy for a resource.
  ///
  /// Returns an empty policy if the resource exists and does not have a policy
  /// set.
  ///
  /// Request parameters:
  ///
  /// [resource] - REQUIRED: The resource for which the policy is being
  /// requested. See Resource names
  /// (https://cloud.google.com/apis/design/resource_names) for the appropriate
  /// value for this field.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/services/\[^/\]+$`.
  ///
  /// [options_requestedPolicyVersion] - Optional. The maximum policy version
  /// that will be used to format the policy.Valid values are 0, 1, and 3.
  /// Requests specifying an invalid value will be rejected.Requests for
  /// policies with any conditional role bindings must specify version 3.
  /// Policies with no conditional role bindings may specify any valid value or
  /// leave the field unset.The policy in the response might use the policy
  /// version that you specified, or it might use a lower policy version. For
  /// example, if you specify version 3, but the policy has no conditional role
  /// bindings, the response uses version 1.To learn which resources support
  /// conditions in their IAM policies, see the IAM documentation
  /// (https://cloud.google.com/iam/help/conditions/resource-policies).
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

  /// Lists services in a project and location.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The relative resource name of the location of
  /// metastore services to list, in the following
  /// form:projects/{project_number}/locations/{location_id}.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [filter] - Optional. The filter to apply to list results.
  ///
  /// [orderBy] - Optional. Specify the ordering of results as described in
  /// Sorting Order
  /// (https://cloud.google.com/apis/design/design_patterns#sorting_order). If
  /// not specified, the results will be sorted in the default order.
  ///
  /// [pageSize] - Optional. The maximum number of services to return. The
  /// response may contain less than the maximum number. If unspecified, no more
  /// than 500 services are returned. The maximum value is 1000; values above
  /// 1000 are changed to 1000.
  ///
  /// [pageToken] - Optional. A page token, received from a previous
  /// DataprocMetastore.ListServices call. Provide this token to retrieve the
  /// subsequent page.To retrieve the first page, supply an empty page
  /// token.When paginating, other parameters provided to
  /// DataprocMetastore.ListServices must match the call that provided the page
  /// token.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListServicesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListServicesResponse> list(
    core.String parent, {
    core.String? filter,
    core.String? orderBy,
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (filter != null) 'filter': [filter],
      if (orderBy != null) 'orderBy': [orderBy],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/services';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListServicesResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Move a table to another database.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [service] - Required. The relative resource name of the metastore service
  /// to mutate metadata, in the following
  /// format:projects/{project_id}/locations/{location_id}/services/{service_id}.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/services/\[^/\]+$`.
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
  async.Future<Operation> moveTableToDatabase(
    MoveTableToDatabaseRequest request,
    core.String service, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1/' + core.Uri.encodeFull('$service') + ':moveTableToDatabase';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Updates the parameters of a single service.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Immutable. Identifier. The relative resource name of the
  /// metastore service, in the following
  /// format:projects/{project_number}/locations/{location_id}/services/{service_id}.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/services/\[^/\]+$`.
  ///
  /// [requestId] - Optional. A request ID. Specify a unique request ID to allow
  /// the server to ignore the request if it has completed. The server will
  /// ignore subsequent requests that provide a duplicate request ID for at
  /// least 60 minutes after the first request.For example, if an initial
  /// request times out, followed by another request with the same request ID,
  /// the server ignores the second request to prevent the creation of duplicate
  /// commitments.The request ID must be a valid UUID
  /// (https://en.wikipedia.org/wiki/Universally_unique_identifier#Format) A
  /// zero UUID (00000000-0000-0000-0000-000000000000) is not supported.
  ///
  /// [updateMask] - Required. A field mask used to specify the fields to be
  /// overwritten in the metastore service resource by the update. Fields
  /// specified in the update_mask are relative to the resource (not to the full
  /// request). A field is overwritten if it is in the mask.
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
    Service request,
    core.String name, {
    core.String? requestId,
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (requestId != null) 'requestId': [requestId],
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
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Query Dataproc Metastore metadata.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [service] - Required. The relative resource name of the metastore service
  /// to query metadata, in the following
  /// format:projects/{project_id}/locations/{location_id}/services/{service_id}.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/services/\[^/\]+$`.
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
  async.Future<Operation> queryMetadata(
    QueryMetadataRequest request,
    core.String service, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$service') + ':queryMetadata';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Restores a service from a backup.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [service] - Required. The relative resource name of the metastore service
  /// to run restore, in the following
  /// form:projects/{project_id}/locations/{location_id}/services/{service_id}.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/services/\[^/\]+$`.
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
  async.Future<Operation> restore(
    RestoreServiceRequest request,
    core.String service, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$service') + ':restore';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Sets the access control policy on the specified resource.
  ///
  /// Replaces any existing policy.Can return NOT_FOUND, INVALID_ARGUMENT, and
  /// PERMISSION_DENIED errors.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [resource] - REQUIRED: The resource for which the policy is being
  /// specified. See Resource names
  /// (https://cloud.google.com/apis/design/resource_names) for the appropriate
  /// value for this field.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/services/\[^/\]+$`.
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

  /// Starts the Managed Migration process.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [service] - Required. The relative resource name of the metastore service
  /// to start migrating to, in the following
  /// format:projects/{project_id}/locations/{location_id}/services/{service_id}.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/services/\[^/\]+$`.
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
  async.Future<Operation> startMigration(
    StartMigrationRequest request,
    core.String service, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$service') + ':startMigration';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Returns permissions that a caller has on the specified resource.
  ///
  /// If the resource does not exist, this will return an empty set of
  /// permissions, not a NOT_FOUND error.Note: This operation is designed to be
  /// used for building permission-aware UIs and command-line tools, not for
  /// authorization checking. This operation may "fail open" without warning.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [resource] - REQUIRED: The resource for which the policy detail is being
  /// requested. See Resource names
  /// (https://cloud.google.com/apis/design/resource_names) for the appropriate
  /// value for this field.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/services/\[^/\]+$`.
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
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsServicesBackupsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsServicesBackupsResource(commons.ApiRequester client)
      : _requester = client;

  /// Creates a new backup in a given project and location.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The relative resource name of the service in which to
  /// create a backup of the following
  /// form:projects/{project_number}/locations/{location_id}/services/{service_id}.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/services/\[^/\]+$`.
  ///
  /// [backupId] - Required. The ID of the backup, which is used as the final
  /// component of the backup's name.This value must be between 1 and 64
  /// characters long, begin with a letter, end with a letter or number, and
  /// consist of alpha-numeric ASCII characters or hyphens.
  ///
  /// [requestId] - Optional. A request ID. Specify a unique request ID to allow
  /// the server to ignore the request if it has completed. The server will
  /// ignore subsequent requests that provide a duplicate request ID for at
  /// least 60 minutes after the first request.For example, if an initial
  /// request times out, followed by another request with the same request ID,
  /// the server ignores the second request to prevent the creation of duplicate
  /// commitments.The request ID must be a valid UUID
  /// (https://en.wikipedia.org/wiki/Universally_unique_identifier#Format) A
  /// zero UUID (00000000-0000-0000-0000-000000000000) is not supported.
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
    Backup request,
    core.String parent, {
    core.String? backupId,
    core.String? requestId,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (backupId != null) 'backupId': [backupId],
      if (requestId != null) 'requestId': [requestId],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/backups';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Deletes a single backup.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The relative resource name of the backup to delete, in
  /// the following
  /// form:projects/{project_number}/locations/{location_id}/services/{service_id}/backups/{backup_id}.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/services/\[^/\]+/backups/\[^/\]+$`.
  ///
  /// [requestId] - Optional. A request ID. Specify a unique request ID to allow
  /// the server to ignore the request if it has completed. The server will
  /// ignore subsequent requests that provide a duplicate request ID for at
  /// least 60 minutes after the first request.For example, if an initial
  /// request times out, followed by another request with the same request ID,
  /// the server ignores the second request to prevent the creation of duplicate
  /// commitments.The request ID must be a valid UUID
  /// (https://en.wikipedia.org/wiki/Universally_unique_identifier#Format) A
  /// zero UUID (00000000-0000-0000-0000-000000000000) is not supported.
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
    core.String? requestId,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (requestId != null) 'requestId': [requestId],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Gets details of a single backup.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The relative resource name of the backup to retrieve,
  /// in the following
  /// form:projects/{project_number}/locations/{location_id}/services/{service_id}/backups/{backup_id}.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/services/\[^/\]+/backups/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Backup].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Backup> get(
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
    return Backup.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Gets the access control policy for a resource.
  ///
  /// Returns an empty policy if the resource exists and does not have a policy
  /// set.
  ///
  /// Request parameters:
  ///
  /// [resource] - REQUIRED: The resource for which the policy is being
  /// requested. See Resource names
  /// (https://cloud.google.com/apis/design/resource_names) for the appropriate
  /// value for this field.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/services/\[^/\]+/backups/\[^/\]+$`.
  ///
  /// [options_requestedPolicyVersion] - Optional. The maximum policy version
  /// that will be used to format the policy.Valid values are 0, 1, and 3.
  /// Requests specifying an invalid value will be rejected.Requests for
  /// policies with any conditional role bindings must specify version 3.
  /// Policies with no conditional role bindings may specify any valid value or
  /// leave the field unset.The policy in the response might use the policy
  /// version that you specified, or it might use a lower policy version. For
  /// example, if you specify version 3, but the policy has no conditional role
  /// bindings, the response uses version 1.To learn which resources support
  /// conditions in their IAM policies, see the IAM documentation
  /// (https://cloud.google.com/iam/help/conditions/resource-policies).
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

  /// Lists backups in a service.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The relative resource name of the service whose
  /// backups to list, in the following
  /// form:projects/{project_number}/locations/{location_id}/services/{service_id}/backups.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/services/\[^/\]+$`.
  ///
  /// [filter] - Optional. The filter to apply to list results.
  ///
  /// [orderBy] - Optional. Specify the ordering of results as described in
  /// Sorting Order
  /// (https://cloud.google.com/apis/design/design_patterns#sorting_order). If
  /// not specified, the results will be sorted in the default order.
  ///
  /// [pageSize] - Optional. The maximum number of backups to return. The
  /// response may contain less than the maximum number. If unspecified, no more
  /// than 500 backups are returned. The maximum value is 1000; values above
  /// 1000 are changed to 1000.
  ///
  /// [pageToken] - Optional. A page token, received from a previous
  /// DataprocMetastore.ListBackups call. Provide this token to retrieve the
  /// subsequent page.To retrieve the first page, supply an empty page
  /// token.When paginating, other parameters provided to
  /// DataprocMetastore.ListBackups must match the call that provided the page
  /// token.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListBackupsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListBackupsResponse> list(
    core.String parent, {
    core.String? filter,
    core.String? orderBy,
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (filter != null) 'filter': [filter],
      if (orderBy != null) 'orderBy': [orderBy],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/backups';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListBackupsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Sets the access control policy on the specified resource.
  ///
  /// Replaces any existing policy.Can return NOT_FOUND, INVALID_ARGUMENT, and
  /// PERMISSION_DENIED errors.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [resource] - REQUIRED: The resource for which the policy is being
  /// specified. See Resource names
  /// (https://cloud.google.com/apis/design/resource_names) for the appropriate
  /// value for this field.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/services/\[^/\]+/backups/\[^/\]+$`.
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
}

class ProjectsLocationsServicesDatabasesResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsServicesDatabasesTablesResource get tables =>
      ProjectsLocationsServicesDatabasesTablesResource(_requester);

  ProjectsLocationsServicesDatabasesResource(commons.ApiRequester client)
      : _requester = client;

  /// Gets the access control policy for a resource.
  ///
  /// Returns an empty policy if the resource exists and does not have a policy
  /// set.
  ///
  /// Request parameters:
  ///
  /// [resource] - REQUIRED: The resource for which the policy is being
  /// requested. See Resource names
  /// (https://cloud.google.com/apis/design/resource_names) for the appropriate
  /// value for this field.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/services/\[^/\]+/databases/\[^/\]+$`.
  ///
  /// [options_requestedPolicyVersion] - Optional. The maximum policy version
  /// that will be used to format the policy.Valid values are 0, 1, and 3.
  /// Requests specifying an invalid value will be rejected.Requests for
  /// policies with any conditional role bindings must specify version 3.
  /// Policies with no conditional role bindings may specify any valid value or
  /// leave the field unset.The policy in the response might use the policy
  /// version that you specified, or it might use a lower policy version. For
  /// example, if you specify version 3, but the policy has no conditional role
  /// bindings, the response uses version 1.To learn which resources support
  /// conditions in their IAM policies, see the IAM documentation
  /// (https://cloud.google.com/iam/help/conditions/resource-policies).
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

  /// Sets the access control policy on the specified resource.
  ///
  /// Replaces any existing policy.Can return NOT_FOUND, INVALID_ARGUMENT, and
  /// PERMISSION_DENIED errors.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [resource] - REQUIRED: The resource for which the policy is being
  /// specified. See Resource names
  /// (https://cloud.google.com/apis/design/resource_names) for the appropriate
  /// value for this field.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/services/\[^/\]+/databases/\[^/\]+$`.
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
}

class ProjectsLocationsServicesDatabasesTablesResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsServicesDatabasesTablesResource(commons.ApiRequester client)
      : _requester = client;

  /// Gets the access control policy for a resource.
  ///
  /// Returns an empty policy if the resource exists and does not have a policy
  /// set.
  ///
  /// Request parameters:
  ///
  /// [resource] - REQUIRED: The resource for which the policy is being
  /// requested. See Resource names
  /// (https://cloud.google.com/apis/design/resource_names) for the appropriate
  /// value for this field.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/services/\[^/\]+/databases/\[^/\]+/tables/\[^/\]+$`.
  ///
  /// [options_requestedPolicyVersion] - Optional. The maximum policy version
  /// that will be used to format the policy.Valid values are 0, 1, and 3.
  /// Requests specifying an invalid value will be rejected.Requests for
  /// policies with any conditional role bindings must specify version 3.
  /// Policies with no conditional role bindings may specify any valid value or
  /// leave the field unset.The policy in the response might use the policy
  /// version that you specified, or it might use a lower policy version. For
  /// example, if you specify version 3, but the policy has no conditional role
  /// bindings, the response uses version 1.To learn which resources support
  /// conditions in their IAM policies, see the IAM documentation
  /// (https://cloud.google.com/iam/help/conditions/resource-policies).
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

  /// Sets the access control policy on the specified resource.
  ///
  /// Replaces any existing policy.Can return NOT_FOUND, INVALID_ARGUMENT, and
  /// PERMISSION_DENIED errors.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [resource] - REQUIRED: The resource for which the policy is being
  /// specified. See Resource names
  /// (https://cloud.google.com/apis/design/resource_names) for the appropriate
  /// value for this field.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/services/\[^/\]+/databases/\[^/\]+/tables/\[^/\]+$`.
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
}

class ProjectsLocationsServicesMetadataImportsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsServicesMetadataImportsResource(commons.ApiRequester client)
      : _requester = client;

  /// Creates a new MetadataImport in a given project and location.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The relative resource name of the service in which to
  /// create a metastore import, in the following
  /// form:projects/{project_number}/locations/{location_id}/services/{service_id}.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/services/\[^/\]+$`.
  ///
  /// [metadataImportId] - Required. The ID of the metadata import, which is
  /// used as the final component of the metadata import's name.This value must
  /// be between 1 and 64 characters long, begin with a letter, end with a
  /// letter or number, and consist of alpha-numeric ASCII characters or
  /// hyphens.
  ///
  /// [requestId] - Optional. A request ID. Specify a unique request ID to allow
  /// the server to ignore the request if it has completed. The server will
  /// ignore subsequent requests that provide a duplicate request ID for at
  /// least 60 minutes after the first request.For example, if an initial
  /// request times out, followed by another request with the same request ID,
  /// the server ignores the second request to prevent the creation of duplicate
  /// commitments.The request ID must be a valid UUID
  /// (https://en.wikipedia.org/wiki/Universally_unique_identifier#Format) A
  /// zero UUID (00000000-0000-0000-0000-000000000000) is not supported.
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
    MetadataImport request,
    core.String parent, {
    core.String? metadataImportId,
    core.String? requestId,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (metadataImportId != null) 'metadataImportId': [metadataImportId],
      if (requestId != null) 'requestId': [requestId],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/metadataImports';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Gets details of a single import.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The relative resource name of the metadata import to
  /// retrieve, in the following
  /// form:projects/{project_number}/locations/{location_id}/services/{service_id}/metadataImports/{import_id}.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/services/\[^/\]+/metadataImports/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [MetadataImport].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<MetadataImport> get(
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
    return MetadataImport.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists imports in a service.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The relative resource name of the service whose
  /// metadata imports to list, in the following
  /// form:projects/{project_number}/locations/{location_id}/services/{service_id}/metadataImports.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/services/\[^/\]+$`.
  ///
  /// [filter] - Optional. The filter to apply to list results.
  ///
  /// [orderBy] - Optional. Specify the ordering of results as described in
  /// Sorting Order
  /// (https://cloud.google.com/apis/design/design_patterns#sorting_order). If
  /// not specified, the results will be sorted in the default order.
  ///
  /// [pageSize] - Optional. The maximum number of imports to return. The
  /// response may contain less than the maximum number. If unspecified, no more
  /// than 500 imports are returned. The maximum value is 1000; values above
  /// 1000 are changed to 1000.
  ///
  /// [pageToken] - Optional. A page token, received from a previous
  /// DataprocMetastore.ListServices call. Provide this token to retrieve the
  /// subsequent page.To retrieve the first page, supply an empty page
  /// token.When paginating, other parameters provided to
  /// DataprocMetastore.ListServices must match the call that provided the page
  /// token.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListMetadataImportsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListMetadataImportsResponse> list(
    core.String parent, {
    core.String? filter,
    core.String? orderBy,
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (filter != null) 'filter': [filter],
      if (orderBy != null) 'orderBy': [orderBy],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/metadataImports';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListMetadataImportsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Updates a single import.
  ///
  /// Only the description field of MetadataImport is supported to be updated.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Immutable. Identifier. The relative resource name of the metadata
  /// import, of the
  /// form:projects/{project_number}/locations/{location_id}/services/{service_id}/metadataImports/{metadata_import_id}.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/services/\[^/\]+/metadataImports/\[^/\]+$`.
  ///
  /// [requestId] - Optional. A request ID. Specify a unique request ID to allow
  /// the server to ignore the request if it has completed. The server will
  /// ignore subsequent requests that provide a duplicate request ID for at
  /// least 60 minutes after the first request.For example, if an initial
  /// request times out, followed by another request with the same request ID,
  /// the server ignores the second request to prevent the creation of duplicate
  /// commitments.The request ID must be a valid UUID
  /// (https://en.wikipedia.org/wiki/Universally_unique_identifier#Format) A
  /// zero UUID (00000000-0000-0000-0000-000000000000) is not supported.
  ///
  /// [updateMask] - Required. A field mask used to specify the fields to be
  /// overwritten in the metadata import resource by the update. Fields
  /// specified in the update_mask are relative to the resource (not to the full
  /// request). A field is overwritten if it is in the mask.
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
    MetadataImport request,
    core.String name, {
    core.String? requestId,
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (requestId != null) 'requestId': [requestId],
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
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsServicesMigrationExecutionsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsServicesMigrationExecutionsResource(
      commons.ApiRequester client)
      : _requester = client;

  /// Deletes a single migration execution.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The relative resource name of the migrationExecution to
  /// delete, in the following
  /// form:projects/{project_number}/locations/{location_id}/services/{service_id}/migrationExecutions/{migration_execution_id}.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/services/\[^/\]+/migrationExecutions/\[^/\]+$`.
  ///
  /// [requestId] - Optional. A request ID. Specify a unique request ID to allow
  /// the server to ignore the request if it has completed. The server will
  /// ignore subsequent requests that provide a duplicate request ID for at
  /// least 60 minutes after the first request.For example, if an initial
  /// request times out, followed by another request with the same request ID,
  /// the server ignores the second request to prevent the creation of duplicate
  /// commitments.The request ID must be a valid UUID
  /// (https://en.wikipedia.org/wiki/Universally_unique_identifier#Format) A
  /// zero UUID (00000000-0000-0000-0000-000000000000) is not supported.
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
    core.String? requestId,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (requestId != null) 'requestId': [requestId],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Gets details of a single migration execution.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The relative resource name of the migration execution
  /// to retrieve, in the following
  /// form:projects/{project_number}/locations/{location_id}/services/{service_id}/migrationExecutions/{migration_execution_id}.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/services/\[^/\]+/migrationExecutions/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [MigrationExecution].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<MigrationExecution> get(
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
    return MigrationExecution.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists migration executions on a service.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The relative resource name of the service whose
  /// migration executions to list, in the following
  /// form:projects/{project_number}/locations/{location_id}/services/{service_id}/migrationExecutions.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/services/\[^/\]+$`.
  ///
  /// [filter] - Optional. The filter to apply to list results.
  ///
  /// [orderBy] - Optional. Specify the ordering of results as described in
  /// Sorting Order
  /// (https://cloud.google.com/apis/design/design_patterns#sorting_order). If
  /// not specified, the results will be sorted in the default order.
  ///
  /// [pageSize] - Optional. The maximum number of migration executions to
  /// return. The response may contain less than the maximum number. If
  /// unspecified, no more than 500 migration executions are returned. The
  /// maximum value is 1000; values above 1000 are changed to 1000.
  ///
  /// [pageToken] - Optional. A page token, received from a previous
  /// DataprocMetastore.ListMigrationExecutions call. Provide this token to
  /// retrieve the subsequent page.To retrieve the first page, supply an empty
  /// page token.When paginating, other parameters provided to
  /// DataprocMetastore.ListMigrationExecutions must match the call that
  /// provided the page token.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListMigrationExecutionsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListMigrationExecutionsResponse> list(
    core.String parent, {
    core.String? filter,
    core.String? orderBy,
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (filter != null) 'filter': [filter],
      if (orderBy != null) 'orderBy': [orderBy],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1/' + core.Uri.encodeFull('$parent') + '/migrationExecutions';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListMigrationExecutionsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

/// Request message for DataprocMetastore.AlterMetadataResourceLocation.
typedef AlterMetadataResourceLocationRequest
    = $AlterMetadataResourceLocationRequest;

/// Request message for DataprocMetastore.AlterTableProperties.
typedef AlterTablePropertiesRequest = $AlterTablePropertiesRequest;

/// Specifies the audit configuration for a service.
///
/// The configuration determines which permission types are logged, and what
/// identities, if any, are exempted from logging. An AuditConfig must have one
/// or more AuditLogConfigs.If there are AuditConfigs for both allServices and a
/// specific service, the union of the two AuditConfigs is used for that
/// service: the log_types specified in each AuditConfig are enabled, and the
/// exempted_members in each AuditLogConfig are exempted.Example Policy with
/// multiple AuditConfigs: { "audit_configs": \[ { "service": "allServices",
/// "audit_log_configs": \[ { "log_type": "DATA_READ", "exempted_members": \[
/// "user:jose@example.com" \] }, { "log_type": "DATA_WRITE" }, { "log_type":
/// "ADMIN_READ" } \] }, { "service": "sampleservice.googleapis.com",
/// "audit_log_configs": \[ { "log_type": "DATA_READ" }, { "log_type":
/// "DATA_WRITE", "exempted_members": \[ "user:aliya@example.com" \] } \] } \] }
/// For sampleservice, this policy enables DATA_READ, DATA_WRITE and ADMIN_READ
/// logging. It also exempts jose@example.com from DATA_READ logging, and
/// aliya@example.com from DATA_WRITE logging.
class AuditConfig {
  /// The configuration for logging of each type of permission.
  core.List<AuditLogConfig>? auditLogConfigs;

  /// Specifies a service that will be enabled for audit logging.
  ///
  /// For example, storage.googleapis.com, cloudsql.googleapis.com. allServices
  /// is a special value that covers all services.
  core.String? service;

  AuditConfig({
    this.auditLogConfigs,
    this.service,
  });

  AuditConfig.fromJson(core.Map json_)
      : this(
          auditLogConfigs: (json_['auditLogConfigs'] as core.List?)
              ?.map((value) => AuditLogConfig.fromJson(
                  value as core.Map<core.String, core.dynamic>))
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
typedef AuditLogConfig = $AuditLogConfig;

/// Represents the autoscaling configuration of a metastore service.
class AutoscalingConfig {
  /// Whether or not autoscaling is enabled for this service.
  ///
  /// Optional.
  core.bool? autoscalingEnabled;

  /// The scaling factor of a service with autoscaling enabled.
  ///
  /// Output only.
  core.double? autoscalingFactor;

  /// The LimitConfig of the service.
  ///
  /// Optional.
  LimitConfig? limitConfig;

  AutoscalingConfig({
    this.autoscalingEnabled,
    this.autoscalingFactor,
    this.limitConfig,
  });

  AutoscalingConfig.fromJson(core.Map json_)
      : this(
          autoscalingEnabled: json_['autoscalingEnabled'] as core.bool?,
          autoscalingFactor:
              (json_['autoscalingFactor'] as core.num?)?.toDouble(),
          limitConfig: json_.containsKey('limitConfig')
              ? LimitConfig.fromJson(
                  json_['limitConfig'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (autoscalingEnabled != null)
          'autoscalingEnabled': autoscalingEnabled!,
        if (autoscalingFactor != null) 'autoscalingFactor': autoscalingFactor!,
        if (limitConfig != null) 'limitConfig': limitConfig!,
      };
}

/// Configuration information for the auxiliary service versions.
class AuxiliaryVersionConfig {
  /// A mapping of Hive metastore configuration key-value pairs to apply to the
  /// auxiliary Hive metastore (configured in hive-site.xml) in addition to the
  /// primary version's overrides.
  ///
  /// If keys are present in both the auxiliary version's overrides and the
  /// primary version's overrides, the value from the auxiliary version's
  /// overrides takes precedence.
  ///
  /// Optional.
  core.Map<core.String, core.String>? configOverrides;

  /// The network configuration contains the endpoint URI(s) of the auxiliary
  /// Hive metastore service.
  ///
  /// Output only.
  NetworkConfig? networkConfig;

  /// The Hive metastore version of the auxiliary service.
  ///
  /// It must be less than the primary Hive metastore service's version.
  ///
  /// Optional.
  core.String? version;

  AuxiliaryVersionConfig({
    this.configOverrides,
    this.networkConfig,
    this.version,
  });

  AuxiliaryVersionConfig.fromJson(core.Map json_)
      : this(
          configOverrides:
              (json_['configOverrides'] as core.Map<core.String, core.dynamic>?)
                  ?.map(
            (key, value) => core.MapEntry(
              key,
              value as core.String,
            ),
          ),
          networkConfig: json_.containsKey('networkConfig')
              ? NetworkConfig.fromJson(
                  json_['networkConfig'] as core.Map<core.String, core.dynamic>)
              : null,
          version: json_['version'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (configOverrides != null) 'configOverrides': configOverrides!,
        if (networkConfig != null) 'networkConfig': networkConfig!,
        if (version != null) 'version': version!,
      };
}

/// Represents a backend metastore for the federation.
class BackendMetastore {
  /// The type of the backend metastore.
  /// Possible string values are:
  /// - "METASTORE_TYPE_UNSPECIFIED" : The metastore type is not set.
  /// - "BIGQUERY" : The backend metastore is BigQuery.
  /// - "DATAPROC_METASTORE" : The backend metastore is Dataproc Metastore.
  core.String? metastoreType;

  /// The relative resource name of the metastore that is being federated.
  ///
  /// The formats of the relative resource names for the currently supported
  /// metastores are listed below: BigQuery projects/{project_id} Dataproc
  /// Metastore projects/{project_id}/locations/{location}/services/{service_id}
  core.String? name;

  BackendMetastore({
    this.metastoreType,
    this.name,
  });

  BackendMetastore.fromJson(core.Map json_)
      : this(
          metastoreType: json_['metastoreType'] as core.String?,
          name: json_['name'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (metastoreType != null) 'metastoreType': metastoreType!,
        if (name != null) 'name': name!,
      };
}

/// The details of a backup resource.
class Backup {
  /// The time when the backup was started.
  ///
  /// Output only.
  core.String? createTime;

  /// The description of the backup.
  ///
  /// Optional.
  core.String? description;

  /// The time when the backup finished creating.
  ///
  /// Output only.
  core.String? endTime;

  /// Identifier.
  ///
  /// The relative resource name of the backup, in the following
  /// form:projects/{project_number}/locations/{location_id}/services/{service_id}/backups/{backup_id}
  ///
  /// Immutable.
  core.String? name;

  /// Services that are restoring from the backup.
  ///
  /// Output only.
  core.List<core.String>? restoringServices;

  /// The revision of the service at the time of backup.
  ///
  /// Output only.
  Service? serviceRevision;

  /// The current state of the backup.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : The state of the backup is unknown.
  /// - "CREATING" : The backup is being created.
  /// - "DELETING" : The backup is being deleted.
  /// - "ACTIVE" : The backup is active and ready to use.
  /// - "FAILED" : The backup failed.
  /// - "RESTORING" : The backup is being restored.
  core.String? state;

  Backup({
    this.createTime,
    this.description,
    this.endTime,
    this.name,
    this.restoringServices,
    this.serviceRevision,
    this.state,
  });

  Backup.fromJson(core.Map json_)
      : this(
          createTime: json_['createTime'] as core.String?,
          description: json_['description'] as core.String?,
          endTime: json_['endTime'] as core.String?,
          name: json_['name'] as core.String?,
          restoringServices: (json_['restoringServices'] as core.List?)
              ?.map((value) => value as core.String)
              .toList(),
          serviceRevision: json_.containsKey('serviceRevision')
              ? Service.fromJson(json_['serviceRevision']
                  as core.Map<core.String, core.dynamic>)
              : null,
          state: json_['state'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (createTime != null) 'createTime': createTime!,
        if (description != null) 'description': description!,
        if (endTime != null) 'endTime': endTime!,
        if (name != null) 'name': name!,
        if (restoringServices != null) 'restoringServices': restoringServices!,
        if (serviceRevision != null) 'serviceRevision': serviceRevision!,
        if (state != null) 'state': state!,
      };
}

/// Associates members, or principals, with a role.
class Binding {
  /// The condition that is associated with this binding.If the condition
  /// evaluates to true, then this binding applies to the current request.If the
  /// condition evaluates to false, then this binding does not apply to the
  /// current request.
  ///
  /// However, a different role binding might grant the same role to one or more
  /// of the principals in this binding.To learn which resources support
  /// conditions in their IAM policies, see the IAM documentation
  /// (https://cloud.google.com/iam/help/conditions/resource-policies).
  Expr? condition;

  /// Specifies the principals requesting access for a Google Cloud resource.
  ///
  /// members can have the following values: allUsers: A special identifier that
  /// represents anyone who is on the internet; with or without a Google
  /// account. allAuthenticatedUsers: A special identifier that represents
  /// anyone who is authenticated with a Google account or a service account.
  /// Does not include identities that come from external identity providers
  /// (IdPs) through identity federation. user:{emailid}: An email address that
  /// represents a specific Google account. For example, alice@example.com .
  /// serviceAccount:{emailid}: An email address that represents a Google
  /// service account. For example, my-other-app@appspot.gserviceaccount.com.
  /// serviceAccount:{projectid}.svc.id.goog\[{namespace}/{kubernetes-sa}\]: An
  /// identifier for a Kubernetes service account
  /// (https://cloud.google.com/kubernetes-engine/docs/how-to/kubernetes-service-accounts).
  /// For example, my-project.svc.id.goog\[my-namespace/my-kubernetes-sa\].
  /// group:{emailid}: An email address that represents a Google group. For
  /// example, admins@example.com. domain:{domain}: The G Suite domain (primary)
  /// that represents all the users of that domain. For example, google.com or
  /// example.com.
  /// principal://iam.googleapis.com/locations/global/workforcePools/{pool_id}/subject/{subject_attribute_value}:
  /// A single identity in a workforce identity pool.
  /// principalSet://iam.googleapis.com/locations/global/workforcePools/{pool_id}/group/{group_id}:
  /// All workforce identities in a group.
  /// principalSet://iam.googleapis.com/locations/global/workforcePools/{pool_id}/attribute.{attribute_name}/{attribute_value}:
  /// All workforce identities with a specific attribute value.
  /// principalSet://iam.googleapis.com/locations/global/workforcePools/{pool_id}
  /// / * : All identities in a workforce identity pool.
  /// principal://iam.googleapis.com/projects/{project_number}/locations/global/workloadIdentityPools/{pool_id}/subject/{subject_attribute_value}:
  /// A single identity in a workload identity pool.
  /// principalSet://iam.googleapis.com/projects/{project_number}/locations/global/workloadIdentityPools/{pool_id}/group/{group_id}:
  /// A workload identity pool group.
  /// principalSet://iam.googleapis.com/projects/{project_number}/locations/global/workloadIdentityPools/{pool_id}/attribute.{attribute_name}/{attribute_value}:
  /// All identities in a workload identity pool with a certain attribute.
  /// principalSet://iam.googleapis.com/projects/{project_number}/locations/global/workloadIdentityPools/{pool_id}
  /// / * : All identities in a workload identity pool.
  /// deleted:user:{emailid}?uid={uniqueid}: An email address (plus unique
  /// identifier) representing a user that has been recently deleted. For
  /// example, alice@example.com?uid=123456789012345678901. If the user is
  /// recovered, this value reverts to user:{emailid} and the recovered user
  /// retains the role in the binding.
  /// deleted:serviceAccount:{emailid}?uid={uniqueid}: An email address (plus
  /// unique identifier) representing a service account that has been recently
  /// deleted. For example,
  /// my-other-app@appspot.gserviceaccount.com?uid=123456789012345678901. If the
  /// service account is undeleted, this value reverts to
  /// serviceAccount:{emailid} and the undeleted service account retains the
  /// role in the binding. deleted:group:{emailid}?uid={uniqueid}: An email
  /// address (plus unique identifier) representing a Google group that has been
  /// recently deleted. For example,
  /// admins@example.com?uid=123456789012345678901. If the group is recovered,
  /// this value reverts to group:{emailid} and the recovered group retains the
  /// role in the binding.
  /// deleted:principal://iam.googleapis.com/locations/global/workforcePools/{pool_id}/subject/{subject_attribute_value}:
  /// Deleted single identity in a workforce identity pool. For example,
  /// deleted:principal://iam.googleapis.com/locations/global/workforcePools/my-pool-id/subject/my-subject-attribute-value.
  core.List<core.String>? members;

  /// Role that is assigned to the list of members, or principals.
  ///
  /// For example, roles/viewer, roles/editor, or roles/owner.For an overview of
  /// the IAM roles and permissions, see the IAM documentation
  /// (https://cloud.google.com/iam/docs/roles-overview). For a list of the
  /// available pre-defined roles, see here
  /// (https://cloud.google.com/iam/docs/understanding-roles).
  core.String? role;

  Binding({
    this.condition,
    this.members,
    this.role,
  });

  Binding.fromJson(core.Map json_)
      : this(
          condition: json_.containsKey('condition')
              ? Expr.fromJson(
                  json_['condition'] as core.Map<core.String, core.dynamic>)
              : null,
          members: (json_['members'] as core.List?)
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

/// Request message for DataprocMetastore.CancelMigration.
typedef CancelMigrationRequest = $Empty;

/// The request message for Operations.CancelOperation.
typedef CancelOperationRequest = $Empty;

/// Configuration information to start the Change Data Capture (CDC) streams
/// from customer database to backend database of Dataproc Metastore.
class CdcConfig {
  /// The bucket to write the intermediate stream event data in.
  ///
  /// The bucket name must be without any prefix like "gs://". See the bucket
  /// naming requirements
  /// (https://cloud.google.com/storage/docs/buckets#naming). This field is
  /// optional. If not set, the Artifacts Cloud Storage bucket will be used.
  ///
  /// Optional.
  core.String? bucket;

  /// Input only.
  ///
  /// The password for the user that Datastream service should use for the MySQL
  /// connection. This field is not returned on request.
  ///
  /// Required.
  core.String? password;

  /// The URL of the subnetwork resource to create the VM instance hosting the
  /// reverse proxy in.
  ///
  /// More context in
  /// https://cloud.google.com/datastream/docs/private-connectivity#reverse-csql-proxy
  /// The subnetwork should reside in the network provided in the request that
  /// Datastream will peer to and should be in the same region as Datastream, in
  /// the following format.
  /// projects/{project_id}/regions/{region_id}/subnetworks/{subnetwork_id}
  ///
  /// Required.
  core.String? reverseProxySubnet;

  /// The root path inside the Cloud Storage bucket.
  ///
  /// The stream event data will be written to this path. The default value is
  /// /migration.
  ///
  /// Optional.
  core.String? rootPath;

  /// A /29 CIDR IP range for peering with datastream.
  ///
  /// Required.
  core.String? subnetIpRange;

  /// The username that the Datastream service should use for the MySQL
  /// connection.
  ///
  /// Required.
  core.String? username;

  /// Fully qualified name of the Cloud SQL instance's VPC network or the shared
  /// VPC network that Datastream will peer to, in the following format:
  /// projects/{project_id}/locations/global/networks/{network_id}.
  ///
  /// More context in
  /// https://cloud.google.com/datastream/docs/network-connectivity-options#privateconnectivity
  ///
  /// Required.
  core.String? vpcNetwork;

  CdcConfig({
    this.bucket,
    this.password,
    this.reverseProxySubnet,
    this.rootPath,
    this.subnetIpRange,
    this.username,
    this.vpcNetwork,
  });

  CdcConfig.fromJson(core.Map json_)
      : this(
          bucket: json_['bucket'] as core.String?,
          password: json_['password'] as core.String?,
          reverseProxySubnet: json_['reverseProxySubnet'] as core.String?,
          rootPath: json_['rootPath'] as core.String?,
          subnetIpRange: json_['subnetIpRange'] as core.String?,
          username: json_['username'] as core.String?,
          vpcNetwork: json_['vpcNetwork'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (bucket != null) 'bucket': bucket!,
        if (password != null) 'password': password!,
        if (reverseProxySubnet != null)
          'reverseProxySubnet': reverseProxySubnet!,
        if (rootPath != null) 'rootPath': rootPath!,
        if (subnetIpRange != null) 'subnetIpRange': subnetIpRange!,
        if (username != null) 'username': username!,
        if (vpcNetwork != null) 'vpcNetwork': vpcNetwork!,
      };
}

/// Configuration information to establish customer database connection before
/// the cutover phase of migration
class CloudSQLConnectionConfig {
  /// The hive database name.
  ///
  /// Required.
  core.String? hiveDatabaseName;

  /// Cloud SQL database connection name (project_id:region:instance_name)
  ///
  /// Required.
  core.String? instanceConnectionName;

  /// The private IP address of the Cloud SQL instance.
  ///
  /// Required.
  core.String? ipAddress;

  /// The relative resource name of the subnetwork to be used for Private
  /// Service Connect.
  ///
  /// Note that this cannot be a regular subnet and is used only for NAT.
  /// (https://cloud.google.com/vpc/docs/about-vpc-hosted-services#psc-subnets)
  /// This subnet is used to publish the SOCKS5 proxy service. The subnet size
  /// must be at least /29 and it should reside in a network through which the
  /// Cloud SQL instance is accessible. The resource name should be in the
  /// format,
  /// projects/{project_id}/regions/{region_id}/subnetworks/{subnetwork_id}
  ///
  /// Required.
  core.String? natSubnet;

  /// Input only.
  ///
  /// The password for the user that Dataproc Metastore service will be using to
  /// connect to the database. This field is not returned on request.
  ///
  /// Required.
  core.String? password;

  /// The network port of the database.
  ///
  /// Required.
  core.int? port;

  /// The relative resource name of the subnetwork to deploy the SOCKS5 proxy
  /// service in.
  ///
  /// The subnetwork should reside in a network through which the Cloud SQL
  /// instance is accessible. The resource name should be in the format,
  /// projects/{project_id}/regions/{region_id}/subnetworks/{subnetwork_id}
  ///
  /// Required.
  core.String? proxySubnet;

  /// The username that Dataproc Metastore service will use to connect to the
  /// database.
  ///
  /// Required.
  core.String? username;

  CloudSQLConnectionConfig({
    this.hiveDatabaseName,
    this.instanceConnectionName,
    this.ipAddress,
    this.natSubnet,
    this.password,
    this.port,
    this.proxySubnet,
    this.username,
  });

  CloudSQLConnectionConfig.fromJson(core.Map json_)
      : this(
          hiveDatabaseName: json_['hiveDatabaseName'] as core.String?,
          instanceConnectionName:
              json_['instanceConnectionName'] as core.String?,
          ipAddress: json_['ipAddress'] as core.String?,
          natSubnet: json_['natSubnet'] as core.String?,
          password: json_['password'] as core.String?,
          port: json_['port'] as core.int?,
          proxySubnet: json_['proxySubnet'] as core.String?,
          username: json_['username'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (hiveDatabaseName != null) 'hiveDatabaseName': hiveDatabaseName!,
        if (instanceConnectionName != null)
          'instanceConnectionName': instanceConnectionName!,
        if (ipAddress != null) 'ipAddress': ipAddress!,
        if (natSubnet != null) 'natSubnet': natSubnet!,
        if (password != null) 'password': password!,
        if (port != null) 'port': port!,
        if (proxySubnet != null) 'proxySubnet': proxySubnet!,
        if (username != null) 'username': username!,
      };
}

/// Configuration information for migrating from self-managed hive metastore on
/// Google Cloud using Cloud SQL as the backend database to Dataproc Metastore.
class CloudSQLMigrationConfig {
  /// Configuration information to start the Change Data Capture (CDC) streams
  /// from customer database to backend database of Dataproc Metastore.
  ///
  /// Dataproc Metastore switches to using its backend database after the
  /// cutover phase of migration.
  ///
  /// Required.
  CdcConfig? cdcConfig;

  /// Configuration information to establish customer database connection before
  /// the cutover phase of migration
  ///
  /// Required.
  CloudSQLConnectionConfig? cloudSqlConnectionConfig;

  CloudSQLMigrationConfig({
    this.cdcConfig,
    this.cloudSqlConnectionConfig,
  });

  CloudSQLMigrationConfig.fromJson(core.Map json_)
      : this(
          cdcConfig: json_.containsKey('cdcConfig')
              ? CdcConfig.fromJson(
                  json_['cdcConfig'] as core.Map<core.String, core.dynamic>)
              : null,
          cloudSqlConnectionConfig:
              json_.containsKey('cloudSqlConnectionConfig')
                  ? CloudSQLConnectionConfig.fromJson(
                      json_['cloudSqlConnectionConfig']
                          as core.Map<core.String, core.dynamic>)
                  : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (cdcConfig != null) 'cdcConfig': cdcConfig!,
        if (cloudSqlConnectionConfig != null)
          'cloudSqlConnectionConfig': cloudSqlConnectionConfig!,
      };
}

/// Request message for DataprocMetastore.CompleteMigration.
typedef CompleteMigrationRequest = $Empty;

/// Contains information of the customer's network configurations.
class Consumer {
  /// The location of the endpoint URI.
  ///
  /// Format: projects/{project}/locations/{location}.
  ///
  /// Output only.
  core.String? endpointLocation;

  /// The URI of the endpoint used to access the metastore service.
  ///
  /// Output only.
  core.String? endpointUri;

  /// The subnetwork of the customer project from which an IP address is
  /// reserved and used as the Dataproc Metastore service's endpoint.
  ///
  /// It is accessible to hosts in the subnet and to all hosts in a subnet in
  /// the same region and same network. There must be at least one IP address
  /// available in the subnet's primary range. The subnet is specified in the
  /// following
  /// form:projects/{project_number}/regions/{region_id}/subnetworks/{subnetwork_id}
  ///
  /// Immutable.
  core.String? subnetwork;

  Consumer({
    this.endpointLocation,
    this.endpointUri,
    this.subnetwork,
  });

  Consumer.fromJson(core.Map json_)
      : this(
          endpointLocation: json_['endpointLocation'] as core.String?,
          endpointUri: json_['endpointUri'] as core.String?,
          subnetwork: json_['subnetwork'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (endpointLocation != null) 'endpointLocation': endpointLocation!,
        if (endpointUri != null) 'endpointUri': endpointUri!,
        if (subnetwork != null) 'subnetwork': subnetwork!,
      };
}

/// Specifies how metastore metadata should be integrated with the Data Catalog
/// service.
typedef DataCatalogConfig = $DataCatalogConfig;

/// A specification of the location of and metadata about a database dump from a
/// relational database management system.
class DatabaseDump {
  /// The type of the database.
  /// Possible string values are:
  /// - "DATABASE_TYPE_UNSPECIFIED" : The type of the source database is
  /// unknown.
  /// - "MYSQL" : The type of the source database is MySQL.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  core.String? databaseType;

  /// A Cloud Storage object or folder URI that specifies the source from which
  /// to import metadata.
  ///
  /// It must begin with gs://.
  ///
  /// Optional.
  core.String? gcsUri;

  /// The name of the source database.
  ///
  /// Optional.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  core.String? sourceDatabase;

  /// The type of the database dump.
  ///
  /// If unspecified, defaults to MYSQL.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "TYPE_UNSPECIFIED" : The type of the database dump is unknown.
  /// - "MYSQL" : Database dump is a MySQL dump file.
  /// - "AVRO" : Database dump contains Avro files.
  core.String? type;

  DatabaseDump({
    this.databaseType,
    this.gcsUri,
    this.sourceDatabase,
    this.type,
  });

  DatabaseDump.fromJson(core.Map json_)
      : this(
          databaseType: json_['databaseType'] as core.String?,
          gcsUri: json_['gcsUri'] as core.String?,
          sourceDatabase: json_['sourceDatabase'] as core.String?,
          type: json_['type'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (databaseType != null) 'databaseType': databaseType!,
        if (gcsUri != null) 'gcsUri': gcsUri!,
        if (sourceDatabase != null) 'sourceDatabase': sourceDatabase!,
        if (type != null) 'type': type!,
      };
}

/// A generic empty message that you can re-use to avoid defining duplicated
/// empty messages in your APIs.
///
/// A typical example is to use it as the request or the response type of an API
/// method. For instance: service Foo { rpc Bar(google.protobuf.Empty) returns
/// (google.protobuf.Empty); }
typedef Empty = $Empty;

/// Encryption settings for the service.
class EncryptionConfig {
  /// The fully qualified customer provided Cloud KMS key name to use for
  /// customer data encryption, in the following
  /// format:projects/{project_number}/locations/{location_id}/keyRings/{key_ring_id}/cryptoKeys/{crypto_key_id}.
  ///
  /// Optional.
  core.String? kmsKey;

  EncryptionConfig({
    this.kmsKey,
  });

  EncryptionConfig.fromJson(core.Map json_)
      : this(
          kmsKey: json_['kmsKey'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (kmsKey != null) 'kmsKey': kmsKey!,
      };
}

/// Request message for DataprocMetastore.ExportMetadata.
typedef ExportMetadataRequest = $ExportMetadataRequest;

/// Represents a textual expression in the Common Expression Language (CEL)
/// syntax.
///
/// CEL is a C-like expression language. The syntax and semantics of CEL are
/// documented at https://github.com/google/cel-spec.Example (Comparison):
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

/// Represents a federation of multiple backend metastores.
class Federation {
  /// A map from BackendMetastore rank to BackendMetastores from which the
  /// federation service serves metadata at query time.
  ///
  /// The map key represents the order in which BackendMetastores should be
  /// evaluated to resolve database names at query time and should be greater
  /// than or equal to zero. A BackendMetastore with a lower number will be
  /// evaluated before a BackendMetastore with a higher number.
  core.Map<core.String, BackendMetastore>? backendMetastores;

  /// The time when the metastore federation was created.
  ///
  /// Output only.
  core.String? createTime;

  /// The federation endpoint.
  ///
  /// Output only.
  core.String? endpointUri;

  /// User-defined labels for the metastore federation.
  core.Map<core.String, core.String>? labels;

  /// The relative resource name of the federation, of the form:
  /// projects/{project_number}/locations/{location_id}/federations/{federation_id}\`.
  ///
  /// Immutable.
  core.String? name;

  /// The current state of the federation.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : The state of the metastore federation is unknown.
  /// - "CREATING" : The metastore federation is in the process of being
  /// created.
  /// - "ACTIVE" : The metastore federation is running and ready to serve
  /// queries.
  /// - "UPDATING" : The metastore federation is being updated. It remains
  /// usable but cannot accept additional update requests or be deleted at this
  /// time.
  /// - "DELETING" : The metastore federation is undergoing deletion. It cannot
  /// be used.
  /// - "ERROR" : The metastore federation has encountered an error and cannot
  /// be used. The metastore federation should be deleted.
  core.String? state;

  /// Additional information about the current state of the metastore
  /// federation, if available.
  ///
  /// Output only.
  core.String? stateMessage;

  /// The globally unique resource identifier of the metastore federation.
  ///
  /// Output only.
  core.String? uid;

  /// The time when the metastore federation was last updated.
  ///
  /// Output only.
  core.String? updateTime;

  /// The Apache Hive metastore version of the federation.
  ///
  /// All backend metastore versions must be compatible with the federation
  /// version.
  ///
  /// Immutable.
  core.String? version;

  Federation({
    this.backendMetastores,
    this.createTime,
    this.endpointUri,
    this.labels,
    this.name,
    this.state,
    this.stateMessage,
    this.uid,
    this.updateTime,
    this.version,
  });

  Federation.fromJson(core.Map json_)
      : this(
          backendMetastores: (json_['backendMetastores']
                  as core.Map<core.String, core.dynamic>?)
              ?.map(
            (key, value) => core.MapEntry(
              key,
              BackendMetastore.fromJson(
                  value as core.Map<core.String, core.dynamic>),
            ),
          ),
          createTime: json_['createTime'] as core.String?,
          endpointUri: json_['endpointUri'] as core.String?,
          labels:
              (json_['labels'] as core.Map<core.String, core.dynamic>?)?.map(
            (key, value) => core.MapEntry(
              key,
              value as core.String,
            ),
          ),
          name: json_['name'] as core.String?,
          state: json_['state'] as core.String?,
          stateMessage: json_['stateMessage'] as core.String?,
          uid: json_['uid'] as core.String?,
          updateTime: json_['updateTime'] as core.String?,
          version: json_['version'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (backendMetastores != null) 'backendMetastores': backendMetastores!,
        if (createTime != null) 'createTime': createTime!,
        if (endpointUri != null) 'endpointUri': endpointUri!,
        if (labels != null) 'labels': labels!,
        if (name != null) 'name': name!,
        if (state != null) 'state': state!,
        if (stateMessage != null) 'stateMessage': stateMessage!,
        if (uid != null) 'uid': uid!,
        if (updateTime != null) 'updateTime': updateTime!,
        if (version != null) 'version': version!,
      };
}

/// Specifies configuration information specific to running Hive metastore
/// software as the metastore service.
class HiveMetastoreConfig {
  /// A mapping of Hive metastore version to the auxiliary version
  /// configuration.
  ///
  /// When specified, a secondary Hive metastore service is created along with
  /// the primary service. All auxiliary versions must be less than the
  /// service's primary version. The key is the auxiliary service name and it
  /// must match the regular expression a-z?. This means that the first
  /// character must be a lowercase letter, and all the following characters
  /// must be hyphens, lowercase letters, or digits, except the last character,
  /// which cannot be a hyphen.
  ///
  /// Optional.
  core.Map<core.String, AuxiliaryVersionConfig>? auxiliaryVersions;

  /// A mapping of Hive metastore configuration key-value pairs to apply to the
  /// Hive metastore (configured in hive-site.xml).
  ///
  /// The mappings override system defaults (some keys cannot be overridden).
  /// These overrides are also applied to auxiliary versions and can be further
  /// customized in the auxiliary version's AuxiliaryVersionConfig.
  ///
  /// Optional.
  core.Map<core.String, core.String>? configOverrides;

  /// The protocol to use for the metastore service endpoint.
  ///
  /// If unspecified, defaults to THRIFT.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "ENDPOINT_PROTOCOL_UNSPECIFIED" : The protocol is not set.
  /// - "THRIFT" : Use the legacy Apache Thrift protocol for the metastore
  /// service endpoint.
  /// - "GRPC" : Use the modernized gRPC protocol for the metastore service
  /// endpoint.
  core.String? endpointProtocol;

  /// Information used to configure the Hive metastore service as a service
  /// principal in a Kerberos realm.
  ///
  /// To disable Kerberos, use the UpdateService method and specify this field's
  /// path (hive_metastore_config.kerberos_config) in the request's update_mask
  /// while omitting this field from the request's service.
  ///
  /// Optional.
  KerberosConfig? kerberosConfig;

  /// The Hive metastore schema version.
  ///
  /// Immutable.
  core.String? version;

  HiveMetastoreConfig({
    this.auxiliaryVersions,
    this.configOverrides,
    this.endpointProtocol,
    this.kerberosConfig,
    this.version,
  });

  HiveMetastoreConfig.fromJson(core.Map json_)
      : this(
          auxiliaryVersions: (json_['auxiliaryVersions']
                  as core.Map<core.String, core.dynamic>?)
              ?.map(
            (key, value) => core.MapEntry(
              key,
              AuxiliaryVersionConfig.fromJson(
                  value as core.Map<core.String, core.dynamic>),
            ),
          ),
          configOverrides:
              (json_['configOverrides'] as core.Map<core.String, core.dynamic>?)
                  ?.map(
            (key, value) => core.MapEntry(
              key,
              value as core.String,
            ),
          ),
          endpointProtocol: json_['endpointProtocol'] as core.String?,
          kerberosConfig: json_.containsKey('kerberosConfig')
              ? KerberosConfig.fromJson(json_['kerberosConfig']
                  as core.Map<core.String, core.dynamic>)
              : null,
          version: json_['version'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (auxiliaryVersions != null) 'auxiliaryVersions': auxiliaryVersions!,
        if (configOverrides != null) 'configOverrides': configOverrides!,
        if (endpointProtocol != null) 'endpointProtocol': endpointProtocol!,
        if (kerberosConfig != null) 'kerberosConfig': kerberosConfig!,
        if (version != null) 'version': version!,
      };
}

/// Configuration information for a Kerberos principal.
class KerberosConfig {
  /// A Kerberos keytab file that can be used to authenticate a service
  /// principal with a Kerberos Key Distribution Center (KDC).
  ///
  /// Optional.
  Secret? keytab;

  /// A Cloud Storage URI that specifies the path to a krb5.conf file.
  ///
  /// It is of the form gs://{bucket_name}/path/to/krb5.conf, although the file
  /// does not need to be named krb5.conf explicitly.
  ///
  /// Optional.
  core.String? krb5ConfigGcsUri;

  /// A Kerberos principal that exists in the both the keytab the KDC to
  /// authenticate as.
  ///
  /// A typical principal is of the form primary/instance@REALM, but there is no
  /// exact format.
  ///
  /// Optional.
  core.String? principal;

  KerberosConfig({
    this.keytab,
    this.krb5ConfigGcsUri,
    this.principal,
  });

  KerberosConfig.fromJson(core.Map json_)
      : this(
          keytab: json_.containsKey('keytab')
              ? Secret.fromJson(
                  json_['keytab'] as core.Map<core.String, core.dynamic>)
              : null,
          krb5ConfigGcsUri: json_['krb5ConfigGcsUri'] as core.String?,
          principal: json_['principal'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (keytab != null) 'keytab': keytab!,
        if (krb5ConfigGcsUri != null) 'krb5ConfigGcsUri': krb5ConfigGcsUri!,
        if (principal != null) 'principal': principal!,
      };
}

/// The details of the latest scheduled backup.
typedef LatestBackup = $LatestBackup;

/// Represents the autoscaling limit configuration of a metastore service.
class LimitConfig {
  /// The highest scaling factor that the service should be autoscaled to.
  ///
  /// Optional.
  core.double? maxScalingFactor;

  /// The lowest scaling factor that the service should be autoscaled to.
  ///
  /// Optional.
  core.double? minScalingFactor;

  LimitConfig({
    this.maxScalingFactor,
    this.minScalingFactor,
  });

  LimitConfig.fromJson(core.Map json_)
      : this(
          maxScalingFactor:
              (json_['maxScalingFactor'] as core.num?)?.toDouble(),
          minScalingFactor:
              (json_['minScalingFactor'] as core.num?)?.toDouble(),
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (maxScalingFactor != null) 'maxScalingFactor': maxScalingFactor!,
        if (minScalingFactor != null) 'minScalingFactor': minScalingFactor!,
      };
}

/// Response message for DataprocMetastore.ListBackups.
class ListBackupsResponse {
  /// The backups of the specified service.
  core.List<Backup>? backups;

  /// A token that can be sent as page_token to retrieve the next page.
  ///
  /// If this field is omitted, there are no subsequent pages.
  core.String? nextPageToken;

  /// Locations that could not be reached.
  core.List<core.String>? unreachable;

  ListBackupsResponse({
    this.backups,
    this.nextPageToken,
    this.unreachable,
  });

  ListBackupsResponse.fromJson(core.Map json_)
      : this(
          backups: (json_['backups'] as core.List?)
              ?.map((value) =>
                  Backup.fromJson(value as core.Map<core.String, core.dynamic>))
              .toList(),
          nextPageToken: json_['nextPageToken'] as core.String?,
          unreachable: (json_['unreachable'] as core.List?)
              ?.map((value) => value as core.String)
              .toList(),
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (backups != null) 'backups': backups!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (unreachable != null) 'unreachable': unreachable!,
      };
}

/// Response message for ListFederations
class ListFederationsResponse {
  /// The services in the specified location.
  core.List<Federation>? federations;

  /// A token that can be sent as page_token to retrieve the next page.
  ///
  /// If this field is omitted, there are no subsequent pages.
  core.String? nextPageToken;

  /// Locations that could not be reached.
  core.List<core.String>? unreachable;

  ListFederationsResponse({
    this.federations,
    this.nextPageToken,
    this.unreachable,
  });

  ListFederationsResponse.fromJson(core.Map json_)
      : this(
          federations: (json_['federations'] as core.List?)
              ?.map((value) => Federation.fromJson(
                  value as core.Map<core.String, core.dynamic>))
              .toList(),
          nextPageToken: json_['nextPageToken'] as core.String?,
          unreachable: (json_['unreachable'] as core.List?)
              ?.map((value) => value as core.String)
              .toList(),
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (federations != null) 'federations': federations!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (unreachable != null) 'unreachable': unreachable!,
      };
}

/// The response message for Locations.ListLocations.
class ListLocationsResponse {
  /// A list of locations that matches the specified filter in the request.
  core.List<Location>? locations;

  /// The standard List next-page token.
  core.String? nextPageToken;

  ListLocationsResponse({
    this.locations,
    this.nextPageToken,
  });

  ListLocationsResponse.fromJson(core.Map json_)
      : this(
          locations: (json_['locations'] as core.List?)
              ?.map((value) => Location.fromJson(
                  value as core.Map<core.String, core.dynamic>))
              .toList(),
          nextPageToken: json_['nextPageToken'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (locations != null) 'locations': locations!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
      };
}

/// Response message for DataprocMetastore.ListMetadataImports.
class ListMetadataImportsResponse {
  /// The imports in the specified service.
  core.List<MetadataImport>? metadataImports;

  /// A token that can be sent as page_token to retrieve the next page.
  ///
  /// If this field is omitted, there are no subsequent pages.
  core.String? nextPageToken;

  /// Locations that could not be reached.
  core.List<core.String>? unreachable;

  ListMetadataImportsResponse({
    this.metadataImports,
    this.nextPageToken,
    this.unreachable,
  });

  ListMetadataImportsResponse.fromJson(core.Map json_)
      : this(
          metadataImports: (json_['metadataImports'] as core.List?)
              ?.map((value) => MetadataImport.fromJson(
                  value as core.Map<core.String, core.dynamic>))
              .toList(),
          nextPageToken: json_['nextPageToken'] as core.String?,
          unreachable: (json_['unreachable'] as core.List?)
              ?.map((value) => value as core.String)
              .toList(),
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (metadataImports != null) 'metadataImports': metadataImports!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (unreachable != null) 'unreachable': unreachable!,
      };
}

/// Response message for DataprocMetastore.ListMigrationExecutions.
class ListMigrationExecutionsResponse {
  /// The migration executions on the specified service.
  core.List<MigrationExecution>? migrationExecutions;

  /// A token that can be sent as page_token to retrieve the next page.
  ///
  /// If this field is omitted, there are no subsequent pages.
  core.String? nextPageToken;

  /// Locations that could not be reached.
  core.List<core.String>? unreachable;

  ListMigrationExecutionsResponse({
    this.migrationExecutions,
    this.nextPageToken,
    this.unreachable,
  });

  ListMigrationExecutionsResponse.fromJson(core.Map json_)
      : this(
          migrationExecutions: (json_['migrationExecutions'] as core.List?)
              ?.map((value) => MigrationExecution.fromJson(
                  value as core.Map<core.String, core.dynamic>))
              .toList(),
          nextPageToken: json_['nextPageToken'] as core.String?,
          unreachable: (json_['unreachable'] as core.List?)
              ?.map((value) => value as core.String)
              .toList(),
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (migrationExecutions != null)
          'migrationExecutions': migrationExecutions!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (unreachable != null) 'unreachable': unreachable!,
      };
}

/// The response message for Operations.ListOperations.
class ListOperationsResponse {
  /// The standard List next-page token.
  core.String? nextPageToken;

  /// A list of operations that matches the specified filter in the request.
  core.List<Operation>? operations;

  ListOperationsResponse({
    this.nextPageToken,
    this.operations,
  });

  ListOperationsResponse.fromJson(core.Map json_)
      : this(
          nextPageToken: json_['nextPageToken'] as core.String?,
          operations: (json_['operations'] as core.List?)
              ?.map((value) => Operation.fromJson(
                  value as core.Map<core.String, core.dynamic>))
              .toList(),
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (operations != null) 'operations': operations!,
      };
}

/// Response message for DataprocMetastore.ListServices.
class ListServicesResponse {
  /// A token that can be sent as page_token to retrieve the next page.
  ///
  /// If this field is omitted, there are no subsequent pages.
  core.String? nextPageToken;

  /// The services in the specified location.
  core.List<Service>? services;

  /// Locations that could not be reached.
  core.List<core.String>? unreachable;

  ListServicesResponse({
    this.nextPageToken,
    this.services,
    this.unreachable,
  });

  ListServicesResponse.fromJson(core.Map json_)
      : this(
          nextPageToken: json_['nextPageToken'] as core.String?,
          services: (json_['services'] as core.List?)
              ?.map((value) => Service.fromJson(
                  value as core.Map<core.String, core.dynamic>))
              .toList(),
          unreachable: (json_['unreachable'] as core.List?)
              ?.map((value) => value as core.String)
              .toList(),
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (services != null) 'services': services!,
        if (unreachable != null) 'unreachable': unreachable!,
      };
}

/// A resource that represents a Google Cloud location.
typedef Location = $Location01;

/// Maintenance window.
///
/// This specifies when Dataproc Metastore may perform system maintenance
/// operation to the service.
class MaintenanceWindow {
  /// The day of week, when the window starts.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "DAY_OF_WEEK_UNSPECIFIED" : The day of the week is unspecified.
  /// - "MONDAY" : Monday
  /// - "TUESDAY" : Tuesday
  /// - "WEDNESDAY" : Wednesday
  /// - "THURSDAY" : Thursday
  /// - "FRIDAY" : Friday
  /// - "SATURDAY" : Saturday
  /// - "SUNDAY" : Sunday
  core.String? dayOfWeek;

  /// The hour of day (0-23) when the window starts.
  ///
  /// Optional.
  core.int? hourOfDay;

  MaintenanceWindow({
    this.dayOfWeek,
    this.hourOfDay,
  });

  MaintenanceWindow.fromJson(core.Map json_)
      : this(
          dayOfWeek: json_['dayOfWeek'] as core.String?,
          hourOfDay: json_['hourOfDay'] as core.int?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (dayOfWeek != null) 'dayOfWeek': dayOfWeek!,
        if (hourOfDay != null) 'hourOfDay': hourOfDay!,
      };
}

/// The details of a metadata export operation.
class MetadataExport {
  /// The type of the database dump.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "TYPE_UNSPECIFIED" : The type of the database dump is unknown.
  /// - "MYSQL" : Database dump is a MySQL dump file.
  /// - "AVRO" : Database dump contains Avro files.
  core.String? databaseDumpType;

  /// A Cloud Storage URI of a folder that metadata are exported to, in the form
  /// of gs:////, where is automatically generated.
  ///
  /// Output only.
  core.String? destinationGcsUri;

  /// The time when the export ended.
  ///
  /// Output only.
  core.String? endTime;

  /// The time when the export started.
  ///
  /// Output only.
  core.String? startTime;

  /// The current state of the export.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : The state of the metadata export is unknown.
  /// - "RUNNING" : The metadata export is running.
  /// - "SUCCEEDED" : The metadata export completed successfully.
  /// - "FAILED" : The metadata export failed.
  /// - "CANCELLED" : The metadata export is cancelled.
  core.String? state;

  MetadataExport({
    this.databaseDumpType,
    this.destinationGcsUri,
    this.endTime,
    this.startTime,
    this.state,
  });

  MetadataExport.fromJson(core.Map json_)
      : this(
          databaseDumpType: json_['databaseDumpType'] as core.String?,
          destinationGcsUri: json_['destinationGcsUri'] as core.String?,
          endTime: json_['endTime'] as core.String?,
          startTime: json_['startTime'] as core.String?,
          state: json_['state'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (databaseDumpType != null) 'databaseDumpType': databaseDumpType!,
        if (destinationGcsUri != null) 'destinationGcsUri': destinationGcsUri!,
        if (endTime != null) 'endTime': endTime!,
        if (startTime != null) 'startTime': startTime!,
        if (state != null) 'state': state!,
      };
}

/// A metastore resource that imports metadata.
class MetadataImport {
  /// The time when the metadata import was started.
  ///
  /// Output only.
  core.String? createTime;

  /// A database dump from a pre-existing metastore's database.
  ///
  /// Immutable.
  DatabaseDump? databaseDump;

  /// The description of the metadata import.
  ///
  /// Optional.
  core.String? description;

  /// The time when the metadata import finished.
  ///
  /// Output only.
  core.String? endTime;

  /// Identifier.
  ///
  /// The relative resource name of the metadata import, of the
  /// form:projects/{project_number}/locations/{location_id}/services/{service_id}/metadataImports/{metadata_import_id}.
  ///
  /// Immutable.
  core.String? name;

  /// The current state of the metadata import.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : The state of the metadata import is unknown.
  /// - "RUNNING" : The metadata import is running.
  /// - "SUCCEEDED" : The metadata import completed successfully.
  /// - "UPDATING" : The metadata import is being updated.
  /// - "FAILED" : The metadata import failed, and attempted metadata changes
  /// were rolled back.
  core.String? state;

  /// The time when the metadata import was last updated.
  ///
  /// Output only.
  core.String? updateTime;

  MetadataImport({
    this.createTime,
    this.databaseDump,
    this.description,
    this.endTime,
    this.name,
    this.state,
    this.updateTime,
  });

  MetadataImport.fromJson(core.Map json_)
      : this(
          createTime: json_['createTime'] as core.String?,
          databaseDump: json_.containsKey('databaseDump')
              ? DatabaseDump.fromJson(
                  json_['databaseDump'] as core.Map<core.String, core.dynamic>)
              : null,
          description: json_['description'] as core.String?,
          endTime: json_['endTime'] as core.String?,
          name: json_['name'] as core.String?,
          state: json_['state'] as core.String?,
          updateTime: json_['updateTime'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (createTime != null) 'createTime': createTime!,
        if (databaseDump != null) 'databaseDump': databaseDump!,
        if (description != null) 'description': description!,
        if (endTime != null) 'endTime': endTime!,
        if (name != null) 'name': name!,
        if (state != null) 'state': state!,
        if (updateTime != null) 'updateTime': updateTime!,
      };
}

/// Specifies how metastore metadata should be integrated with external
/// services.
class MetadataIntegration {
  /// The integration config for the Data Catalog service.
  ///
  /// Optional.
  DataCatalogConfig? dataCatalogConfig;

  MetadataIntegration({
    this.dataCatalogConfig,
  });

  MetadataIntegration.fromJson(core.Map json_)
      : this(
          dataCatalogConfig: json_.containsKey('dataCatalogConfig')
              ? DataCatalogConfig.fromJson(json_['dataCatalogConfig']
                  as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (dataCatalogConfig != null) 'dataCatalogConfig': dataCatalogConfig!,
      };
}

/// The metadata management activities of the metastore service.
class MetadataManagementActivity {
  /// The latest metadata exports of the metastore service.
  ///
  /// Output only.
  core.List<MetadataExport>? metadataExports;

  /// The latest restores of the metastore service.
  ///
  /// Output only.
  core.List<Restore>? restores;

  MetadataManagementActivity({
    this.metadataExports,
    this.restores,
  });

  MetadataManagementActivity.fromJson(core.Map json_)
      : this(
          metadataExports: (json_['metadataExports'] as core.List?)
              ?.map((value) => MetadataExport.fromJson(
                  value as core.Map<core.String, core.dynamic>))
              .toList(),
          restores: (json_['restores'] as core.List?)
              ?.map((value) => Restore.fromJson(
                  value as core.Map<core.String, core.dynamic>))
              .toList(),
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (metadataExports != null) 'metadataExports': metadataExports!,
        if (restores != null) 'restores': restores!,
      };
}

/// The details of a migration execution resource.
class MigrationExecution {
  /// Configuration information specific to migrating from self-managed hive
  /// metastore on Google Cloud using Cloud SQL as the backend database to
  /// Dataproc Metastore.
  CloudSQLMigrationConfig? cloudSqlMigrationConfig;

  /// The time when the migration execution was started.
  ///
  /// Output only.
  core.String? createTime;

  /// The time when the migration execution finished.
  ///
  /// Output only.
  core.String? endTime;

  /// The relative resource name of the migration execution, in the following
  /// form:
  /// projects/{project_number}/locations/{location_id}/services/{service_id}/migrationExecutions/{migration_execution_id}
  ///
  /// Output only.
  core.String? name;

  /// The current phase of the migration execution.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "PHASE_UNSPECIFIED" : The phase of the migration execution is unknown.
  /// - "REPLICATION" : Replication phase refers to the migration phase when
  /// Dataproc Metastore is running a pipeline to replicate changes in the
  /// customer database to its backend database. During this phase, Dataproc
  /// Metastore uses the customer database as the hive metastore backend
  /// database.
  /// - "CUTOVER" : Cutover phase refers to the migration phase when Dataproc
  /// Metastore switches to using its own backend database. Migration enters
  /// this phase when customer is done migrating all their clusters/workloads to
  /// Dataproc Metastore and triggers CompleteMigration.
  core.String? phase;

  /// The current state of the migration execution.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : The state of the migration execution is unknown.
  /// - "STARTING" : The migration execution is starting.
  /// - "RUNNING" : The migration execution is running.
  /// - "CANCELLING" : The migration execution is in the process of being
  /// cancelled.
  /// - "AWAITING_USER_ACTION" : The migration execution is awaiting user
  /// action.
  /// - "SUCCEEDED" : The migration execution has completed successfully.
  /// - "FAILED" : The migration execution has failed.
  /// - "CANCELLED" : The migration execution is cancelled.
  /// - "DELETING" : The migration execution is being deleted.
  core.String? state;

  /// Additional information about the current state of the migration execution.
  ///
  /// Output only.
  core.String? stateMessage;

  MigrationExecution({
    this.cloudSqlMigrationConfig,
    this.createTime,
    this.endTime,
    this.name,
    this.phase,
    this.state,
    this.stateMessage,
  });

  MigrationExecution.fromJson(core.Map json_)
      : this(
          cloudSqlMigrationConfig: json_.containsKey('cloudSqlMigrationConfig')
              ? CloudSQLMigrationConfig.fromJson(
                  json_['cloudSqlMigrationConfig']
                      as core.Map<core.String, core.dynamic>)
              : null,
          createTime: json_['createTime'] as core.String?,
          endTime: json_['endTime'] as core.String?,
          name: json_['name'] as core.String?,
          phase: json_['phase'] as core.String?,
          state: json_['state'] as core.String?,
          stateMessage: json_['stateMessage'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (cloudSqlMigrationConfig != null)
          'cloudSqlMigrationConfig': cloudSqlMigrationConfig!,
        if (createTime != null) 'createTime': createTime!,
        if (endTime != null) 'endTime': endTime!,
        if (name != null) 'name': name!,
        if (phase != null) 'phase': phase!,
        if (state != null) 'state': state!,
        if (stateMessage != null) 'stateMessage': stateMessage!,
      };
}

/// Request message for DataprocMetastore.MoveTableToDatabase.
typedef MoveTableToDatabaseRequest = $MoveTableToDatabaseRequest;

/// Network configuration for the Dataproc Metastore service.
class NetworkConfig {
  /// The consumer-side network configuration for the Dataproc Metastore
  /// instance.
  ///
  /// Immutable.
  core.List<Consumer>? consumers;

  NetworkConfig({
    this.consumers,
  });

  NetworkConfig.fromJson(core.Map json_)
      : this(
          consumers: (json_['consumers'] as core.List?)
              ?.map((value) => Consumer.fromJson(
                  value as core.Map<core.String, core.dynamic>))
              .toList(),
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (consumers != null) 'consumers': consumers!,
      };
}

/// This resource represents a long-running operation that is the result of a
/// network API call.
class Operation {
  /// If the value is false, it means the operation is still in progress.
  ///
  /// If true, the operation is completed, and either error or response is
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
  /// If you use the default HTTP mapping, the name should be a resource name
  /// ending with operations/{unique_id}.
  core.String? name;

  /// The normal, successful response of the operation.
  ///
  /// If the original method returns no data on success, such as Delete, the
  /// response is google.protobuf.Empty. If the original method is standard
  /// Get/Create/Update, the response should be the resource. For other methods,
  /// the response should have the type XxxResponse, where Xxx is the original
  /// method name. For example, if the original method name is TakeSnapshot(),
  /// the inferred response type is TakeSnapshotResponse.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object?>? response;

  Operation({
    this.done,
    this.error,
    this.metadata,
    this.name,
    this.response,
  });

  Operation.fromJson(core.Map json_)
      : this(
          done: json_['done'] as core.bool?,
          error: json_.containsKey('error')
              ? Status.fromJson(
                  json_['error'] as core.Map<core.String, core.dynamic>)
              : null,
          metadata: json_.containsKey('metadata')
              ? json_['metadata'] as core.Map<core.String, core.dynamic>
              : null,
          name: json_['name'] as core.String?,
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

/// An Identity and Access Management (IAM) policy, which specifies access
/// controls for Google Cloud resources.A Policy is a collection of bindings.
///
/// A binding binds one or more members, or principals, to a single role.
/// Principals can be user accounts, service accounts, Google groups, and
/// domains (such as G Suite). A role is a named list of permissions; each role
/// can be an IAM predefined role or a user-created custom role.For some types
/// of Google Cloud resources, a binding can also specify a condition, which is
/// a logical expression that allows access to a resource only if the expression
/// evaluates to true. A condition can add constraints based on attributes of
/// the request, the resource, or both. To learn which resources support
/// conditions in their IAM policies, see the IAM documentation
/// (https://cloud.google.com/iam/help/conditions/resource-policies).JSON
/// example: { "bindings": \[ { "role":
/// "roles/resourcemanager.organizationAdmin", "members": \[
/// "user:mike@example.com", "group:admins@example.com", "domain:google.com",
/// "serviceAccount:my-project-id@appspot.gserviceaccount.com" \] }, { "role":
/// "roles/resourcemanager.organizationViewer", "members": \[
/// "user:eve@example.com" \], "condition": { "title": "expirable access",
/// "description": "Does not grant access after Sep 2020", "expression":
/// "request.time \< timestamp('2020-10-01T00:00:00.000Z')", } } \], "etag":
/// "BwWWja0YfJA=", "version": 3 } YAML example: bindings: - members: -
/// user:mike@example.com - group:admins@example.com - domain:google.com -
/// serviceAccount:my-project-id@appspot.gserviceaccount.com role:
/// roles/resourcemanager.organizationAdmin - members: - user:eve@example.com
/// role: roles/resourcemanager.organizationViewer condition: title: expirable
/// access description: Does not grant access after Sep 2020 expression:
/// request.time \< timestamp('2020-10-01T00:00:00.000Z') etag: BwWWja0YfJA=
/// version: 3 For a description of IAM and its features, see the IAM
/// documentation (https://cloud.google.com/iam/docs/).
class Policy {
  /// Specifies cloud audit logging configuration for this policy.
  core.List<AuditConfig>? auditConfigs;

  /// Associates a list of members, or principals, with a role.
  ///
  /// Optionally, may specify a condition that determines how and when the
  /// bindings are applied. Each of the bindings must contain at least one
  /// principal.The bindings in a Policy can refer to up to 1,500 principals; up
  /// to 250 of these principals can be Google groups. Each occurrence of a
  /// principal counts towards these limits. For example, if the bindings grant
  /// 50 different roles to user:alice@example.com, and not to any other
  /// principal, then you can add another 1,450 principals to the bindings in
  /// the Policy.
  core.List<Binding>? bindings;

  /// etag is used for optimistic concurrency control as a way to help prevent
  /// simultaneous updates of a policy from overwriting each other.
  ///
  /// It is strongly suggested that systems make use of the etag in the
  /// read-modify-write cycle to perform policy updates in order to avoid race
  /// conditions: An etag is returned in the response to getIamPolicy, and
  /// systems are expected to put that etag in the request to setIamPolicy to
  /// ensure that their change will be applied to the same version of the
  /// policy.Important: If you use IAM Conditions, you must include the etag
  /// field whenever you call setIamPolicy. If you omit this field, then IAM
  /// allows you to overwrite a version 3 policy with a version 1 policy, and
  /// all of the conditions in the version 3 policy are lost.
  core.String? etag;
  core.List<core.int> get etagAsBytes => convert.base64.decode(etag!);

  set etagAsBytes(core.List<core.int> bytes_) {
    etag =
        convert.base64.encode(bytes_).replaceAll('/', '_').replaceAll('+', '-');
  }

  /// Specifies the format of the policy.Valid values are 0, 1, and 3.
  ///
  /// Requests that specify an invalid value are rejected.Any operation that
  /// affects conditional role bindings must specify version 3. This requirement
  /// applies to the following operations: Getting a policy that includes a
  /// conditional role binding Adding a conditional role binding to a policy
  /// Changing a conditional role binding in a policy Removing any role binding,
  /// with or without a condition, from a policy that includes
  /// conditionsImportant: If you use IAM Conditions, you must include the etag
  /// field whenever you call setIamPolicy. If you omit this field, then IAM
  /// allows you to overwrite a version 3 policy with a version 1 policy, and
  /// all of the conditions in the version 3 policy are lost.If a policy does
  /// not include any conditions, operations on that policy may specify any
  /// valid version or leave the field unset.To learn which resources support
  /// conditions in their IAM policies, see the IAM documentation
  /// (https://cloud.google.com/iam/help/conditions/resource-policies).
  core.int? version;

  Policy({
    this.auditConfigs,
    this.bindings,
    this.etag,
    this.version,
  });

  Policy.fromJson(core.Map json_)
      : this(
          auditConfigs: (json_['auditConfigs'] as core.List?)
              ?.map((value) => AuditConfig.fromJson(
                  value as core.Map<core.String, core.dynamic>))
              .toList(),
          bindings: (json_['bindings'] as core.List?)
              ?.map((value) => Binding.fromJson(
                  value as core.Map<core.String, core.dynamic>))
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

/// Request message for DataprocMetastore.QueryMetadata.
typedef QueryMetadataRequest = $QueryMetadataRequest;

/// The details of a metadata restore operation.
class Restore {
  /// The relative resource name of the metastore service backup to restore
  /// from, in the following
  /// form:projects/{project_id}/locations/{location_id}/services/{service_id}/backups/{backup_id}.
  ///
  /// Output only.
  core.String? backup;

  /// A Cloud Storage URI specifying where the backup artifacts are stored, in
  /// the format gs:///.
  ///
  /// Optional.
  core.String? backupLocation;

  /// The restore details containing the revision of the service to be restored
  /// to, in format of JSON.
  ///
  /// Output only.
  core.String? details;

  /// The time when the restore ended.
  ///
  /// Output only.
  core.String? endTime;

  /// The time when the restore started.
  ///
  /// Output only.
  core.String? startTime;

  /// The current state of the restore.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : The state of the metadata restore is unknown.
  /// - "RUNNING" : The metadata restore is running.
  /// - "SUCCEEDED" : The metadata restore completed successfully.
  /// - "FAILED" : The metadata restore failed.
  /// - "CANCELLED" : The metadata restore is cancelled.
  core.String? state;

  /// The type of restore.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "RESTORE_TYPE_UNSPECIFIED" : The restore type is unknown.
  /// - "FULL" : The service's metadata and configuration are restored.
  /// - "METADATA_ONLY" : Only the service's metadata is restored.
  core.String? type;

  Restore({
    this.backup,
    this.backupLocation,
    this.details,
    this.endTime,
    this.startTime,
    this.state,
    this.type,
  });

  Restore.fromJson(core.Map json_)
      : this(
          backup: json_['backup'] as core.String?,
          backupLocation: json_['backupLocation'] as core.String?,
          details: json_['details'] as core.String?,
          endTime: json_['endTime'] as core.String?,
          startTime: json_['startTime'] as core.String?,
          state: json_['state'] as core.String?,
          type: json_['type'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (backup != null) 'backup': backup!,
        if (backupLocation != null) 'backupLocation': backupLocation!,
        if (details != null) 'details': details!,
        if (endTime != null) 'endTime': endTime!,
        if (startTime != null) 'startTime': startTime!,
        if (state != null) 'state': state!,
        if (type != null) 'type': type!,
      };
}

/// Request message for DataprocMetastore.RestoreService.
typedef RestoreServiceRequest = $RestoreServiceRequest;

/// Represents the scaling configuration of a metastore service.
class ScalingConfig {
  /// The autoscaling configuration.
  ///
  /// Optional.
  AutoscalingConfig? autoscalingConfig;

  /// An enum of readable instance sizes, with each instance size mapping to a
  /// float value (e.g. InstanceSize.EXTRA_SMALL = scaling_factor(0.1))
  /// Possible string values are:
  /// - "INSTANCE_SIZE_UNSPECIFIED" : Unspecified instance size
  /// - "EXTRA_SMALL" : Extra small instance size, maps to a scaling factor of
  /// 0.1.
  /// - "SMALL" : Small instance size, maps to a scaling factor of 0.5.
  /// - "MEDIUM" : Medium instance size, maps to a scaling factor of 1.0.
  /// - "LARGE" : Large instance size, maps to a scaling factor of 3.0.
  /// - "EXTRA_LARGE" : Extra large instance size, maps to a scaling factor of
  /// 6.0.
  core.String? instanceSize;

  /// Scaling factor, increments of 0.1 for values less than 1.0, and increments
  /// of 1.0 for values greater than 1.0.
  core.double? scalingFactor;

  ScalingConfig({
    this.autoscalingConfig,
    this.instanceSize,
    this.scalingFactor,
  });

  ScalingConfig.fromJson(core.Map json_)
      : this(
          autoscalingConfig: json_.containsKey('autoscalingConfig')
              ? AutoscalingConfig.fromJson(json_['autoscalingConfig']
                  as core.Map<core.String, core.dynamic>)
              : null,
          instanceSize: json_['instanceSize'] as core.String?,
          scalingFactor: (json_['scalingFactor'] as core.num?)?.toDouble(),
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (autoscalingConfig != null) 'autoscalingConfig': autoscalingConfig!,
        if (instanceSize != null) 'instanceSize': instanceSize!,
        if (scalingFactor != null) 'scalingFactor': scalingFactor!,
      };
}

/// This specifies the configuration of scheduled backup.
class ScheduledBackup {
  /// A Cloud Storage URI of a folder, in the format gs:///.
  ///
  /// A sub-folder containing backup files will be stored below it.
  ///
  /// Optional.
  core.String? backupLocation;

  /// The scheduled interval in Cron format, see
  /// https://en.wikipedia.org/wiki/Cron The default is empty: scheduled backup
  /// is not enabled.
  ///
  /// Must be specified to enable scheduled backups.
  ///
  /// Optional.
  core.String? cronSchedule;

  /// Defines whether the scheduled backup is enabled.
  ///
  /// The default value is false.
  ///
  /// Optional.
  core.bool? enabled;

  /// The details of the latest scheduled backup.
  ///
  /// Output only.
  LatestBackup? latestBackup;

  /// The time when the next backups execution is scheduled to start.
  ///
  /// Output only.
  core.String? nextScheduledTime;

  /// Specifies the time zone to be used when interpreting cron_schedule.
  ///
  /// Must be a time zone name from the time zone database
  /// (https://en.wikipedia.org/wiki/List_of_tz_database_time_zones), e.g.
  /// America/Los_Angeles or Africa/Abidjan. If left unspecified, the default is
  /// UTC.
  ///
  /// Optional.
  core.String? timeZone;

  ScheduledBackup({
    this.backupLocation,
    this.cronSchedule,
    this.enabled,
    this.latestBackup,
    this.nextScheduledTime,
    this.timeZone,
  });

  ScheduledBackup.fromJson(core.Map json_)
      : this(
          backupLocation: json_['backupLocation'] as core.String?,
          cronSchedule: json_['cronSchedule'] as core.String?,
          enabled: json_['enabled'] as core.bool?,
          latestBackup: json_.containsKey('latestBackup')
              ? LatestBackup.fromJson(
                  json_['latestBackup'] as core.Map<core.String, core.dynamic>)
              : null,
          nextScheduledTime: json_['nextScheduledTime'] as core.String?,
          timeZone: json_['timeZone'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (backupLocation != null) 'backupLocation': backupLocation!,
        if (cronSchedule != null) 'cronSchedule': cronSchedule!,
        if (enabled != null) 'enabled': enabled!,
        if (latestBackup != null) 'latestBackup': latestBackup!,
        if (nextScheduledTime != null) 'nextScheduledTime': nextScheduledTime!,
        if (timeZone != null) 'timeZone': timeZone!,
      };
}

/// A securely stored value.
class Secret {
  /// The relative resource name of a Secret Manager secret version, in the
  /// following
  /// form:projects/{project_number}/secrets/{secret_id}/versions/{version_id}.
  ///
  /// Optional.
  core.String? cloudSecret;

  Secret({
    this.cloudSecret,
  });

  Secret.fromJson(core.Map json_)
      : this(
          cloudSecret: json_['cloudSecret'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (cloudSecret != null) 'cloudSecret': cloudSecret!,
      };
}

/// A managed metastore service that serves metadata queries.
class Service {
  /// A Cloud Storage URI (starting with gs://) that specifies where artifacts
  /// related to the metastore service are stored.
  ///
  /// Output only.
  core.String? artifactGcsUri;

  /// The time when the metastore service was created.
  ///
  /// Output only.
  core.String? createTime;

  /// The database type that the Metastore service stores its data.
  ///
  /// Immutable.
  /// Possible string values are:
  /// - "DATABASE_TYPE_UNSPECIFIED" : The DATABASE_TYPE is not set.
  /// - "MYSQL" : MySQL is used to persist the metastore data.
  /// - "SPANNER" : Spanner is used to persist the metastore data.
  core.String? databaseType;

  /// Indicates if the dataproc metastore should be protected against accidental
  /// deletions.
  ///
  /// Optional.
  core.bool? deletionProtection;

  /// Information used to configure the Dataproc Metastore service to encrypt
  /// customer data at rest.
  ///
  /// Cannot be updated.
  ///
  /// Immutable.
  EncryptionConfig? encryptionConfig;

  /// The URI of the endpoint used to access the metastore service.
  ///
  /// Output only.
  core.String? endpointUri;

  /// Configuration information specific to running Hive metastore software as
  /// the metastore service.
  HiveMetastoreConfig? hiveMetastoreConfig;

  /// User-defined labels for the metastore service.
  core.Map<core.String, core.String>? labels;

  /// The one hour maintenance window of the metastore service.
  ///
  /// This specifies when the service can be restarted for maintenance purposes
  /// in UTC time. Maintenance window is not needed for services with the
  /// SPANNER database type.
  ///
  /// Optional.
  MaintenanceWindow? maintenanceWindow;

  /// The setting that defines how metastore metadata should be integrated with
  /// external services and systems.
  ///
  /// Optional.
  MetadataIntegration? metadataIntegration;

  /// The metadata management activities of the metastore service.
  ///
  /// Output only.
  MetadataManagementActivity? metadataManagementActivity;

  /// Identifier.
  ///
  /// The relative resource name of the metastore service, in the following
  /// format:projects/{project_number}/locations/{location_id}/services/{service_id}.
  ///
  /// Immutable.
  core.String? name;

  /// The relative resource name of the VPC network on which the instance can be
  /// accessed.
  ///
  /// It is specified in the following
  /// form:projects/{project_number}/global/networks/{network_id}.
  ///
  /// Immutable.
  core.String? network;

  /// The configuration specifying the network settings for the Dataproc
  /// Metastore service.
  ///
  /// Optional.
  NetworkConfig? networkConfig;

  /// The TCP port at which the metastore service is reached.
  ///
  /// Default: 9083.
  ///
  /// Optional.
  core.int? port;

  /// The release channel of the service.
  ///
  /// If unspecified, defaults to STABLE.
  ///
  /// Immutable.
  /// Possible string values are:
  /// - "RELEASE_CHANNEL_UNSPECIFIED" : Release channel is not specified.
  /// - "CANARY" : The CANARY release channel contains the newest features,
  /// which may be unstable and subject to unresolved issues with no known
  /// workarounds. Services using the CANARY release channel are not subject to
  /// any SLAs.
  /// - "STABLE" : The STABLE release channel contains features that are
  /// considered stable and have been validated for production use.
  core.String? releaseChannel;

  /// Scaling configuration of the metastore service.
  ///
  /// Optional.
  ScalingConfig? scalingConfig;

  /// The configuration of scheduled backup for the metastore service.
  ///
  /// Optional.
  ScheduledBackup? scheduledBackup;

  /// The current state of the metastore service.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : The state of the metastore service is unknown.
  /// - "CREATING" : The metastore service is in the process of being created.
  /// - "ACTIVE" : The metastore service is running and ready to serve queries.
  /// - "SUSPENDING" : The metastore service is entering suspension. Its
  /// query-serving availability may cease unexpectedly.
  /// - "SUSPENDED" : The metastore service is suspended and unable to serve
  /// queries.
  /// - "UPDATING" : The metastore service is being updated. It remains usable
  /// but cannot accept additional update requests or be deleted at this time.
  /// - "DELETING" : The metastore service is undergoing deletion. It cannot be
  /// used.
  /// - "ERROR" : The metastore service has encountered an error and cannot be
  /// used. The metastore service should be deleted.
  /// - "AUTOSCALING" : The Dataproc Metastore service 2 is being scaled up or
  /// down.
  /// - "MIGRATING" : The metastore service is processing a managed migration.
  core.String? state;

  /// Additional information about the current state of the metastore service,
  /// if available.
  ///
  /// Output only.
  core.String? stateMessage;

  /// The configuration specifying telemetry settings for the Dataproc Metastore
  /// service.
  ///
  /// If unspecified defaults to JSON.
  ///
  /// Optional.
  TelemetryConfig? telemetryConfig;

  /// The tier of the service.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "TIER_UNSPECIFIED" : The tier is not set.
  /// - "DEVELOPER" : The developer tier provides limited scalability and no
  /// fault tolerance. Good for low-cost proof-of-concept.
  /// - "ENTERPRISE" : The enterprise tier provides multi-zone high
  /// availability, and sufficient scalability for enterprise-level Dataproc
  /// Metastore workloads.
  core.String? tier;

  /// The globally unique resource identifier of the metastore service.
  ///
  /// Output only.
  core.String? uid;

  /// The time when the metastore service was last updated.
  ///
  /// Output only.
  core.String? updateTime;

  Service({
    this.artifactGcsUri,
    this.createTime,
    this.databaseType,
    this.deletionProtection,
    this.encryptionConfig,
    this.endpointUri,
    this.hiveMetastoreConfig,
    this.labels,
    this.maintenanceWindow,
    this.metadataIntegration,
    this.metadataManagementActivity,
    this.name,
    this.network,
    this.networkConfig,
    this.port,
    this.releaseChannel,
    this.scalingConfig,
    this.scheduledBackup,
    this.state,
    this.stateMessage,
    this.telemetryConfig,
    this.tier,
    this.uid,
    this.updateTime,
  });

  Service.fromJson(core.Map json_)
      : this(
          artifactGcsUri: json_['artifactGcsUri'] as core.String?,
          createTime: json_['createTime'] as core.String?,
          databaseType: json_['databaseType'] as core.String?,
          deletionProtection: json_['deletionProtection'] as core.bool?,
          encryptionConfig: json_.containsKey('encryptionConfig')
              ? EncryptionConfig.fromJson(json_['encryptionConfig']
                  as core.Map<core.String, core.dynamic>)
              : null,
          endpointUri: json_['endpointUri'] as core.String?,
          hiveMetastoreConfig: json_.containsKey('hiveMetastoreConfig')
              ? HiveMetastoreConfig.fromJson(json_['hiveMetastoreConfig']
                  as core.Map<core.String, core.dynamic>)
              : null,
          labels:
              (json_['labels'] as core.Map<core.String, core.dynamic>?)?.map(
            (key, value) => core.MapEntry(
              key,
              value as core.String,
            ),
          ),
          maintenanceWindow: json_.containsKey('maintenanceWindow')
              ? MaintenanceWindow.fromJson(json_['maintenanceWindow']
                  as core.Map<core.String, core.dynamic>)
              : null,
          metadataIntegration: json_.containsKey('metadataIntegration')
              ? MetadataIntegration.fromJson(json_['metadataIntegration']
                  as core.Map<core.String, core.dynamic>)
              : null,
          metadataManagementActivity:
              json_.containsKey('metadataManagementActivity')
                  ? MetadataManagementActivity.fromJson(
                      json_['metadataManagementActivity']
                          as core.Map<core.String, core.dynamic>)
                  : null,
          name: json_['name'] as core.String?,
          network: json_['network'] as core.String?,
          networkConfig: json_.containsKey('networkConfig')
              ? NetworkConfig.fromJson(
                  json_['networkConfig'] as core.Map<core.String, core.dynamic>)
              : null,
          port: json_['port'] as core.int?,
          releaseChannel: json_['releaseChannel'] as core.String?,
          scalingConfig: json_.containsKey('scalingConfig')
              ? ScalingConfig.fromJson(
                  json_['scalingConfig'] as core.Map<core.String, core.dynamic>)
              : null,
          scheduledBackup: json_.containsKey('scheduledBackup')
              ? ScheduledBackup.fromJson(json_['scheduledBackup']
                  as core.Map<core.String, core.dynamic>)
              : null,
          state: json_['state'] as core.String?,
          stateMessage: json_['stateMessage'] as core.String?,
          telemetryConfig: json_.containsKey('telemetryConfig')
              ? TelemetryConfig.fromJson(json_['telemetryConfig']
                  as core.Map<core.String, core.dynamic>)
              : null,
          tier: json_['tier'] as core.String?,
          uid: json_['uid'] as core.String?,
          updateTime: json_['updateTime'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (artifactGcsUri != null) 'artifactGcsUri': artifactGcsUri!,
        if (createTime != null) 'createTime': createTime!,
        if (databaseType != null) 'databaseType': databaseType!,
        if (deletionProtection != null)
          'deletionProtection': deletionProtection!,
        if (encryptionConfig != null) 'encryptionConfig': encryptionConfig!,
        if (endpointUri != null) 'endpointUri': endpointUri!,
        if (hiveMetastoreConfig != null)
          'hiveMetastoreConfig': hiveMetastoreConfig!,
        if (labels != null) 'labels': labels!,
        if (maintenanceWindow != null) 'maintenanceWindow': maintenanceWindow!,
        if (metadataIntegration != null)
          'metadataIntegration': metadataIntegration!,
        if (metadataManagementActivity != null)
          'metadataManagementActivity': metadataManagementActivity!,
        if (name != null) 'name': name!,
        if (network != null) 'network': network!,
        if (networkConfig != null) 'networkConfig': networkConfig!,
        if (port != null) 'port': port!,
        if (releaseChannel != null) 'releaseChannel': releaseChannel!,
        if (scalingConfig != null) 'scalingConfig': scalingConfig!,
        if (scheduledBackup != null) 'scheduledBackup': scheduledBackup!,
        if (state != null) 'state': state!,
        if (stateMessage != null) 'stateMessage': stateMessage!,
        if (telemetryConfig != null) 'telemetryConfig': telemetryConfig!,
        if (tier != null) 'tier': tier!,
        if (uid != null) 'uid': uid!,
        if (updateTime != null) 'updateTime': updateTime!,
      };
}

/// Request message for SetIamPolicy method.
class SetIamPolicyRequest {
  /// REQUIRED: The complete policy to be applied to the resource.
  ///
  /// The size of the policy is limited to a few 10s of KB. An empty policy is a
  /// valid policy but certain Google Cloud services (such as Projects) might
  /// reject them.
  Policy? policy;

  /// OPTIONAL: A FieldMask specifying which fields of the policy to modify.
  ///
  /// Only the fields in the mask will be modified. If no mask is provided, the
  /// following default mask is used:paths: "bindings, etag"
  core.String? updateMask;

  SetIamPolicyRequest({
    this.policy,
    this.updateMask,
  });

  SetIamPolicyRequest.fromJson(core.Map json_)
      : this(
          policy: json_.containsKey('policy')
              ? Policy.fromJson(
                  json_['policy'] as core.Map<core.String, core.dynamic>)
              : null,
          updateMask: json_['updateMask'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (policy != null) 'policy': policy!,
        if (updateMask != null) 'updateMask': updateMask!,
      };
}

/// Request message for DataprocMetastore.StartMigration.
class StartMigrationRequest {
  /// The configuration details for the migration.
  ///
  /// Required.
  MigrationExecution? migrationExecution;

  /// A request ID.
  ///
  /// Specify a unique request ID to allow the server to ignore the request if
  /// it has completed. The server will ignore subsequent requests that provide
  /// a duplicate request ID for at least 60 minutes after the first request.For
  /// example, if an initial request times out, followed by another request with
  /// the same request ID, the server ignores the second request to prevent the
  /// creation of duplicate commitments.The request ID must be a valid UUID
  /// (https://en.wikipedia.org/wiki/Universally_unique_identifier#Format) A
  /// zero UUID (00000000-0000-0000-0000-000000000000) is not supported.
  ///
  /// Optional.
  core.String? requestId;

  StartMigrationRequest({
    this.migrationExecution,
    this.requestId,
  });

  StartMigrationRequest.fromJson(core.Map json_)
      : this(
          migrationExecution: json_.containsKey('migrationExecution')
              ? MigrationExecution.fromJson(json_['migrationExecution']
                  as core.Map<core.String, core.dynamic>)
              : null,
          requestId: json_['requestId'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (migrationExecution != null)
          'migrationExecution': migrationExecution!,
        if (requestId != null) 'requestId': requestId!,
      };
}

/// The Status type defines a logical error model that is suitable for different
/// programming environments, including REST APIs and RPC APIs.
///
/// It is used by gRPC (https://github.com/grpc). Each Status message contains
/// three pieces of data: error code, error message, and error details.You can
/// find out more about this error model and how to work with it in the API
/// Design Guide (https://cloud.google.com/apis/design/errors).
typedef Status = $Status00;

/// Telemetry Configuration for the Dataproc Metastore service.
class TelemetryConfig {
  /// The output format of the Dataproc Metastore service's logs.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "LOG_FORMAT_UNSPECIFIED" : The LOG_FORMAT is not set.
  /// - "LEGACY" : Logging output uses the legacy textPayload format.
  /// - "JSON" : Logging output uses the jsonPayload format.
  core.String? logFormat;

  TelemetryConfig({
    this.logFormat,
  });

  TelemetryConfig.fromJson(core.Map json_)
      : this(
          logFormat: json_['logFormat'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (logFormat != null) 'logFormat': logFormat!,
      };
}

/// Request message for TestIamPermissions method.
typedef TestIamPermissionsRequest = $TestIamPermissionsRequest01;

/// Response message for TestIamPermissions method.
typedef TestIamPermissionsResponse = $TestIamPermissionsResponse;
