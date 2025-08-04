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

/// OS Config API - v2
///
/// OS management tools that can be used for patch management, patch compliance,
/// and configuration management on VM instances.
///
/// For more information, see
/// <https://cloud.google.com/compute/docs/osconfig/rest>
///
/// Create an instance of [OSConfigApi] to access these resources:
///
/// - [FoldersResource]
///   - [FoldersLocationsResource]
///     - [FoldersLocationsGlobalResource]
///       - [FoldersLocationsGlobalPolicyOrchestratorsResource]
///     - [FoldersLocationsOperationsResource]
/// - [OrganizationsResource]
///   - [OrganizationsLocationsResource]
///     - [OrganizationsLocationsGlobalResource]
///       - [OrganizationsLocationsGlobalPolicyOrchestratorsResource]
///     - [OrganizationsLocationsOperationsResource]
/// - [ProjectsResource]
///   - [ProjectsLocationsResource]
///     - [ProjectsLocationsGlobalResource]
///       - [ProjectsLocationsGlobalPolicyOrchestratorsResource]
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

/// OS management tools that can be used for patch management, patch compliance,
/// and configuration management on VM instances.
class OSConfigApi {
  /// See, edit, configure, and delete your Google Cloud data and see the email
  /// address for your Google Account.
  static const cloudPlatformScope =
      'https://www.googleapis.com/auth/cloud-platform';

  final commons.ApiRequester _requester;

  FoldersResource get folders => FoldersResource(_requester);
  OrganizationsResource get organizations => OrganizationsResource(_requester);
  ProjectsResource get projects => ProjectsResource(_requester);

  OSConfigApi(
    http.Client client, {
    core.String rootUrl = 'https://osconfig.googleapis.com/',
    core.String servicePath = '',
  }) : _requester = commons.ApiRequester(
         client,
         rootUrl,
         servicePath,
         requestHeaders,
       );
}

class FoldersResource {
  final commons.ApiRequester _requester;

  FoldersLocationsResource get locations =>
      FoldersLocationsResource(_requester);

  FoldersResource(commons.ApiRequester client) : _requester = client;
}

class FoldersLocationsResource {
  final commons.ApiRequester _requester;

  FoldersLocationsGlobalResource get global =>
      FoldersLocationsGlobalResource(_requester);
  FoldersLocationsOperationsResource get operations =>
      FoldersLocationsOperationsResource(_requester);

  FoldersLocationsResource(commons.ApiRequester client) : _requester = client;
}

class FoldersLocationsGlobalResource {
  final commons.ApiRequester _requester;

  FoldersLocationsGlobalPolicyOrchestratorsResource get policyOrchestrators =>
      FoldersLocationsGlobalPolicyOrchestratorsResource(_requester);

  FoldersLocationsGlobalResource(commons.ApiRequester client)
    : _requester = client;
}

class FoldersLocationsGlobalPolicyOrchestratorsResource {
  final commons.ApiRequester _requester;

  FoldersLocationsGlobalPolicyOrchestratorsResource(commons.ApiRequester client)
    : _requester = client;

  /// Creates a new policy orchestrator under the given folder resource.
  ///
  /// `name` field of the given orchestrator are ignored and instead replaced by
  /// a product of `parent` and `policy_orchestrator_id`. Orchestrator state
  /// field might be only set to `ACTIVE`, `STOPPED` or omitted (in which case,
  /// the created resource will be in `ACTIVE` state anyway).
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent resource name in the form of: *
  /// `organizations/{organization_id}/locations/global` *
  /// `folders/{folder_id}/locations/global` *
  /// `projects/{project_id_or_number}/locations/global`
  /// Value must have pattern `^folders/\[^/\]+/locations/global$`.
  ///
  /// [policyOrchestratorId] - Required. The logical identifier of the policy
  /// orchestrator, with the following restrictions: * Must contain only
  /// lowercase letters, numbers, and hyphens. * Must start with a letter. *
  /// Must be between 1-63 characters. * Must end with a number or a letter. *
  /// Must be unique within the parent.
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
    GoogleCloudOsconfigV2PolicyOrchestrator request,
    core.String parent, {
    core.String? policyOrchestratorId,
    core.String? requestId,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (policyOrchestratorId != null)
        'policyOrchestratorId': [policyOrchestratorId],
      if (requestId != null) 'requestId': [requestId],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v2/' + core.Uri.encodeFull('$parent') + '/policyOrchestrators';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Deletes an existing policy orchestrator resource, parented by a folder.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Name of the resource to be deleted.
  /// Value must have pattern
  /// `^folders/\[^/\]+/locations/global/policyOrchestrators/\[^/\]+$`.
  ///
  /// [etag] - Optional. The current etag of the policy orchestrator. If an etag
  /// is provided and does not match the current etag of the policy
  /// orchestrator, deletion will be blocked and an ABORTED error will be
  /// returned.
  ///
  /// [requestId] - Optional. An optional request ID to identify requests.
  /// Specify a unique request ID so that if you must retry your request, the
  /// server will know to ignore the request if it has already been completed.
  /// The server will guarantee that for at least 60 minutes after the first
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
  async.Future<Operation> delete(
    core.String name, {
    core.String? etag,
    core.String? requestId,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (etag != null) 'etag': [etag],
      if (requestId != null) 'requestId': [requestId],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',

      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Retrieves an existing policy orchestrator, parented by a folder.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name.
  /// Value must have pattern
  /// `^folders/\[^/\]+/locations/global/policyOrchestrators/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudOsconfigV2PolicyOrchestrator].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudOsconfigV2PolicyOrchestrator> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudOsconfigV2PolicyOrchestrator.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Lists the policy orchestrators under the given parent folder resource.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent resource name.
  /// Value must have pattern `^folders/\[^/\]+/locations/global$`.
  ///
  /// [filter] - Optional. Filtering results
  ///
  /// [orderBy] - Optional. Hint for how to order the results
  ///
  /// [pageSize] - Optional. Requested page size. Server may return fewer items
  /// than requested. If unspecified, server will pick an appropriate default.
  ///
  /// [pageToken] - Optional. A token identifying a page of results the server
  /// should return.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudOsconfigV2ListPolicyOrchestratorsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudOsconfigV2ListPolicyOrchestratorsResponse> list(
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
        'v2/' + core.Uri.encodeFull('$parent') + '/policyOrchestrators';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudOsconfigV2ListPolicyOrchestratorsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Updates an existing policy orchestrator, parented by a folder.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Immutable. Identifier. In form of *
  /// `organizations/{organization_id}/locations/global/policyOrchestrators/{orchestrator_id}`
  /// *
  /// `folders/{folder_id}/locations/global/policyOrchestrators/{orchestrator_id}`
  /// *
  /// `projects/{project_id_or_number}/locations/global/policyOrchestrators/{orchestrator_id}`
  /// Value must have pattern
  /// `^folders/\[^/\]+/locations/global/policyOrchestrators/\[^/\]+$`.
  ///
  /// [updateMask] - Optional. The list of fields to merge into the existing
  /// policy orchestrator. A special \["*"\] field mask can be used to simply
  /// replace the entire resource. Otherwise, for all paths referenced in the
  /// mask, following merge rules are used: * output only fields are ignored, *
  /// primitive fields are replaced, * repeated fields are replaced, * map
  /// fields are merged key by key, * message fields are cleared if not set in
  /// the request, otherwise they are merged recursively (in particular -
  /// message fields set to an empty message has no side effects) If field mask
  /// (or its paths) is not specified, it is automatically inferred from the
  /// request using following rules: * primitive fields are listed, if set to a
  /// non-default value (as there is no way to distinguish between default and
  /// unset value), * map and repeated fields are listed, *
  /// `google.protobuf.Any` fields are listed, * other message fields are
  /// traversed recursively. Note: implicit mask does not allow clearing fields.
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
    GoogleCloudOsconfigV2PolicyOrchestrator request,
    core.String name, {
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (updateMask != null) 'updateMask': [updateMask],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }
}

class FoldersLocationsOperationsResource {
  final commons.ApiRequester _requester;

  FoldersLocationsOperationsResource(commons.ApiRequester client)
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
  /// `^folders/\[^/\]+/locations/\[^/\]+/operations/\[^/\]+$`.
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

    final url_ = 'v2/' + core.Uri.encodeFull('$name') + ':cancel';

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
  /// `^folders/\[^/\]+/locations/\[^/\]+/operations/\[^/\]+$`.
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

    final url_ = 'v2/' + core.Uri.encodeFull('$name');

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
  /// `^folders/\[^/\]+/locations/\[^/\]+/operations/\[^/\]+$`.
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

    final url_ = 'v2/' + core.Uri.encodeFull('$name');

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
  /// Value must have pattern `^folders/\[^/\]+/locations/\[^/\]+$`.
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

    final url_ = 'v2/' + core.Uri.encodeFull('$name') + '/operations';

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

class OrganizationsResource {
  final commons.ApiRequester _requester;

  OrganizationsLocationsResource get locations =>
      OrganizationsLocationsResource(_requester);

  OrganizationsResource(commons.ApiRequester client) : _requester = client;
}

class OrganizationsLocationsResource {
  final commons.ApiRequester _requester;

  OrganizationsLocationsGlobalResource get global =>
      OrganizationsLocationsGlobalResource(_requester);
  OrganizationsLocationsOperationsResource get operations =>
      OrganizationsLocationsOperationsResource(_requester);

  OrganizationsLocationsResource(commons.ApiRequester client)
    : _requester = client;
}

class OrganizationsLocationsGlobalResource {
  final commons.ApiRequester _requester;

  OrganizationsLocationsGlobalPolicyOrchestratorsResource
  get policyOrchestrators =>
      OrganizationsLocationsGlobalPolicyOrchestratorsResource(_requester);

  OrganizationsLocationsGlobalResource(commons.ApiRequester client)
    : _requester = client;
}

class OrganizationsLocationsGlobalPolicyOrchestratorsResource {
  final commons.ApiRequester _requester;

  OrganizationsLocationsGlobalPolicyOrchestratorsResource(
    commons.ApiRequester client,
  ) : _requester = client;

  /// Creates a new policy orchestrator under the given organizations resource.
  ///
  /// `name` field of the given orchestrator are ignored and instead replaced by
  /// a product of `parent` and `policy_orchestrator_id`. Orchestrator state
  /// field might be only set to `ACTIVE`, `STOPPED` or omitted (in which case,
  /// the created resource will be in `ACTIVE` state anyway).
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent resource name in the form of: *
  /// `organizations/{organization_id}/locations/global` *
  /// `folders/{folder_id}/locations/global` *
  /// `projects/{project_id_or_number}/locations/global`
  /// Value must have pattern `^organizations/\[^/\]+/locations/global$`.
  ///
  /// [policyOrchestratorId] - Required. The logical identifier of the policy
  /// orchestrator, with the following restrictions: * Must contain only
  /// lowercase letters, numbers, and hyphens. * Must start with a letter. *
  /// Must be between 1-63 characters. * Must end with a number or a letter. *
  /// Must be unique within the parent.
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
    GoogleCloudOsconfigV2PolicyOrchestrator request,
    core.String parent, {
    core.String? policyOrchestratorId,
    core.String? requestId,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (policyOrchestratorId != null)
        'policyOrchestratorId': [policyOrchestratorId],
      if (requestId != null) 'requestId': [requestId],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v2/' + core.Uri.encodeFull('$parent') + '/policyOrchestrators';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Deletes an existing policy orchestrator resource, parented by an
  /// organization.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Name of the resource to be deleted.
  /// Value must have pattern
  /// `^organizations/\[^/\]+/locations/global/policyOrchestrators/\[^/\]+$`.
  ///
  /// [etag] - Optional. The current etag of the policy orchestrator. If an etag
  /// is provided and does not match the current etag of the policy
  /// orchestrator, deletion will be blocked and an ABORTED error will be
  /// returned.
  ///
  /// [requestId] - Optional. An optional request ID to identify requests.
  /// Specify a unique request ID so that if you must retry your request, the
  /// server will know to ignore the request if it has already been completed.
  /// The server will guarantee that for at least 60 minutes after the first
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
  async.Future<Operation> delete(
    core.String name, {
    core.String? etag,
    core.String? requestId,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (etag != null) 'etag': [etag],
      if (requestId != null) 'requestId': [requestId],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',

      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Retrieves an existing policy orchestrator, parented by an organization.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name.
  /// Value must have pattern
  /// `^organizations/\[^/\]+/locations/global/policyOrchestrators/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudOsconfigV2PolicyOrchestrator].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudOsconfigV2PolicyOrchestrator> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudOsconfigV2PolicyOrchestrator.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Lists the policy orchestrators under the given parent organization
  /// resource.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent resource name.
  /// Value must have pattern `^organizations/\[^/\]+/locations/global$`.
  ///
  /// [filter] - Optional. Filtering results
  ///
  /// [orderBy] - Optional. Hint for how to order the results
  ///
  /// [pageSize] - Optional. Requested page size. Server may return fewer items
  /// than requested. If unspecified, server will pick an appropriate default.
  ///
  /// [pageToken] - Optional. A token identifying a page of results the server
  /// should return.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudOsconfigV2ListPolicyOrchestratorsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudOsconfigV2ListPolicyOrchestratorsResponse> list(
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
        'v2/' + core.Uri.encodeFull('$parent') + '/policyOrchestrators';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudOsconfigV2ListPolicyOrchestratorsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Updates an existing policy orchestrator, parented by an organization.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Immutable. Identifier. In form of *
  /// `organizations/{organization_id}/locations/global/policyOrchestrators/{orchestrator_id}`
  /// *
  /// `folders/{folder_id}/locations/global/policyOrchestrators/{orchestrator_id}`
  /// *
  /// `projects/{project_id_or_number}/locations/global/policyOrchestrators/{orchestrator_id}`
  /// Value must have pattern
  /// `^organizations/\[^/\]+/locations/global/policyOrchestrators/\[^/\]+$`.
  ///
  /// [updateMask] - Optional. The list of fields to merge into the existing
  /// policy orchestrator. A special \["*"\] field mask can be used to simply
  /// replace the entire resource. Otherwise, for all paths referenced in the
  /// mask, following merge rules are used: * output only fields are ignored, *
  /// primitive fields are replaced, * repeated fields are replaced, * map
  /// fields are merged key by key, * message fields are cleared if not set in
  /// the request, otherwise they are merged recursively (in particular -
  /// message fields set to an empty message has no side effects) If field mask
  /// (or its paths) is not specified, it is automatically inferred from the
  /// request using following rules: * primitive fields are listed, if set to a
  /// non-default value (as there is no way to distinguish between default and
  /// unset value), * map and repeated fields are listed, *
  /// `google.protobuf.Any` fields are listed, * other message fields are
  /// traversed recursively. Note: implicit mask does not allow clearing fields.
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
    GoogleCloudOsconfigV2PolicyOrchestrator request,
    core.String name, {
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (updateMask != null) 'updateMask': [updateMask],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }
}

class OrganizationsLocationsOperationsResource {
  final commons.ApiRequester _requester;

  OrganizationsLocationsOperationsResource(commons.ApiRequester client)
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
  /// `^organizations/\[^/\]+/locations/\[^/\]+/operations/\[^/\]+$`.
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

    final url_ = 'v2/' + core.Uri.encodeFull('$name') + ':cancel';

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
  /// `^organizations/\[^/\]+/locations/\[^/\]+/operations/\[^/\]+$`.
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

    final url_ = 'v2/' + core.Uri.encodeFull('$name');

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
  /// `^organizations/\[^/\]+/locations/\[^/\]+/operations/\[^/\]+$`.
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

    final url_ = 'v2/' + core.Uri.encodeFull('$name');

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
  /// Value must have pattern `^organizations/\[^/\]+/locations/\[^/\]+$`.
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

    final url_ = 'v2/' + core.Uri.encodeFull('$name') + '/operations';

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

class ProjectsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsResource get locations =>
      ProjectsLocationsResource(_requester);

  ProjectsResource(commons.ApiRequester client) : _requester = client;
}

class ProjectsLocationsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsGlobalResource get global =>
      ProjectsLocationsGlobalResource(_requester);
  ProjectsLocationsOperationsResource get operations =>
      ProjectsLocationsOperationsResource(_requester);

  ProjectsLocationsResource(commons.ApiRequester client) : _requester = client;
}

class ProjectsLocationsGlobalResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsGlobalPolicyOrchestratorsResource get policyOrchestrators =>
      ProjectsLocationsGlobalPolicyOrchestratorsResource(_requester);

  ProjectsLocationsGlobalResource(commons.ApiRequester client)
    : _requester = client;
}

class ProjectsLocationsGlobalPolicyOrchestratorsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsGlobalPolicyOrchestratorsResource(
    commons.ApiRequester client,
  ) : _requester = client;

  /// Creates a new policy orchestrator under the given project resource.
  ///
  /// `name` field of the given orchestrator are ignored and instead replaced by
  /// a product of `parent` and `policy_orchestrator_id`. Orchestrator state
  /// field might be only set to `ACTIVE`, `STOPPED` or omitted (in which case,
  /// the created resource will be in `ACTIVE` state anyway).
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent resource name in the form of: *
  /// `organizations/{organization_id}/locations/global` *
  /// `folders/{folder_id}/locations/global` *
  /// `projects/{project_id_or_number}/locations/global`
  /// Value must have pattern `^projects/\[^/\]+/locations/global$`.
  ///
  /// [policyOrchestratorId] - Required. The logical identifier of the policy
  /// orchestrator, with the following restrictions: * Must contain only
  /// lowercase letters, numbers, and hyphens. * Must start with a letter. *
  /// Must be between 1-63 characters. * Must end with a number or a letter. *
  /// Must be unique within the parent.
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
    GoogleCloudOsconfigV2PolicyOrchestrator request,
    core.String parent, {
    core.String? policyOrchestratorId,
    core.String? requestId,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (policyOrchestratorId != null)
        'policyOrchestratorId': [policyOrchestratorId],
      if (requestId != null) 'requestId': [requestId],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v2/' + core.Uri.encodeFull('$parent') + '/policyOrchestrators';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Deletes an existing policy orchestrator resource, parented by a project.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Name of the resource to be deleted.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/global/policyOrchestrators/\[^/\]+$`.
  ///
  /// [etag] - Optional. The current etag of the policy orchestrator. If an etag
  /// is provided and does not match the current etag of the policy
  /// orchestrator, deletion will be blocked and an ABORTED error will be
  /// returned.
  ///
  /// [requestId] - Optional. An optional request ID to identify requests.
  /// Specify a unique request ID so that if you must retry your request, the
  /// server will know to ignore the request if it has already been completed.
  /// The server will guarantee that for at least 60 minutes after the first
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
  async.Future<Operation> delete(
    core.String name, {
    core.String? etag,
    core.String? requestId,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (etag != null) 'etag': [etag],
      if (requestId != null) 'requestId': [requestId],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',

      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Retrieves an existing policy orchestrator, parented by a project.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/global/policyOrchestrators/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudOsconfigV2PolicyOrchestrator].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudOsconfigV2PolicyOrchestrator> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudOsconfigV2PolicyOrchestrator.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Lists the policy orchestrators under the given parent project resource.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent resource name.
  /// Value must have pattern `^projects/\[^/\]+/locations/global$`.
  ///
  /// [filter] - Optional. Filtering results
  ///
  /// [orderBy] - Optional. Hint for how to order the results
  ///
  /// [pageSize] - Optional. Requested page size. Server may return fewer items
  /// than requested. If unspecified, server will pick an appropriate default.
  ///
  /// [pageToken] - Optional. A token identifying a page of results the server
  /// should return.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudOsconfigV2ListPolicyOrchestratorsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudOsconfigV2ListPolicyOrchestratorsResponse> list(
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
        'v2/' + core.Uri.encodeFull('$parent') + '/policyOrchestrators';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudOsconfigV2ListPolicyOrchestratorsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Updates an existing policy orchestrator, parented by a project.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Immutable. Identifier. In form of *
  /// `organizations/{organization_id}/locations/global/policyOrchestrators/{orchestrator_id}`
  /// *
  /// `folders/{folder_id}/locations/global/policyOrchestrators/{orchestrator_id}`
  /// *
  /// `projects/{project_id_or_number}/locations/global/policyOrchestrators/{orchestrator_id}`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/global/policyOrchestrators/\[^/\]+$`.
  ///
  /// [updateMask] - Optional. The list of fields to merge into the existing
  /// policy orchestrator. A special \["*"\] field mask can be used to simply
  /// replace the entire resource. Otherwise, for all paths referenced in the
  /// mask, following merge rules are used: * output only fields are ignored, *
  /// primitive fields are replaced, * repeated fields are replaced, * map
  /// fields are merged key by key, * message fields are cleared if not set in
  /// the request, otherwise they are merged recursively (in particular -
  /// message fields set to an empty message has no side effects) If field mask
  /// (or its paths) is not specified, it is automatically inferred from the
  /// request using following rules: * primitive fields are listed, if set to a
  /// non-default value (as there is no way to distinguish between default and
  /// unset value), * map and repeated fields are listed, *
  /// `google.protobuf.Any` fields are listed, * other message fields are
  /// traversed recursively. Note: implicit mask does not allow clearing fields.
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
    GoogleCloudOsconfigV2PolicyOrchestrator request,
    core.String name, {
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (updateMask != null) 'updateMask': [updateMask],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
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

    final url_ = 'v2/' + core.Uri.encodeFull('$name') + ':cancel';

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

    final url_ = 'v2/' + core.Uri.encodeFull('$name');

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

    final url_ = 'v2/' + core.Uri.encodeFull('$name');

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

    final url_ = 'v2/' + core.Uri.encodeFull('$name') + '/operations';

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

/// The request message for Operations.CancelOperation.
typedef CancelOperationRequest = $Empty;

/// A generic empty message that you can re-use to avoid defining duplicated
/// empty messages in your APIs.
///
/// A typical example is to use it as the request or the response type of an API
/// method. For instance: service Foo { rpc Bar(google.protobuf.Empty) returns
/// (google.protobuf.Empty); }
typedef Empty = $Empty;

/// Message encapsulating a value that can be either absolute ("fixed") or
/// relative ("percent") to a value.
typedef FixedOrPercent = $FixedOrPercent;

/// Selector containing locations in scope.
class GoogleCloudOsconfigV2OrchestrationScopeLocationSelector {
  /// Names of the locations in scope.
  ///
  /// Format: `us-central1-a`
  ///
  /// Optional.
  core.List<core.String>? includedLocations;

  GoogleCloudOsconfigV2OrchestrationScopeLocationSelector({
    this.includedLocations,
  });

  GoogleCloudOsconfigV2OrchestrationScopeLocationSelector.fromJson(
    core.Map json_,
  ) : this(
        includedLocations:
            (json_['includedLocations'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (includedLocations != null) 'includedLocations': includedLocations!,
  };
}

/// Selector containing Cloud Resource Manager resource hierarchy nodes.
class GoogleCloudOsconfigV2OrchestrationScopeResourceHierarchySelector {
  /// Names of the folders in scope.
  ///
  /// Format: `folders/{folder_id}`
  ///
  /// Optional.
  core.List<core.String>? includedFolders;

  /// Names of the projects in scope.
  ///
  /// Format: `projects/{project_number}`
  ///
  /// Optional.
  core.List<core.String>? includedProjects;

  GoogleCloudOsconfigV2OrchestrationScopeResourceHierarchySelector({
    this.includedFolders,
    this.includedProjects,
  });

  GoogleCloudOsconfigV2OrchestrationScopeResourceHierarchySelector.fromJson(
    core.Map json_,
  ) : this(
        includedFolders:
            (json_['includedFolders'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        includedProjects:
            (json_['includedProjects'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (includedFolders != null) 'includedFolders': includedFolders!,
    if (includedProjects != null) 'includedProjects': includedProjects!,
  };
}

/// Selector for the resources in scope of orchestration.
class GoogleCloudOsconfigV2OrchestrationScopeSelector {
  /// Selector for selecting locations.
  GoogleCloudOsconfigV2OrchestrationScopeLocationSelector? locationSelector;

  /// Selector for selecting resource hierarchy.
  GoogleCloudOsconfigV2OrchestrationScopeResourceHierarchySelector?
  resourceHierarchySelector;

  GoogleCloudOsconfigV2OrchestrationScopeSelector({
    this.locationSelector,
    this.resourceHierarchySelector,
  });

  GoogleCloudOsconfigV2OrchestrationScopeSelector.fromJson(core.Map json_)
    : this(
        locationSelector:
            json_.containsKey('locationSelector')
                ? GoogleCloudOsconfigV2OrchestrationScopeLocationSelector.fromJson(
                  json_['locationSelector']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        resourceHierarchySelector:
            json_.containsKey('resourceHierarchySelector')
                ? GoogleCloudOsconfigV2OrchestrationScopeResourceHierarchySelector.fromJson(
                  json_['resourceHierarchySelector']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (locationSelector != null) 'locationSelector': locationSelector!,
    if (resourceHierarchySelector != null)
      'resourceHierarchySelector': resourceHierarchySelector!,
  };
}

/// Describes the state of a single iteration of the orchestrator.
class GoogleCloudOsconfigV2PolicyOrchestratorIterationState {
  /// Error thrown in the wave iteration.
  ///
  /// Output only.
  Status? error;

  /// Number of orchestration actions which failed so far.
  ///
  /// For more details, query the Cloud Logs.
  ///
  /// Output only.
  core.String? failedActions;

  /// Finish time of the wave iteration.
  ///
  /// Output only.
  core.String? finishTime;

  /// Unique identifier of the iteration.
  ///
  /// Output only.
  core.String? iterationId;

  /// Overall number of actions done by the orchestrator so far.
  ///
  /// Output only.
  core.String? performedActions;

  /// An estimated percentage of the progress.
  ///
  /// Number between 0 and 100.
  ///
  /// Output only.
  core.double? progress;

  /// Start time of the wave iteration.
  ///
  /// Output only.
  core.String? startTime;

  /// State of the iteration.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : Default value. This value is unused.
  /// - "PROCESSING" : Iteration is in progress.
  /// - "COMPLETED" : Iteration completed, with all actions being successful.
  /// - "FAILED" : Iteration completed, with failures.
  /// - "CANCELLED" : Iteration was explicitly cancelled.
  /// - "UNKNOWN" : Impossible to determine current state of the iteration.
  core.String? state;

  GoogleCloudOsconfigV2PolicyOrchestratorIterationState({
    this.error,
    this.failedActions,
    this.finishTime,
    this.iterationId,
    this.performedActions,
    this.progress,
    this.startTime,
    this.state,
  });

  GoogleCloudOsconfigV2PolicyOrchestratorIterationState.fromJson(core.Map json_)
    : this(
        error:
            json_.containsKey('error')
                ? Status.fromJson(
                  json_['error'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        failedActions: json_['failedActions'] as core.String?,
        finishTime: json_['finishTime'] as core.String?,
        iterationId: json_['iterationId'] as core.String?,
        performedActions: json_['performedActions'] as core.String?,
        progress: (json_['progress'] as core.num?)?.toDouble(),
        startTime: json_['startTime'] as core.String?,
        state: json_['state'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (error != null) 'error': error!,
    if (failedActions != null) 'failedActions': failedActions!,
    if (finishTime != null) 'finishTime': finishTime!,
    if (iterationId != null) 'iterationId': iterationId!,
    if (performedActions != null) 'performedActions': performedActions!,
    if (progress != null) 'progress': progress!,
    if (startTime != null) 'startTime': startTime!,
    if (state != null) 'state': state!,
  };
}

/// Describes the state of the orchestration process.
class GoogleCloudOsconfigV2PolicyOrchestratorOrchestrationState {
  /// Current Wave iteration state.
  ///
  /// Output only.
  GoogleCloudOsconfigV2PolicyOrchestratorIterationState? currentIterationState;

  /// Previous Wave iteration state.
  ///
  /// Output only.
  GoogleCloudOsconfigV2PolicyOrchestratorIterationState? previousIterationState;

  GoogleCloudOsconfigV2PolicyOrchestratorOrchestrationState({
    this.currentIterationState,
    this.previousIterationState,
  });

  GoogleCloudOsconfigV2PolicyOrchestratorOrchestrationState.fromJson(
    core.Map json_,
  ) : this(
        currentIterationState:
            json_.containsKey('currentIterationState')
                ? GoogleCloudOsconfigV2PolicyOrchestratorIterationState.fromJson(
                  json_['currentIterationState']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        previousIterationState:
            json_.containsKey('previousIterationState')
                ? GoogleCloudOsconfigV2PolicyOrchestratorIterationState.fromJson(
                  json_['previousIterationState']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (currentIterationState != null)
      'currentIterationState': currentIterationState!,
    if (previousIterationState != null)
      'previousIterationState': previousIterationState!,
  };
}

/// Response for the list policy orchestrator resources.
class GoogleCloudOsconfigV2ListPolicyOrchestratorsResponse {
  /// A token, which can be sent as `page_token` to retrieve the next page.
  ///
  /// If this field is omitted, there are no subsequent pages.
  core.String? nextPageToken;

  /// The policy orchestrators for the specified parent resource.
  core.List<GoogleCloudOsconfigV2PolicyOrchestrator>? policyOrchestrators;

  /// Locations that could not be reached.
  core.List<core.String>? unreachable;

  GoogleCloudOsconfigV2ListPolicyOrchestratorsResponse({
    this.nextPageToken,
    this.policyOrchestrators,
    this.unreachable,
  });

  GoogleCloudOsconfigV2ListPolicyOrchestratorsResponse.fromJson(core.Map json_)
    : this(
        nextPageToken: json_['nextPageToken'] as core.String?,
        policyOrchestrators:
            (json_['policyOrchestrators'] as core.List?)
                ?.map(
                  (value) => GoogleCloudOsconfigV2PolicyOrchestrator.fromJson(
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
    if (policyOrchestrators != null)
      'policyOrchestrators': policyOrchestrators!,
    if (unreachable != null) 'unreachable': unreachable!,
  };
}

/// Represents a resource that is being orchestrated by the policy orchestrator.
class GoogleCloudOsconfigV2OrchestratedResource {
  /// ID of the resource to be used while generating set of affected resources.
  ///
  /// For UPSERT action the value is auto-generated during PolicyOrchestrator
  /// creation when not set. When the value is set it should following next
  /// restrictions: * Must contain only lowercase letters, numbers, and hyphens.
  /// * Must start with a letter. * Must be between 1-63 characters. * Must end
  /// with a number or a letter. * Must be unique within the project. For DELETE
  /// action, ID must be specified explicitly during PolicyOrchestrator
  /// creation.
  ///
  /// Optional.
  core.String? id;

  /// OSPolicyAssignment resource to be created, updated or deleted.
  ///
  /// Name field is ignored and replace with a generated value. With this field
  /// set, orchestrator will perform actions on
  /// `project/{project}/locations/{zone}/osPolicyAssignments/{resource_id}`
  /// resources, where `project` and `zone` pairs come from the expanded scope,
  /// and `resource_id` comes from the `resource_id` field of orchestrator
  /// resource.
  ///
  /// Optional.
  OSPolicyAssignment? osPolicyAssignmentV1Payload;

  GoogleCloudOsconfigV2OrchestratedResource({
    this.id,
    this.osPolicyAssignmentV1Payload,
  });

  GoogleCloudOsconfigV2OrchestratedResource.fromJson(core.Map json_)
    : this(
        id: json_['id'] as core.String?,
        osPolicyAssignmentV1Payload:
            json_.containsKey('osPolicyAssignmentV1Payload')
                ? OSPolicyAssignment.fromJson(
                  json_['osPolicyAssignmentV1Payload']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (id != null) 'id': id!,
    if (osPolicyAssignmentV1Payload != null)
      'osPolicyAssignmentV1Payload': osPolicyAssignmentV1Payload!,
  };
}

/// Defines a set of selectors which drive which resources are in scope of
/// policy orchestration.
class GoogleCloudOsconfigV2OrchestrationScope {
  /// Selectors of the orchestration scope.
  ///
  /// There is a logical AND between each selector defined. When there is no
  /// explicit `ResourceHierarchySelector` selector specified, the scope is by
  /// default bounded to the parent of the policy orchestrator resource.
  ///
  /// Optional.
  core.List<GoogleCloudOsconfigV2OrchestrationScopeSelector>? selectors;

  GoogleCloudOsconfigV2OrchestrationScope({this.selectors});

  GoogleCloudOsconfigV2OrchestrationScope.fromJson(core.Map json_)
    : this(
        selectors:
            (json_['selectors'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleCloudOsconfigV2OrchestrationScopeSelector.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (selectors != null) 'selectors': selectors!,
  };
}

/// PolicyOrchestrator helps managing project+zone level policy resources (e.g.
/// OS Policy Assignments), by providing tools to create, update and delete them
/// across projects and locations, at scale.
///
/// Policy orchestrator functions as an endless loop. Each iteration
/// orchestrator computes a set of resources that should be affected, then
/// progressively applies changes to them. If for some reason this set of
/// resources changes over time (e.g. new projects are added), the future loop
/// iterations will address that. Orchestrator can either upsert or delete
/// policy resources. For more details, see the description of the `action`, and
/// `orchestrated_resource` fields. Note that policy orchestrator do not
/// "manage" the resources it creates. Every iteration is independent and only
/// minimal history of past actions is retained (apart from Cloud Logging). If
/// orchestrator gets deleted, it does not affect the resources it created in
/// the past. Those will remain where they were. Same applies if projects are
/// removed from the orchestrator's scope.
class GoogleCloudOsconfigV2PolicyOrchestrator {
  /// Action to be done by the orchestrator in
  /// `projects/{project_id}/zones/{zone_id}` locations defined by the
  /// `orchestration_scope`.
  ///
  /// Allowed values: - `UPSERT` - Orchestrator will create or update target
  /// resources. - `DELETE` - Orchestrator will delete target resources, if they
  /// exist
  ///
  /// Required.
  core.String? action;

  /// Timestamp when the policy orchestrator resource was created.
  ///
  /// Output only.
  core.String? createTime;

  /// Freeform text describing the purpose of the resource.
  ///
  /// Optional.
  core.String? description;

  /// This checksum is computed by the server based on the value of other
  /// fields, and may be sent on update and delete requests to ensure the client
  /// has an up-to-date value before proceeding.
  ///
  /// Output only.
  core.String? etag;

  /// Labels as key value pairs
  ///
  /// Optional.
  core.Map<core.String, core.String>? labels;

  /// Identifier.
  ///
  /// In form of *
  /// `organizations/{organization_id}/locations/global/policyOrchestrators/{orchestrator_id}`
  /// *
  /// `folders/{folder_id}/locations/global/policyOrchestrators/{orchestrator_id}`
  /// *
  /// `projects/{project_id_or_number}/locations/global/policyOrchestrators/{orchestrator_id}`
  ///
  /// Immutable.
  core.String? name;

  /// Resource to be orchestrated by the policy orchestrator.
  ///
  /// Required.
  GoogleCloudOsconfigV2OrchestratedResource? orchestratedResource;

  /// Defines scope for the orchestration, in context of the enclosing
  /// PolicyOrchestrator resource.
  ///
  /// Scope is expanded into a list of pairs, in which the rollout action will
  /// take place. Expansion starts with a Folder resource parenting the
  /// PolicyOrchestrator resource: - All the descendant projects are listed. -
  /// List of project is cross joined with a list of all available zones. -
  /// Resulting list of pairs is filtered according to the selectors.
  ///
  /// Optional.
  GoogleCloudOsconfigV2OrchestrationScope? orchestrationScope;

  /// State of the orchestration.
  ///
  /// Output only.
  GoogleCloudOsconfigV2PolicyOrchestratorOrchestrationState? orchestrationState;

  /// Set to true, if the there are ongoing changes being applied by the
  /// orchestrator.
  ///
  /// Output only.
  core.bool? reconciling;

  /// State of the orchestrator.
  ///
  /// Can be updated to change orchestrator behaviour. Allowed values: -
  /// `ACTIVE` - orchestrator is actively looking for actions to be taken. -
  /// `STOPPED` - orchestrator won't make any changes. Note: There might be more
  /// states added in the future. We use string here instead of an enum, to
  /// avoid the need of propagating new states to all the client code.
  ///
  /// Optional.
  core.String? state;

  /// Timestamp when the policy orchestrator resource was last modified.
  ///
  /// Output only.
  core.String? updateTime;

  GoogleCloudOsconfigV2PolicyOrchestrator({
    this.action,
    this.createTime,
    this.description,
    this.etag,
    this.labels,
    this.name,
    this.orchestratedResource,
    this.orchestrationScope,
    this.orchestrationState,
    this.reconciling,
    this.state,
    this.updateTime,
  });

  GoogleCloudOsconfigV2PolicyOrchestrator.fromJson(core.Map json_)
    : this(
        action: json_['action'] as core.String?,
        createTime: json_['createTime'] as core.String?,
        description: json_['description'] as core.String?,
        etag: json_['etag'] as core.String?,
        labels: (json_['labels'] as core.Map<core.String, core.dynamic>?)?.map(
          (key, value) => core.MapEntry(key, value as core.String),
        ),
        name: json_['name'] as core.String?,
        orchestratedResource:
            json_.containsKey('orchestratedResource')
                ? GoogleCloudOsconfigV2OrchestratedResource.fromJson(
                  json_['orchestratedResource']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        orchestrationScope:
            json_.containsKey('orchestrationScope')
                ? GoogleCloudOsconfigV2OrchestrationScope.fromJson(
                  json_['orchestrationScope']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        orchestrationState:
            json_.containsKey('orchestrationState')
                ? GoogleCloudOsconfigV2PolicyOrchestratorOrchestrationState.fromJson(
                  json_['orchestrationState']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        reconciling: json_['reconciling'] as core.bool?,
        state: json_['state'] as core.String?,
        updateTime: json_['updateTime'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (action != null) 'action': action!,
    if (createTime != null) 'createTime': createTime!,
    if (description != null) 'description': description!,
    if (etag != null) 'etag': etag!,
    if (labels != null) 'labels': labels!,
    if (name != null) 'name': name!,
    if (orchestratedResource != null)
      'orchestratedResource': orchestratedResource!,
    if (orchestrationScope != null) 'orchestrationScope': orchestrationScope!,
    if (orchestrationState != null) 'orchestrationState': orchestrationState!,
    if (reconciling != null) 'reconciling': reconciling!,
    if (state != null) 'state': state!,
    if (updateTime != null) 'updateTime': updateTime!,
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

/// An OS policy defines the desired state configuration for a VM.
class OSPolicy {
  /// This flag determines the OS policy compliance status when none of the
  /// resource groups within the policy are applicable for a VM.
  ///
  /// Set this value to `true` if the policy needs to be reported as compliant
  /// even if the policy has nothing to validate or enforce.
  core.bool? allowNoResourceGroupMatch;

  /// Policy description.
  ///
  /// Length of the description is limited to 1024 characters.
  core.String? description;

  /// The id of the OS policy with the following restrictions: * Must contain
  /// only lowercase letters, numbers, and hyphens.
  ///
  /// * Must start with a letter. * Must be between 1-63 characters. * Must end
  /// with a number or a letter. * Must be unique within the assignment.
  ///
  /// Required.
  core.String? id;

  /// Policy mode
  ///
  /// Required.
  /// Possible string values are:
  /// - "MODE_UNSPECIFIED" : Invalid mode
  /// - "VALIDATION" : This mode checks if the configuration resources in the
  /// policy are in their desired state. No actions are performed if they are
  /// not in the desired state. This mode is used for reporting purposes.
  /// - "ENFORCEMENT" : This mode checks if the configuration resources in the
  /// policy are in their desired state, and if not, enforces the desired state.
  core.String? mode;

  /// List of resource groups for the policy.
  ///
  /// For a particular VM, resource groups are evaluated in the order specified
  /// and the first resource group that is applicable is selected and the rest
  /// are ignored. If none of the resource groups are applicable for a VM, the
  /// VM is considered to be non-compliant w.r.t this policy. This behavior can
  /// be toggled by the flag `allow_no_resource_group_match`
  ///
  /// Required.
  core.List<OSPolicyResourceGroup>? resourceGroups;

  OSPolicy({
    this.allowNoResourceGroupMatch,
    this.description,
    this.id,
    this.mode,
    this.resourceGroups,
  });

  OSPolicy.fromJson(core.Map json_)
    : this(
        allowNoResourceGroupMatch:
            json_['allowNoResourceGroupMatch'] as core.bool?,
        description: json_['description'] as core.String?,
        id: json_['id'] as core.String?,
        mode: json_['mode'] as core.String?,
        resourceGroups:
            (json_['resourceGroups'] as core.List?)
                ?.map(
                  (value) => OSPolicyResourceGroup.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (allowNoResourceGroupMatch != null)
      'allowNoResourceGroupMatch': allowNoResourceGroupMatch!,
    if (description != null) 'description': description!,
    if (id != null) 'id': id!,
    if (mode != null) 'mode': mode!,
    if (resourceGroups != null) 'resourceGroups': resourceGroups!,
  };
}

/// OS policy assignment is an API resource that is used to apply a set of OS
/// policies to a dynamically targeted group of Compute Engine VM instances.
///
/// An OS policy is used to define the desired state configuration for a Compute
/// Engine VM instance through a set of configuration resources that provide
/// capabilities such as installing or removing software packages, or executing
/// a script. For more information about the OS policy resource definitions and
/// examples, see
/// [OS policy and OS policy assignment](https://cloud.google.com/compute/docs/os-configuration-management/working-with-os-policies).
class OSPolicyAssignment {
  /// Indicates that this revision has been successfully rolled out in this zone
  /// and new VMs will be assigned OS policies from this revision.
  ///
  /// For a given OS policy assignment, there is only one revision with a value
  /// of `true` for this field.
  ///
  /// Output only.
  core.bool? baseline;

  /// Indicates that this revision deletes the OS policy assignment.
  ///
  /// Output only.
  core.bool? deleted;

  /// OS policy assignment description.
  ///
  /// Length of the description is limited to 1024 characters.
  core.String? description;

  /// The etag for this OS policy assignment.
  ///
  /// If this is provided on update, it must match the server's etag.
  core.String? etag;

  /// Filter to select VMs.
  ///
  /// Required.
  OSPolicyAssignmentInstanceFilter? instanceFilter;

  /// Resource name.
  ///
  /// Format:
  /// `projects/{project_number}/locations/{location}/osPolicyAssignments/{os_policy_assignment_id}`
  /// This field is ignored when you create an OS policy assignment.
  core.String? name;

  /// List of OS policies to be applied to the VMs.
  ///
  /// Required.
  core.List<OSPolicy>? osPolicies;

  /// Indicates that reconciliation is in progress for the revision.
  ///
  /// This value is `true` when the `rollout_state` is one of: * IN_PROGRESS *
  /// CANCELLING
  ///
  /// Output only.
  core.bool? reconciling;

  /// The timestamp that the revision was created.
  ///
  /// Output only.
  core.String? revisionCreateTime;

  /// The assignment revision ID A new revision is committed whenever a rollout
  /// is triggered for a OS policy assignment
  ///
  /// Output only.
  core.String? revisionId;

  /// Rollout to deploy the OS policy assignment.
  ///
  /// A rollout is triggered in the following situations: 1) OSPolicyAssignment
  /// is created. 2) OSPolicyAssignment is updated and the update contains
  /// changes to one of the following fields: - instance_filter - os_policies 3)
  /// OSPolicyAssignment is deleted.
  ///
  /// Required.
  OSPolicyAssignmentRollout? rollout;

  /// OS policy assignment rollout state
  ///
  /// Output only.
  /// Possible string values are:
  /// - "ROLLOUT_STATE_UNSPECIFIED" : Invalid value
  /// - "IN_PROGRESS" : The rollout is in progress.
  /// - "CANCELLING" : The rollout is being cancelled.
  /// - "CANCELLED" : The rollout is cancelled.
  /// - "SUCCEEDED" : The rollout has completed successfully.
  core.String? rolloutState;

  /// Server generated unique id for the OS policy assignment resource.
  ///
  /// Output only.
  core.String? uid;

  OSPolicyAssignment({
    this.baseline,
    this.deleted,
    this.description,
    this.etag,
    this.instanceFilter,
    this.name,
    this.osPolicies,
    this.reconciling,
    this.revisionCreateTime,
    this.revisionId,
    this.rollout,
    this.rolloutState,
    this.uid,
  });

  OSPolicyAssignment.fromJson(core.Map json_)
    : this(
        baseline: json_['baseline'] as core.bool?,
        deleted: json_['deleted'] as core.bool?,
        description: json_['description'] as core.String?,
        etag: json_['etag'] as core.String?,
        instanceFilter:
            json_.containsKey('instanceFilter')
                ? OSPolicyAssignmentInstanceFilter.fromJson(
                  json_['instanceFilter']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        name: json_['name'] as core.String?,
        osPolicies:
            (json_['osPolicies'] as core.List?)
                ?.map(
                  (value) => OSPolicy.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        reconciling: json_['reconciling'] as core.bool?,
        revisionCreateTime: json_['revisionCreateTime'] as core.String?,
        revisionId: json_['revisionId'] as core.String?,
        rollout:
            json_.containsKey('rollout')
                ? OSPolicyAssignmentRollout.fromJson(
                  json_['rollout'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        rolloutState: json_['rolloutState'] as core.String?,
        uid: json_['uid'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (baseline != null) 'baseline': baseline!,
    if (deleted != null) 'deleted': deleted!,
    if (description != null) 'description': description!,
    if (etag != null) 'etag': etag!,
    if (instanceFilter != null) 'instanceFilter': instanceFilter!,
    if (name != null) 'name': name!,
    if (osPolicies != null) 'osPolicies': osPolicies!,
    if (reconciling != null) 'reconciling': reconciling!,
    if (revisionCreateTime != null) 'revisionCreateTime': revisionCreateTime!,
    if (revisionId != null) 'revisionId': revisionId!,
    if (rollout != null) 'rollout': rollout!,
    if (rolloutState != null) 'rolloutState': rolloutState!,
    if (uid != null) 'uid': uid!,
  };
}

/// Filters to select target VMs for an assignment.
///
/// If more than one filter criteria is specified below, a VM will be selected
/// if and only if it satisfies all of them.
class OSPolicyAssignmentInstanceFilter {
  /// Target all VMs in the project.
  ///
  /// If true, no other criteria is permitted.
  core.bool? all;

  /// List of label sets used for VM exclusion.
  ///
  /// If the list has more than one label set, the VM is excluded if any of the
  /// label sets are applicable for the VM.
  core.List<OSPolicyAssignmentLabelSet>? exclusionLabels;

  /// List of label sets used for VM inclusion.
  ///
  /// If the list has more than one `LabelSet`, the VM is included if any of the
  /// label sets are applicable for the VM.
  core.List<OSPolicyAssignmentLabelSet>? inclusionLabels;

  /// List of inventories to select VMs.
  ///
  /// A VM is selected if its inventory data matches at least one of the
  /// following inventories.
  core.List<OSPolicyAssignmentInstanceFilterInventory>? inventories;

  OSPolicyAssignmentInstanceFilter({
    this.all,
    this.exclusionLabels,
    this.inclusionLabels,
    this.inventories,
  });

  OSPolicyAssignmentInstanceFilter.fromJson(core.Map json_)
    : this(
        all: json_['all'] as core.bool?,
        exclusionLabels:
            (json_['exclusionLabels'] as core.List?)
                ?.map(
                  (value) => OSPolicyAssignmentLabelSet.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        inclusionLabels:
            (json_['inclusionLabels'] as core.List?)
                ?.map(
                  (value) => OSPolicyAssignmentLabelSet.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        inventories:
            (json_['inventories'] as core.List?)
                ?.map(
                  (value) => OSPolicyAssignmentInstanceFilterInventory.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (all != null) 'all': all!,
    if (exclusionLabels != null) 'exclusionLabels': exclusionLabels!,
    if (inclusionLabels != null) 'inclusionLabels': inclusionLabels!,
    if (inventories != null) 'inventories': inventories!,
  };
}

/// VM inventory details.
typedef OSPolicyAssignmentInstanceFilterInventory = $Shared04;

/// Message representing label set.
///
/// * A label is a key value pair set for a VM. * A LabelSet is a set of labels.
/// * Labels within a LabelSet are ANDed. In other words, a LabelSet is
/// applicable for a VM only if it matches all the labels in the LabelSet. *
/// Example: A LabelSet with 2 labels: `env=prod` and `type=webserver` will only
/// be applicable for those VMs with both labels present.
typedef OSPolicyAssignmentLabelSet = $OSPolicyAssignmentLabelSet;

/// Message to configure the rollout at the zonal level for the OS policy
/// assignment.
class OSPolicyAssignmentRollout {
  /// The maximum number (or percentage) of VMs per zone to disrupt at any given
  /// moment.
  ///
  /// Required.
  FixedOrPercent? disruptionBudget;

  /// This determines the minimum duration of time to wait after the
  /// configuration changes are applied through the current rollout.
  ///
  /// A VM continues to count towards the `disruption_budget` at least until
  /// this duration of time has passed after configuration changes are applied.
  ///
  /// Required.
  core.String? minWaitDuration;

  OSPolicyAssignmentRollout({this.disruptionBudget, this.minWaitDuration});

  OSPolicyAssignmentRollout.fromJson(core.Map json_)
    : this(
        disruptionBudget:
            json_.containsKey('disruptionBudget')
                ? FixedOrPercent.fromJson(
                  json_['disruptionBudget']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        minWaitDuration: json_['minWaitDuration'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (disruptionBudget != null) 'disruptionBudget': disruptionBudget!,
    if (minWaitDuration != null) 'minWaitDuration': minWaitDuration!,
  };
}

/// Filtering criteria to select VMs based on inventory details.
typedef OSPolicyInventoryFilter = $Shared04;

/// An OS policy resource is used to define the desired state configuration and
/// provides a specific functionality like installing/removing packages,
/// executing a script etc.
///
/// The system ensures that resources are always in their desired state by
/// taking necessary actions if they have drifted from their desired state.
class OSPolicyResource {
  /// Exec resource
  OSPolicyResourceExecResource? exec;

  /// File resource
  OSPolicyResourceFileResource? file;

  /// The id of the resource with the following restrictions: * Must contain
  /// only lowercase letters, numbers, and hyphens.
  ///
  /// * Must start with a letter. * Must be between 1-63 characters. * Must end
  /// with a number or a letter. * Must be unique within the OS policy.
  ///
  /// Required.
  core.String? id;

  /// Package resource
  OSPolicyResourcePackageResource? pkg;

  /// Package repository resource
  OSPolicyResourceRepositoryResource? repository;

  OSPolicyResource({this.exec, this.file, this.id, this.pkg, this.repository});

  OSPolicyResource.fromJson(core.Map json_)
    : this(
        exec:
            json_.containsKey('exec')
                ? OSPolicyResourceExecResource.fromJson(
                  json_['exec'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        file:
            json_.containsKey('file')
                ? OSPolicyResourceFileResource.fromJson(
                  json_['file'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        id: json_['id'] as core.String?,
        pkg:
            json_.containsKey('pkg')
                ? OSPolicyResourcePackageResource.fromJson(
                  json_['pkg'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        repository:
            json_.containsKey('repository')
                ? OSPolicyResourceRepositoryResource.fromJson(
                  json_['repository'] as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (exec != null) 'exec': exec!,
    if (file != null) 'file': file!,
    if (id != null) 'id': id!,
    if (pkg != null) 'pkg': pkg!,
    if (repository != null) 'repository': repository!,
  };
}

/// A resource that allows executing scripts on the VM.
///
/// The `ExecResource` has 2 stages: `validate` and `enforce` and both stages
/// accept a script as an argument to execute. When the `ExecResource` is
/// applied by the agent, it first executes the script in the `validate` stage.
/// The `validate` stage can signal that the `ExecResource` is already in the
/// desired state by returning an exit code of `100`. If the `ExecResource` is
/// not in the desired state, it should return an exit code of `101`. Any other
/// exit code returned by this stage is considered an error. If the
/// `ExecResource` is not in the desired state based on the exit code from the
/// `validate` stage, the agent proceeds to execute the script from the
/// `enforce` stage. If the `ExecResource` is already in the desired state, the
/// `enforce` stage will not be run. Similar to `validate` stage, the `enforce`
/// stage should return an exit code of `100` to indicate that the resource in
/// now in its desired state. Any other exit code is considered an error. NOTE:
/// An exit code of `100` was chosen over `0` (and `101` vs `1`) to have an
/// explicit indicator of `in desired state`, `not in desired state` and errors.
/// Because, for example, Powershell will always return an exit code of `0`
/// unless an `exit` statement is provided in the script. So, for reasons of
/// consistency and being explicit, exit codes `100` and `101` were chosen.
class OSPolicyResourceExecResource {
  /// What to run to bring this resource into the desired state.
  ///
  /// An exit code of 100 indicates "success", any other exit code indicates a
  /// failure running enforce.
  OSPolicyResourceExecResourceExec? enforce;

  /// What to run to validate this resource is in the desired state.
  ///
  /// An exit code of 100 indicates "in desired state", and exit code of 101
  /// indicates "not in desired state". Any other exit code indicates a failure
  /// running validate.
  ///
  /// Required.
  OSPolicyResourceExecResourceExec? validate;

  OSPolicyResourceExecResource({this.enforce, this.validate});

  OSPolicyResourceExecResource.fromJson(core.Map json_)
    : this(
        enforce:
            json_.containsKey('enforce')
                ? OSPolicyResourceExecResourceExec.fromJson(
                  json_['enforce'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        validate:
            json_.containsKey('validate')
                ? OSPolicyResourceExecResourceExec.fromJson(
                  json_['validate'] as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (enforce != null) 'enforce': enforce!,
    if (validate != null) 'validate': validate!,
  };
}

/// A file or script to execute.
class OSPolicyResourceExecResourceExec {
  /// Optional arguments to pass to the source during execution.
  core.List<core.String>? args;

  /// A remote or local file.
  OSPolicyResourceFile? file;

  /// The script interpreter to use.
  ///
  /// Required.
  /// Possible string values are:
  /// - "INTERPRETER_UNSPECIFIED" : Invalid value, the request will return
  /// validation error.
  /// - "NONE" : If an interpreter is not specified, the source is executed
  /// directly. This execution, without an interpreter, only succeeds for
  /// executables and scripts that have shebang lines.
  /// - "SHELL" : Indicates that the script runs with `/bin/sh` on Linux and
  /// `cmd.exe` on Windows.
  /// - "POWERSHELL" : Indicates that the script runs with PowerShell.
  core.String? interpreter;

  /// Only recorded for enforce Exec.
  ///
  /// Path to an output file (that is created by this Exec) whose content will
  /// be recorded in OSPolicyResourceCompliance after a successful run. Absence
  /// or failure to read this file will result in this ExecResource being
  /// non-compliant. Output file size is limited to 500K bytes.
  core.String? outputFilePath;

  /// An inline script.
  ///
  /// The size of the script is limited to 32KiB.
  core.String? script;

  OSPolicyResourceExecResourceExec({
    this.args,
    this.file,
    this.interpreter,
    this.outputFilePath,
    this.script,
  });

  OSPolicyResourceExecResourceExec.fromJson(core.Map json_)
    : this(
        args:
            (json_['args'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        file:
            json_.containsKey('file')
                ? OSPolicyResourceFile.fromJson(
                  json_['file'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        interpreter: json_['interpreter'] as core.String?,
        outputFilePath: json_['outputFilePath'] as core.String?,
        script: json_['script'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (args != null) 'args': args!,
    if (file != null) 'file': file!,
    if (interpreter != null) 'interpreter': interpreter!,
    if (outputFilePath != null) 'outputFilePath': outputFilePath!,
    if (script != null) 'script': script!,
  };
}

/// A remote or local file.
class OSPolicyResourceFile {
  /// Defaults to false.
  ///
  /// When false, files are subject to validations based on the file type:
  /// Remote: A checksum must be specified. Cloud Storage: An object generation
  /// number must be specified.
  core.bool? allowInsecure;

  /// A Cloud Storage object.
  OSPolicyResourceFileGcs? gcs;

  /// A local path within the VM to use.
  core.String? localPath;

  /// A generic remote file.
  OSPolicyResourceFileRemote? remote;

  OSPolicyResourceFile({
    this.allowInsecure,
    this.gcs,
    this.localPath,
    this.remote,
  });

  OSPolicyResourceFile.fromJson(core.Map json_)
    : this(
        allowInsecure: json_['allowInsecure'] as core.bool?,
        gcs:
            json_.containsKey('gcs')
                ? OSPolicyResourceFileGcs.fromJson(
                  json_['gcs'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        localPath: json_['localPath'] as core.String?,
        remote:
            json_.containsKey('remote')
                ? OSPolicyResourceFileRemote.fromJson(
                  json_['remote'] as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (allowInsecure != null) 'allowInsecure': allowInsecure!,
    if (gcs != null) 'gcs': gcs!,
    if (localPath != null) 'localPath': localPath!,
    if (remote != null) 'remote': remote!,
  };
}

/// Specifies a file available as a Cloud Storage Object.
typedef OSPolicyResourceFileGcs = $OSPolicyResourceFileGcs;

/// Specifies a file available via some URI.
typedef OSPolicyResourceFileRemote = $OSPolicyResourceFileRemote;

/// A resource that manages the state of a file.
class OSPolicyResourceFileResource {
  /// A a file with this content.
  ///
  /// The size of the content is limited to 32KiB.
  core.String? content;

  /// A remote or local source.
  OSPolicyResourceFile? file;

  /// The absolute path of the file within the VM.
  ///
  /// Required.
  core.String? path;

  /// Consists of three octal digits which represent, in order, the permissions
  /// of the owner, group, and other users for the file (similarly to the
  /// numeric mode used in the linux chmod utility).
  ///
  /// Each digit represents a three bit number with the 4 bit corresponding to
  /// the read permissions, the 2 bit corresponds to the write bit, and the one
  /// bit corresponds to the execute permission. Default behavior is 755. Below
  /// are some examples of permissions and their associated values: read, write,
  /// and execute: 7 read and execute: 5 read and write: 6 read only: 4
  core.String? permissions;

  /// Desired state of the file.
  ///
  /// Required.
  /// Possible string values are:
  /// - "DESIRED_STATE_UNSPECIFIED" : Unspecified is invalid.
  /// - "PRESENT" : Ensure file at path is present.
  /// - "ABSENT" : Ensure file at path is absent.
  /// - "CONTENTS_MATCH" : Ensure the contents of the file at path matches. If
  /// the file does not exist it will be created.
  core.String? state;

  OSPolicyResourceFileResource({
    this.content,
    this.file,
    this.path,
    this.permissions,
    this.state,
  });

  OSPolicyResourceFileResource.fromJson(core.Map json_)
    : this(
        content: json_['content'] as core.String?,
        file:
            json_.containsKey('file')
                ? OSPolicyResourceFile.fromJson(
                  json_['file'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        path: json_['path'] as core.String?,
        permissions: json_['permissions'] as core.String?,
        state: json_['state'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (content != null) 'content': content!,
    if (file != null) 'file': file!,
    if (path != null) 'path': path!,
    if (permissions != null) 'permissions': permissions!,
    if (state != null) 'state': state!,
  };
}

/// Resource groups provide a mechanism to group OS policy resources.
///
/// Resource groups enable OS policy authors to create a single OS policy to be
/// applied to VMs running different operating Systems. When the OS policy is
/// applied to a target VM, the appropriate resource group within the OS policy
/// is selected based on the `OSFilter` specified within the resource group.
class OSPolicyResourceGroup {
  /// List of inventory filters for the resource group.
  ///
  /// The resources in this resource group are applied to the target VM if it
  /// satisfies at least one of the following inventory filters. For example, to
  /// apply this resource group to VMs running either `RHEL` or `CentOS`
  /// operating systems, specify 2 items for the list with following values:
  /// inventory_filters\[0\].os_short_name='rhel' and
  /// inventory_filters\[1\].os_short_name='centos' If the list is empty, this
  /// resource group will be applied to the target VM unconditionally.
  core.List<OSPolicyInventoryFilter>? inventoryFilters;

  /// List of resources configured for this resource group.
  ///
  /// The resources are executed in the exact order specified here.
  ///
  /// Required.
  core.List<OSPolicyResource>? resources;

  OSPolicyResourceGroup({this.inventoryFilters, this.resources});

  OSPolicyResourceGroup.fromJson(core.Map json_)
    : this(
        inventoryFilters:
            (json_['inventoryFilters'] as core.List?)
                ?.map(
                  (value) => OSPolicyInventoryFilter.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        resources:
            (json_['resources'] as core.List?)
                ?.map(
                  (value) => OSPolicyResource.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (inventoryFilters != null) 'inventoryFilters': inventoryFilters!,
    if (resources != null) 'resources': resources!,
  };
}

/// A resource that manages a system package.
class OSPolicyResourcePackageResource {
  /// A package managed by Apt.
  OSPolicyResourcePackageResourceAPT? apt;

  /// A deb package file.
  OSPolicyResourcePackageResourceDeb? deb;

  /// The desired state the agent should maintain for this package.
  ///
  /// Required.
  /// Possible string values are:
  /// - "DESIRED_STATE_UNSPECIFIED" : Unspecified is invalid.
  /// - "INSTALLED" : Ensure that the package is installed.
  /// - "REMOVED" : The agent ensures that the package is not installed and
  /// uninstalls it if detected.
  core.String? desiredState;

  /// A package managed by GooGet.
  OSPolicyResourcePackageResourceGooGet? googet;

  /// An MSI package.
  OSPolicyResourcePackageResourceMSI? msi;

  /// An rpm package file.
  OSPolicyResourcePackageResourceRPM? rpm;

  /// A package managed by YUM.
  OSPolicyResourcePackageResourceYUM? yum;

  /// A package managed by Zypper.
  OSPolicyResourcePackageResourceZypper? zypper;

  OSPolicyResourcePackageResource({
    this.apt,
    this.deb,
    this.desiredState,
    this.googet,
    this.msi,
    this.rpm,
    this.yum,
    this.zypper,
  });

  OSPolicyResourcePackageResource.fromJson(core.Map json_)
    : this(
        apt:
            json_.containsKey('apt')
                ? OSPolicyResourcePackageResourceAPT.fromJson(
                  json_['apt'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        deb:
            json_.containsKey('deb')
                ? OSPolicyResourcePackageResourceDeb.fromJson(
                  json_['deb'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        desiredState: json_['desiredState'] as core.String?,
        googet:
            json_.containsKey('googet')
                ? OSPolicyResourcePackageResourceGooGet.fromJson(
                  json_['googet'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        msi:
            json_.containsKey('msi')
                ? OSPolicyResourcePackageResourceMSI.fromJson(
                  json_['msi'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        rpm:
            json_.containsKey('rpm')
                ? OSPolicyResourcePackageResourceRPM.fromJson(
                  json_['rpm'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        yum:
            json_.containsKey('yum')
                ? OSPolicyResourcePackageResourceYUM.fromJson(
                  json_['yum'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        zypper:
            json_.containsKey('zypper')
                ? OSPolicyResourcePackageResourceZypper.fromJson(
                  json_['zypper'] as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (apt != null) 'apt': apt!,
    if (deb != null) 'deb': deb!,
    if (desiredState != null) 'desiredState': desiredState!,
    if (googet != null) 'googet': googet!,
    if (msi != null) 'msi': msi!,
    if (rpm != null) 'rpm': rpm!,
    if (yum != null) 'yum': yum!,
    if (zypper != null) 'zypper': zypper!,
  };
}

/// A package managed by APT.
///
/// - install: `apt-get update && apt-get -y install [name]` - remove: `apt-get
/// -y remove [name]`
typedef OSPolicyResourcePackageResourceAPT = $Shared00;

/// A deb package file.
///
/// dpkg packages only support INSTALLED state.
class OSPolicyResourcePackageResourceDeb {
  /// Whether dependencies should also be installed.
  ///
  /// - install when false: `dpkg -i package` - install when true: `apt-get
  /// update && apt-get -y install package.deb`
  core.bool? pullDeps;

  /// A deb package.
  ///
  /// Required.
  OSPolicyResourceFile? source;

  OSPolicyResourcePackageResourceDeb({this.pullDeps, this.source});

  OSPolicyResourcePackageResourceDeb.fromJson(core.Map json_)
    : this(
        pullDeps: json_['pullDeps'] as core.bool?,
        source:
            json_.containsKey('source')
                ? OSPolicyResourceFile.fromJson(
                  json_['source'] as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (pullDeps != null) 'pullDeps': pullDeps!,
    if (source != null) 'source': source!,
  };
}

/// A package managed by GooGet.
///
/// - install: `googet -noconfirm install package` - remove: `googet -noconfirm
/// remove package`
typedef OSPolicyResourcePackageResourceGooGet = $Shared00;

/// An MSI package.
///
/// MSI packages only support INSTALLED state.
class OSPolicyResourcePackageResourceMSI {
  /// Additional properties to use during installation.
  ///
  /// This should be in the format of Property=Setting. Appended to the defaults
  /// of `ACTION=INSTALL REBOOT=ReallySuppress`.
  core.List<core.String>? properties;

  /// The MSI package.
  ///
  /// Required.
  OSPolicyResourceFile? source;

  OSPolicyResourcePackageResourceMSI({this.properties, this.source});

  OSPolicyResourcePackageResourceMSI.fromJson(core.Map json_)
    : this(
        properties:
            (json_['properties'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        source:
            json_.containsKey('source')
                ? OSPolicyResourceFile.fromJson(
                  json_['source'] as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (properties != null) 'properties': properties!,
    if (source != null) 'source': source!,
  };
}

/// An RPM package file.
///
/// RPM packages only support INSTALLED state.
class OSPolicyResourcePackageResourceRPM {
  /// Whether dependencies should also be installed.
  ///
  /// - install when false: `rpm --upgrade --replacepkgs package.rpm` - install
  /// when true: `yum -y install package.rpm` or `zypper -y install package.rpm`
  core.bool? pullDeps;

  /// An rpm package.
  ///
  /// Required.
  OSPolicyResourceFile? source;

  OSPolicyResourcePackageResourceRPM({this.pullDeps, this.source});

  OSPolicyResourcePackageResourceRPM.fromJson(core.Map json_)
    : this(
        pullDeps: json_['pullDeps'] as core.bool?,
        source:
            json_.containsKey('source')
                ? OSPolicyResourceFile.fromJson(
                  json_['source'] as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (pullDeps != null) 'pullDeps': pullDeps!,
    if (source != null) 'source': source!,
  };
}

/// A package managed by YUM.
///
/// - install: `yum -y install package` - remove: `yum -y remove package`
typedef OSPolicyResourcePackageResourceYUM = $Shared00;

/// A package managed by Zypper.
///
/// - install: `zypper -y install package` - remove: `zypper -y rm package`
typedef OSPolicyResourcePackageResourceZypper = $Shared00;

/// A resource that manages a package repository.
class OSPolicyResourceRepositoryResource {
  /// An Apt Repository.
  OSPolicyResourceRepositoryResourceAptRepository? apt;

  /// A Goo Repository.
  OSPolicyResourceRepositoryResourceGooRepository? goo;

  /// A Yum Repository.
  OSPolicyResourceRepositoryResourceYumRepository? yum;

  /// A Zypper Repository.
  OSPolicyResourceRepositoryResourceZypperRepository? zypper;

  OSPolicyResourceRepositoryResource({
    this.apt,
    this.goo,
    this.yum,
    this.zypper,
  });

  OSPolicyResourceRepositoryResource.fromJson(core.Map json_)
    : this(
        apt:
            json_.containsKey('apt')
                ? OSPolicyResourceRepositoryResourceAptRepository.fromJson(
                  json_['apt'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        goo:
            json_.containsKey('goo')
                ? OSPolicyResourceRepositoryResourceGooRepository.fromJson(
                  json_['goo'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        yum:
            json_.containsKey('yum')
                ? OSPolicyResourceRepositoryResourceYumRepository.fromJson(
                  json_['yum'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        zypper:
            json_.containsKey('zypper')
                ? OSPolicyResourceRepositoryResourceZypperRepository.fromJson(
                  json_['zypper'] as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (apt != null) 'apt': apt!,
    if (goo != null) 'goo': goo!,
    if (yum != null) 'yum': yum!,
    if (zypper != null) 'zypper': zypper!,
  };
}

/// Represents a single apt package repository.
///
/// These will be added to a repo file that will be managed at
/// `/etc/apt/sources.list.d/google_osconfig.list`.
typedef OSPolicyResourceRepositoryResourceAptRepository =
    $OSPolicyResourceRepositoryResourceAptRepository;

/// Represents a Goo package repository.
///
/// These are added to a repo file that is managed at
/// `C:/ProgramData/GooGet/repos/google_osconfig.repo`.
typedef OSPolicyResourceRepositoryResourceGooRepository =
    $OSPolicyResourceRepositoryResourceGooRepository;

/// Represents a single yum package repository.
///
/// These are added to a repo file that is managed at
/// `/etc/yum.repos.d/google_osconfig.repo`.
typedef OSPolicyResourceRepositoryResourceYumRepository =
    $OSPolicyResourceRepositoryResourceYumRepository;

/// Represents a single zypper package repository.
///
/// These are added to a repo file that is managed at
/// `/etc/zypp/repos.d/google_osconfig.repo`.
typedef OSPolicyResourceRepositoryResourceZypperRepository =
    $OSPolicyResourceRepositoryResourceZypperRepository;

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
