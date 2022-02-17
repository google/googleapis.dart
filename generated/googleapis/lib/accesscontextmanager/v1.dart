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

/// Access Context Manager API - v1
///
/// An API for setting attribute based access control to requests to GCP
/// services.
///
/// For more information, see
/// <https://cloud.google.com/access-context-manager/docs/reference/rest/>
///
/// Create an instance of [AccessContextManagerApi] to access these resources:
///
/// - [AccessPoliciesResource]
///   - [AccessPoliciesAccessLevelsResource]
///   - [AccessPoliciesServicePerimetersResource]
/// - [OperationsResource]
/// - [OrganizationsResource]
///   - [OrganizationsGcpUserAccessBindingsResource]
library accesscontextmanager.v1;

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

/// An API for setting attribute based access control to requests to GCP
/// services.
class AccessContextManagerApi {
  /// See, edit, configure, and delete your Google Cloud data and see the email
  /// address for your Google Account.
  static const cloudPlatformScope =
      'https://www.googleapis.com/auth/cloud-platform';

  final commons.ApiRequester _requester;

  AccessPoliciesResource get accessPolicies =>
      AccessPoliciesResource(_requester);
  OperationsResource get operations => OperationsResource(_requester);
  OrganizationsResource get organizations => OrganizationsResource(_requester);

  AccessContextManagerApi(http.Client client,
      {core.String rootUrl = 'https://accesscontextmanager.googleapis.com/',
      core.String servicePath = ''})
      : _requester =
            commons.ApiRequester(client, rootUrl, servicePath, requestHeaders);
}

class AccessPoliciesResource {
  final commons.ApiRequester _requester;

  AccessPoliciesAccessLevelsResource get accessLevels =>
      AccessPoliciesAccessLevelsResource(_requester);
  AccessPoliciesServicePerimetersResource get servicePerimeters =>
      AccessPoliciesServicePerimetersResource(_requester);

  AccessPoliciesResource(commons.ApiRequester client) : _requester = client;

  /// Creates an access policy.
  ///
  /// This method fails if the organization already has an access policy. The
  /// long-running operation has a successful status after the access policy
  /// propagates to long-lasting storage. Syntactic and basic semantic errors
  /// are returned in `metadata` as a BadRequest proto.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
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
    AccessPolicy request, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    const _url = 'v1/accessPolicies';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return Operation.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Deletes an access policy based on the resource name.
  ///
  /// The long-running operation has a successful status after the access policy
  /// is removed from long-lasting storage.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Resource name for the access policy to delete. Format
  /// `accessPolicies/{policy_id}`
  /// Value must have pattern `^accessPolicies/\[^/\]+$`.
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
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'DELETE',
      queryParams: _queryParams,
    );
    return Operation.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Returns an access policy based on the name.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Resource name for the access policy to get. Format
  /// `accessPolicies/{policy_id}`
  /// Value must have pattern `^accessPolicies/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [AccessPolicy].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<AccessPolicy> get(
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
    return AccessPolicy.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Gets the IAM policy for the specified Access Context Manager access
  /// policy.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [resource] - REQUIRED: The resource for which the policy is being
  /// requested. See the operation documentation for the appropriate value for
  /// this field.
  /// Value must have pattern `^accessPolicies/\[^/\]+$`.
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
    GetIamPolicyRequest request,
    core.String resource, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$resource') + ':getIamPolicy';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return Policy.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Lists all access policies in an organization.
  ///
  /// Request parameters:
  ///
  /// [pageSize] - Number of AccessPolicy instances to include in the list.
  /// Default 100.
  ///
  /// [pageToken] - Next page token for the next batch of AccessPolicy
  /// instances. Defaults to the first page of results.
  ///
  /// [parent] - Required. Resource name for the container to list AccessPolicy
  /// instances from. Format: `organizations/{org_id}`
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListAccessPoliciesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListAccessPoliciesResponse> list({
    core.int? pageSize,
    core.String? pageToken,
    core.String? parent,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if (parent != null) 'parent': [parent],
      if ($fields != null) 'fields': [$fields],
    };

    const _url = 'v1/accessPolicies';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return ListAccessPoliciesResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Updates an access policy.
  ///
  /// The long-running operation from this RPC has a successful status after the
  /// changes to the access policy propagate to long-lasting storage.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Output only. Resource name of the `AccessPolicy`. Format:
  /// `accessPolicies/{access_policy}`
  /// Value must have pattern `^accessPolicies/\[^/\]+$`.
  ///
  /// [updateMask] - Required. Mask to control which fields get updated. Must be
  /// non-empty.
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
    AccessPolicy request,
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
    return Operation.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Sets the IAM policy for the specified Access Context Manager access
  /// policy.
  ///
  /// This method replaces the existing IAM policy on the access policy. The IAM
  /// policy controls the set of users who can perform specific operations on
  /// the Access Context Manager access policy.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [resource] - REQUIRED: The resource for which the policy is being
  /// specified. See the operation documentation for the appropriate value for
  /// this field.
  /// Value must have pattern `^accessPolicies/\[^/\]+$`.
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
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$resource') + ':setIamPolicy';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return Policy.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Returns the IAM permissions that the caller has on the specified Access
  /// Context Manager resource.
  ///
  /// The resource can be an AccessPolicy, AccessLevel, or ServicePerimeter.
  /// This method does not support other resources.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [resource] - REQUIRED: The resource for which the policy detail is being
  /// requested. See the operation documentation for the appropriate value for
  /// this field.
  /// Value must have pattern `^accessPolicies/\[^/\]+$`.
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
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url =
        'v1/' + core.Uri.encodeFull('$resource') + ':testIamPermissions';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return TestIamPermissionsResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class AccessPoliciesAccessLevelsResource {
  final commons.ApiRequester _requester;

  AccessPoliciesAccessLevelsResource(commons.ApiRequester client)
      : _requester = client;

  /// Creates an access level.
  ///
  /// The long-running operation from this RPC has a successful status after the
  /// access level propagates to long-lasting storage. If access levels contain
  /// errors, an error response is returned for the first error encountered.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Resource name for the access policy which owns this
  /// Access Level. Format: `accessPolicies/{policy_id}`
  /// Value must have pattern `^accessPolicies/\[^/\]+$`.
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
    AccessLevel request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$parent') + '/accessLevels';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return Operation.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Deletes an access level based on the resource name.
  ///
  /// The long-running operation from this RPC has a successful status after the
  /// access level has been removed from long-lasting storage.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Resource name for the Access Level. Format:
  /// `accessPolicies/{policy_id}/accessLevels/{access_level_id}`
  /// Value must have pattern `^accessPolicies/\[^/\]+/accessLevels/\[^/\]+$`.
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
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'DELETE',
      queryParams: _queryParams,
    );
    return Operation.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Gets an access level based on the resource name.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Resource name for the Access Level. Format:
  /// `accessPolicies/{policy_id}/accessLevels/{access_level_id}`
  /// Value must have pattern `^accessPolicies/\[^/\]+/accessLevels/\[^/\]+$`.
  ///
  /// [accessLevelFormat] - Whether to return `BasicLevels` in the Cloud Common
  /// Expression Language rather than as `BasicLevels`. Defaults to AS_DEFINED,
  /// where Access Levels are returned as `BasicLevels` or `CustomLevels` based
  /// on how they were created. If set to CEL, all Access Levels are returned as
  /// `CustomLevels`. In the CEL case, `BasicLevels` are translated to
  /// equivalent `CustomLevels`.
  /// Possible string values are:
  /// - "LEVEL_FORMAT_UNSPECIFIED" : The format was not specified.
  /// - "AS_DEFINED" : Uses the format the resource was defined in. BasicLevels
  /// are returned as BasicLevels, CustomLevels are returned as CustomLevels.
  /// - "CEL" : Use Cloud Common Expression Language when returning the
  /// resource. Both BasicLevels and CustomLevels are returned as CustomLevels.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [AccessLevel].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<AccessLevel> get(
    core.String name, {
    core.String? accessLevelFormat,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (accessLevelFormat != null) 'accessLevelFormat': [accessLevelFormat],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return AccessLevel.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Lists all access levels for an access policy.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Resource name for the access policy to list Access
  /// Levels from. Format: `accessPolicies/{policy_id}`
  /// Value must have pattern `^accessPolicies/\[^/\]+$`.
  ///
  /// [accessLevelFormat] - Whether to return `BasicLevels` in the Cloud Common
  /// Expression language, as `CustomLevels`, rather than as `BasicLevels`.
  /// Defaults to returning `AccessLevels` in the format they were defined.
  /// Possible string values are:
  /// - "LEVEL_FORMAT_UNSPECIFIED" : The format was not specified.
  /// - "AS_DEFINED" : Uses the format the resource was defined in. BasicLevels
  /// are returned as BasicLevels, CustomLevels are returned as CustomLevels.
  /// - "CEL" : Use Cloud Common Expression Language when returning the
  /// resource. Both BasicLevels and CustomLevels are returned as CustomLevels.
  ///
  /// [pageSize] - Number of Access Levels to include in the list. Default 100.
  ///
  /// [pageToken] - Next page token for the next batch of Access Level
  /// instances. Defaults to the first page of results.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListAccessLevelsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListAccessLevelsResponse> list(
    core.String parent, {
    core.String? accessLevelFormat,
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (accessLevelFormat != null) 'accessLevelFormat': [accessLevelFormat],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$parent') + '/accessLevels';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return ListAccessLevelsResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Updates an access level.
  ///
  /// The long-running operation from this RPC has a successful status after the
  /// changes to the access level propagate to long-lasting storage. If access
  /// levels contain errors, an error response is returned for the first error
  /// encountered.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Resource name for the Access Level. The `short_name`
  /// component must begin with a letter and only include alphanumeric and '_'.
  /// Format: `accessPolicies/{access_policy}/accessLevels/{access_level}`. The
  /// maximum length of the `access_level` component is 50 characters.
  /// Value must have pattern `^accessPolicies/\[^/\]+/accessLevels/\[^/\]+$`.
  ///
  /// [updateMask] - Required. Mask to control which fields get updated. Must be
  /// non-empty.
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
    AccessLevel request,
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
    return Operation.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Replaces all existing access levels in an access policy with the access
  /// levels provided.
  ///
  /// This is done atomically. The long-running operation from this RPC has a
  /// successful status after all replacements propagate to long-lasting
  /// storage. If the replacement contains errors, an error response is returned
  /// for the first error encountered. Upon error, the replacement is cancelled,
  /// and existing access levels are not affected. The Operation.response field
  /// contains ReplaceAccessLevelsResponse. Removing access levels contained in
  /// existing service perimeters result in an error.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Resource name for the access policy which owns these
  /// Access Levels. Format: `accessPolicies/{policy_id}`
  /// Value must have pattern `^accessPolicies/\[^/\]+$`.
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
  async.Future<Operation> replaceAll(
    ReplaceAccessLevelsRequest request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url =
        'v1/' + core.Uri.encodeFull('$parent') + '/accessLevels:replaceAll';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return Operation.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Returns the IAM permissions that the caller has on the specified Access
  /// Context Manager resource.
  ///
  /// The resource can be an AccessPolicy, AccessLevel, or ServicePerimeter.
  /// This method does not support other resources.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [resource] - REQUIRED: The resource for which the policy detail is being
  /// requested. See the operation documentation for the appropriate value for
  /// this field.
  /// Value must have pattern `^accessPolicies/\[^/\]+/accessLevels/\[^/\]+$`.
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
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url =
        'v1/' + core.Uri.encodeFull('$resource') + ':testIamPermissions';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return TestIamPermissionsResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class AccessPoliciesServicePerimetersResource {
  final commons.ApiRequester _requester;

  AccessPoliciesServicePerimetersResource(commons.ApiRequester client)
      : _requester = client;

  /// Commits the dry-run specification for all the service perimeters in an
  /// access policy.
  ///
  /// A commit operation on a service perimeter involves copying its `spec`
  /// field to the `status` field of the service perimeter. Only service
  /// perimeters with `use_explicit_dry_run_spec` field set to true are affected
  /// by a commit operation. The long-running operation from this RPC has a
  /// successful status after the dry-run specifications for all the service
  /// perimeters have been committed. If a commit fails, it causes the
  /// long-running operation to return an error response and the entire commit
  /// operation is cancelled. When successful, the Operation.response field
  /// contains CommitServicePerimetersResponse. The `dry_run` and the `spec`
  /// fields are cleared after a successful commit operation.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Resource name for the parent Access Policy which owns
  /// all Service Perimeters in scope for the commit operation. Format:
  /// `accessPolicies/{policy_id}`
  /// Value must have pattern `^accessPolicies/\[^/\]+$`.
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
  async.Future<Operation> commit(
    CommitServicePerimetersRequest request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url =
        'v1/' + core.Uri.encodeFull('$parent') + '/servicePerimeters:commit';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return Operation.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Creates a service perimeter.
  ///
  /// The long-running operation from this RPC has a successful status after the
  /// service perimeter propagates to long-lasting storage. If a service
  /// perimeter contains errors, an error response is returned for the first
  /// error encountered.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Resource name for the access policy which owns this
  /// Service Perimeter. Format: `accessPolicies/{policy_id}`
  /// Value must have pattern `^accessPolicies/\[^/\]+$`.
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
    ServicePerimeter request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$parent') + '/servicePerimeters';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return Operation.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Deletes a service perimeter based on the resource name.
  ///
  /// The long-running operation from this RPC has a successful status after the
  /// service perimeter is removed from long-lasting storage.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Resource name for the Service Perimeter. Format:
  /// `accessPolicies/{policy_id}/servicePerimeters/{service_perimeter_id}`
  /// Value must have pattern
  /// `^accessPolicies/\[^/\]+/servicePerimeters/\[^/\]+$`.
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
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'DELETE',
      queryParams: _queryParams,
    );
    return Operation.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Gets a service perimeter based on the resource name.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Resource name for the Service Perimeter. Format:
  /// `accessPolicies/{policy_id}/servicePerimeters/{service_perimeters_id}`
  /// Value must have pattern
  /// `^accessPolicies/\[^/\]+/servicePerimeters/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ServicePerimeter].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ServicePerimeter> get(
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
    return ServicePerimeter.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Lists all service perimeters for an access policy.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Resource name for the access policy to list Service
  /// Perimeters from. Format: `accessPolicies/{policy_id}`
  /// Value must have pattern `^accessPolicies/\[^/\]+$`.
  ///
  /// [pageSize] - Number of Service Perimeters to include in the list. Default
  /// 100.
  ///
  /// [pageToken] - Next page token for the next batch of Service Perimeter
  /// instances. Defaults to the first page of results.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListServicePerimetersResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListServicePerimetersResponse> list(
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

    final _url = 'v1/' + core.Uri.encodeFull('$parent') + '/servicePerimeters';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return ListServicePerimetersResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Updates a service perimeter.
  ///
  /// The long-running operation from this RPC has a successful status after the
  /// service perimeter propagates to long-lasting storage. If a service
  /// perimeter contains errors, an error response is returned for the first
  /// error encountered.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Resource name for the ServicePerimeter. The
  /// `short_name` component must begin with a letter and only include
  /// alphanumeric and '_'. Format:
  /// `accessPolicies/{access_policy}/servicePerimeters/{service_perimeter}`
  /// Value must have pattern
  /// `^accessPolicies/\[^/\]+/servicePerimeters/\[^/\]+$`.
  ///
  /// [updateMask] - Required. Mask to control which fields get updated. Must be
  /// non-empty.
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
    ServicePerimeter request,
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
    return Operation.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Replace all existing service perimeters in an access policy with the
  /// service perimeters provided.
  ///
  /// This is done atomically. The long-running operation from this RPC has a
  /// successful status after all replacements propagate to long-lasting
  /// storage. Replacements containing errors result in an error response for
  /// the first error encountered. Upon an error, replacement are cancelled and
  /// existing service perimeters are not affected. The Operation.response field
  /// contains ReplaceServicePerimetersResponse.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Resource name for the access policy which owns these
  /// Service Perimeters. Format: `accessPolicies/{policy_id}`
  /// Value must have pattern `^accessPolicies/\[^/\]+$`.
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
  async.Future<Operation> replaceAll(
    ReplaceServicePerimetersRequest request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' +
        core.Uri.encodeFull('$parent') +
        '/servicePerimeters:replaceAll';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return Operation.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Returns the IAM permissions that the caller has on the specified Access
  /// Context Manager resource.
  ///
  /// The resource can be an AccessPolicy, AccessLevel, or ServicePerimeter.
  /// This method does not support other resources.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [resource] - REQUIRED: The resource for which the policy detail is being
  /// requested. See the operation documentation for the appropriate value for
  /// this field.
  /// Value must have pattern
  /// `^accessPolicies/\[^/\]+/servicePerimeters/\[^/\]+$`.
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
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url =
        'v1/' + core.Uri.encodeFull('$resource') + ':testIamPermissions';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return TestIamPermissionsResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class OperationsResource {
  final commons.ApiRequester _requester;

  OperationsResource(commons.ApiRequester client) : _requester = client;

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
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - The name of the operation resource to be cancelled.
  /// Value must have pattern `^operations/.*$`.
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
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$name') + ':cancel';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return Empty.fromJson(_response as core.Map<core.String, core.dynamic>);
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
  /// Value must have pattern `^operations/.*$`.
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

  /// Gets the latest state of a long-running operation.
  ///
  /// Clients can use this method to poll the operation result at intervals as
  /// recommended by the API service.
  ///
  /// Request parameters:
  ///
  /// [name] - The name of the operation resource.
  /// Value must have pattern `^operations/.*$`.
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
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return Operation.fromJson(_response as core.Map<core.String, core.dynamic>);
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
  /// Value must have pattern `^operations$`.
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
    final _queryParams = <core.String, core.List<core.String>>{
      if (filter != null) 'filter': [filter],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return ListOperationsResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class OrganizationsResource {
  final commons.ApiRequester _requester;

  OrganizationsGcpUserAccessBindingsResource get gcpUserAccessBindings =>
      OrganizationsGcpUserAccessBindingsResource(_requester);

  OrganizationsResource(commons.ApiRequester client) : _requester = client;
}

class OrganizationsGcpUserAccessBindingsResource {
  final commons.ApiRequester _requester;

  OrganizationsGcpUserAccessBindingsResource(commons.ApiRequester client)
      : _requester = client;

  /// Creates a GcpUserAccessBinding.
  ///
  /// If the client specifies a name, the server ignores it. Fails if a resource
  /// already exists with the same group_key. Completion of this long-running
  /// operation does not necessarily signify that the new binding is deployed
  /// onto all affected users, which may take more time.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Example: "organizations/256"
  /// Value must have pattern `^organizations/\[^/\]+$`.
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
    GcpUserAccessBinding request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url =
        'v1/' + core.Uri.encodeFull('$parent') + '/gcpUserAccessBindings';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return Operation.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Deletes a GcpUserAccessBinding.
  ///
  /// Completion of this long-running operation does not necessarily signify
  /// that the binding deletion is deployed onto all affected users, which may
  /// take more time.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Example:
  /// "organizations/256/gcpUserAccessBindings/b3-BhcX_Ud5N"
  /// Value must have pattern
  /// `^organizations/\[^/\]+/gcpUserAccessBindings/\[^/\]+$`.
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
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'DELETE',
      queryParams: _queryParams,
    );
    return Operation.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Gets the GcpUserAccessBinding with the given name.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Example:
  /// "organizations/256/gcpUserAccessBindings/b3-BhcX_Ud5N"
  /// Value must have pattern
  /// `^organizations/\[^/\]+/gcpUserAccessBindings/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GcpUserAccessBinding].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GcpUserAccessBinding> get(
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
    return GcpUserAccessBinding.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Lists all GcpUserAccessBindings for a Google Cloud organization.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Example: "organizations/256"
  /// Value must have pattern `^organizations/\[^/\]+$`.
  ///
  /// [pageSize] - Optional. Maximum number of items to return. The server may
  /// return fewer items. If left blank, the server may return any number of
  /// items.
  ///
  /// [pageToken] - Optional. If left blank, returns the first page. To
  /// enumerate all items, use the next_page_token from your previous list
  /// operation.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListGcpUserAccessBindingsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListGcpUserAccessBindingsResponse> list(
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
        'v1/' + core.Uri.encodeFull('$parent') + '/gcpUserAccessBindings';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return ListGcpUserAccessBindingsResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Updates a GcpUserAccessBinding.
  ///
  /// Completion of this long-running operation does not necessarily signify
  /// that the changed binding is deployed onto all affected users, which may
  /// take more time.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Immutable. Assigned by the server during creation. The last
  /// segment has an arbitrary length and has only URI unreserved characters (as
  /// defined by
  /// [RFC 3986 Section 2.3](https://tools.ietf.org/html/rfc3986#section-2.3)).
  /// Should not be specified by the client during creation. Example:
  /// "organizations/256/gcpUserAccessBindings/b3-BhcX_Ud5N"
  /// Value must have pattern
  /// `^organizations/\[^/\]+/gcpUserAccessBindings/\[^/\]+$`.
  ///
  /// [updateMask] - Required. Only the fields specified in this mask are
  /// updated. Because name and group_key cannot be changed, update_mask is
  /// required and must always be: update_mask { paths: "access_levels" }
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
    GcpUserAccessBinding request,
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
    return Operation.fromJson(_response as core.Map<core.String, core.dynamic>);
  }
}

/// An `AccessLevel` is a label that can be applied to requests to Google Cloud
/// services, along with a list of requirements necessary for the label to be
/// applied.
class AccessLevel {
  /// A `BasicLevel` composed of `Conditions`.
  BasicLevel? basic;

  /// A `CustomLevel` written in the Common Expression Language.
  CustomLevel? custom;

  /// Description of the `AccessLevel` and its use.
  ///
  /// Does not affect behavior.
  core.String? description;

  /// Resource name for the Access Level.
  ///
  /// The `short_name` component must begin with a letter and only include
  /// alphanumeric and '_'. Format:
  /// `accessPolicies/{access_policy}/accessLevels/{access_level}`. The maximum
  /// length of the `access_level` component is 50 characters.
  ///
  /// Required.
  core.String? name;

  /// Human readable title.
  ///
  /// Must be unique within the Policy.
  core.String? title;

  AccessLevel({
    this.basic,
    this.custom,
    this.description,
    this.name,
    this.title,
  });

  AccessLevel.fromJson(core.Map _json)
      : this(
          basic: _json.containsKey('basic')
              ? BasicLevel.fromJson(
                  _json['basic'] as core.Map<core.String, core.dynamic>)
              : null,
          custom: _json.containsKey('custom')
              ? CustomLevel.fromJson(
                  _json['custom'] as core.Map<core.String, core.dynamic>)
              : null,
          description: _json.containsKey('description')
              ? _json['description'] as core.String
              : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          title:
              _json.containsKey('title') ? _json['title'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (basic != null) 'basic': basic!,
        if (custom != null) 'custom': custom!,
        if (description != null) 'description': description!,
        if (name != null) 'name': name!,
        if (title != null) 'title': title!,
      };
}

/// `AccessPolicy` is a container for `AccessLevels` (which define the necessary
/// attributes to use Google Cloud services) and `ServicePerimeters` (which
/// define regions of services able to freely pass data within a perimeter).
///
/// An access policy is globally visible within an organization, and the
/// restrictions it specifies apply to all projects within an organization.
typedef AccessPolicy = $AccessPolicy;

/// Identification for an API Operation.
class ApiOperation {
  /// API methods or permissions to allow.
  ///
  /// Method or permission must belong to the service specified by
  /// `service_name` field. A single MethodSelector entry with `*` specified for
  /// the `method` field will allow all methods AND permissions for the service
  /// specified in `service_name`.
  core.List<MethodSelector>? methodSelectors;

  /// The name of the API whose methods or permissions the IngressPolicy or
  /// EgressPolicy want to allow.
  ///
  /// A single ApiOperation with `service_name` field set to `*` will allow all
  /// methods AND permissions for all services.
  core.String? serviceName;

  ApiOperation({
    this.methodSelectors,
    this.serviceName,
  });

  ApiOperation.fromJson(core.Map _json)
      : this(
          methodSelectors: _json.containsKey('methodSelectors')
              ? (_json['methodSelectors'] as core.List)
                  .map((value) => MethodSelector.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          serviceName: _json.containsKey('serviceName')
              ? _json['serviceName'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (methodSelectors != null) 'methodSelectors': methodSelectors!,
        if (serviceName != null) 'serviceName': serviceName!,
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
/// logging. It also exempts jose@example.com from DATA_READ logging, and
/// aliya@example.com from DATA_WRITE logging.
class AuditConfig {
  /// The configuration for logging of each type of permission.
  core.List<AuditLogConfig>? auditLogConfigs;

  /// Specifies a service that will be enabled for audit logging.
  ///
  /// For example, `storage.googleapis.com`, `cloudsql.googleapis.com`.
  /// `allServices` is a special value that covers all services.
  core.String? service;

  AuditConfig({
    this.auditLogConfigs,
    this.service,
  });

  AuditConfig.fromJson(core.Map _json)
      : this(
          auditLogConfigs: _json.containsKey('auditLogConfigs')
              ? (_json['auditLogConfigs'] as core.List)
                  .map((value) => AuditLogConfig.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          service: _json.containsKey('service')
              ? _json['service'] as core.String
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

/// `BasicLevel` is an `AccessLevel` using a set of recommended features.
class BasicLevel {
  /// How the `conditions` list should be combined to determine if a request is
  /// granted this `AccessLevel`.
  ///
  /// If AND is used, each `Condition` in `conditions` must be satisfied for the
  /// `AccessLevel` to be applied. If OR is used, at least one `Condition` in
  /// `conditions` must be satisfied for the `AccessLevel` to be applied.
  /// Default behavior is AND.
  /// Possible string values are:
  /// - "AND" : All `Conditions` must be true for the `BasicLevel` to be true.
  /// - "OR" : If at least one `Condition` is true, then the `BasicLevel` is
  /// true.
  core.String? combiningFunction;

  /// A list of requirements for the `AccessLevel` to be granted.
  ///
  /// Required.
  core.List<Condition>? conditions;

  BasicLevel({
    this.combiningFunction,
    this.conditions,
  });

  BasicLevel.fromJson(core.Map _json)
      : this(
          combiningFunction: _json.containsKey('combiningFunction')
              ? _json['combiningFunction'] as core.String
              : null,
          conditions: _json.containsKey('conditions')
              ? (_json['conditions'] as core.List)
                  .map((value) => Condition.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (combiningFunction != null) 'combiningFunction': combiningFunction!,
        if (conditions != null) 'conditions': conditions!,
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

  /// Specifies the principals requesting access for a Cloud Platform resource.
  ///
  /// `members` can have the following values: * `allUsers`: A special
  /// identifier that represents anyone who is on the internet; with or without
  /// a Google account. * `allAuthenticatedUsers`: A special identifier that
  /// represents anyone who is authenticated with a Google account or a service
  /// account. * `user:{emailid}`: An email address that represents a specific
  /// Google account. For example, `alice@example.com` . *
  /// `serviceAccount:{emailid}`: An email address that represents a service
  /// account. For example, `my-other-app@appspot.gserviceaccount.com`. *
  /// `group:{emailid}`: An email address that represents a Google group. For
  /// example, `admins@example.com`. * `deleted:user:{emailid}?uid={uniqueid}`:
  /// An email address (plus unique identifier) representing a user that has
  /// been recently deleted. For example,
  /// `alice@example.com?uid=123456789012345678901`. If the user is recovered,
  /// this value reverts to `user:{emailid}` and the recovered user retains the
  /// role in the binding. * `deleted:serviceAccount:{emailid}?uid={uniqueid}`:
  /// An email address (plus unique identifier) representing a service account
  /// that has been recently deleted. For example,
  /// `my-other-app@appspot.gserviceaccount.com?uid=123456789012345678901`. If
  /// the service account is undeleted, this value reverts to
  /// `serviceAccount:{emailid}` and the undeleted service account retains the
  /// role in the binding. * `deleted:group:{emailid}?uid={uniqueid}`: An email
  /// address (plus unique identifier) representing a Google group that has been
  /// recently deleted. For example,
  /// `admins@example.com?uid=123456789012345678901`. If the group is recovered,
  /// this value reverts to `group:{emailid}` and the recovered group retains
  /// the role in the binding. * `domain:{domain}`: The G Suite domain (primary)
  /// that represents all the users of that domain. For example, `google.com` or
  /// `example.com`.
  core.List<core.String>? members;

  /// Role that is assigned to the list of `members`, or principals.
  ///
  /// For example, `roles/viewer`, `roles/editor`, or `roles/owner`.
  core.String? role;

  Binding({
    this.condition,
    this.members,
    this.role,
  });

  Binding.fromJson(core.Map _json)
      : this(
          condition: _json.containsKey('condition')
              ? Expr.fromJson(
                  _json['condition'] as core.Map<core.String, core.dynamic>)
              : null,
          members: _json.containsKey('members')
              ? (_json['members'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          role: _json.containsKey('role') ? _json['role'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (condition != null) 'condition': condition!,
        if (members != null) 'members': members!,
        if (role != null) 'role': role!,
      };
}

/// The request message for Operations.CancelOperation.
typedef CancelOperationRequest = $Empty;

/// A request to commit dry-run specs in all Service Perimeters belonging to an
/// Access Policy.
class CommitServicePerimetersRequest {
  /// The etag for the version of the Access Policy that this commit operation
  /// is to be performed on.
  ///
  /// If, at the time of commit, the etag for the Access Policy stored in Access
  /// Context Manager is different from the specified etag, then the commit
  /// operation will not be performed and the call will fail. This field is not
  /// required. If etag is not provided, the operation will be performed as if a
  /// valid etag is provided.
  ///
  /// Optional.
  core.String? etag;

  CommitServicePerimetersRequest({
    this.etag,
  });

  CommitServicePerimetersRequest.fromJson(core.Map _json)
      : this(
          etag: _json.containsKey('etag') ? _json['etag'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (etag != null) 'etag': etag!,
      };
}

/// A condition necessary for an `AccessLevel` to be granted.
///
/// The Condition is an AND over its fields. So a Condition is true if: 1) the
/// request IP is from one of the listed subnetworks AND 2) the originating
/// device complies with the listed device policy AND 3) all listed access
/// levels are granted AND 4) the request was sent at a time allowed by the
/// DateTimeRestriction.
class Condition {
  /// Device specific restrictions, all restrictions must hold for the Condition
  /// to be true.
  ///
  /// If not specified, all devices are allowed.
  DevicePolicy? devicePolicy;

  /// CIDR block IP subnetwork specification.
  ///
  /// May be IPv4 or IPv6. Note that for a CIDR IP address block, the specified
  /// IP address portion must be properly truncated (i.e. all the host bits must
  /// be zero) or the input is considered malformed. For example, "192.0.2.0/24"
  /// is accepted but "192.0.2.1/24" is not. Similarly, for IPv6,
  /// "2001:db8::/32" is accepted whereas "2001:db8::1/32" is not. The
  /// originating IP of a request must be in one of the listed subnets in order
  /// for this Condition to be true. If empty, all IP addresses are allowed.
  core.List<core.String>? ipSubnetworks;

  /// The request must be made by one of the provided user or service accounts.
  ///
  /// Groups are not supported. Syntax: `user:{emailid}`
  /// `serviceAccount:{emailid}` If not specified, a request may come from any
  /// user.
  core.List<core.String>? members;

  /// Whether to negate the Condition.
  ///
  /// If true, the Condition becomes a NAND over its non-empty fields, each
  /// field must be false for the Condition overall to be satisfied. Defaults to
  /// false.
  core.bool? negate;

  /// The request must originate from one of the provided countries/regions.
  ///
  /// Must be valid ISO 3166-1 alpha-2 codes.
  core.List<core.String>? regions;

  /// A list of other access levels defined in the same `Policy`, referenced by
  /// resource name.
  ///
  /// Referencing an `AccessLevel` which does not exist is an error. All access
  /// levels listed must be granted for the Condition to be true. Example:
  /// "`accessPolicies/MY_POLICY/accessLevels/LEVEL_NAME"`
  core.List<core.String>? requiredAccessLevels;

  Condition({
    this.devicePolicy,
    this.ipSubnetworks,
    this.members,
    this.negate,
    this.regions,
    this.requiredAccessLevels,
  });

  Condition.fromJson(core.Map _json)
      : this(
          devicePolicy: _json.containsKey('devicePolicy')
              ? DevicePolicy.fromJson(
                  _json['devicePolicy'] as core.Map<core.String, core.dynamic>)
              : null,
          ipSubnetworks: _json.containsKey('ipSubnetworks')
              ? (_json['ipSubnetworks'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          members: _json.containsKey('members')
              ? (_json['members'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          negate:
              _json.containsKey('negate') ? _json['negate'] as core.bool : null,
          regions: _json.containsKey('regions')
              ? (_json['regions'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          requiredAccessLevels: _json.containsKey('requiredAccessLevels')
              ? (_json['requiredAccessLevels'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (devicePolicy != null) 'devicePolicy': devicePolicy!,
        if (ipSubnetworks != null) 'ipSubnetworks': ipSubnetworks!,
        if (members != null) 'members': members!,
        if (negate != null) 'negate': negate!,
        if (regions != null) 'regions': regions!,
        if (requiredAccessLevels != null)
          'requiredAccessLevels': requiredAccessLevels!,
      };
}

/// `CustomLevel` is an `AccessLevel` using the Cloud Common Expression Language
/// to represent the necessary conditions for the level to apply to a request.
///
/// See CEL spec at: https://github.com/google/cel-spec
class CustomLevel {
  /// A Cloud CEL expression evaluating to a boolean.
  ///
  /// Required.
  Expr? expr;

  CustomLevel({
    this.expr,
  });

  CustomLevel.fromJson(core.Map _json)
      : this(
          expr: _json.containsKey('expr')
              ? Expr.fromJson(
                  _json['expr'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (expr != null) 'expr': expr!,
      };
}

/// `DevicePolicy` specifies device specific restrictions necessary to acquire a
/// given access level.
///
/// A `DevicePolicy` specifies requirements for requests from devices to be
/// granted access levels, it does not do any enforcement on the device.
/// `DevicePolicy` acts as an AND over all specified fields, and each repeated
/// field is an OR over its elements. Any unset fields are ignored. For example,
/// if the proto is { os_type : DESKTOP_WINDOWS, os_type : DESKTOP_LINUX,
/// encryption_status: ENCRYPTED}, then the DevicePolicy will be true for
/// requests originating from encrypted Linux desktops and encrypted Windows
/// desktops.
class DevicePolicy {
  /// Allowed device management levels, an empty list allows all management
  /// levels.
  core.List<core.String>? allowedDeviceManagementLevels;

  /// Allowed encryptions statuses, an empty list allows all statuses.
  core.List<core.String>? allowedEncryptionStatuses;

  /// Allowed OS versions, an empty list allows all types and all versions.
  core.List<OsConstraint>? osConstraints;

  /// Whether the device needs to be approved by the customer admin.
  core.bool? requireAdminApproval;

  /// Whether the device needs to be corp owned.
  core.bool? requireCorpOwned;

  /// Whether or not screenlock is required for the DevicePolicy to be true.
  ///
  /// Defaults to `false`.
  core.bool? requireScreenlock;

  DevicePolicy({
    this.allowedDeviceManagementLevels,
    this.allowedEncryptionStatuses,
    this.osConstraints,
    this.requireAdminApproval,
    this.requireCorpOwned,
    this.requireScreenlock,
  });

  DevicePolicy.fromJson(core.Map _json)
      : this(
          allowedDeviceManagementLevels:
              _json.containsKey('allowedDeviceManagementLevels')
                  ? (_json['allowedDeviceManagementLevels'] as core.List)
                      .map((value) => value as core.String)
                      .toList()
                  : null,
          allowedEncryptionStatuses:
              _json.containsKey('allowedEncryptionStatuses')
                  ? (_json['allowedEncryptionStatuses'] as core.List)
                      .map((value) => value as core.String)
                      .toList()
                  : null,
          osConstraints: _json.containsKey('osConstraints')
              ? (_json['osConstraints'] as core.List)
                  .map((value) => OsConstraint.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          requireAdminApproval: _json.containsKey('requireAdminApproval')
              ? _json['requireAdminApproval'] as core.bool
              : null,
          requireCorpOwned: _json.containsKey('requireCorpOwned')
              ? _json['requireCorpOwned'] as core.bool
              : null,
          requireScreenlock: _json.containsKey('requireScreenlock')
              ? _json['requireScreenlock'] as core.bool
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (allowedDeviceManagementLevels != null)
          'allowedDeviceManagementLevels': allowedDeviceManagementLevels!,
        if (allowedEncryptionStatuses != null)
          'allowedEncryptionStatuses': allowedEncryptionStatuses!,
        if (osConstraints != null) 'osConstraints': osConstraints!,
        if (requireAdminApproval != null)
          'requireAdminApproval': requireAdminApproval!,
        if (requireCorpOwned != null) 'requireCorpOwned': requireCorpOwned!,
        if (requireScreenlock != null) 'requireScreenlock': requireScreenlock!,
      };
}

/// Defines the conditions under which an EgressPolicy matches a request.
///
/// Conditions based on information about the source of the request. Note that
/// if the destination of the request is also protected by a ServicePerimeter,
/// then that ServicePerimeter must have an IngressPolicy which allows access in
/// order for this request to succeed.
typedef EgressFrom = $EgressFrom;

/// Policy for egress from perimeter.
///
/// EgressPolicies match requests based on `egress_from` and `egress_to`
/// stanzas. For an EgressPolicy to match, both `egress_from` and `egress_to`
/// stanzas must be matched. If an EgressPolicy matches a request, the request
/// is allowed to span the ServicePerimeter boundary. For example, an
/// EgressPolicy can be used to allow VMs on networks within the
/// ServicePerimeter to access a defined set of projects outside the perimeter
/// in certain contexts (e.g. to read data from a Cloud Storage bucket or query
/// against a BigQuery dataset). EgressPolicies are concerned with the
/// *resources* that a request relates as well as the API services and API
/// actions being used. They do not related to the direction of data movement.
/// More detailed documentation for this concept can be found in the
/// descriptions of EgressFrom and EgressTo.
class EgressPolicy {
  /// Defines conditions on the source of a request causing this EgressPolicy to
  /// apply.
  EgressFrom? egressFrom;

  /// Defines the conditions on the ApiOperation and destination resources that
  /// cause this EgressPolicy to apply.
  EgressTo? egressTo;

  EgressPolicy({
    this.egressFrom,
    this.egressTo,
  });

  EgressPolicy.fromJson(core.Map _json)
      : this(
          egressFrom: _json.containsKey('egressFrom')
              ? EgressFrom.fromJson(
                  _json['egressFrom'] as core.Map<core.String, core.dynamic>)
              : null,
          egressTo: _json.containsKey('egressTo')
              ? EgressTo.fromJson(
                  _json['egressTo'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (egressFrom != null) 'egressFrom': egressFrom!,
        if (egressTo != null) 'egressTo': egressTo!,
      };
}

/// Defines the conditions under which an EgressPolicy matches a request.
///
/// Conditions are based on information about the ApiOperation intended to be
/// performed on the `resources` specified. Note that if the destination of the
/// request is also protected by a ServicePerimeter, then that ServicePerimeter
/// must have an IngressPolicy which allows access in order for this request to
/// succeed. The request must match `operations` AND `resources` fields in order
/// to be allowed egress out of the perimeter.
class EgressTo {
  /// A list of ApiOperations allowed to be performed by the sources specified
  /// in the corresponding EgressFrom.
  ///
  /// A request matches if it uses an operation/service in this list.
  core.List<ApiOperation>? operations;

  /// A list of resources, currently only projects in the form `projects/`, that
  /// are allowed to be accessed by sources defined in the corresponding
  /// EgressFrom.
  ///
  /// A request matches if it contains a resource in this list. If `*` is
  /// specified for `resources`, then this EgressTo rule will authorize access
  /// to all resources outside the perimeter.
  core.List<core.String>? resources;

  EgressTo({
    this.operations,
    this.resources,
  });

  EgressTo.fromJson(core.Map _json)
      : this(
          operations: _json.containsKey('operations')
              ? (_json['operations'] as core.List)
                  .map((value) => ApiOperation.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          resources: _json.containsKey('resources')
              ? (_json['resources'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (operations != null) 'operations': operations!,
        if (resources != null) 'resources': resources!,
      };
}

/// A generic empty message that you can re-use to avoid defining duplicated
/// empty messages in your APIs.
///
/// A typical example is to use it as the request or the response type of an API
/// method. For instance: service Foo { rpc Bar(google.protobuf.Empty) returns
/// (google.protobuf.Empty); } The JSON representation for `Empty` is empty JSON
/// object `{}`.
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

/// Restricts access to Cloud Console and Google Cloud APIs for a set of users
/// using Context-Aware Access.
class GcpUserAccessBinding {
  /// Access level that a user must have to be granted access.
  ///
  /// Only one access level is supported, not multiple. This repeated field must
  /// have exactly one element. Example:
  /// "accessPolicies/9522/accessLevels/device_trusted"
  ///
  /// Required.
  core.List<core.String>? accessLevels;

  /// Google Group id whose members are subject to this binding's restrictions.
  ///
  /// See "id" in the
  /// [G Suite Directory API's Groups resource](https://developers.google.com/admin-sdk/directory/v1/reference/groups#resource).
  /// If a group's email address/alias is changed, this resource will continue
  /// to point at the changed group. This field does not accept group email
  /// addresses or aliases. Example: "01d520gv4vjcrht"
  ///
  /// Required. Immutable.
  core.String? groupKey;

  /// Assigned by the server during creation.
  ///
  /// The last segment has an arbitrary length and has only URI unreserved
  /// characters (as defined by
  /// [RFC 3986 Section 2.3](https://tools.ietf.org/html/rfc3986#section-2.3)).
  /// Should not be specified by the client during creation. Example:
  /// "organizations/256/gcpUserAccessBindings/b3-BhcX_Ud5N"
  ///
  /// Immutable.
  core.String? name;

  GcpUserAccessBinding({
    this.accessLevels,
    this.groupKey,
    this.name,
  });

  GcpUserAccessBinding.fromJson(core.Map _json)
      : this(
          accessLevels: _json.containsKey('accessLevels')
              ? (_json['accessLevels'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          groupKey: _json.containsKey('groupKey')
              ? _json['groupKey'] as core.String
              : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (accessLevels != null) 'accessLevels': accessLevels!,
        if (groupKey != null) 'groupKey': groupKey!,
        if (name != null) 'name': name!,
      };
}

/// Request message for `GetIamPolicy` method.
class GetIamPolicyRequest {
  /// OPTIONAL: A `GetPolicyOptions` object for specifying options to
  /// `GetIamPolicy`.
  GetPolicyOptions? options;

  GetIamPolicyRequest({
    this.options,
  });

  GetIamPolicyRequest.fromJson(core.Map _json)
      : this(
          options: _json.containsKey('options')
              ? GetPolicyOptions.fromJson(
                  _json['options'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (options != null) 'options': options!,
      };
}

/// Encapsulates settings provided to GetIamPolicy.
typedef GetPolicyOptions = $GetPolicyOptions;

/// Defines the conditions under which an IngressPolicy matches a request.
///
/// Conditions are based on information about the source of the request. The
/// request must satisfy what is defined in `sources` AND identity related
/// fields in order to match.
class IngressFrom {
  /// A list of identities that are allowed access through this ingress policy.
  ///
  /// Should be in the format of email address. The email address should
  /// represent individual user or service account only.
  core.List<core.String>? identities;

  /// Specifies the type of identities that are allowed access from outside the
  /// perimeter.
  ///
  /// If left unspecified, then members of `identities` field will be allowed
  /// access.
  /// Possible string values are:
  /// - "IDENTITY_TYPE_UNSPECIFIED" : No blanket identity group specified.
  /// - "ANY_IDENTITY" : Authorize access from all identities outside the
  /// perimeter.
  /// - "ANY_USER_ACCOUNT" : Authorize access from all human users outside the
  /// perimeter.
  /// - "ANY_SERVICE_ACCOUNT" : Authorize access from all service accounts
  /// outside the perimeter.
  core.String? identityType;

  /// Sources that this IngressPolicy authorizes access from.
  core.List<IngressSource>? sources;

  IngressFrom({
    this.identities,
    this.identityType,
    this.sources,
  });

  IngressFrom.fromJson(core.Map _json)
      : this(
          identities: _json.containsKey('identities')
              ? (_json['identities'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          identityType: _json.containsKey('identityType')
              ? _json['identityType'] as core.String
              : null,
          sources: _json.containsKey('sources')
              ? (_json['sources'] as core.List)
                  .map((value) => IngressSource.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (identities != null) 'identities': identities!,
        if (identityType != null) 'identityType': identityType!,
        if (sources != null) 'sources': sources!,
      };
}

/// Policy for ingress into ServicePerimeter.
///
/// IngressPolicies match requests based on `ingress_from` and `ingress_to`
/// stanzas. For an ingress policy to match, both the `ingress_from` and
/// `ingress_to` stanzas must be matched. If an IngressPolicy matches a request,
/// the request is allowed through the perimeter boundary from outside the
/// perimeter. For example, access from the internet can be allowed either based
/// on an AccessLevel or, for traffic hosted on Google Cloud, the project of the
/// source network. For access from private networks, using the project of the
/// hosting network is required. Individual ingress policies can be limited by
/// restricting which services and/or actions they match using the `ingress_to`
/// field.
class IngressPolicy {
  /// Defines the conditions on the source of a request causing this
  /// IngressPolicy to apply.
  IngressFrom? ingressFrom;

  /// Defines the conditions on the ApiOperation and request destination that
  /// cause this IngressPolicy to apply.
  IngressTo? ingressTo;

  IngressPolicy({
    this.ingressFrom,
    this.ingressTo,
  });

  IngressPolicy.fromJson(core.Map _json)
      : this(
          ingressFrom: _json.containsKey('ingressFrom')
              ? IngressFrom.fromJson(
                  _json['ingressFrom'] as core.Map<core.String, core.dynamic>)
              : null,
          ingressTo: _json.containsKey('ingressTo')
              ? IngressTo.fromJson(
                  _json['ingressTo'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (ingressFrom != null) 'ingressFrom': ingressFrom!,
        if (ingressTo != null) 'ingressTo': ingressTo!,
      };
}

/// The source that IngressPolicy authorizes access from.
typedef IngressSource = $IngressSource;

/// Defines the conditions under which an IngressPolicy matches a request.
///
/// Conditions are based on information about the ApiOperation intended to be
/// performed on the target resource of the request. The request must satisfy
/// what is defined in `operations` AND `resources` in order to match.
class IngressTo {
  /// A list of ApiOperations allowed to be performed by the sources specified
  /// in corresponding IngressFrom in this ServicePerimeter.
  core.List<ApiOperation>? operations;

  /// A list of resources, currently only projects in the form `projects/`,
  /// protected by this ServicePerimeter that are allowed to be accessed by
  /// sources defined in the corresponding IngressFrom.
  ///
  /// If a single `*` is specified, then access to all resources inside the
  /// perimeter are allowed.
  core.List<core.String>? resources;

  IngressTo({
    this.operations,
    this.resources,
  });

  IngressTo.fromJson(core.Map _json)
      : this(
          operations: _json.containsKey('operations')
              ? (_json['operations'] as core.List)
                  .map((value) => ApiOperation.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          resources: _json.containsKey('resources')
              ? (_json['resources'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (operations != null) 'operations': operations!,
        if (resources != null) 'resources': resources!,
      };
}

/// A response to `ListAccessLevelsRequest`.
class ListAccessLevelsResponse {
  /// List of the Access Level instances.
  core.List<AccessLevel>? accessLevels;

  /// The pagination token to retrieve the next page of results.
  ///
  /// If the value is empty, no further results remain.
  core.String? nextPageToken;

  ListAccessLevelsResponse({
    this.accessLevels,
    this.nextPageToken,
  });

  ListAccessLevelsResponse.fromJson(core.Map _json)
      : this(
          accessLevels: _json.containsKey('accessLevels')
              ? (_json['accessLevels'] as core.List)
                  .map((value) => AccessLevel.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          nextPageToken: _json.containsKey('nextPageToken')
              ? _json['nextPageToken'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (accessLevels != null) 'accessLevels': accessLevels!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
      };
}

/// A response to `ListAccessPoliciesRequest`.
class ListAccessPoliciesResponse {
  /// List of the AccessPolicy instances.
  core.List<AccessPolicy>? accessPolicies;

  /// The pagination token to retrieve the next page of results.
  ///
  /// If the value is empty, no further results remain.
  core.String? nextPageToken;

  ListAccessPoliciesResponse({
    this.accessPolicies,
    this.nextPageToken,
  });

  ListAccessPoliciesResponse.fromJson(core.Map _json)
      : this(
          accessPolicies: _json.containsKey('accessPolicies')
              ? (_json['accessPolicies'] as core.List)
                  .map((value) => AccessPolicy.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          nextPageToken: _json.containsKey('nextPageToken')
              ? _json['nextPageToken'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (accessPolicies != null) 'accessPolicies': accessPolicies!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
      };
}

/// Response of ListGcpUserAccessBindings.
class ListGcpUserAccessBindingsResponse {
  /// GcpUserAccessBinding
  core.List<GcpUserAccessBinding>? gcpUserAccessBindings;

  /// Token to get the next page of items.
  ///
  /// If blank, there are no more items.
  core.String? nextPageToken;

  ListGcpUserAccessBindingsResponse({
    this.gcpUserAccessBindings,
    this.nextPageToken,
  });

  ListGcpUserAccessBindingsResponse.fromJson(core.Map _json)
      : this(
          gcpUserAccessBindings: _json.containsKey('gcpUserAccessBindings')
              ? (_json['gcpUserAccessBindings'] as core.List)
                  .map((value) => GcpUserAccessBinding.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          nextPageToken: _json.containsKey('nextPageToken')
              ? _json['nextPageToken'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (gcpUserAccessBindings != null)
          'gcpUserAccessBindings': gcpUserAccessBindings!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
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

  ListOperationsResponse.fromJson(core.Map _json)
      : this(
          nextPageToken: _json.containsKey('nextPageToken')
              ? _json['nextPageToken'] as core.String
              : null,
          operations: _json.containsKey('operations')
              ? (_json['operations'] as core.List)
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

/// A response to `ListServicePerimetersRequest`.
class ListServicePerimetersResponse {
  /// The pagination token to retrieve the next page of results.
  ///
  /// If the value is empty, no further results remain.
  core.String? nextPageToken;

  /// List of the Service Perimeter instances.
  core.List<ServicePerimeter>? servicePerimeters;

  ListServicePerimetersResponse({
    this.nextPageToken,
    this.servicePerimeters,
  });

  ListServicePerimetersResponse.fromJson(core.Map _json)
      : this(
          nextPageToken: _json.containsKey('nextPageToken')
              ? _json['nextPageToken'] as core.String
              : null,
          servicePerimeters: _json.containsKey('servicePerimeters')
              ? (_json['servicePerimeters'] as core.List)
                  .map((value) => ServicePerimeter.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (servicePerimeters != null) 'servicePerimeters': servicePerimeters!,
      };
}

/// An allowed method or permission of a service specified in ApiOperation.
typedef MethodSelector = $MethodSelector;

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

  Operation({
    this.done,
    this.error,
    this.metadata,
    this.name,
    this.response,
  });

  Operation.fromJson(core.Map _json)
      : this(
          done: _json.containsKey('done') ? _json['done'] as core.bool : null,
          error: _json.containsKey('error')
              ? Status.fromJson(
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
        if (error != null) 'error': error!,
        if (metadata != null) 'metadata': metadata!,
        if (name != null) 'name': name!,
        if (response != null) 'response': response!,
      };
}

/// A restriction on the OS type and version of devices making requests.
typedef OsConstraint = $OsConstraint;

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
/// **JSON example:** { "bindings": \[ { "role":
/// "roles/resourcemanager.organizationAdmin", "members": \[
/// "user:mike@example.com", "group:admins@example.com", "domain:google.com",
/// "serviceAccount:my-project-id@appspot.gserviceaccount.com" \] }, { "role":
/// "roles/resourcemanager.organizationViewer", "members": \[
/// "user:eve@example.com" \], "condition": { "title": "expirable access",
/// "description": "Does not grant access after Sep 2020", "expression":
/// "request.time \< timestamp('2020-10-01T00:00:00.000Z')", } } \], "etag":
/// "BwWWja0YfJA=", "version": 3 } **YAML example:** bindings: - members: -
/// user:mike@example.com - group:admins@example.com - domain:google.com -
/// serviceAccount:my-project-id@appspot.gserviceaccount.com role:
/// roles/resourcemanager.organizationAdmin - members: - user:eve@example.com
/// role: roles/resourcemanager.organizationViewer condition: title: expirable
/// access description: Does not grant access after Sep 2020 expression:
/// request.time \< timestamp('2020-10-01T00:00:00.000Z') etag: BwWWja0YfJA=
/// version: 3 For a description of IAM and its features, see the
/// [IAM documentation](https://cloud.google.com/iam/docs/).
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

  set etagAsBytes(core.List<core.int> _bytes) {
    etag =
        convert.base64.encode(_bytes).replaceAll('/', '_').replaceAll('+', '-');
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

  Policy({
    this.auditConfigs,
    this.bindings,
    this.etag,
    this.version,
  });

  Policy.fromJson(core.Map _json)
      : this(
          auditConfigs: _json.containsKey('auditConfigs')
              ? (_json['auditConfigs'] as core.List)
                  .map((value) => AuditConfig.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          bindings: _json.containsKey('bindings')
              ? (_json['bindings'] as core.List)
                  .map((value) => Binding.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          etag: _json.containsKey('etag') ? _json['etag'] as core.String : null,
          version: _json.containsKey('version')
              ? _json['version'] as core.int
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (auditConfigs != null) 'auditConfigs': auditConfigs!,
        if (bindings != null) 'bindings': bindings!,
        if (etag != null) 'etag': etag!,
        if (version != null) 'version': version!,
      };
}

/// A request to replace all existing Access Levels in an Access Policy with the
/// Access Levels provided.
///
/// This is done atomically.
class ReplaceAccessLevelsRequest {
  /// The desired Access Levels that should replace all existing Access Levels
  /// in the Access Policy.
  ///
  /// Required.
  core.List<AccessLevel>? accessLevels;

  /// The etag for the version of the Access Policy that this replace operation
  /// is to be performed on.
  ///
  /// If, at the time of replace, the etag for the Access Policy stored in
  /// Access Context Manager is different from the specified etag, then the
  /// replace operation will not be performed and the call will fail. This field
  /// is not required. If etag is not provided, the operation will be performed
  /// as if a valid etag is provided.
  ///
  /// Optional.
  core.String? etag;

  ReplaceAccessLevelsRequest({
    this.accessLevels,
    this.etag,
  });

  ReplaceAccessLevelsRequest.fromJson(core.Map _json)
      : this(
          accessLevels: _json.containsKey('accessLevels')
              ? (_json['accessLevels'] as core.List)
                  .map((value) => AccessLevel.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          etag: _json.containsKey('etag') ? _json['etag'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (accessLevels != null) 'accessLevels': accessLevels!,
        if (etag != null) 'etag': etag!,
      };
}

/// A request to replace all existing Service Perimeters in an Access Policy
/// with the Service Perimeters provided.
///
/// This is done atomically.
class ReplaceServicePerimetersRequest {
  /// The etag for the version of the Access Policy that this replace operation
  /// is to be performed on.
  ///
  /// If, at the time of replace, the etag for the Access Policy stored in
  /// Access Context Manager is different from the specified etag, then the
  /// replace operation will not be performed and the call will fail. This field
  /// is not required. If etag is not provided, the operation will be performed
  /// as if a valid etag is provided.
  ///
  /// Optional.
  core.String? etag;

  /// The desired Service Perimeters that should replace all existing Service
  /// Perimeters in the Access Policy.
  ///
  /// Required.
  core.List<ServicePerimeter>? servicePerimeters;

  ReplaceServicePerimetersRequest({
    this.etag,
    this.servicePerimeters,
  });

  ReplaceServicePerimetersRequest.fromJson(core.Map _json)
      : this(
          etag: _json.containsKey('etag') ? _json['etag'] as core.String : null,
          servicePerimeters: _json.containsKey('servicePerimeters')
              ? (_json['servicePerimeters'] as core.List)
                  .map((value) => ServicePerimeter.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (etag != null) 'etag': etag!,
        if (servicePerimeters != null) 'servicePerimeters': servicePerimeters!,
      };
}

/// `ServicePerimeter` describes a set of Google Cloud resources which can
/// freely import and export data amongst themselves, but not export outside of
/// the `ServicePerimeter`.
///
/// If a request with a source within this `ServicePerimeter` has a target
/// outside of the `ServicePerimeter`, the request will be blocked. Otherwise
/// the request is allowed. There are two types of Service Perimeter - Regular
/// and Bridge. Regular Service Perimeters cannot overlap, a single Google Cloud
/// project can only belong to a single regular Service Perimeter. Service
/// Perimeter Bridges can contain only Google Cloud projects as members, a
/// single Google Cloud project may belong to multiple Service Perimeter
/// Bridges.
class ServicePerimeter {
  /// Description of the `ServicePerimeter` and its use.
  ///
  /// Does not affect behavior.
  core.String? description;

  /// Resource name for the ServicePerimeter.
  ///
  /// The `short_name` component must begin with a letter and only include
  /// alphanumeric and '_'. Format:
  /// `accessPolicies/{access_policy}/servicePerimeters/{service_perimeter}`
  ///
  /// Required.
  core.String? name;

  /// Perimeter type indicator.
  ///
  /// A single project is allowed to be a member of single regular perimeter,
  /// but multiple service perimeter bridges. A project cannot be a included in
  /// a perimeter bridge without being included in regular perimeter. For
  /// perimeter bridges, the restricted service list as well as access level
  /// lists must be empty.
  /// Possible string values are:
  /// - "PERIMETER_TYPE_REGULAR" : Regular Perimeter.
  /// - "PERIMETER_TYPE_BRIDGE" : Perimeter Bridge.
  core.String? perimeterType;

  /// Proposed (or dry run) ServicePerimeter configuration.
  ///
  /// This configuration allows to specify and test ServicePerimeter
  /// configuration without enforcing actual access restrictions. Only allowed
  /// to be set when the "use_explicit_dry_run_spec" flag is set.
  ServicePerimeterConfig? spec;

  /// Current ServicePerimeter configuration.
  ///
  /// Specifies sets of resources, restricted services and access levels that
  /// determine perimeter content and boundaries.
  ServicePerimeterConfig? status;

  /// Human readable title.
  ///
  /// Must be unique within the Policy.
  core.String? title;

  /// Use explicit dry run spec flag.
  ///
  /// Ordinarily, a dry-run spec implicitly exists for all Service Perimeters,
  /// and that spec is identical to the status for those Service Perimeters.
  /// When this flag is set, it inhibits the generation of the implicit spec,
  /// thereby allowing the user to explicitly provide a configuration ("spec")
  /// to use in a dry-run version of the Service Perimeter. This allows the user
  /// to test changes to the enforced config ("status") without actually
  /// enforcing them. This testing is done through analyzing the differences
  /// between currently enforced and suggested restrictions.
  /// use_explicit_dry_run_spec must bet set to True if any of the fields in the
  /// spec are set to non-default values.
  core.bool? useExplicitDryRunSpec;

  ServicePerimeter({
    this.description,
    this.name,
    this.perimeterType,
    this.spec,
    this.status,
    this.title,
    this.useExplicitDryRunSpec,
  });

  ServicePerimeter.fromJson(core.Map _json)
      : this(
          description: _json.containsKey('description')
              ? _json['description'] as core.String
              : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          perimeterType: _json.containsKey('perimeterType')
              ? _json['perimeterType'] as core.String
              : null,
          spec: _json.containsKey('spec')
              ? ServicePerimeterConfig.fromJson(
                  _json['spec'] as core.Map<core.String, core.dynamic>)
              : null,
          status: _json.containsKey('status')
              ? ServicePerimeterConfig.fromJson(
                  _json['status'] as core.Map<core.String, core.dynamic>)
              : null,
          title:
              _json.containsKey('title') ? _json['title'] as core.String : null,
          useExplicitDryRunSpec: _json.containsKey('useExplicitDryRunSpec')
              ? _json['useExplicitDryRunSpec'] as core.bool
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (description != null) 'description': description!,
        if (name != null) 'name': name!,
        if (perimeterType != null) 'perimeterType': perimeterType!,
        if (spec != null) 'spec': spec!,
        if (status != null) 'status': status!,
        if (title != null) 'title': title!,
        if (useExplicitDryRunSpec != null)
          'useExplicitDryRunSpec': useExplicitDryRunSpec!,
      };
}

/// `ServicePerimeterConfig` specifies a set of Google Cloud resources that
/// describe specific Service Perimeter configuration.
class ServicePerimeterConfig {
  /// A list of `AccessLevel` resource names that allow resources within the
  /// `ServicePerimeter` to be accessed from the internet.
  ///
  /// `AccessLevels` listed must be in the same policy as this
  /// `ServicePerimeter`. Referencing a nonexistent `AccessLevel` is a syntax
  /// error. If no `AccessLevel` names are listed, resources within the
  /// perimeter can only be accessed via Google Cloud calls with request origins
  /// within the perimeter. Example:
  /// `"accessPolicies/MY_POLICY/accessLevels/MY_LEVEL"`. For Service Perimeter
  /// Bridge, must be empty.
  core.List<core.String>? accessLevels;

  /// List of EgressPolicies to apply to the perimeter.
  ///
  /// A perimeter may have multiple EgressPolicies, each of which is evaluated
  /// separately. Access is granted if any EgressPolicy grants it. Must be empty
  /// for a perimeter bridge.
  core.List<EgressPolicy>? egressPolicies;

  /// List of IngressPolicies to apply to the perimeter.
  ///
  /// A perimeter may have multiple IngressPolicies, each of which is evaluated
  /// separately. Access is granted if any Ingress Policy grants it. Must be
  /// empty for a perimeter bridge.
  core.List<IngressPolicy>? ingressPolicies;

  /// A list of Google Cloud resources that are inside of the service perimeter.
  ///
  /// Currently only projects are allowed. Format: `projects/{project_number}`
  core.List<core.String>? resources;

  /// Google Cloud services that are subject to the Service Perimeter
  /// restrictions.
  ///
  /// For example, if `storage.googleapis.com` is specified, access to the
  /// storage buckets inside the perimeter must meet the perimeter's access
  /// restrictions.
  core.List<core.String>? restrictedServices;

  /// Configuration for APIs allowed within Perimeter.
  VpcAccessibleServices? vpcAccessibleServices;

  ServicePerimeterConfig({
    this.accessLevels,
    this.egressPolicies,
    this.ingressPolicies,
    this.resources,
    this.restrictedServices,
    this.vpcAccessibleServices,
  });

  ServicePerimeterConfig.fromJson(core.Map _json)
      : this(
          accessLevels: _json.containsKey('accessLevels')
              ? (_json['accessLevels'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          egressPolicies: _json.containsKey('egressPolicies')
              ? (_json['egressPolicies'] as core.List)
                  .map((value) => EgressPolicy.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          ingressPolicies: _json.containsKey('ingressPolicies')
              ? (_json['ingressPolicies'] as core.List)
                  .map((value) => IngressPolicy.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          resources: _json.containsKey('resources')
              ? (_json['resources'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          restrictedServices: _json.containsKey('restrictedServices')
              ? (_json['restrictedServices'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          vpcAccessibleServices: _json.containsKey('vpcAccessibleServices')
              ? VpcAccessibleServices.fromJson(_json['vpcAccessibleServices']
                  as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (accessLevels != null) 'accessLevels': accessLevels!,
        if (egressPolicies != null) 'egressPolicies': egressPolicies!,
        if (ingressPolicies != null) 'ingressPolicies': ingressPolicies!,
        if (resources != null) 'resources': resources!,
        if (restrictedServices != null)
          'restrictedServices': restrictedServices!,
        if (vpcAccessibleServices != null)
          'vpcAccessibleServices': vpcAccessibleServices!,
      };
}

/// Request message for `SetIamPolicy` method.
class SetIamPolicyRequest {
  /// REQUIRED: The complete policy to be applied to the `resource`.
  ///
  /// The size of the policy is limited to a few 10s of KB. An empty policy is a
  /// valid policy but certain Cloud Platform services (such as Projects) might
  /// reject them.
  Policy? policy;

  /// OPTIONAL: A FieldMask specifying which fields of the policy to modify.
  ///
  /// Only the fields in the mask will be modified. If no mask is provided, the
  /// following default mask is used: `paths: "bindings, etag"`
  core.String? updateMask;

  SetIamPolicyRequest({
    this.policy,
    this.updateMask,
  });

  SetIamPolicyRequest.fromJson(core.Map _json)
      : this(
          policy: _json.containsKey('policy')
              ? Policy.fromJson(
                  _json['policy'] as core.Map<core.String, core.dynamic>)
              : null,
          updateMask: _json.containsKey('updateMask')
              ? _json['updateMask'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (policy != null) 'policy': policy!,
        if (updateMask != null) 'updateMask': updateMask!,
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

/// Request message for `TestIamPermissions` method.
typedef TestIamPermissionsRequest = $TestIamPermissionsRequest00;

/// Response message for `TestIamPermissions` method.
typedef TestIamPermissionsResponse = $PermissionsResponse;

/// Specifies how APIs are allowed to communicate within the Service Perimeter.
typedef VpcAccessibleServices = $VpcAccessibleServices;
