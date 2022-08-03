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

/// Dataproc Metastore API - v1beta
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
library metastore.v1beta;

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

    final url_ = 'v1beta/' + core.Uri.encodeFull('$name');

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

    final url_ = 'v1beta/' + core.Uri.encodeFull('$name') + '/locations';

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

    final url_ = 'v1beta/' + core.Uri.encodeFull('$parent') + '/federations';

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

    final url_ = 'v1beta/' + core.Uri.encodeFull('$name');

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

    final url_ = 'v1beta/' + core.Uri.encodeFull('$name');

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

    final url_ = 'v1beta/' + core.Uri.encodeFull('$resource') + ':getIamPolicy';

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

    final url_ = 'v1beta/' + core.Uri.encodeFull('$parent') + '/federations';

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

    final url_ = 'v1beta/' + core.Uri.encodeFull('$name');

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

    final url_ = 'v1beta/' + core.Uri.encodeFull('$resource') + ':setIamPolicy';

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
        'v1beta/' + core.Uri.encodeFull('$resource') + ':testIamPermissions';

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

    final url_ = 'v1beta/' + core.Uri.encodeFull('$name');

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

    final url_ = 'v1beta/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists operations that match the specified filter in the request.
  ///
  /// If the server doesn't support this method, it returns UNIMPLEMENTED.NOTE:
  /// the name binding allows API services to override the binding to use
  /// different resource name schemes, such as users / * /operations. To
  /// override the binding, API services can add a binding such as
  /// "/v1/{name=users / * }/operations" to their service configuration. For
  /// backwards compatibility, the default name includes the operations
  /// collection id, however overriding users must ensure the name binding is
  /// the parent resource, without the operations collection id.
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

    final url_ = 'v1beta/' + core.Uri.encodeFull('$name') + '/operations';

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

  ProjectsLocationsServicesResource(commons.ApiRequester client)
      : _requester = client;

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

    final url_ = 'v1beta/' + core.Uri.encodeFull('$parent') + '/services';

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

    final url_ = 'v1beta/' + core.Uri.encodeFull('$name');

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

    final url_ =
        'v1beta/' + core.Uri.encodeFull('$service') + ':exportMetadata';

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

    final url_ = 'v1beta/' + core.Uri.encodeFull('$name');

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

    final url_ = 'v1beta/' + core.Uri.encodeFull('$resource') + ':getIamPolicy';

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

    final url_ = 'v1beta/' + core.Uri.encodeFull('$parent') + '/services';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListServicesResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Updates the parameters of a single service.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Immutable. The relative resource name of the metastore service,
  /// of the
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

    final url_ = 'v1beta/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Removes the attached IAM policies for a resource
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [resource] - Required. The relative resource name of the dataplane
  /// resource to remove IAM policy, in the following
  /// form:projects/{project_id}/locations/{location_id}/services/{service_id}/databases/{database_id}
  /// or
  /// projects/{project_id}/locations/{location_id}/services/{service_id}/databases/{database_id}/tables/{table_id}.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/services/\[^/\]+/.*$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [RemoveIamPolicyResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<RemoveIamPolicyResponse> removeIamPolicy(
    RemoveIamPolicyRequest request,
    core.String resource, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1beta/' + core.Uri.encodeFull('$resource') + ':removeIamPolicy';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return RemoveIamPolicyResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
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

    final url_ = 'v1beta/' + core.Uri.encodeFull('$service') + ':restore';

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

    final url_ = 'v1beta/' + core.Uri.encodeFull('$resource') + ':setIamPolicy';

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
        'v1beta/' + core.Uri.encodeFull('$resource') + ':testIamPermissions';

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

    final url_ = 'v1beta/' + core.Uri.encodeFull('$parent') + '/backups';

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

    final url_ = 'v1beta/' + core.Uri.encodeFull('$name');

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

    final url_ = 'v1beta/' + core.Uri.encodeFull('$name');

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

    final url_ = 'v1beta/' + core.Uri.encodeFull('$resource') + ':getIamPolicy';

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

    final url_ = 'v1beta/' + core.Uri.encodeFull('$parent') + '/backups';

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

    final url_ = 'v1beta/' + core.Uri.encodeFull('$resource') + ':setIamPolicy';

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
  /// `^projects/\[^/\]+/locations/\[^/\]+/services/\[^/\]+/backups/\[^/\]+$`.
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
        'v1beta/' + core.Uri.encodeFull('$resource') + ':testIamPermissions';

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

    final url_ = 'v1beta/' + core.Uri.encodeFull('$resource') + ':getIamPolicy';

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

    final url_ = 'v1beta/' + core.Uri.encodeFull('$resource') + ':setIamPolicy';

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
  /// `^projects/\[^/\]+/locations/\[^/\]+/services/\[^/\]+/databases/\[^/\]+$`.
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
        'v1beta/' + core.Uri.encodeFull('$resource') + ':testIamPermissions';

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

    final url_ = 'v1beta/' + core.Uri.encodeFull('$resource') + ':getIamPolicy';

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

    final url_ = 'v1beta/' + core.Uri.encodeFull('$resource') + ':setIamPolicy';

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
  /// `^projects/\[^/\]+/locations/\[^/\]+/services/\[^/\]+/databases/\[^/\]+/tables/\[^/\]+$`.
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
        'v1beta/' + core.Uri.encodeFull('$resource') + ':testIamPermissions';

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

    final url_ =
        'v1beta/' + core.Uri.encodeFull('$parent') + '/metadataImports';

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

    final url_ = 'v1beta/' + core.Uri.encodeFull('$name');

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

    final url_ =
        'v1beta/' + core.Uri.encodeFull('$parent') + '/metadataImports';

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
  /// [name] - Immutable. The relative resource name of the metadata import, of
  /// the
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

    final url_ = 'v1beta/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }
}

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
          auditLogConfigs: json_.containsKey('auditLogConfigs')
              ? (json_['auditLogConfigs'] as core.List)
                  .map((value) => AuditLogConfig.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          service: json_.containsKey('service')
              ? json_['service'] as core.String
              : null,
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

/// Configuration information for the auxiliary service versions.
class AuxiliaryVersionConfig {
  /// A mapping of Hive metastore configuration key-value pairs to apply to the
  /// auxiliary Hive metastore (configured in hive-site.xml) in addition to the
  /// primary version's overrides.
  ///
  /// If keys are present in both the auxiliary version's overrides and the
  /// primary version's overrides, the value from the auxiliary version's
  /// overrides takes precedence.
  core.Map<core.String, core.String>? configOverrides;

  /// The network configuration contains the endpoint URI(s) of the auxiliary
  /// Hive metastore service.
  ///
  /// Output only.
  NetworkConfig? networkConfig;

  /// The Hive metastore version of the auxiliary service.
  ///
  /// It must be less than the primary Hive metastore service's version.
  core.String? version;

  AuxiliaryVersionConfig({
    this.configOverrides,
    this.networkConfig,
    this.version,
  });

  AuxiliaryVersionConfig.fromJson(core.Map json_)
      : this(
          configOverrides: json_.containsKey('configOverrides')
              ? (json_['configOverrides']
                      as core.Map<core.String, core.dynamic>)
                  .map(
                  (key, item) => core.MapEntry(
                    key,
                    item as core.String,
                  ),
                )
              : null,
          networkConfig: json_.containsKey('networkConfig')
              ? NetworkConfig.fromJson(
                  json_['networkConfig'] as core.Map<core.String, core.dynamic>)
              : null,
          version: json_.containsKey('version')
              ? json_['version'] as core.String
              : null,
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
  /// - "DATAPROC_METASTORE" : The backend metastore is Dataproc Metastore.
  core.String? metastoreType;

  /// The relative resource name of the metastore that is being federated.
  ///
  /// The formats of the relative resource names for the currently supported
  /// metastores are listed below: Dataplex:
  /// projects/{project_id}/locations/{location}/lakes/{lake_id} BigQuery:
  /// projects/{project_id} Dataproc Metastore:
  /// projects/{project_id}/locations/{location}/services/{service_id}
  core.String? name;

  BackendMetastore({
    this.metastoreType,
    this.name,
  });

  BackendMetastore.fromJson(core.Map json_)
      : this(
          metastoreType: json_.containsKey('metastoreType')
              ? json_['metastoreType'] as core.String
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
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
  core.String? description;

  /// The time when the backup finished creating.
  ///
  /// Output only.
  core.String? endTime;

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
          createTime: json_.containsKey('createTime')
              ? json_['createTime'] as core.String
              : null,
          description: json_.containsKey('description')
              ? json_['description'] as core.String
              : null,
          endTime: json_.containsKey('endTime')
              ? json_['endTime'] as core.String
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          restoringServices: json_.containsKey('restoringServices')
              ? (json_['restoringServices'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          serviceRevision: json_.containsKey('serviceRevision')
              ? Service.fromJson(json_['serviceRevision']
                  as core.Map<core.String, core.dynamic>)
              : null,
          state:
              json_.containsKey('state') ? json_['state'] as core.String : null,
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
  /// user:{emailid}: An email address that represents a specific Google
  /// account. For example, alice@example.com . serviceAccount:{emailid}: An
  /// email address that represents a service account. For example,
  /// my-other-app@appspot.gserviceaccount.com. group:{emailid}: An email
  /// address that represents a Google group. For example, admins@example.com.
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
  /// role in the binding. domain:{domain}: The G Suite domain (primary) that
  /// represents all the users of that domain. For example, google.com or
  /// example.com.
  core.List<core.String>? members;

  /// Role that is assigned to the list of members, or principals.
  ///
  /// For example, roles/viewer, roles/editor, or roles/owner.
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
          members: json_.containsKey('members')
              ? (json_['members'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          role: json_.containsKey('role') ? json_['role'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (condition != null) 'condition': condition!,
        if (members != null) 'members': members!,
        if (role != null) 'role': role!,
      };
}

/// Contains information of the customer's network configurations.
class Consumer {
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
  /// form:\`projects/{project_number}/regions/{region_id}/subnetworks/{subnetwork_id}
  core.String? subnetwork;

  Consumer({
    this.endpointUri,
    this.subnetwork,
  });

  Consumer.fromJson(core.Map json_)
      : this(
          endpointUri: json_.containsKey('endpointUri')
              ? json_['endpointUri'] as core.String
              : null,
          subnetwork: json_.containsKey('subnetwork')
              ? json_['subnetwork'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (endpointUri != null) 'endpointUri': endpointUri!,
        if (subnetwork != null) 'subnetwork': subnetwork!,
      };
}

/// Specifies how metastore metadata should be integrated with the Data Catalog
/// service.
class DataCatalogConfig {
  /// Defines whether the metastore metadata should be synced to Data Catalog.
  ///
  /// The default value is to disable syncing metastore metadata to Data
  /// Catalog.
  core.bool? enabled;

  DataCatalogConfig({
    this.enabled,
  });

  DataCatalogConfig.fromJson(core.Map json_)
      : this(
          enabled: json_.containsKey('enabled')
              ? json_['enabled'] as core.bool
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (enabled != null) 'enabled': enabled!,
      };
}

/// A specification of the location of and metadata about a database dump from a
/// relational database management system.
class DatabaseDump {
  /// The type of the database.
  /// Possible string values are:
  /// - "DATABASE_TYPE_UNSPECIFIED" : The type of the source database is
  /// unknown.
  /// - "MYSQL" : The type of the source database is MySQL.
  core.String? databaseType;

  /// A Cloud Storage object or folder URI that specifies the source from which
  /// to import metadata.
  ///
  /// It must begin with gs://.
  core.String? gcsUri;

  /// The name of the source database.
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
          databaseType: json_.containsKey('databaseType')
              ? json_['databaseType'] as core.String
              : null,
          gcsUri: json_.containsKey('gcsUri')
              ? json_['gcsUri'] as core.String
              : null,
          sourceDatabase: json_.containsKey('sourceDatabase')
              ? json_['sourceDatabase'] as core.String
              : null,
          type: json_.containsKey('type') ? json_['type'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (databaseType != null) 'databaseType': databaseType!,
        if (gcsUri != null) 'gcsUri': gcsUri!,
        if (sourceDatabase != null) 'sourceDatabase': sourceDatabase!,
        if (type != null) 'type': type!,
      };
}

/// Specifies how metastore metadata should be integrated with the Dataplex
/// service.
class DataplexConfig {
  /// A reference to the Lake resources that this metastore service is attached
  /// to.
  ///
  /// The key is the lake resource name. Example:
  /// projects/{project_number}/locations/{location_id}/lakes/{lake_id}.
  core.Map<core.String, Lake>? lakeResources;

  DataplexConfig({
    this.lakeResources,
  });

  DataplexConfig.fromJson(core.Map json_)
      : this(
          lakeResources: json_.containsKey('lakeResources')
              ? (json_['lakeResources'] as core.Map<core.String, core.dynamic>)
                  .map(
                  (key, item) => core.MapEntry(
                    key,
                    Lake.fromJson(item as core.Map<core.String, core.dynamic>),
                  ),
                )
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (lakeResources != null) 'lakeResources': lakeResources!,
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
  /// form:projects/{project_number}/locations/{location_id}/keyRings/{key_ring_id}/cryptoKeys/{crypto_key_id}.
  core.String? kmsKey;

  EncryptionConfig({
    this.kmsKey,
  });

  EncryptionConfig.fromJson(core.Map json_)
      : this(
          kmsKey: json_.containsKey('kmsKey')
              ? json_['kmsKey'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (kmsKey != null) 'kmsKey': kmsKey!,
      };
}

/// Request message for DataprocMetastore.ExportMetadata.
class ExportMetadataRequest {
  /// The type of the database dump.
  ///
  /// If unspecified, defaults to MYSQL.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "TYPE_UNSPECIFIED" : The type of the database dump is unknown.
  /// - "MYSQL" : Database dump is a MySQL dump file.
  /// - "AVRO" : Database dump contains Avro files.
  core.String? databaseDumpType;

  /// A Cloud Storage URI of a folder, in the format gs:///.
  ///
  /// A sub-folder containing exported files will be created below it.
  core.String? destinationGcsFolder;

  /// A request ID.
  ///
  /// Specify a unique request ID to allow the server to ignore the request if
  /// it has completed. The server will ignore subsequent requests that provide
  /// a duplicate request ID for at least 60 minutes after the first request.For
  /// example, if an initial request times out, followed by another request with
  /// the same request ID, the server ignores the second request to prevent the
  /// creation of duplicate commitments.The request ID must be a valid UUID
  /// (https://en.wikipedia.org/wiki/Universally_unique_identifier#Format). A
  /// zero UUID (00000000-0000-0000-0000-000000000000) is not supported.
  ///
  /// Optional.
  core.String? requestId;

  ExportMetadataRequest({
    this.databaseDumpType,
    this.destinationGcsFolder,
    this.requestId,
  });

  ExportMetadataRequest.fromJson(core.Map json_)
      : this(
          databaseDumpType: json_.containsKey('databaseDumpType')
              ? json_['databaseDumpType'] as core.String
              : null,
          destinationGcsFolder: json_.containsKey('destinationGcsFolder')
              ? json_['destinationGcsFolder'] as core.String
              : null,
          requestId: json_.containsKey('requestId')
              ? json_['requestId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (databaseDumpType != null) 'databaseDumpType': databaseDumpType!,
        if (destinationGcsFolder != null)
          'destinationGcsFolder': destinationGcsFolder!,
        if (requestId != null) 'requestId': requestId!,
      };
}

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
          backendMetastores: json_.containsKey('backendMetastores')
              ? (json_['backendMetastores']
                      as core.Map<core.String, core.dynamic>)
                  .map(
                  (key, item) => core.MapEntry(
                    key,
                    BackendMetastore.fromJson(
                        item as core.Map<core.String, core.dynamic>),
                  ),
                )
              : null,
          createTime: json_.containsKey('createTime')
              ? json_['createTime'] as core.String
              : null,
          endpointUri: json_.containsKey('endpointUri')
              ? json_['endpointUri'] as core.String
              : null,
          labels: json_.containsKey('labels')
              ? (json_['labels'] as core.Map<core.String, core.dynamic>).map(
                  (key, item) => core.MapEntry(
                    key,
                    item as core.String,
                  ),
                )
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          state:
              json_.containsKey('state') ? json_['state'] as core.String : null,
          stateMessage: json_.containsKey('stateMessage')
              ? json_['stateMessage'] as core.String
              : null,
          uid: json_.containsKey('uid') ? json_['uid'] as core.String : null,
          updateTime: json_.containsKey('updateTime')
              ? json_['updateTime'] as core.String
              : null,
          version: json_.containsKey('version')
              ? json_['version'] as core.String
              : null,
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
  core.Map<core.String, AuxiliaryVersionConfig>? auxiliaryVersions;

  /// A mapping of Hive metastore configuration key-value pairs to apply to the
  /// Hive metastore (configured in hive-site.xml).
  ///
  /// The mappings override system defaults (some keys cannot be overridden).
  /// These overrides are also applied to auxiliary versions and can be further
  /// customized in the auxiliary version's AuxiliaryVersionConfig.
  core.Map<core.String, core.String>? configOverrides;

  /// The protocol to use for the metastore service endpoint.
  ///
  /// If unspecified, defaults to THRIFT.
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
          auxiliaryVersions: json_.containsKey('auxiliaryVersions')
              ? (json_['auxiliaryVersions']
                      as core.Map<core.String, core.dynamic>)
                  .map(
                  (key, item) => core.MapEntry(
                    key,
                    AuxiliaryVersionConfig.fromJson(
                        item as core.Map<core.String, core.dynamic>),
                  ),
                )
              : null,
          configOverrides: json_.containsKey('configOverrides')
              ? (json_['configOverrides']
                      as core.Map<core.String, core.dynamic>)
                  .map(
                  (key, item) => core.MapEntry(
                    key,
                    item as core.String,
                  ),
                )
              : null,
          endpointProtocol: json_.containsKey('endpointProtocol')
              ? json_['endpointProtocol'] as core.String
              : null,
          kerberosConfig: json_.containsKey('kerberosConfig')
              ? KerberosConfig.fromJson(json_['kerberosConfig']
                  as core.Map<core.String, core.dynamic>)
              : null,
          version: json_.containsKey('version')
              ? json_['version'] as core.String
              : null,
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
  Secret? keytab;

  /// A Cloud Storage URI that specifies the path to a krb5.conf file.
  ///
  /// It is of the form gs://{bucket_name}/path/to/krb5.conf, although the file
  /// does not need to be named krb5.conf explicitly.
  core.String? krb5ConfigGcsUri;

  /// A Kerberos principal that exists in the both the keytab the KDC to
  /// authenticate as.
  ///
  /// A typical principal is of the form primary/instance@REALM, but there is no
  /// exact format.
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
          krb5ConfigGcsUri: json_.containsKey('krb5ConfigGcsUri')
              ? json_['krb5ConfigGcsUri'] as core.String
              : null,
          principal: json_.containsKey('principal')
              ? json_['principal'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (keytab != null) 'keytab': keytab!,
        if (krb5ConfigGcsUri != null) 'krb5ConfigGcsUri': krb5ConfigGcsUri!,
        if (principal != null) 'principal': principal!,
      };
}

/// Represents a Lake resource
class Lake {
  /// The Lake resource name.
  ///
  /// Example: projects/{project_number}/locations/{location_id}/lakes/{lake_id}
  core.String? name;

  Lake({
    this.name,
  });

  Lake.fromJson(core.Map json_)
      : this(
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (name != null) 'name': name!,
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
          backups: json_.containsKey('backups')
              ? (json_['backups'] as core.List)
                  .map((value) => Backup.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
          unreachable: json_.containsKey('unreachable')
              ? (json_['unreachable'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
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
          federations: json_.containsKey('federations')
              ? (json_['federations'] as core.List)
                  .map((value) => Federation.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
          unreachable: json_.containsKey('unreachable')
              ? (json_['unreachable'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
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
          locations: json_.containsKey('locations')
              ? (json_['locations'] as core.List)
                  .map((value) => Location.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
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
          metadataImports: json_.containsKey('metadataImports')
              ? (json_['metadataImports'] as core.List)
                  .map((value) => MetadataImport.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
          unreachable: json_.containsKey('unreachable')
              ? (json_['unreachable'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (metadataImports != null) 'metadataImports': metadataImports!,
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
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
          operations: json_.containsKey('operations')
              ? (json_['operations'] as core.List)
                  .map((value) => Operation.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
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
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
          services: json_.containsKey('services')
              ? (json_['services'] as core.List)
                  .map((value) => Service.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          unreachable: json_.containsKey('unreachable')
              ? (json_['unreachable'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (services != null) 'services': services!,
        if (unreachable != null) 'unreachable': unreachable!,
      };
}

/// A resource that represents Google Cloud Platform location.
class Location {
  /// The friendly name for this location, typically a nearby city name.
  ///
  /// For example, "Tokyo".
  core.String? displayName;

  /// Cross-service attributes for the location.
  ///
  /// For example {"cloud.googleapis.com/region": "us-east1"}
  core.Map<core.String, core.String>? labels;

  /// The canonical id for this location.
  ///
  /// For example: "us-east1".
  core.String? locationId;

  /// Service-specific metadata.
  ///
  /// For example the available capacity at the given location.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object?>? metadata;

  /// Resource name for the location, which may vary between implementations.
  ///
  /// For example: "projects/example-project/locations/us-east1"
  core.String? name;

  Location({
    this.displayName,
    this.labels,
    this.locationId,
    this.metadata,
    this.name,
  });

  Location.fromJson(core.Map json_)
      : this(
          displayName: json_.containsKey('displayName')
              ? json_['displayName'] as core.String
              : null,
          labels: json_.containsKey('labels')
              ? (json_['labels'] as core.Map<core.String, core.dynamic>).map(
                  (key, item) => core.MapEntry(
                    key,
                    item as core.String,
                  ),
                )
              : null,
          locationId: json_.containsKey('locationId')
              ? json_['locationId'] as core.String
              : null,
          metadata: json_.containsKey('metadata')
              ? json_['metadata'] as core.Map<core.String, core.dynamic>
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (displayName != null) 'displayName': displayName!,
        if (labels != null) 'labels': labels!,
        if (locationId != null) 'locationId': locationId!,
        if (metadata != null) 'metadata': metadata!,
        if (name != null) 'name': name!,
      };
}

/// Maintenance window.
///
/// This specifies when Dataproc Metastore may perform system maintenance
/// operation to the service.
class MaintenanceWindow {
  /// The day of week, when the window starts.
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
  core.int? hourOfDay;

  MaintenanceWindow({
    this.dayOfWeek,
    this.hourOfDay,
  });

  MaintenanceWindow.fromJson(core.Map json_)
      : this(
          dayOfWeek: json_.containsKey('dayOfWeek')
              ? json_['dayOfWeek'] as core.String
              : null,
          hourOfDay: json_.containsKey('hourOfDay')
              ? json_['hourOfDay'] as core.int
              : null,
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
          databaseDumpType: json_.containsKey('databaseDumpType')
              ? json_['databaseDumpType'] as core.String
              : null,
          destinationGcsUri: json_.containsKey('destinationGcsUri')
              ? json_['destinationGcsUri'] as core.String
              : null,
          endTime: json_.containsKey('endTime')
              ? json_['endTime'] as core.String
              : null,
          startTime: json_.containsKey('startTime')
              ? json_['startTime'] as core.String
              : null,
          state:
              json_.containsKey('state') ? json_['state'] as core.String : null,
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
  core.String? description;

  /// The time when the metadata import finished.
  ///
  /// Output only.
  core.String? endTime;

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
          createTime: json_.containsKey('createTime')
              ? json_['createTime'] as core.String
              : null,
          databaseDump: json_.containsKey('databaseDump')
              ? DatabaseDump.fromJson(
                  json_['databaseDump'] as core.Map<core.String, core.dynamic>)
              : null,
          description: json_.containsKey('description')
              ? json_['description'] as core.String
              : null,
          endTime: json_.containsKey('endTime')
              ? json_['endTime'] as core.String
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          state:
              json_.containsKey('state') ? json_['state'] as core.String : null,
          updateTime: json_.containsKey('updateTime')
              ? json_['updateTime'] as core.String
              : null,
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
  DataCatalogConfig? dataCatalogConfig;

  /// The integration config for the Dataplex service.
  DataplexConfig? dataplexConfig;

  MetadataIntegration({
    this.dataCatalogConfig,
    this.dataplexConfig,
  });

  MetadataIntegration.fromJson(core.Map json_)
      : this(
          dataCatalogConfig: json_.containsKey('dataCatalogConfig')
              ? DataCatalogConfig.fromJson(json_['dataCatalogConfig']
                  as core.Map<core.String, core.dynamic>)
              : null,
          dataplexConfig: json_.containsKey('dataplexConfig')
              ? DataplexConfig.fromJson(json_['dataplexConfig']
                  as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (dataCatalogConfig != null) 'dataCatalogConfig': dataCatalogConfig!,
        if (dataplexConfig != null) 'dataplexConfig': dataplexConfig!,
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
          metadataExports: json_.containsKey('metadataExports')
              ? (json_['metadataExports'] as core.List)
                  .map((value) => MetadataExport.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          restores: json_.containsKey('restores')
              ? (json_['restores'] as core.List)
                  .map((value) => Restore.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (metadataExports != null) 'metadataExports': metadataExports!,
        if (restores != null) 'restores': restores!,
      };
}

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
          consumers: json_.containsKey('consumers')
              ? (json_['consumers'] as core.List)
                  .map((value) => Consumer.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
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

  /// The normal response of the operation in case of success.
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
          done: json_.containsKey('done') ? json_['done'] as core.bool : null,
          error: json_.containsKey('error')
              ? Status.fromJson(
                  json_['error'] as core.Map<core.String, core.dynamic>)
              : null,
          metadata: json_.containsKey('metadata')
              ? json_['metadata'] as core.Map<core.String, core.dynamic>
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
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
          auditConfigs: json_.containsKey('auditConfigs')
              ? (json_['auditConfigs'] as core.List)
                  .map((value) => AuditConfig.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          bindings: json_.containsKey('bindings')
              ? (json_['bindings'] as core.List)
                  .map((value) => Binding.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          etag: json_.containsKey('etag') ? json_['etag'] as core.String : null,
          version: json_.containsKey('version')
              ? json_['version'] as core.int
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (auditConfigs != null) 'auditConfigs': auditConfigs!,
        if (bindings != null) 'bindings': bindings!,
        if (etag != null) 'etag': etag!,
        if (version != null) 'version': version!,
      };
}

/// Request message for DataprocMetastore.RemoveIamPolicy.
typedef RemoveIamPolicyRequest = $Empty;

/// Response message for DataprocMetastore.RemoveIamPolicy.
class RemoveIamPolicyResponse {
  /// whether related policies are removed
  core.bool? success;

  RemoveIamPolicyResponse({
    this.success,
  });

  RemoveIamPolicyResponse.fromJson(core.Map json_)
      : this(
          success: json_.containsKey('success')
              ? json_['success'] as core.bool
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (success != null) 'success': success!,
      };
}

/// The details of a metadata restore operation.
class Restore {
  /// The relative resource name of the metastore service backup to restore
  /// from, in the following
  /// form:projects/{project_id}/locations/{location_id}/services/{service_id}/backups/{backup_id}.
  ///
  /// Output only.
  core.String? backup;

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
    this.details,
    this.endTime,
    this.startTime,
    this.state,
    this.type,
  });

  Restore.fromJson(core.Map json_)
      : this(
          backup: json_.containsKey('backup')
              ? json_['backup'] as core.String
              : null,
          details: json_.containsKey('details')
              ? json_['details'] as core.String
              : null,
          endTime: json_.containsKey('endTime')
              ? json_['endTime'] as core.String
              : null,
          startTime: json_.containsKey('startTime')
              ? json_['startTime'] as core.String
              : null,
          state:
              json_.containsKey('state') ? json_['state'] as core.String : null,
          type: json_.containsKey('type') ? json_['type'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (backup != null) 'backup': backup!,
        if (details != null) 'details': details!,
        if (endTime != null) 'endTime': endTime!,
        if (startTime != null) 'startTime': startTime!,
        if (state != null) 'state': state!,
        if (type != null) 'type': type!,
      };
}

/// Request message for DataprocMetastore.Restore.
class RestoreServiceRequest {
  /// The relative resource name of the metastore service backup to restore
  /// from, in the following
  /// form:projects/{project_id}/locations/{location_id}/services/{service_id}/backups/{backup_id}.
  ///
  /// Required.
  core.String? backup;

  /// A request ID.
  ///
  /// Specify a unique request ID to allow the server to ignore the request if
  /// it has completed. The server will ignore subsequent requests that provide
  /// a duplicate request ID for at least 60 minutes after the first request.For
  /// example, if an initial request times out, followed by another request with
  /// the same request ID, the server ignores the second request to prevent the
  /// creation of duplicate commitments.The request ID must be a valid UUID
  /// (https://en.wikipedia.org/wiki/Universally_unique_identifier#Format). A
  /// zero UUID (00000000-0000-0000-0000-000000000000) is not supported.
  ///
  /// Optional.
  core.String? requestId;

  /// The type of restore.
  ///
  /// If unspecified, defaults to METADATA_ONLY.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "RESTORE_TYPE_UNSPECIFIED" : The restore type is unknown.
  /// - "FULL" : The service's metadata and configuration are restored.
  /// - "METADATA_ONLY" : Only the service's metadata is restored.
  core.String? restoreType;

  RestoreServiceRequest({
    this.backup,
    this.requestId,
    this.restoreType,
  });

  RestoreServiceRequest.fromJson(core.Map json_)
      : this(
          backup: json_.containsKey('backup')
              ? json_['backup'] as core.String
              : null,
          requestId: json_.containsKey('requestId')
              ? json_['requestId'] as core.String
              : null,
          restoreType: json_.containsKey('restoreType')
              ? json_['restoreType'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (backup != null) 'backup': backup!,
        if (requestId != null) 'requestId': requestId!,
        if (restoreType != null) 'restoreType': restoreType!,
      };
}

/// A securely stored value.
class Secret {
  /// The relative resource name of a Secret Manager secret version, in the
  /// following
  /// form:projects/{project_number}/secrets/{secret_id}/versions/{version_id}.
  core.String? cloudSecret;

  Secret({
    this.cloudSecret,
  });

  Secret.fromJson(core.Map json_)
      : this(
          cloudSecret: json_.containsKey('cloudSecret')
              ? json_['cloudSecret'] as core.String
              : null,
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
  MaintenanceWindow? maintenanceWindow;

  /// The setting that defines how metastore metadata should be integrated with
  /// external services and systems.
  MetadataIntegration? metadataIntegration;

  /// The metadata management activities of the metastore service.
  ///
  /// Output only.
  MetadataManagementActivity? metadataManagementActivity;

  /// The relative resource name of the metastore service, of the
  /// form:projects/{project_number}/locations/{location_id}/services/{service_id}.
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
  /// Immutable.
  NetworkConfig? networkConfig;

  /// The TCP port at which the metastore service is reached.
  ///
  /// Default: 9083.
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
  core.String? state;

  /// Additional information about the current state of the metastore service,
  /// if available.
  ///
  /// Output only.
  core.String? stateMessage;

  /// The tier of the service.
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
    this.state,
    this.stateMessage,
    this.tier,
    this.uid,
    this.updateTime,
  });

  Service.fromJson(core.Map json_)
      : this(
          artifactGcsUri: json_.containsKey('artifactGcsUri')
              ? json_['artifactGcsUri'] as core.String
              : null,
          createTime: json_.containsKey('createTime')
              ? json_['createTime'] as core.String
              : null,
          databaseType: json_.containsKey('databaseType')
              ? json_['databaseType'] as core.String
              : null,
          encryptionConfig: json_.containsKey('encryptionConfig')
              ? EncryptionConfig.fromJson(json_['encryptionConfig']
                  as core.Map<core.String, core.dynamic>)
              : null,
          endpointUri: json_.containsKey('endpointUri')
              ? json_['endpointUri'] as core.String
              : null,
          hiveMetastoreConfig: json_.containsKey('hiveMetastoreConfig')
              ? HiveMetastoreConfig.fromJson(json_['hiveMetastoreConfig']
                  as core.Map<core.String, core.dynamic>)
              : null,
          labels: json_.containsKey('labels')
              ? (json_['labels'] as core.Map<core.String, core.dynamic>).map(
                  (key, item) => core.MapEntry(
                    key,
                    item as core.String,
                  ),
                )
              : null,
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
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          network: json_.containsKey('network')
              ? json_['network'] as core.String
              : null,
          networkConfig: json_.containsKey('networkConfig')
              ? NetworkConfig.fromJson(
                  json_['networkConfig'] as core.Map<core.String, core.dynamic>)
              : null,
          port: json_.containsKey('port') ? json_['port'] as core.int : null,
          releaseChannel: json_.containsKey('releaseChannel')
              ? json_['releaseChannel'] as core.String
              : null,
          state:
              json_.containsKey('state') ? json_['state'] as core.String : null,
          stateMessage: json_.containsKey('stateMessage')
              ? json_['stateMessage'] as core.String
              : null,
          tier: json_.containsKey('tier') ? json_['tier'] as core.String : null,
          uid: json_.containsKey('uid') ? json_['uid'] as core.String : null,
          updateTime: json_.containsKey('updateTime')
              ? json_['updateTime'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (artifactGcsUri != null) 'artifactGcsUri': artifactGcsUri!,
        if (createTime != null) 'createTime': createTime!,
        if (databaseType != null) 'databaseType': databaseType!,
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
        if (state != null) 'state': state!,
        if (stateMessage != null) 'stateMessage': stateMessage!,
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
          updateMask: json_.containsKey('updateMask')
              ? json_['updateMask'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (policy != null) 'policy': policy!,
        if (updateMask != null) 'updateMask': updateMask!,
      };
}

/// The Status type defines a logical error model that is suitable for different
/// programming environments, including REST APIs and RPC APIs.
///
/// It is used by gRPC (https://github.com/grpc). Each Status message contains
/// three pieces of data: error code, error message, and error details.You can
/// find out more about this error model and how to work with it in the API
/// Design Guide (https://cloud.google.com/apis/design/errors).
typedef Status = $Status;

/// Request message for TestIamPermissions method.
class TestIamPermissionsRequest {
  /// The set of permissions to check for the resource.
  ///
  /// Permissions with wildcards (such as * or storage.*) are not allowed. For
  /// more information see IAM Overview
  /// (https://cloud.google.com/iam/docs/overview#permissions).
  core.List<core.String>? permissions;

  TestIamPermissionsRequest({
    this.permissions,
  });

  TestIamPermissionsRequest.fromJson(core.Map json_)
      : this(
          permissions: json_.containsKey('permissions')
              ? (json_['permissions'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (permissions != null) 'permissions': permissions!,
      };
}

/// Response message for TestIamPermissions method.
class TestIamPermissionsResponse {
  /// A subset of TestPermissionsRequest.permissions that the caller is allowed.
  core.List<core.String>? permissions;

  TestIamPermissionsResponse({
    this.permissions,
  });

  TestIamPermissionsResponse.fromJson(core.Map json_)
      : this(
          permissions: json_.containsKey('permissions')
              ? (json_['permissions'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (permissions != null) 'permissions': permissions!,
      };
}
