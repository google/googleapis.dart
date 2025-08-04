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

/// Security Posture API - v1
///
/// Defines, assesses, and monitors the overall status of your security in
/// Google Cloud. You can use security postures to evaluate your current cloud
/// security against defined benchmarks and help maintain the level of security
/// that your organization requires.
///
/// For more information, see <https://cloud.google.com/security-command-center>
///
/// Create an instance of [SecurityPostureApi] to access these resources:
///
/// - [OrganizationsResource]
///   - [OrganizationsLocationsResource]
///     - [OrganizationsLocationsOperationsResource]
///     - [OrganizationsLocationsPostureDeploymentsResource]
///     - [OrganizationsLocationsPostureTemplatesResource]
///     - [OrganizationsLocationsPosturesResource]
///     - [OrganizationsLocationsReportsResource]
/// - [ProjectsResource]
///   - [ProjectsLocationsResource]
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

/// Defines, assesses, and monitors the overall status of your security in
/// Google Cloud.
///
/// You can use security postures to evaluate your current cloud security
/// against defined benchmarks and help maintain the level of security that your
/// organization requires.
class SecurityPostureApi {
  /// See, edit, configure, and delete your Google Cloud data and see the email
  /// address for your Google Account.
  static const cloudPlatformScope =
      'https://www.googleapis.com/auth/cloud-platform';

  final commons.ApiRequester _requester;

  OrganizationsResource get organizations => OrganizationsResource(_requester);
  ProjectsResource get projects => ProjectsResource(_requester);

  SecurityPostureApi(
    http.Client client, {
    core.String rootUrl = 'https://securityposture.googleapis.com/',
    core.String servicePath = '',
  }) : _requester = commons.ApiRequester(
         client,
         rootUrl,
         servicePath,
         requestHeaders,
       );
}

class OrganizationsResource {
  final commons.ApiRequester _requester;

  OrganizationsLocationsResource get locations =>
      OrganizationsLocationsResource(_requester);

  OrganizationsResource(commons.ApiRequester client) : _requester = client;
}

class OrganizationsLocationsResource {
  final commons.ApiRequester _requester;

  OrganizationsLocationsOperationsResource get operations =>
      OrganizationsLocationsOperationsResource(_requester);
  OrganizationsLocationsPostureDeploymentsResource get postureDeployments =>
      OrganizationsLocationsPostureDeploymentsResource(_requester);
  OrganizationsLocationsPostureTemplatesResource get postureTemplates =>
      OrganizationsLocationsPostureTemplatesResource(_requester);
  OrganizationsLocationsPosturesResource get postures =>
      OrganizationsLocationsPosturesResource(_requester);
  OrganizationsLocationsReportsResource get reports =>
      OrganizationsLocationsReportsResource(_requester);

  OrganizationsLocationsResource(commons.ApiRequester client)
    : _requester = client;
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

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + '/operations';

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

class OrganizationsLocationsPostureDeploymentsResource {
  final commons.ApiRequester _requester;

  OrganizationsLocationsPostureDeploymentsResource(commons.ApiRequester client)
    : _requester = client;

  /// Creates a new PostureDeployment in a given project and location.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent resource name, in the format
  /// `organizations/{organization}/locations/global`.
  /// Value must have pattern `^organizations/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [postureDeploymentId] - Required. An identifier for the posture
  /// deployment.
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
    PostureDeployment request,
    core.String parent, {
    core.String? postureDeploymentId,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (postureDeploymentId != null)
        'postureDeploymentId': [postureDeploymentId],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/postureDeployments';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Deletes a PostureDeployment.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the posture deployment, in the format
  /// `organizations/{organization}/locations/global/postureDeployments/{posture_id}`.
  /// Value must have pattern
  /// `^organizations/\[^/\]+/locations/\[^/\]+/postureDeployments/\[^/\]+$`.
  ///
  /// [etag] - Optional. An opaque identifier for the current version of the
  /// posture deployment. If you provide this value, then it must match the
  /// existing value. If the values don't match, then the request fails with an
  /// ABORTED error. If you omit this value, then the posture deployment is
  /// deleted regardless of its current `etag` value.
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
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (etag != null) 'etag': [etag],
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

  /// Gets details for a PostureDeployment.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the PostureDeployment, in the format
  /// `organizations/{organization}/locations/global/postureDeployments/{posture_deployment_id}`.
  /// Value must have pattern
  /// `^organizations/\[^/\]+/locations/\[^/\]+/postureDeployments/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [PostureDeployment].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<PostureDeployment> get(
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
    return PostureDeployment.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Lists every PostureDeployment in a project and location.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent resource name, in the format
  /// `organizations/{organization}/locations/global`.
  /// Value must have pattern `^organizations/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [filter] - Optional. A filter to apply to the list of postures, in the
  /// format defined in \[AIP-160: Filtering\](https://google.aip.dev/160).
  ///
  /// [pageSize] - Optional. The maximum number of posture deployments to
  /// return. The default value is `500`. If you exceed the maximum value of
  /// `1000`, then the service uses the maximum value.
  ///
  /// [pageToken] - Optional. A pagination token returned from a previous
  /// request to list posture deployments. Provide this token to retrieve the
  /// next page of results.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListPostureDeploymentsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListPostureDeploymentsResponse> list(
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

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/postureDeployments';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListPostureDeploymentsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Updates an existing PostureDeployment.
  ///
  /// To prevent concurrent updates from overwriting each other, always follow
  /// the read-modify-write pattern when you update a posture deployment: 1.
  /// Call GetPostureDeployment to get the current version of the deployment. 2.
  /// Update the fields in the deployment as needed. 3. Call
  /// UpdatePostureDeployment to update the deployment. Ensure that your request
  /// includes the `etag` value from the GetPostureDeployment response.
  /// **Important:** If you omit the `etag` when you call
  /// UpdatePostureDeployment, then the updated deployment unconditionally
  /// overwrites the existing deployment.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Identifier. The name of the posture deployment, in the
  /// format
  /// `organizations/{organization}/locations/global/postureDeployments/{deployment_id}`.
  /// Value must have pattern
  /// `^organizations/\[^/\]+/locations/\[^/\]+/postureDeployments/\[^/\]+$`.
  ///
  /// [updateMask] - Required. The fields in the PostureDeployment to update.
  /// You can update only the following fields: * PostureDeployment.posture_id *
  /// PostureDeployment.posture_revision_id
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
    PostureDeployment request,
    core.String name, {
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
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

class OrganizationsLocationsPostureTemplatesResource {
  final commons.ApiRequester _requester;

  OrganizationsLocationsPostureTemplatesResource(commons.ApiRequester client)
    : _requester = client;

  /// Gets a single revision of a PostureTemplate.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the PostureTemplate, in the format
  /// `organizations/{organization}/locations/global/postureTemplates/{posture_template}`.
  /// Value must have pattern
  /// `^organizations/\[^/\]+/locations/\[^/\]+/postureTemplates/\[^/\]+$`.
  ///
  /// [revisionId] - Optional. The posture template revision to retrieve. If not
  /// specified, the most recently updated revision is retrieved.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [PostureTemplate].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<PostureTemplate> get(
    core.String name, {
    core.String? revisionId,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (revisionId != null) 'revisionId': [revisionId],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return PostureTemplate.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Lists every PostureTemplate in a given organization and location.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent resource name, in the format
  /// `organizations/{organization}/locations/global`.
  /// Value must have pattern `^organizations/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [filter] - Optional. A filter to apply to the list of postures, in the
  /// format defined in \[AIP-160: Filtering\](https://google.aip.dev/160).
  ///
  /// [pageSize] - Optional. The maximum number of posture templates to return.
  /// The default value is `500`. If you exceed the maximum value of `1000`,
  /// then the service uses the maximum value.
  ///
  /// [pageToken] - Optional. A pagination token returned from a previous
  /// request to list posture templates. Provide this token to retrieve the next
  /// page of results.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListPostureTemplatesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListPostureTemplatesResponse> list(
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

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/postureTemplates';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListPostureTemplatesResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class OrganizationsLocationsPosturesResource {
  final commons.ApiRequester _requester;

  OrganizationsLocationsPosturesResource(commons.ApiRequester client)
    : _requester = client;

  /// Creates a new Posture.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent resource name, in the format
  /// `organizations/{organization}/locations/global`.
  /// Value must have pattern `^organizations/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [postureId] - Required. An identifier for the posture.
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
    Posture request,
    core.String parent, {
    core.String? postureId,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (postureId != null) 'postureId': [postureId],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/postures';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Deletes all revisions of a Posture.
  ///
  /// You can only delete a posture if none of its revisions are deployed.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the Posture, in the format
  /// `organizations/{organization}/locations/global/postures/{posture_id}`.
  /// Value must have pattern
  /// `^organizations/\[^/\]+/locations/\[^/\]+/postures/\[^/\]+$`.
  ///
  /// [etag] - Optional. An opaque identifier for the current version of the
  /// posture. If you provide this value, then it must match the existing value.
  /// If the values don't match, then the request fails with an ABORTED error.
  /// If you omit this value, then the posture is deleted regardless of its
  /// current `etag` value.
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
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (etag != null) 'etag': [etag],
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

  /// Extracts existing policies from an organization, folder, or project, and
  /// applies them to another organization, folder, or project as a Posture.
  ///
  /// If the other organization, folder, or project already has a posture, then
  /// the result of the long-running operation is an ALREADY_EXISTS error.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent resource name, in the format
  /// `organizations/{organization}/locations/global`.
  /// Value must have pattern `^organizations/\[^/\]+/locations/\[^/\]+$`.
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
  async.Future<Operation> extract(
    ExtractPostureRequest request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/postures:extract';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Gets a single revision of a Posture.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the Posture, in the format
  /// `organizations/{organization}/locations/global/postures/{posture_id}`.
  /// Value must have pattern
  /// `^organizations/\[^/\]+/locations/\[^/\]+/postures/\[^/\]+$`.
  ///
  /// [revisionId] - Optional. The posture revision to retrieve. If not
  /// specified, the most recently updated revision is retrieved.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Posture].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Posture> get(
    core.String name, {
    core.String? revisionId,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (revisionId != null) 'revisionId': [revisionId],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return Posture.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists the most recent revisions of all Posture resources in a specified
  /// organization and location.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent resource name, in the format
  /// `organizations/{organization}/locations/global`.
  /// Value must have pattern `^organizations/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [filter] - Optional. A filter to apply to the list of postures, in the
  /// format defined in \[AIP-160: Filtering\](https://google.aip.dev/160).
  ///
  /// [pageSize] - The maximum number of postures to return. The default value
  /// is `500`. If you exceed the maximum value of `1000`, then the service uses
  /// the maximum value.
  ///
  /// [pageToken] - A pagination token returned from a previous request to list
  /// postures. Provide this token to retrieve the next page of results.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListPosturesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListPosturesResponse> list(
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

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/postures';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListPosturesResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Lists all revisions of a single Posture.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the Posture, in the format
  /// `organizations/{organization}/locations/global/postures/{posture_id}`.
  /// Value must have pattern
  /// `^organizations/\[^/\]+/locations/\[^/\]+/postures/\[^/\]+$`.
  ///
  /// [pageSize] - Optional. The maximum number of posture revisions to return.
  /// The default value is `500`. If you exceed the maximum value of `1000`,
  /// then the service uses the maximum value.
  ///
  /// [pageToken] - Optional. A pagination token from a previous request to list
  /// posture revisions. Provide this token to retrieve the next page of
  /// results.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListPostureRevisionsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListPostureRevisionsResponse> listRevisions(
    core.String name, {
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':listRevisions';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListPostureRevisionsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Updates a revision of an existing Posture.
  ///
  /// If the posture revision that you update is currently deployed, then a new
  /// revision of the posture is created. To prevent concurrent updates from
  /// overwriting each other, always follow the read-modify-write pattern when
  /// you update a posture: 1. Call GetPosture to get the current version of the
  /// posture. 2. Update the fields in the posture as needed. 3. Call
  /// UpdatePosture to update the posture. Ensure that your request includes the
  /// `etag` value from the GetPosture response. **Important:** If you omit the
  /// `etag` when you call UpdatePosture, then the updated posture
  /// unconditionally overwrites the existing posture.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Identifier. The name of the posture, in the format
  /// `organizations/{organization}/locations/global/postures/{posture_id}`.
  /// Value must have pattern
  /// `^organizations/\[^/\]+/locations/\[^/\]+/postures/\[^/\]+$`.
  ///
  /// [revisionId] - Required. The revision ID of the posture to update. If the
  /// posture revision that you update is currently deployed, then a new
  /// revision of the posture is created.
  ///
  /// [updateMask] - Required. The fields in the Posture to update. You can
  /// update only the following fields: * Posture.description *
  /// Posture.policy_sets * Posture.state
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
    Posture request,
    core.String name, {
    core.String? revisionId,
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (revisionId != null) 'revisionId': [revisionId],
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

class OrganizationsLocationsReportsResource {
  final commons.ApiRequester _requester;

  OrganizationsLocationsReportsResource(commons.ApiRequester client)
    : _requester = client;

  /// Validates a specified infrastructure-as-code (IaC) configuration, and
  /// creates a Report with the validation results.
  ///
  /// Only Terraform configurations are supported. Only modified assets are
  /// validated.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent resource name, in the format
  /// `organizations/{organization}/locations/global`.
  /// Value must have pattern `^organizations/\[^/\]+/locations/\[^/\]+$`.
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
  async.Future<Operation> createIaCValidationReport(
    CreateIaCValidationReportRequest request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1/' +
        core.Uri.encodeFull('$parent') +
        '/reports:createIaCValidationReport';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Gets details for a Report.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the report, in the format
  /// `organizations/{organization}/locations/global/reports/{report_id}`.
  /// Value must have pattern
  /// `^organizations/\[^/\]+/locations/\[^/\]+/reports/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Report].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Report> get(core.String name, {core.String? $fields}) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return Report.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists every Report in a given organization and location.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent resource name, in the format
  /// `organizations/{organization}/locations/global`.
  /// Value must have pattern `^organizations/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [filter] - Optional. A filter to apply to the list of reports, in the
  /// format defined in \[AIP-160: Filtering\](https://google.aip.dev/160).
  ///
  /// [pageSize] - Optional. The maximum number of reports to return. The
  /// default value is `500`. If you exceed the maximum value of `1000`, then
  /// the service uses the maximum value.
  ///
  /// [pageToken] - Optional. A pagination token returned from a previous
  /// request to list reports. Provide this token to retrieve the next page of
  /// results.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListReportsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListReportsResponse> list(
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

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/reports';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListReportsResponse.fromJson(
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
  async.Future<Location> get(core.String name, {core.String? $fields}) async {
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
  /// [extraLocationTypes] - Optional. A list of extra location types that
  /// should be used as conditions for controlling the visibility of the
  /// locations.
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
    core.List<core.String>? extraLocationTypes,
    core.String? filter,
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (extraLocationTypes != null) 'extraLocationTypes': extraLocationTypes,
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
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

/// Details of a Cloud Asset Inventory asset that caused a violation.
class AssetDetails {
  /// Information about the Cloud Asset Inventory asset that violated a policy.
  ///
  /// The format of this information can change at any time without prior
  /// notice. Your application must not depend on this information in any way.
  core.String? asset;

  /// The type of Cloud Asset Inventory asset.
  ///
  /// For a list of asset types, see
  /// [Supported asset types](https://cloud.google.com/asset-inventory/docs/supported-asset-types).
  core.String? assetType;

  AssetDetails({this.asset, this.assetType});

  AssetDetails.fromJson(core.Map json_)
    : this(
        asset: json_['asset'] as core.String?,
        assetType: json_['assetType'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (asset != null) 'asset': asset!,
    if (assetType != null) 'assetType': assetType!,
  };
}

/// The request message for Operations.CancelOperation.
typedef CancelOperationRequest = $Empty;

/// Information about a compliance standard that the policy helps enforce.
class ComplianceStandard {
  /// The control in the compliance standard that the policy helps enforce.
  ///
  /// For example, `AC-3`.
  ///
  /// Optional.
  core.String? control;

  /// The compliance standard that the policy helps enforce.
  ///
  /// For example, `NIST SP 800-53`.
  ///
  /// Optional.
  core.String? standard;

  ComplianceStandard({this.control, this.standard});

  ComplianceStandard.fromJson(core.Map json_)
    : this(
        control: json_['control'] as core.String?,
        standard: json_['standard'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (control != null) 'control': control!,
    if (standard != null) 'standard': standard!,
  };
}

/// Metadata for a constraint in a Policy.
class Constraint {
  /// A predefined organization policy constraint.
  ///
  /// Optional.
  OrgPolicyConstraint? orgPolicyConstraint;

  /// A custom organization policy constraint.
  ///
  /// Optional.
  OrgPolicyConstraintCustom? orgPolicyConstraintCustom;

  /// A custom module for Security Health Analytics.
  ///
  /// Optional.
  SecurityHealthAnalyticsCustomModule? securityHealthAnalyticsCustomModule;

  /// A built-in detector for Security Health Analytics.
  ///
  /// Optional.
  SecurityHealthAnalyticsModule? securityHealthAnalyticsModule;

  Constraint({
    this.orgPolicyConstraint,
    this.orgPolicyConstraintCustom,
    this.securityHealthAnalyticsCustomModule,
    this.securityHealthAnalyticsModule,
  });

  Constraint.fromJson(core.Map json_)
    : this(
        orgPolicyConstraint:
            json_.containsKey('orgPolicyConstraint')
                ? OrgPolicyConstraint.fromJson(
                  json_['orgPolicyConstraint']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        orgPolicyConstraintCustom:
            json_.containsKey('orgPolicyConstraintCustom')
                ? OrgPolicyConstraintCustom.fromJson(
                  json_['orgPolicyConstraintCustom']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        securityHealthAnalyticsCustomModule:
            json_.containsKey('securityHealthAnalyticsCustomModule')
                ? SecurityHealthAnalyticsCustomModule.fromJson(
                  json_['securityHealthAnalyticsCustomModule']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        securityHealthAnalyticsModule:
            json_.containsKey('securityHealthAnalyticsModule')
                ? SecurityHealthAnalyticsModule.fromJson(
                  json_['securityHealthAnalyticsModule']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (orgPolicyConstraint != null)
      'orgPolicyConstraint': orgPolicyConstraint!,
    if (orgPolicyConstraintCustom != null)
      'orgPolicyConstraintCustom': orgPolicyConstraintCustom!,
    if (securityHealthAnalyticsCustomModule != null)
      'securityHealthAnalyticsCustomModule':
          securityHealthAnalyticsCustomModule!,
    if (securityHealthAnalyticsModule != null)
      'securityHealthAnalyticsModule': securityHealthAnalyticsModule!,
  };
}

/// Request message for CreateIaCValidationReport.
class CreateIaCValidationReportRequest {
  /// The infrastructure-as-code (IaC) configuration to validate.
  ///
  /// Required.
  IaC? iac;

  CreateIaCValidationReportRequest({this.iac});

  CreateIaCValidationReportRequest.fromJson(core.Map json_)
    : this(
        iac:
            json_.containsKey('iac')
                ? IaC.fromJson(
                  json_['iac'] as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (iac != null) 'iac': iac!,
  };
}

/// A custom module configuration for Security Health Analytics.
///
/// Use `CustomConfig` to create custom detectors that generate custom findings
/// for resources that you specify.
class CustomConfig {
  /// Definitions of custom source properties to include in findings.
  ///
  /// Optional.
  CustomOutputSpec? customOutput;

  /// A description of the vulnerability or misconfiguration that the custom
  /// module detects.
  ///
  /// The description appears in each finding. Provide enough information to
  /// help an investigator understand the finding. The value must be enclosed in
  /// quotation marks.
  ///
  /// Optional.
  core.String? description;

  /// The Common Expression Language (CEL) expression to evaluate.
  ///
  /// When the expression evaluates to `true` for a resource, a finding is
  /// generated.
  ///
  /// Required.
  Expr? predicate;

  /// An explanation of the steps that security teams can take to resolve the
  /// detected issue.
  ///
  /// The explanation appears in each finding.
  ///
  /// Required.
  core.String? recommendation;

  /// The resource types that the custom module operates on.
  ///
  /// Required.
  ResourceSelector? resourceSelector;

  /// The severity of findings generated by the custom module.
  ///
  /// Required.
  /// Possible string values are:
  /// - "SEVERITY_UNSPECIFIED" : Default value. This value is unused.
  /// - "CRITICAL" : Critical severity.
  /// - "HIGH" : High severity.
  /// - "MEDIUM" : Medium severity.
  /// - "LOW" : Low severity.
  core.String? severity;

  CustomConfig({
    this.customOutput,
    this.description,
    this.predicate,
    this.recommendation,
    this.resourceSelector,
    this.severity,
  });

  CustomConfig.fromJson(core.Map json_)
    : this(
        customOutput:
            json_.containsKey('customOutput')
                ? CustomOutputSpec.fromJson(
                  json_['customOutput'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        description: json_['description'] as core.String?,
        predicate:
            json_.containsKey('predicate')
                ? Expr.fromJson(
                  json_['predicate'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        recommendation: json_['recommendation'] as core.String?,
        resourceSelector:
            json_.containsKey('resourceSelector')
                ? ResourceSelector.fromJson(
                  json_['resourceSelector']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        severity: json_['severity'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (customOutput != null) 'customOutput': customOutput!,
    if (description != null) 'description': description!,
    if (predicate != null) 'predicate': predicate!,
    if (recommendation != null) 'recommendation': recommendation!,
    if (resourceSelector != null) 'resourceSelector': resourceSelector!,
    if (severity != null) 'severity': severity!,
  };
}

/// Definitions of custom source properties that can appear in findings.
class CustomOutputSpec {
  /// The custom source properties that can appear in findings.
  ///
  /// Optional.
  core.List<Property>? properties;

  CustomOutputSpec({this.properties});

  CustomOutputSpec.fromJson(core.Map json_)
    : this(
        properties:
            (json_['properties'] as core.List?)
                ?.map(
                  (value) => Property.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (properties != null) 'properties': properties!,
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

/// Request message for ExtractPosture.
class ExtractPostureRequest {
  /// An identifier for the posture.
  ///
  /// Required.
  core.String? postureId;

  /// The organization, folder, or project from which policies are extracted.
  ///
  /// Must be within the organization defined in parent. Use one of the
  /// following formats: * `organization/{organization_number}` *
  /// `folder/{folder_number}` * `project/{project_number}`
  ///
  /// Required.
  core.String? workload;

  ExtractPostureRequest({this.postureId, this.workload});

  ExtractPostureRequest.fromJson(core.Map json_)
    : this(
        postureId: json_['postureId'] as core.String?,
        workload: json_['workload'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (postureId != null) 'postureId': postureId!,
    if (workload != null) 'workload': workload!,
  };
}

/// A custom, user-defined constraint.
///
/// You can apply the constraint only to the resource types specified in the
/// constraint, and only within the organization where the constraint is
/// defined. _When you create a custom constraint, it is not enforced
/// automatically._ You must use an organization policy to
/// [enforce the constraint](https://cloud.google.com/resource-manager/help/organization-policy/constraints/enforce).
class GoogleCloudSecuritypostureV1CustomConstraint {
  /// Whether to allow or deny the action.
  /// Possible string values are:
  /// - "ACTION_TYPE_UNSPECIFIED" : Default value. This value is unused.
  /// - "ALLOW" : Allow the action.
  /// - "DENY" : Deny the action.
  core.String? actionType;

  /// A Common Expression Language (CEL) condition expression that must evaluate
  /// to `true` for the constraint to be enforced.
  ///
  /// The maximum length is 1000 characters. For example: +
  /// `resource.instanceName.matches('(production|test)_(.+_)?[\d]+')`:
  /// Evaluates to `true` if the resource's `instanceName` attribute contains
  /// the following: + The prefix `production` or `test` + An underscore (`_`) +
  /// Optional: One or more characters, followed by an underscore (`_`) + One or
  /// more digits + `resource.management.auto_upgrade == true`: Evaluates to
  /// `true` if the resource's `management.auto_upgrade` attribute is `true`.
  core.String? condition;

  /// A description of the constraint.
  ///
  /// The maximum length is 2000 characters.
  core.String? description;

  /// A display name for the constraint.
  ///
  /// The maximum length is 200 characters.
  core.String? displayName;

  /// The types of operations that the constraint applies to.
  core.List<core.String>? methodTypes;

  /// The name of the constraint, in the format
  /// `organizations/{organization_id}/customConstraints/custom.{custom_constraint_id}`.
  ///
  /// For example,
  /// `organizations/123456789012/customConstraints/custom.createOnlyE2TypeVms`.
  /// Must contain 1 to 62 characters, excluding the prefix
  /// `organizations/{organization_id}/customConstraints/custom.`.
  ///
  /// Immutable.
  core.String? name;

  /// The resource type that the constraint applies to, in the format
  /// `{canonical_service_name}/{resource_type_name}`.
  ///
  /// For example, `compute.googleapis.com/Instance`.
  ///
  /// Immutable.
  core.List<core.String>? resourceTypes;

  /// The last time at which the constraint was updated or created.
  ///
  /// Output only.
  core.String? updateTime;

  GoogleCloudSecuritypostureV1CustomConstraint({
    this.actionType,
    this.condition,
    this.description,
    this.displayName,
    this.methodTypes,
    this.name,
    this.resourceTypes,
    this.updateTime,
  });

  GoogleCloudSecuritypostureV1CustomConstraint.fromJson(core.Map json_)
    : this(
        actionType: json_['actionType'] as core.String?,
        condition: json_['condition'] as core.String?,
        description: json_['description'] as core.String?,
        displayName: json_['displayName'] as core.String?,
        methodTypes:
            (json_['methodTypes'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        name: json_['name'] as core.String?,
        resourceTypes:
            (json_['resourceTypes'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        updateTime: json_['updateTime'] as core.String?,
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

/// A rule that defines the allowed and denied values for an organization policy
/// constraint.
class GoogleCloudSecuritypostureV1PolicyRule {
  /// Whether to allow any value for a list constraint.
  ///
  /// Valid only for list constraints.
  core.bool? allowAll;

  /// A condition that determines whether this rule is used to evaluate the
  /// policy.
  ///
  /// When set, the google.type.Expr.expression field must contain 1 to 10
  /// subexpressions, joined by the `||` or `&&` operators. Each subexpression
  /// must use the `resource.matchTag()` or `resource.matchTagId()` Common
  /// Expression Language (CEL) function. The `resource.matchTag()` function
  /// takes the following arguments: * `key_name`: the namespaced name of the
  /// tag key, with the organization ID and a slash (`/`) as a prefix; for
  /// example, `123456789012/environment` * `value_name`: the short name of the
  /// tag value For example: `resource.matchTag('123456789012/environment,
  /// 'prod')` The `resource.matchTagId()` function takes the following
  /// arguments: * `key_id`: the permanent ID of the tag key; for example,
  /// `tagKeys/123456789012` * `value_id`: the permanent ID of the tag value;
  /// for example, `tagValues/567890123456` For example:
  /// `resource.matchTagId('tagKeys/123456789012', 'tagValues/567890123456')`
  Expr? condition;

  /// Whether to deny all values for a list constraint.
  ///
  /// Valid only for list constraints.
  core.bool? denyAll;

  /// Whether to enforce the constraint.
  ///
  /// Valid only for boolean constraints.
  core.bool? enforce;

  /// Required for managed constraints if parameters are defined.
  ///
  /// Passes parameter values when policy enforcement is enabled. Ensure that
  /// parameter value types match those defined in the constraint definition.
  /// For example: { "allowedLocations" : \["us-east1", "us-west1"\], "allowAll"
  /// : true }
  ///
  /// Optional.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object?>? parameters;

  /// The resource types policies can support, only used for managed
  /// constraints.
  ///
  /// Method type is `GOVERN_TAGS`.
  ///
  /// Optional.
  ResourceTypes? resourceTypes;

  /// The allowed and denied values for a list constraint.
  ///
  /// Valid only for list constraints.
  GoogleCloudSecuritypostureV1PolicyRuleStringValues? values;

  GoogleCloudSecuritypostureV1PolicyRule({
    this.allowAll,
    this.condition,
    this.denyAll,
    this.enforce,
    this.parameters,
    this.resourceTypes,
    this.values,
  });

  GoogleCloudSecuritypostureV1PolicyRule.fromJson(core.Map json_)
    : this(
        allowAll: json_['allowAll'] as core.bool?,
        condition:
            json_.containsKey('condition')
                ? Expr.fromJson(
                  json_['condition'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        denyAll: json_['denyAll'] as core.bool?,
        enforce: json_['enforce'] as core.bool?,
        parameters:
            json_.containsKey('parameters')
                ? json_['parameters'] as core.Map<core.String, core.dynamic>
                : null,
        resourceTypes:
            json_.containsKey('resourceTypes')
                ? ResourceTypes.fromJson(
                  json_['resourceTypes'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        values:
            json_.containsKey('values')
                ? GoogleCloudSecuritypostureV1PolicyRuleStringValues.fromJson(
                  json_['values'] as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (allowAll != null) 'allowAll': allowAll!,
    if (condition != null) 'condition': condition!,
    if (denyAll != null) 'denyAll': denyAll!,
    if (enforce != null) 'enforce': enforce!,
    if (parameters != null) 'parameters': parameters!,
    if (resourceTypes != null) 'resourceTypes': resourceTypes!,
    if (values != null) 'values': values!,
  };
}

/// The allowed and denied values for a list constraint.
///
/// For all constraints, these fields can contain literal values. Optionally,
/// you can add the `is:` prefix to these values. If the value contains a colon
/// (`:`), then the `is:` prefix is required. Some constraints allow you to
/// specify a portion of the resource hierarchy, known as a
/// [_hierarchy subtree_](https://cloud.google.com/resource-manager/help/organization-policy/hierarchy-subtree),
/// that the constraint applies to. To specify a hierarchy subtree, use the
/// `under:` prefix, followed by a value with one of these formats: -
/// `projects/{project_id}` (for example, `projects/tokyo-rain-123`) -
/// `folders/{folder_id}` (for example, `folders/1234567890123`) -
/// `organizations/{organization_id}` (for example,
/// `organizations/123456789012`) A constraint's `supports_under` field
/// indicates whether you can specify a hierarchy subtree. To learn which
/// predefined constraints let you specify a hierarchy subtree, see the
/// [constraints reference](https://cloud.google.com/resource-manager/help/organization-policy/constraints/reference).
class GoogleCloudSecuritypostureV1PolicyRuleStringValues {
  /// The allowed values for the constraint.
  core.List<core.String>? allowedValues;

  /// The denied values for the constraint.
  core.List<core.String>? deniedValues;

  GoogleCloudSecuritypostureV1PolicyRuleStringValues({
    this.allowedValues,
    this.deniedValues,
  });

  GoogleCloudSecuritypostureV1PolicyRuleStringValues.fromJson(core.Map json_)
    : this(
        allowedValues:
            (json_['allowedValues'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        deniedValues:
            (json_['deniedValues'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (allowedValues != null) 'allowedValues': allowedValues!,
    if (deniedValues != null) 'deniedValues': deniedValues!,
  };
}

/// Details of an infrastructure-as-code (IaC) configuration.
class IaC {
  /// A Terraform plan file, formatted as a stringified JSON object.
  ///
  /// To learn how to generate a Terraform plan file in JSON format, see
  /// [JSON output format](https://developer.hashicorp.com/terraform/internals/json-format)
  /// in the Terraform documentation.
  ///
  /// Optional.
  core.String? tfPlan;
  core.List<core.int> get tfPlanAsBytes => convert.base64.decode(tfPlan!);

  set tfPlanAsBytes(core.List<core.int> bytes_) {
    tfPlan = convert.base64
        .encode(bytes_)
        .replaceAll('/', '_')
        .replaceAll('+', '-');
  }

  IaC({this.tfPlan});

  IaC.fromJson(core.Map json_) : this(tfPlan: json_['tfPlan'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() => {
    if (tfPlan != null) 'tfPlan': tfPlan!,
  };
}

/// Details of an infrastructure-as-code (IaC) validation report.
class IaCValidationReport {
  /// Additional information about the report.
  core.String? note;

  /// A list of every Violation found in the IaC configuration.
  core.List<Violation>? violations;

  IaCValidationReport({this.note, this.violations});

  IaCValidationReport.fromJson(core.Map json_)
    : this(
        note: json_['note'] as core.String?,
        violations:
            (json_['violations'] as core.List?)
                ?.map(
                  (value) => Violation.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (note != null) 'note': note!,
    if (violations != null) 'violations': violations!,
  };
}

/// The response message for Locations.ListLocations.
class ListLocationsResponse {
  /// A list of locations that matches the specified filter in the request.
  core.List<Location>? locations;

  /// The standard List next-page token.
  core.String? nextPageToken;

  ListLocationsResponse({this.locations, this.nextPageToken});

  ListLocationsResponse.fromJson(core.Map json_)
    : this(
        locations:
            (json_['locations'] as core.List?)
                ?.map(
                  (value) => Location.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
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

/// Response message for ListPostureDeployments.
class ListPostureDeploymentsResponse {
  /// A pagination token.
  ///
  /// To retrieve the next page of results, call the method again with this
  /// token.
  core.String? nextPageToken;

  /// The list of PostureDeployment resources.
  core.List<PostureDeployment>? postureDeployments;

  /// Locations that were temporarily unavailable and could not be reached.
  core.List<core.String>? unreachable;

  ListPostureDeploymentsResponse({
    this.nextPageToken,
    this.postureDeployments,
    this.unreachable,
  });

  ListPostureDeploymentsResponse.fromJson(core.Map json_)
    : this(
        nextPageToken: json_['nextPageToken'] as core.String?,
        postureDeployments:
            (json_['postureDeployments'] as core.List?)
                ?.map(
                  (value) => PostureDeployment.fromJson(
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
    if (postureDeployments != null) 'postureDeployments': postureDeployments!,
    if (unreachable != null) 'unreachable': unreachable!,
  };
}

/// Response message for ListPostureRevisions.
class ListPostureRevisionsResponse {
  /// A pagination token.
  ///
  /// To retrieve the next page of results, call the method again with this
  /// token.
  core.String? nextPageToken;

  /// The list of revisions for the Posture.
  core.List<Posture>? revisions;

  ListPostureRevisionsResponse({this.nextPageToken, this.revisions});

  ListPostureRevisionsResponse.fromJson(core.Map json_)
    : this(
        nextPageToken: json_['nextPageToken'] as core.String?,
        revisions:
            (json_['revisions'] as core.List?)
                ?.map(
                  (value) => Posture.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (nextPageToken != null) 'nextPageToken': nextPageToken!,
    if (revisions != null) 'revisions': revisions!,
  };
}

/// Response message for ListPostureTemplates.
class ListPostureTemplatesResponse {
  /// A pagination token.
  ///
  /// To retrieve the next page of results, call the method again with this
  /// token.
  core.String? nextPageToken;

  /// The list of PostureTemplate resources.
  core.List<PostureTemplate>? postureTemplates;

  ListPostureTemplatesResponse({this.nextPageToken, this.postureTemplates});

  ListPostureTemplatesResponse.fromJson(core.Map json_)
    : this(
        nextPageToken: json_['nextPageToken'] as core.String?,
        postureTemplates:
            (json_['postureTemplates'] as core.List?)
                ?.map(
                  (value) => PostureTemplate.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (nextPageToken != null) 'nextPageToken': nextPageToken!,
    if (postureTemplates != null) 'postureTemplates': postureTemplates!,
  };
}

/// Response message for ListPostures.
class ListPosturesResponse {
  /// A pagination token.
  ///
  /// To retrieve the next page of results, call the method again with this
  /// token.
  core.String? nextPageToken;

  /// The list of Posture resources.
  core.List<Posture>? postures;

  /// Locations that were temporarily unavailable and could not be reached.
  core.List<core.String>? unreachable;

  ListPosturesResponse({this.nextPageToken, this.postures, this.unreachable});

  ListPosturesResponse.fromJson(core.Map json_)
    : this(
        nextPageToken: json_['nextPageToken'] as core.String?,
        postures:
            (json_['postures'] as core.List?)
                ?.map(
                  (value) => Posture.fromJson(
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
    if (postures != null) 'postures': postures!,
    if (unreachable != null) 'unreachable': unreachable!,
  };
}

/// Response message for ListReports.
class ListReportsResponse {
  /// A pagination token.
  ///
  /// To retrieve the next page of results, call the method again with this
  /// token.
  core.String? nextPageToken;

  /// The list of Report resources.
  core.List<Report>? reports;

  /// Locations that were temporarily unavailable and could not be reached.
  core.List<core.String>? unreachable;

  ListReportsResponse({this.nextPageToken, this.reports, this.unreachable});

  ListReportsResponse.fromJson(core.Map json_)
    : this(
        nextPageToken: json_['nextPageToken'] as core.String?,
        reports:
            (json_['reports'] as core.List?)
                ?.map(
                  (value) => Report.fromJson(
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
    if (reports != null) 'reports': reports!,
    if (unreachable != null) 'unreachable': unreachable!,
  };
}

/// A resource that represents a Google Cloud location.
typedef Location = $Location00;

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

/// A predefined organization policy constraint.
class OrgPolicyConstraint {
  /// A unique identifier for the constraint.
  ///
  /// Required.
  core.String? cannedConstraintId;

  /// The rules enforced by the constraint.
  ///
  /// Required.
  core.List<GoogleCloudSecuritypostureV1PolicyRule>? policyRules;

  OrgPolicyConstraint({this.cannedConstraintId, this.policyRules});

  OrgPolicyConstraint.fromJson(core.Map json_)
    : this(
        cannedConstraintId: json_['cannedConstraintId'] as core.String?,
        policyRules:
            (json_['policyRules'] as core.List?)
                ?.map(
                  (value) => GoogleCloudSecuritypostureV1PolicyRule.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (cannedConstraintId != null) 'cannedConstraintId': cannedConstraintId!,
    if (policyRules != null) 'policyRules': policyRules!,
  };
}

/// A custom organization policy constraint.
class OrgPolicyConstraintCustom {
  /// Metadata for the constraint.
  ///
  /// Required.
  GoogleCloudSecuritypostureV1CustomConstraint? customConstraint;

  /// The rules enforced by the constraint.
  ///
  /// Required.
  core.List<GoogleCloudSecuritypostureV1PolicyRule>? policyRules;

  OrgPolicyConstraintCustom({this.customConstraint, this.policyRules});

  OrgPolicyConstraintCustom.fromJson(core.Map json_)
    : this(
        customConstraint:
            json_.containsKey('customConstraint')
                ? GoogleCloudSecuritypostureV1CustomConstraint.fromJson(
                  json_['customConstraint']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        policyRules:
            (json_['policyRules'] as core.List?)
                ?.map(
                  (value) => GoogleCloudSecuritypostureV1PolicyRule.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (customConstraint != null) 'customConstraint': customConstraint!,
    if (policyRules != null) 'policyRules': policyRules!,
  };
}

/// The details of a policy, including the constraints that it includes.
class Policy {
  /// The compliance standards that the policy helps enforce.
  ///
  /// Optional.
  core.List<ComplianceStandard>? complianceStandards;

  /// The constraints that the policy includes.
  ///
  /// Required.
  Constraint? constraint;

  /// A description of the policy.
  ///
  /// Optional.
  core.String? description;

  /// A user-specified identifier for the policy.
  ///
  /// In a PolicySet, each policy must have a unique identifier.
  ///
  /// Required.
  core.String? policyId;

  Policy({
    this.complianceStandards,
    this.constraint,
    this.description,
    this.policyId,
  });

  Policy.fromJson(core.Map json_)
    : this(
        complianceStandards:
            (json_['complianceStandards'] as core.List?)
                ?.map(
                  (value) => ComplianceStandard.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        constraint:
            json_.containsKey('constraint')
                ? Constraint.fromJson(
                  json_['constraint'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        description: json_['description'] as core.String?,
        policyId: json_['policyId'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (complianceStandards != null)
      'complianceStandards': complianceStandards!,
    if (constraint != null) 'constraint': constraint!,
    if (description != null) 'description': description!,
    if (policyId != null) 'policyId': policyId!,
  };
}

/// Details of a policy that was violated.
class PolicyDetails {
  /// The compliance standards that the policy maps to.
  ///
  /// For example, `CIS-2.0 1.15`.
  core.List<core.String>? complianceStandards;

  /// Information about the constraint that was violated.
  ///
  /// The format of this information can change at any time without prior
  /// notice. Your application must not depend on this information in any way.
  core.String? constraint;

  /// The type of constraint that was violated.
  /// Possible string values are:
  /// - "CONSTRAINT_TYPE_UNSPECIFIED" : Default value. This value is unused.
  /// - "SECURITY_HEALTH_ANALYTICS_CUSTOM_MODULE" : A custom module for Security
  /// Health Analytics.
  /// - "ORG_POLICY_CUSTOM" : A custom organization policy constraint.
  /// - "SECURITY_HEALTH_ANALYTICS_MODULE" : A built-in detector for Security
  /// Health Analytics.
  /// - "ORG_POLICY" : A predefined organization policy constraint.
  /// - "REGO_POLICY" : A custom rego policy constraint.
  core.String? constraintType;

  /// A description of the policy.
  core.String? description;

  PolicyDetails({
    this.complianceStandards,
    this.constraint,
    this.constraintType,
    this.description,
  });

  PolicyDetails.fromJson(core.Map json_)
    : this(
        complianceStandards:
            (json_['complianceStandards'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        constraint: json_['constraint'] as core.String?,
        constraintType: json_['constraintType'] as core.String?,
        description: json_['description'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (complianceStandards != null)
      'complianceStandards': complianceStandards!,
    if (constraint != null) 'constraint': constraint!,
    if (constraintType != null) 'constraintType': constraintType!,
    if (description != null) 'description': description!,
  };
}

/// A group of one or more Policy resources.
class PolicySet {
  /// A description of the policy set.
  ///
  /// Optional.
  core.String? description;

  /// The Policy resources in the policy set.
  ///
  /// Each policy must have a policy_id that's unique within the policy set.
  ///
  /// Required.
  core.List<Policy>? policies;

  /// An identifier for the policy set.
  ///
  /// Required.
  core.String? policySetId;

  PolicySet({this.description, this.policies, this.policySetId});

  PolicySet.fromJson(core.Map json_)
    : this(
        description: json_['description'] as core.String?,
        policies:
            (json_['policies'] as core.List?)
                ?.map(
                  (value) => Policy.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        policySetId: json_['policySetId'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (description != null) 'description': description!,
    if (policies != null) 'policies': policies!,
    if (policySetId != null) 'policySetId': policySetId!,
  };
}

/// The details of a posture.
class Posture {
  /// The user-specified annotations for the posture.
  ///
  /// For details about the values you can use in an annotation, see \[AIP-148:
  /// Standard fields\](https://google.aip.dev/148#annotations).
  ///
  /// Optional.
  core.Map<core.String, core.String>? annotations;

  /// The categories that the posture belongs to, as determined by the Security
  /// Posture API.
  ///
  /// Output only.
  core.List<core.String>? categories;

  /// The time at which the posture was created.
  ///
  /// Output only.
  core.String? createTime;

  /// A description of the posture.
  ///
  /// Optional.
  core.String? description;

  /// An opaque identifier for the current version of the posture at the
  /// specified `revision_id`.
  ///
  /// To prevent concurrent updates from overwriting each other, always provide
  /// the `etag` when you update a posture. You can also provide the `etag` when
  /// you delete a posture, to help ensure that you're deleting the intended
  /// version of the posture.
  ///
  /// Optional.
  core.String? etag;

  /// Identifier.
  ///
  /// The name of the posture, in the format
  /// `organizations/{organization}/locations/global/postures/{posture_id}`.
  ///
  /// Required.
  core.String? name;

  /// The PolicySet resources that the posture includes.
  ///
  /// Required.
  core.List<PolicySet>? policySets;

  /// Whether the posture is in the process of being updated.
  ///
  /// Output only.
  core.bool? reconciling;

  /// An opaque eight-character string that identifies the revision of the
  /// posture.
  ///
  /// A posture can have multiple revisions; when you deploy a posture, you
  /// deploy a specific revision of the posture.
  ///
  /// Output only. Immutable.
  core.String? revisionId;

  /// The state of the posture at the specified `revision_id`.
  ///
  /// Required.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : Default value. This value is unused.
  /// - "DEPRECATED" : The posture is deprecated and can no longer be deployed.
  /// - "DRAFT" : The posture is a draft and is not ready to deploy.
  /// - "ACTIVE" : The posture is complete and ready to deploy.
  core.String? state;

  /// The time at which the posture was last updated.
  ///
  /// Output only.
  core.String? updateTime;

  Posture({
    this.annotations,
    this.categories,
    this.createTime,
    this.description,
    this.etag,
    this.name,
    this.policySets,
    this.reconciling,
    this.revisionId,
    this.state,
    this.updateTime,
  });

  Posture.fromJson(core.Map json_)
    : this(
        annotations: (json_['annotations']
                as core.Map<core.String, core.dynamic>?)
            ?.map((key, value) => core.MapEntry(key, value as core.String)),
        categories:
            (json_['categories'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        createTime: json_['createTime'] as core.String?,
        description: json_['description'] as core.String?,
        etag: json_['etag'] as core.String?,
        name: json_['name'] as core.String?,
        policySets:
            (json_['policySets'] as core.List?)
                ?.map(
                  (value) => PolicySet.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        reconciling: json_['reconciling'] as core.bool?,
        revisionId: json_['revisionId'] as core.String?,
        state: json_['state'] as core.String?,
        updateTime: json_['updateTime'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (annotations != null) 'annotations': annotations!,
    if (categories != null) 'categories': categories!,
    if (createTime != null) 'createTime': createTime!,
    if (description != null) 'description': description!,
    if (etag != null) 'etag': etag!,
    if (name != null) 'name': name!,
    if (policySets != null) 'policySets': policySets!,
    if (reconciling != null) 'reconciling': reconciling!,
    if (revisionId != null) 'revisionId': revisionId!,
    if (state != null) 'state': state!,
    if (updateTime != null) 'updateTime': updateTime!,
  };
}

/// Details for a Posture deployment on an organization, folder, or project.
///
/// You can deploy at most one posture to each organization, folder, or project.
/// The parent resource for a posture deployment is always the organization,
/// even if the deployment applies to a folder or project.
class PostureDeployment {
  /// The user-specified annotations for the posture deployment.
  ///
  /// For details about the values you can use in an annotation, see \[AIP-148:
  /// Standard fields\](https://google.aip.dev/148#annotations).
  ///
  /// Optional.
  core.Map<core.String, core.String>? annotations;

  /// The categories that the posture deployment belongs to, as determined by
  /// the Security Posture API.
  ///
  /// Output only.
  core.List<core.String>? categories;

  /// The time at which the posture deployment was created.
  ///
  /// Output only.
  core.String? createTime;

  /// A description of the posture deployment.
  ///
  /// Optional.
  core.String? description;

  /// The posture ID that was specified for the deployment.
  ///
  /// Present only if the posture deployment is in a failed state.
  ///
  /// Output only.
  core.String? desiredPostureId;

  /// The revision ID of the posture that was specified for the deployment.
  ///
  /// Present only if the deployment is in a failed state.
  ///
  /// Output only.
  core.String? desiredPostureRevisionId;

  /// An opaque identifier for the current version of the posture deployment.
  ///
  /// To prevent concurrent updates from overwriting each other, always provide
  /// the `etag` when you update a posture deployment. You can also provide the
  /// `etag` when you delete a posture deployment, to help ensure that you're
  /// deleting the intended posture deployment.
  ///
  /// Optional.
  core.String? etag;

  /// A description of why the posture deployment failed.
  ///
  /// Present only if the deployment is in a failed state.
  ///
  /// Output only.
  core.String? failureMessage;

  /// Identifier.
  ///
  /// The name of the posture deployment, in the format
  /// `organizations/{organization}/locations/global/postureDeployments/{deployment_id}`.
  ///
  /// Required.
  core.String? name;

  /// The posture used in the deployment, in the format
  /// `organizations/{organization}/locations/global/postures/{posture_id}`.
  ///
  /// Required.
  core.String? postureId;

  /// The revision ID of the posture used in the deployment.
  ///
  /// Required.
  core.String? postureRevisionId;

  /// Whether the posture deployment is in the process of being updated.
  ///
  /// Output only.
  core.bool? reconciling;

  /// The state of the posture deployment.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : Default value. This value is unused.
  /// - "CREATING" : The posture deployment is being created.
  /// - "DELETING" : The posture deployment is being deleted.
  /// - "UPDATING" : The posture deployment is being updated.
  /// - "ACTIVE" : The posture deployment is active and in use.
  /// - "CREATE_FAILED" : The posture deployment could not be created.
  /// - "UPDATE_FAILED" : The posture deployment could not be updated.
  /// - "DELETE_FAILED" : The posture deployment could not be deleted.
  core.String? state;

  /// The organization, folder, or project where the posture is deployed.
  ///
  /// Uses one of the following formats: * `organizations/{organization_number}`
  /// * `folders/{folder_number}` * `projects/{project_number}`
  ///
  /// Required.
  core.String? targetResource;

  /// The time at which the posture deployment was last updated.
  ///
  /// Output only.
  core.String? updateTime;

  PostureDeployment({
    this.annotations,
    this.categories,
    this.createTime,
    this.description,
    this.desiredPostureId,
    this.desiredPostureRevisionId,
    this.etag,
    this.failureMessage,
    this.name,
    this.postureId,
    this.postureRevisionId,
    this.reconciling,
    this.state,
    this.targetResource,
    this.updateTime,
  });

  PostureDeployment.fromJson(core.Map json_)
    : this(
        annotations: (json_['annotations']
                as core.Map<core.String, core.dynamic>?)
            ?.map((key, value) => core.MapEntry(key, value as core.String)),
        categories:
            (json_['categories'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        createTime: json_['createTime'] as core.String?,
        description: json_['description'] as core.String?,
        desiredPostureId: json_['desiredPostureId'] as core.String?,
        desiredPostureRevisionId:
            json_['desiredPostureRevisionId'] as core.String?,
        etag: json_['etag'] as core.String?,
        failureMessage: json_['failureMessage'] as core.String?,
        name: json_['name'] as core.String?,
        postureId: json_['postureId'] as core.String?,
        postureRevisionId: json_['postureRevisionId'] as core.String?,
        reconciling: json_['reconciling'] as core.bool?,
        state: json_['state'] as core.String?,
        targetResource: json_['targetResource'] as core.String?,
        updateTime: json_['updateTime'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (annotations != null) 'annotations': annotations!,
    if (categories != null) 'categories': categories!,
    if (createTime != null) 'createTime': createTime!,
    if (description != null) 'description': description!,
    if (desiredPostureId != null) 'desiredPostureId': desiredPostureId!,
    if (desiredPostureRevisionId != null)
      'desiredPostureRevisionId': desiredPostureRevisionId!,
    if (etag != null) 'etag': etag!,
    if (failureMessage != null) 'failureMessage': failureMessage!,
    if (name != null) 'name': name!,
    if (postureId != null) 'postureId': postureId!,
    if (postureRevisionId != null) 'postureRevisionId': postureRevisionId!,
    if (reconciling != null) 'reconciling': reconciling!,
    if (state != null) 'state': state!,
    if (targetResource != null) 'targetResource': targetResource!,
    if (updateTime != null) 'updateTime': updateTime!,
  };
}

/// Details of a posture deployment.
class PostureDetails {
  /// The identifier for the PolicySet that the relevant policy belongs to.
  core.String? policySet;

  /// The posture used in the deployment, in the format
  /// `organizations/{organization}/locations/global/postures/{posture_id}`.
  core.String? posture;

  /// The name of the posture deployment, in the format
  /// `organizations/{organization}/locations/global/postureDeployments/{deployment_id}`.
  core.String? postureDeployment;

  /// The organization, folder, or project where the posture is deployed.
  ///
  /// Uses one of the following formats: * `organizations/{organization_number}`
  /// * `folders/{folder_number}` * `projects/{project_number}`
  core.String? postureDeploymentTargetResource;

  /// The revision ID of the posture used in the deployment.
  core.String? postureRevisionId;

  PostureDetails({
    this.policySet,
    this.posture,
    this.postureDeployment,
    this.postureDeploymentTargetResource,
    this.postureRevisionId,
  });

  PostureDetails.fromJson(core.Map json_)
    : this(
        policySet: json_['policySet'] as core.String?,
        posture: json_['posture'] as core.String?,
        postureDeployment: json_['postureDeployment'] as core.String?,
        postureDeploymentTargetResource:
            json_['postureDeploymentTargetResource'] as core.String?,
        postureRevisionId: json_['postureRevisionId'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (policySet != null) 'policySet': policySet!,
    if (posture != null) 'posture': posture!,
    if (postureDeployment != null) 'postureDeployment': postureDeployment!,
    if (postureDeploymentTargetResource != null)
      'postureDeploymentTargetResource': postureDeploymentTargetResource!,
    if (postureRevisionId != null) 'postureRevisionId': postureRevisionId!,
  };
}

/// The details of a posture template.
class PostureTemplate {
  /// The categories that the posture template belongs to, as determined by the
  /// Security Posture API.
  ///
  /// Output only.
  core.List<core.String>? categories;

  /// A description of the posture template.
  ///
  /// Output only.
  core.String? description;

  /// Identifier.
  ///
  /// The name of the posture template, in the format
  /// `organizations/{organization}/locations/global/postureTemplates/{posture_template}`.
  ///
  /// Output only.
  core.String? name;

  /// The PolicySet resources that the posture template includes.
  ///
  /// Output only.
  core.List<PolicySet>? policySets;

  /// A string that identifies the revision of the posture template.
  ///
  /// Output only.
  core.String? revisionId;

  /// The state of the posture template at the specified `revision_id`.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : Default value. This value is unused.
  /// - "ACTIVE" : The posture template follows the latest controls and
  /// standards.
  /// - "DEPRECATED" : The posture template uses outdated controls and
  /// standards. We recommend that you use a newer revision of the posture
  /// template.
  core.String? state;

  PostureTemplate({
    this.categories,
    this.description,
    this.name,
    this.policySets,
    this.revisionId,
    this.state,
  });

  PostureTemplate.fromJson(core.Map json_)
    : this(
        categories:
            (json_['categories'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        description: json_['description'] as core.String?,
        name: json_['name'] as core.String?,
        policySets:
            (json_['policySets'] as core.List?)
                ?.map(
                  (value) => PolicySet.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        revisionId: json_['revisionId'] as core.String?,
        state: json_['state'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (categories != null) 'categories': categories!,
    if (description != null) 'description': description!,
    if (name != null) 'name': name!,
    if (policySets != null) 'policySets': policySets!,
    if (revisionId != null) 'revisionId': revisionId!,
    if (state != null) 'state': state!,
  };
}

/// A name-value pair used as a custom source property.
class Property {
  /// The name of the custom source property.
  ///
  /// Required.
  core.String? name;

  /// The CEL expression for the value of the custom source property.
  ///
  /// For resource properties, you can return the value of the property or a
  /// string enclosed in quotation marks.
  ///
  /// Optional.
  Expr? valueExpression;

  Property({this.name, this.valueExpression});

  Property.fromJson(core.Map json_)
    : this(
        name: json_['name'] as core.String?,
        valueExpression:
            json_.containsKey('valueExpression')
                ? Expr.fromJson(
                  json_['valueExpression']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (name != null) 'name': name!,
    if (valueExpression != null) 'valueExpression': valueExpression!,
  };
}

/// Details of a report.
class Report {
  /// The time at which the report was created.
  ///
  /// Output only.
  core.String? createTime;

  /// An infrastructure-as-code (IaC) validation report.
  ///
  /// Output only.
  IaCValidationReport? iacValidationReport;

  /// The name of the report, in the format
  /// `organizations/{organization}/locations/global/reports/{report_id}`.
  ///
  /// Required.
  core.String? name;

  /// The time at which the report was last updated.
  ///
  /// Output only.
  core.String? updateTime;

  Report({
    this.createTime,
    this.iacValidationReport,
    this.name,
    this.updateTime,
  });

  Report.fromJson(core.Map json_)
    : this(
        createTime: json_['createTime'] as core.String?,
        iacValidationReport:
            json_.containsKey('iacValidationReport')
                ? IaCValidationReport.fromJson(
                  json_['iacValidationReport']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        name: json_['name'] as core.String?,
        updateTime: json_['updateTime'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (createTime != null) 'createTime': createTime!,
    if (iacValidationReport != null)
      'iacValidationReport': iacValidationReport!,
    if (name != null) 'name': name!,
    if (updateTime != null) 'updateTime': updateTime!,
  };
}

/// A selector for the resource types to run the detector on.
class ResourceSelector {
  /// The resource types to run the detector on.
  ///
  /// Each custom module can specify up to 5 resource types.
  ///
  /// Required.
  core.List<core.String>? resourceTypes;

  ResourceSelector({this.resourceTypes});

  ResourceSelector.fromJson(core.Map json_)
    : this(
        resourceTypes:
            (json_['resourceTypes'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (resourceTypes != null) 'resourceTypes': resourceTypes!,
  };
}

/// Set multiple resource types for one policy, for example: resourceTypes:
/// included: - compute.googleapis.com/Instance - compute.googleapis.com/Disk
/// Constraint definition contains an empty resource type in order to support
/// multiple resource types in the policy.
///
/// Only supports managed constraints. Method type is `GOVERN_TAGS`. Refer
/// go/multi-resource-support-force-tags-gmc to get more details.
class ResourceTypes {
  /// The resource types we currently support.
  ///
  /// cloud/orgpolicy/customconstraintconfig/prod/resource_types.prototext
  ///
  /// Optional.
  core.List<core.String>? included;

  ResourceTypes({this.included});

  ResourceTypes.fromJson(core.Map json_)
    : this(
        included:
            (json_['included'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (included != null) 'included': included!,
  };
}

/// A custom module for Security Health Analytics.
class SecurityHealthAnalyticsCustomModule {
  /// Configuration settings for the custom module.
  ///
  /// Required.
  CustomConfig? config;

  /// The display name of the custom module.
  ///
  /// This value is used as the finding category for all the asset violation
  /// findings that the custom module returns. The display name must contain
  /// between 1 and 128 alphanumeric characters or underscores, and it must
  /// start with a lowercase letter.
  ///
  /// Optional.
  core.String? displayName;

  /// The unique identifier for the custom module.
  ///
  /// Contains 1 to 20 digits.
  ///
  /// Output only. Immutable.
  core.String? id;

  /// Whether the custom module is enabled at a specified level of the resource
  /// hierarchy.
  /// Possible string values are:
  /// - "ENABLEMENT_STATE_UNSPECIFIED" : Default value. This value is unused.
  /// - "ENABLED" : The detector or custom module is enabled.
  /// - "DISABLED" : The detector or custom module is disabled.
  core.String? moduleEnablementState;

  SecurityHealthAnalyticsCustomModule({
    this.config,
    this.displayName,
    this.id,
    this.moduleEnablementState,
  });

  SecurityHealthAnalyticsCustomModule.fromJson(core.Map json_)
    : this(
        config:
            json_.containsKey('config')
                ? CustomConfig.fromJson(
                  json_['config'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        displayName: json_['displayName'] as core.String?,
        id: json_['id'] as core.String?,
        moduleEnablementState: json_['moduleEnablementState'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (config != null) 'config': config!,
    if (displayName != null) 'displayName': displayName!,
    if (id != null) 'id': id!,
    if (moduleEnablementState != null)
      'moduleEnablementState': moduleEnablementState!,
  };
}

/// A built-in detector for Security Health Analytics.
class SecurityHealthAnalyticsModule {
  /// Whether the detector is enabled at a specified level of the resource
  /// hierarchy.
  /// Possible string values are:
  /// - "ENABLEMENT_STATE_UNSPECIFIED" : Default value. This value is unused.
  /// - "ENABLED" : The detector or custom module is enabled.
  /// - "DISABLED" : The detector or custom module is disabled.
  core.String? moduleEnablementState;

  /// The name of the detector.
  ///
  /// For example, `BIGQUERY_TABLE_CMEK_DISABLED`. This field is also used as
  /// the finding category for all the asset violation findings that the
  /// detector returns.
  ///
  /// Required.
  core.String? moduleName;

  SecurityHealthAnalyticsModule({this.moduleEnablementState, this.moduleName});

  SecurityHealthAnalyticsModule.fromJson(core.Map json_)
    : this(
        moduleEnablementState: json_['moduleEnablementState'] as core.String?,
        moduleName: json_['moduleName'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (moduleEnablementState != null)
      'moduleEnablementState': moduleEnablementState!,
    if (moduleName != null) 'moduleName': moduleName!,
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

/// Details of a violation.
class Violation {
  /// The full resource name of the asset that caused the violation.
  ///
  /// For details about the format of the full resource name for each asset
  /// type, see
  /// [Resource name format](https://cloud.google.com/asset-inventory/docs/resource-name-format).
  core.String? assetId;

  /// A description of the steps that you can take to fix the violation.
  core.String? nextSteps;

  /// The policy that was violated.
  core.String? policyId;

  /// The severity of the violation.
  /// Possible string values are:
  /// - "SEVERITY_UNSPECIFIED" : Default value. This value is unused.
  /// - "CRITICAL" : Critical severity.
  /// - "HIGH" : High severity.
  /// - "MEDIUM" : Medium severity.
  /// - "LOW" : Low severity.
  core.String? severity;

  /// Details of the Cloud Asset Inventory asset that caused the violation.
  AssetDetails? violatedAsset;

  /// Details of the policy that was violated.
  PolicyDetails? violatedPolicy;

  /// Details for the posture that was violated.
  ///
  /// This field is present only if the violated policy belongs to a deployed
  /// posture.
  PostureDetails? violatedPosture;

  Violation({
    this.assetId,
    this.nextSteps,
    this.policyId,
    this.severity,
    this.violatedAsset,
    this.violatedPolicy,
    this.violatedPosture,
  });

  Violation.fromJson(core.Map json_)
    : this(
        assetId: json_['assetId'] as core.String?,
        nextSteps: json_['nextSteps'] as core.String?,
        policyId: json_['policyId'] as core.String?,
        severity: json_['severity'] as core.String?,
        violatedAsset:
            json_.containsKey('violatedAsset')
                ? AssetDetails.fromJson(
                  json_['violatedAsset'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        violatedPolicy:
            json_.containsKey('violatedPolicy')
                ? PolicyDetails.fromJson(
                  json_['violatedPolicy']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        violatedPosture:
            json_.containsKey('violatedPosture')
                ? PostureDetails.fromJson(
                  json_['violatedPosture']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (assetId != null) 'assetId': assetId!,
    if (nextSteps != null) 'nextSteps': nextSteps!,
    if (policyId != null) 'policyId': policyId!,
    if (severity != null) 'severity': severity!,
    if (violatedAsset != null) 'violatedAsset': violatedAsset!,
    if (violatedPolicy != null) 'violatedPolicy': violatedPolicy!,
    if (violatedPosture != null) 'violatedPosture': violatedPosture!,
  };
}
