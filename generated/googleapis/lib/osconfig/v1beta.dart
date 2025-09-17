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

/// OS Config API - v1beta
///
/// OS management tools that can be used for patch management, patch compliance,
/// and configuration management on VM instances.
///
/// For more information, see
/// <https://cloud.google.com/compute/docs/osconfig/rest>
///
/// Create an instance of [OSConfigApi] to access these resources:
///
/// - [ProjectsResource]
///   - [ProjectsGuestPoliciesResource]
///   - [ProjectsPatchDeploymentsResource]
///   - [ProjectsPatchJobsResource]
///     - [ProjectsPatchJobsInstanceDetailsResource]
///   - [ProjectsZonesResource]
///     - [ProjectsZonesInstancesResource]
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

class ProjectsResource {
  final commons.ApiRequester _requester;

  ProjectsGuestPoliciesResource get guestPolicies =>
      ProjectsGuestPoliciesResource(_requester);
  ProjectsPatchDeploymentsResource get patchDeployments =>
      ProjectsPatchDeploymentsResource(_requester);
  ProjectsPatchJobsResource get patchJobs =>
      ProjectsPatchJobsResource(_requester);
  ProjectsZonesResource get zones => ProjectsZonesResource(_requester);

  ProjectsResource(commons.ApiRequester client) : _requester = client;
}

class ProjectsGuestPoliciesResource {
  final commons.ApiRequester _requester;

  ProjectsGuestPoliciesResource(commons.ApiRequester client)
    : _requester = client;

  /// Create an OS Config guest policy.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The resource name of the parent using one of the
  /// following forms: `projects/{project_number}`.
  /// Value must have pattern `^projects/\[^/\]+$`.
  ///
  /// [guestPolicyId] - Required. The logical name of the guest policy in the
  /// project with the following restrictions: * Must contain only lowercase
  /// letters, numbers, and hyphens. * Must start with a letter. * Must be
  /// between 1-63 characters. * Must end with a number or a letter. * Must be
  /// unique within the project.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GuestPolicy].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GuestPolicy> create(
    GuestPolicy request,
    core.String parent, {
    core.String? guestPolicyId,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (guestPolicyId != null) 'guestPolicyId': [guestPolicyId],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1beta/' + core.Uri.encodeFull('$parent') + '/guestPolicies';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GuestPolicy.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Delete an OS Config guest policy.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name of the guest policy using one of the
  /// following forms:
  /// `projects/{project_number}/guestPolicies/{guest_policy_id}`.
  /// Value must have pattern `^projects/\[^/\]+/guestPolicies/\[^/\]+$`.
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

    final url_ = 'v1beta/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return Empty.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Get an OS Config guest policy.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name of the guest policy using one of the
  /// following forms:
  /// `projects/{project_number}/guestPolicies/{guest_policy_id}`.
  /// Value must have pattern `^projects/\[^/\]+/guestPolicies/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GuestPolicy].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GuestPolicy> get(
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
    return GuestPolicy.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Get a page of OS Config guest policies.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The resource name of the parent using one of the
  /// following forms: `projects/{project_number}`.
  /// Value must have pattern `^projects/\[^/\]+$`.
  ///
  /// [pageSize] - The maximum number of guest policies to return.
  ///
  /// [pageToken] - A pagination token returned from a previous call to
  /// `ListGuestPolicies` that indicates where this listing should continue
  /// from.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListGuestPoliciesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListGuestPoliciesResponse> list(
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

    final url_ = 'v1beta/' + core.Uri.encodeFull('$parent') + '/guestPolicies';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListGuestPoliciesResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Update an OS Config guest policy.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Unique name of the resource in this project using one
  /// of the following forms:
  /// `projects/{project_number}/guestPolicies/{guest_policy_id}`.
  /// Value must have pattern `^projects/\[^/\]+/guestPolicies/\[^/\]+$`.
  ///
  /// [updateMask] - Field mask that controls which fields of the guest policy
  /// should be updated.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GuestPolicy].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GuestPolicy> patch(
    GuestPolicy request,
    core.String name, {
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
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
    return GuestPolicy.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class ProjectsPatchDeploymentsResource {
  final commons.ApiRequester _requester;

  ProjectsPatchDeploymentsResource(commons.ApiRequester client)
    : _requester = client;

  /// Create an OS Config patch deployment.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The project to apply this patch deployment to in the
  /// form `projects / * `.
  /// Value must have pattern `^projects/\[^/\]+$`.
  ///
  /// [patchDeploymentId] - Required. A name for the patch deployment in the
  /// project. When creating a name the following rules apply: * Must contain
  /// only lowercase letters, numbers, and hyphens. * Must start with a letter.
  /// * Must be between 1-63 characters. * Must end with a number or a letter. *
  /// Must be unique within the project.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [PatchDeployment].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<PatchDeployment> create(
    PatchDeployment request,
    core.String parent, {
    core.String? patchDeploymentId,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (patchDeploymentId != null) 'patchDeploymentId': [patchDeploymentId],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1beta/' + core.Uri.encodeFull('$parent') + '/patchDeployments';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return PatchDeployment.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Delete an OS Config patch deployment.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name of the patch deployment in the form
  /// `projects / * /patchDeployments / * `.
  /// Value must have pattern `^projects/\[^/\]+/patchDeployments/\[^/\]+$`.
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

    final url_ = 'v1beta/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return Empty.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Get an OS Config patch deployment.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name of the patch deployment in the form
  /// `projects / * /patchDeployments / * `.
  /// Value must have pattern `^projects/\[^/\]+/patchDeployments/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [PatchDeployment].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<PatchDeployment> get(
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
    return PatchDeployment.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Get a page of OS Config patch deployments.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The resource name of the parent in the form `projects
  /// / * `.
  /// Value must have pattern `^projects/\[^/\]+$`.
  ///
  /// [pageSize] - Optional. The maximum number of patch deployments to return.
  /// Default is 100.
  ///
  /// [pageToken] - Optional. A pagination token returned from a previous call
  /// to ListPatchDeployments that indicates where this listing should continue
  /// from.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListPatchDeploymentsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListPatchDeploymentsResponse> list(
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
        'v1beta/' + core.Uri.encodeFull('$parent') + '/patchDeployments';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListPatchDeploymentsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Update an OS Config patch deployment.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Unique name for the patch deployment resource in a project. The
  /// patch deployment name is in the form:
  /// `projects/{project_id}/patchDeployments/{patch_deployment_id}`. This field
  /// is ignored when you create a new patch deployment.
  /// Value must have pattern `^projects/\[^/\]+/patchDeployments/\[^/\]+$`.
  ///
  /// [updateMask] - Optional. Field mask that controls which fields of the
  /// patch deployment should be updated.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [PatchDeployment].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<PatchDeployment> patch(
    PatchDeployment request,
    core.String name, {
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
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
    return PatchDeployment.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Change state of patch deployment to "PAUSED".
  ///
  /// Patch deployment in paused state doesn't generate patch jobs.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name of the patch deployment in the form
  /// `projects / * /patchDeployments / * `.
  /// Value must have pattern `^projects/\[^/\]+/patchDeployments/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [PatchDeployment].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<PatchDeployment> pause(
    PausePatchDeploymentRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1beta/' + core.Uri.encodeFull('$name') + ':pause';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return PatchDeployment.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Change state of patch deployment back to "ACTIVE".
  ///
  /// Patch deployment in active state continues to generate patch jobs.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name of the patch deployment in the form
  /// `projects / * /patchDeployments / * `.
  /// Value must have pattern `^projects/\[^/\]+/patchDeployments/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [PatchDeployment].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<PatchDeployment> resume(
    ResumePatchDeploymentRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1beta/' + core.Uri.encodeFull('$name') + ':resume';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return PatchDeployment.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class ProjectsPatchJobsResource {
  final commons.ApiRequester _requester;

  ProjectsPatchJobsInstanceDetailsResource get instanceDetails =>
      ProjectsPatchJobsInstanceDetailsResource(_requester);

  ProjectsPatchJobsResource(commons.ApiRequester client) : _requester = client;

  /// Cancel a patch job.
  ///
  /// The patch job must be active. Canceled patch jobs cannot be restarted.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Name of the patch in the form `projects / * /patchJobs
  /// / * `
  /// Value must have pattern `^projects/\[^/\]+/patchJobs/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [PatchJob].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<PatchJob> cancel(
    CancelPatchJobRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1beta/' + core.Uri.encodeFull('$name') + ':cancel';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return PatchJob.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Patch VM instances by creating and running a patch job.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The project in which to run this patch in the form
  /// `projects / * `
  /// Value must have pattern `^projects/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [PatchJob].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<PatchJob> execute(
    ExecutePatchJobRequest request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1beta/' + core.Uri.encodeFull('$parent') + '/patchJobs:execute';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return PatchJob.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Get the patch job.
  ///
  /// This can be used to track the progress of an ongoing patch job or review
  /// the details of completed jobs.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Name of the patch in the form `projects / * /patchJobs
  /// / * `
  /// Value must have pattern `^projects/\[^/\]+/patchJobs/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [PatchJob].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<PatchJob> get(core.String name, {core.String? $fields}) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1beta/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return PatchJob.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Get a list of patch jobs.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. In the form of `projects / * `
  /// Value must have pattern `^projects/\[^/\]+$`.
  ///
  /// [filter] - If provided, this field specifies the criteria that must be met
  /// by patch jobs to be included in the response. Currently, filtering is only
  /// available on the patch_deployment field.
  ///
  /// [pageSize] - The maximum number of instance status to return.
  ///
  /// [pageToken] - A pagination token returned from a previous call that
  /// indicates where this listing should continue from.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListPatchJobsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListPatchJobsResponse> list(
    core.String parent, {
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

    final url_ = 'v1beta/' + core.Uri.encodeFull('$parent') + '/patchJobs';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListPatchJobsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class ProjectsPatchJobsInstanceDetailsResource {
  final commons.ApiRequester _requester;

  ProjectsPatchJobsInstanceDetailsResource(commons.ApiRequester client)
    : _requester = client;

  /// Get a list of instance details for a given patch job.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent for the instances are in the form of
  /// `projects / * /patchJobs / * `.
  /// Value must have pattern `^projects/\[^/\]+/patchJobs/\[^/\]+$`.
  ///
  /// [filter] - A filter expression that filters results listed in the
  /// response. This field supports filtering results by instance zone, name,
  /// state, or `failure_reason`.
  ///
  /// [pageSize] - The maximum number of instance details records to return.
  /// Default is 100.
  ///
  /// [pageToken] - A pagination token returned from a previous call that
  /// indicates where this listing should continue from.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListPatchJobInstanceDetailsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListPatchJobInstanceDetailsResponse> list(
    core.String parent, {
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

    final url_ =
        'v1beta/' + core.Uri.encodeFull('$parent') + '/instanceDetails';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListPatchJobInstanceDetailsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class ProjectsZonesResource {
  final commons.ApiRequester _requester;

  ProjectsZonesInstancesResource get instances =>
      ProjectsZonesInstancesResource(_requester);

  ProjectsZonesResource(commons.ApiRequester client) : _requester = client;
}

class ProjectsZonesInstancesResource {
  final commons.ApiRequester _requester;

  ProjectsZonesInstancesResource(commons.ApiRequester client)
    : _requester = client;

  /// Lookup the effective guest policy that applies to a VM instance.
  ///
  /// This lookup merges all policies that are assigned to the instance
  /// ancestry.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [instance] - Required. The VM instance whose policies are being looked up.
  /// Value must have pattern
  /// `^projects/\[^/\]+/zones/\[^/\]+/instances/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [EffectiveGuestPolicy].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<EffectiveGuestPolicy> lookupEffectiveGuestPolicy(
    LookupEffectiveGuestPolicyRequest request,
    core.String instance, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1beta/' +
        core.Uri.encodeFull('$instance') +
        ':lookupEffectiveGuestPolicy';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return EffectiveGuestPolicy.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

/// Represents a single Apt package repository.
///
/// This repository is added to a repo file that is stored at
/// `/etc/apt/sources.list.d/google_osconfig.list`.
class AptRepository {
  /// Type of archive files in this repository.
  ///
  /// The default behavior is DEB.
  /// Possible string values are:
  /// - "ARCHIVE_TYPE_UNSPECIFIED" : Unspecified.
  /// - "DEB" : DEB indicates that the archive contains binary files.
  /// - "DEB_SRC" : DEB_SRC indicates that the archive contains source files.
  core.String? archiveType;

  /// List of components for this repository.
  ///
  /// Must contain at least one item.
  ///
  /// Required.
  core.List<core.String>? components;

  /// Distribution of this repository.
  ///
  /// Required.
  core.String? distribution;

  /// URI of the key file for this repository.
  ///
  /// The agent maintains a keyring at
  /// `/etc/apt/trusted.gpg.d/osconfig_agent_managed.gpg` containing all the
  /// keys in any applied guest policy.
  core.String? gpgKey;

  /// URI for this repository.
  ///
  /// Required.
  core.String? uri;

  AptRepository({
    this.archiveType,
    this.components,
    this.distribution,
    this.gpgKey,
    this.uri,
  });

  AptRepository.fromJson(core.Map json_)
    : this(
        archiveType: json_['archiveType'] as core.String?,
        components:
            (json_['components'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        distribution: json_['distribution'] as core.String?,
        gpgKey: json_['gpgKey'] as core.String?,
        uri: json_['uri'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (archiveType != null) 'archiveType': archiveType!,
    if (components != null) 'components': components!,
    if (distribution != null) 'distribution': distribution!,
    if (gpgKey != null) 'gpgKey': gpgKey!,
    if (uri != null) 'uri': uri!,
  };
}

/// Apt patching is completed by executing `apt-get update && apt-get upgrade`.
///
/// Additional options can be set to control how this is executed.
typedef AptSettings = $AptSettings;

/// An assignment represents the group or groups of VM instances that the policy
/// applies to.
///
/// If an assignment is empty, it applies to all VM instances. Otherwise, the
/// targeted VM instances must meet all the criteria specified. So if both
/// labels and zones are specified, the policy applies to VM instances with
/// those labels and in those zones.
class Assignment {
  /// Targets instances matching at least one of these label sets.
  ///
  /// This allows an assignment to target disparate groups, for example
  /// "env=prod or env=staging".
  core.List<AssignmentGroupLabel>? groupLabels;

  /// Targets VM instances whose name starts with one of these prefixes.
  ///
  /// Like labels, this is another way to group VM instances when targeting
  /// configs, for example prefix="prod-". Only supported for project-level
  /// policies.
  core.List<core.String>? instanceNamePrefixes;

  /// Targets any of the instances specified.
  ///
  /// Instances are specified by their URI in the form
  /// `zones/[ZONE]/instances/[INSTANCE_NAME]`. Instance targeting is uncommon
  /// and is supported to facilitate the management of changes by the instance
  /// or to target specific VM instances for development and testing. Only
  /// supported for project-level policies and must reference instances within
  /// this project.
  core.List<core.String>? instances;

  /// Targets VM instances matching at least one of the following OS types.
  ///
  /// VM instances must match all supplied criteria for a given OsType to be
  /// included.
  core.List<AssignmentOsType>? osTypes;

  /// Targets instances in any of these zones.
  ///
  /// Leave empty to target instances in any zone. Zonal targeting is uncommon
  /// and is supported to facilitate the management of changes by zone.
  core.List<core.String>? zones;

  Assignment({
    this.groupLabels,
    this.instanceNamePrefixes,
    this.instances,
    this.osTypes,
    this.zones,
  });

  Assignment.fromJson(core.Map json_)
    : this(
        groupLabels:
            (json_['groupLabels'] as core.List?)
                ?.map(
                  (value) => AssignmentGroupLabel.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        instanceNamePrefixes:
            (json_['instanceNamePrefixes'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        instances:
            (json_['instances'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        osTypes:
            (json_['osTypes'] as core.List?)
                ?.map(
                  (value) => AssignmentOsType.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        zones:
            (json_['zones'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (groupLabels != null) 'groupLabels': groupLabels!,
    if (instanceNamePrefixes != null)
      'instanceNamePrefixes': instanceNamePrefixes!,
    if (instances != null) 'instances': instances!,
    if (osTypes != null) 'osTypes': osTypes!,
    if (zones != null) 'zones': zones!,
  };
}

/// Represents a group of VM intances that can be identified as having all these
/// labels, for example "env=prod and app=web".
class AssignmentGroupLabel {
  /// Google Compute Engine instance labels that must be present for an instance
  /// to be included in this assignment group.
  core.Map<core.String, core.String>? labels;

  AssignmentGroupLabel({this.labels});

  AssignmentGroupLabel.fromJson(core.Map json_)
    : this(
        labels: (json_['labels'] as core.Map<core.String, core.dynamic>?)?.map(
          (key, value) => core.MapEntry(key, value as core.String),
        ),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (labels != null) 'labels': labels!,
  };
}

/// Defines the criteria for selecting VM Instances by OS type.
class AssignmentOsType {
  /// Targets VM instances with OS Inventory enabled and having the following OS
  /// architecture.
  core.String? osArchitecture;

  /// Targets VM instances with OS Inventory enabled and having the following OS
  /// short name, for example "debian" or "windows".
  core.String? osShortName;

  /// Targets VM instances with OS Inventory enabled and having the following
  /// following OS version.
  core.String? osVersion;

  AssignmentOsType({this.osArchitecture, this.osShortName, this.osVersion});

  AssignmentOsType.fromJson(core.Map json_)
    : this(
        osArchitecture: json_['osArchitecture'] as core.String?,
        osShortName: json_['osShortName'] as core.String?,
        osVersion: json_['osVersion'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (osArchitecture != null) 'osArchitecture': osArchitecture!,
    if (osShortName != null) 'osShortName': osShortName!,
    if (osVersion != null) 'osVersion': osVersion!,
  };
}

/// Message for canceling a patch job.
typedef CancelPatchJobRequest = $Empty;

/// The effective guest policy that applies to a VM instance.
class EffectiveGuestPolicy {
  /// List of package repository configurations assigned to the VM instance.
  core.List<EffectiveGuestPolicySourcedPackageRepository>? packageRepositories;

  /// List of package configurations assigned to the VM instance.
  core.List<EffectiveGuestPolicySourcedPackage>? packages;

  /// List of recipes assigned to the VM instance.
  core.List<EffectiveGuestPolicySourcedSoftwareRecipe>? softwareRecipes;

  EffectiveGuestPolicy({
    this.packageRepositories,
    this.packages,
    this.softwareRecipes,
  });

  EffectiveGuestPolicy.fromJson(core.Map json_)
    : this(
        packageRepositories:
            (json_['packageRepositories'] as core.List?)
                ?.map(
                  (value) =>
                      EffectiveGuestPolicySourcedPackageRepository.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
        packages:
            (json_['packages'] as core.List?)
                ?.map(
                  (value) => EffectiveGuestPolicySourcedPackage.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        softwareRecipes:
            (json_['softwareRecipes'] as core.List?)
                ?.map(
                  (value) => EffectiveGuestPolicySourcedSoftwareRecipe.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (packageRepositories != null)
      'packageRepositories': packageRepositories!,
    if (packages != null) 'packages': packages!,
    if (softwareRecipes != null) 'softwareRecipes': softwareRecipes!,
  };
}

/// A guest policy package including its source.
class EffectiveGuestPolicySourcedPackage {
  /// A software package to configure on the VM instance.
  Package? package;

  /// Name of the guest policy providing this config.
  core.String? source;

  EffectiveGuestPolicySourcedPackage({this.package, this.source});

  EffectiveGuestPolicySourcedPackage.fromJson(core.Map json_)
    : this(
        package:
            json_.containsKey('package')
                ? Package.fromJson(
                  json_['package'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        source: json_['source'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (package != null) 'package': package!,
    if (source != null) 'source': source!,
  };
}

/// A guest policy package repository including its source.
class EffectiveGuestPolicySourcedPackageRepository {
  /// A software package repository to configure on the VM instance.
  PackageRepository? packageRepository;

  /// Name of the guest policy providing this config.
  core.String? source;

  EffectiveGuestPolicySourcedPackageRepository({
    this.packageRepository,
    this.source,
  });

  EffectiveGuestPolicySourcedPackageRepository.fromJson(core.Map json_)
    : this(
        packageRepository:
            json_.containsKey('packageRepository')
                ? PackageRepository.fromJson(
                  json_['packageRepository']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        source: json_['source'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (packageRepository != null) 'packageRepository': packageRepository!,
    if (source != null) 'source': source!,
  };
}

/// A guest policy recipe including its source.
class EffectiveGuestPolicySourcedSoftwareRecipe {
  /// A software recipe to configure on the VM instance.
  SoftwareRecipe? softwareRecipe;

  /// Name of the guest policy providing this config.
  core.String? source;

  EffectiveGuestPolicySourcedSoftwareRecipe({this.softwareRecipe, this.source});

  EffectiveGuestPolicySourcedSoftwareRecipe.fromJson(core.Map json_)
    : this(
        softwareRecipe:
            json_.containsKey('softwareRecipe')
                ? SoftwareRecipe.fromJson(
                  json_['softwareRecipe']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        source: json_['source'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (softwareRecipe != null) 'softwareRecipe': softwareRecipe!,
    if (source != null) 'source': source!,
  };
}

/// A generic empty message that you can re-use to avoid defining duplicated
/// empty messages in your APIs.
///
/// A typical example is to use it as the request or the response type of an API
/// method. For instance: service Foo { rpc Bar(google.protobuf.Empty) returns
/// (google.protobuf.Empty); }
typedef Empty = $Empty;

/// A step that runs an executable for a PatchJob.
class ExecStep {
  /// The ExecStepConfig for all Linux VMs targeted by the PatchJob.
  ExecStepConfig? linuxExecStepConfig;

  /// The ExecStepConfig for all Windows VMs targeted by the PatchJob.
  ExecStepConfig? windowsExecStepConfig;

  ExecStep({this.linuxExecStepConfig, this.windowsExecStepConfig});

  ExecStep.fromJson(core.Map json_)
    : this(
        linuxExecStepConfig:
            json_.containsKey('linuxExecStepConfig')
                ? ExecStepConfig.fromJson(
                  json_['linuxExecStepConfig']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        windowsExecStepConfig:
            json_.containsKey('windowsExecStepConfig')
                ? ExecStepConfig.fromJson(
                  json_['windowsExecStepConfig']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (linuxExecStepConfig != null)
      'linuxExecStepConfig': linuxExecStepConfig!,
    if (windowsExecStepConfig != null)
      'windowsExecStepConfig': windowsExecStepConfig!,
  };
}

/// Common configurations for an ExecStep.
class ExecStepConfig {
  /// Defaults to \[0\].
  ///
  /// A list of possible return values that the execution can return to indicate
  /// a success.
  core.List<core.int>? allowedSuccessCodes;

  /// A Google Cloud Storage object containing the executable.
  GcsObject? gcsObject;

  /// The script interpreter to use to run the script.
  ///
  /// If no interpreter is specified the script will be executed directly, which
  /// will likely only succeed for scripts with
  /// [shebang lines](https://en.wikipedia.org/wiki/Shebang_\(Unix\)).
  /// Possible string values are:
  /// - "INTERPRETER_UNSPECIFIED" : If the interpreter is not specified, the
  /// value defaults to `NONE`.
  /// - "NONE" : Indicates that the file is run as follows on each operating
  /// system: + For Linux VMs, the file is ran as an executable and the
  /// interpreter might be parsed from the
  /// [shebang line](https://wikipedia.org/wiki/Shebang_(Unix)) of the file. +
  /// For Windows VM, this value is not supported.
  /// - "SHELL" : Indicates that the file is run with `/bin/sh` on Linux and
  /// `cmd` on Windows.
  /// - "POWERSHELL" : Indicates that the file is run with PowerShell.
  core.String? interpreter;

  /// An absolute path to the executable on the VM.
  core.String? localPath;

  ExecStepConfig({
    this.allowedSuccessCodes,
    this.gcsObject,
    this.interpreter,
    this.localPath,
  });

  ExecStepConfig.fromJson(core.Map json_)
    : this(
        allowedSuccessCodes:
            (json_['allowedSuccessCodes'] as core.List?)
                ?.map((value) => value as core.int)
                .toList(),
        gcsObject:
            json_.containsKey('gcsObject')
                ? GcsObject.fromJson(
                  json_['gcsObject'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        interpreter: json_['interpreter'] as core.String?,
        localPath: json_['localPath'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (allowedSuccessCodes != null)
      'allowedSuccessCodes': allowedSuccessCodes!,
    if (gcsObject != null) 'gcsObject': gcsObject!,
    if (interpreter != null) 'interpreter': interpreter!,
    if (localPath != null) 'localPath': localPath!,
  };
}

/// A request message to initiate patching across Compute Engine instances.
class ExecutePatchJobRequest {
  /// Description of the patch job.
  ///
  /// Length of the description is limited to 1024 characters.
  core.String? description;

  /// Display name for this patch job.
  ///
  /// This does not have to be unique.
  core.String? displayName;

  /// If this patch is a dry-run only, instances are contacted but will do
  /// nothing.
  core.bool? dryRun;

  /// Duration of the patch job.
  ///
  /// After the duration ends, the patch job times out.
  core.String? duration;

  /// Instances to patch, either explicitly or filtered by some criteria such as
  /// zone or labels.
  ///
  /// Required.
  PatchInstanceFilter? instanceFilter;

  /// Patch configuration being applied.
  ///
  /// If omitted, instances are patched using the default configurations.
  PatchConfig? patchConfig;

  /// Rollout strategy of the patch job.
  PatchRollout? rollout;

  ExecutePatchJobRequest({
    this.description,
    this.displayName,
    this.dryRun,
    this.duration,
    this.instanceFilter,
    this.patchConfig,
    this.rollout,
  });

  ExecutePatchJobRequest.fromJson(core.Map json_)
    : this(
        description: json_['description'] as core.String?,
        displayName: json_['displayName'] as core.String?,
        dryRun: json_['dryRun'] as core.bool?,
        duration: json_['duration'] as core.String?,
        instanceFilter:
            json_.containsKey('instanceFilter')
                ? PatchInstanceFilter.fromJson(
                  json_['instanceFilter']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        patchConfig:
            json_.containsKey('patchConfig')
                ? PatchConfig.fromJson(
                  json_['patchConfig'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        rollout:
            json_.containsKey('rollout')
                ? PatchRollout.fromJson(
                  json_['rollout'] as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (description != null) 'description': description!,
    if (displayName != null) 'displayName': displayName!,
    if (dryRun != null) 'dryRun': dryRun!,
    if (duration != null) 'duration': duration!,
    if (instanceFilter != null) 'instanceFilter': instanceFilter!,
    if (patchConfig != null) 'patchConfig': patchConfig!,
    if (rollout != null) 'rollout': rollout!,
  };
}

/// Message encapsulating a value that can be either absolute ("fixed") or
/// relative ("percent") to a value.
typedef FixedOrPercent = $FixedOrPercent00;

/// Google Cloud Storage object representation.
class GcsObject {
  /// Bucket of the Google Cloud Storage object.
  ///
  /// Required.
  core.String? bucket;

  /// Generation number of the Google Cloud Storage object.
  ///
  /// This is used to ensure that the ExecStep specified by this PatchJob does
  /// not change.
  ///
  /// Required.
  core.String? generationNumber;

  /// Name of the Google Cloud Storage object.
  ///
  /// Required.
  core.String? object;

  GcsObject({this.bucket, this.generationNumber, this.object});

  GcsObject.fromJson(core.Map json_)
    : this(
        bucket: json_['bucket'] as core.String?,
        generationNumber: json_['generationNumber'] as core.String?,
        object: json_['object'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (bucket != null) 'bucket': bucket!,
    if (generationNumber != null) 'generationNumber': generationNumber!,
    if (object != null) 'object': object!,
  };
}

/// Represents a Goo package repository.
///
/// These is added to a repo file that is stored at
/// C:/ProgramData/GooGet/repos/google_osconfig.repo.
typedef GooRepository = $GooRepository;

/// Googet patching is performed by running `googet update`.
typedef GooSettings = $Empty;

/// An OS Config resource representing a guest configuration policy.
///
/// These policies represent the desired state for VM instance guest
/// environments including packages to install or remove, package repository
/// configurations, and software to install.
class GuestPolicy {
  /// Specifies the VM instances that are assigned to this policy.
  ///
  /// This allows you to target sets or groups of VM instances by different
  /// parameters such as labels, names, OS, or zones. If left empty, all VM
  /// instances underneath this policy are targeted. At the same level in the
  /// resource hierarchy (that is within a project), the service prevents the
  /// creation of multiple policies that conflict with each other. For more
  /// information, see how the service \[handles assignment
  /// conflicts\](/compute/docs/os-config-management/create-guest-policy#handle-conflicts).
  ///
  /// Required.
  Assignment? assignment;

  /// Time this guest policy was created.
  ///
  /// Output only.
  core.String? createTime;

  /// Description of the guest policy.
  ///
  /// Length of the description is limited to 1024 characters.
  core.String? description;

  /// The etag for this guest policy.
  ///
  /// If this is provided on update, it must match the server's etag.
  core.String? etag;

  /// Unique name of the resource in this project using one of the following
  /// forms: `projects/{project_number}/guestPolicies/{guest_policy_id}`.
  ///
  /// Required.
  core.String? name;

  /// A list of package repositories to configure on the VM instance.
  ///
  /// This is done before any other configs are applied so they can use these
  /// repos. Package repositories are only configured if the corresponding
  /// package manager(s) are available.
  core.List<PackageRepository>? packageRepositories;

  /// The software packages to be managed by this policy.
  core.List<Package>? packages;

  /// A list of Recipes to install on the VM instance.
  core.List<SoftwareRecipe>? recipes;

  /// Last time this guest policy was updated.
  ///
  /// Output only.
  core.String? updateTime;

  GuestPolicy({
    this.assignment,
    this.createTime,
    this.description,
    this.etag,
    this.name,
    this.packageRepositories,
    this.packages,
    this.recipes,
    this.updateTime,
  });

  GuestPolicy.fromJson(core.Map json_)
    : this(
        assignment:
            json_.containsKey('assignment')
                ? Assignment.fromJson(
                  json_['assignment'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        createTime: json_['createTime'] as core.String?,
        description: json_['description'] as core.String?,
        etag: json_['etag'] as core.String?,
        name: json_['name'] as core.String?,
        packageRepositories:
            (json_['packageRepositories'] as core.List?)
                ?.map(
                  (value) => PackageRepository.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        packages:
            (json_['packages'] as core.List?)
                ?.map(
                  (value) => Package.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        recipes:
            (json_['recipes'] as core.List?)
                ?.map(
                  (value) => SoftwareRecipe.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        updateTime: json_['updateTime'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (assignment != null) 'assignment': assignment!,
    if (createTime != null) 'createTime': createTime!,
    if (description != null) 'description': description!,
    if (etag != null) 'etag': etag!,
    if (name != null) 'name': name!,
    if (packageRepositories != null)
      'packageRepositories': packageRepositories!,
    if (packages != null) 'packages': packages!,
    if (recipes != null) 'recipes': recipes!,
    if (updateTime != null) 'updateTime': updateTime!,
  };
}

/// A response message for listing guest policies.
class ListGuestPoliciesResponse {
  /// The list of GuestPolicies.
  core.List<GuestPolicy>? guestPolicies;

  /// A pagination token that can be used to get the next page of guest
  /// policies.
  core.String? nextPageToken;

  ListGuestPoliciesResponse({this.guestPolicies, this.nextPageToken});

  ListGuestPoliciesResponse.fromJson(core.Map json_)
    : this(
        guestPolicies:
            (json_['guestPolicies'] as core.List?)
                ?.map(
                  (value) => GuestPolicy.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        nextPageToken: json_['nextPageToken'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (guestPolicies != null) 'guestPolicies': guestPolicies!,
    if (nextPageToken != null) 'nextPageToken': nextPageToken!,
  };
}

/// A response message for listing patch deployments.
class ListPatchDeploymentsResponse {
  /// A pagination token that can be used to get the next page of patch
  /// deployments.
  core.String? nextPageToken;

  /// The list of patch deployments.
  core.List<PatchDeployment>? patchDeployments;

  ListPatchDeploymentsResponse({this.nextPageToken, this.patchDeployments});

  ListPatchDeploymentsResponse.fromJson(core.Map json_)
    : this(
        nextPageToken: json_['nextPageToken'] as core.String?,
        patchDeployments:
            (json_['patchDeployments'] as core.List?)
                ?.map(
                  (value) => PatchDeployment.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (nextPageToken != null) 'nextPageToken': nextPageToken!,
    if (patchDeployments != null) 'patchDeployments': patchDeployments!,
  };
}

/// A response message for listing the instances details for a patch job.
class ListPatchJobInstanceDetailsResponse {
  /// A pagination token that can be used to get the next page of results.
  core.String? nextPageToken;

  /// A list of instance status.
  core.List<PatchJobInstanceDetails>? patchJobInstanceDetails;

  ListPatchJobInstanceDetailsResponse({
    this.nextPageToken,
    this.patchJobInstanceDetails,
  });

  ListPatchJobInstanceDetailsResponse.fromJson(core.Map json_)
    : this(
        nextPageToken: json_['nextPageToken'] as core.String?,
        patchJobInstanceDetails:
            (json_['patchJobInstanceDetails'] as core.List?)
                ?.map(
                  (value) => PatchJobInstanceDetails.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (nextPageToken != null) 'nextPageToken': nextPageToken!,
    if (patchJobInstanceDetails != null)
      'patchJobInstanceDetails': patchJobInstanceDetails!,
  };
}

/// A response message for listing patch jobs.
class ListPatchJobsResponse {
  /// A pagination token that can be used to get the next page of results.
  core.String? nextPageToken;

  /// The list of patch jobs.
  core.List<PatchJob>? patchJobs;

  ListPatchJobsResponse({this.nextPageToken, this.patchJobs});

  ListPatchJobsResponse.fromJson(core.Map json_)
    : this(
        nextPageToken: json_['nextPageToken'] as core.String?,
        patchJobs:
            (json_['patchJobs'] as core.List?)
                ?.map(
                  (value) => PatchJob.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (nextPageToken != null) 'nextPageToken': nextPageToken!,
    if (patchJobs != null) 'patchJobs': patchJobs!,
  };
}

/// A request message for getting the effective guest policy assigned to the
/// instance.
class LookupEffectiveGuestPolicyRequest {
  /// Architecture of OS running on the instance.
  ///
  /// The OS Config agent only provides this field for targeting if OS Inventory
  /// is enabled for that instance.
  core.String? osArchitecture;

  /// Short name of the OS running on the instance.
  ///
  /// The OS Config agent only provides this field for targeting if OS Inventory
  /// is enabled for that instance.
  core.String? osShortName;

  /// Version of the OS running on the instance.
  ///
  /// The OS Config agent only provides this field for targeting if OS Inventory
  /// is enabled for that VM instance.
  core.String? osVersion;

  LookupEffectiveGuestPolicyRequest({
    this.osArchitecture,
    this.osShortName,
    this.osVersion,
  });

  LookupEffectiveGuestPolicyRequest.fromJson(core.Map json_)
    : this(
        osArchitecture: json_['osArchitecture'] as core.String?,
        osShortName: json_['osShortName'] as core.String?,
        osVersion: json_['osVersion'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (osArchitecture != null) 'osArchitecture': osArchitecture!,
    if (osShortName != null) 'osShortName': osShortName!,
    if (osVersion != null) 'osVersion': osVersion!,
  };
}

/// Represents a monthly schedule.
///
/// An example of a valid monthly schedule is "on the third Tuesday of the
/// month" or "on the 15th of the month".
class MonthlySchedule {
  /// One day of the month.
  ///
  /// 1-31 indicates the 1st to the 31st day. -1 indicates the last day of the
  /// month. Months without the target day will be skipped. For example, a
  /// schedule to run "every month on the 31st" will not run in February, April,
  /// June, etc.
  ///
  /// Required.
  core.int? monthDay;

  /// Week day in a month.
  ///
  /// Required.
  WeekDayOfMonth? weekDayOfMonth;

  MonthlySchedule({this.monthDay, this.weekDayOfMonth});

  MonthlySchedule.fromJson(core.Map json_)
    : this(
        monthDay: json_['monthDay'] as core.int?,
        weekDayOfMonth:
            json_.containsKey('weekDayOfMonth')
                ? WeekDayOfMonth.fromJson(
                  json_['weekDayOfMonth']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (monthDay != null) 'monthDay': monthDay!,
    if (weekDayOfMonth != null) 'weekDayOfMonth': weekDayOfMonth!,
  };
}

/// Sets the time for a one time patch deployment.
///
/// Timestamp is in [RFC3339](https://www.ietf.org/rfc/rfc3339.txt) text format.
typedef OneTimeSchedule = $OneTimeSchedule;

/// Package is a reference to the software package to be installed or removed.
///
/// The agent on the VM instance uses the system package manager to apply the
/// config. These are the commands that the agent uses to install or remove
/// packages. Apt install: `apt-get update && apt-get -y install package1
/// package2 package3` remove: `apt-get -y remove package1 package2 package3`
/// Yum install: `yum -y install package1 package2 package3` remove: `yum -y
/// remove package1 package2 package3` Zypper install: `zypper install package1
/// package2 package3` remove: `zypper rm package1 package2` Googet install:
/// `googet -noconfirm install package1 package2 package3` remove: `googet
/// -noconfirm remove package1 package2 package3`
class Package {
  /// The desired_state the agent should maintain for this package.
  ///
  /// The default is to ensure the package is installed.
  /// Possible string values are:
  /// - "DESIRED_STATE_UNSPECIFIED" : The default is to ensure the package is
  /// installed.
  /// - "INSTALLED" : The agent ensures that the package is installed.
  /// - "UPDATED" : The agent ensures that the package is installed and
  /// periodically checks for and install any updates.
  /// - "REMOVED" : The agent ensures that the package is not installed and
  /// uninstall it if detected.
  core.String? desiredState;

  /// Type of package manager that can be used to install this package.
  ///
  /// If a system does not have the package manager, the package is not
  /// installed or removed no error message is returned. By default, or if you
  /// specify `ANY`, the agent attempts to install and remove this package using
  /// the default package manager. This is useful when creating a policy that
  /// applies to different types of systems. The default behavior is ANY.
  /// Possible string values are:
  /// - "MANAGER_UNSPECIFIED" : The default behavior is ANY.
  /// - "ANY" : Apply this package config using the default system package
  /// manager.
  /// - "APT" : Apply this package config only if Apt is available on the
  /// system.
  /// - "YUM" : Apply this package config only if Yum is available on the
  /// system.
  /// - "ZYPPER" : Apply this package config only if Zypper is available on the
  /// system.
  /// - "GOO" : Apply this package config only if GooGet is available on the
  /// system.
  core.String? manager;

  /// The name of the package.
  ///
  /// A package is uniquely identified for conflict validation by checking the
  /// package name and the manager(s) that the package targets.
  ///
  /// Required.
  core.String? name;

  Package({this.desiredState, this.manager, this.name});

  Package.fromJson(core.Map json_)
    : this(
        desiredState: json_['desiredState'] as core.String?,
        manager: json_['manager'] as core.String?,
        name: json_['name'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (desiredState != null) 'desiredState': desiredState!,
    if (manager != null) 'manager': manager!,
    if (name != null) 'name': name!,
  };
}

/// A package repository.
class PackageRepository {
  /// An Apt Repository.
  AptRepository? apt;

  /// A Goo Repository.
  GooRepository? goo;

  /// A Yum Repository.
  YumRepository? yum;

  /// A Zypper Repository.
  ZypperRepository? zypper;

  PackageRepository({this.apt, this.goo, this.yum, this.zypper});

  PackageRepository.fromJson(core.Map json_)
    : this(
        apt:
            json_.containsKey('apt')
                ? AptRepository.fromJson(
                  json_['apt'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        goo:
            json_.containsKey('goo')
                ? GooRepository.fromJson(
                  json_['goo'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        yum:
            json_.containsKey('yum')
                ? YumRepository.fromJson(
                  json_['yum'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        zypper:
            json_.containsKey('zypper')
                ? ZypperRepository.fromJson(
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

/// Patch configuration specifications.
///
/// Contains details on how to apply the patch(es) to a VM instance.
class PatchConfig {
  /// Apt update settings.
  ///
  /// Use this setting to override the default `apt` patch rules.
  AptSettings? apt;

  /// Goo update settings.
  ///
  /// Use this setting to override the default `goo` patch rules.
  GooSettings? goo;

  /// Allows the patch job to run on Managed instance groups (MIGs).
  core.bool? migInstancesAllowed;

  /// The `ExecStep` to run after the patch update.
  ExecStep? postStep;

  /// The `ExecStep` to run before the patch update.
  ExecStep? preStep;

  /// Post-patch reboot settings.
  /// Possible string values are:
  /// - "REBOOT_CONFIG_UNSPECIFIED" : The default behavior is DEFAULT.
  /// - "DEFAULT" : The agent decides if a reboot is necessary by checking
  /// signals such as registry keys on Windows or `/var/run/reboot-required` on
  /// APT based systems. On RPM based systems, a set of core system package
  /// install times are compared with system boot time.
  /// - "ALWAYS" : Always reboot the machine after the update completes.
  /// - "NEVER" : Never reboot the machine after the update completes.
  core.String? rebootConfig;

  /// Windows update settings.
  ///
  /// Use this override the default windows patch rules.
  WindowsUpdateSettings? windowsUpdate;

  /// Yum update settings.
  ///
  /// Use this setting to override the default `yum` patch rules.
  YumSettings? yum;

  /// Zypper update settings.
  ///
  /// Use this setting to override the default `zypper` patch rules.
  ZypperSettings? zypper;

  PatchConfig({
    this.apt,
    this.goo,
    this.migInstancesAllowed,
    this.postStep,
    this.preStep,
    this.rebootConfig,
    this.windowsUpdate,
    this.yum,
    this.zypper,
  });

  PatchConfig.fromJson(core.Map json_)
    : this(
        apt:
            json_.containsKey('apt')
                ? AptSettings.fromJson(
                  json_['apt'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        goo:
            json_.containsKey('goo')
                ? GooSettings.fromJson(
                  json_['goo'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        migInstancesAllowed: json_['migInstancesAllowed'] as core.bool?,
        postStep:
            json_.containsKey('postStep')
                ? ExecStep.fromJson(
                  json_['postStep'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        preStep:
            json_.containsKey('preStep')
                ? ExecStep.fromJson(
                  json_['preStep'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        rebootConfig: json_['rebootConfig'] as core.String?,
        windowsUpdate:
            json_.containsKey('windowsUpdate')
                ? WindowsUpdateSettings.fromJson(
                  json_['windowsUpdate'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        yum:
            json_.containsKey('yum')
                ? YumSettings.fromJson(
                  json_['yum'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        zypper:
            json_.containsKey('zypper')
                ? ZypperSettings.fromJson(
                  json_['zypper'] as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (apt != null) 'apt': apt!,
    if (goo != null) 'goo': goo!,
    if (migInstancesAllowed != null)
      'migInstancesAllowed': migInstancesAllowed!,
    if (postStep != null) 'postStep': postStep!,
    if (preStep != null) 'preStep': preStep!,
    if (rebootConfig != null) 'rebootConfig': rebootConfig!,
    if (windowsUpdate != null) 'windowsUpdate': windowsUpdate!,
    if (yum != null) 'yum': yum!,
    if (zypper != null) 'zypper': zypper!,
  };
}

/// Patch deployments are configurations that individual patch jobs use to
/// complete a patch.
///
/// These configurations include instance filter, package repository settings,
/// and a schedule. For more information about creating and managing patch
/// deployments, see
/// [Scheduling patch jobs](https://cloud.google.com/compute/docs/os-patch-management/schedule-patch-jobs).
class PatchDeployment {
  /// Time the patch deployment was created.
  ///
  /// Timestamp is in [RFC3339](https://www.ietf.org/rfc/rfc3339.txt) text
  /// format.
  ///
  /// Output only.
  core.String? createTime;

  /// Description of the patch deployment.
  ///
  /// Length of the description is limited to 1024 characters.
  ///
  /// Optional.
  core.String? description;

  /// Duration of the patch.
  ///
  /// After the duration ends, the patch times out.
  ///
  /// Optional.
  core.String? duration;

  /// VM instances to patch.
  ///
  /// Required.
  PatchInstanceFilter? instanceFilter;

  /// The last time a patch job was started by this deployment.
  ///
  /// Timestamp is in [RFC3339](https://www.ietf.org/rfc/rfc3339.txt) text
  /// format.
  ///
  /// Output only.
  core.String? lastExecuteTime;

  /// Unique name for the patch deployment resource in a project.
  ///
  /// The patch deployment name is in the form:
  /// `projects/{project_id}/patchDeployments/{patch_deployment_id}`. This field
  /// is ignored when you create a new patch deployment.
  core.String? name;

  /// Schedule a one-time execution.
  ///
  /// Required.
  OneTimeSchedule? oneTimeSchedule;

  /// Patch configuration that is applied.
  ///
  /// Optional.
  PatchConfig? patchConfig;

  /// Schedule recurring executions.
  ///
  /// Required.
  RecurringSchedule? recurringSchedule;

  /// Rollout strategy of the patch job.
  ///
  /// Optional.
  PatchRollout? rollout;

  /// Current state of the patch deployment.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : The default value. This value is used if the state
  /// is omitted.
  /// - "ACTIVE" : Active value means that patch deployment generates Patch
  /// Jobs.
  /// - "PAUSED" : Paused value means that patch deployment does not generate
  /// Patch jobs. Requires user action to move in and out from this state.
  core.String? state;

  /// Time the patch deployment was last updated.
  ///
  /// Timestamp is in [RFC3339](https://www.ietf.org/rfc/rfc3339.txt) text
  /// format.
  ///
  /// Output only.
  core.String? updateTime;

  PatchDeployment({
    this.createTime,
    this.description,
    this.duration,
    this.instanceFilter,
    this.lastExecuteTime,
    this.name,
    this.oneTimeSchedule,
    this.patchConfig,
    this.recurringSchedule,
    this.rollout,
    this.state,
    this.updateTime,
  });

  PatchDeployment.fromJson(core.Map json_)
    : this(
        createTime: json_['createTime'] as core.String?,
        description: json_['description'] as core.String?,
        duration: json_['duration'] as core.String?,
        instanceFilter:
            json_.containsKey('instanceFilter')
                ? PatchInstanceFilter.fromJson(
                  json_['instanceFilter']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        lastExecuteTime: json_['lastExecuteTime'] as core.String?,
        name: json_['name'] as core.String?,
        oneTimeSchedule:
            json_.containsKey('oneTimeSchedule')
                ? OneTimeSchedule.fromJson(
                  json_['oneTimeSchedule']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        patchConfig:
            json_.containsKey('patchConfig')
                ? PatchConfig.fromJson(
                  json_['patchConfig'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        recurringSchedule:
            json_.containsKey('recurringSchedule')
                ? RecurringSchedule.fromJson(
                  json_['recurringSchedule']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        rollout:
            json_.containsKey('rollout')
                ? PatchRollout.fromJson(
                  json_['rollout'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        state: json_['state'] as core.String?,
        updateTime: json_['updateTime'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (createTime != null) 'createTime': createTime!,
    if (description != null) 'description': description!,
    if (duration != null) 'duration': duration!,
    if (instanceFilter != null) 'instanceFilter': instanceFilter!,
    if (lastExecuteTime != null) 'lastExecuteTime': lastExecuteTime!,
    if (name != null) 'name': name!,
    if (oneTimeSchedule != null) 'oneTimeSchedule': oneTimeSchedule!,
    if (patchConfig != null) 'patchConfig': patchConfig!,
    if (recurringSchedule != null) 'recurringSchedule': recurringSchedule!,
    if (rollout != null) 'rollout': rollout!,
    if (state != null) 'state': state!,
    if (updateTime != null) 'updateTime': updateTime!,
  };
}

/// A filter to target VM instances for patching.
///
/// The targeted VMs must meet all criteria specified. So if both labels and
/// zones are specified, the patch job targets only VMs with those labels and in
/// those zones.
class PatchInstanceFilter {
  /// Target all VM instances in the project.
  ///
  /// If true, no other criteria is permitted.
  core.bool? all;

  /// Targets VM instances matching at least one of these label sets.
  ///
  /// This allows targeting of disparate groups, for example "env=prod or
  /// env=staging".
  core.List<PatchInstanceFilterGroupLabel>? groupLabels;

  /// Targets VMs whose name starts with one of these prefixes.
  ///
  /// Similar to labels, this is another way to group VMs when targeting
  /// configs, for example prefix="prod-".
  core.List<core.String>? instanceNamePrefixes;

  /// Targets any of the VM instances specified.
  ///
  /// Instances are specified by their URI in the form
  /// `zones/[ZONE]/instances/[INSTANCE_NAME]`,
  /// `projects/[PROJECT_ID]/zones/[ZONE]/instances/[INSTANCE_NAME]`, or
  /// `https://www.googleapis.com/compute/v1/projects/[PROJECT_ID]/zones/[ZONE]/instances/[INSTANCE_NAME]`
  core.List<core.String>? instances;

  /// Targets VM instances in ANY of these zones.
  ///
  /// Leave empty to target VM instances in any zone.
  core.List<core.String>? zones;

  PatchInstanceFilter({
    this.all,
    this.groupLabels,
    this.instanceNamePrefixes,
    this.instances,
    this.zones,
  });

  PatchInstanceFilter.fromJson(core.Map json_)
    : this(
        all: json_['all'] as core.bool?,
        groupLabels:
            (json_['groupLabels'] as core.List?)
                ?.map(
                  (value) => PatchInstanceFilterGroupLabel.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        instanceNamePrefixes:
            (json_['instanceNamePrefixes'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        instances:
            (json_['instances'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        zones:
            (json_['zones'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (all != null) 'all': all!,
    if (groupLabels != null) 'groupLabels': groupLabels!,
    if (instanceNamePrefixes != null)
      'instanceNamePrefixes': instanceNamePrefixes!,
    if (instances != null) 'instances': instances!,
    if (zones != null) 'zones': zones!,
  };
}

/// Represents a group of VMs that can be identified as having all these labels,
/// for example "env=prod and app=web".
typedef PatchInstanceFilterGroupLabel = $PatchInstanceFilterGroupLabel;

/// A high level representation of a patch job that is either in progress or has
/// completed.
///
/// Instance details are not included in the job. To paginate through instance
/// details, use `ListPatchJobInstanceDetails`. For more information about patch
/// jobs, see
/// [Creating patch jobs](https://cloud.google.com/compute/docs/os-patch-management/create-patch-job).
class PatchJob {
  /// Time this patch job was created.
  core.String? createTime;

  /// Description of the patch job.
  ///
  /// Length of the description is limited to 1024 characters.
  core.String? description;

  /// Display name for this patch job.
  ///
  /// This is not a unique identifier.
  core.String? displayName;

  /// If this patch job is a dry run, the agent reports that it has finished
  /// without running any updates on the VM instance.
  core.bool? dryRun;

  /// Duration of the patch job.
  ///
  /// After the duration ends, the patch job times out.
  core.String? duration;

  /// If this patch job failed, this message provides information about the
  /// failure.
  core.String? errorMessage;

  /// Summary of instance details.
  PatchJobInstanceDetailsSummary? instanceDetailsSummary;

  /// Instances to patch.
  PatchInstanceFilter? instanceFilter;

  /// Unique identifier for this patch job in the form `projects / * /patchJobs
  /// / * `
  core.String? name;

  /// Patch configuration being applied.
  PatchConfig? patchConfig;

  /// Name of the patch deployment that created this patch job.
  ///
  /// Output only.
  core.String? patchDeployment;

  /// Reflects the overall progress of the patch job in the range of 0.0 being
  /// no progress to 100.0 being complete.
  core.double? percentComplete;

  /// Rollout strategy being applied.
  PatchRollout? rollout;

  /// The current state of the PatchJob.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : State must be specified.
  /// - "STARTED" : The patch job was successfully initiated.
  /// - "INSTANCE_LOOKUP" : The patch job is looking up instances to run the
  /// patch on.
  /// - "PATCHING" : Instances are being patched.
  /// - "SUCCEEDED" : Patch job completed successfully.
  /// - "COMPLETED_WITH_ERRORS" : Patch job completed but there were errors.
  /// - "CANCELED" : The patch job was canceled.
  /// - "TIMED_OUT" : The patch job timed out.
  core.String? state;

  /// Last time this patch job was updated.
  core.String? updateTime;

  PatchJob({
    this.createTime,
    this.description,
    this.displayName,
    this.dryRun,
    this.duration,
    this.errorMessage,
    this.instanceDetailsSummary,
    this.instanceFilter,
    this.name,
    this.patchConfig,
    this.patchDeployment,
    this.percentComplete,
    this.rollout,
    this.state,
    this.updateTime,
  });

  PatchJob.fromJson(core.Map json_)
    : this(
        createTime: json_['createTime'] as core.String?,
        description: json_['description'] as core.String?,
        displayName: json_['displayName'] as core.String?,
        dryRun: json_['dryRun'] as core.bool?,
        duration: json_['duration'] as core.String?,
        errorMessage: json_['errorMessage'] as core.String?,
        instanceDetailsSummary:
            json_.containsKey('instanceDetailsSummary')
                ? PatchJobInstanceDetailsSummary.fromJson(
                  json_['instanceDetailsSummary']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        instanceFilter:
            json_.containsKey('instanceFilter')
                ? PatchInstanceFilter.fromJson(
                  json_['instanceFilter']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        name: json_['name'] as core.String?,
        patchConfig:
            json_.containsKey('patchConfig')
                ? PatchConfig.fromJson(
                  json_['patchConfig'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        patchDeployment: json_['patchDeployment'] as core.String?,
        percentComplete: (json_['percentComplete'] as core.num?)?.toDouble(),
        rollout:
            json_.containsKey('rollout')
                ? PatchRollout.fromJson(
                  json_['rollout'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        state: json_['state'] as core.String?,
        updateTime: json_['updateTime'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (createTime != null) 'createTime': createTime!,
    if (description != null) 'description': description!,
    if (displayName != null) 'displayName': displayName!,
    if (dryRun != null) 'dryRun': dryRun!,
    if (duration != null) 'duration': duration!,
    if (errorMessage != null) 'errorMessage': errorMessage!,
    if (instanceDetailsSummary != null)
      'instanceDetailsSummary': instanceDetailsSummary!,
    if (instanceFilter != null) 'instanceFilter': instanceFilter!,
    if (name != null) 'name': name!,
    if (patchConfig != null) 'patchConfig': patchConfig!,
    if (patchDeployment != null) 'patchDeployment': patchDeployment!,
    if (percentComplete != null) 'percentComplete': percentComplete!,
    if (rollout != null) 'rollout': rollout!,
    if (state != null) 'state': state!,
    if (updateTime != null) 'updateTime': updateTime!,
  };
}

/// Patch details for a VM instance.
///
/// For more information about reviewing VM instance details, see
/// [Listing all VM instance details for a specific patch job](https://cloud.google.com/compute/docs/os-patch-management/manage-patch-jobs#list-instance-details).
typedef PatchJobInstanceDetails = $PatchJobInstanceDetails;

/// A summary of the current patch state across all instances that this patch
/// job affects.
///
/// Contains counts of instances in different states. These states map to
/// `InstancePatchState`. List patch job instance details to see the specific
/// states of each instance.
typedef PatchJobInstanceDetailsSummary = $PatchJobInstanceDetailsSummary;

/// Patch rollout configuration specifications.
///
/// Contains details on the concurrency control when applying patch(es) to all
/// targeted VMs.
class PatchRollout {
  /// The maximum number (or percentage) of VMs per zone to disrupt at any given
  /// moment.
  ///
  /// The number of VMs calculated from multiplying the percentage by the total
  /// number of VMs in a zone is rounded up. During patching, a VM is considered
  /// disrupted from the time the agent is notified to begin until patching has
  /// completed. This disruption time includes the time to complete reboot and
  /// any post-patch steps. A VM contributes to the disruption budget if its
  /// patching operation fails either when applying the patches, running pre or
  /// post patch steps, or if it fails to respond with a success notification
  /// before timing out. VMs that are not running or do not have an active agent
  /// do not count toward this disruption budget. For zone-by-zone rollouts, if
  /// the disruption budget in a zone is exceeded, the patch job stops, because
  /// continuing to the next zone requires completion of the patch process in
  /// the previous zone. For example, if the disruption budget has a fixed value
  /// of `10`, and 8 VMs fail to patch in the current zone, the patch job
  /// continues to patch 2 VMs at a time until the zone is completed. When that
  /// zone is completed successfully, patching begins with 10 VMs at a time in
  /// the next zone. If 10 VMs in the next zone fail to patch, the patch job
  /// stops.
  FixedOrPercent? disruptionBudget;

  /// Mode of the patch rollout.
  /// Possible string values are:
  /// - "MODE_UNSPECIFIED" : Mode must be specified.
  /// - "ZONE_BY_ZONE" : Patches are applied one zone at a time. The patch job
  /// begins in the region with the lowest number of targeted VMs. Within the
  /// region, patching begins in the zone with the lowest number of targeted
  /// VMs. If multiple regions (or zones within a region) have the same number
  /// of targeted VMs, a tie-breaker is achieved by sorting the regions or zones
  /// in alphabetical order.
  /// - "CONCURRENT_ZONES" : Patches are applied to VMs in all zones at the same
  /// time.
  core.String? mode;

  PatchRollout({this.disruptionBudget, this.mode});

  PatchRollout.fromJson(core.Map json_)
    : this(
        disruptionBudget:
            json_.containsKey('disruptionBudget')
                ? FixedOrPercent.fromJson(
                  json_['disruptionBudget']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        mode: json_['mode'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (disruptionBudget != null) 'disruptionBudget': disruptionBudget!,
    if (mode != null) 'mode': mode!,
  };
}

/// A request message for pausing a patch deployment.
typedef PausePatchDeploymentRequest = $Empty;

/// Sets the time for recurring patch deployments.
class RecurringSchedule {
  /// The end time at which a recurring patch deployment schedule is no longer
  /// active.
  ///
  /// Optional.
  core.String? endTime;

  /// The frequency unit of this recurring schedule.
  ///
  /// Required.
  /// Possible string values are:
  /// - "FREQUENCY_UNSPECIFIED" : Invalid. A frequency must be specified.
  /// - "WEEKLY" : Indicates that the frequency of recurrence should be
  /// expressed in terms of weeks.
  /// - "MONTHLY" : Indicates that the frequency of recurrence should be
  /// expressed in terms of months.
  /// - "DAILY" : Indicates that the frequency of recurrence should be expressed
  /// in terms of days.
  core.String? frequency;

  /// The time the last patch job ran successfully.
  ///
  /// Output only.
  core.String? lastExecuteTime;

  /// Schedule with monthly executions.
  ///
  /// Required.
  MonthlySchedule? monthly;

  /// The time the next patch job is scheduled to run.
  ///
  /// Output only.
  core.String? nextExecuteTime;

  /// The time that the recurring schedule becomes effective.
  ///
  /// Defaults to `create_time` of the patch deployment.
  ///
  /// Optional.
  core.String? startTime;

  /// Time of the day to run a recurring deployment.
  ///
  /// Required.
  TimeOfDay? timeOfDay;

  /// Defines the time zone that `time_of_day` is relative to.
  ///
  /// The rules for daylight saving time are determined by the chosen time zone.
  ///
  /// Required.
  TimeZone? timeZone;

  /// Schedule with weekly executions.
  ///
  /// Required.
  WeeklySchedule? weekly;

  RecurringSchedule({
    this.endTime,
    this.frequency,
    this.lastExecuteTime,
    this.monthly,
    this.nextExecuteTime,
    this.startTime,
    this.timeOfDay,
    this.timeZone,
    this.weekly,
  });

  RecurringSchedule.fromJson(core.Map json_)
    : this(
        endTime: json_['endTime'] as core.String?,
        frequency: json_['frequency'] as core.String?,
        lastExecuteTime: json_['lastExecuteTime'] as core.String?,
        monthly:
            json_.containsKey('monthly')
                ? MonthlySchedule.fromJson(
                  json_['monthly'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        nextExecuteTime: json_['nextExecuteTime'] as core.String?,
        startTime: json_['startTime'] as core.String?,
        timeOfDay:
            json_.containsKey('timeOfDay')
                ? TimeOfDay.fromJson(
                  json_['timeOfDay'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        timeZone:
            json_.containsKey('timeZone')
                ? TimeZone.fromJson(
                  json_['timeZone'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        weekly:
            json_.containsKey('weekly')
                ? WeeklySchedule.fromJson(
                  json_['weekly'] as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (endTime != null) 'endTime': endTime!,
    if (frequency != null) 'frequency': frequency!,
    if (lastExecuteTime != null) 'lastExecuteTime': lastExecuteTime!,
    if (monthly != null) 'monthly': monthly!,
    if (nextExecuteTime != null) 'nextExecuteTime': nextExecuteTime!,
    if (startTime != null) 'startTime': startTime!,
    if (timeOfDay != null) 'timeOfDay': timeOfDay!,
    if (timeZone != null) 'timeZone': timeZone!,
    if (weekly != null) 'weekly': weekly!,
  };
}

/// A request message for resuming a patch deployment.
typedef ResumePatchDeploymentRequest = $Empty;

/// A software recipe is a set of instructions for installing and configuring a
/// piece of software.
///
/// It consists of a set of artifacts that are downloaded, and a set of steps
/// that install, configure, and/or update the software. Recipes support
/// installing and updating software from artifacts in the following formats:
/// Zip archive, Tar archive, Windows MSI, Debian package, and RPM package.
/// Additionally, recipes support executing a script (either defined in a file
/// or directly in this api) in bash, sh, cmd, and powershell. Updating a
/// software recipe If a recipe is assigned to an instance and there is a recipe
/// with the same name but a lower version already installed and the assigned
/// state of the recipe is `UPDATED`, then the recipe is updated to the new
/// version. Script Working Directories Each script or execution step is run in
/// its own temporary directory which is deleted after completing the step.
class SoftwareRecipe {
  /// Resources available to be used in the steps in the recipe.
  core.List<SoftwareRecipeArtifact>? artifacts;

  /// Default is INSTALLED.
  ///
  /// The desired state the agent should maintain for this recipe. INSTALLED:
  /// The software recipe is installed on the instance but won't be updated to
  /// new versions. UPDATED: The software recipe is installed on the instance.
  /// The recipe is updated to a higher version, if a higher version of the
  /// recipe is assigned to this instance. REMOVE: Remove is unsupported for
  /// software recipes and attempts to create or update a recipe to the REMOVE
  /// state is rejected.
  /// Possible string values are:
  /// - "DESIRED_STATE_UNSPECIFIED" : The default is to ensure the package is
  /// installed.
  /// - "INSTALLED" : The agent ensures that the package is installed.
  /// - "UPDATED" : The agent ensures that the package is installed and
  /// periodically checks for and install any updates.
  /// - "REMOVED" : The agent ensures that the package is not installed and
  /// uninstall it if detected.
  core.String? desiredState;

  /// Actions to be taken for installing this recipe.
  ///
  /// On failure it stops executing steps and does not attempt another
  /// installation. Any steps taken (including partially completed steps) are
  /// not rolled back.
  core.List<SoftwareRecipeStep>? installSteps;

  /// Unique identifier for the recipe.
  ///
  /// Only one recipe with a given name is installed on an instance. Names are
  /// also used to identify resources which helps to determine whether guest
  /// policies have conflicts. This means that requests to create multiple
  /// recipes with the same name and version are rejected since they could
  /// potentially have conflicting assignments.
  ///
  /// Required.
  core.String? name;

  /// Actions to be taken for updating this recipe.
  ///
  /// On failure it stops executing steps and does not attempt another update
  /// for this recipe. Any steps taken (including partially completed steps) are
  /// not rolled back.
  core.List<SoftwareRecipeStep>? updateSteps;

  /// The version of this software recipe.
  ///
  /// Version can be up to 4 period separated numbers (e.g. 12.34.56.78).
  core.String? version;

  SoftwareRecipe({
    this.artifacts,
    this.desiredState,
    this.installSteps,
    this.name,
    this.updateSteps,
    this.version,
  });

  SoftwareRecipe.fromJson(core.Map json_)
    : this(
        artifacts:
            (json_['artifacts'] as core.List?)
                ?.map(
                  (value) => SoftwareRecipeArtifact.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        desiredState: json_['desiredState'] as core.String?,
        installSteps:
            (json_['installSteps'] as core.List?)
                ?.map(
                  (value) => SoftwareRecipeStep.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        name: json_['name'] as core.String?,
        updateSteps:
            (json_['updateSteps'] as core.List?)
                ?.map(
                  (value) => SoftwareRecipeStep.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        version: json_['version'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (artifacts != null) 'artifacts': artifacts!,
    if (desiredState != null) 'desiredState': desiredState!,
    if (installSteps != null) 'installSteps': installSteps!,
    if (name != null) 'name': name!,
    if (updateSteps != null) 'updateSteps': updateSteps!,
    if (version != null) 'version': version!,
  };
}

/// Specifies a resource to be used in the recipe.
class SoftwareRecipeArtifact {
  /// Defaults to false.
  ///
  /// When false, recipes are subject to validations based on the artifact type:
  /// Remote: A checksum must be specified, and only protocols with
  /// transport-layer security are permitted. GCS: An object generation number
  /// must be specified.
  core.bool? allowInsecure;

  /// A Google Cloud Storage artifact.
  SoftwareRecipeArtifactGcs? gcs;

  /// Id of the artifact, which the installation and update steps of this recipe
  /// can reference.
  ///
  /// Artifacts in a recipe cannot have the same id.
  ///
  /// Required.
  core.String? id;

  /// A generic remote artifact.
  SoftwareRecipeArtifactRemote? remote;

  SoftwareRecipeArtifact({this.allowInsecure, this.gcs, this.id, this.remote});

  SoftwareRecipeArtifact.fromJson(core.Map json_)
    : this(
        allowInsecure: json_['allowInsecure'] as core.bool?,
        gcs:
            json_.containsKey('gcs')
                ? SoftwareRecipeArtifactGcs.fromJson(
                  json_['gcs'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        id: json_['id'] as core.String?,
        remote:
            json_.containsKey('remote')
                ? SoftwareRecipeArtifactRemote.fromJson(
                  json_['remote'] as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (allowInsecure != null) 'allowInsecure': allowInsecure!,
    if (gcs != null) 'gcs': gcs!,
    if (id != null) 'id': id!,
    if (remote != null) 'remote': remote!,
  };
}

/// Specifies an artifact available as a Google Cloud Storage object.
class SoftwareRecipeArtifactGcs {
  /// Bucket of the Google Cloud Storage object.
  ///
  /// Given an example URL:
  /// `https://storage.googleapis.com/my-bucket/foo/bar#1234567` this value
  /// would be `my-bucket`.
  core.String? bucket;

  /// Must be provided if allow_insecure is false.
  ///
  /// Generation number of the Google Cloud Storage object.
  /// `https://storage.googleapis.com/my-bucket/foo/bar#1234567` this value
  /// would be `1234567`.
  core.String? generation;

  /// Name of the Google Cloud Storage object.
  ///
  /// As specified
  /// [here](https://cloud.google.com/storage/docs/naming#objectnames) Given an
  /// example URL: `https://storage.googleapis.com/my-bucket/foo/bar#1234567`
  /// this value would be `foo/bar`.
  core.String? object;

  SoftwareRecipeArtifactGcs({this.bucket, this.generation, this.object});

  SoftwareRecipeArtifactGcs.fromJson(core.Map json_)
    : this(
        bucket: json_['bucket'] as core.String?,
        generation: json_['generation'] as core.String?,
        object: json_['object'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (bucket != null) 'bucket': bucket!,
    if (generation != null) 'generation': generation!,
    if (object != null) 'object': object!,
  };
}

/// Specifies an artifact available via some URI.
class SoftwareRecipeArtifactRemote {
  /// Must be provided if `allow_insecure` is `false`.
  ///
  /// SHA256 checksum in hex format, to compare to the checksum of the artifact.
  /// If the checksum is not empty and it doesn't match the artifact then the
  /// recipe installation fails before running any of the steps.
  core.String? checksum;

  /// URI from which to fetch the object.
  ///
  /// It should contain both the protocol and path following the format
  /// {protocol}://{location}.
  core.String? uri;

  SoftwareRecipeArtifactRemote({this.checksum, this.uri});

  SoftwareRecipeArtifactRemote.fromJson(core.Map json_)
    : this(
        checksum: json_['checksum'] as core.String?,
        uri: json_['uri'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (checksum != null) 'checksum': checksum!,
    if (uri != null) 'uri': uri!,
  };
}

/// An action that can be taken as part of installing or updating a recipe.
class SoftwareRecipeStep {
  /// Extracts an archive into the specified directory.
  SoftwareRecipeStepExtractArchive? archiveExtraction;

  /// Installs a deb file via dpkg.
  SoftwareRecipeStepInstallDpkg? dpkgInstallation;

  /// Copies a file onto the instance.
  SoftwareRecipeStepCopyFile? fileCopy;

  /// Executes an artifact or local file.
  SoftwareRecipeStepExecFile? fileExec;

  /// Installs an MSI file.
  SoftwareRecipeStepInstallMsi? msiInstallation;

  /// Installs an rpm file via the rpm utility.
  SoftwareRecipeStepInstallRpm? rpmInstallation;

  /// Runs commands in a shell.
  SoftwareRecipeStepRunScript? scriptRun;

  SoftwareRecipeStep({
    this.archiveExtraction,
    this.dpkgInstallation,
    this.fileCopy,
    this.fileExec,
    this.msiInstallation,
    this.rpmInstallation,
    this.scriptRun,
  });

  SoftwareRecipeStep.fromJson(core.Map json_)
    : this(
        archiveExtraction:
            json_.containsKey('archiveExtraction')
                ? SoftwareRecipeStepExtractArchive.fromJson(
                  json_['archiveExtraction']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        dpkgInstallation:
            json_.containsKey('dpkgInstallation')
                ? SoftwareRecipeStepInstallDpkg.fromJson(
                  json_['dpkgInstallation']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        fileCopy:
            json_.containsKey('fileCopy')
                ? SoftwareRecipeStepCopyFile.fromJson(
                  json_['fileCopy'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        fileExec:
            json_.containsKey('fileExec')
                ? SoftwareRecipeStepExecFile.fromJson(
                  json_['fileExec'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        msiInstallation:
            json_.containsKey('msiInstallation')
                ? SoftwareRecipeStepInstallMsi.fromJson(
                  json_['msiInstallation']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        rpmInstallation:
            json_.containsKey('rpmInstallation')
                ? SoftwareRecipeStepInstallRpm.fromJson(
                  json_['rpmInstallation']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        scriptRun:
            json_.containsKey('scriptRun')
                ? SoftwareRecipeStepRunScript.fromJson(
                  json_['scriptRun'] as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (archiveExtraction != null) 'archiveExtraction': archiveExtraction!,
    if (dpkgInstallation != null) 'dpkgInstallation': dpkgInstallation!,
    if (fileCopy != null) 'fileCopy': fileCopy!,
    if (fileExec != null) 'fileExec': fileExec!,
    if (msiInstallation != null) 'msiInstallation': msiInstallation!,
    if (rpmInstallation != null) 'rpmInstallation': rpmInstallation!,
    if (scriptRun != null) 'scriptRun': scriptRun!,
  };
}

/// Copies the artifact to the specified path on the instance.
class SoftwareRecipeStepCopyFile {
  /// The id of the relevant artifact in the recipe.
  ///
  /// Required.
  core.String? artifactId;

  /// The absolute path on the instance to put the file.
  ///
  /// Required.
  core.String? destination;

  /// Whether to allow this step to overwrite existing files.
  ///
  /// If this is false and the file already exists the file is not overwritten
  /// and the step is considered a success. Defaults to false.
  core.bool? overwrite;

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

  SoftwareRecipeStepCopyFile({
    this.artifactId,
    this.destination,
    this.overwrite,
    this.permissions,
  });

  SoftwareRecipeStepCopyFile.fromJson(core.Map json_)
    : this(
        artifactId: json_['artifactId'] as core.String?,
        destination: json_['destination'] as core.String?,
        overwrite: json_['overwrite'] as core.bool?,
        permissions: json_['permissions'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (artifactId != null) 'artifactId': artifactId!,
    if (destination != null) 'destination': destination!,
    if (overwrite != null) 'overwrite': overwrite!,
    if (permissions != null) 'permissions': permissions!,
  };
}

/// Executes an artifact or local file.
class SoftwareRecipeStepExecFile {
  /// Defaults to \[0\].
  ///
  /// A list of possible return values that the program can return to indicate a
  /// success.
  core.List<core.int>? allowedExitCodes;

  /// Arguments to be passed to the provided executable.
  core.List<core.String>? args;

  /// The id of the relevant artifact in the recipe.
  core.String? artifactId;

  /// The absolute path of the file on the local filesystem.
  core.String? localPath;

  SoftwareRecipeStepExecFile({
    this.allowedExitCodes,
    this.args,
    this.artifactId,
    this.localPath,
  });

  SoftwareRecipeStepExecFile.fromJson(core.Map json_)
    : this(
        allowedExitCodes:
            (json_['allowedExitCodes'] as core.List?)
                ?.map((value) => value as core.int)
                .toList(),
        args:
            (json_['args'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        artifactId: json_['artifactId'] as core.String?,
        localPath: json_['localPath'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (allowedExitCodes != null) 'allowedExitCodes': allowedExitCodes!,
    if (args != null) 'args': args!,
    if (artifactId != null) 'artifactId': artifactId!,
    if (localPath != null) 'localPath': localPath!,
  };
}

/// Extracts an archive of the type specified in the specified directory.
class SoftwareRecipeStepExtractArchive {
  /// The id of the relevant artifact in the recipe.
  ///
  /// Required.
  core.String? artifactId;

  /// Directory to extract archive to.
  ///
  /// Defaults to `/` on Linux or `C:\` on Windows.
  core.String? destination;

  /// The type of the archive to extract.
  ///
  /// Required.
  /// Possible string values are:
  /// - "ARCHIVE_TYPE_UNSPECIFIED" : Indicates that the archive type isn't
  /// specified.
  /// - "TAR" : Indicates that the archive is a tar archive with no encryption.
  /// - "TAR_GZIP" : Indicates that the archive is a tar archive with gzip
  /// encryption.
  /// - "TAR_BZIP" : Indicates that the archive is a tar archive with bzip
  /// encryption.
  /// - "TAR_LZMA" : Indicates that the archive is a tar archive with lzma
  /// encryption.
  /// - "TAR_XZ" : Indicates that the archive is a tar archive with xz
  /// encryption.
  /// - "ZIP" : Indicates that the archive is a zip archive.
  core.String? type;

  SoftwareRecipeStepExtractArchive({
    this.artifactId,
    this.destination,
    this.type,
  });

  SoftwareRecipeStepExtractArchive.fromJson(core.Map json_)
    : this(
        artifactId: json_['artifactId'] as core.String?,
        destination: json_['destination'] as core.String?,
        type: json_['type'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (artifactId != null) 'artifactId': artifactId!,
    if (destination != null) 'destination': destination!,
    if (type != null) 'type': type!,
  };
}

/// Installs a deb via dpkg.
typedef SoftwareRecipeStepInstallDpkg = $Shared21;

/// Installs an MSI file.
class SoftwareRecipeStepInstallMsi {
  /// Return codes that indicate that the software installed or updated
  /// successfully.
  ///
  /// Behaviour defaults to \[0\]
  core.List<core.int>? allowedExitCodes;

  /// The id of the relevant artifact in the recipe.
  ///
  /// Required.
  core.String? artifactId;

  /// The flags to use when installing the MSI defaults to \["/i"\] (i.e. the
  /// install flag).
  core.List<core.String>? flags;

  SoftwareRecipeStepInstallMsi({
    this.allowedExitCodes,
    this.artifactId,
    this.flags,
  });

  SoftwareRecipeStepInstallMsi.fromJson(core.Map json_)
    : this(
        allowedExitCodes:
            (json_['allowedExitCodes'] as core.List?)
                ?.map((value) => value as core.int)
                .toList(),
        artifactId: json_['artifactId'] as core.String?,
        flags:
            (json_['flags'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (allowedExitCodes != null) 'allowedExitCodes': allowedExitCodes!,
    if (artifactId != null) 'artifactId': artifactId!,
    if (flags != null) 'flags': flags!,
  };
}

/// Installs an rpm file via the rpm utility.
typedef SoftwareRecipeStepInstallRpm = $Shared21;

/// Runs a script through an interpreter.
class SoftwareRecipeStepRunScript {
  /// Return codes that indicate that the software installed or updated
  /// successfully.
  ///
  /// Behaviour defaults to \[0\]
  core.List<core.int>? allowedExitCodes;

  /// The script interpreter to use to run the script.
  ///
  /// If no interpreter is specified the script is executed directly, which
  /// likely only succeed for scripts with
  /// [shebang lines](https://en.wikipedia.org/wiki/Shebang_\(Unix\)).
  /// Possible string values are:
  /// - "INTERPRETER_UNSPECIFIED" : Default value for ScriptType.
  /// - "SHELL" : Indicates that the script is run with `/bin/sh` on Linux and
  /// `cmd` on windows.
  /// - "POWERSHELL" : Indicates that the script is run with powershell.
  core.String? interpreter;

  /// The shell script to be executed.
  ///
  /// Required.
  core.String? script;

  SoftwareRecipeStepRunScript({
    this.allowedExitCodes,
    this.interpreter,
    this.script,
  });

  SoftwareRecipeStepRunScript.fromJson(core.Map json_)
    : this(
        allowedExitCodes:
            (json_['allowedExitCodes'] as core.List?)
                ?.map((value) => value as core.int)
                .toList(),
        interpreter: json_['interpreter'] as core.String?,
        script: json_['script'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (allowedExitCodes != null) 'allowedExitCodes': allowedExitCodes!,
    if (interpreter != null) 'interpreter': interpreter!,
    if (script != null) 'script': script!,
  };
}

/// Represents a time of day.
///
/// The date and time zone are either not significant or are specified
/// elsewhere. An API may choose to allow leap seconds. Related types are
/// google.type.Date and `google.protobuf.Timestamp`.
typedef TimeOfDay = $TimeOfDay;

/// Represents a time zone from the
/// [IANA Time Zone Database](https://www.iana.org/time-zones).
typedef TimeZone = $TimeZone;

/// Represents one week day in a month.
///
/// An example is "the 4th Sunday".
class WeekDayOfMonth {
  /// A day of the week.
  ///
  /// Required.
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

  /// Represents the number of days before or after the given week day of month
  /// that the patch deployment is scheduled for.
  ///
  /// For example if `week_ordinal` and `day_of_week` values point to the second
  /// day of the month and this `day_offset` value is set to `3`, the patch
  /// deployment takes place three days after the second Tuesday of the month.
  /// If this value is negative, for example -5, the patches are deployed five
  /// days before before the second Tuesday of the month. Allowed values are in
  /// range \[-30, 30\].
  ///
  /// Optional.
  core.int? dayOffset;

  /// Week number in a month.
  ///
  /// 1-4 indicates the 1st to 4th week of the month. -1 indicates the last week
  /// of the month.
  ///
  /// Required.
  core.int? weekOrdinal;

  WeekDayOfMonth({this.dayOfWeek, this.dayOffset, this.weekOrdinal});

  WeekDayOfMonth.fromJson(core.Map json_)
    : this(
        dayOfWeek: json_['dayOfWeek'] as core.String?,
        dayOffset: json_['dayOffset'] as core.int?,
        weekOrdinal: json_['weekOrdinal'] as core.int?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (dayOfWeek != null) 'dayOfWeek': dayOfWeek!,
    if (dayOffset != null) 'dayOffset': dayOffset!,
    if (weekOrdinal != null) 'weekOrdinal': weekOrdinal!,
  };
}

/// Represents a weekly schedule.
typedef WeeklySchedule = $WeeklySchedule01;

/// Windows patching is performed using the Windows Update Agent.
typedef WindowsUpdateSettings = $WindowsUpdateSettings;

/// Represents a single Yum package repository.
///
/// This repository is added to a repo file that is stored at
/// `/etc/yum.repos.d/google_osconfig.repo`.
class YumRepository {
  /// The location of the repository directory.
  ///
  /// Required.
  core.String? baseUrl;

  /// The display name of the repository.
  core.String? displayName;

  /// URIs of GPG keys.
  core.List<core.String>? gpgKeys;

  /// A one word, unique name for this repository.
  ///
  /// This is the `repo id` in the Yum config file and also the `display_name`
  /// if `display_name` is omitted. This id is also used as the unique
  /// identifier when checking for guest policy conflicts.
  ///
  /// Required.
  core.String? id;

  YumRepository({this.baseUrl, this.displayName, this.gpgKeys, this.id});

  YumRepository.fromJson(core.Map json_)
    : this(
        baseUrl: json_['baseUrl'] as core.String?,
        displayName: json_['displayName'] as core.String?,
        gpgKeys:
            (json_['gpgKeys'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        id: json_['id'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (baseUrl != null) 'baseUrl': baseUrl!,
    if (displayName != null) 'displayName': displayName!,
    if (gpgKeys != null) 'gpgKeys': gpgKeys!,
    if (id != null) 'id': id!,
  };
}

/// Yum patching is performed by executing `yum update`.
///
/// Additional options can be set to control how this is executed. Note that not
/// all settings are supported on all platforms.
typedef YumSettings = $YumSettings;

/// Represents a single Zypper package repository.
///
/// This repository is added to a repo file that is stored at
/// `/etc/zypp/repos.d/google_osconfig.repo`.
class ZypperRepository {
  /// The location of the repository directory.
  ///
  /// Required.
  core.String? baseUrl;

  /// The display name of the repository.
  core.String? displayName;

  /// URIs of GPG keys.
  core.List<core.String>? gpgKeys;

  /// A one word, unique name for this repository.
  ///
  /// This is the `repo id` in the zypper config file and also the
  /// `display_name` if `display_name` is omitted. This id is also used as the
  /// unique identifier when checking for guest policy conflicts.
  ///
  /// Required.
  core.String? id;

  ZypperRepository({this.baseUrl, this.displayName, this.gpgKeys, this.id});

  ZypperRepository.fromJson(core.Map json_)
    : this(
        baseUrl: json_['baseUrl'] as core.String?,
        displayName: json_['displayName'] as core.String?,
        gpgKeys:
            (json_['gpgKeys'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        id: json_['id'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (baseUrl != null) 'baseUrl': baseUrl!,
    if (displayName != null) 'displayName': displayName!,
    if (gpgKeys != null) 'gpgKeys': gpgKeys!,
    if (id != null) 'id': id!,
  };
}

/// Zypper patching is performed by running `zypper patch`.
///
/// See also https://en.opensuse.org/SDB:Zypper_manual.
typedef ZypperSettings = $ZypperSettings;
