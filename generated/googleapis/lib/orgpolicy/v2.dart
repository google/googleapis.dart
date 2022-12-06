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

/// Organization Policy API - v2
///
/// The Org Policy API allows users to configure governance rules on their GCP
/// resources across the Cloud Resource Hierarchy.
///
/// For more information, see
/// <https://cloud.google.com/orgpolicy/docs/reference/rest/index.html>
///
/// Create an instance of [OrgPolicyApi] to access these resources:
///
/// - [FoldersResource]
///   - [FoldersConstraintsResource]
///   - [FoldersPoliciesResource]
/// - [OrganizationsResource]
///   - [OrganizationsConstraintsResource]
///   - [OrganizationsCustomConstraintsResource]
///   - [OrganizationsPoliciesResource]
/// - [ProjectsResource]
///   - [ProjectsConstraintsResource]
///   - [ProjectsPoliciesResource]
library orgpolicy.v2;

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

/// The Org Policy API allows users to configure governance rules on their GCP
/// resources across the Cloud Resource Hierarchy.
class OrgPolicyApi {
  /// See, edit, configure, and delete your Google Cloud data and see the email
  /// address for your Google Account.
  static const cloudPlatformScope =
      'https://www.googleapis.com/auth/cloud-platform';

  final commons.ApiRequester _requester;

  FoldersResource get folders => FoldersResource(_requester);
  OrganizationsResource get organizations => OrganizationsResource(_requester);
  ProjectsResource get projects => ProjectsResource(_requester);

  OrgPolicyApi(http.Client client,
      {core.String rootUrl = 'https://orgpolicy.googleapis.com/',
      core.String servicePath = ''})
      : _requester =
            commons.ApiRequester(client, rootUrl, servicePath, requestHeaders);
}

class FoldersResource {
  final commons.ApiRequester _requester;

  FoldersConstraintsResource get constraints =>
      FoldersConstraintsResource(_requester);
  FoldersPoliciesResource get policies => FoldersPoliciesResource(_requester);

  FoldersResource(commons.ApiRequester client) : _requester = client;
}

class FoldersConstraintsResource {
  final commons.ApiRequester _requester;

  FoldersConstraintsResource(commons.ApiRequester client) : _requester = client;

  /// Lists `Constraints` that could be applied on the specified resource.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The Cloud resource that parents the constraint. Must
  /// be in one of the following forms: * `projects/{project_number}` *
  /// `projects/{project_id}` * `folders/{folder_id}` *
  /// `organizations/{organization_id}`
  /// Value must have pattern `^folders/\[^/\]+$`.
  ///
  /// [pageSize] - Size of the pages to be returned. This is currently
  /// unsupported and will be ignored. The server may at any point start using
  /// this field to limit page size.
  ///
  /// [pageToken] - Page token used to retrieve the next page. This is currently
  /// unsupported and will be ignored. The server may at any point start using
  /// this field.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudOrgpolicyV2ListConstraintsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudOrgpolicyV2ListConstraintsResponse> list(
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

    final url_ = 'v2/' + core.Uri.encodeFull('$parent') + '/constraints';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudOrgpolicyV2ListConstraintsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class FoldersPoliciesResource {
  final commons.ApiRequester _requester;

  FoldersPoliciesResource(commons.ApiRequester client) : _requester = client;

  /// Creates a Policy.
  ///
  /// Returns a `google.rpc.Status` with `google.rpc.Code.NOT_FOUND` if the
  /// constraint does not exist. Returns a `google.rpc.Status` with
  /// `google.rpc.Code.ALREADY_EXISTS` if the policy already exists on the given
  /// Cloud resource.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The Cloud resource that will parent the new Policy.
  /// Must be in one of the following forms: * `projects/{project_number}` *
  /// `projects/{project_id}` * `folders/{folder_id}` *
  /// `organizations/{organization_id}`
  /// Value must have pattern `^folders/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudOrgpolicyV2Policy].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudOrgpolicyV2Policy> create(
    GoogleCloudOrgpolicyV2Policy request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$parent') + '/policies';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudOrgpolicyV2Policy.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Deletes a Policy.
  ///
  /// Returns a `google.rpc.Status` with `google.rpc.Code.NOT_FOUND` if the
  /// constraint or Org Policy does not exist.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Name of the policy to delete. See `Policy` for naming
  /// rules.
  /// Value must have pattern `^folders/\[^/\]+/policies/\[^/\]+$`.
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

    final url_ = 'v2/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return GoogleProtobufEmpty.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Gets a `Policy` on a resource.
  ///
  /// If no `Policy` is set on the resource, NOT_FOUND is returned. The `etag`
  /// value can be used with `UpdatePolicy()` to update a `Policy` during
  /// read-modify-write.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Resource name of the policy. See `Policy` for naming
  /// requirements.
  /// Value must have pattern `^folders/\[^/\]+/policies/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudOrgpolicyV2Policy].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudOrgpolicyV2Policy> get(
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
    return GoogleCloudOrgpolicyV2Policy.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Gets the effective `Policy` on a resource.
  ///
  /// This is the result of merging `Policies` in the resource hierarchy and
  /// evaluating conditions. The returned `Policy` will not have an `etag` or
  /// `condition` set because it is a computed `Policy` across multiple
  /// resources. Subtrees of Resource Manager resource hierarchy with 'under:'
  /// prefix will not be expanded.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The effective policy to compute. See `Policy` for
  /// naming rules.
  /// Value must have pattern `^folders/\[^/\]+/policies/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudOrgpolicyV2Policy].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudOrgpolicyV2Policy> getEffectivePolicy(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$name') + ':getEffectivePolicy';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudOrgpolicyV2Policy.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Retrieves all of the `Policies` that exist on a particular resource.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The target Cloud resource that parents the set of
  /// constraints and policies that will be returned from this call. Must be in
  /// one of the following forms: * `projects/{project_number}` *
  /// `projects/{project_id}` * `folders/{folder_id}` *
  /// `organizations/{organization_id}`
  /// Value must have pattern `^folders/\[^/\]+$`.
  ///
  /// [pageSize] - Size of the pages to be returned. This is currently
  /// unsupported and will be ignored. The server may at any point start using
  /// this field to limit page size.
  ///
  /// [pageToken] - Page token used to retrieve the next page. This is currently
  /// unsupported and will be ignored. The server may at any point start using
  /// this field.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudOrgpolicyV2ListPoliciesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudOrgpolicyV2ListPoliciesResponse> list(
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

    final url_ = 'v2/' + core.Uri.encodeFull('$parent') + '/policies';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudOrgpolicyV2ListPoliciesResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Updates a Policy.
  ///
  /// Returns a `google.rpc.Status` with `google.rpc.Code.NOT_FOUND` if the
  /// constraint or the policy do not exist. Returns a `google.rpc.Status` with
  /// `google.rpc.Code.ABORTED` if the etag supplied in the request does not
  /// match the persisted etag of the policy Note: the supplied policy will
  /// perform a full overwrite of all fields.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Immutable. The resource name of the Policy. Must be one of the
  /// following forms, where constraint_name is the name of the constraint which
  /// this Policy configures: *
  /// `projects/{project_number}/policies/{constraint_name}` *
  /// `folders/{folder_id}/policies/{constraint_name}` *
  /// `organizations/{organization_id}/policies/{constraint_name}` For example,
  /// "projects/123/policies/compute.disableSerialPortAccess". Note:
  /// `projects/{project_id}/policies/{constraint_name}` is also an acceptable
  /// name for API requests, but responses will return the name using the
  /// equivalent project number.
  /// Value must have pattern `^folders/\[^/\]+/policies/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudOrgpolicyV2Policy].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudOrgpolicyV2Policy> patch(
    GoogleCloudOrgpolicyV2Policy request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudOrgpolicyV2Policy.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class OrganizationsResource {
  final commons.ApiRequester _requester;

  OrganizationsConstraintsResource get constraints =>
      OrganizationsConstraintsResource(_requester);
  OrganizationsCustomConstraintsResource get customConstraints =>
      OrganizationsCustomConstraintsResource(_requester);
  OrganizationsPoliciesResource get policies =>
      OrganizationsPoliciesResource(_requester);

  OrganizationsResource(commons.ApiRequester client) : _requester = client;
}

class OrganizationsConstraintsResource {
  final commons.ApiRequester _requester;

  OrganizationsConstraintsResource(commons.ApiRequester client)
      : _requester = client;

  /// Lists `Constraints` that could be applied on the specified resource.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The Cloud resource that parents the constraint. Must
  /// be in one of the following forms: * `projects/{project_number}` *
  /// `projects/{project_id}` * `folders/{folder_id}` *
  /// `organizations/{organization_id}`
  /// Value must have pattern `^organizations/\[^/\]+$`.
  ///
  /// [pageSize] - Size of the pages to be returned. This is currently
  /// unsupported and will be ignored. The server may at any point start using
  /// this field to limit page size.
  ///
  /// [pageToken] - Page token used to retrieve the next page. This is currently
  /// unsupported and will be ignored. The server may at any point start using
  /// this field.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudOrgpolicyV2ListConstraintsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudOrgpolicyV2ListConstraintsResponse> list(
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

    final url_ = 'v2/' + core.Uri.encodeFull('$parent') + '/constraints';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudOrgpolicyV2ListConstraintsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class OrganizationsCustomConstraintsResource {
  final commons.ApiRequester _requester;

  OrganizationsCustomConstraintsResource(commons.ApiRequester client)
      : _requester = client;

  /// Creates a CustomConstraint.
  ///
  /// Returns a `google.rpc.Status` with `google.rpc.Code.NOT_FOUND` if the
  /// organization does not exist. Returns a `google.rpc.Status` with
  /// `google.rpc.Code.ALREADY_EXISTS` if the constraint already exists on the
  /// given organization.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Must be in the following form: *
  /// `organizations/{organization_id}`
  /// Value must have pattern `^organizations/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudOrgpolicyV2CustomConstraint].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudOrgpolicyV2CustomConstraint> create(
    GoogleCloudOrgpolicyV2CustomConstraint request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$parent') + '/customConstraints';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudOrgpolicyV2CustomConstraint.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Deletes a Custom Constraint.
  ///
  /// Returns a `google.rpc.Status` with `google.rpc.Code.NOT_FOUND` if the
  /// constraint does not exist.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Name of the custom constraint to delete. See
  /// `CustomConstraint` for naming rules.
  /// Value must have pattern
  /// `^organizations/\[^/\]+/customConstraints/\[^/\]+$`.
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

    final url_ = 'v2/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return GoogleProtobufEmpty.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Gets a CustomConstraint.
  ///
  /// Returns a `google.rpc.Status` with `google.rpc.Code.NOT_FOUND` if the
  /// CustomConstraint does not exist.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Resource name of the custom constraint. See
  /// `CustomConstraint` for naming requirements.
  /// Value must have pattern
  /// `^organizations/\[^/\]+/customConstraints/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudOrgpolicyV2CustomConstraint].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudOrgpolicyV2CustomConstraint> get(
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
    return GoogleCloudOrgpolicyV2CustomConstraint.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Retrieves all of the `CustomConstraints` that exist on a particular
  /// organization resource.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The target Cloud resource that parents the set of
  /// custom constraints that will be returned from this call. Must be in one of
  /// the following forms: * `organizations/{organization_id}`
  /// Value must have pattern `^organizations/\[^/\]+$`.
  ///
  /// [pageSize] - Size of the pages to be returned. This is currently
  /// unsupported and will be ignored. The server may at any point start using
  /// this field to limit page size.
  ///
  /// [pageToken] - Page token used to retrieve the next page. This is currently
  /// unsupported and will be ignored. The server may at any point start using
  /// this field.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudOrgpolicyV2ListCustomConstraintsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudOrgpolicyV2ListCustomConstraintsResponse> list(
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

    final url_ = 'v2/' + core.Uri.encodeFull('$parent') + '/customConstraints';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudOrgpolicyV2ListCustomConstraintsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Updates a Custom Constraint.
  ///
  /// Returns a `google.rpc.Status` with `google.rpc.Code.NOT_FOUND` if the
  /// constraint does not exist. Note: the supplied policy will perform a full
  /// overwrite of all fields.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Immutable. Name of the constraint. This is unique within the
  /// organization. Format of the name should be *
  /// `organizations/{organization_id}/customConstraints/{custom_constraint_id}`
  /// Example : "organizations/123/customConstraints/custom.createOnlyE2TypeVms"
  /// The max length is 70 characters and the min length is 1. Note that the
  /// prefix "organizations/{organization_id}/customConstraints/" is not
  /// counted.
  /// Value must have pattern
  /// `^organizations/\[^/\]+/customConstraints/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudOrgpolicyV2CustomConstraint].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudOrgpolicyV2CustomConstraint> patch(
    GoogleCloudOrgpolicyV2CustomConstraint request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudOrgpolicyV2CustomConstraint.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class OrganizationsPoliciesResource {
  final commons.ApiRequester _requester;

  OrganizationsPoliciesResource(commons.ApiRequester client)
      : _requester = client;

  /// Creates a Policy.
  ///
  /// Returns a `google.rpc.Status` with `google.rpc.Code.NOT_FOUND` if the
  /// constraint does not exist. Returns a `google.rpc.Status` with
  /// `google.rpc.Code.ALREADY_EXISTS` if the policy already exists on the given
  /// Cloud resource.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The Cloud resource that will parent the new Policy.
  /// Must be in one of the following forms: * `projects/{project_number}` *
  /// `projects/{project_id}` * `folders/{folder_id}` *
  /// `organizations/{organization_id}`
  /// Value must have pattern `^organizations/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudOrgpolicyV2Policy].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudOrgpolicyV2Policy> create(
    GoogleCloudOrgpolicyV2Policy request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$parent') + '/policies';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudOrgpolicyV2Policy.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Deletes a Policy.
  ///
  /// Returns a `google.rpc.Status` with `google.rpc.Code.NOT_FOUND` if the
  /// constraint or Org Policy does not exist.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Name of the policy to delete. See `Policy` for naming
  /// rules.
  /// Value must have pattern `^organizations/\[^/\]+/policies/\[^/\]+$`.
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

    final url_ = 'v2/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return GoogleProtobufEmpty.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Gets a `Policy` on a resource.
  ///
  /// If no `Policy` is set on the resource, NOT_FOUND is returned. The `etag`
  /// value can be used with `UpdatePolicy()` to update a `Policy` during
  /// read-modify-write.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Resource name of the policy. See `Policy` for naming
  /// requirements.
  /// Value must have pattern `^organizations/\[^/\]+/policies/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudOrgpolicyV2Policy].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudOrgpolicyV2Policy> get(
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
    return GoogleCloudOrgpolicyV2Policy.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Gets the effective `Policy` on a resource.
  ///
  /// This is the result of merging `Policies` in the resource hierarchy and
  /// evaluating conditions. The returned `Policy` will not have an `etag` or
  /// `condition` set because it is a computed `Policy` across multiple
  /// resources. Subtrees of Resource Manager resource hierarchy with 'under:'
  /// prefix will not be expanded.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The effective policy to compute. See `Policy` for
  /// naming rules.
  /// Value must have pattern `^organizations/\[^/\]+/policies/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudOrgpolicyV2Policy].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudOrgpolicyV2Policy> getEffectivePolicy(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$name') + ':getEffectivePolicy';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudOrgpolicyV2Policy.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Retrieves all of the `Policies` that exist on a particular resource.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The target Cloud resource that parents the set of
  /// constraints and policies that will be returned from this call. Must be in
  /// one of the following forms: * `projects/{project_number}` *
  /// `projects/{project_id}` * `folders/{folder_id}` *
  /// `organizations/{organization_id}`
  /// Value must have pattern `^organizations/\[^/\]+$`.
  ///
  /// [pageSize] - Size of the pages to be returned. This is currently
  /// unsupported and will be ignored. The server may at any point start using
  /// this field to limit page size.
  ///
  /// [pageToken] - Page token used to retrieve the next page. This is currently
  /// unsupported and will be ignored. The server may at any point start using
  /// this field.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudOrgpolicyV2ListPoliciesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudOrgpolicyV2ListPoliciesResponse> list(
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

    final url_ = 'v2/' + core.Uri.encodeFull('$parent') + '/policies';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudOrgpolicyV2ListPoliciesResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Updates a Policy.
  ///
  /// Returns a `google.rpc.Status` with `google.rpc.Code.NOT_FOUND` if the
  /// constraint or the policy do not exist. Returns a `google.rpc.Status` with
  /// `google.rpc.Code.ABORTED` if the etag supplied in the request does not
  /// match the persisted etag of the policy Note: the supplied policy will
  /// perform a full overwrite of all fields.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Immutable. The resource name of the Policy. Must be one of the
  /// following forms, where constraint_name is the name of the constraint which
  /// this Policy configures: *
  /// `projects/{project_number}/policies/{constraint_name}` *
  /// `folders/{folder_id}/policies/{constraint_name}` *
  /// `organizations/{organization_id}/policies/{constraint_name}` For example,
  /// "projects/123/policies/compute.disableSerialPortAccess". Note:
  /// `projects/{project_id}/policies/{constraint_name}` is also an acceptable
  /// name for API requests, but responses will return the name using the
  /// equivalent project number.
  /// Value must have pattern `^organizations/\[^/\]+/policies/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudOrgpolicyV2Policy].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudOrgpolicyV2Policy> patch(
    GoogleCloudOrgpolicyV2Policy request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudOrgpolicyV2Policy.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsResource {
  final commons.ApiRequester _requester;

  ProjectsConstraintsResource get constraints =>
      ProjectsConstraintsResource(_requester);
  ProjectsPoliciesResource get policies => ProjectsPoliciesResource(_requester);

  ProjectsResource(commons.ApiRequester client) : _requester = client;
}

class ProjectsConstraintsResource {
  final commons.ApiRequester _requester;

  ProjectsConstraintsResource(commons.ApiRequester client)
      : _requester = client;

  /// Lists `Constraints` that could be applied on the specified resource.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The Cloud resource that parents the constraint. Must
  /// be in one of the following forms: * `projects/{project_number}` *
  /// `projects/{project_id}` * `folders/{folder_id}` *
  /// `organizations/{organization_id}`
  /// Value must have pattern `^projects/\[^/\]+$`.
  ///
  /// [pageSize] - Size of the pages to be returned. This is currently
  /// unsupported and will be ignored. The server may at any point start using
  /// this field to limit page size.
  ///
  /// [pageToken] - Page token used to retrieve the next page. This is currently
  /// unsupported and will be ignored. The server may at any point start using
  /// this field.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudOrgpolicyV2ListConstraintsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudOrgpolicyV2ListConstraintsResponse> list(
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

    final url_ = 'v2/' + core.Uri.encodeFull('$parent') + '/constraints';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudOrgpolicyV2ListConstraintsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsPoliciesResource {
  final commons.ApiRequester _requester;

  ProjectsPoliciesResource(commons.ApiRequester client) : _requester = client;

  /// Creates a Policy.
  ///
  /// Returns a `google.rpc.Status` with `google.rpc.Code.NOT_FOUND` if the
  /// constraint does not exist. Returns a `google.rpc.Status` with
  /// `google.rpc.Code.ALREADY_EXISTS` if the policy already exists on the given
  /// Cloud resource.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The Cloud resource that will parent the new Policy.
  /// Must be in one of the following forms: * `projects/{project_number}` *
  /// `projects/{project_id}` * `folders/{folder_id}` *
  /// `organizations/{organization_id}`
  /// Value must have pattern `^projects/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudOrgpolicyV2Policy].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudOrgpolicyV2Policy> create(
    GoogleCloudOrgpolicyV2Policy request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$parent') + '/policies';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudOrgpolicyV2Policy.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Deletes a Policy.
  ///
  /// Returns a `google.rpc.Status` with `google.rpc.Code.NOT_FOUND` if the
  /// constraint or Org Policy does not exist.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Name of the policy to delete. See `Policy` for naming
  /// rules.
  /// Value must have pattern `^projects/\[^/\]+/policies/\[^/\]+$`.
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

    final url_ = 'v2/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return GoogleProtobufEmpty.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Gets a `Policy` on a resource.
  ///
  /// If no `Policy` is set on the resource, NOT_FOUND is returned. The `etag`
  /// value can be used with `UpdatePolicy()` to update a `Policy` during
  /// read-modify-write.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Resource name of the policy. See `Policy` for naming
  /// requirements.
  /// Value must have pattern `^projects/\[^/\]+/policies/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudOrgpolicyV2Policy].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudOrgpolicyV2Policy> get(
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
    return GoogleCloudOrgpolicyV2Policy.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Gets the effective `Policy` on a resource.
  ///
  /// This is the result of merging `Policies` in the resource hierarchy and
  /// evaluating conditions. The returned `Policy` will not have an `etag` or
  /// `condition` set because it is a computed `Policy` across multiple
  /// resources. Subtrees of Resource Manager resource hierarchy with 'under:'
  /// prefix will not be expanded.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The effective policy to compute. See `Policy` for
  /// naming rules.
  /// Value must have pattern `^projects/\[^/\]+/policies/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudOrgpolicyV2Policy].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudOrgpolicyV2Policy> getEffectivePolicy(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$name') + ':getEffectivePolicy';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudOrgpolicyV2Policy.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Retrieves all of the `Policies` that exist on a particular resource.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The target Cloud resource that parents the set of
  /// constraints and policies that will be returned from this call. Must be in
  /// one of the following forms: * `projects/{project_number}` *
  /// `projects/{project_id}` * `folders/{folder_id}` *
  /// `organizations/{organization_id}`
  /// Value must have pattern `^projects/\[^/\]+$`.
  ///
  /// [pageSize] - Size of the pages to be returned. This is currently
  /// unsupported and will be ignored. The server may at any point start using
  /// this field to limit page size.
  ///
  /// [pageToken] - Page token used to retrieve the next page. This is currently
  /// unsupported and will be ignored. The server may at any point start using
  /// this field.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudOrgpolicyV2ListPoliciesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudOrgpolicyV2ListPoliciesResponse> list(
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

    final url_ = 'v2/' + core.Uri.encodeFull('$parent') + '/policies';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudOrgpolicyV2ListPoliciesResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Updates a Policy.
  ///
  /// Returns a `google.rpc.Status` with `google.rpc.Code.NOT_FOUND` if the
  /// constraint or the policy do not exist. Returns a `google.rpc.Status` with
  /// `google.rpc.Code.ABORTED` if the etag supplied in the request does not
  /// match the persisted etag of the policy Note: the supplied policy will
  /// perform a full overwrite of all fields.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Immutable. The resource name of the Policy. Must be one of the
  /// following forms, where constraint_name is the name of the constraint which
  /// this Policy configures: *
  /// `projects/{project_number}/policies/{constraint_name}` *
  /// `folders/{folder_id}/policies/{constraint_name}` *
  /// `organizations/{organization_id}/policies/{constraint_name}` For example,
  /// "projects/123/policies/compute.disableSerialPortAccess". Note:
  /// `projects/{project_id}/policies/{constraint_name}` is also an acceptable
  /// name for API requests, but responses will return the name using the
  /// equivalent project number.
  /// Value must have pattern `^projects/\[^/\]+/policies/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudOrgpolicyV2Policy].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudOrgpolicyV2Policy> patch(
    GoogleCloudOrgpolicyV2Policy request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudOrgpolicyV2Policy.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

/// Similar to PolicySpec but with an extra 'launch' field for launch reference.
///
/// The PolicySpec here is specific for dry-run/darklaunch.
class GoogleCloudOrgpolicyV2AlternatePolicySpec {
  /// Reference to the launch that will be used while audit logging and to
  /// control the launch.
  ///
  /// Should be set only in the alternate policy.
  core.String? launch;

  /// Specify `Constraint` for configurations of Cloud Platform resources.
  GoogleCloudOrgpolicyV2PolicySpec? spec;

  GoogleCloudOrgpolicyV2AlternatePolicySpec({
    this.launch,
    this.spec,
  });

  GoogleCloudOrgpolicyV2AlternatePolicySpec.fromJson(core.Map json_)
      : this(
          launch: json_.containsKey('launch')
              ? json_['launch'] as core.String
              : null,
          spec: json_.containsKey('spec')
              ? GoogleCloudOrgpolicyV2PolicySpec.fromJson(
                  json_['spec'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (launch != null) 'launch': launch!,
        if (spec != null) 'spec': spec!,
      };
}

/// A `constraint` describes a way to restrict resource's configuration.
///
/// For example, you could enforce a constraint that controls which cloud
/// services can be activated across an organization, or whether a Compute
/// Engine instance can have serial port connections established. `Constraints`
/// can be configured by the organization's policy administrator to fit the
/// needs of the organization by setting a `policy` that includes `constraints`
/// at different locations in the organization's resource hierarchy. Policies
/// are inherited down the resource hierarchy from higher levels, but can also
/// be overridden. For details about the inheritance rules please read about
/// `policies`. `Constraints` have a default behavior determined by the
/// `constraint_default` field, which is the enforcement behavior that is used
/// in the absence of a `policy` being defined or inherited for the resource in
/// question.
class GoogleCloudOrgpolicyV2Constraint {
  /// Defines this constraint as being a BooleanConstraint.
  GoogleCloudOrgpolicyV2ConstraintBooleanConstraint? booleanConstraint;

  /// The evaluation behavior of this constraint in the absence of 'Policy'.
  /// Possible string values are:
  /// - "CONSTRAINT_DEFAULT_UNSPECIFIED" : This is only used for distinguishing
  /// unset values and should never be used.
  /// - "ALLOW" : Indicate that all values are allowed for list constraints.
  /// Indicate that enforcement is off for boolean constraints.
  /// - "DENY" : Indicate that all values are denied for list constraints.
  /// Indicate that enforcement is on for boolean constraints.
  core.String? constraintDefault;

  /// Detailed description of what this `Constraint` controls as well as how and
  /// where it is enforced.
  ///
  /// Mutable.
  core.String? description;

  /// The human readable name.
  ///
  /// Mutable.
  core.String? displayName;

  /// Defines this constraint as being a ListConstraint.
  GoogleCloudOrgpolicyV2ConstraintListConstraint? listConstraint;

  /// The resource name of the Constraint.
  ///
  /// Must be in one of the following forms: *
  /// `projects/{project_number}/constraints/{constraint_name}` *
  /// `folders/{folder_id}/constraints/{constraint_name}` *
  /// `organizations/{organization_id}/constraints/{constraint_name}` For
  /// example, "/projects/123/constraints/compute.disableSerialPortAccess".
  ///
  /// Immutable.
  core.String? name;

  GoogleCloudOrgpolicyV2Constraint({
    this.booleanConstraint,
    this.constraintDefault,
    this.description,
    this.displayName,
    this.listConstraint,
    this.name,
  });

  GoogleCloudOrgpolicyV2Constraint.fromJson(core.Map json_)
      : this(
          booleanConstraint: json_.containsKey('booleanConstraint')
              ? GoogleCloudOrgpolicyV2ConstraintBooleanConstraint.fromJson(
                  json_['booleanConstraint']
                      as core.Map<core.String, core.dynamic>)
              : null,
          constraintDefault: json_.containsKey('constraintDefault')
              ? json_['constraintDefault'] as core.String
              : null,
          description: json_.containsKey('description')
              ? json_['description'] as core.String
              : null,
          displayName: json_.containsKey('displayName')
              ? json_['displayName'] as core.String
              : null,
          listConstraint: json_.containsKey('listConstraint')
              ? GoogleCloudOrgpolicyV2ConstraintListConstraint.fromJson(
                  json_['listConstraint']
                      as core.Map<core.String, core.dynamic>)
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (booleanConstraint != null) 'booleanConstraint': booleanConstraint!,
        if (constraintDefault != null) 'constraintDefault': constraintDefault!,
        if (description != null) 'description': description!,
        if (displayName != null) 'displayName': displayName!,
        if (listConstraint != null) 'listConstraint': listConstraint!,
        if (name != null) 'name': name!,
      };
}

/// A `Constraint` that is either enforced or not.
///
/// For example a constraint `constraints/compute.disableSerialPortAccess`. If
/// it is enforced on a VM instance, serial port connections will not be opened
/// to that instance.
typedef GoogleCloudOrgpolicyV2ConstraintBooleanConstraint = $Empty;

/// A `Constraint` that allows or disallows a list of string values, which are
/// configured by an Organization's policy administrator with a `Policy`.
typedef GoogleCloudOrgpolicyV2ConstraintListConstraint = $ListConstraint;

/// A custom constraint defined by customers which can *only* be applied to the
/// given resource types and organization.
///
/// By creating a custom constraint, customers can applied policies of this
/// custom constraint. *Creating a custom constraint itself does NOT apply any
/// policy enforcement*.
class GoogleCloudOrgpolicyV2CustomConstraint {
  /// Allow or deny type.
  /// Possible string values are:
  /// - "ACTION_TYPE_UNSPECIFIED" : Unspecified. Will results in user error.
  /// - "ALLOW" : Allowed action type.
  /// - "DENY" : Deny action type.
  core.String? actionType;

  /// Org policy condition/expression.
  ///
  /// For example:
  /// `resource.instanceName.matches("[production|test]_.*_(\d)+")'` or,
  /// `resource.management.auto_upgrade == true` The max length of the condition
  /// is 1000 characters.
  core.String? condition;

  /// Detailed information about this custom policy constraint.
  ///
  /// The max length of the description is 2000 characters.
  core.String? description;

  /// One line display name for the UI.
  ///
  /// The max length of the display_name is 200 characters.
  core.String? displayName;

  /// All the operations being applied for this constraint.
  core.List<core.String>? methodTypes;

  /// Name of the constraint.
  ///
  /// This is unique within the organization. Format of the name should be *
  /// `organizations/{organization_id}/customConstraints/{custom_constraint_id}`
  /// Example : "organizations/123/customConstraints/custom.createOnlyE2TypeVms"
  /// The max length is 70 characters and the min length is 1. Note that the
  /// prefix "organizations/{organization_id}/customConstraints/" is not
  /// counted.
  ///
  /// Immutable.
  core.String? name;

  /// The Resource Instance type on which this policy applies to.
  ///
  /// Format will be of the form : "/" Example: *
  /// `compute.googleapis.com/Instance`.
  ///
  /// Immutable.
  core.List<core.String>? resourceTypes;

  /// The last time this custom constraint was updated.
  ///
  /// This represents the last time that the `CreateCustomConstraint` or
  /// `UpdateCustomConstraint` RPC was called
  ///
  /// Output only.
  core.String? updateTime;

  GoogleCloudOrgpolicyV2CustomConstraint({
    this.actionType,
    this.condition,
    this.description,
    this.displayName,
    this.methodTypes,
    this.name,
    this.resourceTypes,
    this.updateTime,
  });

  GoogleCloudOrgpolicyV2CustomConstraint.fromJson(core.Map json_)
      : this(
          actionType: json_.containsKey('actionType')
              ? json_['actionType'] as core.String
              : null,
          condition: json_.containsKey('condition')
              ? json_['condition'] as core.String
              : null,
          description: json_.containsKey('description')
              ? json_['description'] as core.String
              : null,
          displayName: json_.containsKey('displayName')
              ? json_['displayName'] as core.String
              : null,
          methodTypes: json_.containsKey('methodTypes')
              ? (json_['methodTypes'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          resourceTypes: json_.containsKey('resourceTypes')
              ? (json_['resourceTypes'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          updateTime: json_.containsKey('updateTime')
              ? json_['updateTime'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (actionType != null) 'actionType': actionType!,
        if (condition != null) 'condition': condition!,
        if (description != null) 'description': description!,
        if (displayName != null) 'displayName': displayName!,
        if (methodTypes != null) 'methodTypes': methodTypes!,
        if (name != null) 'name': name!,
        if (resourceTypes != null) 'resourceTypes': resourceTypes!,
        if (updateTime != null) 'updateTime': updateTime!,
      };
}

/// The response returned from the ListConstraints method.
class GoogleCloudOrgpolicyV2ListConstraintsResponse {
  /// The collection of constraints that are available on the targeted resource.
  core.List<GoogleCloudOrgpolicyV2Constraint>? constraints;

  /// Page token used to retrieve the next page.
  ///
  /// This is currently not used.
  core.String? nextPageToken;

  GoogleCloudOrgpolicyV2ListConstraintsResponse({
    this.constraints,
    this.nextPageToken,
  });

  GoogleCloudOrgpolicyV2ListConstraintsResponse.fromJson(core.Map json_)
      : this(
          constraints: json_.containsKey('constraints')
              ? (json_['constraints'] as core.List)
                  .map((value) => GoogleCloudOrgpolicyV2Constraint.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (constraints != null) 'constraints': constraints!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
      };
}

/// The response returned from the ListCustomConstraints method.
///
/// It will be empty if no `CustomConstraints` are set on the organization
/// resource.
class GoogleCloudOrgpolicyV2ListCustomConstraintsResponse {
  /// All `CustomConstraints` that exist on the organization resource.
  ///
  /// It will be empty if no `CustomConstraints` are set.
  core.List<GoogleCloudOrgpolicyV2CustomConstraint>? customConstraints;

  /// Page token used to retrieve the next page.
  ///
  /// This is currently not used, but the server may at any point start
  /// supplying a valid token.
  core.String? nextPageToken;

  GoogleCloudOrgpolicyV2ListCustomConstraintsResponse({
    this.customConstraints,
    this.nextPageToken,
  });

  GoogleCloudOrgpolicyV2ListCustomConstraintsResponse.fromJson(core.Map json_)
      : this(
          customConstraints: json_.containsKey('customConstraints')
              ? (json_['customConstraints'] as core.List)
                  .map((value) =>
                      GoogleCloudOrgpolicyV2CustomConstraint.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (customConstraints != null) 'customConstraints': customConstraints!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
      };
}

/// The response returned from the ListPolicies method.
///
/// It will be empty if no `Policies` are set on the resource.
class GoogleCloudOrgpolicyV2ListPoliciesResponse {
  /// Page token used to retrieve the next page.
  ///
  /// This is currently not used, but the server may at any point start
  /// supplying a valid token.
  core.String? nextPageToken;

  /// All `Policies` that exist on the resource.
  ///
  /// It will be empty if no `Policies` are set.
  core.List<GoogleCloudOrgpolicyV2Policy>? policies;

  GoogleCloudOrgpolicyV2ListPoliciesResponse({
    this.nextPageToken,
    this.policies,
  });

  GoogleCloudOrgpolicyV2ListPoliciesResponse.fromJson(core.Map json_)
      : this(
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
          policies: json_.containsKey('policies')
              ? (json_['policies'] as core.List)
                  .map((value) => GoogleCloudOrgpolicyV2Policy.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (policies != null) 'policies': policies!,
      };
}

/// Defines a Cloud Organization `Policy` which is used to specify `Constraints`
/// for configurations of Cloud Platform resources.
class GoogleCloudOrgpolicyV2Policy {
  /// Deprecated.
  GoogleCloudOrgpolicyV2AlternatePolicySpec? alternate;

  /// The resource name of the Policy.
  ///
  /// Must be one of the following forms, where constraint_name is the name of
  /// the constraint which this Policy configures: *
  /// `projects/{project_number}/policies/{constraint_name}` *
  /// `folders/{folder_id}/policies/{constraint_name}` *
  /// `organizations/{organization_id}/policies/{constraint_name}` For example,
  /// "projects/123/policies/compute.disableSerialPortAccess". Note:
  /// `projects/{project_id}/policies/{constraint_name}` is also an acceptable
  /// name for API requests, but responses will return the name using the
  /// equivalent project number.
  ///
  /// Immutable.
  core.String? name;

  /// Basic information about the Organization Policy.
  GoogleCloudOrgpolicyV2PolicySpec? spec;

  GoogleCloudOrgpolicyV2Policy({
    this.alternate,
    this.name,
    this.spec,
  });

  GoogleCloudOrgpolicyV2Policy.fromJson(core.Map json_)
      : this(
          alternate: json_.containsKey('alternate')
              ? GoogleCloudOrgpolicyV2AlternatePolicySpec.fromJson(
                  json_['alternate'] as core.Map<core.String, core.dynamic>)
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          spec: json_.containsKey('spec')
              ? GoogleCloudOrgpolicyV2PolicySpec.fromJson(
                  json_['spec'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (alternate != null) 'alternate': alternate!,
        if (name != null) 'name': name!,
        if (spec != null) 'spec': spec!,
      };
}

/// Defines a Cloud Organization `PolicySpec` which is used to specify
/// `Constraints` for configurations of Cloud Platform resources.
class GoogleCloudOrgpolicyV2PolicySpec {
  /// An opaque tag indicating the current version of the `Policy`, used for
  /// concurrency control.
  ///
  /// This field is ignored if used in a `CreatePolicy` request. When the
  /// `Policy` is returned from either a `GetPolicy` or a `ListPolicies`
  /// request, this `etag` indicates the version of the current `Policy` to use
  /// when executing a read-modify-write loop. When the `Policy` is returned
  /// from a `GetEffectivePolicy` request, the `etag` will be unset.
  core.String? etag;

  /// Determines the inheritance behavior for this `Policy`.
  ///
  /// If `inherit_from_parent` is true, PolicyRules set higher up in the
  /// hierarchy (up to the closest root) are inherited and present in the
  /// effective policy. If it is false, then no rules are inherited, and this
  /// Policy becomes the new root for evaluation. This field can be set only for
  /// Policies which configure list constraints.
  core.bool? inheritFromParent;

  /// Ignores policies set above this resource and restores the
  /// `constraint_default` enforcement behavior of the specific `Constraint` at
  /// this resource.
  ///
  /// This field can be set in policies for either list or boolean constraints.
  /// If set, `rules` must be empty and `inherit_from_parent` must be set to
  /// false.
  core.bool? reset;

  /// Up to 10 PolicyRules are allowed.
  ///
  /// In Policies for boolean constraints, the following requirements apply: -
  /// There must be one and only one PolicyRule where condition is unset. -
  /// BooleanPolicyRules with conditions must set `enforced` to the opposite of
  /// the PolicyRule without a condition. - During policy evaluation,
  /// PolicyRules with conditions that are true for a target resource take
  /// precedence.
  core.List<GoogleCloudOrgpolicyV2PolicySpecPolicyRule>? rules;

  /// The time stamp this was previously updated.
  ///
  /// This represents the last time a call to `CreatePolicy` or `UpdatePolicy`
  /// was made for that `Policy`.
  ///
  /// Output only.
  core.String? updateTime;

  GoogleCloudOrgpolicyV2PolicySpec({
    this.etag,
    this.inheritFromParent,
    this.reset,
    this.rules,
    this.updateTime,
  });

  GoogleCloudOrgpolicyV2PolicySpec.fromJson(core.Map json_)
      : this(
          etag: json_.containsKey('etag') ? json_['etag'] as core.String : null,
          inheritFromParent: json_.containsKey('inheritFromParent')
              ? json_['inheritFromParent'] as core.bool
              : null,
          reset:
              json_.containsKey('reset') ? json_['reset'] as core.bool : null,
          rules: json_.containsKey('rules')
              ? (json_['rules'] as core.List)
                  .map((value) =>
                      GoogleCloudOrgpolicyV2PolicySpecPolicyRule.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          updateTime: json_.containsKey('updateTime')
              ? json_['updateTime'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (etag != null) 'etag': etag!,
        if (inheritFromParent != null) 'inheritFromParent': inheritFromParent!,
        if (reset != null) 'reset': reset!,
        if (rules != null) 'rules': rules!,
        if (updateTime != null) 'updateTime': updateTime!,
      };
}

/// A rule used to express this policy.
class GoogleCloudOrgpolicyV2PolicySpecPolicyRule {
  /// Setting this to true means that all values are allowed.
  ///
  /// This field can be set only in Policies for list constraints.
  core.bool? allowAll;

  /// A condition which determines whether this rule is used in the evaluation
  /// of the policy.
  ///
  /// When set, the \`expression\` field in the \`Expr' must include from 1 to
  /// 10 subexpressions, joined by the "||" or "&&" operators. Each
  /// subexpression must be of the form "resource.matchTag('/tag_key_short_name,
  /// 'tag_value_short_name')". or "resource.matchTagId('tagKeys/key_id',
  /// 'tagValues/value_id')". where key_name and value_name are the resource
  /// names for Label Keys and Values. These names are available from the Tag
  /// Manager Service. An example expression is:
  /// "resource.matchTag('123456789/environment, 'prod')". or
  /// "resource.matchTagId('tagKeys/123', 'tagValues/456')".
  GoogleTypeExpr? condition;

  /// Setting this to true means that all values are denied.
  ///
  /// This field can be set only in Policies for list constraints.
  core.bool? denyAll;

  /// If `true`, then the `Policy` is enforced.
  ///
  /// If `false`, then any configuration is acceptable. This field can be set
  /// only in Policies for boolean constraints.
  core.bool? enforce;

  /// List of values to be used for this PolicyRule.
  ///
  /// This field can be set only in Policies for list constraints.
  GoogleCloudOrgpolicyV2PolicySpecPolicyRuleStringValues? values;

  GoogleCloudOrgpolicyV2PolicySpecPolicyRule({
    this.allowAll,
    this.condition,
    this.denyAll,
    this.enforce,
    this.values,
  });

  GoogleCloudOrgpolicyV2PolicySpecPolicyRule.fromJson(core.Map json_)
      : this(
          allowAll: json_.containsKey('allowAll')
              ? json_['allowAll'] as core.bool
              : null,
          condition: json_.containsKey('condition')
              ? GoogleTypeExpr.fromJson(
                  json_['condition'] as core.Map<core.String, core.dynamic>)
              : null,
          denyAll: json_.containsKey('denyAll')
              ? json_['denyAll'] as core.bool
              : null,
          enforce: json_.containsKey('enforce')
              ? json_['enforce'] as core.bool
              : null,
          values: json_.containsKey('values')
              ? GoogleCloudOrgpolicyV2PolicySpecPolicyRuleStringValues.fromJson(
                  json_['values'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (allowAll != null) 'allowAll': allowAll!,
        if (condition != null) 'condition': condition!,
        if (denyAll != null) 'denyAll': denyAll!,
        if (enforce != null) 'enforce': enforce!,
        if (values != null) 'values': values!,
      };
}

/// A message that holds specific allowed and denied values.
///
/// This message can define specific values and subtrees of Cloud Resource
/// Manager resource hierarchy (`Organizations`, `Folders`, `Projects`) that are
/// allowed or denied. This is achieved by using the `under:` and optional `is:`
/// prefixes. The `under:` prefix is used to denote resource subtree values. The
/// `is:` prefix is used to denote specific values, and is required only if the
/// value contains a ":". Values prefixed with "is:" are treated the same as
/// values with no prefix. Ancestry subtrees must be in one of the following
/// formats: - "projects/", e.g. "projects/tokyo-rain-123" - "folders/", e.g.
/// "folders/1234" - "organizations/", e.g. "organizations/1234" The
/// `supports_under` field of the associated `Constraint` defines whether
/// ancestry prefixes can be used.
typedef GoogleCloudOrgpolicyV2PolicySpecPolicyRuleStringValues = $StringValues;

/// A generic empty message that you can re-use to avoid defining duplicated
/// empty messages in your APIs.
///
/// A typical example is to use it as the request or the response type of an API
/// method. For instance: service Foo { rpc Bar(google.protobuf.Empty) returns
/// (google.protobuf.Empty); }
typedef GoogleProtobufEmpty = $Empty;

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
typedef GoogleTypeExpr = $Expr;
