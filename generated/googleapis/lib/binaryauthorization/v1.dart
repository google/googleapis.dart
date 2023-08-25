// This is a generated file (see the discoveryapis_generator project).

// ignore_for_file: camel_case_types
// ignore_for_file: comment_references
// ignore_for_file: deprecated_member_use_from_same_package
// ignore_for_file: lines_longer_than_80_chars
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: prefer_interpolation_to_compose_strings
// ignore_for_file: unnecessary_brace_in_string_interps
// ignore_for_file: unnecessary_lambdas
// ignore_for_file: unnecessary_library_directive
// ignore_for_file: unnecessary_string_interpolations

/// Binary Authorization API - v1
///
/// The management interface for Binary Authorization, a service that provides
/// policy-based deployment validation and control for images deployed to Google
/// Kubernetes Engine (GKE), Anthos Service Mesh, Anthos Clusters, and Cloud
/// Run.
///
/// For more information, see <https://cloud.google.com/binary-authorization/>
///
/// Create an instance of [BinaryAuthorizationApi] to access these resources:
///
/// - [ProjectsResource]
///   - [ProjectsAttestorsResource]
///   - [ProjectsPlatformsResource]
///     - [ProjectsPlatformsPoliciesResource]
///   - [ProjectsPolicyResource]
/// - [SystempolicyResource]
library binaryauthorization_v1;

import 'dart:async' as async;
import 'dart:convert' as convert;
import 'dart:core' as core;

import 'package:_discoveryapis_commons/_discoveryapis_commons.dart' as commons;
import 'package:http/http.dart' as http;

import '../shared.dart';
import '../src/user_agent.dart';

export 'package:_discoveryapis_commons/_discoveryapis_commons.dart'
    show ApiRequestError, DetailedApiRequestError;

/// The management interface for Binary Authorization, a service that provides
/// policy-based deployment validation and control for images deployed to Google
/// Kubernetes Engine (GKE), Anthos Service Mesh, Anthos Clusters, and Cloud
/// Run.
class BinaryAuthorizationApi {
  /// See, edit, configure, and delete your Google Cloud data and see the email
  /// address for your Google Account.
  static const cloudPlatformScope =
      'https://www.googleapis.com/auth/cloud-platform';

  final commons.ApiRequester _requester;

  ProjectsResource get projects => ProjectsResource(_requester);
  SystempolicyResource get systempolicy => SystempolicyResource(_requester);

  BinaryAuthorizationApi(http.Client client,
      {core.String rootUrl = 'https://binaryauthorization.googleapis.com/',
      core.String servicePath = ''})
      : _requester =
            commons.ApiRequester(client, rootUrl, servicePath, requestHeaders);
}

class ProjectsResource {
  final commons.ApiRequester _requester;

  ProjectsAttestorsResource get attestors =>
      ProjectsAttestorsResource(_requester);
  ProjectsPlatformsResource get platforms =>
      ProjectsPlatformsResource(_requester);
  ProjectsPolicyResource get policy => ProjectsPolicyResource(_requester);

  ProjectsResource(commons.ApiRequester client) : _requester = client;

  /// A policy specifies the attestors that must attest to a container image,
  /// before the project is allowed to deploy that image.
  ///
  /// There is at most one policy per project. All image admission requests are
  /// permitted if a project has no policy. Gets the policy for this project.
  /// Returns a default policy if the project does not have one.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name of the policy to retrieve, in the
  /// format `projects / * /policy`.
  /// Value must have pattern `^projects/\[^/\]+/policy$`.
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
  async.Future<Policy> getPolicy(
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
    return Policy.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Creates or updates a project's policy, and returns a copy of the new
  /// policy.
  ///
  /// A policy is always updated as a whole, to avoid race conditions with
  /// concurrent policy enforcement (or management!) requests. Returns
  /// `NOT_FOUND` if the project does not exist, `INVALID_ARGUMENT` if the
  /// request is malformed.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Output only. The resource name, in the format `projects / *
  /// /policy`. There is at most one policy per project.
  /// Value must have pattern `^projects/\[^/\]+/policy$`.
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
  async.Future<Policy> updatePolicy(
    Policy request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PUT',
      body: body_,
      queryParams: queryParams_,
    );
    return Policy.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsAttestorsResource {
  final commons.ApiRequester _requester;

  ProjectsAttestorsResource(commons.ApiRequester client) : _requester = client;

  /// Creates an attestor, and returns a copy of the new attestor.
  ///
  /// Returns `NOT_FOUND` if the project does not exist, `INVALID_ARGUMENT` if
  /// the request is malformed, `ALREADY_EXISTS` if the attestor already exists.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent of this attestor.
  /// Value must have pattern `^projects/\[^/\]+$`.
  ///
  /// [attestorId] - Required. The attestors ID.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Attestor].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Attestor> create(
    Attestor request,
    core.String parent, {
    core.String? attestorId,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (attestorId != null) 'attestorId': [attestorId],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/attestors';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Attestor.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Deletes an attestor.
  ///
  /// Returns `NOT_FOUND` if the attestor does not exist.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the attestors to delete, in the format
  /// `projects / * /attestors / * `.
  /// Value must have pattern `^projects/\[^/\]+/attestors/\[^/\]+$`.
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

  /// Gets an attestor.
  ///
  /// Returns `NOT_FOUND` if the attestor does not exist.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the attestor to retrieve, in the format
  /// `projects / * /attestors / * `.
  /// Value must have pattern `^projects/\[^/\]+/attestors/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Attestor].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Attestor> get(
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
    return Attestor.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Gets the access control policy for a resource.
  ///
  /// Returns an empty policy if the resource exists and does not have a policy
  /// set.
  ///
  /// Request parameters:
  ///
  /// [resource] - REQUIRED: The resource for which the policy is being
  /// requested. See
  /// [Resource names](https://cloud.google.com/apis/design/resource_names) for
  /// the appropriate value for this field.
  /// Value must have pattern `^projects/\[^/\]+/attestors/\[^/\]+$`.
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
  /// Completes with a [IamPolicy].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<IamPolicy> getIamPolicy(
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
    return IamPolicy.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists attestors.
  ///
  /// Returns `INVALID_ARGUMENT` if the project does not exist.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The resource name of the project associated with the
  /// attestors, in the format `projects / * `.
  /// Value must have pattern `^projects/\[^/\]+$`.
  ///
  /// [pageSize] - Requested page size. The server may return fewer results than
  /// requested. If unspecified, the server will pick an appropriate default.
  ///
  /// [pageToken] - A token identifying a page of results the server should
  /// return. Typically, this is the value of
  /// ListAttestorsResponse.next_page_token returned from the previous call to
  /// the `ListAttestors` method.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListAttestorsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListAttestorsResponse> list(
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

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/attestors';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListAttestorsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Sets the access control policy on the specified resource.
  ///
  /// Replaces any existing policy. Can return `NOT_FOUND`, `INVALID_ARGUMENT`,
  /// and `PERMISSION_DENIED` errors.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [resource] - REQUIRED: The resource for which the policy is being
  /// specified. See
  /// [Resource names](https://cloud.google.com/apis/design/resource_names) for
  /// the appropriate value for this field.
  /// Value must have pattern `^projects/\[^/\]+/attestors/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [IamPolicy].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<IamPolicy> setIamPolicy(
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
    return IamPolicy.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Returns permissions that a caller has on the specified resource.
  ///
  /// If the resource does not exist, this will return an empty set of
  /// permissions, not a `NOT_FOUND` error. Note: This operation is designed to
  /// be used for building permission-aware UIs and command-line tools, not for
  /// authorization checking. This operation may "fail open" without warning.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [resource] - REQUIRED: The resource for which the policy detail is being
  /// requested. See
  /// [Resource names](https://cloud.google.com/apis/design/resource_names) for
  /// the appropriate value for this field.
  /// Value must have pattern `^projects/\[^/\]+/attestors/\[^/\]+$`.
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

  /// Updates an attestor.
  ///
  /// Returns `NOT_FOUND` if the attestor does not exist.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name, in the format: `projects / *
  /// /attestors / * `. This field may not be updated.
  /// Value must have pattern `^projects/\[^/\]+/attestors/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Attestor].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Attestor> update(
    Attestor request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PUT',
      body: body_,
      queryParams: queryParams_,
    );
    return Attestor.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Returns whether the given `Attestation` for the given image URI was signed
  /// by the given `Attestor`
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [attestor] - Required. The resource name of the Attestor of the
  /// occurrence, in the format `projects / * /attestors / * `.
  /// Value must have pattern `^projects/\[^/\]+/attestors/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ValidateAttestationOccurrenceResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ValidateAttestationOccurrenceResponse>
      validateAttestationOccurrence(
    ValidateAttestationOccurrenceRequest request,
    core.String attestor, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' +
        core.Uri.encodeFull('$attestor') +
        ':validateAttestationOccurrence';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return ValidateAttestationOccurrenceResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsPlatformsResource {
  final commons.ApiRequester _requester;

  ProjectsPlatformsPoliciesResource get policies =>
      ProjectsPlatformsPoliciesResource(_requester);

  ProjectsPlatformsResource(commons.ApiRequester client) : _requester = client;
}

class ProjectsPlatformsPoliciesResource {
  final commons.ApiRequester _requester;

  ProjectsPlatformsPoliciesResource(commons.ApiRequester client)
      : _requester = client;

  /// Creates a platform policy, and returns a copy of it.
  ///
  /// Returns `NOT_FOUND` if the project or platform doesn't exist,
  /// `INVALID_ARGUMENT` if the request is malformed, `ALREADY_EXISTS` if the
  /// policy already exists, and `INVALID_ARGUMENT` if the policy contains a
  /// platform-specific policy that does not match the platform value specified
  /// in the URL.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent of this platform policy.
  /// Value must have pattern `^projects/\[^/\]+/platforms/\[^/\]+$`.
  ///
  /// [policyId] - Required. The platform policy ID.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [PlatformPolicy].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<PlatformPolicy> create(
    PlatformPolicy request,
    core.String parent, {
    core.String? policyId,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (policyId != null) 'policyId': [policyId],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/policies';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return PlatformPolicy.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Deletes a platform policy.
  ///
  /// Returns `NOT_FOUND` if the policy doesn't exist.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the platform policy to delete, in the
  /// format `projects / * /platforms / * /policies / * `.
  /// Value must have pattern
  /// `^projects/\[^/\]+/platforms/\[^/\]+/policies/\[^/\]+$`.
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

  /// Gets a platform policy.
  ///
  /// Returns `NOT_FOUND` if the policy doesn't exist.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the platform policy to retrieve in the
  /// format `projects / * /platforms / * /policies / * `.
  /// Value must have pattern
  /// `^projects/\[^/\]+/platforms/\[^/\]+/policies/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [PlatformPolicy].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<PlatformPolicy> get(
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
    return PlatformPolicy.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists platform policies owned by a project in the specified platform.
  ///
  /// Returns `INVALID_ARGUMENT` if the project or the platform doesn't exist.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The resource name of the platform associated with the
  /// platform policies using the format `projects / * /platforms / * `.
  /// Value must have pattern `^projects/\[^/\]+/platforms/\[^/\]+$`.
  ///
  /// [pageSize] - Requested page size. The server may return fewer results than
  /// requested. If unspecified, the server picks an appropriate default.
  ///
  /// [pageToken] - A token identifying a page of results the server should
  /// return. Typically, this is the value of
  /// ListPlatformPoliciesResponse.next_page_token returned from the previous
  /// call to the `ListPlatformPolicies` method.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListPlatformPoliciesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListPlatformPoliciesResponse> list(
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

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/policies';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListPlatformPoliciesResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Replaces a platform policy.
  ///
  /// Returns `NOT_FOUND` if the policy doesn't exist.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Output only. The relative resource name of the Binary
  /// Authorization platform policy, in the form of `projects / * /platforms / *
  /// /policies / * `.
  /// Value must have pattern
  /// `^projects/\[^/\]+/platforms/\[^/\]+/policies/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [PlatformPolicy].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<PlatformPolicy> replacePlatformPolicy(
    PlatformPolicy request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PUT',
      body: body_,
      queryParams: queryParams_,
    );
    return PlatformPolicy.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsPolicyResource {
  final commons.ApiRequester _requester;

  ProjectsPolicyResource(commons.ApiRequester client) : _requester = client;

  /// Gets the access control policy for a resource.
  ///
  /// Returns an empty policy if the resource exists and does not have a policy
  /// set.
  ///
  /// Request parameters:
  ///
  /// [resource] - REQUIRED: The resource for which the policy is being
  /// requested. See
  /// [Resource names](https://cloud.google.com/apis/design/resource_names) for
  /// the appropriate value for this field.
  /// Value must have pattern `^projects/\[^/\]+/policy$`.
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
  /// Completes with a [IamPolicy].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<IamPolicy> getIamPolicy(
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
    return IamPolicy.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Sets the access control policy on the specified resource.
  ///
  /// Replaces any existing policy. Can return `NOT_FOUND`, `INVALID_ARGUMENT`,
  /// and `PERMISSION_DENIED` errors.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [resource] - REQUIRED: The resource for which the policy is being
  /// specified. See
  /// [Resource names](https://cloud.google.com/apis/design/resource_names) for
  /// the appropriate value for this field.
  /// Value must have pattern `^projects/\[^/\]+/policy$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [IamPolicy].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<IamPolicy> setIamPolicy(
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
    return IamPolicy.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Returns permissions that a caller has on the specified resource.
  ///
  /// If the resource does not exist, this will return an empty set of
  /// permissions, not a `NOT_FOUND` error. Note: This operation is designed to
  /// be used for building permission-aware UIs and command-line tools, not for
  /// authorization checking. This operation may "fail open" without warning.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [resource] - REQUIRED: The resource for which the policy detail is being
  /// requested. See
  /// [Resource names](https://cloud.google.com/apis/design/resource_names) for
  /// the appropriate value for this field.
  /// Value must have pattern `^projects/\[^/\]+/policy$`.
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

class SystempolicyResource {
  final commons.ApiRequester _requester;

  SystempolicyResource(commons.ApiRequester client) : _requester = client;

  /// Gets the current system policy in the specified location.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name, in the format `locations / *
  /// /policy`. Note that the system policy is not associated with a project.
  /// Value must have pattern `^locations/\[^/\]+/policy$`.
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
  async.Future<Policy> getPolicy(
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
    return Policy.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }
}

/// An admission rule specifies either that all container images used in a pod
/// creation request must be attested to by one or more attestors, that all pod
/// creations will be allowed, or that all pod creations will be denied.
///
/// Images matching an admission allowlist pattern are exempted from admission
/// rules and will never block a pod creation.
class AdmissionRule {
  /// The action when a pod creation is denied by the admission rule.
  ///
  /// Required.
  /// Possible string values are:
  /// - "ENFORCEMENT_MODE_UNSPECIFIED" : Do not use.
  /// - "ENFORCED_BLOCK_AND_AUDIT_LOG" : Enforce the admission rule by blocking
  /// the pod creation.
  /// - "DRYRUN_AUDIT_LOG_ONLY" : Dryrun mode: Audit logging only. This will
  /// allow the pod creation as if the admission request had specified
  /// break-glass.
  core.String? enforcementMode;

  /// How this admission rule will be evaluated.
  ///
  /// Required.
  /// Possible string values are:
  /// - "EVALUATION_MODE_UNSPECIFIED" : Do not use.
  /// - "ALWAYS_ALLOW" : This rule allows all pod creations.
  /// - "REQUIRE_ATTESTATION" : This rule allows a pod creation if all the
  /// attestors listed in `require_attestations_by` have valid attestations for
  /// all of the images in the pod spec.
  /// - "ALWAYS_DENY" : This rule denies all pod creations.
  core.String? evaluationMode;

  /// The resource names of the attestors that must attest to a container image,
  /// in the format `projects / * /attestors / * `.
  ///
  /// Each attestor must exist before a policy can reference it. To add an
  /// attestor to a policy the principal issuing the policy change request must
  /// be able to read the attestor resource. Note: this field must be non-empty
  /// when the `evaluation_mode` field specifies `REQUIRE_ATTESTATION`,
  /// otherwise it must be empty.
  ///
  /// Optional.
  core.List<core.String>? requireAttestationsBy;

  AdmissionRule({
    this.enforcementMode,
    this.evaluationMode,
    this.requireAttestationsBy,
  });

  AdmissionRule.fromJson(core.Map json_)
      : this(
          enforcementMode: json_.containsKey('enforcementMode')
              ? json_['enforcementMode'] as core.String
              : null,
          evaluationMode: json_.containsKey('evaluationMode')
              ? json_['evaluationMode'] as core.String
              : null,
          requireAttestationsBy: json_.containsKey('requireAttestationsBy')
              ? (json_['requireAttestationsBy'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (enforcementMode != null) 'enforcementMode': enforcementMode!,
        if (evaluationMode != null) 'evaluationMode': evaluationMode!,
        if (requireAttestationsBy != null)
          'requireAttestationsBy': requireAttestationsBy!,
      };
}

/// An admission allowlist pattern exempts images from checks by admission
/// rules.
class AdmissionWhitelistPattern {
  /// An image name pattern to allowlist, in the form `registry/path/to/image`.
  ///
  /// This supports a trailing `*` wildcard, but this is allowed only in text
  /// after the `registry/` part. This also supports a trailing `**` wildcard
  /// which matches subdirectories of a given entry.
  core.String? namePattern;

  AdmissionWhitelistPattern({
    this.namePattern,
  });

  AdmissionWhitelistPattern.fromJson(core.Map json_)
      : this(
          namePattern: json_.containsKey('namePattern')
              ? json_['namePattern'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (namePattern != null) 'namePattern': namePattern!,
      };
}

/// An attestation authenticator that will be used to verify attestations.
///
/// Typically this is just a set of public keys. Conceptually, an authenticator
/// can be treated as always returning either "authenticated" or "not
/// authenticated" when presented with a signed attestation (almost always
/// assumed to be a [DSSE](https://github.com/secure-systems-lab/dsse)
/// attestation). The details of how an authenticator makes this decision are
/// specific to the type of 'authenticator' that this message wraps.
class AttestationAuthenticator {
  /// A user-provided name for this `AttestationAuthenticator`.
  ///
  /// This field has no effect on the policy evaluation behavior except to
  /// improve readability of messages in evaluation results.
  ///
  /// Optional.
  core.String? displayName;

  /// A set of raw PKIX SubjectPublicKeyInfo format public keys.
  ///
  /// If any public key in the set validates the attestation signature, then the
  /// signature is considered authenticated (i.e. any one key is sufficient to
  /// authenticate).
  ///
  /// Optional.
  PkixPublicKeySet? pkixPublicKeySet;

  AttestationAuthenticator({
    this.displayName,
    this.pkixPublicKeySet,
  });

  AttestationAuthenticator.fromJson(core.Map json_)
      : this(
          displayName: json_.containsKey('displayName')
              ? json_['displayName'] as core.String
              : null,
          pkixPublicKeySet: json_.containsKey('pkixPublicKeySet')
              ? PkixPublicKeySet.fromJson(json_['pkixPublicKeySet']
                  as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (displayName != null) 'displayName': displayName!,
        if (pkixPublicKeySet != null) 'pkixPublicKeySet': pkixPublicKeySet!,
      };
}

/// Occurrence that represents a single "attestation".
///
/// The authenticity of an attestation can be verified using the attached
/// signature. If the verifier trusts the public key of the signer, then
/// verifying the signature is sufficient to establish trust. In this
/// circumstance, the authority to which this attestation is attached is
/// primarily useful for lookup (how to find this attestation if you already
/// know the authority and artifact to be verified) and intent (for which
/// authority this attestation was intended to sign.
class AttestationOccurrence {
  /// One or more JWTs encoding a self-contained attestation.
  ///
  /// Each JWT encodes the payload that it verifies within the JWT itself.
  /// Verifier implementation SHOULD ignore the `serialized_payload` field when
  /// verifying these JWTs. If only JWTs are present on this
  /// AttestationOccurrence, then the `serialized_payload` SHOULD be left empty.
  /// Each JWT SHOULD encode a claim specific to the `resource_uri` of this
  /// Occurrence, but this is not validated by Grafeas metadata API
  /// implementations. The JWT itself is opaque to Grafeas.
  core.List<Jwt>? jwts;

  /// The serialized payload that is verified by one or more `signatures`.
  ///
  /// Required.
  core.String? serializedPayload;
  core.List<core.int> get serializedPayloadAsBytes =>
      convert.base64.decode(serializedPayload!);

  set serializedPayloadAsBytes(core.List<core.int> bytes_) {
    serializedPayload =
        convert.base64.encode(bytes_).replaceAll('/', '_').replaceAll('+', '-');
  }

  /// One or more signatures over `serialized_payload`.
  ///
  /// Verifier implementations should consider this attestation message verified
  /// if at least one `signature` verifies `serialized_payload`. See `Signature`
  /// in common.proto for more details on signature structure and verification.
  core.List<Signature>? signatures;

  AttestationOccurrence({
    this.jwts,
    this.serializedPayload,
    this.signatures,
  });

  AttestationOccurrence.fromJson(core.Map json_)
      : this(
          jwts: json_.containsKey('jwts')
              ? (json_['jwts'] as core.List)
                  .map((value) => Jwt.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          serializedPayload: json_.containsKey('serializedPayload')
              ? json_['serializedPayload'] as core.String
              : null,
          signatures: json_.containsKey('signatures')
              ? (json_['signatures'] as core.List)
                  .map((value) => Signature.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (jwts != null) 'jwts': jwts!,
        if (serializedPayload != null) 'serializedPayload': serializedPayload!,
        if (signatures != null) 'signatures': signatures!,
      };
}

/// Specifies the locations for fetching the provenance attestations.
class AttestationSource {
  /// The IDs of the GCP projects storing the SLSA attestations as Container
  /// Analysis Occurrences.
  core.List<core.String>? containerAnalysisAttestationProjects;

  AttestationSource({
    this.containerAnalysisAttestationProjects,
  });

  AttestationSource.fromJson(core.Map json_)
      : this(
          containerAnalysisAttestationProjects:
              json_.containsKey('containerAnalysisAttestationProjects')
                  ? (json_['containerAnalysisAttestationProjects'] as core.List)
                      .map((value) => value as core.String)
                      .toList()
                  : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (containerAnalysisAttestationProjects != null)
          'containerAnalysisAttestationProjects':
              containerAnalysisAttestationProjects!,
      };
}

/// An attestor that attests to container image artifacts.
///
/// An existing attestor cannot be modified except where indicated.
class Attestor {
  /// A descriptive comment.
  ///
  /// This field may be updated. The field may be displayed in chooser dialogs.
  ///
  /// Optional.
  core.String? description;

  /// A checksum, returned by the server, that can be sent on update requests to
  /// ensure the attestor has an up-to-date value before attempting to update
  /// it.
  ///
  /// See https://google.aip.dev/154.
  ///
  /// Optional.
  core.String? etag;

  /// The resource name, in the format: `projects / * /attestors / * `.
  ///
  /// This field may not be updated.
  ///
  /// Required.
  core.String? name;

  /// Time when the attestor was last updated.
  ///
  /// Output only.
  core.String? updateTime;

  /// This specifies how an attestation will be read, and how it will be used
  /// during policy enforcement.
  UserOwnedGrafeasNote? userOwnedGrafeasNote;

  Attestor({
    this.description,
    this.etag,
    this.name,
    this.updateTime,
    this.userOwnedGrafeasNote,
  });

  Attestor.fromJson(core.Map json_)
      : this(
          description: json_.containsKey('description')
              ? json_['description'] as core.String
              : null,
          etag: json_.containsKey('etag') ? json_['etag'] as core.String : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          updateTime: json_.containsKey('updateTime')
              ? json_['updateTime'] as core.String
              : null,
          userOwnedGrafeasNote: json_.containsKey('userOwnedGrafeasNote')
              ? UserOwnedGrafeasNote.fromJson(json_['userOwnedGrafeasNote']
                  as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (description != null) 'description': description!,
        if (etag != null) 'etag': etag!,
        if (name != null) 'name': name!,
        if (updateTime != null) 'updateTime': updateTime!,
        if (userOwnedGrafeasNote != null)
          'userOwnedGrafeasNote': userOwnedGrafeasNote!,
      };
}

/// An attestor public key that will be used to verify attestations signed by
/// this attestor.
class AttestorPublicKey {
  /// ASCII-armored representation of a PGP public key, as the entire output by
  /// the command `gpg --export --armor foo@example.com` (either LF or CRLF line
  /// endings).
  ///
  /// When using this field, `id` should be left blank. The Binary Authorization
  /// API handlers will calculate the ID and fill it in automatically. Binary
  /// Authorization computes this ID as the OpenPGP RFC4880 V4 fingerprint,
  /// represented as upper-case hex. If `id` is provided by the caller, it will
  /// be overwritten by the API-calculated ID.
  core.String? asciiArmoredPgpPublicKey;

  /// A descriptive comment.
  ///
  /// This field may be updated.
  ///
  /// Optional.
  core.String? comment;

  /// The ID of this public key.
  ///
  /// Signatures verified by Binary Authorization must include the ID of the
  /// public key that can be used to verify them, and that ID must match the
  /// contents of this field exactly. Additional restrictions on this field can
  /// be imposed based on which public key type is encapsulated. See the
  /// documentation on `public_key` cases below for details.
  core.String? id;

  /// A raw PKIX SubjectPublicKeyInfo format public key.
  ///
  /// NOTE: `id` may be explicitly provided by the caller when using this type
  /// of public key, but it MUST be a valid RFC3986 URI. If `id` is left blank,
  /// a default one will be computed based on the digest of the DER encoding of
  /// the public key.
  PkixPublicKey? pkixPublicKey;

  AttestorPublicKey({
    this.asciiArmoredPgpPublicKey,
    this.comment,
    this.id,
    this.pkixPublicKey,
  });

  AttestorPublicKey.fromJson(core.Map json_)
      : this(
          asciiArmoredPgpPublicKey:
              json_.containsKey('asciiArmoredPgpPublicKey')
                  ? json_['asciiArmoredPgpPublicKey'] as core.String
                  : null,
          comment: json_.containsKey('comment')
              ? json_['comment'] as core.String
              : null,
          id: json_.containsKey('id') ? json_['id'] as core.String : null,
          pkixPublicKey: json_.containsKey('pkixPublicKey')
              ? PkixPublicKey.fromJson(
                  json_['pkixPublicKey'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (asciiArmoredPgpPublicKey != null)
          'asciiArmoredPgpPublicKey': asciiArmoredPgpPublicKey!,
        if (comment != null) 'comment': comment!,
        if (id != null) 'id': id!,
        if (pkixPublicKey != null) 'pkixPublicKey': pkixPublicKey!,
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
  /// `google.com` or `example.com`. * `deleted:user:{emailid}?uid={uniqueid}`:
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
  /// the role in the binding.
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

/// A single check to perform against a Pod.
///
/// Checks are grouped into `CheckSet` objects, which are defined by the
/// top-level policy.
class Check {
  /// A special-case check that always denies.
  ///
  /// Note that this still only applies when the scope of the `CheckSet` applies
  /// and the image isn't exempted by an image allowlist. This check is
  /// primarily useful for testing, or to set the default behavior for all
  /// unmatched scopes to "deny".
  ///
  /// Optional.
  core.bool? alwaysDeny;

  /// A user-provided name for this check.
  ///
  /// This field has no effect on the policy evaluation behavior except to
  /// improve readability of messages in evaluation results.
  ///
  /// Optional.
  core.String? displayName;

  /// Images exempted from this check.
  ///
  /// If any of the patterns match the image url, the check will not be
  /// evaluated.
  ///
  /// Optional.
  ImageAllowlist? imageAllowlist;

  /// Require that an image is no older than a configured expiration time.
  ///
  /// Image age is determined by its upload time.
  ///
  /// Optional.
  ImageFreshnessCheck? imageFreshnessCheck;

  /// Require a SimpleSigning-type attestation for every image in the
  /// deployment.
  ///
  /// Optional.
  SimpleSigningAttestationCheck? simpleSigningAttestationCheck;

  /// Require that an image was built by a trusted builder (such as Google Cloud
  /// Build), meets requirements for Supply chain Levels for Software Artifacts
  /// (SLSA), and was built from a trusted source code repostitory.
  ///
  /// Optional.
  SlsaCheck? slsaCheck;

  /// Require that an image lives in a trusted directory.
  ///
  /// Optional.
  TrustedDirectoryCheck? trustedDirectoryCheck;

  /// Require that an image does not contain vulnerabilities that violate the
  /// configured rules, such as based on severity levels.
  ///
  /// Optional.
  VulnerabilityCheck? vulnerabilityCheck;

  Check({
    this.alwaysDeny,
    this.displayName,
    this.imageAllowlist,
    this.imageFreshnessCheck,
    this.simpleSigningAttestationCheck,
    this.slsaCheck,
    this.trustedDirectoryCheck,
    this.vulnerabilityCheck,
  });

  Check.fromJson(core.Map json_)
      : this(
          alwaysDeny: json_.containsKey('alwaysDeny')
              ? json_['alwaysDeny'] as core.bool
              : null,
          displayName: json_.containsKey('displayName')
              ? json_['displayName'] as core.String
              : null,
          imageAllowlist: json_.containsKey('imageAllowlist')
              ? ImageAllowlist.fromJson(json_['imageAllowlist']
                  as core.Map<core.String, core.dynamic>)
              : null,
          imageFreshnessCheck: json_.containsKey('imageFreshnessCheck')
              ? ImageFreshnessCheck.fromJson(json_['imageFreshnessCheck']
                  as core.Map<core.String, core.dynamic>)
              : null,
          simpleSigningAttestationCheck:
              json_.containsKey('simpleSigningAttestationCheck')
                  ? SimpleSigningAttestationCheck.fromJson(
                      json_['simpleSigningAttestationCheck']
                          as core.Map<core.String, core.dynamic>)
                  : null,
          slsaCheck: json_.containsKey('slsaCheck')
              ? SlsaCheck.fromJson(
                  json_['slsaCheck'] as core.Map<core.String, core.dynamic>)
              : null,
          trustedDirectoryCheck: json_.containsKey('trustedDirectoryCheck')
              ? TrustedDirectoryCheck.fromJson(json_['trustedDirectoryCheck']
                  as core.Map<core.String, core.dynamic>)
              : null,
          vulnerabilityCheck: json_.containsKey('vulnerabilityCheck')
              ? VulnerabilityCheck.fromJson(json_['vulnerabilityCheck']
                  as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (alwaysDeny != null) 'alwaysDeny': alwaysDeny!,
        if (displayName != null) 'displayName': displayName!,
        if (imageAllowlist != null) 'imageAllowlist': imageAllowlist!,
        if (imageFreshnessCheck != null)
          'imageFreshnessCheck': imageFreshnessCheck!,
        if (simpleSigningAttestationCheck != null)
          'simpleSigningAttestationCheck': simpleSigningAttestationCheck!,
        if (slsaCheck != null) 'slsaCheck': slsaCheck!,
        if (trustedDirectoryCheck != null)
          'trustedDirectoryCheck': trustedDirectoryCheck!,
        if (vulnerabilityCheck != null)
          'vulnerabilityCheck': vulnerabilityCheck!,
      };
}

/// A conjunction of policy checks, scoped to a particular namespace or
/// Kubernetes service account.
///
/// In order for evaluation of a `CheckSet` to return "allowed" for a given
/// image in a given Pod, one of the following conditions must be satisfied: *
/// The image is explicitly exempted by an entry in `image_allowlist`, OR * ALL
/// of the `checks` evaluate to "allowed".
class CheckSet {
  /// The checks to apply.
  ///
  /// The ultimate result of evaluating the check set will be "allow" if and
  /// only if every check in `checks` evaluates to "allow". If `checks` is
  /// empty, the default behavior is "always allow".
  ///
  /// Optional.
  core.List<Check>? checks;

  /// A user-provided name for this `CheckSet`.
  ///
  /// This field has no effect on the policy evaluation behavior except to
  /// improve readability of messages in evaluation results.
  ///
  /// Optional.
  core.String? displayName;

  /// Images exempted from this `CheckSet`.
  ///
  /// If any of the patterns match the image being evaluated, no checks in the
  /// `CheckSet` will be evaluated.
  ///
  /// Optional.
  ImageAllowlist? imageAllowlist;

  /// The scope to which this `CheckSet` applies.
  ///
  /// If unset or an empty string (the default), applies to all namespaces and
  /// service accounts. See the `Scope` message documentation for details on
  /// scoping rules.
  ///
  /// Optional.
  Scope? scope;

  CheckSet({
    this.checks,
    this.displayName,
    this.imageAllowlist,
    this.scope,
  });

  CheckSet.fromJson(core.Map json_)
      : this(
          checks: json_.containsKey('checks')
              ? (json_['checks'] as core.List)
                  .map((value) => Check.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          displayName: json_.containsKey('displayName')
              ? json_['displayName'] as core.String
              : null,
          imageAllowlist: json_.containsKey('imageAllowlist')
              ? ImageAllowlist.fromJson(json_['imageAllowlist']
                  as core.Map<core.String, core.dynamic>)
              : null,
          scope: json_.containsKey('scope')
              ? Scope.fromJson(
                  json_['scope'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (checks != null) 'checks': checks!,
        if (displayName != null) 'displayName': displayName!,
        if (imageAllowlist != null) 'imageAllowlist': imageAllowlist!,
        if (scope != null) 'scope': scope!,
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

/// A Binary Authorization policy for a GKE cluster.
///
/// This is one type of policy that can occur as a `PlatformPolicy`.
class GkePolicy {
  /// The `CheckSet` objects to apply, scoped by namespace or namespace and
  /// service account.
  ///
  /// Exactly one `CheckSet` will be evaluated for a given Pod (unless the list
  /// is empty, in which case the behavior is "always allow"). If multiple
  /// `CheckSet` objects have scopes that match the namespace and service
  /// account of the Pod being evaluated, only the `CheckSet` with the MOST
  /// SPECIFIC scope will match. `CheckSet` objects must be listed in order of
  /// decreasing specificity, i.e. if a scope matches a given service account
  /// (which must include the namespace), it must come before a `CheckSet` with
  /// a scope matching just that namespace. This property is enforced by
  /// server-side validation. The purpose of this restriction is to ensure that
  /// if more than one `CheckSet` matches a given Pod, the `CheckSet` that will
  /// be evaluated will always be the first in the list to match (because if any
  /// other matches, it must be less specific). If `check_sets` is empty, the
  /// default behavior is to allow all images. If `check_sets` is non-empty, the
  /// last `check_sets` entry must always be a `CheckSet` with no scope set,
  /// i.e. a catchall to handle any situation not caught by the preceding
  /// `CheckSet` objects.
  ///
  /// Optional.
  core.List<CheckSet>? checkSets;

  /// Images exempted from this policy.
  ///
  /// If any of the patterns match the image being evaluated, the rest of the
  /// policy will not be evaluated.
  ///
  /// Optional.
  ImageAllowlist? imageAllowlist;

  GkePolicy({
    this.checkSets,
    this.imageAllowlist,
  });

  GkePolicy.fromJson(core.Map json_)
      : this(
          checkSets: json_.containsKey('checkSets')
              ? (json_['checkSets'] as core.List)
                  .map((value) => CheckSet.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          imageAllowlist: json_.containsKey('imageAllowlist')
              ? ImageAllowlist.fromJson(json_['imageAllowlist']
                  as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (checkSets != null) 'checkSets': checkSets!,
        if (imageAllowlist != null) 'imageAllowlist': imageAllowlist!,
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
class IamPolicy {
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
    etag =
        convert.base64.encode(bytes_).replaceAll('/', '_').replaceAll('+', '-');
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

  IamPolicy({
    this.bindings,
    this.etag,
    this.version,
  });

  IamPolicy.fromJson(core.Map json_)
      : this(
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
        if (bindings != null) 'bindings': bindings!,
        if (etag != null) 'etag': etag!,
        if (version != null) 'version': version!,
      };
}

/// Images that are exempted from normal checks based on name pattern only.
class ImageAllowlist {
  /// A disjunction of image patterns to allow.
  ///
  /// If any of these patterns match, then the image is considered exempted by
  /// this allowlist.
  ///
  /// Required.
  core.List<core.String>? allowPattern;

  ImageAllowlist({
    this.allowPattern,
  });

  ImageAllowlist.fromJson(core.Map json_)
      : this(
          allowPattern: json_.containsKey('allowPattern')
              ? (json_['allowPattern'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (allowPattern != null) 'allowPattern': allowPattern!,
      };
}

/// An image freshness check, which rejects images that were uploaded before the
/// set number of days ago to the supported repositories.
class ImageFreshnessCheck {
  /// The max number of days that is allowed since the image was uploaded.
  ///
  /// Must be greater than zero.
  ///
  /// Required.
  core.int? maxUploadAgeDays;

  ImageFreshnessCheck({
    this.maxUploadAgeDays,
  });

  ImageFreshnessCheck.fromJson(core.Map json_)
      : this(
          maxUploadAgeDays: json_.containsKey('maxUploadAgeDays')
              ? json_['maxUploadAgeDays'] as core.int
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (maxUploadAgeDays != null) 'maxUploadAgeDays': maxUploadAgeDays!,
      };
}

typedef Jwt = $Jwt;

/// Response message for BinauthzManagementServiceV1.ListAttestors.
class ListAttestorsResponse {
  /// The list of attestors.
  core.List<Attestor>? attestors;

  /// A token to retrieve the next page of results.
  ///
  /// Pass this value in the ListAttestorsRequest.page_token field in the
  /// subsequent call to the `ListAttestors` method to retrieve the next page of
  /// results.
  core.String? nextPageToken;

  ListAttestorsResponse({
    this.attestors,
    this.nextPageToken,
  });

  ListAttestorsResponse.fromJson(core.Map json_)
      : this(
          attestors: json_.containsKey('attestors')
              ? (json_['attestors'] as core.List)
                  .map((value) => Attestor.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (attestors != null) 'attestors': attestors!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
      };
}

/// Response message for PlatformPolicyManagementService.ListPlatformPolicies.
class ListPlatformPoliciesResponse {
  /// A token to retrieve the next page of results.
  ///
  /// Pass this value in the ListPlatformPoliciesRequest.page_token field in the
  /// subsequent call to the `ListPlatformPolicies` method to retrieve the next
  /// page of results.
  core.String? nextPageToken;

  /// The list of platform policies.
  core.List<PlatformPolicy>? platformPolicies;

  ListPlatformPoliciesResponse({
    this.nextPageToken,
    this.platformPolicies,
  });

  ListPlatformPoliciesResponse.fromJson(core.Map json_)
      : this(
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
          platformPolicies: json_.containsKey('platformPolicies')
              ? (json_['platformPolicies'] as core.List)
                  .map((value) => PlatformPolicy.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (platformPolicies != null) 'platformPolicies': platformPolicies!,
      };
}

/// A public key in the PkixPublicKey
/// [format](https://tools.ietf.org/html/rfc5280#section-4.1.2.7).
///
/// Public keys of this type are typically textually encoded using the PEM
/// format.
class PkixPublicKey {
  /// The ID of this public key.
  ///
  /// Signatures verified by Binary Authorization must include the ID of the
  /// public key that can be used to verify them, and that ID must match the
  /// contents of this field exactly. This may be explicitly provided by the
  /// caller, but it MUST be a valid RFC3986 URI. If `key_id` is left blank and
  /// this `PkixPublicKey` is not used in the context of a wrapper (see next
  /// paragraph), a default key ID will be computed based on the digest of the
  /// DER encoding of the public key. If this `PkixPublicKey` is used in the
  /// context of a wrapper that has its own notion of key ID (e.g.
  /// `AttestorPublicKey`), then this field can either: * Match that value
  /// exactly. * Or be left blank, in which case it behaves exactly as though it
  /// is equal to that wrapper value.
  ///
  /// Optional.
  core.String? keyId;

  /// A PEM-encoded public key, as described in
  /// https://tools.ietf.org/html/rfc7468#section-13
  core.String? publicKeyPem;

  /// The signature algorithm used to verify a message against a signature using
  /// this key.
  ///
  /// These signature algorithm must match the structure and any object
  /// identifiers encoded in `public_key_pem` (i.e. this algorithm must match
  /// that of the public key).
  /// Possible string values are:
  /// - "SIGNATURE_ALGORITHM_UNSPECIFIED" : Not specified.
  /// - "RSA_PSS_2048_SHA256" : RSASSA-PSS 2048 bit key with a SHA256 digest.
  /// - "RSA_SIGN_PSS_2048_SHA256" : RSASSA-PSS 2048 bit key with a SHA256
  /// digest.
  /// - "RSA_PSS_3072_SHA256" : RSASSA-PSS 3072 bit key with a SHA256 digest.
  /// - "RSA_SIGN_PSS_3072_SHA256" : RSASSA-PSS 3072 bit key with a SHA256
  /// digest.
  /// - "RSA_PSS_4096_SHA256" : RSASSA-PSS 4096 bit key with a SHA256 digest.
  /// - "RSA_SIGN_PSS_4096_SHA256" : RSASSA-PSS 4096 bit key with a SHA256
  /// digest.
  /// - "RSA_PSS_4096_SHA512" : RSASSA-PSS 4096 bit key with a SHA512 digest.
  /// - "RSA_SIGN_PSS_4096_SHA512" : RSASSA-PSS 4096 bit key with a SHA512
  /// digest.
  /// - "RSA_SIGN_PKCS1_2048_SHA256" : RSASSA-PKCS1-v1_5 with a 2048 bit key and
  /// a SHA256 digest.
  /// - "RSA_SIGN_PKCS1_3072_SHA256" : RSASSA-PKCS1-v1_5 with a 3072 bit key and
  /// a SHA256 digest.
  /// - "RSA_SIGN_PKCS1_4096_SHA256" : RSASSA-PKCS1-v1_5 with a 4096 bit key and
  /// a SHA256 digest.
  /// - "RSA_SIGN_PKCS1_4096_SHA512" : RSASSA-PKCS1-v1_5 with a 4096 bit key and
  /// a SHA512 digest.
  /// - "ECDSA_P256_SHA256" : ECDSA on the NIST P-256 curve with a SHA256
  /// digest.
  /// - "EC_SIGN_P256_SHA256" : ECDSA on the NIST P-256 curve with a SHA256
  /// digest.
  /// - "ECDSA_P384_SHA384" : ECDSA on the NIST P-384 curve with a SHA384
  /// digest.
  /// - "EC_SIGN_P384_SHA384" : ECDSA on the NIST P-384 curve with a SHA384
  /// digest.
  /// - "ECDSA_P521_SHA512" : ECDSA on the NIST P-521 curve with a SHA512
  /// digest.
  /// - "EC_SIGN_P521_SHA512" : ECDSA on the NIST P-521 curve with a SHA512
  /// digest.
  core.String? signatureAlgorithm;

  PkixPublicKey({
    this.keyId,
    this.publicKeyPem,
    this.signatureAlgorithm,
  });

  PkixPublicKey.fromJson(core.Map json_)
      : this(
          keyId:
              json_.containsKey('keyId') ? json_['keyId'] as core.String : null,
          publicKeyPem: json_.containsKey('publicKeyPem')
              ? json_['publicKeyPem'] as core.String
              : null,
          signatureAlgorithm: json_.containsKey('signatureAlgorithm')
              ? json_['signatureAlgorithm'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (keyId != null) 'keyId': keyId!,
        if (publicKeyPem != null) 'publicKeyPem': publicKeyPem!,
        if (signatureAlgorithm != null)
          'signatureAlgorithm': signatureAlgorithm!,
      };
}

/// A bundle of PKIX public keys, used to authenticate attestation signatures.
///
/// Generally, a signature is considered to be authenticated by a
/// `PkixPublicKeySet` if any of the public keys verify it (i.e. it is an "OR"
/// of the keys).
class PkixPublicKeySet {
  /// `pkix_public_keys` must have at least one entry.
  ///
  /// Required.
  core.List<PkixPublicKey>? pkixPublicKeys;

  PkixPublicKeySet({
    this.pkixPublicKeys,
  });

  PkixPublicKeySet.fromJson(core.Map json_)
      : this(
          pkixPublicKeys: json_.containsKey('pkixPublicKeys')
              ? (json_['pkixPublicKeys'] as core.List)
                  .map((value) => PkixPublicKey.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (pkixPublicKeys != null) 'pkixPublicKeys': pkixPublicKeys!,
      };
}

/// A Binary Authorization platform policy for deployments on various platforms.
class PlatformPolicy {
  /// A description comment about the policy.
  ///
  /// Optional.
  core.String? description;

  /// GKE platform-specific policy.
  ///
  /// Optional.
  GkePolicy? gkePolicy;

  /// The relative resource name of the Binary Authorization platform policy, in
  /// the form of `projects / * /platforms / * /policies / * `.
  ///
  /// Output only.
  core.String? name;

  /// Time when the policy was last updated.
  ///
  /// Output only.
  core.String? updateTime;

  PlatformPolicy({
    this.description,
    this.gkePolicy,
    this.name,
    this.updateTime,
  });

  PlatformPolicy.fromJson(core.Map json_)
      : this(
          description: json_.containsKey('description')
              ? json_['description'] as core.String
              : null,
          gkePolicy: json_.containsKey('gkePolicy')
              ? GkePolicy.fromJson(
                  json_['gkePolicy'] as core.Map<core.String, core.dynamic>)
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          updateTime: json_.containsKey('updateTime')
              ? json_['updateTime'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (description != null) 'description': description!,
        if (gkePolicy != null) 'gkePolicy': gkePolicy!,
        if (name != null) 'name': name!,
        if (updateTime != null) 'updateTime': updateTime!,
      };
}

/// A policy for container image binary authorization.
class Policy {
  /// Admission policy allowlisting.
  ///
  /// A matching admission request will always be permitted. This feature is
  /// typically used to exclude Google or third-party infrastructure images from
  /// Binary Authorization policies.
  ///
  /// Optional.
  core.List<AdmissionWhitelistPattern>? admissionWhitelistPatterns;

  /// Per-cluster admission rules.
  ///
  /// Cluster spec format: `location.clusterId`. There can be at most one
  /// admission rule per cluster spec. A `location` is either a compute zone
  /// (e.g. us-central1-a) or a region (e.g. us-central1). For `clusterId`
  /// syntax restrictions see
  /// https://cloud.google.com/container-engine/reference/rest/v1/projects.zones.clusters.
  ///
  /// Optional.
  core.Map<core.String, AdmissionRule>? clusterAdmissionRules;

  /// Default admission rule for a cluster without a per-cluster, per-
  /// kubernetes-service-account, or per-istio-service-identity admission rule.
  ///
  /// Required.
  AdmissionRule? defaultAdmissionRule;

  /// A descriptive comment.
  ///
  /// Optional.
  core.String? description;

  /// A checksum, returned by the server, that can be sent on update requests to
  /// ensure the policy has an up-to-date value before attempting to update it.
  ///
  /// See https://google.aip.dev/154.
  ///
  /// Optional.
  core.String? etag;

  /// Controls the evaluation of a Google-maintained global admission policy for
  /// common system-level images.
  ///
  /// Images not covered by the global policy will be subject to the project
  /// admission policy. This setting has no effect when specified inside a
  /// global admission policy.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "GLOBAL_POLICY_EVALUATION_MODE_UNSPECIFIED" : Not specified: `DISABLE`
  /// is assumed.
  /// - "ENABLE" : Enables system policy evaluation.
  /// - "DISABLE" : Disables system policy evaluation.
  core.String? globalPolicyEvaluationMode;

  /// Per-istio-service-identity admission rules.
  ///
  /// Istio service identity spec format: `spiffe:///ns//sa/` or `/ns//sa/` e.g.
  /// `spiffe://example.com/ns/test-ns/sa/default`
  ///
  /// Optional.
  core.Map<core.String, AdmissionRule>? istioServiceIdentityAdmissionRules;

  /// Per-kubernetes-namespace admission rules.
  ///
  /// K8s namespace spec format: `[a-z.-]+`, e.g. `some-namespace`
  ///
  /// Optional.
  core.Map<core.String, AdmissionRule>? kubernetesNamespaceAdmissionRules;

  /// Per-kubernetes-service-account admission rules.
  ///
  /// Service account spec format: `namespace:serviceaccount`. e.g.
  /// `test-ns:default`
  ///
  /// Optional.
  core.Map<core.String, AdmissionRule>? kubernetesServiceAccountAdmissionRules;

  /// The resource name, in the format `projects / * /policy`.
  ///
  /// There is at most one policy per project.
  ///
  /// Output only.
  core.String? name;

  /// Time when the policy was last updated.
  ///
  /// Output only.
  core.String? updateTime;

  Policy({
    this.admissionWhitelistPatterns,
    this.clusterAdmissionRules,
    this.defaultAdmissionRule,
    this.description,
    this.etag,
    this.globalPolicyEvaluationMode,
    this.istioServiceIdentityAdmissionRules,
    this.kubernetesNamespaceAdmissionRules,
    this.kubernetesServiceAccountAdmissionRules,
    this.name,
    this.updateTime,
  });

  Policy.fromJson(core.Map json_)
      : this(
          admissionWhitelistPatterns:
              json_.containsKey('admissionWhitelistPatterns')
                  ? (json_['admissionWhitelistPatterns'] as core.List)
                      .map((value) => AdmissionWhitelistPattern.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                      .toList()
                  : null,
          clusterAdmissionRules: json_.containsKey('clusterAdmissionRules')
              ? (json_['clusterAdmissionRules']
                      as core.Map<core.String, core.dynamic>)
                  .map(
                  (key, value) => core.MapEntry(
                    key,
                    AdmissionRule.fromJson(
                        value as core.Map<core.String, core.dynamic>),
                  ),
                )
              : null,
          defaultAdmissionRule: json_.containsKey('defaultAdmissionRule')
              ? AdmissionRule.fromJson(json_['defaultAdmissionRule']
                  as core.Map<core.String, core.dynamic>)
              : null,
          description: json_.containsKey('description')
              ? json_['description'] as core.String
              : null,
          etag: json_.containsKey('etag') ? json_['etag'] as core.String : null,
          globalPolicyEvaluationMode:
              json_.containsKey('globalPolicyEvaluationMode')
                  ? json_['globalPolicyEvaluationMode'] as core.String
                  : null,
          istioServiceIdentityAdmissionRules:
              json_.containsKey('istioServiceIdentityAdmissionRules')
                  ? (json_['istioServiceIdentityAdmissionRules']
                          as core.Map<core.String, core.dynamic>)
                      .map(
                      (key, value) => core.MapEntry(
                        key,
                        AdmissionRule.fromJson(
                            value as core.Map<core.String, core.dynamic>),
                      ),
                    )
                  : null,
          kubernetesNamespaceAdmissionRules:
              json_.containsKey('kubernetesNamespaceAdmissionRules')
                  ? (json_['kubernetesNamespaceAdmissionRules']
                          as core.Map<core.String, core.dynamic>)
                      .map(
                      (key, value) => core.MapEntry(
                        key,
                        AdmissionRule.fromJson(
                            value as core.Map<core.String, core.dynamic>),
                      ),
                    )
                  : null,
          kubernetesServiceAccountAdmissionRules:
              json_.containsKey('kubernetesServiceAccountAdmissionRules')
                  ? (json_['kubernetesServiceAccountAdmissionRules']
                          as core.Map<core.String, core.dynamic>)
                      .map(
                      (key, value) => core.MapEntry(
                        key,
                        AdmissionRule.fromJson(
                            value as core.Map<core.String, core.dynamic>),
                      ),
                    )
                  : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          updateTime: json_.containsKey('updateTime')
              ? json_['updateTime'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (admissionWhitelistPatterns != null)
          'admissionWhitelistPatterns': admissionWhitelistPatterns!,
        if (clusterAdmissionRules != null)
          'clusterAdmissionRules': clusterAdmissionRules!,
        if (defaultAdmissionRule != null)
          'defaultAdmissionRule': defaultAdmissionRule!,
        if (description != null) 'description': description!,
        if (etag != null) 'etag': etag!,
        if (globalPolicyEvaluationMode != null)
          'globalPolicyEvaluationMode': globalPolicyEvaluationMode!,
        if (istioServiceIdentityAdmissionRules != null)
          'istioServiceIdentityAdmissionRules':
              istioServiceIdentityAdmissionRules!,
        if (kubernetesNamespaceAdmissionRules != null)
          'kubernetesNamespaceAdmissionRules':
              kubernetesNamespaceAdmissionRules!,
        if (kubernetesServiceAccountAdmissionRules != null)
          'kubernetesServiceAccountAdmissionRules':
              kubernetesServiceAccountAdmissionRules!,
        if (name != null) 'name': name!,
        if (updateTime != null) 'updateTime': updateTime!,
      };
}

/// A scope specifier for `CheckSet` objects.
class Scope {
  /// Matches all Kubernetes service accounts in the provided namespace, unless
  /// a more specific `kubernetes_service_account` scope already matched.
  ///
  /// Optional.
  core.String? kubernetesNamespace;

  /// Matches a single Kubernetes service account, e.g.
  /// `my-namespace:my-service-account`.
  ///
  /// `kubernetes_service_account` scope is always more specific than
  /// `kubernetes_namespace` scope for the same namespace.
  ///
  /// Optional.
  core.String? kubernetesServiceAccount;

  Scope({
    this.kubernetesNamespace,
    this.kubernetesServiceAccount,
  });

  Scope.fromJson(core.Map json_)
      : this(
          kubernetesNamespace: json_.containsKey('kubernetesNamespace')
              ? json_['kubernetesNamespace'] as core.String
              : null,
          kubernetesServiceAccount:
              json_.containsKey('kubernetesServiceAccount')
                  ? json_['kubernetesServiceAccount'] as core.String
                  : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (kubernetesNamespace != null)
          'kubernetesNamespace': kubernetesNamespace!,
        if (kubernetesServiceAccount != null)
          'kubernetesServiceAccount': kubernetesServiceAccount!,
      };
}

/// Request message for `SetIamPolicy` method.
class SetIamPolicyRequest {
  /// REQUIRED: The complete policy to be applied to the `resource`.
  ///
  /// The size of the policy is limited to a few 10s of KB. An empty policy is a
  /// valid policy but certain Google Cloud services (such as Projects) might
  /// reject them.
  IamPolicy? policy;

  SetIamPolicyRequest({
    this.policy,
  });

  SetIamPolicyRequest.fromJson(core.Map json_)
      : this(
          policy: json_.containsKey('policy')
              ? IamPolicy.fromJson(
                  json_['policy'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (policy != null) 'policy': policy!,
      };
}

/// Verifiers (e.g. Kritis implementations) MUST verify signatures with respect
/// to the trust anchors defined in policy (e.g. a Kritis policy).
///
/// Typically this means that the verifier has been configured with a map from
/// `public_key_id` to public key material (and any required parameters, e.g.
/// signing algorithm). In particular, verification implementations MUST NOT
/// treat the signature `public_key_id` as anything more than a key lookup hint.
/// The `public_key_id` DOES NOT validate or authenticate a public key; it only
/// provides a mechanism for quickly selecting a public key ALREADY CONFIGURED
/// on the verifier through a trusted channel. Verification implementations MUST
/// reject signatures in any of the following circumstances: * The
/// `public_key_id` is not recognized by the verifier. * The public key that
/// `public_key_id` refers to does not verify the signature with respect to the
/// payload. The `signature` contents SHOULD NOT be "attached" (where the
/// payload is included with the serialized `signature` bytes). Verifiers MUST
/// ignore any "attached" payload and only verify signatures with respect to
/// explicitly provided payload (e.g. a `payload` field on the proto message
/// that holds this Signature, or the canonical serialization of the proto
/// message that holds this signature).
typedef Signature = $Signature;

/// Require a signed [DSSE](https://github.com/secure-systems-lab/dsse)
/// attestation with type SimpleSigning.
class SimpleSigningAttestationCheck {
  /// The authenticators required by this check to verify an attestation.
  ///
  /// Typically this is one or more PKIX public keys for signature verification.
  /// Only one authenticator needs to consider an attestation verified in order
  /// for an attestation to be considered fully authenticated. In otherwords,
  /// this list of authenticators is an "OR" of the authenticator results. At
  /// least one authenticator is required.
  ///
  /// Required.
  core.List<AttestationAuthenticator>? attestationAuthenticators;

  /// The projects where attestations are stored as Container Analysis
  /// Occurrences.
  ///
  /// Only one attestation needs to successfully verify an image for this check
  /// to pass, so a single verified attestation found in any of
  /// `container_analysis_attestation_projects` is sufficient for the check to
  /// pass. When fetching Occurrences from Container Analysis, only
  /// 'AttestationOccurrence' kinds are considered. In the future, additional
  /// Occurrence kinds may be added to the query.
  ///
  /// Optional.
  core.List<core.String>? containerAnalysisAttestationProjects;

  SimpleSigningAttestationCheck({
    this.attestationAuthenticators,
    this.containerAnalysisAttestationProjects,
  });

  SimpleSigningAttestationCheck.fromJson(core.Map json_)
      : this(
          attestationAuthenticators:
              json_.containsKey('attestationAuthenticators')
                  ? (json_['attestationAuthenticators'] as core.List)
                      .map((value) => AttestationAuthenticator.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                      .toList()
                  : null,
          containerAnalysisAttestationProjects:
              json_.containsKey('containerAnalysisAttestationProjects')
                  ? (json_['containerAnalysisAttestationProjects'] as core.List)
                      .map((value) => value as core.String)
                      .toList()
                  : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (attestationAuthenticators != null)
          'attestationAuthenticators': attestationAuthenticators!,
        if (containerAnalysisAttestationProjects != null)
          'containerAnalysisAttestationProjects':
              containerAnalysisAttestationProjects!,
      };
}

/// A SLSA provenance attestation check, which ensures that images are built by
/// a trusted builder using source code from its trusted repositories only.
class SlsaCheck {
  /// Specifies a list of verification rules for the SLSA attestations.
  ///
  /// An image is considered compliant with the SlsaCheck if any of the rules
  /// are satisfied.
  core.List<VerificationRule>? rules;

  SlsaCheck({
    this.rules,
  });

  SlsaCheck.fromJson(core.Map json_)
      : this(
          rules: json_.containsKey('rules')
              ? (json_['rules'] as core.List)
                  .map((value) => VerificationRule.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (rules != null) 'rules': rules!,
      };
}

/// Request message for `TestIamPermissions` method.
typedef TestIamPermissionsRequest = $TestIamPermissionsRequest00;

/// Response message for `TestIamPermissions` method.
typedef TestIamPermissionsResponse = $PermissionsResponse;

/// A trusted directory check, which rejects images that do not come from the
/// set of user-configured trusted directories.
class TrustedDirectoryCheck {
  /// List of trusted directory patterns.
  ///
  /// A pattern is in the form "registry/path/to/directory". The registry domain
  /// part is defined as two or more dot-separated words, e.g., `us.pkg.dev`, or
  /// `gcr.io`. Additionally, `*` can be used in three ways as wildcards: 1.
  /// leading `*` to match varying prefixes in registry subdomain (useful for
  /// location prefixes); 2. trailing `*` after registry/ to match varying
  /// endings; 3. trailing `**` after registry/ to match "/" as well. For
  /// example: -- `gcr.io/my-project/my-repo` is valid to match a single
  /// directory -- `*-docker.pkg.dev/my-project/my-repo` or
  /// `*.gcr.io/my-project` are valid to match varying prefixes --
  /// `gcr.io/my-project / * ` will match all direct directories in `my-project`
  /// -- `gcr.io/my-project / * *` would match all directories in `my-project`
  /// -- `gcr.i*` is not allowed since the registry is not completely specified
  /// -- `sub*domain.gcr.io/nginx` is not valid because only leading `*` or
  /// trailing `*` are allowed. -- `*pkg.dev/my-project/my-repo` is not valid
  /// because leading `*` can only match subdomain -- `**-docker.pkg.dev` is not
  /// valid because one leading `*` is allowed, and that it cannot match `/`
  ///
  /// Required.
  core.List<core.String>? trustedDirPatterns;

  TrustedDirectoryCheck({
    this.trustedDirPatterns,
  });

  TrustedDirectoryCheck.fromJson(core.Map json_)
      : this(
          trustedDirPatterns: json_.containsKey('trustedDirPatterns')
              ? (json_['trustedDirPatterns'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (trustedDirPatterns != null)
          'trustedDirPatterns': trustedDirPatterns!,
      };
}

/// An user owned Grafeas note references a Grafeas Attestation.Authority Note
/// created by the user.
class UserOwnedGrafeasNote {
  /// This field will contain the service account email address that this
  /// attestor will use as the principal when querying Container Analysis.
  ///
  /// Attestor administrators must grant this service account the IAM role
  /// needed to read attestations from the note_reference in Container Analysis
  /// (`containeranalysis.notes.occurrences.viewer`). This email address is
  /// fixed for the lifetime of the attestor, but callers should not make any
  /// other assumptions about the service account email; future versions may use
  /// an email based on a different naming pattern.
  ///
  /// Output only.
  core.String? delegationServiceAccountEmail;

  /// The Grafeas resource name of a Attestation.Authority Note, created by the
  /// user, in the format: `projects / * /notes / * `.
  ///
  /// This field may not be updated. An attestation by this attestor is stored
  /// as a Grafeas Attestation.Authority Occurrence that names a container image
  /// and that links to this Note. Grafeas is an external dependency.
  ///
  /// Required.
  core.String? noteReference;

  /// Public keys that verify attestations signed by this attestor.
  ///
  /// This field may be updated. If this field is non-empty, one of the
  /// specified public keys must verify that an attestation was signed by this
  /// attestor for the image specified in the admission request. If this field
  /// is empty, this attestor always returns that no valid attestations exist.
  ///
  /// Optional.
  core.List<AttestorPublicKey>? publicKeys;

  UserOwnedGrafeasNote({
    this.delegationServiceAccountEmail,
    this.noteReference,
    this.publicKeys,
  });

  UserOwnedGrafeasNote.fromJson(core.Map json_)
      : this(
          delegationServiceAccountEmail:
              json_.containsKey('delegationServiceAccountEmail')
                  ? json_['delegationServiceAccountEmail'] as core.String
                  : null,
          noteReference: json_.containsKey('noteReference')
              ? json_['noteReference'] as core.String
              : null,
          publicKeys: json_.containsKey('publicKeys')
              ? (json_['publicKeys'] as core.List)
                  .map((value) => AttestorPublicKey.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (delegationServiceAccountEmail != null)
          'delegationServiceAccountEmail': delegationServiceAccountEmail!,
        if (noteReference != null) 'noteReference': noteReference!,
        if (publicKeys != null) 'publicKeys': publicKeys!,
      };
}

/// Request message for ValidationHelperV1.ValidateAttestationOccurrence.
class ValidateAttestationOccurrenceRequest {
  /// An AttestationOccurrence to be checked that it can be verified by the
  /// `Attestor`.
  ///
  /// It does not have to be an existing entity in Container Analysis. It must
  /// otherwise be a valid `AttestationOccurrence`.
  ///
  /// Required.
  AttestationOccurrence? attestation;

  /// The resource name of the Note to which the containing Occurrence is
  /// associated.
  ///
  /// Required.
  core.String? occurrenceNote;

  /// The URI of the artifact (e.g. container image) that is the subject of the
  /// containing Occurrence.
  ///
  /// Required.
  core.String? occurrenceResourceUri;

  ValidateAttestationOccurrenceRequest({
    this.attestation,
    this.occurrenceNote,
    this.occurrenceResourceUri,
  });

  ValidateAttestationOccurrenceRequest.fromJson(core.Map json_)
      : this(
          attestation: json_.containsKey('attestation')
              ? AttestationOccurrence.fromJson(
                  json_['attestation'] as core.Map<core.String, core.dynamic>)
              : null,
          occurrenceNote: json_.containsKey('occurrenceNote')
              ? json_['occurrenceNote'] as core.String
              : null,
          occurrenceResourceUri: json_.containsKey('occurrenceResourceUri')
              ? json_['occurrenceResourceUri'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (attestation != null) 'attestation': attestation!,
        if (occurrenceNote != null) 'occurrenceNote': occurrenceNote!,
        if (occurrenceResourceUri != null)
          'occurrenceResourceUri': occurrenceResourceUri!,
      };
}

/// Response message for ValidationHelperV1.ValidateAttestationOccurrence.
class ValidateAttestationOccurrenceResponse {
  /// The reason for denial if the Attestation couldn't be validated.
  core.String? denialReason;

  /// The result of the Attestation validation.
  /// Possible string values are:
  /// - "RESULT_UNSPECIFIED" : Unspecified.
  /// - "VERIFIED" : The Attestation was able to verified by the Attestor.
  /// - "ATTESTATION_NOT_VERIFIABLE" : The Attestation was not able to verified
  /// by the Attestor.
  core.String? result;

  ValidateAttestationOccurrenceResponse({
    this.denialReason,
    this.result,
  });

  ValidateAttestationOccurrenceResponse.fromJson(core.Map json_)
      : this(
          denialReason: json_.containsKey('denialReason')
              ? json_['denialReason'] as core.String
              : null,
          result: json_.containsKey('result')
              ? json_['result'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (denialReason != null) 'denialReason': denialReason!,
        if (result != null) 'result': result!,
      };
}

/// Specifies verification rules for evaluating the SLSA attestations including:
/// which builders to trust, where to fetch the SLSA attestations generated by
/// those builders, and other builder-specific evaluation rules such as which
/// source repositories are trusted.
///
/// An image is considered verified by the rule if any of the fetched SLSA
/// attestations is verified.
class VerificationRule {
  /// Specifies where to fetch the provenances attestations generated by the
  /// builder (group).
  AttestationSource? attestationSource;

  /// If true, require the image to be built from a top-level configuration.
  ///
  /// `trusted_source_repo_patterns` specifies the repositories containing this
  /// configuration.
  core.bool? configBasedBuildRequired;

  /// Each verification rule is used for evaluation against provenances
  /// generated by a specific builder (group).
  ///
  /// For some of the builders, such as the Google Cloud Build, users don't need
  /// to explicitly specify their roots of trust in the policy since the
  /// evaluation service can automatically fetch them based on the builder
  /// (group).
  /// Possible string values are:
  /// - "BUILDER_UNSPECIFIED" : Should never happen.
  /// - "GOOGLE_CLOUD_BUILD" : The whole Google Cloud Build (GCB) builder group,
  /// including all GCB builder types.
  core.String? trustedBuilder;

  /// List of trusted source code repository URL patterns.
  ///
  /// These patterns match the full repository URL without its scheme (e.g.
  /// `https://`). The patterns must not include schemes. For example, the
  /// pattern `source.cloud.google.com/my-project/my-repo-name` matches the
  /// following URLs: - `source.cloud.google.com/my-project/my-repo-name` -
  /// `git+ssh://source.cloud.google.com/my-project/my-repo-name` -
  /// `https://source.cloud.google.com/my-project/my-repo-name` A pattern
  /// matches a URL either exactly or with `*` wildcards. `*` can be used in
  /// only two ways: 1. trailing `*` after hosturi/ to match varying endings; 2.
  /// trailing `**` after hosturi/ to match `/` as well. `*` and `**` can only
  /// be used as wildcards and can only occur at the end of the pattern after a
  /// `/`. (So it's not possible to match a URL that contains literal `*`.) For
  /// example: - `github.com/my-project/my-repo` is valid to match a single repo
  /// - `github.com/my-project / * ` will match all direct repos in `my-project`
  /// - `github.com / * *` matches all repos in GitHub
  core.List<core.String>? trustedSourceRepoPatterns;

  VerificationRule({
    this.attestationSource,
    this.configBasedBuildRequired,
    this.trustedBuilder,
    this.trustedSourceRepoPatterns,
  });

  VerificationRule.fromJson(core.Map json_)
      : this(
          attestationSource: json_.containsKey('attestationSource')
              ? AttestationSource.fromJson(json_['attestationSource']
                  as core.Map<core.String, core.dynamic>)
              : null,
          configBasedBuildRequired:
              json_.containsKey('configBasedBuildRequired')
                  ? json_['configBasedBuildRequired'] as core.bool
                  : null,
          trustedBuilder: json_.containsKey('trustedBuilder')
              ? json_['trustedBuilder'] as core.String
              : null,
          trustedSourceRepoPatterns:
              json_.containsKey('trustedSourceRepoPatterns')
                  ? (json_['trustedSourceRepoPatterns'] as core.List)
                      .map((value) => value as core.String)
                      .toList()
                  : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (attestationSource != null) 'attestationSource': attestationSource!,
        if (configBasedBuildRequired != null)
          'configBasedBuildRequired': configBasedBuildRequired!,
        if (trustedBuilder != null) 'trustedBuilder': trustedBuilder!,
        if (trustedSourceRepoPatterns != null)
          'trustedSourceRepoPatterns': trustedSourceRepoPatterns!,
      };
}

/// An image vulnerability check, which rejects images that violate the
/// configured vulnerability rules.
class VulnerabilityCheck {
  /// A list of specific CVEs to ignore even if the vulnerability level violates
  /// `maximumUnfixableSeverity` or `maximumFixableSeverity`.
  ///
  /// CVEs are listed in the format of Container Analysis note id. For example:
  /// - CVE-2021-20305 - CVE-2020-10543 The CVEs are applicable regardless of
  /// note provider project, e.g., an entry of `CVE-2021-20305` will allow
  /// vulnerabilities with a note name of either
  /// `projects/goog-vulnz/notes/CVE-2021-20305` or
  /// `projects/CUSTOM-PROJECT/notes/CVE-2021-20305`.
  ///
  /// Optional.
  core.List<core.String>? allowedCves;

  /// A list of specific CVEs to always raise warnings about even if the
  /// vulnerability level meets `maximumUnfixableSeverity` or
  /// `maximumFixableSeverity`.
  ///
  /// CVEs are listed in the format of Container Analysis note id. For example:
  /// - CVE-2021-20305 - CVE-2020-10543 The CVEs are applicable regardless of
  /// note provider project, e.g., an entry of `CVE-2021-20305` will block
  /// vulnerabilities with a note name of either
  /// `projects/goog-vulnz/notes/CVE-2021-20305` or
  /// `projects/CUSTOM-PROJECT/notes/CVE-2021-20305`.
  ///
  /// Optional.
  core.List<core.String>? blockedCves;

  /// The projects where vulnerabilities are stored as Container Analysis
  /// Occurrences.
  ///
  /// Each project is expressed in the resource format of
  /// `projects/[PROJECT_ID]`, e.g., `projects/my-gcp-project`. An attempt will
  /// be made for each project to fetch vulnerabilities, and all valid
  /// vulnerabilities will be used to check against the vulnerability policy. If
  /// no valid scan is found in all projects configured here, an error will be
  /// returned for the check.
  ///
  /// Optional.
  core.List<core.String>? containerAnalysisVulnerabilityProjects;

  /// The threshold for severity for which a fix is currently available.
  ///
  /// This field is required and must be set.
  ///
  /// Required.
  /// Possible string values are:
  /// - "MAXIMUM_ALLOWED_SEVERITY_UNSPECIFIED" : Not specified.
  /// - "BLOCK_ALL" : Block any vulnerability.
  /// - "MINIMAL" : Allow only minimal severity.
  /// - "LOW" : Allow only low severity and lower.
  /// - "MEDIUM" : Allow medium severity and lower.
  /// - "HIGH" : Allow high severity and lower.
  /// - "CRITICAL" : Allow critical severity and lower.
  /// - "ALLOW_ALL" : Allow all severity, even vulnerability with unspecified
  /// severity.
  core.String? maximumFixableSeverity;

  /// The threshold for severity for which a fix isn't currently available.
  ///
  /// This field is required and must be set.
  ///
  /// Required.
  /// Possible string values are:
  /// - "MAXIMUM_ALLOWED_SEVERITY_UNSPECIFIED" : Not specified.
  /// - "BLOCK_ALL" : Block any vulnerability.
  /// - "MINIMAL" : Allow only minimal severity.
  /// - "LOW" : Allow only low severity and lower.
  /// - "MEDIUM" : Allow medium severity and lower.
  /// - "HIGH" : Allow high severity and lower.
  /// - "CRITICAL" : Allow critical severity and lower.
  /// - "ALLOW_ALL" : Allow all severity, even vulnerability with unspecified
  /// severity.
  core.String? maximumUnfixableSeverity;

  VulnerabilityCheck({
    this.allowedCves,
    this.blockedCves,
    this.containerAnalysisVulnerabilityProjects,
    this.maximumFixableSeverity,
    this.maximumUnfixableSeverity,
  });

  VulnerabilityCheck.fromJson(core.Map json_)
      : this(
          allowedCves: json_.containsKey('allowedCves')
              ? (json_['allowedCves'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          blockedCves: json_.containsKey('blockedCves')
              ? (json_['blockedCves'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          containerAnalysisVulnerabilityProjects: json_
                  .containsKey('containerAnalysisVulnerabilityProjects')
              ? (json_['containerAnalysisVulnerabilityProjects'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          maximumFixableSeverity: json_.containsKey('maximumFixableSeverity')
              ? json_['maximumFixableSeverity'] as core.String
              : null,
          maximumUnfixableSeverity:
              json_.containsKey('maximumUnfixableSeverity')
                  ? json_['maximumUnfixableSeverity'] as core.String
                  : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (allowedCves != null) 'allowedCves': allowedCves!,
        if (blockedCves != null) 'blockedCves': blockedCves!,
        if (containerAnalysisVulnerabilityProjects != null)
          'containerAnalysisVulnerabilityProjects':
              containerAnalysisVulnerabilityProjects!,
        if (maximumFixableSeverity != null)
          'maximumFixableSeverity': maximumFixableSeverity!,
        if (maximumUnfixableSeverity != null)
          'maximumUnfixableSeverity': maximumUnfixableSeverity!,
      };
}
