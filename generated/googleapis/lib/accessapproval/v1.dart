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

/// Access Approval API - v1
///
/// An API for controlling access to data by Google personnel.
///
/// For more information, see
/// <https://cloud.google.com/cloud-provider-access-management/access-approval/docs>
///
/// Create an instance of [AccessApprovalApi] to access these resources:
///
/// - [FoldersResource]
///   - [FoldersApprovalRequestsResource]
/// - [OrganizationsResource]
///   - [OrganizationsApprovalRequestsResource]
/// - [ProjectsResource]
///   - [ProjectsApprovalRequestsResource]
library accessapproval.v1;

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

/// An API for controlling access to data by Google personnel.
class AccessApprovalApi {
  /// See, edit, configure, and delete your Google Cloud data and see the email
  /// address for your Google Account.
  static const cloudPlatformScope =
      'https://www.googleapis.com/auth/cloud-platform';

  final commons.ApiRequester _requester;

  FoldersResource get folders => FoldersResource(_requester);
  OrganizationsResource get organizations => OrganizationsResource(_requester);
  ProjectsResource get projects => ProjectsResource(_requester);

  AccessApprovalApi(http.Client client,
      {core.String rootUrl = 'https://accessapproval.googleapis.com/',
      core.String servicePath = ''})
      : _requester =
            commons.ApiRequester(client, rootUrl, servicePath, requestHeaders);
}

class FoldersResource {
  final commons.ApiRequester _requester;

  FoldersApprovalRequestsResource get approvalRequests =>
      FoldersApprovalRequestsResource(_requester);

  FoldersResource(commons.ApiRequester client) : _requester = client;

  /// Deletes the settings associated with a project, folder, or organization.
  ///
  /// This will have the effect of disabling Access Approval for the project,
  /// folder, or organization, but only if all ancestors also have Access
  /// Approval disabled. If Access Approval is enabled at a higher level of the
  /// hierarchy, then Access Approval will still be enabled at this level as the
  /// settings are inherited.
  ///
  /// Request parameters:
  ///
  /// [name] - Name of the AccessApprovalSettings to delete.
  /// Value must have pattern `^folders/\[^/\]+/accessApprovalSettings$`.
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
  async.Future<Empty> deleteAccessApprovalSettings(
    core.String name, {
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'DELETE',
      queryParams: _queryParams,
    );
    return Empty.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Gets the settings associated with a project, folder, or organization.
  ///
  /// Request parameters:
  ///
  /// [name] - The name of the AccessApprovalSettings to retrieve. Format:
  /// "{projects|folders|organizations}/{id}/accessApprovalSettings"
  /// Value must have pattern `^folders/\[^/\]+/accessApprovalSettings$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [AccessApprovalSettings].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<AccessApprovalSettings> getAccessApprovalSettings(
    core.String name, {
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return AccessApprovalSettings.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Retrieves the service account that is used by Access Approval to access
  /// KMS keys for signing approved approval requests.
  ///
  /// Request parameters:
  ///
  /// [name] - Name of the AccessApprovalServiceAccount to retrieve.
  /// Value must have pattern `^folders/\[^/\]+/serviceAccount$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [AccessApprovalServiceAccount].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<AccessApprovalServiceAccount> getServiceAccount(
    core.String name, {
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return AccessApprovalServiceAccount.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Updates the settings associated with a project, folder, or organization.
  ///
  /// Settings to update are determined by the value of field_mask.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - The resource name of the settings. Format is one of: *
  /// "projects/{project}/accessApprovalSettings" *
  /// "folders/{folder}/accessApprovalSettings" *
  /// "organizations/{organization}/accessApprovalSettings"
  /// Value must have pattern `^folders/\[^/\]+/accessApprovalSettings$`.
  ///
  /// [updateMask] - The update mask applies to the settings. Only the top level
  /// fields of AccessApprovalSettings (notification_emails & enrolled_services)
  /// are supported. For each field, if it is included, the currently stored
  /// value will be entirely overwritten with the value of the field passed in
  /// this request. For the `FieldMask` definition, see
  /// https://developers.google.com/protocol-buffers/docs/reference/google.protobuf#fieldmask
  /// If this field is left unset, only the notification_emails field will be
  /// updated.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [AccessApprovalSettings].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<AccessApprovalSettings> updateAccessApprovalSettings(
    AccessApprovalSettings request,
    core.String name, {
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if (updateMask != null) 'updateMask': [updateMask],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'PATCH',
      body: _body,
      queryParams: _queryParams,
    );
    return AccessApprovalSettings.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class FoldersApprovalRequestsResource {
  final commons.ApiRequester _requester;

  FoldersApprovalRequestsResource(commons.ApiRequester client)
      : _requester = client;

  /// Approves a request and returns the updated ApprovalRequest.
  ///
  /// Returns NOT_FOUND if the request does not exist. Returns
  /// FAILED_PRECONDITION if the request exists but is not in a pending state.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Name of the approval request to approve.
  /// Value must have pattern `^folders/\[^/\]+/approvalRequests/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ApprovalRequest].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ApprovalRequest> approve(
    ApproveApprovalRequestMessage request,
    core.String name, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$name') + ':approve';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return ApprovalRequest.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Dismisses a request.
  ///
  /// Returns the updated ApprovalRequest. NOTE: This does not deny access to
  /// the resource if another request has been made and approved. It is
  /// equivalent in effect to ignoring the request altogether. Returns NOT_FOUND
  /// if the request does not exist. Returns FAILED_PRECONDITION if the request
  /// exists but is not in a pending state.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Name of the ApprovalRequest to dismiss.
  /// Value must have pattern `^folders/\[^/\]+/approvalRequests/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ApprovalRequest].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ApprovalRequest> dismiss(
    DismissApprovalRequestMessage request,
    core.String name, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$name') + ':dismiss';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return ApprovalRequest.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Gets an approval request.
  ///
  /// Returns NOT_FOUND if the request does not exist.
  ///
  /// Request parameters:
  ///
  /// [name] - The name of the approval request to retrieve. Format:
  /// "{projects|folders|organizations}/{id}/approvalRequests/{approval_request}"
  /// Value must have pattern `^folders/\[^/\]+/approvalRequests/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ApprovalRequest].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ApprovalRequest> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return ApprovalRequest.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Lists approval requests associated with a project, folder, or
  /// organization.
  ///
  /// Approval requests can be filtered by state (pending, active, dismissed).
  /// The order is reverse chronological.
  ///
  /// Request parameters:
  ///
  /// [parent] - The parent resource. This may be "projects/{project}",
  /// "folders/{folder}", or "organizations/{organization}".
  /// Value must have pattern `^folders/\[^/\]+$`.
  ///
  /// [filter] - A filter on the type of approval requests to retrieve. Must be
  /// one of the following values: * \[not set\]: Requests that are pending or
  /// have active approvals. * ALL: All requests. * PENDING: Only pending
  /// requests. * ACTIVE: Only active (i.e. currently approved) requests. *
  /// DISMISSED: Only requests that have been dismissed, or requests that are
  /// not approved and past expiration. * EXPIRED: Only requests that have been
  /// approved, and the approval has expired. * HISTORY: Active, dismissed and
  /// expired requests.
  ///
  /// [pageSize] - Requested page size.
  ///
  /// [pageToken] - A token identifying the page of results to return.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListApprovalRequestsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListApprovalRequestsResponse> list(
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

    final _url = 'v1/' + core.Uri.encodeFull('$parent') + '/approvalRequests';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return ListApprovalRequestsResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class OrganizationsResource {
  final commons.ApiRequester _requester;

  OrganizationsApprovalRequestsResource get approvalRequests =>
      OrganizationsApprovalRequestsResource(_requester);

  OrganizationsResource(commons.ApiRequester client) : _requester = client;

  /// Deletes the settings associated with a project, folder, or organization.
  ///
  /// This will have the effect of disabling Access Approval for the project,
  /// folder, or organization, but only if all ancestors also have Access
  /// Approval disabled. If Access Approval is enabled at a higher level of the
  /// hierarchy, then Access Approval will still be enabled at this level as the
  /// settings are inherited.
  ///
  /// Request parameters:
  ///
  /// [name] - Name of the AccessApprovalSettings to delete.
  /// Value must have pattern `^organizations/\[^/\]+/accessApprovalSettings$`.
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
  async.Future<Empty> deleteAccessApprovalSettings(
    core.String name, {
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'DELETE',
      queryParams: _queryParams,
    );
    return Empty.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Gets the settings associated with a project, folder, or organization.
  ///
  /// Request parameters:
  ///
  /// [name] - The name of the AccessApprovalSettings to retrieve. Format:
  /// "{projects|folders|organizations}/{id}/accessApprovalSettings"
  /// Value must have pattern `^organizations/\[^/\]+/accessApprovalSettings$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [AccessApprovalSettings].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<AccessApprovalSettings> getAccessApprovalSettings(
    core.String name, {
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return AccessApprovalSettings.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Retrieves the service account that is used by Access Approval to access
  /// KMS keys for signing approved approval requests.
  ///
  /// Request parameters:
  ///
  /// [name] - Name of the AccessApprovalServiceAccount to retrieve.
  /// Value must have pattern `^organizations/\[^/\]+/serviceAccount$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [AccessApprovalServiceAccount].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<AccessApprovalServiceAccount> getServiceAccount(
    core.String name, {
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return AccessApprovalServiceAccount.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Updates the settings associated with a project, folder, or organization.
  ///
  /// Settings to update are determined by the value of field_mask.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - The resource name of the settings. Format is one of: *
  /// "projects/{project}/accessApprovalSettings" *
  /// "folders/{folder}/accessApprovalSettings" *
  /// "organizations/{organization}/accessApprovalSettings"
  /// Value must have pattern `^organizations/\[^/\]+/accessApprovalSettings$`.
  ///
  /// [updateMask] - The update mask applies to the settings. Only the top level
  /// fields of AccessApprovalSettings (notification_emails & enrolled_services)
  /// are supported. For each field, if it is included, the currently stored
  /// value will be entirely overwritten with the value of the field passed in
  /// this request. For the `FieldMask` definition, see
  /// https://developers.google.com/protocol-buffers/docs/reference/google.protobuf#fieldmask
  /// If this field is left unset, only the notification_emails field will be
  /// updated.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [AccessApprovalSettings].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<AccessApprovalSettings> updateAccessApprovalSettings(
    AccessApprovalSettings request,
    core.String name, {
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if (updateMask != null) 'updateMask': [updateMask],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'PATCH',
      body: _body,
      queryParams: _queryParams,
    );
    return AccessApprovalSettings.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class OrganizationsApprovalRequestsResource {
  final commons.ApiRequester _requester;

  OrganizationsApprovalRequestsResource(commons.ApiRequester client)
      : _requester = client;

  /// Approves a request and returns the updated ApprovalRequest.
  ///
  /// Returns NOT_FOUND if the request does not exist. Returns
  /// FAILED_PRECONDITION if the request exists but is not in a pending state.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Name of the approval request to approve.
  /// Value must have pattern
  /// `^organizations/\[^/\]+/approvalRequests/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ApprovalRequest].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ApprovalRequest> approve(
    ApproveApprovalRequestMessage request,
    core.String name, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$name') + ':approve';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return ApprovalRequest.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Dismisses a request.
  ///
  /// Returns the updated ApprovalRequest. NOTE: This does not deny access to
  /// the resource if another request has been made and approved. It is
  /// equivalent in effect to ignoring the request altogether. Returns NOT_FOUND
  /// if the request does not exist. Returns FAILED_PRECONDITION if the request
  /// exists but is not in a pending state.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Name of the ApprovalRequest to dismiss.
  /// Value must have pattern
  /// `^organizations/\[^/\]+/approvalRequests/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ApprovalRequest].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ApprovalRequest> dismiss(
    DismissApprovalRequestMessage request,
    core.String name, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$name') + ':dismiss';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return ApprovalRequest.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Gets an approval request.
  ///
  /// Returns NOT_FOUND if the request does not exist.
  ///
  /// Request parameters:
  ///
  /// [name] - The name of the approval request to retrieve. Format:
  /// "{projects|folders|organizations}/{id}/approvalRequests/{approval_request}"
  /// Value must have pattern
  /// `^organizations/\[^/\]+/approvalRequests/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ApprovalRequest].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ApprovalRequest> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return ApprovalRequest.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Lists approval requests associated with a project, folder, or
  /// organization.
  ///
  /// Approval requests can be filtered by state (pending, active, dismissed).
  /// The order is reverse chronological.
  ///
  /// Request parameters:
  ///
  /// [parent] - The parent resource. This may be "projects/{project}",
  /// "folders/{folder}", or "organizations/{organization}".
  /// Value must have pattern `^organizations/\[^/\]+$`.
  ///
  /// [filter] - A filter on the type of approval requests to retrieve. Must be
  /// one of the following values: * \[not set\]: Requests that are pending or
  /// have active approvals. * ALL: All requests. * PENDING: Only pending
  /// requests. * ACTIVE: Only active (i.e. currently approved) requests. *
  /// DISMISSED: Only requests that have been dismissed, or requests that are
  /// not approved and past expiration. * EXPIRED: Only requests that have been
  /// approved, and the approval has expired. * HISTORY: Active, dismissed and
  /// expired requests.
  ///
  /// [pageSize] - Requested page size.
  ///
  /// [pageToken] - A token identifying the page of results to return.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListApprovalRequestsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListApprovalRequestsResponse> list(
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

    final _url = 'v1/' + core.Uri.encodeFull('$parent') + '/approvalRequests';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return ListApprovalRequestsResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsResource {
  final commons.ApiRequester _requester;

  ProjectsApprovalRequestsResource get approvalRequests =>
      ProjectsApprovalRequestsResource(_requester);

  ProjectsResource(commons.ApiRequester client) : _requester = client;

  /// Deletes the settings associated with a project, folder, or organization.
  ///
  /// This will have the effect of disabling Access Approval for the project,
  /// folder, or organization, but only if all ancestors also have Access
  /// Approval disabled. If Access Approval is enabled at a higher level of the
  /// hierarchy, then Access Approval will still be enabled at this level as the
  /// settings are inherited.
  ///
  /// Request parameters:
  ///
  /// [name] - Name of the AccessApprovalSettings to delete.
  /// Value must have pattern `^projects/\[^/\]+/accessApprovalSettings$`.
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
  async.Future<Empty> deleteAccessApprovalSettings(
    core.String name, {
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'DELETE',
      queryParams: _queryParams,
    );
    return Empty.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Gets the settings associated with a project, folder, or organization.
  ///
  /// Request parameters:
  ///
  /// [name] - The name of the AccessApprovalSettings to retrieve. Format:
  /// "{projects|folders|organizations}/{id}/accessApprovalSettings"
  /// Value must have pattern `^projects/\[^/\]+/accessApprovalSettings$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [AccessApprovalSettings].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<AccessApprovalSettings> getAccessApprovalSettings(
    core.String name, {
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return AccessApprovalSettings.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Retrieves the service account that is used by Access Approval to access
  /// KMS keys for signing approved approval requests.
  ///
  /// Request parameters:
  ///
  /// [name] - Name of the AccessApprovalServiceAccount to retrieve.
  /// Value must have pattern `^projects/\[^/\]+/serviceAccount$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [AccessApprovalServiceAccount].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<AccessApprovalServiceAccount> getServiceAccount(
    core.String name, {
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return AccessApprovalServiceAccount.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Updates the settings associated with a project, folder, or organization.
  ///
  /// Settings to update are determined by the value of field_mask.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - The resource name of the settings. Format is one of: *
  /// "projects/{project}/accessApprovalSettings" *
  /// "folders/{folder}/accessApprovalSettings" *
  /// "organizations/{organization}/accessApprovalSettings"
  /// Value must have pattern `^projects/\[^/\]+/accessApprovalSettings$`.
  ///
  /// [updateMask] - The update mask applies to the settings. Only the top level
  /// fields of AccessApprovalSettings (notification_emails & enrolled_services)
  /// are supported. For each field, if it is included, the currently stored
  /// value will be entirely overwritten with the value of the field passed in
  /// this request. For the `FieldMask` definition, see
  /// https://developers.google.com/protocol-buffers/docs/reference/google.protobuf#fieldmask
  /// If this field is left unset, only the notification_emails field will be
  /// updated.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [AccessApprovalSettings].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<AccessApprovalSettings> updateAccessApprovalSettings(
    AccessApprovalSettings request,
    core.String name, {
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if (updateMask != null) 'updateMask': [updateMask],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'PATCH',
      body: _body,
      queryParams: _queryParams,
    );
    return AccessApprovalSettings.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsApprovalRequestsResource {
  final commons.ApiRequester _requester;

  ProjectsApprovalRequestsResource(commons.ApiRequester client)
      : _requester = client;

  /// Approves a request and returns the updated ApprovalRequest.
  ///
  /// Returns NOT_FOUND if the request does not exist. Returns
  /// FAILED_PRECONDITION if the request exists but is not in a pending state.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Name of the approval request to approve.
  /// Value must have pattern `^projects/\[^/\]+/approvalRequests/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ApprovalRequest].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ApprovalRequest> approve(
    ApproveApprovalRequestMessage request,
    core.String name, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$name') + ':approve';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return ApprovalRequest.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Dismisses a request.
  ///
  /// Returns the updated ApprovalRequest. NOTE: This does not deny access to
  /// the resource if another request has been made and approved. It is
  /// equivalent in effect to ignoring the request altogether. Returns NOT_FOUND
  /// if the request does not exist. Returns FAILED_PRECONDITION if the request
  /// exists but is not in a pending state.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Name of the ApprovalRequest to dismiss.
  /// Value must have pattern `^projects/\[^/\]+/approvalRequests/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ApprovalRequest].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ApprovalRequest> dismiss(
    DismissApprovalRequestMessage request,
    core.String name, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$name') + ':dismiss';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return ApprovalRequest.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Gets an approval request.
  ///
  /// Returns NOT_FOUND if the request does not exist.
  ///
  /// Request parameters:
  ///
  /// [name] - The name of the approval request to retrieve. Format:
  /// "{projects|folders|organizations}/{id}/approvalRequests/{approval_request}"
  /// Value must have pattern `^projects/\[^/\]+/approvalRequests/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ApprovalRequest].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ApprovalRequest> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return ApprovalRequest.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Lists approval requests associated with a project, folder, or
  /// organization.
  ///
  /// Approval requests can be filtered by state (pending, active, dismissed).
  /// The order is reverse chronological.
  ///
  /// Request parameters:
  ///
  /// [parent] - The parent resource. This may be "projects/{project}",
  /// "folders/{folder}", or "organizations/{organization}".
  /// Value must have pattern `^projects/\[^/\]+$`.
  ///
  /// [filter] - A filter on the type of approval requests to retrieve. Must be
  /// one of the following values: * \[not set\]: Requests that are pending or
  /// have active approvals. * ALL: All requests. * PENDING: Only pending
  /// requests. * ACTIVE: Only active (i.e. currently approved) requests. *
  /// DISMISSED: Only requests that have been dismissed, or requests that are
  /// not approved and past expiration. * EXPIRED: Only requests that have been
  /// approved, and the approval has expired. * HISTORY: Active, dismissed and
  /// expired requests.
  ///
  /// [pageSize] - Requested page size.
  ///
  /// [pageToken] - A token identifying the page of results to return.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListApprovalRequestsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListApprovalRequestsResponse> list(
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

    final _url = 'v1/' + core.Uri.encodeFull('$parent') + '/approvalRequests';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return ListApprovalRequestsResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

/// Access Approval service account related to a project/folder/organization.
class AccessApprovalServiceAccount {
  /// Email address of the service account.
  core.String? accountEmail;

  /// The resource name of the Access Approval service account.
  ///
  /// Format is one of: * "projects/{project}/serviceAccount" *
  /// "folders/{folder}/serviceAccount" *
  /// "organizations/{organization}/serviceAccount"
  core.String? name;

  AccessApprovalServiceAccount({
    this.accountEmail,
    this.name,
  });

  AccessApprovalServiceAccount.fromJson(core.Map _json)
      : this(
          accountEmail: _json.containsKey('accountEmail')
              ? _json['accountEmail'] as core.String
              : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (accountEmail != null) 'accountEmail': accountEmail!,
        if (name != null) 'name': name!,
      };
}

/// Settings on a Project/Folder/Organization related to Access Approval.
class AccessApprovalSettings {
  /// The asymmetric crypto key version to use for signing approval requests.
  ///
  /// Empty active_key_version indicates that a Google-managed key should be
  /// used for signing. This property will be ignored if set by an ancestor of
  /// this resource, and new non-empty values may not be set.
  core.String? activeKeyVersion;

  /// This field is read only (not settable via UpdateAccessApprovalSettings
  /// method).
  ///
  /// If the field is true, that indicates that an ancestor of this Project or
  /// Folder has set active_key_version (this field will always be unset for the
  /// organization since organizations do not have ancestors).
  ///
  /// Output only.
  core.bool? ancestorHasActiveKeyVersion;

  /// This field is read only (not settable via UpdateAccessApprovalSettings
  /// method).
  ///
  /// If the field is true, that indicates that at least one service is enrolled
  /// for Access Approval in one or more ancestors of the Project or Folder
  /// (this field will always be unset for the organization since organizations
  /// do not have ancestors).
  ///
  /// Output only.
  core.bool? enrolledAncestor;

  /// A list of Google Cloud Services for which the given resource has Access
  /// Approval enrolled.
  ///
  /// Access requests for the resource given by name against any of these
  /// services contained here will be required to have explicit approval. If
  /// name refers to an organization, enrollment can be done for individual
  /// services. If name refers to a folder or project, enrollment can only be
  /// done on an all or nothing basis. If a cloud_product is repeated in this
  /// list, the first entry will be honored and all following entries will be
  /// discarded. A maximum of 10 enrolled services will be enforced, to be
  /// expanded as the set of supported services is expanded.
  core.List<EnrolledService>? enrolledServices;

  /// This field is read only (not settable via UpdateAccessApprovalSettings
  /// method).
  ///
  /// If the field is true, that indicates that there is some configuration
  /// issue with the active_key_version configured at this level in the resource
  /// hierarchy (e.g. it doesn't exist or the Access Approval service account
  /// doesn't have the correct permissions on it, etc.) This key version is not
  /// necessarily the effective key version at this level, as key versions are
  /// inherited top-down.
  ///
  /// Output only.
  core.bool? invalidKeyVersion;

  /// The resource name of the settings.
  ///
  /// Format is one of: * "projects/{project}/accessApprovalSettings" *
  /// "folders/{folder}/accessApprovalSettings" *
  /// "organizations/{organization}/accessApprovalSettings"
  core.String? name;

  /// A list of email addresses to which notifications relating to approval
  /// requests should be sent.
  ///
  /// Notifications relating to a resource will be sent to all emails in the
  /// settings of ancestor resources of that resource. A maximum of 50 email
  /// addresses are allowed.
  core.List<core.String>? notificationEmails;

  AccessApprovalSettings({
    this.activeKeyVersion,
    this.ancestorHasActiveKeyVersion,
    this.enrolledAncestor,
    this.enrolledServices,
    this.invalidKeyVersion,
    this.name,
    this.notificationEmails,
  });

  AccessApprovalSettings.fromJson(core.Map _json)
      : this(
          activeKeyVersion: _json.containsKey('activeKeyVersion')
              ? _json['activeKeyVersion'] as core.String
              : null,
          ancestorHasActiveKeyVersion:
              _json.containsKey('ancestorHasActiveKeyVersion')
                  ? _json['ancestorHasActiveKeyVersion'] as core.bool
                  : null,
          enrolledAncestor: _json.containsKey('enrolledAncestor')
              ? _json['enrolledAncestor'] as core.bool
              : null,
          enrolledServices: _json.containsKey('enrolledServices')
              ? (_json['enrolledServices'] as core.List)
                  .map((value) => EnrolledService.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          invalidKeyVersion: _json.containsKey('invalidKeyVersion')
              ? _json['invalidKeyVersion'] as core.bool
              : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          notificationEmails: _json.containsKey('notificationEmails')
              ? (_json['notificationEmails'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (activeKeyVersion != null) 'activeKeyVersion': activeKeyVersion!,
        if (ancestorHasActiveKeyVersion != null)
          'ancestorHasActiveKeyVersion': ancestorHasActiveKeyVersion!,
        if (enrolledAncestor != null) 'enrolledAncestor': enrolledAncestor!,
        if (enrolledServices != null) 'enrolledServices': enrolledServices!,
        if (invalidKeyVersion != null) 'invalidKeyVersion': invalidKeyVersion!,
        if (name != null) 'name': name!,
        if (notificationEmails != null)
          'notificationEmails': notificationEmails!,
      };
}

/// Home office and physical location of the principal.
class AccessLocations {
  /// The "home office" location of the principal.
  ///
  /// A two-letter country code (ISO 3166-1 alpha-2), such as "US", "DE" or "GB"
  /// or a region code. In some limited situations Google systems may refer
  /// refer to a region code instead of a country code. Possible Region Codes: *
  /// ASI: Asia * EUR: Europe * OCE: Oceania * AFR: Africa * NAM: North America
  /// * SAM: South America * ANT: Antarctica * ANY: Any location
  core.String? principalOfficeCountry;

  /// Physical location of the principal at the time of the access.
  ///
  /// A two-letter country code (ISO 3166-1 alpha-2), such as "US", "DE" or "GB"
  /// or a region code. In some limited situations Google systems may refer
  /// refer to a region code instead of a country code. Possible Region Codes: *
  /// ASI: Asia * EUR: Europe * OCE: Oceania * AFR: Africa * NAM: North America
  /// * SAM: South America * ANT: Antarctica * ANY: Any location
  core.String? principalPhysicalLocationCountry;

  AccessLocations({
    this.principalOfficeCountry,
    this.principalPhysicalLocationCountry,
  });

  AccessLocations.fromJson(core.Map _json)
      : this(
          principalOfficeCountry: _json.containsKey('principalOfficeCountry')
              ? _json['principalOfficeCountry'] as core.String
              : null,
          principalPhysicalLocationCountry:
              _json.containsKey('principalPhysicalLocationCountry')
                  ? _json['principalPhysicalLocationCountry'] as core.String
                  : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (principalOfficeCountry != null)
          'principalOfficeCountry': principalOfficeCountry!,
        if (principalPhysicalLocationCountry != null)
          'principalPhysicalLocationCountry': principalPhysicalLocationCountry!,
      };
}

class AccessReason {
  /// More detail about certain reason types.
  ///
  /// See comments for each type above.
  core.String? detail;

  /// Type of access justification.
  /// Possible string values are:
  /// - "TYPE_UNSPECIFIED" : Default value for proto, shouldn't be used.
  /// - "CUSTOMER_INITIATED_SUPPORT" : Customer made a request or raised an
  /// issue that required the principal to access customer data. `detail` is of
  /// the form ("#####" is the issue ID): * "Feedback Report: #####" * "Case
  /// Number: #####" * "Case ID: #####" * "E-PIN Reference: #####" *
  /// "Google-#####" * "T-#####"
  /// - "GOOGLE_INITIATED_SERVICE" : The principal accessed customer data in
  /// order to diagnose or resolve a suspected issue in services. Often this
  /// access is used to confirm that customers are not affected by a suspected
  /// service issue or to remediate a reversible system issue.
  /// - "GOOGLE_INITIATED_REVIEW" : Google initiated service for security,
  /// fraud, abuse, or compliance purposes.
  /// - "THIRD_PARTY_DATA_REQUEST" : The principal was compelled to access
  /// customer data in order to respond to a legal third party data request or
  /// process, including legal processes from customers themselves.
  /// - "GOOGLE_RESPONSE_TO_PRODUCTION_ALERT" : The principal accessed customer
  /// data in order to diagnose or resolve a suspected issue in services or a
  /// known outage.
  core.String? type;

  AccessReason({
    this.detail,
    this.type,
  });

  AccessReason.fromJson(core.Map _json)
      : this(
          detail: _json.containsKey('detail')
              ? _json['detail'] as core.String
              : null,
          type: _json.containsKey('type') ? _json['type'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (detail != null) 'detail': detail!,
        if (type != null) 'type': type!,
      };
}

/// A request for the customer to approve access to a resource.
class ApprovalRequest {
  /// Access was approved.
  ApproveDecision? approve;

  /// The request was dismissed.
  DismissDecision? dismiss;

  /// The resource name of the request.
  ///
  /// Format is
  /// "{projects|folders|organizations}/{id}/approvalRequests/{approval_request}".
  core.String? name;

  /// The time at which approval was requested.
  core.String? requestTime;

  /// The requested expiration for the approval.
  ///
  /// If the request is approved, access will be granted from the time of
  /// approval until the expiration time.
  core.String? requestedExpiration;

  /// The locations for which approval is being requested.
  AccessLocations? requestedLocations;

  /// The justification for which approval is being requested.
  AccessReason? requestedReason;

  /// The resource for which approval is being requested.
  ///
  /// The format of the resource name is defined at
  /// https://cloud.google.com/apis/design/resource_names. The resource name
  /// here may either be a "full" resource name (e.g.
  /// "//library.googleapis.com/shelves/shelf1/books/book2") or a "relative"
  /// resource name (e.g. "shelves/shelf1/books/book2") as described in the
  /// resource name specification.
  core.String? requestedResourceName;

  /// Properties related to the resource represented by requested_resource_name.
  ResourceProperties? requestedResourceProperties;

  ApprovalRequest({
    this.approve,
    this.dismiss,
    this.name,
    this.requestTime,
    this.requestedExpiration,
    this.requestedLocations,
    this.requestedReason,
    this.requestedResourceName,
    this.requestedResourceProperties,
  });

  ApprovalRequest.fromJson(core.Map _json)
      : this(
          approve: _json.containsKey('approve')
              ? ApproveDecision.fromJson(
                  _json['approve'] as core.Map<core.String, core.dynamic>)
              : null,
          dismiss: _json.containsKey('dismiss')
              ? DismissDecision.fromJson(
                  _json['dismiss'] as core.Map<core.String, core.dynamic>)
              : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          requestTime: _json.containsKey('requestTime')
              ? _json['requestTime'] as core.String
              : null,
          requestedExpiration: _json.containsKey('requestedExpiration')
              ? _json['requestedExpiration'] as core.String
              : null,
          requestedLocations: _json.containsKey('requestedLocations')
              ? AccessLocations.fromJson(_json['requestedLocations']
                  as core.Map<core.String, core.dynamic>)
              : null,
          requestedReason: _json.containsKey('requestedReason')
              ? AccessReason.fromJson(_json['requestedReason']
                  as core.Map<core.String, core.dynamic>)
              : null,
          requestedResourceName: _json.containsKey('requestedResourceName')
              ? _json['requestedResourceName'] as core.String
              : null,
          requestedResourceProperties: _json
                  .containsKey('requestedResourceProperties')
              ? ResourceProperties.fromJson(_json['requestedResourceProperties']
                  as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (approve != null) 'approve': approve!,
        if (dismiss != null) 'dismiss': dismiss!,
        if (name != null) 'name': name!,
        if (requestTime != null) 'requestTime': requestTime!,
        if (requestedExpiration != null)
          'requestedExpiration': requestedExpiration!,
        if (requestedLocations != null)
          'requestedLocations': requestedLocations!,
        if (requestedReason != null) 'requestedReason': requestedReason!,
        if (requestedResourceName != null)
          'requestedResourceName': requestedResourceName!,
        if (requestedResourceProperties != null)
          'requestedResourceProperties': requestedResourceProperties!,
      };
}

/// Request to approve an ApprovalRequest.
class ApproveApprovalRequestMessage {
  /// The expiration time of this approval.
  core.String? expireTime;

  ApproveApprovalRequestMessage({
    this.expireTime,
  });

  ApproveApprovalRequestMessage.fromJson(core.Map _json)
      : this(
          expireTime: _json.containsKey('expireTime')
              ? _json['expireTime'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (expireTime != null) 'expireTime': expireTime!,
      };
}

/// A decision that has been made to approve access to a resource.
class ApproveDecision {
  /// The time at which approval was granted.
  core.String? approveTime;

  /// True when the request has been auto-approved.
  core.bool? autoApproved;

  /// The time at which the approval expires.
  core.String? expireTime;

  /// The signature for the ApprovalRequest and details on how it was signed.
  SignatureInfo? signatureInfo;

  ApproveDecision({
    this.approveTime,
    this.autoApproved,
    this.expireTime,
    this.signatureInfo,
  });

  ApproveDecision.fromJson(core.Map _json)
      : this(
          approveTime: _json.containsKey('approveTime')
              ? _json['approveTime'] as core.String
              : null,
          autoApproved: _json.containsKey('autoApproved')
              ? _json['autoApproved'] as core.bool
              : null,
          expireTime: _json.containsKey('expireTime')
              ? _json['expireTime'] as core.String
              : null,
          signatureInfo: _json.containsKey('signatureInfo')
              ? SignatureInfo.fromJson(
                  _json['signatureInfo'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (approveTime != null) 'approveTime': approveTime!,
        if (autoApproved != null) 'autoApproved': autoApproved!,
        if (expireTime != null) 'expireTime': expireTime!,
        if (signatureInfo != null) 'signatureInfo': signatureInfo!,
      };
}

/// Request to dismiss an approval request.
typedef DismissApprovalRequestMessage = $Empty;

/// A decision that has been made to dismiss an approval request.
class DismissDecision {
  /// The time at which the approval request was dismissed.
  core.String? dismissTime;

  /// This field will be true if the ApprovalRequest was implicitly dismissed
  /// due to inaction by the access approval approvers (the request is not acted
  /// on by the approvers before the exiration time).
  core.bool? implicit;

  DismissDecision({
    this.dismissTime,
    this.implicit,
  });

  DismissDecision.fromJson(core.Map _json)
      : this(
          dismissTime: _json.containsKey('dismissTime')
              ? _json['dismissTime'] as core.String
              : null,
          implicit: _json.containsKey('implicit')
              ? _json['implicit'] as core.bool
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (dismissTime != null) 'dismissTime': dismissTime!,
        if (implicit != null) 'implicit': implicit!,
      };
}

/// A generic empty message that you can re-use to avoid defining duplicated
/// empty messages in your APIs.
///
/// A typical example is to use it as the request or the response type of an API
/// method. For instance: service Foo { rpc Bar(google.protobuf.Empty) returns
/// (google.protobuf.Empty); }
typedef Empty = $Empty;

/// Represents the enrollment of a cloud resource into a specific service.
class EnrolledService {
  /// The product for which Access Approval will be enrolled.
  ///
  /// Allowed values are listed below (case-sensitive): * all * GA * App Engine
  /// * BigQuery * Cloud Bigtable * Cloud Key Management Service * Compute
  /// Engine * Cloud Dataflow * Cloud DLP * Cloud EKM * Cloud HSM * Cloud
  /// Identity and Access Management * Cloud Logging * Cloud Pub/Sub * Cloud
  /// Spanner * Cloud SQL * Cloud Storage * Google Kubernetes Engine *
  /// Organization Policy Serivice * Persistent Disk * Resource Manager *
  /// Speaker ID Note: These values are supported as input for legacy purposes,
  /// but will not be returned from the API. * all * ga-only *
  /// appengine.googleapis.com * bigquery.googleapis.com *
  /// bigtable.googleapis.com * container.googleapis.com *
  /// cloudkms.googleapis.com * cloudresourcemanager.googleapis.com *
  /// cloudsql.googleapis.com * compute.googleapis.com * dataflow.googleapis.com
  /// * dlp.googleapis.com * iam.googleapis.com * logging.googleapis.com *
  /// orgpolicy.googleapis.com * pubsub.googleapis.com * spanner.googleapis.com
  /// * speakerid.googleapis.com * storage.googleapis.com Calls to
  /// UpdateAccessApprovalSettings using 'all' or any of the XXX.googleapis.com
  /// will be translated to the associated product name ('all', 'App Engine',
  /// etc.). Note: 'all' will enroll the resource in all products supported at
  /// both 'GA' and 'Preview' levels. More information about levels of support
  /// is available at
  /// https://cloud.google.com/access-approval/docs/supported-services
  core.String? cloudProduct;

  /// The enrollment level of the service.
  /// Possible string values are:
  /// - "ENROLLMENT_LEVEL_UNSPECIFIED" : Default value for proto, shouldn't be
  /// used.
  /// - "BLOCK_ALL" : Service is enrolled in Access Approval for all requests
  core.String? enrollmentLevel;

  EnrolledService({
    this.cloudProduct,
    this.enrollmentLevel,
  });

  EnrolledService.fromJson(core.Map _json)
      : this(
          cloudProduct: _json.containsKey('cloudProduct')
              ? _json['cloudProduct'] as core.String
              : null,
          enrollmentLevel: _json.containsKey('enrollmentLevel')
              ? _json['enrollmentLevel'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (cloudProduct != null) 'cloudProduct': cloudProduct!,
        if (enrollmentLevel != null) 'enrollmentLevel': enrollmentLevel!,
      };
}

/// Response to listing of ApprovalRequest objects.
class ListApprovalRequestsResponse {
  /// Approval request details.
  core.List<ApprovalRequest>? approvalRequests;

  /// Token to retrieve the next page of results, or empty if there are no more.
  core.String? nextPageToken;

  ListApprovalRequestsResponse({
    this.approvalRequests,
    this.nextPageToken,
  });

  ListApprovalRequestsResponse.fromJson(core.Map _json)
      : this(
          approvalRequests: _json.containsKey('approvalRequests')
              ? (_json['approvalRequests'] as core.List)
                  .map((value) => ApprovalRequest.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          nextPageToken: _json.containsKey('nextPageToken')
              ? _json['nextPageToken'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (approvalRequests != null) 'approvalRequests': approvalRequests!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
      };
}

/// The properties associated with the resource of the request.
class ResourceProperties {
  /// Whether an approval will exclude the descendants of the resource being
  /// requested.
  core.bool? excludesDescendants;

  ResourceProperties({
    this.excludesDescendants,
  });

  ResourceProperties.fromJson(core.Map _json)
      : this(
          excludesDescendants: _json.containsKey('excludesDescendants')
              ? _json['excludesDescendants'] as core.bool
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (excludesDescendants != null)
          'excludesDescendants': excludesDescendants!,
      };
}

/// Information about the digital signature of the resource.
class SignatureInfo {
  /// The resource name of the customer CryptoKeyVersion used for signing.
  core.String? customerKmsKeyVersion;

  /// The public key for the Google default signing, encoded in PEM format.
  ///
  /// The signature was created using a private key which may be verified using
  /// this public key.
  core.String? googlePublicKeyPem;

  /// The digital signature.
  core.String? signature;
  core.List<core.int> get signatureAsBytes => convert.base64.decode(signature!);

  set signatureAsBytes(core.List<core.int> _bytes) {
    signature =
        convert.base64.encode(_bytes).replaceAll('/', '_').replaceAll('+', '-');
  }

  SignatureInfo({
    this.customerKmsKeyVersion,
    this.googlePublicKeyPem,
    this.signature,
  });

  SignatureInfo.fromJson(core.Map _json)
      : this(
          customerKmsKeyVersion: _json.containsKey('customerKmsKeyVersion')
              ? _json['customerKmsKeyVersion'] as core.String
              : null,
          googlePublicKeyPem: _json.containsKey('googlePublicKeyPem')
              ? _json['googlePublicKeyPem'] as core.String
              : null,
          signature: _json.containsKey('signature')
              ? _json['signature'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (customerKmsKeyVersion != null)
          'customerKmsKeyVersion': customerKmsKeyVersion!,
        if (googlePublicKeyPem != null)
          'googlePublicKeyPem': googlePublicKeyPem!,
        if (signature != null) 'signature': signature!,
      };
}
