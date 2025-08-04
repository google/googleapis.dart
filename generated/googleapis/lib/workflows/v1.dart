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

/// Workflows API - v1
///
/// Manage workflow definitions. To execute workflows and manage executions, see
/// the Workflows Executions API.
///
/// For more information, see <https://cloud.google.com/workflows>
///
/// Create an instance of [WorkflowsApi] to access these resources:
///
/// - [ProjectsResource]
///   - [ProjectsLocationsResource]
///     - [ProjectsLocationsOperationsResource]
///     - [ProjectsLocationsWorkflowsResource]
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

/// Manage workflow definitions.
///
/// To execute workflows and manage executions, see the Workflows Executions
/// API.
class WorkflowsApi {
  /// See, edit, configure, and delete your Google Cloud data and see the email
  /// address for your Google Account.
  static const cloudPlatformScope =
      'https://www.googleapis.com/auth/cloud-platform';

  final commons.ApiRequester _requester;

  ProjectsResource get projects => ProjectsResource(_requester);

  WorkflowsApi(
    http.Client client, {
    core.String rootUrl = 'https://workflows.googleapis.com/',
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

  ProjectsLocationsResource get locations =>
      ProjectsLocationsResource(_requester);

  ProjectsResource(commons.ApiRequester client) : _requester = client;
}

class ProjectsLocationsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsOperationsResource get operations =>
      ProjectsLocationsOperationsResource(_requester);
  ProjectsLocationsWorkflowsResource get workflows =>
      ProjectsLocationsWorkflowsResource(_requester);

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

class ProjectsLocationsOperationsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsOperationsResource(commons.ApiRequester client)
    : _requester = client;

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
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class ProjectsLocationsWorkflowsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsWorkflowsResource(commons.ApiRequester client)
    : _requester = client;

  /// Creates a new workflow.
  ///
  /// If a workflow with the specified name already exists in the specified
  /// project and location, the long running operation returns a ALREADY_EXISTS
  /// error.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Project and location in which the workflow should be
  /// created. Format: projects/{project}/locations/{location}
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [workflowId] - Required. The ID of the workflow to be created. It has to
  /// fulfill the following requirements: * Must contain only letters, numbers,
  /// underscores and hyphens. * Must start with a letter. * Must be between
  /// 1-64 characters. * Must end with a number or a letter. * Must be unique
  /// within the customer project and location.
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
    Workflow request,
    core.String parent, {
    core.String? workflowId,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (workflowId != null) 'workflowId': [workflowId],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/workflows';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Deletes a workflow with the specified name.
  ///
  /// This method also cancels and deletes all running executions of the
  /// workflow.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Name of the workflow to be deleted. Format:
  /// projects/{project}/locations/{location}/workflows/{workflow}
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/workflows/\[^/\]+$`.
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
    final queryParams_ = <core.String, core.List<core.String>>{
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

  /// Gets details of a single workflow.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Name of the workflow for which information should be
  /// retrieved. Format:
  /// projects/{project}/locations/{location}/workflows/{workflow}
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/workflows/\[^/\]+$`.
  ///
  /// [revisionId] - Optional. The revision of the workflow to retrieve. If the
  /// revision_id is empty, the latest revision is retrieved. The format is
  /// "000001-a4d", where the first six characters define the zero-padded
  /// decimal revision number. They are followed by a hyphen and three
  /// hexadecimal characters.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Workflow].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Workflow> get(
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
    return Workflow.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists workflows in a given project and location.
  ///
  /// The default order is not specified.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Project and location from which the workflows should
  /// be listed. Format: projects/{project}/locations/{location}
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [filter] - Filter to restrict results to specific workflows. For details,
  /// see AIP-160. For example, if you are using the Google APIs Explorer:
  /// `state="SUCCEEDED"` or `createTime>"2023-08-01" AND state="FAILED"`
  ///
  /// [orderBy] - Comma-separated list of fields that specify the order of the
  /// results. Default sorting order for a field is ascending. To specify
  /// descending order for a field, append a "desc" suffix. If not specified,
  /// the results are returned in an unspecified order.
  ///
  /// [pageSize] - Maximum number of workflows to return per call. The service
  /// might return fewer than this value even if not at the end of the
  /// collection. If a value is not specified, a default value of 500 is used.
  /// The maximum permitted value is 1000 and values greater than 1000 are
  /// coerced down to 1000.
  ///
  /// [pageToken] - A page token, received from a previous `ListWorkflows` call.
  /// Provide this to retrieve the subsequent page. When paginating, all other
  /// parameters provided to `ListWorkflows` must match the call that provided
  /// the page token.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListWorkflowsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListWorkflowsResponse> list(
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

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/workflows';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListWorkflowsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Lists revisions for a given workflow.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Workflow for which the revisions should be listed.
  /// Format: projects/{project}/locations/{location}/workflows/{workflow}
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/workflows/\[^/\]+$`.
  ///
  /// [pageSize] - The maximum number of revisions to return per page. If a
  /// value is not specified, a default value of 20 is used. The maximum
  /// permitted value is 100. Values greater than 100 are coerced down to 100.
  ///
  /// [pageToken] - The page token, received from a previous
  /// ListWorkflowRevisions call. Provide this to retrieve the subsequent page.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListWorkflowRevisionsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListWorkflowRevisionsResponse> listRevisions(
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
    return ListWorkflowRevisionsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Updates an existing workflow.
  ///
  /// Running this method has no impact on already running executions of the
  /// workflow. A new revision of the workflow might be created as a result of a
  /// successful update operation. In that case, the new revision is used in new
  /// workflow executions.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - The resource name of the workflow. Format:
  /// projects/{project}/locations/{location}/workflows/{workflow}. This is a
  /// workflow-wide field and is not tied to a specific revision.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/workflows/\[^/\]+$`.
  ///
  /// [updateMask] - List of fields to be updated. If not present, the entire
  /// workflow will be updated.
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
    Workflow request,
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

/// A generic empty message that you can re-use to avoid defining duplicated
/// empty messages in your APIs.
///
/// A typical example is to use it as the request or the response type of an API
/// method. For instance: service Foo { rpc Bar(google.protobuf.Empty) returns
/// (google.protobuf.Empty); }
typedef Empty = $Empty;

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

/// Response for the ListWorkflowRevisions method.
class ListWorkflowRevisionsResponse {
  /// A token, which can be sent as `page_token` to retrieve the next page.
  ///
  /// If this field is omitted, there are no subsequent pages.
  core.String? nextPageToken;

  /// The revisions of the workflow, ordered in reverse chronological order.
  core.List<Workflow>? workflows;

  ListWorkflowRevisionsResponse({this.nextPageToken, this.workflows});

  ListWorkflowRevisionsResponse.fromJson(core.Map json_)
    : this(
        nextPageToken: json_['nextPageToken'] as core.String?,
        workflows:
            (json_['workflows'] as core.List?)
                ?.map(
                  (value) => Workflow.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (nextPageToken != null) 'nextPageToken': nextPageToken!,
    if (workflows != null) 'workflows': workflows!,
  };
}

/// Response for the ListWorkflows method.
class ListWorkflowsResponse {
  /// A token, which can be sent as `page_token` to retrieve the next page.
  ///
  /// If this field is omitted, there are no subsequent pages.
  core.String? nextPageToken;

  /// Unreachable resources.
  core.List<core.String>? unreachable;

  /// The workflows that match the request.
  core.List<Workflow>? workflows;

  ListWorkflowsResponse({this.nextPageToken, this.unreachable, this.workflows});

  ListWorkflowsResponse.fromJson(core.Map json_)
    : this(
        nextPageToken: json_['nextPageToken'] as core.String?,
        unreachable:
            (json_['unreachable'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        workflows:
            (json_['workflows'] as core.List?)
                ?.map(
                  (value) => Workflow.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (nextPageToken != null) 'nextPageToken': nextPageToken!,
    if (unreachable != null) 'unreachable': unreachable!,
    if (workflows != null) 'workflows': workflows!,
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

/// Describes an error related to the current state of the workflow.
typedef StateError = $StateError;

/// The `Status` type defines a logical error model that is suitable for
/// different programming environments, including REST APIs and RPC APIs.
///
/// It is used by [gRPC](https://github.com/grpc). Each `Status` message
/// contains three pieces of data: error code, error message, and error details.
/// You can find out more about this error model and how to work with it in the
/// [API Design Guide](https://cloud.google.com/apis/design/errors).
typedef Status = $Status00;

/// Workflow program to be executed by Workflows.
class Workflow {
  /// A list of all KMS crypto keys used to encrypt or decrypt the data
  /// associated with the workflow.
  ///
  /// Output only.
  core.List<core.String>? allKmsKeys;

  /// A list of all KMS crypto key versions used to encrypt or decrypt the data
  /// associated with the workflow.
  ///
  /// Output only.
  core.List<core.String>? allKmsKeysVersions;

  /// Describes the level of platform logging to apply to calls and call
  /// responses during executions of this workflow.
  ///
  /// If both the workflow and the execution specify a logging level, the
  /// execution level takes precedence.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "CALL_LOG_LEVEL_UNSPECIFIED" : No call logging level specified.
  /// - "LOG_ALL_CALLS" : Log all call steps within workflows, all call returns,
  /// and all exceptions raised.
  /// - "LOG_ERRORS_ONLY" : Log only exceptions that are raised from call steps
  /// within workflows.
  /// - "LOG_NONE" : Explicitly log nothing.
  core.String? callLogLevel;

  /// The timestamp for when the workflow was created.
  ///
  /// This is a workflow-wide field and is not tied to a specific revision.
  ///
  /// Output only.
  core.String? createTime;

  /// The resource name of a KMS crypto key used to encrypt or decrypt the data
  /// associated with the workflow.
  ///
  /// Format:
  /// projects/{project}/locations/{location}/keyRings/{keyRing}/cryptoKeys/{cryptoKey}
  /// Using `-` as a wildcard for the `{project}` or not providing one at all
  /// will infer the project from the account. If not provided, data associated
  /// with the workflow will not be CMEK-encrypted.
  ///
  /// Optional.
  core.String? cryptoKeyName;

  /// The resource name of a KMS crypto key version used to encrypt or decrypt
  /// the data associated with the workflow.
  ///
  /// Format:
  /// projects/{project}/locations/{location}/keyRings/{keyRing}/cryptoKeys/{cryptoKey}/cryptoKeyVersions/{cryptoKeyVersion}
  ///
  /// Output only.
  core.String? cryptoKeyVersion;

  /// Description of the workflow provided by the user.
  ///
  /// Must be at most 1000 Unicode characters long. This is a workflow-wide
  /// field and is not tied to a specific revision.
  core.String? description;

  /// Describes the execution history level to apply to this workflow.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "EXECUTION_HISTORY_LEVEL_UNSPECIFIED" : The default/unset value.
  /// - "EXECUTION_HISTORY_BASIC" : Enable execution history basic feature.
  /// - "EXECUTION_HISTORY_DETAILED" : Enable execution history detailed
  /// feature.
  core.String? executionHistoryLevel;

  /// Labels associated with this workflow.
  ///
  /// Labels can contain at most 64 entries. Keys and values can be no longer
  /// than 63 characters and can only contain lowercase letters, numeric
  /// characters, underscores, and dashes. Label keys must start with a letter.
  /// International characters are allowed. This is a workflow-wide field and is
  /// not tied to a specific revision.
  core.Map<core.String, core.String>? labels;

  /// The resource name of the workflow.
  ///
  /// Format: projects/{project}/locations/{location}/workflows/{workflow}. This
  /// is a workflow-wide field and is not tied to a specific revision.
  core.String? name;

  /// The timestamp for the latest revision of the workflow's creation.
  ///
  /// Output only.
  core.String? revisionCreateTime;

  /// The revision of the workflow.
  ///
  /// A new revision of a workflow is created as a result of updating the
  /// following properties of a workflow: - Service account - Workflow code to
  /// be executed The format is "000001-a4d", where the first six characters
  /// define the zero-padded revision ordinal number. They are followed by a
  /// hyphen and three hexadecimal random characters.
  ///
  /// Output only.
  core.String? revisionId;

  /// The service account associated with the latest workflow version.
  ///
  /// This service account represents the identity of the workflow and
  /// determines what permissions the workflow has. Format:
  /// projects/{project}/serviceAccounts/{account} or {account} Using `-` as a
  /// wildcard for the `{project}` or not providing one at all will infer the
  /// project from the account. The `{account}` value can be the `email` address
  /// or the `unique_id` of the service account. If not provided, workflow will
  /// use the project's default service account. Modifying this field for an
  /// existing workflow results in a new workflow revision.
  core.String? serviceAccount;

  /// Workflow code to be executed.
  ///
  /// The size limit is 128KB.
  core.String? sourceContents;

  /// State of the workflow deployment.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : Invalid state.
  /// - "ACTIVE" : The workflow has been deployed successfully and is serving.
  /// - "UNAVAILABLE" : Workflow data is unavailable. See the `state_error`
  /// field.
  core.String? state;

  /// Error regarding the state of the workflow.
  ///
  /// For example, this field will have error details if the execution data is
  /// unavailable due to revoked KMS key permissions.
  ///
  /// Output only.
  StateError? stateError;

  /// Input only.
  ///
  /// Immutable. Tags associated with this workflow.
  ///
  /// Optional.
  core.Map<core.String, core.String>? tags;

  /// The timestamp for when the workflow was last updated.
  ///
  /// This is a workflow-wide field and is not tied to a specific revision.
  ///
  /// Output only.
  core.String? updateTime;

  /// User-defined environment variables associated with this workflow revision.
  ///
  /// This map has a maximum length of 20. Each string can take up to 4KiB. Keys
  /// cannot be empty strings and cannot start with "GOOGLE" or "WORKFLOWS".
  ///
  /// Optional.
  core.Map<core.String, core.String>? userEnvVars;

  Workflow({
    this.allKmsKeys,
    this.allKmsKeysVersions,
    this.callLogLevel,
    this.createTime,
    this.cryptoKeyName,
    this.cryptoKeyVersion,
    this.description,
    this.executionHistoryLevel,
    this.labels,
    this.name,
    this.revisionCreateTime,
    this.revisionId,
    this.serviceAccount,
    this.sourceContents,
    this.state,
    this.stateError,
    this.tags,
    this.updateTime,
    this.userEnvVars,
  });

  Workflow.fromJson(core.Map json_)
    : this(
        allKmsKeys:
            (json_['allKmsKeys'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        allKmsKeysVersions:
            (json_['allKmsKeysVersions'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        callLogLevel: json_['callLogLevel'] as core.String?,
        createTime: json_['createTime'] as core.String?,
        cryptoKeyName: json_['cryptoKeyName'] as core.String?,
        cryptoKeyVersion: json_['cryptoKeyVersion'] as core.String?,
        description: json_['description'] as core.String?,
        executionHistoryLevel: json_['executionHistoryLevel'] as core.String?,
        labels: (json_['labels'] as core.Map<core.String, core.dynamic>?)?.map(
          (key, value) => core.MapEntry(key, value as core.String),
        ),
        name: json_['name'] as core.String?,
        revisionCreateTime: json_['revisionCreateTime'] as core.String?,
        revisionId: json_['revisionId'] as core.String?,
        serviceAccount: json_['serviceAccount'] as core.String?,
        sourceContents: json_['sourceContents'] as core.String?,
        state: json_['state'] as core.String?,
        stateError:
            json_.containsKey('stateError')
                ? StateError.fromJson(
                  json_['stateError'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        tags: (json_['tags'] as core.Map<core.String, core.dynamic>?)?.map(
          (key, value) => core.MapEntry(key, value as core.String),
        ),
        updateTime: json_['updateTime'] as core.String?,
        userEnvVars: (json_['userEnvVars']
                as core.Map<core.String, core.dynamic>?)
            ?.map((key, value) => core.MapEntry(key, value as core.String)),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (allKmsKeys != null) 'allKmsKeys': allKmsKeys!,
    if (allKmsKeysVersions != null) 'allKmsKeysVersions': allKmsKeysVersions!,
    if (callLogLevel != null) 'callLogLevel': callLogLevel!,
    if (createTime != null) 'createTime': createTime!,
    if (cryptoKeyName != null) 'cryptoKeyName': cryptoKeyName!,
    if (cryptoKeyVersion != null) 'cryptoKeyVersion': cryptoKeyVersion!,
    if (description != null) 'description': description!,
    if (executionHistoryLevel != null)
      'executionHistoryLevel': executionHistoryLevel!,
    if (labels != null) 'labels': labels!,
    if (name != null) 'name': name!,
    if (revisionCreateTime != null) 'revisionCreateTime': revisionCreateTime!,
    if (revisionId != null) 'revisionId': revisionId!,
    if (serviceAccount != null) 'serviceAccount': serviceAccount!,
    if (sourceContents != null) 'sourceContents': sourceContents!,
    if (state != null) 'state': state!,
    if (stateError != null) 'stateError': stateError!,
    if (tags != null) 'tags': tags!,
    if (updateTime != null) 'updateTime': updateTime!,
    if (userEnvVars != null) 'userEnvVars': userEnvVars!,
  };
}
