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

/// Infrastructure Manager API - v1
///
/// Creates and manages Google Cloud Platform resources and infrastructure.
///
/// For more information, see
/// <https://cloud.google.com/infrastructure-manager/docs>
///
/// Create an instance of [ConfigApi] to access these resources:
///
/// - [ProjectsResource]
///   - [ProjectsLocationsResource]
///     - [ProjectsLocationsDeploymentsResource]
///       - [ProjectsLocationsDeploymentsRevisionsResource]
///         - [ProjectsLocationsDeploymentsRevisionsResourcesResource]
///     - [ProjectsLocationsOperationsResource]
///     - [ProjectsLocationsPreviewsResource]
///     - [ProjectsLocationsTerraformVersionsResource]
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

/// Creates and manages Google Cloud Platform resources and infrastructure.
class ConfigApi {
  /// See, edit, configure, and delete your Google Cloud data and see the email
  /// address for your Google Account.
  static const cloudPlatformScope =
      'https://www.googleapis.com/auth/cloud-platform';

  final commons.ApiRequester _requester;

  ProjectsResource get projects => ProjectsResource(_requester);

  ConfigApi(http.Client client,
      {core.String rootUrl = 'https://config.googleapis.com/',
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

  ProjectsLocationsDeploymentsResource get deployments =>
      ProjectsLocationsDeploymentsResource(_requester);
  ProjectsLocationsOperationsResource get operations =>
      ProjectsLocationsOperationsResource(_requester);
  ProjectsLocationsPreviewsResource get previews =>
      ProjectsLocationsPreviewsResource(_requester);
  ProjectsLocationsTerraformVersionsResource get terraformVersions =>
      ProjectsLocationsTerraformVersionsResource(_requester);

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
  /// filtering language accepts strings like `"displayName=tokyo"`, and is
  /// documented in more detail in \[AIP-160\](https://google.aip.dev/160).
  ///
  /// [pageSize] - The maximum number of results to return. If not set, the
  /// service selects a default.
  ///
  /// [pageToken] - A page token received from the `next_page_token` field in
  /// the response. Send that page token to receive the subsequent page.
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

class ProjectsLocationsDeploymentsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsDeploymentsRevisionsResource get revisions =>
      ProjectsLocationsDeploymentsRevisionsResource(_requester);

  ProjectsLocationsDeploymentsResource(commons.ApiRequester client)
      : _requester = client;

  /// Creates a Deployment.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent in whose context the Deployment is
  /// created. The parent value is in the format:
  /// 'projects/{project_id}/locations/{location}'.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [deploymentId] - Required. The Deployment ID.
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
    Deployment request,
    core.String parent, {
    core.String? deploymentId,
    core.String? requestId,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (deploymentId != null) 'deploymentId': [deploymentId],
      if (requestId != null) 'requestId': [requestId],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/deployments';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Deletes a Deployment.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the Deployment in the format:
  /// 'projects/{project_id}/locations/{location}/deployments/{deployment}'.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/deployments/\[^/\]+$`.
  ///
  /// [deletePolicy] - Optional. Policy on how resources actuated by the
  /// deployment should be deleted. If unspecified, the default behavior is to
  /// delete the underlying resources.
  /// Possible string values are:
  /// - "DELETE_POLICY_UNSPECIFIED" : Unspecified policy, resources will be
  /// deleted.
  /// - "DELETE" : Deletes resources actuated by the deployment.
  /// - "ABANDON" : Abandons resources and only deletes the deployment and its
  /// metadata.
  ///
  /// [force] - Optional. If set to true, any revisions for this deployment will
  /// also be deleted. (Otherwise, the request will only work if the deployment
  /// has no revisions.)
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
    core.String? deletePolicy,
    core.bool? force,
    core.String? requestId,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (deletePolicy != null) 'deletePolicy': [deletePolicy],
      if (force != null) 'force': ['${force}'],
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

  /// Deletes Terraform state file in a given deployment.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the deployment in the format:
  /// 'projects/{project_id}/locations/{location}/deployments/{deployment}'.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/deployments/\[^/\]+$`.
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
  async.Future<Empty> deleteState(
    DeleteStatefileRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':deleteState';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Empty.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Exports the lock info on a locked deployment.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the deployment in the format:
  /// 'projects/{project_id}/locations/{location}/deployments/{deployment}'.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/deployments/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [LockInfo].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<LockInfo> exportLock(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':exportLock';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return LockInfo.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Exports Terraform state file from a given deployment.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent in whose context the statefile is listed.
  /// The parent value is in the format:
  /// 'projects/{project_id}/locations/{location}/deployments/{deployment}'.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/deployments/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Statefile].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Statefile> exportState(
    ExportDeploymentStatefileRequest request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + ':exportState';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Statefile.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Gets details about a Deployment.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the deployment. Format:
  /// 'projects/{project_id}/locations/{location}/deployments/{deployment}'.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/deployments/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Deployment].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Deployment> get(
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
    return Deployment.fromJson(
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
  /// requested. See
  /// [Resource names](https://cloud.google.com/apis/design/resource_names) for
  /// the appropriate value for this field.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/deployments/\[^/\]+$`.
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

  /// Imports Terraform state file in a given deployment.
  ///
  /// The state file does not take effect until the Deployment has been
  /// unlocked.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent in whose context the statefile is listed.
  /// The parent value is in the format:
  /// 'projects/{project_id}/locations/{location}/deployments/{deployment}'.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/deployments/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Statefile].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Statefile> importState(
    ImportStatefileRequest request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + ':importState';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Statefile.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists Deployments in a given project and location.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent in whose context the Deployments are
  /// listed. The parent value is in the format:
  /// 'projects/{project_id}/locations/{location}'.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [filter] - Lists the Deployments that match the filter expression. A
  /// filter expression filters the resources listed in the response. The
  /// expression must be of the form '{field} {operator} {value}' where
  /// operators: '\<', '\>', '\<=', '\>=', '!=', '=', ':' are supported (colon
  /// ':' represents a HAS operator which is roughly synonymous with equality).
  /// {field} can refer to a proto or JSON field, or a synthetic field. Field
  /// names can be camelCase or snake_case. Examples: - Filter by name: name =
  /// "projects/foo/locations/us-central1/deployments/bar - Filter by labels: -
  /// Resources that have a key called 'foo' labels.foo:* - Resources that have
  /// a key called 'foo' whose value is 'bar' labels.foo = bar - Filter by
  /// state: - Deployments in CREATING state. state=CREATING
  ///
  /// [orderBy] - Field to use to sort the list.
  ///
  /// [pageSize] - When requesting a page of resources, 'page_size' specifies
  /// number of resources to return. If unspecified, at most 500 will be
  /// returned. The maximum value is 1000.
  ///
  /// [pageToken] - Token returned by previous call to 'ListDeployments' which
  /// specifies the position in the list from where to continue listing the
  /// resources.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListDeploymentsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListDeploymentsResponse> list(
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

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/deployments';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListDeploymentsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Locks a deployment.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the deployment in the format:
  /// 'projects/{project_id}/locations/{location}/deployments/{deployment}'.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/deployments/\[^/\]+$`.
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
  async.Future<Operation> lock(
    LockDeploymentRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':lock';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Updates a Deployment.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Resource name of the deployment. Format:
  /// `projects/{project}/locations/{location}/deployments/{deployment}`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/deployments/\[^/\]+$`.
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
  /// [updateMask] - Optional. Field mask used to specify the fields to be
  /// overwritten in the Deployment resource by the update. The fields specified
  /// in the update_mask are relative to the resource, not the full request. A
  /// field will be overwritten if it is in the mask. If the user does not
  /// provide a mask then all fields will be overwritten.
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
    Deployment request,
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
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/deployments/\[^/\]+$`.
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
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/deployments/\[^/\]+$`.
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

  /// Unlocks a locked deployment.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the deployment in the format:
  /// 'projects/{project_id}/locations/{location}/deployments/{deployment}'.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/deployments/\[^/\]+$`.
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
  async.Future<Operation> unlock(
    UnlockDeploymentRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':unlock';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsDeploymentsRevisionsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsDeploymentsRevisionsResourcesResource get resources =>
      ProjectsLocationsDeploymentsRevisionsResourcesResource(_requester);

  ProjectsLocationsDeploymentsRevisionsResource(commons.ApiRequester client)
      : _requester = client;

  /// Exports Terraform state file from a given revision.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent in whose context the statefile is listed.
  /// The parent value is in the format:
  /// 'projects/{project_id}/locations/{location}/deployments/{deployment}/revisions/{revision}'.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/deployments/\[^/\]+/revisions/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Statefile].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Statefile> exportState(
    ExportRevisionStatefileRequest request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + ':exportState';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Statefile.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Gets details about a Revision.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the Revision in the format:
  /// 'projects/{project_id}/locations/{location}/deployments/{deployment}/revisions/{revision}'.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/deployments/\[^/\]+/revisions/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Revision].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Revision> get(
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
    return Revision.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists Revisions of a deployment.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent in whose context the Revisions are listed.
  /// The parent value is in the format:
  /// 'projects/{project_id}/locations/{location}/deployments/{deployment}'.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/deployments/\[^/\]+$`.
  ///
  /// [filter] - Lists the Revisions that match the filter expression. A filter
  /// expression filters the resources listed in the response. The expression
  /// must be of the form '{field} {operator} {value}' where operators: '\<',
  /// '\>', '\<=', '\>=', '!=', '=', ':' are supported (colon ':' represents a
  /// HAS operator which is roughly synonymous with equality). {field} can refer
  /// to a proto or JSON field, or a synthetic field. Field names can be
  /// camelCase or snake_case. Examples: - Filter by name: name =
  /// "projects/foo/locations/us-central1/deployments/dep/revisions/bar - Filter
  /// by labels: - Resources that have a key called 'foo' labels.foo:* -
  /// Resources that have a key called 'foo' whose value is 'bar' labels.foo =
  /// bar - Filter by state: - Revisions in CREATING state. state=CREATING
  ///
  /// [orderBy] - Field to use to sort the list.
  ///
  /// [pageSize] - When requesting a page of resources, `page_size` specifies
  /// number of resources to return. If unspecified, at most 500 will be
  /// returned. The maximum value is 1000.
  ///
  /// [pageToken] - Token returned by previous call to 'ListRevisions' which
  /// specifies the position in the list from where to continue listing the
  /// resources.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListRevisionsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListRevisionsResponse> list(
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

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/revisions';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListRevisionsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsDeploymentsRevisionsResourcesResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsDeploymentsRevisionsResourcesResource(
      commons.ApiRequester client)
      : _requester = client;

  /// Gets details about a Resource deployed by Infra Manager.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the Resource in the format:
  /// 'projects/{project_id}/locations/{location}/deployments/{deployment}/revisions/{revision}/resource/{resource}'.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/deployments/\[^/\]+/revisions/\[^/\]+/resources/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Resource].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Resource> get(
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
    return Resource.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists Resources in a given revision.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent in whose context the Resources are listed.
  /// The parent value is in the format:
  /// 'projects/{project_id}/locations/{location}/deployments/{deployment}/revisions/{revision}'.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/deployments/\[^/\]+/revisions/\[^/\]+$`.
  ///
  /// [filter] - Lists the Resources that match the filter expression. A filter
  /// expression filters the resources listed in the response. The expression
  /// must be of the form '{field} {operator} {value}' where operators: '\<',
  /// '\>', '\<=', '\>=', '!=', '=', ':' are supported (colon ':' represents a
  /// HAS operator which is roughly synonymous with equality). {field} can refer
  /// to a proto or JSON field, or a synthetic field. Field names can be
  /// camelCase or snake_case. Examples: - Filter by name: name =
  /// "projects/foo/locations/us-central1/deployments/dep/revisions/bar/resources/baz
  ///
  /// [orderBy] - Field to use to sort the list.
  ///
  /// [pageSize] - When requesting a page of resources, 'page_size' specifies
  /// number of resources to return. If unspecified, at most 500 will be
  /// returned. The maximum value is 1000.
  ///
  /// [pageToken] - Token returned by previous call to 'ListResources' which
  /// specifies the position in the list from where to continue listing the
  /// resources.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListResourcesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListResourcesResponse> list(
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

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/resources';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListResourcesResponse.fromJson(
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

class ProjectsLocationsPreviewsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsPreviewsResource(commons.ApiRequester client)
      : _requester = client;

  /// Creates a Preview.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent in whose context the Preview is created.
  /// The parent value is in the format:
  /// 'projects/{project_id}/locations/{location}'.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [previewId] - Optional. The preview ID.
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
    Preview request,
    core.String parent, {
    core.String? previewId,
    core.String? requestId,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (previewId != null) 'previewId': [previewId],
      if (requestId != null) 'requestId': [requestId],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/previews';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Deletes a Preview.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the Preview in the format:
  /// 'projects/{project_id}/locations/{location}/previews/{preview}'.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/previews/\[^/\]+$`.
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

  /// Export Preview results.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The preview whose results should be exported. The
  /// preview value is in the format:
  /// 'projects/{project_id}/locations/{location}/previews/{preview}'.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/previews/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ExportPreviewResultResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ExportPreviewResultResponse> export(
    ExportPreviewResultRequest request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + ':export';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return ExportPreviewResultResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Gets details about a Preview.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the preview. Format:
  /// 'projects/{project_id}/locations/{location}/previews/{preview}'.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/previews/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Preview].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Preview> get(
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
    return Preview.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists Previews in a given project and location.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent in whose context the Previews are listed.
  /// The parent value is in the format:
  /// 'projects/{project_id}/locations/{location}'.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [filter] - Optional. Lists the Deployments that match the filter
  /// expression. A filter expression filters the resources listed in the
  /// response. The expression must be of the form '{field} {operator} {value}'
  /// where operators: '\<', '\>', '\<=', '\>=', '!=', '=', ':' are supported
  /// (colon ':' represents a HAS operator which is roughly synonymous with
  /// equality). {field} can refer to a proto or JSON field, or a synthetic
  /// field. Field names can be camelCase or snake_case. Examples: - Filter by
  /// name: name = "projects/foo/locations/us-central1/deployments/bar - Filter
  /// by labels: - Resources that have a key called 'foo' labels.foo:* -
  /// Resources that have a key called 'foo' whose value is 'bar' labels.foo =
  /// bar - Filter by state: - Deployments in CREATING state. state=CREATING
  ///
  /// [orderBy] - Optional. Field to use to sort the list.
  ///
  /// [pageSize] - Optional. When requesting a page of resources, 'page_size'
  /// specifies number of resources to return. If unspecified, at most 500 will
  /// be returned. The maximum value is 1000.
  ///
  /// [pageToken] - Optional. Token returned by previous call to
  /// 'ListDeployments' which specifies the position in the list from where to
  /// continue listing the resources.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListPreviewsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListPreviewsResponse> list(
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

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/previews';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListPreviewsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsTerraformVersionsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsTerraformVersionsResource(commons.ApiRequester client)
      : _requester = client;

  /// Gets details about a TerraformVersion.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the TerraformVersion. Format:
  /// 'projects/{project_id}/locations/{location}/terraformVersions/{terraform_version}'
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/terraformVersions/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [TerraformVersion].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<TerraformVersion> get(
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
    return TerraformVersion.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists TerraformVersions in a given project and location.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent in whose context the TerraformVersions are
  /// listed. The parent value is in the format:
  /// 'projects/{project_id}/locations/{location}'.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [filter] - Optional. Lists the TerraformVersions that match the filter
  /// expression. A filter expression filters the resources listed in the
  /// response. The expression must be of the form '{field} {operator} {value}'
  /// where operators: '\<', '\>', '\<=', '\>=', '!=', '=', ':' are supported
  /// (colon ':' represents a HAS operator which is roughly synonymous with
  /// equality). {field} can refer to a proto or JSON field, or a synthetic
  /// field. Field names can be camelCase or snake_case.
  ///
  /// [orderBy] - Optional. Field to use to sort the list.
  ///
  /// [pageSize] - Optional. When requesting a page of terraform versions,
  /// 'page_size' specifies number of terraform versions to return. If
  /// unspecified, at most 500 will be returned. The maximum value is 1000.
  ///
  /// [pageToken] - Optional. Token returned by previous call to
  /// 'ListTerraformVersions' which specifies the position in the list from
  /// where to continue listing the terraform versions.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListTerraformVersionsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListTerraformVersionsResponse> list(
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

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/terraformVersions';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListTerraformVersionsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

/// Outputs and artifacts from applying a deployment.
class ApplyResults {
  /// Location of artifacts (e.g. logs) in Google Cloud Storage.
  ///
  /// Format: `gs://{bucket}/{object}`
  core.String? artifacts;

  /// Location of a blueprint copy and other manifests in Google Cloud Storage.
  ///
  /// Format: `gs://{bucket}/{object}`
  core.String? content;

  /// Map of output name to output info.
  core.Map<core.String, TerraformOutput>? outputs;

  ApplyResults({
    this.artifacts,
    this.content,
    this.outputs,
  });

  ApplyResults.fromJson(core.Map json_)
      : this(
          artifacts: json_['artifacts'] as core.String?,
          content: json_['content'] as core.String?,
          outputs:
              (json_['outputs'] as core.Map<core.String, core.dynamic>?)?.map(
            (key, value) => core.MapEntry(
              key,
              TerraformOutput.fromJson(
                  value as core.Map<core.String, core.dynamic>),
            ),
          ),
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (artifacts != null) 'artifacts': artifacts!,
        if (content != null) 'content': content!,
        if (outputs != null) 'outputs': outputs!,
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

/// The request message for Operations.CancelOperation.
typedef CancelOperationRequest = $Empty;

/// A request to delete a state file passed to a 'DeleteStatefile' call.
class DeleteStatefileRequest {
  /// Lock ID of the lock file to verify that the user who is deleting the state
  /// file previously locked the Deployment.
  ///
  /// Required.
  core.String? lockId;

  DeleteStatefileRequest({
    this.lockId,
  });

  DeleteStatefileRequest.fromJson(core.Map json_)
      : this(
          lockId: json_['lockId'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (lockId != null) 'lockId': lockId!,
      };
}

/// A Deployment is a group of resources and configs managed and provisioned by
/// Infra Manager.
class Deployment {
  /// Arbitrary key-value metadata storage e.g. to help client tools identify
  /// deployments during automation.
  ///
  /// See https://google.aip.dev/148#annotations for details on format and size
  /// limitations.
  ///
  /// Optional.
  core.Map<core.String, core.String>? annotations;

  /// User-defined location of Cloud Build logs and artifacts in Google Cloud
  /// Storage.
  ///
  /// Format: `gs://{bucket}/{folder}` A default bucket will be bootstrapped if
  /// the field is not set or empty. Default bucket format:
  /// `gs://--blueprint-config` Constraints: - The bucket needs to be in the
  /// same project as the deployment - The path cannot be within the path of
  /// `gcs_source` - The field cannot be updated, including changing its
  /// presence
  ///
  /// Optional.
  core.String? artifactsGcsBucket;

  /// Time when the deployment was created.
  ///
  /// Output only.
  core.String? createTime;

  /// Cloud Build instance UUID associated with deleting this deployment.
  ///
  /// Output only.
  core.String? deleteBuild;

  /// Location of Cloud Build logs in Google Cloud Storage, populated when
  /// deleting this deployment.
  ///
  /// Format: `gs://{bucket}/{object}`.
  ///
  /// Output only.
  core.String? deleteLogs;

  /// Location of artifacts from a DeleteDeployment operation.
  ///
  /// Output only.
  ApplyResults? deleteResults;

  /// Error code describing errors that may have occurred.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "ERROR_CODE_UNSPECIFIED" : No error code was specified.
  /// - "REVISION_FAILED" : The revision failed. See Revision for more details.
  /// - "CLOUD_BUILD_PERMISSION_DENIED" : Cloud Build failed due to a permission
  /// issue.
  /// - "DELETE_BUILD_API_FAILED" : Cloud Build job associated with a deployment
  /// deletion could not be started.
  /// - "DELETE_BUILD_RUN_FAILED" : Cloud Build job associated with a deployment
  /// deletion was started but failed.
  /// - "BUCKET_CREATION_PERMISSION_DENIED" : Cloud Storage bucket creation
  /// failed due to a permission issue.
  /// - "BUCKET_CREATION_FAILED" : Cloud Storage bucket creation failed due to
  /// an issue unrelated to permissions.
  core.String? errorCode;

  /// Location of Terraform error logs in Google Cloud Storage.
  ///
  /// Format: `gs://{bucket}/{object}`.
  ///
  /// Output only.
  core.String? errorLogs;

  /// By default, Infra Manager will return a failure when Terraform encounters
  /// a 409 code (resource conflict error) during actuation.
  ///
  /// If this flag is set to true, Infra Manager will instead attempt to
  /// automatically import the resource into the Terraform state (for supported
  /// resource types) and continue actuation. Not all resource types are
  /// supported, refer to documentation.
  core.bool? importExistingResources;

  /// User-defined metadata for the deployment.
  core.Map<core.String, core.String>? labels;

  /// Revision name that was most recently applied.
  ///
  /// Format: `projects/{project}/locations/{location}/deployments/{deployment}/
  /// revisions/{revision}`
  ///
  /// Output only.
  core.String? latestRevision;

  /// Current lock state of the deployment.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "LOCK_STATE_UNSPECIFIED" : The default value. This value is used if the
  /// lock state is omitted.
  /// - "LOCKED" : The deployment is locked.
  /// - "UNLOCKED" : The deployment is unlocked.
  /// - "LOCKING" : The deployment is being locked.
  /// - "UNLOCKING" : The deployment is being unlocked.
  /// - "LOCK_FAILED" : The deployment has failed to lock.
  /// - "UNLOCK_FAILED" : The deployment has failed to unlock.
  core.String? lockState;

  /// Resource name of the deployment.
  ///
  /// Format: `projects/{project}/locations/{location}/deployments/{deployment}`
  core.String? name;

  /// Input to control quota checks for resources in terraform configuration
  /// files.
  ///
  /// There are limited resources on which quota validation applies.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "QUOTA_VALIDATION_UNSPECIFIED" : The default value. QuotaValidation on
  /// terraform configuration files will be disabled in this case.
  /// - "ENABLED" : Enable computing quotas for resources in terraform
  /// configuration files to get visibility on resources with insufficient
  /// quotas.
  /// - "ENFORCED" : Enforce quota checks so deployment fails if there isn't
  /// sufficient quotas available to deploy resources in terraform configuration
  /// files.
  core.String? quotaValidation;

  /// User-specified Service Account (SA) credentials to be used when actuating
  /// resources.
  ///
  /// Format: `projects/{projectID}/serviceAccounts/{serviceAccount}`
  ///
  /// Required.
  core.String? serviceAccount;

  /// Current state of the deployment.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : The default value. This value is used if the state
  /// is omitted.
  /// - "CREATING" : The deployment is being created.
  /// - "ACTIVE" : The deployment is healthy.
  /// - "UPDATING" : The deployment is being updated.
  /// - "DELETING" : The deployment is being deleted.
  /// - "FAILED" : The deployment has encountered an unexpected error.
  /// - "SUSPENDED" : The deployment is no longer being actively reconciled.
  /// This may be the result of recovering the project after deletion.
  /// - "DELETED" : The deployment has been deleted.
  core.String? state;

  /// Additional information regarding the current state.
  ///
  /// Output only.
  core.String? stateDetail;

  /// A blueprint described using Terraform's HashiCorp Configuration Language
  /// as a root module.
  TerraformBlueprint? terraformBlueprint;

  /// Errors encountered when deleting this deployment.
  ///
  /// Errors are truncated to 10 entries, see `delete_results` and `error_logs`
  /// for full details.
  ///
  /// Output only.
  core.List<TerraformError>? tfErrors;

  /// The current Terraform version set on the deployment.
  ///
  /// It is in the format of "Major.Minor.Patch", for example, "1.3.10".
  ///
  /// Output only.
  core.String? tfVersion;

  /// The user-specified Terraform version constraint.
  ///
  /// Example: "=1.3.10".
  ///
  /// Optional.
  core.String? tfVersionConstraint;

  /// Time when the deployment was last modified.
  ///
  /// Output only.
  core.String? updateTime;

  /// The user-specified Cloud Build worker pool resource in which the Cloud
  /// Build job will execute.
  ///
  /// Format:
  /// `projects/{project}/locations/{location}/workerPools/{workerPoolId}`. If
  /// this field is unspecified, the default Cloud Build worker pool will be
  /// used.
  ///
  /// Optional.
  core.String? workerPool;

  Deployment({
    this.annotations,
    this.artifactsGcsBucket,
    this.createTime,
    this.deleteBuild,
    this.deleteLogs,
    this.deleteResults,
    this.errorCode,
    this.errorLogs,
    this.importExistingResources,
    this.labels,
    this.latestRevision,
    this.lockState,
    this.name,
    this.quotaValidation,
    this.serviceAccount,
    this.state,
    this.stateDetail,
    this.terraformBlueprint,
    this.tfErrors,
    this.tfVersion,
    this.tfVersionConstraint,
    this.updateTime,
    this.workerPool,
  });

  Deployment.fromJson(core.Map json_)
      : this(
          annotations:
              (json_['annotations'] as core.Map<core.String, core.dynamic>?)
                  ?.map(
            (key, value) => core.MapEntry(
              key,
              value as core.String,
            ),
          ),
          artifactsGcsBucket: json_['artifactsGcsBucket'] as core.String?,
          createTime: json_['createTime'] as core.String?,
          deleteBuild: json_['deleteBuild'] as core.String?,
          deleteLogs: json_['deleteLogs'] as core.String?,
          deleteResults: json_.containsKey('deleteResults')
              ? ApplyResults.fromJson(
                  json_['deleteResults'] as core.Map<core.String, core.dynamic>)
              : null,
          errorCode: json_['errorCode'] as core.String?,
          errorLogs: json_['errorLogs'] as core.String?,
          importExistingResources:
              json_['importExistingResources'] as core.bool?,
          labels:
              (json_['labels'] as core.Map<core.String, core.dynamic>?)?.map(
            (key, value) => core.MapEntry(
              key,
              value as core.String,
            ),
          ),
          latestRevision: json_['latestRevision'] as core.String?,
          lockState: json_['lockState'] as core.String?,
          name: json_['name'] as core.String?,
          quotaValidation: json_['quotaValidation'] as core.String?,
          serviceAccount: json_['serviceAccount'] as core.String?,
          state: json_['state'] as core.String?,
          stateDetail: json_['stateDetail'] as core.String?,
          terraformBlueprint: json_.containsKey('terraformBlueprint')
              ? TerraformBlueprint.fromJson(json_['terraformBlueprint']
                  as core.Map<core.String, core.dynamic>)
              : null,
          tfErrors: (json_['tfErrors'] as core.List?)
              ?.map((value) => TerraformError.fromJson(
                  value as core.Map<core.String, core.dynamic>))
              .toList(),
          tfVersion: json_['tfVersion'] as core.String?,
          tfVersionConstraint: json_['tfVersionConstraint'] as core.String?,
          updateTime: json_['updateTime'] as core.String?,
          workerPool: json_['workerPool'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (annotations != null) 'annotations': annotations!,
        if (artifactsGcsBucket != null)
          'artifactsGcsBucket': artifactsGcsBucket!,
        if (createTime != null) 'createTime': createTime!,
        if (deleteBuild != null) 'deleteBuild': deleteBuild!,
        if (deleteLogs != null) 'deleteLogs': deleteLogs!,
        if (deleteResults != null) 'deleteResults': deleteResults!,
        if (errorCode != null) 'errorCode': errorCode!,
        if (errorLogs != null) 'errorLogs': errorLogs!,
        if (importExistingResources != null)
          'importExistingResources': importExistingResources!,
        if (labels != null) 'labels': labels!,
        if (latestRevision != null) 'latestRevision': latestRevision!,
        if (lockState != null) 'lockState': lockState!,
        if (name != null) 'name': name!,
        if (quotaValidation != null) 'quotaValidation': quotaValidation!,
        if (serviceAccount != null) 'serviceAccount': serviceAccount!,
        if (state != null) 'state': state!,
        if (stateDetail != null) 'stateDetail': stateDetail!,
        if (terraformBlueprint != null)
          'terraformBlueprint': terraformBlueprint!,
        if (tfErrors != null) 'tfErrors': tfErrors!,
        if (tfVersion != null) 'tfVersion': tfVersion!,
        if (tfVersionConstraint != null)
          'tfVersionConstraint': tfVersionConstraint!,
        if (updateTime != null) 'updateTime': updateTime!,
        if (workerPool != null) 'workerPool': workerPool!,
      };
}

/// A generic empty message that you can re-use to avoid defining duplicated
/// empty messages in your APIs.
///
/// A typical example is to use it as the request or the response type of an API
/// method. For instance: service Foo { rpc Bar(google.protobuf.Empty) returns
/// (google.protobuf.Empty); }
typedef Empty = $Empty;

/// A request to export a state file passed to a 'ExportDeploymentStatefile'
/// call.
class ExportDeploymentStatefileRequest {
  /// If this flag is set to true, the exported deployment state file will be
  /// the draft state.
  ///
  /// This will enable the draft file to be validated before copying it over to
  /// the working state on unlock.
  ///
  /// Optional.
  core.bool? draft;

  ExportDeploymentStatefileRequest({
    this.draft,
  });

  ExportDeploymentStatefileRequest.fromJson(core.Map json_)
      : this(
          draft: json_['draft'] as core.bool?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (draft != null) 'draft': draft!,
      };
}

/// A request to export preview results.
typedef ExportPreviewResultRequest = $Empty;

/// A response to `ExportPreviewResult` call.
///
/// Contains preview results.
class ExportPreviewResultResponse {
  /// Signed URLs for accessing the plan files.
  ///
  /// Output only.
  PreviewResult? result;

  ExportPreviewResultResponse({
    this.result,
  });

  ExportPreviewResultResponse.fromJson(core.Map json_)
      : this(
          result: json_.containsKey('result')
              ? PreviewResult.fromJson(
                  json_['result'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (result != null) 'result': result!,
      };
}

/// A request to export a state file passed to a 'ExportRevisionStatefile' call.
typedef ExportRevisionStatefileRequest = $Empty;

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

/// A set of files in a Git repository.
class GitSource {
  /// Subdirectory inside the repository.
  ///
  /// Example: 'staging/my-package'
  ///
  /// Optional.
  core.String? directory;

  /// Git reference (e.g. branch or tag).
  ///
  /// Optional.
  core.String? ref;

  /// Repository URL.
  ///
  /// Example: 'https://github.com/kubernetes/examples.git'
  ///
  /// Optional.
  core.String? repo;

  GitSource({
    this.directory,
    this.ref,
    this.repo,
  });

  GitSource.fromJson(core.Map json_)
      : this(
          directory: json_['directory'] as core.String?,
          ref: json_['ref'] as core.String?,
          repo: json_['repo'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (directory != null) 'directory': directory!,
        if (ref != null) 'ref': ref!,
        if (repo != null) 'repo': repo!,
      };
}

/// A request to import a state file passed to a 'ImportStatefile' call.
class ImportStatefileRequest {
  /// Lock ID of the lock file to verify that the user who is importing the
  /// state file previously locked the Deployment.
  ///
  /// Required.
  core.String? lockId;

  ImportStatefileRequest({
    this.lockId,
  });

  ImportStatefileRequest.fromJson(core.Map json_)
      : this(
          lockId: json_['lockId'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (lockId != null) 'lockId': lockId!,
      };
}

class ListDeploymentsResponse {
  /// List of Deployments.
  core.List<Deployment>? deployments;

  /// Token to be supplied to the next ListDeployments request via `page_token`
  /// to obtain the next set of results.
  core.String? nextPageToken;

  /// Locations that could not be reached.
  core.List<core.String>? unreachable;

  ListDeploymentsResponse({
    this.deployments,
    this.nextPageToken,
    this.unreachable,
  });

  ListDeploymentsResponse.fromJson(core.Map json_)
      : this(
          deployments: (json_['deployments'] as core.List?)
              ?.map((value) => Deployment.fromJson(
                  value as core.Map<core.String, core.dynamic>))
              .toList(),
          nextPageToken: json_['nextPageToken'] as core.String?,
          unreachable: (json_['unreachable'] as core.List?)
              ?.map((value) => value as core.String)
              .toList(),
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (deployments != null) 'deployments': deployments!,
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

/// A response to a `ListPreviews` call.
///
/// Contains a list of Previews.
class ListPreviewsResponse {
  /// Token to be supplied to the next ListPreviews request via `page_token` to
  /// obtain the next set of results.
  core.String? nextPageToken;

  /// List of Previews.
  core.List<Preview>? previews;

  /// Locations that could not be reached.
  core.List<core.String>? unreachable;

  ListPreviewsResponse({
    this.nextPageToken,
    this.previews,
    this.unreachable,
  });

  ListPreviewsResponse.fromJson(core.Map json_)
      : this(
          nextPageToken: json_['nextPageToken'] as core.String?,
          previews: (json_['previews'] as core.List?)
              ?.map((value) => Preview.fromJson(
                  value as core.Map<core.String, core.dynamic>))
              .toList(),
          unreachable: (json_['unreachable'] as core.List?)
              ?.map((value) => value as core.String)
              .toList(),
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (previews != null) 'previews': previews!,
        if (unreachable != null) 'unreachable': unreachable!,
      };
}

/// A response to a 'ListResources' call.
///
/// Contains a list of Resources.
class ListResourcesResponse {
  /// A token to request the next page of resources from the 'ListResources'
  /// method.
  ///
  /// The value of an empty string means that there are no more resources to
  /// return.
  core.String? nextPageToken;

  /// List of Resources.
  core.List<Resource>? resources;

  /// Locations that could not be reached.
  core.List<core.String>? unreachable;

  ListResourcesResponse({
    this.nextPageToken,
    this.resources,
    this.unreachable,
  });

  ListResourcesResponse.fromJson(core.Map json_)
      : this(
          nextPageToken: json_['nextPageToken'] as core.String?,
          resources: (json_['resources'] as core.List?)
              ?.map((value) => Resource.fromJson(
                  value as core.Map<core.String, core.dynamic>))
              .toList(),
          unreachable: (json_['unreachable'] as core.List?)
              ?.map((value) => value as core.String)
              .toList(),
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (resources != null) 'resources': resources!,
        if (unreachable != null) 'unreachable': unreachable!,
      };
}

/// A response to a 'ListRevisions' call.
///
/// Contains a list of Revisions.
class ListRevisionsResponse {
  /// A token to request the next page of resources from the 'ListRevisions'
  /// method.
  ///
  /// The value of an empty string means that there are no more resources to
  /// return.
  core.String? nextPageToken;

  /// List of Revisions.
  core.List<Revision>? revisions;

  /// Locations that could not be reached.
  core.List<core.String>? unreachable;

  ListRevisionsResponse({
    this.nextPageToken,
    this.revisions,
    this.unreachable,
  });

  ListRevisionsResponse.fromJson(core.Map json_)
      : this(
          nextPageToken: json_['nextPageToken'] as core.String?,
          revisions: (json_['revisions'] as core.List?)
              ?.map((value) => Revision.fromJson(
                  value as core.Map<core.String, core.dynamic>))
              .toList(),
          unreachable: (json_['unreachable'] as core.List?)
              ?.map((value) => value as core.String)
              .toList(),
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (revisions != null) 'revisions': revisions!,
        if (unreachable != null) 'unreachable': unreachable!,
      };
}

/// The response message for the `ListTerraformVersions` method.
class ListTerraformVersionsResponse {
  /// Token to be supplied to the next ListTerraformVersions request via
  /// `page_token` to obtain the next set of results.
  core.String? nextPageToken;

  /// List of TerraformVersions.
  core.List<TerraformVersion>? terraformVersions;

  /// Unreachable resources, if any.
  core.List<core.String>? unreachable;

  ListTerraformVersionsResponse({
    this.nextPageToken,
    this.terraformVersions,
    this.unreachable,
  });

  ListTerraformVersionsResponse.fromJson(core.Map json_)
      : this(
          nextPageToken: json_['nextPageToken'] as core.String?,
          terraformVersions: (json_['terraformVersions'] as core.List?)
              ?.map((value) => TerraformVersion.fromJson(
                  value as core.Map<core.String, core.dynamic>))
              .toList(),
          unreachable: (json_['unreachable'] as core.List?)
              ?.map((value) => value as core.String)
              .toList(),
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (terraformVersions != null) 'terraformVersions': terraformVersions!,
        if (unreachable != null) 'unreachable': unreachable!,
      };
}

/// A resource that represents a Google Cloud location.
typedef Location = $Location00;

/// A request to lock a deployment passed to a 'LockDeployment' call.
typedef LockDeploymentRequest = $Empty;

/// Details about the lock which locked the deployment.
class LockInfo {
  /// Time that the lock was taken.
  core.String? createTime;

  /// Extra information to store with the lock, provided by the caller.
  core.String? info;

  /// Unique ID for the lock to be overridden with generation ID in the backend.
  core.String? lockId;

  /// Terraform operation, provided by the caller.
  core.String? operation;

  /// Terraform version
  core.String? version;

  /// user@hostname when available
  core.String? who;

  LockInfo({
    this.createTime,
    this.info,
    this.lockId,
    this.operation,
    this.version,
    this.who,
  });

  LockInfo.fromJson(core.Map json_)
      : this(
          createTime: json_['createTime'] as core.String?,
          info: json_['info'] as core.String?,
          lockId: json_['lockId'] as core.String?,
          operation: json_['operation'] as core.String?,
          version: json_['version'] as core.String?,
          who: json_['who'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (createTime != null) 'createTime': createTime!,
        if (info != null) 'info': info!,
        if (lockId != null) 'lockId': lockId!,
        if (operation != null) 'operation': operation!,
        if (version != null) 'version': version!,
        if (who != null) 'who': who!,
      };
}

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

/// A preview represents a set of actions Infra Manager would perform to move
/// the resources towards the desired state as specified in the configuration.
class Preview {
  /// Arbitrary key-value metadata storage e.g. to help client tools identify
  /// preview during automation.
  ///
  /// See https://google.aip.dev/148#annotations for details on format and size
  /// limitations.
  ///
  /// Optional.
  core.Map<core.String, core.String>? annotations;

  /// User-defined location of Cloud Build logs, artifacts, and in Google Cloud
  /// Storage.
  ///
  /// Format: `gs://{bucket}/{folder}` A default bucket will be bootstrapped if
  /// the field is not set or empty Default Bucket Format:
  /// `gs://--blueprint-config` Constraints: - The bucket needs to be in the
  /// same project as the deployment - The path cannot be within the path of
  /// `gcs_source` If omitted and deployment resource ref provided has
  /// artifacts_gcs_bucket defined, that artifact bucket is used.
  ///
  /// Optional.
  core.String? artifactsGcsBucket;

  /// Cloud Build instance UUID associated with this preview.
  ///
  /// Output only.
  core.String? build;

  /// Time the preview was created.
  ///
  /// Output only.
  core.String? createTime;

  /// Optional deployment reference.
  ///
  /// If specified, the preview will be performed using the provided
  /// deployment's current state and use any relevant fields from the deployment
  /// unless explicitly specified in the preview create request.
  ///
  /// Optional.
  core.String? deployment;

  /// Code describing any errors that may have occurred.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "ERROR_CODE_UNSPECIFIED" : No error code was specified.
  /// - "CLOUD_BUILD_PERMISSION_DENIED" : Cloud Build failed due to a
  /// permissions issue.
  /// - "BUCKET_CREATION_PERMISSION_DENIED" : Cloud Storage bucket failed to
  /// create due to a permissions issue.
  /// - "BUCKET_CREATION_FAILED" : Cloud Storage bucket failed for a
  /// non-permissions-related issue.
  /// - "DEPLOYMENT_LOCK_ACQUIRE_FAILED" : Acquiring lock on provided deployment
  /// reference failed.
  /// - "PREVIEW_BUILD_API_FAILED" : Preview encountered an error when trying to
  /// access Cloud Build API.
  /// - "PREVIEW_BUILD_RUN_FAILED" : Preview created a build but build failed
  /// and logs were generated.
  core.String? errorCode;

  /// Link to tf-error.ndjson file, which contains the full list of the errors
  /// encountered during a Terraform preview.
  ///
  /// Format: `gs://{bucket}/{object}`.
  ///
  /// Output only.
  core.String? errorLogs;

  /// Additional information regarding the current state.
  ///
  /// Output only.
  Status? errorStatus;

  /// User-defined labels for the preview.
  ///
  /// Optional.
  core.Map<core.String, core.String>? labels;

  /// Location of preview logs in `gs://{bucket}/{object}` format.
  ///
  /// Output only.
  core.String? logs;

  /// Identifier.
  ///
  /// Resource name of the preview. Resource name can be user provided or server
  /// generated ID if unspecified. Format:
  /// `projects/{project}/locations/{location}/previews/{preview}`
  core.String? name;

  /// Artifacts from preview.
  ///
  /// Output only.
  PreviewArtifacts? previewArtifacts;

  /// Current mode of preview.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "PREVIEW_MODE_UNSPECIFIED" : Unspecified policy, default mode will be
  /// used.
  /// - "DEFAULT" : DEFAULT mode generates an execution plan for reconciling
  /// current resource state into expected resource state.
  /// - "DELETE" : DELETE mode generates as execution plan for destroying
  /// current resources.
  core.String? previewMode;

  /// User-specified Service Account (SA) credentials to be used when previewing
  /// resources.
  ///
  /// Format: `projects/{projectID}/serviceAccounts/{serviceAccount}`
  ///
  /// Required.
  core.String? serviceAccount;

  /// Current state of the preview.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : The default value. This value is used if the state
  /// is unknown.
  /// - "CREATING" : The preview is being created.
  /// - "SUCCEEDED" : The preview has succeeded.
  /// - "APPLYING" : The preview is being applied.
  /// - "STALE" : The preview is stale. A preview can become stale if a revision
  /// has been applied after this preview was created.
  /// - "DELETING" : The preview is being deleted.
  /// - "FAILED" : The preview has encountered an unexpected error.
  /// - "DELETED" : The preview has been deleted.
  core.String? state;

  /// The terraform blueprint to preview.
  TerraformBlueprint? terraformBlueprint;

  /// Summary of errors encountered during Terraform preview.
  ///
  /// It has a size limit of 10, i.e. only top 10 errors will be summarized
  /// here.
  ///
  /// Output only.
  core.List<TerraformError>? tfErrors;

  /// The current Terraform version set on the preview.
  ///
  /// It is in the format of "Major.Minor.Patch", for example, "1.3.10".
  ///
  /// Output only.
  core.String? tfVersion;

  /// The user-specified Terraform version constraint.
  ///
  /// Example: "=1.3.10".
  ///
  /// Optional.
  core.String? tfVersionConstraint;

  /// The user-specified Worker Pool resource in which the Cloud Build job will
  /// execute.
  ///
  /// Format projects/{project}/locations/{location}/workerPools/{workerPoolId}
  /// If this field is unspecified, the default Cloud Build worker pool will be
  /// used. If omitted and deployment resource ref provided has worker_pool
  /// defined, that worker pool is used.
  ///
  /// Optional.
  core.String? workerPool;

  Preview({
    this.annotations,
    this.artifactsGcsBucket,
    this.build,
    this.createTime,
    this.deployment,
    this.errorCode,
    this.errorLogs,
    this.errorStatus,
    this.labels,
    this.logs,
    this.name,
    this.previewArtifacts,
    this.previewMode,
    this.serviceAccount,
    this.state,
    this.terraformBlueprint,
    this.tfErrors,
    this.tfVersion,
    this.tfVersionConstraint,
    this.workerPool,
  });

  Preview.fromJson(core.Map json_)
      : this(
          annotations:
              (json_['annotations'] as core.Map<core.String, core.dynamic>?)
                  ?.map(
            (key, value) => core.MapEntry(
              key,
              value as core.String,
            ),
          ),
          artifactsGcsBucket: json_['artifactsGcsBucket'] as core.String?,
          build: json_['build'] as core.String?,
          createTime: json_['createTime'] as core.String?,
          deployment: json_['deployment'] as core.String?,
          errorCode: json_['errorCode'] as core.String?,
          errorLogs: json_['errorLogs'] as core.String?,
          errorStatus: json_.containsKey('errorStatus')
              ? Status.fromJson(
                  json_['errorStatus'] as core.Map<core.String, core.dynamic>)
              : null,
          labels:
              (json_['labels'] as core.Map<core.String, core.dynamic>?)?.map(
            (key, value) => core.MapEntry(
              key,
              value as core.String,
            ),
          ),
          logs: json_['logs'] as core.String?,
          name: json_['name'] as core.String?,
          previewArtifacts: json_.containsKey('previewArtifacts')
              ? PreviewArtifacts.fromJson(json_['previewArtifacts']
                  as core.Map<core.String, core.dynamic>)
              : null,
          previewMode: json_['previewMode'] as core.String?,
          serviceAccount: json_['serviceAccount'] as core.String?,
          state: json_['state'] as core.String?,
          terraformBlueprint: json_.containsKey('terraformBlueprint')
              ? TerraformBlueprint.fromJson(json_['terraformBlueprint']
                  as core.Map<core.String, core.dynamic>)
              : null,
          tfErrors: (json_['tfErrors'] as core.List?)
              ?.map((value) => TerraformError.fromJson(
                  value as core.Map<core.String, core.dynamic>))
              .toList(),
          tfVersion: json_['tfVersion'] as core.String?,
          tfVersionConstraint: json_['tfVersionConstraint'] as core.String?,
          workerPool: json_['workerPool'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (annotations != null) 'annotations': annotations!,
        if (artifactsGcsBucket != null)
          'artifactsGcsBucket': artifactsGcsBucket!,
        if (build != null) 'build': build!,
        if (createTime != null) 'createTime': createTime!,
        if (deployment != null) 'deployment': deployment!,
        if (errorCode != null) 'errorCode': errorCode!,
        if (errorLogs != null) 'errorLogs': errorLogs!,
        if (errorStatus != null) 'errorStatus': errorStatus!,
        if (labels != null) 'labels': labels!,
        if (logs != null) 'logs': logs!,
        if (name != null) 'name': name!,
        if (previewArtifacts != null) 'previewArtifacts': previewArtifacts!,
        if (previewMode != null) 'previewMode': previewMode!,
        if (serviceAccount != null) 'serviceAccount': serviceAccount!,
        if (state != null) 'state': state!,
        if (terraformBlueprint != null)
          'terraformBlueprint': terraformBlueprint!,
        if (tfErrors != null) 'tfErrors': tfErrors!,
        if (tfVersion != null) 'tfVersion': tfVersion!,
        if (tfVersionConstraint != null)
          'tfVersionConstraint': tfVersionConstraint!,
        if (workerPool != null) 'workerPool': workerPool!,
      };
}

/// Artifacts created by preview.
class PreviewArtifacts {
  /// Location of artifacts in Google Cloud Storage.
  ///
  /// Format: `gs://{bucket}/{object}`
  ///
  /// Output only.
  core.String? artifacts;

  /// Location of a blueprint copy and other content in Google Cloud Storage.
  ///
  /// Format: `gs://{bucket}/{object}`
  ///
  /// Output only.
  core.String? content;

  PreviewArtifacts({
    this.artifacts,
    this.content,
  });

  PreviewArtifacts.fromJson(core.Map json_)
      : this(
          artifacts: json_['artifacts'] as core.String?,
          content: json_['content'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (artifacts != null) 'artifacts': artifacts!,
        if (content != null) 'content': content!,
      };
}

/// Contains a signed Cloud Storage URLs.
class PreviewResult {
  /// Plan binary signed URL
  ///
  /// Output only.
  core.String? binarySignedUri;

  /// Plan JSON signed URL
  ///
  /// Output only.
  core.String? jsonSignedUri;

  PreviewResult({
    this.binarySignedUri,
    this.jsonSignedUri,
  });

  PreviewResult.fromJson(core.Map json_)
      : this(
          binarySignedUri: json_['binarySignedUri'] as core.String?,
          jsonSignedUri: json_['jsonSignedUri'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (binarySignedUri != null) 'binarySignedUri': binarySignedUri!,
        if (jsonSignedUri != null) 'jsonSignedUri': jsonSignedUri!,
      };
}

/// Resource represents a Google Cloud Platform resource actuated by IM.
///
/// Resources are child resources of Revisions.
class Resource {
  /// Map of Cloud Asset Inventory (CAI) type to CAI info (e.g. CAI ID).
  ///
  /// CAI type format follows
  /// https://cloud.google.com/asset-inventory/docs/supported-asset-types
  ///
  /// Output only.
  core.Map<core.String, ResourceCAIInfo>? caiAssets;

  /// Intent of the resource.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "INTENT_UNSPECIFIED" : The default value. This value is used if the
  /// intent is omitted.
  /// - "CREATE" : Infra Manager will create this Resource.
  /// - "UPDATE" : Infra Manager will update this Resource.
  /// - "DELETE" : Infra Manager will delete this Resource.
  /// - "RECREATE" : Infra Manager will destroy and recreate this Resource.
  /// - "UNCHANGED" : Infra Manager will leave this Resource untouched.
  core.String? intent;

  /// Resource name.
  ///
  /// Format:
  /// `projects/{project}/locations/{location}/deployments/{deployment}/revisions/{revision}/resources/{resource}`
  ///
  /// Output only.
  core.String? name;

  /// Current state of the resource.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : The default value. This value is used if the state
  /// is omitted.
  /// - "PLANNED" : Resource has been planned for reconcile.
  /// - "IN_PROGRESS" : Resource is actively reconciling into the intended
  /// state.
  /// - "RECONCILED" : Resource has reconciled to intended state.
  /// - "FAILED" : Resource failed to reconcile.
  core.String? state;

  /// Terraform-specific info if this resource was created using Terraform.
  ///
  /// Output only.
  ResourceTerraformInfo? terraformInfo;

  Resource({
    this.caiAssets,
    this.intent,
    this.name,
    this.state,
    this.terraformInfo,
  });

  Resource.fromJson(core.Map json_)
      : this(
          caiAssets:
              (json_['caiAssets'] as core.Map<core.String, core.dynamic>?)?.map(
            (key, value) => core.MapEntry(
              key,
              ResourceCAIInfo.fromJson(
                  value as core.Map<core.String, core.dynamic>),
            ),
          ),
          intent: json_['intent'] as core.String?,
          name: json_['name'] as core.String?,
          state: json_['state'] as core.String?,
          terraformInfo: json_.containsKey('terraformInfo')
              ? ResourceTerraformInfo.fromJson(
                  json_['terraformInfo'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (caiAssets != null) 'caiAssets': caiAssets!,
        if (intent != null) 'intent': intent!,
        if (name != null) 'name': name!,
        if (state != null) 'state': state!,
        if (terraformInfo != null) 'terraformInfo': terraformInfo!,
      };
}

/// CAI info of a Resource.
class ResourceCAIInfo {
  /// CAI resource name in the format following
  /// https://cloud.google.com/apis/design/resource_names#full_resource_name
  core.String? fullResourceName;

  ResourceCAIInfo({
    this.fullResourceName,
  });

  ResourceCAIInfo.fromJson(core.Map json_)
      : this(
          fullResourceName: json_['fullResourceName'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (fullResourceName != null) 'fullResourceName': fullResourceName!,
      };
}

/// Terraform info of a Resource.
class ResourceTerraformInfo {
  /// TF resource address that uniquely identifies this resource within this
  /// deployment.
  core.String? address;

  /// ID attribute of the TF resource
  core.String? id;

  /// TF resource type
  core.String? type;

  ResourceTerraformInfo({
    this.address,
    this.id,
    this.type,
  });

  ResourceTerraformInfo.fromJson(core.Map json_)
      : this(
          address: json_['address'] as core.String?,
          id: json_['id'] as core.String?,
          type: json_['type'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (address != null) 'address': address!,
        if (id != null) 'id': id!,
        if (type != null) 'type': type!,
      };
}

/// A child resource of a Deployment generated by a 'CreateDeployment' or
/// 'UpdateDeployment' call.
///
/// Each Revision contains metadata pertaining to a snapshot of a particular
/// Deployment.
class Revision {
  /// The action which created this revision
  ///
  /// Output only.
  /// Possible string values are:
  /// - "ACTION_UNSPECIFIED" : The default value. This value is used if the
  /// action is omitted.
  /// - "CREATE" : The revision was generated by creating a deployment.
  /// - "UPDATE" : The revision was generated by updating a deployment.
  /// - "DELETE" : The revision was deleted.
  core.String? action;

  /// Outputs and artifacts from applying a deployment.
  ///
  /// Output only.
  ApplyResults? applyResults;

  /// Cloud Build instance UUID associated with this revision.
  ///
  /// Output only.
  core.String? build;

  /// Time when the revision was created.
  ///
  /// Output only.
  core.String? createTime;

  /// Code describing any errors that may have occurred.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "ERROR_CODE_UNSPECIFIED" : No error code was specified.
  /// - "CLOUD_BUILD_PERMISSION_DENIED" : Cloud Build failed due to a permission
  /// issue.
  /// - "APPLY_BUILD_API_FAILED" : Cloud Build job associated with creating or
  /// updating a deployment could not be started.
  /// - "APPLY_BUILD_RUN_FAILED" : Cloud Build job associated with creating or
  /// updating a deployment was started but failed.
  /// - "QUOTA_VALIDATION_FAILED" : quota validation failed for one or more
  /// resources in terraform configuration files.
  core.String? errorCode;

  /// Location of Terraform error logs in Google Cloud Storage.
  ///
  /// Format: `gs://{bucket}/{object}`.
  ///
  /// Output only.
  core.String? errorLogs;

  /// By default, Infra Manager will return a failure when Terraform encounters
  /// a 409 code (resource conflict error) during actuation.
  ///
  /// If this flag is set to true, Infra Manager will instead attempt to
  /// automatically import the resource into the Terraform state (for supported
  /// resource types) and continue actuation. Not all resource types are
  /// supported, refer to documentation.
  ///
  /// Output only.
  core.bool? importExistingResources;

  /// Location of Revision operation logs in `gs://{bucket}/{object}` format.
  ///
  /// Output only.
  core.String? logs;

  /// Revision name.
  ///
  /// Format: `projects/{project}/locations/{location}/deployments/{deployment}/
  /// revisions/{revision}`
  core.String? name;

  /// Input to control quota checks for resources in terraform configuration
  /// files.
  ///
  /// There are limited resources on which quota validation applies.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "QUOTA_VALIDATION_UNSPECIFIED" : The default value. QuotaValidation on
  /// terraform configuration files will be disabled in this case.
  /// - "ENABLED" : Enable computing quotas for resources in terraform
  /// configuration files to get visibility on resources with insufficient
  /// quotas.
  /// - "ENFORCED" : Enforce quota checks so deployment fails if there isn't
  /// sufficient quotas available to deploy resources in terraform configuration
  /// files.
  core.String? quotaValidation;

  /// Cloud Storage path containing quota validation results.
  ///
  /// This field is set when a user sets Deployment.quota_validation field to
  /// ENABLED or ENFORCED. Format: `gs://{bucket}/{object}`.
  ///
  /// Output only.
  core.String? quotaValidationResults;

  /// User-specified Service Account (SA) to be used as credential to manage
  /// resources.
  ///
  /// Format: `projects/{projectID}/serviceAccounts/{serviceAccount}`
  ///
  /// Output only.
  core.String? serviceAccount;

  /// Current state of the revision.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : The default value. This value is used if the state
  /// is omitted.
  /// - "APPLYING" : The revision is being applied.
  /// - "APPLIED" : The revision was applied successfully.
  /// - "FAILED" : The revision could not be applied successfully.
  core.String? state;

  /// Additional info regarding the current state.
  ///
  /// Output only.
  core.String? stateDetail;

  /// A blueprint described using Terraform's HashiCorp Configuration Language
  /// as a root module.
  ///
  /// Output only.
  TerraformBlueprint? terraformBlueprint;

  /// Errors encountered when creating or updating this deployment.
  ///
  /// Errors are truncated to 10 entries, see `delete_results` and `error_logs`
  /// for full details.
  ///
  /// Output only.
  core.List<TerraformError>? tfErrors;

  /// The version of Terraform used to create the Revision.
  ///
  /// It is in the format of "Major.Minor.Patch", for example, "1.3.10".
  ///
  /// Output only.
  core.String? tfVersion;

  /// The user-specified Terraform version constraint.
  ///
  /// Example: "=1.3.10".
  ///
  /// Output only.
  core.String? tfVersionConstraint;

  /// Time when the revision was last modified.
  ///
  /// Output only.
  core.String? updateTime;

  /// The user-specified Cloud Build worker pool resource in which the Cloud
  /// Build job will execute.
  ///
  /// Format:
  /// `projects/{project}/locations/{location}/workerPools/{workerPoolId}`. If
  /// this field is unspecified, the default Cloud Build worker pool will be
  /// used.
  ///
  /// Output only.
  core.String? workerPool;

  Revision({
    this.action,
    this.applyResults,
    this.build,
    this.createTime,
    this.errorCode,
    this.errorLogs,
    this.importExistingResources,
    this.logs,
    this.name,
    this.quotaValidation,
    this.quotaValidationResults,
    this.serviceAccount,
    this.state,
    this.stateDetail,
    this.terraformBlueprint,
    this.tfErrors,
    this.tfVersion,
    this.tfVersionConstraint,
    this.updateTime,
    this.workerPool,
  });

  Revision.fromJson(core.Map json_)
      : this(
          action: json_['action'] as core.String?,
          applyResults: json_.containsKey('applyResults')
              ? ApplyResults.fromJson(
                  json_['applyResults'] as core.Map<core.String, core.dynamic>)
              : null,
          build: json_['build'] as core.String?,
          createTime: json_['createTime'] as core.String?,
          errorCode: json_['errorCode'] as core.String?,
          errorLogs: json_['errorLogs'] as core.String?,
          importExistingResources:
              json_['importExistingResources'] as core.bool?,
          logs: json_['logs'] as core.String?,
          name: json_['name'] as core.String?,
          quotaValidation: json_['quotaValidation'] as core.String?,
          quotaValidationResults:
              json_['quotaValidationResults'] as core.String?,
          serviceAccount: json_['serviceAccount'] as core.String?,
          state: json_['state'] as core.String?,
          stateDetail: json_['stateDetail'] as core.String?,
          terraformBlueprint: json_.containsKey('terraformBlueprint')
              ? TerraformBlueprint.fromJson(json_['terraformBlueprint']
                  as core.Map<core.String, core.dynamic>)
              : null,
          tfErrors: (json_['tfErrors'] as core.List?)
              ?.map((value) => TerraformError.fromJson(
                  value as core.Map<core.String, core.dynamic>))
              .toList(),
          tfVersion: json_['tfVersion'] as core.String?,
          tfVersionConstraint: json_['tfVersionConstraint'] as core.String?,
          updateTime: json_['updateTime'] as core.String?,
          workerPool: json_['workerPool'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (action != null) 'action': action!,
        if (applyResults != null) 'applyResults': applyResults!,
        if (build != null) 'build': build!,
        if (createTime != null) 'createTime': createTime!,
        if (errorCode != null) 'errorCode': errorCode!,
        if (errorLogs != null) 'errorLogs': errorLogs!,
        if (importExistingResources != null)
          'importExistingResources': importExistingResources!,
        if (logs != null) 'logs': logs!,
        if (name != null) 'name': name!,
        if (quotaValidation != null) 'quotaValidation': quotaValidation!,
        if (quotaValidationResults != null)
          'quotaValidationResults': quotaValidationResults!,
        if (serviceAccount != null) 'serviceAccount': serviceAccount!,
        if (state != null) 'state': state!,
        if (stateDetail != null) 'stateDetail': stateDetail!,
        if (terraformBlueprint != null)
          'terraformBlueprint': terraformBlueprint!,
        if (tfErrors != null) 'tfErrors': tfErrors!,
        if (tfVersion != null) 'tfVersion': tfVersion!,
        if (tfVersionConstraint != null)
          'tfVersionConstraint': tfVersionConstraint!,
        if (updateTime != null) 'updateTime': updateTime!,
        if (workerPool != null) 'workerPool': workerPool!,
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

/// Contains info about a Terraform state file
class Statefile {
  /// Cloud Storage signed URI used for downloading or uploading the state file.
  ///
  /// Output only.
  core.String? signedUri;

  Statefile({
    this.signedUri,
  });

  Statefile.fromJson(core.Map json_)
      : this(
          signedUri: json_['signedUri'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (signedUri != null) 'signedUri': signedUri!,
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

/// TerraformBlueprint describes the source of a Terraform root module which
/// describes the resources and configs to be deployed.
class TerraformBlueprint {
  /// URI of an object in Google Cloud Storage.
  ///
  /// Format: `gs://{bucket}/{object}` URI may also specify an object version
  /// for zipped objects. Format: `gs://{bucket}/{object}#{version}`
  core.String? gcsSource;

  /// URI of a public Git repo.
  GitSource? gitSource;

  /// Input variable values for the Terraform blueprint.
  ///
  /// Optional.
  core.Map<core.String, TerraformVariable>? inputValues;

  TerraformBlueprint({
    this.gcsSource,
    this.gitSource,
    this.inputValues,
  });

  TerraformBlueprint.fromJson(core.Map json_)
      : this(
          gcsSource: json_['gcsSource'] as core.String?,
          gitSource: json_.containsKey('gitSource')
              ? GitSource.fromJson(
                  json_['gitSource'] as core.Map<core.String, core.dynamic>)
              : null,
          inputValues:
              (json_['inputValues'] as core.Map<core.String, core.dynamic>?)
                  ?.map(
            (key, value) => core.MapEntry(
              key,
              TerraformVariable.fromJson(
                  value as core.Map<core.String, core.dynamic>),
            ),
          ),
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (gcsSource != null) 'gcsSource': gcsSource!,
        if (gitSource != null) 'gitSource': gitSource!,
        if (inputValues != null) 'inputValues': inputValues!,
      };
}

/// Errors encountered during actuation using Terraform
class TerraformError {
  /// Original error response from underlying Google API, if available.
  ///
  /// Output only.
  Status? error;

  /// A human-readable error description.
  core.String? errorDescription;

  /// HTTP response code returned from Google Cloud Platform APIs when Terraform
  /// fails to provision the resource.
  ///
  /// If unset or 0, no HTTP response code was returned by Terraform.
  core.int? httpResponseCode;

  /// Address of the resource associated with the error, e.g.
  /// `google_compute_network.vpc_network`.
  core.String? resourceAddress;

  TerraformError({
    this.error,
    this.errorDescription,
    this.httpResponseCode,
    this.resourceAddress,
  });

  TerraformError.fromJson(core.Map json_)
      : this(
          error: json_.containsKey('error')
              ? Status.fromJson(
                  json_['error'] as core.Map<core.String, core.dynamic>)
              : null,
          errorDescription: json_['errorDescription'] as core.String?,
          httpResponseCode: json_['httpResponseCode'] as core.int?,
          resourceAddress: json_['resourceAddress'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (error != null) 'error': error!,
        if (errorDescription != null) 'errorDescription': errorDescription!,
        if (httpResponseCode != null) 'httpResponseCode': httpResponseCode!,
        if (resourceAddress != null) 'resourceAddress': resourceAddress!,
      };
}

/// Describes a Terraform output.
class TerraformOutput {
  /// Identifies whether Terraform has set this output as a potential sensitive
  /// value.
  core.bool? sensitive;

  /// Value of output.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Object? value;

  TerraformOutput({
    this.sensitive,
    this.value,
  });

  TerraformOutput.fromJson(core.Map json_)
      : this(
          sensitive: json_['sensitive'] as core.bool?,
          value: json_['value'],
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (sensitive != null) 'sensitive': sensitive!,
        if (value != null) 'value': value!,
      };
}

/// A Terraform input variable.
class TerraformVariable {
  /// Input variable value.
  ///
  /// Optional.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Object? inputValue;

  TerraformVariable({
    this.inputValue,
  });

  TerraformVariable.fromJson(core.Map json_)
      : this(
          inputValue: json_['inputValue'],
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (inputValue != null) 'inputValue': inputValue!,
      };
}

/// A TerraformVersion represents the support state the corresponding Terraform
/// version.
class TerraformVersion {
  /// When the version is deprecated.
  ///
  /// Output only.
  core.String? deprecateTime;

  /// Identifier.
  ///
  /// The version name is in the format:
  /// 'projects/{project_id}/locations/{location}/terraformVersions/{terraform_version}'.
  core.String? name;

  /// When the version is obsolete.
  ///
  /// Output only.
  core.String? obsoleteTime;

  /// The state of the version, ACTIVE, DEPRECATED or OBSOLETE.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : The default value. This value is used if the state
  /// is omitted.
  /// - "ACTIVE" : The version is actively supported.
  /// - "DEPRECATED" : The version is deprecated.
  /// - "OBSOLETE" : The version is obsolete.
  core.String? state;

  /// When the version is supported.
  ///
  /// Output only.
  core.String? supportTime;

  TerraformVersion({
    this.deprecateTime,
    this.name,
    this.obsoleteTime,
    this.state,
    this.supportTime,
  });

  TerraformVersion.fromJson(core.Map json_)
      : this(
          deprecateTime: json_['deprecateTime'] as core.String?,
          name: json_['name'] as core.String?,
          obsoleteTime: json_['obsoleteTime'] as core.String?,
          state: json_['state'] as core.String?,
          supportTime: json_['supportTime'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (deprecateTime != null) 'deprecateTime': deprecateTime!,
        if (name != null) 'name': name!,
        if (obsoleteTime != null) 'obsoleteTime': obsoleteTime!,
        if (state != null) 'state': state!,
        if (supportTime != null) 'supportTime': supportTime!,
      };
}

/// Request message for `TestIamPermissions` method.
typedef TestIamPermissionsRequest = $TestIamPermissionsRequest00;

/// Response message for `TestIamPermissions` method.
typedef TestIamPermissionsResponse = $PermissionsResponse;

/// A request to unlock a state file passed to a 'UnlockDeployment' call.
class UnlockDeploymentRequest {
  /// Lock ID of the lock file to be unlocked.
  ///
  /// Required.
  core.String? lockId;

  UnlockDeploymentRequest({
    this.lockId,
  });

  UnlockDeploymentRequest.fromJson(core.Map json_)
      : this(
          lockId: json_['lockId'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (lockId != null) 'lockId': lockId!,
      };
}
