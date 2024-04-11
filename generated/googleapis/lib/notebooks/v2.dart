// This is a generated file (see the discoveryapis_generator project).

// ignore_for_file: camel_case_types
// ignore_for_file: comment_references
// ignore_for_file: deprecated_member_use_from_same_package
// ignore_for_file: lines_longer_than_80_chars
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: prefer_interpolation_to_compose_strings
// ignore_for_file: unnecessary_brace_in_string_interps
// ignore_for_file: unnecessary_lambdas
// ignore_for_file: unnecessary_string_interpolations

/// Notebooks API - v2
///
/// Notebooks API is used to manage notebook resources in Google Cloud.
///
/// For more information, see <https://cloud.google.com/notebooks/docs/>
///
/// Create an instance of [AIPlatformNotebooksApi] to access these resources:
///
/// - [ProjectsResource]
///   - [ProjectsLocationsResource]
///     - [ProjectsLocationsInstancesResource]
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

/// Notebooks API is used to manage notebook resources in Google Cloud.
class AIPlatformNotebooksApi {
  /// See, edit, configure, and delete your Google Cloud data and see the email
  /// address for your Google Account.
  static const cloudPlatformScope =
      'https://www.googleapis.com/auth/cloud-platform';

  final commons.ApiRequester _requester;

  ProjectsResource get projects => ProjectsResource(_requester);

  AIPlatformNotebooksApi(http.Client client,
      {core.String rootUrl = 'https://notebooks.googleapis.com/',
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

  ProjectsLocationsInstancesResource get instances =>
      ProjectsLocationsInstancesResource(_requester);
  ProjectsLocationsOperationsResource get operations =>
      ProjectsLocationsOperationsResource(_requester);

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

    final url_ = 'v2/' + core.Uri.encodeFull('$name');

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

    final url_ = 'v2/' + core.Uri.encodeFull('$name') + '/locations';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListLocationsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsInstancesResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsInstancesResource(commons.ApiRequester client)
      : _requester = client;

  /// Checks whether a notebook instance is upgradable.
  ///
  /// Request parameters:
  ///
  /// [notebookInstance] - Required. Format:
  /// `projects/{project_id}/locations/{location}/instances/{instance_id}`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/instances/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [CheckInstanceUpgradabilityResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<CheckInstanceUpgradabilityResponse> checkUpgradability(
    core.String notebookInstance, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2/' +
        core.Uri.encodeFull('$notebookInstance') +
        ':checkUpgradability';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return CheckInstanceUpgradabilityResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Creates a new Instance in a given project and location.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Format:
  /// `parent=projects/{project_id}/locations/{location}`
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [instanceId] - Required. User-defined unique ID of this instance.
  ///
  /// [requestId] - Optional. Idempotent request UUID.
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
    Instance request,
    core.String parent, {
    core.String? instanceId,
    core.String? requestId,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (instanceId != null) 'instanceId': [instanceId],
      if (requestId != null) 'requestId': [requestId],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$parent') + '/instances';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Deletes a single Instance.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Format:
  /// `projects/{project_id}/locations/{location}/instances/{instance_id}`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/instances/\[^/\]+$`.
  ///
  /// [requestId] - Optional. Idempotent request UUID.
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

    final url_ = 'v2/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Creates a Diagnostic File and runs Diagnostic Tool given an Instance.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Format:
  /// `projects/{project_id}/locations/{location}/instances/{instance_id}`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/instances/\[^/\]+$`.
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
  async.Future<Operation> diagnose(
    DiagnoseInstanceRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$name') + ':diagnose';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Gets details of a single Instance.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Format:
  /// `projects/{project_id}/locations/{location}/instances/{instance_id}`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/instances/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Instance].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Instance> get(
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
    return Instance.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Gets general backend configurations that might also affect the frontend.
  ///
  /// Location is required by CCFE. Although we could bypass it to send
  /// location- less request directly to the backend job, we would need CPE
  /// (go/cloud-cpe). Having the location might also be useful depending on the
  /// query.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Format: `projects/{project_id}/locations/{location}`
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Config].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Config> getConfig(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$name') + '/instances:getConfig';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return Config.fromJson(response_ as core.Map<core.String, core.dynamic>);
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
  /// `^projects/\[^/\]+/locations/\[^/\]+/instances/\[^/\]+$`.
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

    final url_ = 'v2/' + core.Uri.encodeFull('$resource') + ':getIamPolicy';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return Policy.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists instances in a given project and location.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Format:
  /// `parent=projects/{project_id}/locations/{location}`
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [filter] - Optional. List filter.
  ///
  /// [orderBy] - Optional. Sort results. Supported values are "name", "name
  /// desc" or "" (unsorted).
  ///
  /// [pageSize] - Optional. Maximum return size of the list call.
  ///
  /// [pageToken] - Optional. A previous returned page token that can be used to
  /// continue listing from the last result.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListInstancesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListInstancesResponse> list(
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

    final url_ = 'v2/' + core.Uri.encodeFull('$parent') + '/instances';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListInstancesResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// UpdateInstance updates an Instance.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Output only. The name of this notebook instance. Format:
  /// `projects/{project_id}/locations/{location}/instances/{instance_id}`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/instances/\[^/\]+$`.
  ///
  /// [requestId] - Optional. Idempotent request UUID.
  ///
  /// [updateMask] - Required. Mask used to update an instance
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
    Instance request,
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

    final url_ = 'v2/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Allows notebook instances to report their latest instance information to
  /// the Notebooks API server.
  ///
  /// The server will merge the reported information to the instance metadata
  /// store. Do not use this method directly.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Format:
  /// `projects/{project_id}/locations/{location}/instances/{instance_id}`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/instances/\[^/\]+$`.
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
  async.Future<Operation> reportInfoSystem(
    ReportInstanceInfoSystemRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$name') + ':reportInfoSystem';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Resets a notebook instance.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Format:
  /// `projects/{project_id}/locations/{location}/instances/{instance_id}`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/instances/\[^/\]+$`.
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
  async.Future<Operation> reset(
    ResetInstanceRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$name') + ':reset';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Resize a notebook instance disk to a higher capacity.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [notebookInstance] - Required. Format:
  /// `projects/{project_id}/locations/{location}/instances/{instance_id}`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/instances/\[^/\]+$`.
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
  async.Future<Operation> resizeDisk(
    ResizeDiskRequest request,
    core.String notebookInstance, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v2/' + core.Uri.encodeFull('$notebookInstance') + ':resizeDisk';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Rollbacks a notebook instance to the previous version.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Format:
  /// `projects/{project_id}/locations/{location}/instances/{instance_id}`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/instances/\[^/\]+$`.
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
  async.Future<Operation> rollback(
    RollbackInstanceRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$name') + ':rollback';

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
  /// `^projects/\[^/\]+/locations/\[^/\]+/instances/\[^/\]+$`.
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

    final url_ = 'v2/' + core.Uri.encodeFull('$resource') + ':setIamPolicy';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Policy.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Starts a notebook instance.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Format:
  /// `projects/{project_id}/locations/{location}/instances/{instance_id}`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/instances/\[^/\]+$`.
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
  async.Future<Operation> start(
    StartInstanceRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$name') + ':start';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Stops a notebook instance.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Format:
  /// `projects/{project_id}/locations/{location}/instances/{instance_id}`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/instances/\[^/\]+$`.
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
  async.Future<Operation> stop(
    StopInstanceRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$name') + ':stop';

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
  /// `^projects/\[^/\]+/locations/\[^/\]+/instances/\[^/\]+$`.
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
        'v2/' + core.Uri.encodeFull('$resource') + ':testIamPermissions';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return TestIamPermissionsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Upgrades a notebook instance to the latest version.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Format:
  /// `projects/{project_id}/locations/{location}/instances/{instance_id}`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/instances/\[^/\]+$`.
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
  async.Future<Operation> upgrade(
    UpgradeInstanceRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$name') + ':upgrade';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Allows notebook instances to upgrade themselves.
  ///
  /// Do not use this method directly.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Format:
  /// `projects/{project_id}/locations/{location}/instances/{instance_id}`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/instances/\[^/\]+$`.
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
  async.Future<Operation> upgradeSystem(
    UpgradeInstanceSystemRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$name') + ':upgradeSystem';

    final response_ = await _requester.request(
      url_,
      'POST',
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
  /// Operation.error value with a google.rpc.Status.code of 1, corresponding to
  /// `Code.CANCELLED`.
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
  async.Future<Empty> delete(
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
        response_ as core.Map<core.String, core.dynamic>);
  }
}

/// An accelerator configuration for a VM instance Definition of a hardware
/// accelerator.
///
/// Note that there is no check on `type` and `core_count` combinations. TPUs
/// are not supported. See
/// [GPUs on Compute Engine](https://cloud.google.com/compute/docs/gpus/#gpus-list)
/// to find a valid combination.
class AcceleratorConfig {
  /// Count of cores of this accelerator.
  ///
  /// Optional.
  core.String? coreCount;

  /// Type of this accelerator.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "ACCELERATOR_TYPE_UNSPECIFIED" : Accelerator type is not specified.
  /// - "NVIDIA_TESLA_P100" : Accelerator type is Nvidia Tesla P100.
  /// - "NVIDIA_TESLA_V100" : Accelerator type is Nvidia Tesla V100.
  /// - "NVIDIA_TESLA_P4" : Accelerator type is Nvidia Tesla P4.
  /// - "NVIDIA_TESLA_T4" : Accelerator type is Nvidia Tesla T4.
  /// - "NVIDIA_TESLA_A100" : Accelerator type is Nvidia Tesla A100 - 40GB.
  /// - "NVIDIA_A100_80GB" : Accelerator type is Nvidia Tesla A100 - 80GB.
  /// - "NVIDIA_L4" : Accelerator type is Nvidia Tesla L4.
  /// - "NVIDIA_TESLA_T4_VWS" : Accelerator type is NVIDIA Tesla T4 Virtual
  /// Workstations.
  /// - "NVIDIA_TESLA_P100_VWS" : Accelerator type is NVIDIA Tesla P100 Virtual
  /// Workstations.
  /// - "NVIDIA_TESLA_P4_VWS" : Accelerator type is NVIDIA Tesla P4 Virtual
  /// Workstations.
  core.String? type;

  AcceleratorConfig({
    this.coreCount,
    this.type,
  });

  AcceleratorConfig.fromJson(core.Map json_)
      : this(
          coreCount: json_.containsKey('coreCount')
              ? json_['coreCount'] as core.String
              : null,
          type: json_.containsKey('type') ? json_['type'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (coreCount != null) 'coreCount': coreCount!,
        if (type != null) 'type': type!,
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

/// The definition of a boot disk.
class BootDisk {
  /// Input only.
  ///
  /// Disk encryption method used on the boot and data disks, defaults to GMEK.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "DISK_ENCRYPTION_UNSPECIFIED" : Disk encryption is not specified.
  /// - "GMEK" : Use Google managed encryption keys to encrypt the boot disk.
  /// - "CMEK" : Use customer managed encryption keys to encrypt the boot disk.
  core.String? diskEncryption;

  /// The size of the boot disk in GB attached to this instance, up to a maximum
  /// of 64000 GB (64 TB).
  ///
  /// If not specified, this defaults to the recommended value of 150GB.
  ///
  /// Optional.
  core.String? diskSizeGb;

  /// Indicates the type of the disk.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "DISK_TYPE_UNSPECIFIED" : Disk type not set.
  /// - "PD_STANDARD" : Standard persistent disk type.
  /// - "PD_SSD" : SSD persistent disk type.
  /// - "PD_BALANCED" : Balanced persistent disk type.
  /// - "PD_EXTREME" : Extreme persistent disk type.
  core.String? diskType;

  /// Input only.
  ///
  /// The KMS key used to encrypt the disks, only applicable if disk_encryption
  /// is CMEK. Format:
  /// `projects/{project_id}/locations/{location}/keyRings/{key_ring_id}/cryptoKeys/{key_id}`
  /// Learn more about using your own encryption keys.
  ///
  /// Optional.
  core.String? kmsKey;

  BootDisk({
    this.diskEncryption,
    this.diskSizeGb,
    this.diskType,
    this.kmsKey,
  });

  BootDisk.fromJson(core.Map json_)
      : this(
          diskEncryption: json_.containsKey('diskEncryption')
              ? json_['diskEncryption'] as core.String
              : null,
          diskSizeGb: json_.containsKey('diskSizeGb')
              ? json_['diskSizeGb'] as core.String
              : null,
          diskType: json_.containsKey('diskType')
              ? json_['diskType'] as core.String
              : null,
          kmsKey: json_.containsKey('kmsKey')
              ? json_['kmsKey'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (diskEncryption != null) 'diskEncryption': diskEncryption!,
        if (diskSizeGb != null) 'diskSizeGb': diskSizeGb!,
        if (diskType != null) 'diskType': diskType!,
        if (kmsKey != null) 'kmsKey': kmsKey!,
      };
}

/// The request message for Operations.CancelOperation.
typedef CancelOperationRequest = $Empty;

/// Response for checking if a notebook instance is upgradeable.
typedef CheckInstanceUpgradabilityResponse = $Response;

/// Response for getting WbI configurations in a location
class Config {
  /// The list of available images to create a WbI.
  ///
  /// Output only.
  core.List<ImageRelease>? availableImages;

  /// The default values for configuration.
  ///
  /// Output only.
  DefaultValues? defaultValues;

  /// The supported values for configuration.
  ///
  /// Output only.
  SupportedValues? supportedValues;

  Config({
    this.availableImages,
    this.defaultValues,
    this.supportedValues,
  });

  Config.fromJson(core.Map json_)
      : this(
          availableImages: json_.containsKey('availableImages')
              ? (json_['availableImages'] as core.List)
                  .map((value) => ImageRelease.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          defaultValues: json_.containsKey('defaultValues')
              ? DefaultValues.fromJson(
                  json_['defaultValues'] as core.Map<core.String, core.dynamic>)
              : null,
          supportedValues: json_.containsKey('supportedValues')
              ? SupportedValues.fromJson(json_['supportedValues']
                  as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (availableImages != null) 'availableImages': availableImages!,
        if (defaultValues != null) 'defaultValues': defaultValues!,
        if (supportedValues != null) 'supportedValues': supportedValues!,
      };
}

/// Definition of a container image for starting a notebook instance with the
/// environment installed in a container.
class ContainerImage {
  /// The path to the container image repository.
  ///
  /// For example: `gcr.io/{project_id}/{image_name}`
  ///
  /// Required.
  core.String? repository;

  /// The tag of the container image.
  ///
  /// If not specified, this defaults to the latest tag.
  ///
  /// Optional.
  core.String? tag;

  ContainerImage({
    this.repository,
    this.tag,
  });

  ContainerImage.fromJson(core.Map json_)
      : this(
          repository: json_.containsKey('repository')
              ? json_['repository'] as core.String
              : null,
          tag: json_.containsKey('tag') ? json_['tag'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (repository != null) 'repository': repository!,
        if (tag != null) 'tag': tag!,
      };
}

/// An instance-attached disk resource.
class DataDisk {
  /// Input only.
  ///
  /// Disk encryption method used on the boot and data disks, defaults to GMEK.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "DISK_ENCRYPTION_UNSPECIFIED" : Disk encryption is not specified.
  /// - "GMEK" : Use Google managed encryption keys to encrypt the boot disk.
  /// - "CMEK" : Use customer managed encryption keys to encrypt the boot disk.
  core.String? diskEncryption;

  /// The size of the disk in GB attached to this VM instance, up to a maximum
  /// of 64000 GB (64 TB).
  ///
  /// If not specified, this defaults to 100.
  ///
  /// Optional.
  core.String? diskSizeGb;

  /// Input only.
  ///
  /// Indicates the type of the disk.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "DISK_TYPE_UNSPECIFIED" : Disk type not set.
  /// - "PD_STANDARD" : Standard persistent disk type.
  /// - "PD_SSD" : SSD persistent disk type.
  /// - "PD_BALANCED" : Balanced persistent disk type.
  /// - "PD_EXTREME" : Extreme persistent disk type.
  core.String? diskType;

  /// Input only.
  ///
  /// The KMS key used to encrypt the disks, only applicable if disk_encryption
  /// is CMEK. Format:
  /// `projects/{project_id}/locations/{location}/keyRings/{key_ring_id}/cryptoKeys/{key_id}`
  /// Learn more about using your own encryption keys.
  ///
  /// Optional.
  core.String? kmsKey;

  DataDisk({
    this.diskEncryption,
    this.diskSizeGb,
    this.diskType,
    this.kmsKey,
  });

  DataDisk.fromJson(core.Map json_)
      : this(
          diskEncryption: json_.containsKey('diskEncryption')
              ? json_['diskEncryption'] as core.String
              : null,
          diskSizeGb: json_.containsKey('diskSizeGb')
              ? json_['diskSizeGb'] as core.String
              : null,
          diskType: json_.containsKey('diskType')
              ? json_['diskType'] as core.String
              : null,
          kmsKey: json_.containsKey('kmsKey')
              ? json_['kmsKey'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (diskEncryption != null) 'diskEncryption': diskEncryption!,
        if (diskSizeGb != null) 'diskSizeGb': diskSizeGb!,
        if (diskType != null) 'diskType': diskType!,
        if (kmsKey != null) 'kmsKey': kmsKey!,
      };
}

/// DefaultValues represents the default configuration values.
class DefaultValues {
  /// The default machine type used by the backend if not provided by the user.
  ///
  /// Output only.
  core.String? machineType;

  DefaultValues({
    this.machineType,
  });

  DefaultValues.fromJson(core.Map json_)
      : this(
          machineType: json_.containsKey('machineType')
              ? json_['machineType'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (machineType != null) 'machineType': machineType!,
      };
}

/// Request for creating a notebook instance diagnostic file.
class DiagnoseInstanceRequest {
  /// Defines flags that are used to run the diagnostic tool
  ///
  /// Required.
  DiagnosticConfig? diagnosticConfig;

  /// Maxmium amount of time in minutes before the operation times out.
  ///
  /// Optional.
  core.int? timeoutMinutes;

  DiagnoseInstanceRequest({
    this.diagnosticConfig,
    this.timeoutMinutes,
  });

  DiagnoseInstanceRequest.fromJson(core.Map json_)
      : this(
          diagnosticConfig: json_.containsKey('diagnosticConfig')
              ? DiagnosticConfig.fromJson(json_['diagnosticConfig']
                  as core.Map<core.String, core.dynamic>)
              : null,
          timeoutMinutes: json_.containsKey('timeoutMinutes')
              ? json_['timeoutMinutes'] as core.int
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (diagnosticConfig != null) 'diagnosticConfig': diagnosticConfig!,
        if (timeoutMinutes != null) 'timeoutMinutes': timeoutMinutes!,
      };
}

/// Defines flags that are used to run the diagnostic tool
class DiagnosticConfig {
  /// Enables flag to copy all `/home/jupyter` folder contents
  ///
  /// Optional.
  core.bool? enableCopyHomeFilesFlag;

  /// Enables flag to capture packets from the instance for 30 seconds
  ///
  /// Optional.
  core.bool? enablePacketCaptureFlag;

  /// Enables flag to repair service for instance
  ///
  /// Optional.
  core.bool? enableRepairFlag;

  /// User Cloud Storage bucket location (REQUIRED).
  ///
  /// Must be formatted with path prefix (`gs://$GCS_BUCKET`). Permissions: User
  /// Managed Notebooks: - storage.buckets.writer: Must be given to the
  /// project's service account attached to VM. Google Managed Notebooks: -
  /// storage.buckets.writer: Must be given to the project's service account or
  /// user credentials attached to VM depending on authentication mode. Cloud
  /// Storage bucket Log file will be written to
  /// `gs://$GCS_BUCKET/$RELATIVE_PATH/$VM_DATE_$TIME.tar.gz`
  ///
  /// Required.
  core.String? gcsBucket;

  /// Defines the relative storage path in the Cloud Storage bucket where the
  /// diagnostic logs will be written: Default path will be the root directory
  /// of the Cloud Storage bucket (`gs://$GCS_BUCKET/$DATE_$TIME.tar.gz`)
  /// Example of full path where Log file will be written:
  /// `gs://$GCS_BUCKET/$RELATIVE_PATH/`
  ///
  /// Optional.
  core.String? relativePath;

  DiagnosticConfig({
    this.enableCopyHomeFilesFlag,
    this.enablePacketCaptureFlag,
    this.enableRepairFlag,
    this.gcsBucket,
    this.relativePath,
  });

  DiagnosticConfig.fromJson(core.Map json_)
      : this(
          enableCopyHomeFilesFlag: json_.containsKey('enableCopyHomeFilesFlag')
              ? json_['enableCopyHomeFilesFlag'] as core.bool
              : null,
          enablePacketCaptureFlag: json_.containsKey('enablePacketCaptureFlag')
              ? json_['enablePacketCaptureFlag'] as core.bool
              : null,
          enableRepairFlag: json_.containsKey('enableRepairFlag')
              ? json_['enableRepairFlag'] as core.bool
              : null,
          gcsBucket: json_.containsKey('gcsBucket')
              ? json_['gcsBucket'] as core.String
              : null,
          relativePath: json_.containsKey('relativePath')
              ? json_['relativePath'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (enableCopyHomeFilesFlag != null)
          'enableCopyHomeFilesFlag': enableCopyHomeFilesFlag!,
        if (enablePacketCaptureFlag != null)
          'enablePacketCaptureFlag': enablePacketCaptureFlag!,
        if (enableRepairFlag != null) 'enableRepairFlag': enableRepairFlag!,
        if (gcsBucket != null) 'gcsBucket': gcsBucket!,
        if (relativePath != null) 'relativePath': relativePath!,
      };
}

/// A generic empty message that you can re-use to avoid defining duplicated
/// empty messages in your APIs.
///
/// A typical example is to use it as the request or the response type of an API
/// method. For instance: service Foo { rpc Bar(google.protobuf.Empty) returns
/// (google.protobuf.Empty); }
typedef Empty = $Empty;

/// The definition of an Event for a managed / semi-managed notebook instance.
class Event {
  /// Event details.
  ///
  /// This field is used to pass event information.
  ///
  /// Optional.
  core.Map<core.String, core.String>? details;

  /// Event report time.
  ///
  /// Optional.
  core.String? reportTime;

  /// Event type.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "EVENT_TYPE_UNSPECIFIED" : Event is not specified.
  /// - "IDLE" : The instance / runtime is idle
  /// - "HEARTBEAT" : The instance / runtime is available. This event indicates
  /// that instance / runtime underlying compute is operational.
  /// - "HEALTH" : The instance / runtime health is available. This event
  /// indicates that instance / runtime health information.
  /// - "MAINTENANCE" : The instance / runtime is available. This event allows
  /// instance / runtime to send Host maintenance information to Control Plane.
  /// https://cloud.google.com/compute/docs/gpus/gpu-host-maintenance
  /// - "METADATA_CHANGE" : The instance / runtime is available. This event
  /// indicates that the instance had metadata that needs to be modified.
  core.String? type;

  Event({
    this.details,
    this.reportTime,
    this.type,
  });

  Event.fromJson(core.Map json_)
      : this(
          details: json_.containsKey('details')
              ? (json_['details'] as core.Map<core.String, core.dynamic>).map(
                  (key, value) => core.MapEntry(
                    key,
                    value as core.String,
                  ),
                )
              : null,
          reportTime: json_.containsKey('reportTime')
              ? json_['reportTime'] as core.String
              : null,
          type: json_.containsKey('type') ? json_['type'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (details != null) 'details': details!,
        if (reportTime != null) 'reportTime': reportTime!,
        if (type != null) 'type': type!,
      };
}

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

/// A GPU driver configuration
class GPUDriverConfig {
  /// Specify a custom Cloud Storage path where the GPU driver is stored.
  ///
  /// If not specified, we'll automatically choose from official GPU drivers.
  ///
  /// Optional.
  core.String? customGpuDriverPath;

  /// Whether the end user authorizes Google Cloud to install GPU driver on this
  /// VM instance.
  ///
  /// If this field is empty or set to false, the GPU driver won't be installed.
  /// Only applicable to instances with GPUs.
  ///
  /// Optional.
  core.bool? enableGpuDriver;

  GPUDriverConfig({
    this.customGpuDriverPath,
    this.enableGpuDriver,
  });

  GPUDriverConfig.fromJson(core.Map json_)
      : this(
          customGpuDriverPath: json_.containsKey('customGpuDriverPath')
              ? json_['customGpuDriverPath'] as core.String
              : null,
          enableGpuDriver: json_.containsKey('enableGpuDriver')
              ? json_['enableGpuDriver'] as core.bool
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (customGpuDriverPath != null)
          'customGpuDriverPath': customGpuDriverPath!,
        if (enableGpuDriver != null) 'enableGpuDriver': enableGpuDriver!,
      };
}

/// The definition of how to configure a VM instance outside of Resources and
/// Identity.
class GceSetup {
  /// The hardware accelerators used on this instance.
  ///
  /// If you use accelerators, make sure that your configuration has \[enough
  /// vCPUs and memory to support the `machine_type` you have
  /// selected\](https://cloud.google.com/compute/docs/gpus/#gpus-list).
  /// Currently supports only one accelerator configuration.
  ///
  /// Optional.
  core.List<AcceleratorConfig>? acceleratorConfigs;

  /// The boot disk for the VM.
  ///
  /// Optional.
  BootDisk? bootDisk;

  /// Use a container image to start the notebook instance.
  ///
  /// Optional.
  ContainerImage? containerImage;

  /// Data disks attached to the VM instance.
  ///
  /// Currently supports only one data disk.
  ///
  /// Optional.
  core.List<DataDisk>? dataDisks;

  /// If true, no external IP will be assigned to this VM instance.
  ///
  /// Optional.
  core.bool? disablePublicIp;

  /// Flag to enable ip forwarding or not, default false/off.
  ///
  /// https://cloud.google.com/vpc/docs/using-routes#canipforward
  ///
  /// Optional.
  core.bool? enableIpForwarding;

  /// Configuration for GPU drivers.
  ///
  /// Optional.
  GPUDriverConfig? gpuDriverConfig;

  /// The machine type of the VM instance.
  ///
  /// https://cloud.google.com/compute/docs/machine-resource
  ///
  /// Optional.
  core.String? machineType;

  /// Custom metadata to apply to this instance.
  ///
  /// Optional.
  core.Map<core.String, core.String>? metadata;

  /// The network interfaces for the VM.
  ///
  /// Supports only one interface.
  ///
  /// Optional.
  core.List<NetworkInterface>? networkInterfaces;

  /// The service account that serves as an identity for the VM instance.
  ///
  /// Currently supports only one service account.
  ///
  /// Optional.
  core.List<ServiceAccount>? serviceAccounts;

  /// Shielded VM configuration.
  ///
  /// [Images using supported Shielded VM features](https://cloud.google.com/compute/docs/instances/modifying-shielded-vm).
  ///
  /// Optional.
  ShieldedInstanceConfig? shieldedInstanceConfig;

  /// The Compute Engine tags to add to runtime (see
  /// [Tagging instances](https://cloud.google.com/compute/docs/label-or-tag-resources#tags)).
  ///
  /// Optional.
  core.List<core.String>? tags;

  /// Use a Compute Engine VM image to start the notebook instance.
  ///
  /// Optional.
  VmImage? vmImage;

  GceSetup({
    this.acceleratorConfigs,
    this.bootDisk,
    this.containerImage,
    this.dataDisks,
    this.disablePublicIp,
    this.enableIpForwarding,
    this.gpuDriverConfig,
    this.machineType,
    this.metadata,
    this.networkInterfaces,
    this.serviceAccounts,
    this.shieldedInstanceConfig,
    this.tags,
    this.vmImage,
  });

  GceSetup.fromJson(core.Map json_)
      : this(
          acceleratorConfigs: json_.containsKey('acceleratorConfigs')
              ? (json_['acceleratorConfigs'] as core.List)
                  .map((value) => AcceleratorConfig.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          bootDisk: json_.containsKey('bootDisk')
              ? BootDisk.fromJson(
                  json_['bootDisk'] as core.Map<core.String, core.dynamic>)
              : null,
          containerImage: json_.containsKey('containerImage')
              ? ContainerImage.fromJson(json_['containerImage']
                  as core.Map<core.String, core.dynamic>)
              : null,
          dataDisks: json_.containsKey('dataDisks')
              ? (json_['dataDisks'] as core.List)
                  .map((value) => DataDisk.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          disablePublicIp: json_.containsKey('disablePublicIp')
              ? json_['disablePublicIp'] as core.bool
              : null,
          enableIpForwarding: json_.containsKey('enableIpForwarding')
              ? json_['enableIpForwarding'] as core.bool
              : null,
          gpuDriverConfig: json_.containsKey('gpuDriverConfig')
              ? GPUDriverConfig.fromJson(json_['gpuDriverConfig']
                  as core.Map<core.String, core.dynamic>)
              : null,
          machineType: json_.containsKey('machineType')
              ? json_['machineType'] as core.String
              : null,
          metadata: json_.containsKey('metadata')
              ? (json_['metadata'] as core.Map<core.String, core.dynamic>).map(
                  (key, value) => core.MapEntry(
                    key,
                    value as core.String,
                  ),
                )
              : null,
          networkInterfaces: json_.containsKey('networkInterfaces')
              ? (json_['networkInterfaces'] as core.List)
                  .map((value) => NetworkInterface.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          serviceAccounts: json_.containsKey('serviceAccounts')
              ? (json_['serviceAccounts'] as core.List)
                  .map((value) => ServiceAccount.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          shieldedInstanceConfig: json_.containsKey('shieldedInstanceConfig')
              ? ShieldedInstanceConfig.fromJson(json_['shieldedInstanceConfig']
                  as core.Map<core.String, core.dynamic>)
              : null,
          tags: json_.containsKey('tags')
              ? (json_['tags'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          vmImage: json_.containsKey('vmImage')
              ? VmImage.fromJson(
                  json_['vmImage'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (acceleratorConfigs != null)
          'acceleratorConfigs': acceleratorConfigs!,
        if (bootDisk != null) 'bootDisk': bootDisk!,
        if (containerImage != null) 'containerImage': containerImage!,
        if (dataDisks != null) 'dataDisks': dataDisks!,
        if (disablePublicIp != null) 'disablePublicIp': disablePublicIp!,
        if (enableIpForwarding != null)
          'enableIpForwarding': enableIpForwarding!,
        if (gpuDriverConfig != null) 'gpuDriverConfig': gpuDriverConfig!,
        if (machineType != null) 'machineType': machineType!,
        if (metadata != null) 'metadata': metadata!,
        if (networkInterfaces != null) 'networkInterfaces': networkInterfaces!,
        if (serviceAccounts != null) 'serviceAccounts': serviceAccounts!,
        if (shieldedInstanceConfig != null)
          'shieldedInstanceConfig': shieldedInstanceConfig!,
        if (tags != null) 'tags': tags!,
        if (vmImage != null) 'vmImage': vmImage!,
      };
}

/// ConfigImage represents an image release available to create a WbI
class ImageRelease {
  /// The name of the image of the form workbench-instances-vYYYYmmdd--
  ///
  /// Output only.
  core.String? imageName;

  /// The release of the image of the form m123
  ///
  /// Output only.
  core.String? releaseName;

  ImageRelease({
    this.imageName,
    this.releaseName,
  });

  ImageRelease.fromJson(core.Map json_)
      : this(
          imageName: json_.containsKey('imageName')
              ? json_['imageName'] as core.String
              : null,
          releaseName: json_.containsKey('releaseName')
              ? json_['releaseName'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (imageName != null) 'imageName': imageName!,
        if (releaseName != null) 'releaseName': releaseName!,
      };
}

/// The definition of a notebook instance.
class Instance {
  /// Instance creation time.
  ///
  /// Output only.
  core.String? createTime;

  /// Email address of entity that sent original CreateInstance request.
  ///
  /// Output only.
  core.String? creator;

  /// If true, the notebook instance will not register with the proxy.
  ///
  /// Optional.
  core.bool? disableProxyAccess;

  /// Compute Engine setup for the notebook.
  ///
  /// Uses notebook-defined fields.
  ///
  /// Optional.
  GceSetup? gceSetup;

  /// Additional information about instance health.
  ///
  /// Example: healthInfo": { "docker_proxy_agent_status": "1", "docker_status":
  /// "1", "jupyterlab_api_status": "-1", "jupyterlab_status": "-1", "updated":
  /// "2020-10-18 09:40:03.573409" }
  ///
  /// Output only.
  core.Map<core.String, core.String>? healthInfo;

  /// Instance health_state.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "HEALTH_STATE_UNSPECIFIED" : The instance substate is unknown.
  /// - "HEALTHY" : The instance is known to be in an healthy state (for
  /// example, critical daemons are running) Applies to ACTIVE state.
  /// - "UNHEALTHY" : The instance is known to be in an unhealthy state (for
  /// example, critical daemons are not running) Applies to ACTIVE state.
  /// - "AGENT_NOT_INSTALLED" : The instance has not installed health monitoring
  /// agent. Applies to ACTIVE state.
  /// - "AGENT_NOT_RUNNING" : The instance health monitoring agent is not
  /// running. Applies to ACTIVE state.
  core.String? healthState;

  /// Unique ID of the resource.
  ///
  /// Output only.
  core.String? id;

  /// Input only.
  ///
  /// The owner of this instance after creation. Format: `alias@example.com`
  /// Currently supports one owner only. If not specified, all of the service
  /// account users of your VM instance's service account can use the instance.
  ///
  /// Optional.
  core.List<core.String>? instanceOwners;

  /// Labels to apply to this instance.
  ///
  /// These can be later modified by the UpdateInstance method.
  ///
  /// Optional.
  core.Map<core.String, core.String>? labels;

  /// The name of this notebook instance.
  ///
  /// Format:
  /// `projects/{project_id}/locations/{location}/instances/{instance_id}`
  ///
  /// Output only.
  core.String? name;

  /// The proxy endpoint that is used to access the Jupyter notebook.
  ///
  /// Output only.
  core.String? proxyUri;

  /// The state of this instance.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : State is not specified.
  /// - "STARTING" : The control logic is starting the instance.
  /// - "PROVISIONING" : The control logic is installing required frameworks and
  /// registering the instance with notebook proxy
  /// - "ACTIVE" : The instance is running.
  /// - "STOPPING" : The control logic is stopping the instance.
  /// - "STOPPED" : The instance is stopped.
  /// - "DELETED" : The instance is deleted.
  /// - "UPGRADING" : The instance is upgrading.
  /// - "INITIALIZING" : The instance is being created.
  /// - "SUSPENDING" : The instance is suspending.
  /// - "SUSPENDED" : The instance is suspended.
  core.String? state;

  /// The workforce pools proxy endpoint that is used to access the Jupyter
  /// notebook.
  ///
  /// Output only.
  core.String? thirdPartyProxyUrl;

  /// Instance update time.
  ///
  /// Output only.
  core.String? updateTime;

  /// The upgrade history of this instance.
  ///
  /// Output only.
  core.List<UpgradeHistoryEntry>? upgradeHistory;

  Instance({
    this.createTime,
    this.creator,
    this.disableProxyAccess,
    this.gceSetup,
    this.healthInfo,
    this.healthState,
    this.id,
    this.instanceOwners,
    this.labels,
    this.name,
    this.proxyUri,
    this.state,
    this.thirdPartyProxyUrl,
    this.updateTime,
    this.upgradeHistory,
  });

  Instance.fromJson(core.Map json_)
      : this(
          createTime: json_.containsKey('createTime')
              ? json_['createTime'] as core.String
              : null,
          creator: json_.containsKey('creator')
              ? json_['creator'] as core.String
              : null,
          disableProxyAccess: json_.containsKey('disableProxyAccess')
              ? json_['disableProxyAccess'] as core.bool
              : null,
          gceSetup: json_.containsKey('gceSetup')
              ? GceSetup.fromJson(
                  json_['gceSetup'] as core.Map<core.String, core.dynamic>)
              : null,
          healthInfo: json_.containsKey('healthInfo')
              ? (json_['healthInfo'] as core.Map<core.String, core.dynamic>)
                  .map(
                  (key, value) => core.MapEntry(
                    key,
                    value as core.String,
                  ),
                )
              : null,
          healthState: json_.containsKey('healthState')
              ? json_['healthState'] as core.String
              : null,
          id: json_.containsKey('id') ? json_['id'] as core.String : null,
          instanceOwners: json_.containsKey('instanceOwners')
              ? (json_['instanceOwners'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          labels: json_.containsKey('labels')
              ? (json_['labels'] as core.Map<core.String, core.dynamic>).map(
                  (key, value) => core.MapEntry(
                    key,
                    value as core.String,
                  ),
                )
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          proxyUri: json_.containsKey('proxyUri')
              ? json_['proxyUri'] as core.String
              : null,
          state:
              json_.containsKey('state') ? json_['state'] as core.String : null,
          thirdPartyProxyUrl: json_.containsKey('thirdPartyProxyUrl')
              ? json_['thirdPartyProxyUrl'] as core.String
              : null,
          updateTime: json_.containsKey('updateTime')
              ? json_['updateTime'] as core.String
              : null,
          upgradeHistory: json_.containsKey('upgradeHistory')
              ? (json_['upgradeHistory'] as core.List)
                  .map((value) => UpgradeHistoryEntry.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (createTime != null) 'createTime': createTime!,
        if (creator != null) 'creator': creator!,
        if (disableProxyAccess != null)
          'disableProxyAccess': disableProxyAccess!,
        if (gceSetup != null) 'gceSetup': gceSetup!,
        if (healthInfo != null) 'healthInfo': healthInfo!,
        if (healthState != null) 'healthState': healthState!,
        if (id != null) 'id': id!,
        if (instanceOwners != null) 'instanceOwners': instanceOwners!,
        if (labels != null) 'labels': labels!,
        if (name != null) 'name': name!,
        if (proxyUri != null) 'proxyUri': proxyUri!,
        if (state != null) 'state': state!,
        if (thirdPartyProxyUrl != null)
          'thirdPartyProxyUrl': thirdPartyProxyUrl!,
        if (updateTime != null) 'updateTime': updateTime!,
        if (upgradeHistory != null) 'upgradeHistory': upgradeHistory!,
      };
}

/// Response for listing notebook instances.
class ListInstancesResponse {
  /// A list of returned instances.
  core.List<Instance>? instances;

  /// Page token that can be used to continue listing from the last result in
  /// the next list call.
  core.String? nextPageToken;

  /// Locations that could not be reached.
  ///
  /// For example, \['us-west1-a', 'us-central1-b'\]. A ListInstancesResponse
  /// will only contain either instances or unreachables,
  core.List<core.String>? unreachable;

  ListInstancesResponse({
    this.instances,
    this.nextPageToken,
    this.unreachable,
  });

  ListInstancesResponse.fromJson(core.Map json_)
      : this(
          instances: json_.containsKey('instances')
              ? (json_['instances'] as core.List)
                  .map((value) => Instance.fromJson(
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
        if (instances != null) 'instances': instances!,
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

/// A resource that represents a Google Cloud location.
typedef Location = $Location00;

/// The definition of a network interface resource attached to a VM.
class NetworkInterface {
  /// The name of the VPC that this VM instance is in.
  ///
  /// Format: `projects/{project_id}/global/networks/{network_id}`
  ///
  /// Optional.
  core.String? network;

  /// The type of vNIC to be used on this interface.
  ///
  /// This may be gVNIC or VirtioNet.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "NIC_TYPE_UNSPECIFIED" : No type specified.
  /// - "VIRTIO_NET" : VIRTIO
  /// - "GVNIC" : GVNIC
  core.String? nicType;

  /// The name of the subnet that this VM instance is in.
  ///
  /// Format:
  /// `projects/{project_id}/regions/{region}/subnetworks/{subnetwork_id}`
  ///
  /// Optional.
  core.String? subnet;

  NetworkInterface({
    this.network,
    this.nicType,
    this.subnet,
  });

  NetworkInterface.fromJson(core.Map json_)
      : this(
          network: json_.containsKey('network')
              ? json_['network'] as core.String
              : null,
          nicType: json_.containsKey('nicType')
              ? json_['nicType'] as core.String
              : null,
          subnet: json_.containsKey('subnet')
              ? json_['subnet'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (network != null) 'network': network!,
        if (nicType != null) 'nicType': nicType!,
        if (subnet != null) 'subnet': subnet!,
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
    this.bindings,
    this.etag,
    this.version,
  });

  Policy.fromJson(core.Map json_)
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

/// Request for notebook instances to report information to Notebooks API.
class ReportInstanceInfoSystemRequest {
  /// The Event to be reported.
  ///
  /// Required.
  Event? event;

  /// The VM hardware token for authenticating the VM.
  ///
  /// https://cloud.google.com/compute/docs/instances/verifying-instance-identity
  ///
  /// Required.
  core.String? vmId;

  ReportInstanceInfoSystemRequest({
    this.event,
    this.vmId,
  });

  ReportInstanceInfoSystemRequest.fromJson(core.Map json_)
      : this(
          event: json_.containsKey('event')
              ? Event.fromJson(
                  json_['event'] as core.Map<core.String, core.dynamic>)
              : null,
          vmId: json_.containsKey('vmId') ? json_['vmId'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (event != null) 'event': event!,
        if (vmId != null) 'vmId': vmId!,
      };
}

/// Request for resetting a notebook instance
typedef ResetInstanceRequest = $Empty;

/// Request for resizing the notebook instance disks
class ResizeDiskRequest {
  /// The boot disk to be resized.
  ///
  /// Only disk_size_gb will be used.
  ///
  /// Required.
  BootDisk? bootDisk;

  /// The data disk to be resized.
  ///
  /// Only disk_size_gb will be used.
  ///
  /// Required.
  DataDisk? dataDisk;

  ResizeDiskRequest({
    this.bootDisk,
    this.dataDisk,
  });

  ResizeDiskRequest.fromJson(core.Map json_)
      : this(
          bootDisk: json_.containsKey('bootDisk')
              ? BootDisk.fromJson(
                  json_['bootDisk'] as core.Map<core.String, core.dynamic>)
              : null,
          dataDisk: json_.containsKey('dataDisk')
              ? DataDisk.fromJson(
                  json_['dataDisk'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (bootDisk != null) 'bootDisk': bootDisk!,
        if (dataDisk != null) 'dataDisk': dataDisk!,
      };
}

/// Request for rollbacking a notebook instance
class RollbackInstanceRequest {
  /// Revision Id
  ///
  /// Required. Output only.
  core.String? revisionId;

  /// The snapshot for rollback.
  ///
  /// Example: "projects/test-project/global/snapshots/krwlzipynril".
  ///
  /// Required.
  core.String? targetSnapshot;

  RollbackInstanceRequest({
    this.revisionId,
    this.targetSnapshot,
  });

  RollbackInstanceRequest.fromJson(core.Map json_)
      : this(
          revisionId: json_.containsKey('revisionId')
              ? json_['revisionId'] as core.String
              : null,
          targetSnapshot: json_.containsKey('targetSnapshot')
              ? json_['targetSnapshot'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (revisionId != null) 'revisionId': revisionId!,
        if (targetSnapshot != null) 'targetSnapshot': targetSnapshot!,
      };
}

/// A service account that acts as an identity.
class ServiceAccount {
  /// Email address of the service account.
  ///
  /// Optional.
  core.String? email;

  /// The list of scopes to be made available for this service account.
  ///
  /// Set by the CLH to https://www.googleapis.com/auth/cloud-platform
  ///
  /// Output only.
  core.List<core.String>? scopes;

  ServiceAccount({
    this.email,
    this.scopes,
  });

  ServiceAccount.fromJson(core.Map json_)
      : this(
          email:
              json_.containsKey('email') ? json_['email'] as core.String : null,
          scopes: json_.containsKey('scopes')
              ? (json_['scopes'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (email != null) 'email': email!,
        if (scopes != null) 'scopes': scopes!,
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

  SetIamPolicyRequest({
    this.policy,
  });

  SetIamPolicyRequest.fromJson(core.Map json_)
      : this(
          policy: json_.containsKey('policy')
              ? Policy.fromJson(
                  json_['policy'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (policy != null) 'policy': policy!,
      };
}

/// A set of Shielded Instance options.
///
/// See
/// [Images using supported Shielded VM features](https://cloud.google.com/compute/docs/instances/modifying-shielded-vm).
/// Not all combinations are valid.
class ShieldedInstanceConfig {
  /// Defines whether the VM instance has integrity monitoring enabled.
  ///
  /// Enables monitoring and attestation of the boot integrity of the VM
  /// instance. The attestation is performed against the integrity policy
  /// baseline. This baseline is initially derived from the implicitly trusted
  /// boot image when the VM instance is created. Enabled by default.
  ///
  /// Optional.
  core.bool? enableIntegrityMonitoring;

  /// Defines whether the VM instance has Secure Boot enabled.
  ///
  /// Secure Boot helps ensure that the system only runs authentic software by
  /// verifying the digital signature of all boot components, and halting the
  /// boot process if signature verification fails. Disabled by default.
  ///
  /// Optional.
  core.bool? enableSecureBoot;

  /// Defines whether the VM instance has the vTPM enabled.
  ///
  /// Enabled by default.
  ///
  /// Optional.
  core.bool? enableVtpm;

  ShieldedInstanceConfig({
    this.enableIntegrityMonitoring,
    this.enableSecureBoot,
    this.enableVtpm,
  });

  ShieldedInstanceConfig.fromJson(core.Map json_)
      : this(
          enableIntegrityMonitoring:
              json_.containsKey('enableIntegrityMonitoring')
                  ? json_['enableIntegrityMonitoring'] as core.bool
                  : null,
          enableSecureBoot: json_.containsKey('enableSecureBoot')
              ? json_['enableSecureBoot'] as core.bool
              : null,
          enableVtpm: json_.containsKey('enableVtpm')
              ? json_['enableVtpm'] as core.bool
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (enableIntegrityMonitoring != null)
          'enableIntegrityMonitoring': enableIntegrityMonitoring!,
        if (enableSecureBoot != null) 'enableSecureBoot': enableSecureBoot!,
        if (enableVtpm != null) 'enableVtpm': enableVtpm!,
      };
}

/// Request for starting a notebook instance
typedef StartInstanceRequest = $Empty;

/// The `Status` type defines a logical error model that is suitable for
/// different programming environments, including REST APIs and RPC APIs.
///
/// It is used by [gRPC](https://github.com/grpc). Each `Status` message
/// contains three pieces of data: error code, error message, and error details.
/// You can find out more about this error model and how to work with it in the
/// [API Design Guide](https://cloud.google.com/apis/design/errors).
typedef Status = $Status;

/// Request for stopping a notebook instance
typedef StopInstanceRequest = $Empty;

/// SupportedValues represents the values supported by the configuration.
class SupportedValues {
  /// The accelerator types supported by WbI.
  ///
  /// Output only.
  core.List<core.String>? acceleratorTypes;

  /// The machine types supported by WbI.
  ///
  /// Output only.
  core.List<core.String>? machineTypes;

  SupportedValues({
    this.acceleratorTypes,
    this.machineTypes,
  });

  SupportedValues.fromJson(core.Map json_)
      : this(
          acceleratorTypes: json_.containsKey('acceleratorTypes')
              ? (json_['acceleratorTypes'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          machineTypes: json_.containsKey('machineTypes')
              ? (json_['machineTypes'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (acceleratorTypes != null) 'acceleratorTypes': acceleratorTypes!,
        if (machineTypes != null) 'machineTypes': machineTypes!,
      };
}

/// Request message for `TestIamPermissions` method.
typedef TestIamPermissionsRequest = $TestIamPermissionsRequest00;

/// Response message for `TestIamPermissions` method.
typedef TestIamPermissionsResponse = $PermissionsResponse;

/// The entry of VM image upgrade history.
class UpgradeHistoryEntry {
  /// Action.
  ///
  /// Rolloback or Upgrade.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "ACTION_UNSPECIFIED" : Operation is not specified.
  /// - "UPGRADE" : Upgrade.
  /// - "ROLLBACK" : Rollback.
  core.String? action;

  /// The container image before this instance upgrade.
  ///
  /// Optional.
  core.String? containerImage;

  /// The time that this instance upgrade history entry is created.
  ///
  /// Immutable.
  core.String? createTime;

  /// The framework of this notebook instance.
  ///
  /// Optional.
  core.String? framework;

  /// The snapshot of the boot disk of this notebook instance before upgrade.
  ///
  /// Optional.
  core.String? snapshot;

  /// The state of this instance upgrade history entry.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : State is not specified.
  /// - "STARTED" : The instance upgrade is started.
  /// - "SUCCEEDED" : The instance upgrade is succeeded.
  /// - "FAILED" : The instance upgrade is failed.
  core.String? state;

  /// Target VM Version, like m63.
  ///
  /// Optional.
  core.String? targetVersion;

  /// The version of the notebook instance before this upgrade.
  ///
  /// Optional.
  core.String? version;

  /// The VM image before this instance upgrade.
  ///
  /// Optional.
  core.String? vmImage;

  UpgradeHistoryEntry({
    this.action,
    this.containerImage,
    this.createTime,
    this.framework,
    this.snapshot,
    this.state,
    this.targetVersion,
    this.version,
    this.vmImage,
  });

  UpgradeHistoryEntry.fromJson(core.Map json_)
      : this(
          action: json_.containsKey('action')
              ? json_['action'] as core.String
              : null,
          containerImage: json_.containsKey('containerImage')
              ? json_['containerImage'] as core.String
              : null,
          createTime: json_.containsKey('createTime')
              ? json_['createTime'] as core.String
              : null,
          framework: json_.containsKey('framework')
              ? json_['framework'] as core.String
              : null,
          snapshot: json_.containsKey('snapshot')
              ? json_['snapshot'] as core.String
              : null,
          state:
              json_.containsKey('state') ? json_['state'] as core.String : null,
          targetVersion: json_.containsKey('targetVersion')
              ? json_['targetVersion'] as core.String
              : null,
          version: json_.containsKey('version')
              ? json_['version'] as core.String
              : null,
          vmImage: json_.containsKey('vmImage')
              ? json_['vmImage'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (action != null) 'action': action!,
        if (containerImage != null) 'containerImage': containerImage!,
        if (createTime != null) 'createTime': createTime!,
        if (framework != null) 'framework': framework!,
        if (snapshot != null) 'snapshot': snapshot!,
        if (state != null) 'state': state!,
        if (targetVersion != null) 'targetVersion': targetVersion!,
        if (version != null) 'version': version!,
        if (vmImage != null) 'vmImage': vmImage!,
      };
}

/// Request for upgrading a notebook instance
typedef UpgradeInstanceRequest = $Empty;

/// Request for upgrading a notebook instance from within the VM
typedef UpgradeInstanceSystemRequest = $Request09;

/// Definition of a custom Compute Engine virtual machine image for starting a
/// notebook instance with the environment installed directly on the VM.
class VmImage {
  /// Use this VM image family to find the image; the newest image in this
  /// family will be used.
  ///
  /// Optional.
  core.String? family;

  /// Use VM image name to find the image.
  ///
  /// Optional.
  core.String? name;

  /// The name of the Google Cloud project that this VM image belongs to.
  ///
  /// Format: `{project_id}`
  ///
  /// Required.
  core.String? project;

  VmImage({
    this.family,
    this.name,
    this.project,
  });

  VmImage.fromJson(core.Map json_)
      : this(
          family: json_.containsKey('family')
              ? json_['family'] as core.String
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          project: json_.containsKey('project')
              ? json_['project'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (family != null) 'family': family!,
        if (name != null) 'name': name!,
        if (project != null) 'project': project!,
      };
}
