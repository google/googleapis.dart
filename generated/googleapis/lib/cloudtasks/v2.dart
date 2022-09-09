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

/// Cloud Tasks API - v2
///
/// Manages the execution of large numbers of distributed requests.
///
/// For more information, see <https://cloud.google.com/tasks/>
///
/// Create an instance of [CloudTasksApi] to access these resources:
///
/// - [ProjectsResource]
///   - [ProjectsLocationsResource]
///     - [ProjectsLocationsQueuesResource]
///       - [ProjectsLocationsQueuesTasksResource]
library cloudtasks.v2;

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

/// Manages the execution of large numbers of distributed requests.
class CloudTasksApi {
  /// See, edit, configure, and delete your Google Cloud data and see the email
  /// address for your Google Account.
  static const cloudPlatformScope =
      'https://www.googleapis.com/auth/cloud-platform';

  /// Manage tasks and queues in the Cloud Tasks service
  static const cloudTasksScope = 'https://www.googleapis.com/auth/cloud-tasks';

  final commons.ApiRequester _requester;

  ProjectsResource get projects => ProjectsResource(_requester);

  CloudTasksApi(http.Client client,
      {core.String rootUrl = 'https://cloudtasks.googleapis.com/',
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

  ProjectsLocationsQueuesResource get queues =>
      ProjectsLocationsQueuesResource(_requester);

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

class ProjectsLocationsQueuesResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsQueuesTasksResource get tasks =>
      ProjectsLocationsQueuesTasksResource(_requester);

  ProjectsLocationsQueuesResource(commons.ApiRequester client)
      : _requester = client;

  /// Creates a queue.
  ///
  /// Queues created with this method allow tasks to live for a maximum of 31
  /// days. After a task is 31 days old, the task will be deleted regardless of
  /// whether it was dispatched or not. WARNING: Using this method may have
  /// unintended side effects if you are using an App Engine `queue.yaml` or
  /// `queue.xml` file to manage your queues. Read
  /// [Overview of Queue Management and queue.yaml](https://cloud.google.com/tasks/docs/queue-yaml)
  /// before using this method.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The location name in which the queue will be created.
  /// For example: `projects/PROJECT_ID/locations/LOCATION_ID` The list of
  /// allowed locations can be obtained by calling Cloud Tasks' implementation
  /// of ListLocations.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Queue].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Queue> create(
    Queue request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$parent') + '/queues';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Queue.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Deletes a queue.
  ///
  /// This command will delete the queue even if it has tasks in it. Note: If
  /// you delete a queue, a queue with the same name can't be created for 7
  /// days. WARNING: Using this method may have unintended side effects if you
  /// are using an App Engine `queue.yaml` or `queue.xml` file to manage your
  /// queues. Read
  /// [Overview of Queue Management and queue.yaml](https://cloud.google.com/tasks/docs/queue-yaml)
  /// before using this method.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The queue name. For example:
  /// `projects/PROJECT_ID/locations/LOCATION_ID/queues/QUEUE_ID`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/queues/\[^/\]+$`.
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

  /// Gets a queue.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name of the queue. For example:
  /// `projects/PROJECT_ID/locations/LOCATION_ID/queues/QUEUE_ID`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/queues/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Queue].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Queue> get(
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
    return Queue.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Gets the access control policy for a Queue.
  ///
  /// Returns an empty policy if the resource exists and does not have a policy
  /// set. Authorization requires the following
  /// [Google IAM](https://cloud.google.com/iam) permission on the specified
  /// resource parent: * `cloudtasks.queues.getIamPolicy`
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [resource] - REQUIRED: The resource for which the policy is being
  /// requested. See
  /// [Resource names](https://cloud.google.com/apis/design/resource_names) for
  /// the appropriate value for this field.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/queues/\[^/\]+$`.
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
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$resource') + ':getIamPolicy';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Policy.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists queues.
  ///
  /// Queues are returned in lexicographical order.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The location name. For example:
  /// `projects/PROJECT_ID/locations/LOCATION_ID`
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [filter] - `filter` can be used to specify a subset of queues. Any Queue
  /// field can be used as a filter and several operators as supported. For
  /// example: `<=, <, >=, >, !=, =, :`. The filter syntax is the same as
  /// described in
  /// [Stackdriver's Advanced Logs Filters](https://cloud.google.com/logging/docs/view/advanced_filters).
  /// Sample filter "state: PAUSED". Note that using filters might cause fewer
  /// queues than the requested page_size to be returned.
  ///
  /// [pageSize] - Requested page size. The maximum page size is 9800. If
  /// unspecified, the page size will be the maximum. Fewer queues than
  /// requested might be returned, even if more queues exist; use the
  /// next_page_token in the response to determine if more queues exist.
  ///
  /// [pageToken] - A token identifying the page of results to return. To
  /// request the first page results, page_token must be empty. To request the
  /// next page of results, page_token must be the value of next_page_token
  /// returned from the previous call to ListQueues method. It is an error to
  /// switch the value of the filter while iterating through pages.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListQueuesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListQueuesResponse> list(
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

    final url_ = 'v2/' + core.Uri.encodeFull('$parent') + '/queues';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListQueuesResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Updates a queue.
  ///
  /// This method creates the queue if it does not exist and updates the queue
  /// if it does exist. Queues created with this method allow tasks to live for
  /// a maximum of 31 days. After a task is 31 days old, the task will be
  /// deleted regardless of whether it was dispatched or not. WARNING: Using
  /// this method may have unintended side effects if you are using an App
  /// Engine `queue.yaml` or `queue.xml` file to manage your queues. Read
  /// [Overview of Queue Management and queue.yaml](https://cloud.google.com/tasks/docs/queue-yaml)
  /// before using this method.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Caller-specified and required in CreateQueue, after which it
  /// becomes output only. The queue name. The queue name must have the
  /// following format:
  /// `projects/PROJECT_ID/locations/LOCATION_ID/queues/QUEUE_ID` * `PROJECT_ID`
  /// can contain letters (\[A-Za-z\]), numbers (\[0-9\]), hyphens (-), colons
  /// (:), or periods (.). For more information, see
  /// [Identifying projects](https://cloud.google.com/resource-manager/docs/creating-managing-projects#identifying_projects)
  /// * `LOCATION_ID` is the canonical ID for the queue's location. The list of
  /// available locations can be obtained by calling ListLocations. For more
  /// information, see https://cloud.google.com/about/locations/. * `QUEUE_ID`
  /// can contain letters (\[A-Za-z\]), numbers (\[0-9\]), or hyphens (-). The
  /// maximum length is 100 characters.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/queues/\[^/\]+$`.
  ///
  /// [updateMask] - A mask used to specify which fields of the queue are being
  /// updated. If empty, then all fields will be updated.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Queue].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Queue> patch(
    Queue request,
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
    return Queue.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Pauses the queue.
  ///
  /// If a queue is paused then the system will stop dispatching tasks until the
  /// queue is resumed via ResumeQueue. Tasks can still be added when the queue
  /// is paused. A queue is paused if its state is PAUSED.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The queue name. For example:
  /// `projects/PROJECT_ID/location/LOCATION_ID/queues/QUEUE_ID`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/queues/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Queue].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Queue> pause(
    PauseQueueRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$name') + ':pause';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Queue.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Purges a queue by deleting all of its tasks.
  ///
  /// All tasks created before this method is called are permanently deleted.
  /// Purge operations can take up to one minute to take effect. Tasks might be
  /// dispatched before the purge takes effect. A purge is irreversible.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The queue name. For example:
  /// `projects/PROJECT_ID/location/LOCATION_ID/queues/QUEUE_ID`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/queues/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Queue].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Queue> purge(
    PurgeQueueRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$name') + ':purge';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Queue.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Resume a queue.
  ///
  /// This method resumes a queue after it has been PAUSED or DISABLED. The
  /// state of a queue is stored in the queue's state; after calling this method
  /// it will be set to RUNNING. WARNING: Resuming many high-QPS queues at the
  /// same time can lead to target overloading. If you are resuming high-QPS
  /// queues, follow the 500/50/5 pattern described in
  /// [Managing Cloud Tasks Scaling Risks](https://cloud.google.com/tasks/docs/manage-cloud-task-scaling).
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The queue name. For example:
  /// `projects/PROJECT_ID/location/LOCATION_ID/queues/QUEUE_ID`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/queues/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Queue].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Queue> resume(
    ResumeQueueRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$name') + ':resume';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Queue.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Sets the access control policy for a Queue.
  ///
  /// Replaces any existing policy. Note: The Cloud Console does not check
  /// queue-level IAM permissions yet. Project-level permissions are required to
  /// use the Cloud Console. Authorization requires the following
  /// [Google IAM](https://cloud.google.com/iam) permission on the specified
  /// resource parent: * `cloudtasks.queues.setIamPolicy`
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
  /// `^projects/\[^/\]+/locations/\[^/\]+/queues/\[^/\]+$`.
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

  /// Returns permissions that a caller has on a Queue.
  ///
  /// If the resource does not exist, this will return an empty set of
  /// permissions, not a NOT_FOUND error. Note: This operation is designed to be
  /// used for building permission-aware UIs and command-line tools, not for
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
  /// `^projects/\[^/\]+/locations/\[^/\]+/queues/\[^/\]+$`.
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
}

class ProjectsLocationsQueuesTasksResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsQueuesTasksResource(commons.ApiRequester client)
      : _requester = client;

  /// Creates a task and adds it to a queue.
  ///
  /// Tasks cannot be updated after creation; there is no UpdateTask command. *
  /// The maximum task size is 100KB.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The queue name. For example:
  /// `projects/PROJECT_ID/locations/LOCATION_ID/queues/QUEUE_ID` The queue must
  /// already exist.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/queues/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Task].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Task> create(
    CreateTaskRequest request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$parent') + '/tasks';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Task.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Deletes a task.
  ///
  /// A task can be deleted if it is scheduled or dispatched. A task cannot be
  /// deleted if it has executed successfully or permanently failed.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The task name. For example:
  /// `projects/PROJECT_ID/locations/LOCATION_ID/queues/QUEUE_ID/tasks/TASK_ID`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/queues/\[^/\]+/tasks/\[^/\]+$`.
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

  /// Gets a task.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The task name. For example:
  /// `projects/PROJECT_ID/locations/LOCATION_ID/queues/QUEUE_ID/tasks/TASK_ID`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/queues/\[^/\]+/tasks/\[^/\]+$`.
  ///
  /// [responseView] - The response_view specifies which subset of the Task will
  /// be returned. By default response_view is BASIC; not all information is
  /// retrieved by default because some data, such as payloads, might be
  /// desirable to return only when needed because of its large size or because
  /// of the sensitivity of data that it contains. Authorization for FULL
  /// requires `cloudtasks.tasks.fullView`
  /// [Google IAM](https://cloud.google.com/iam/) permission on the Task
  /// resource.
  /// Possible string values are:
  /// - "VIEW_UNSPECIFIED" : Unspecified. Defaults to BASIC.
  /// - "BASIC" : The basic view omits fields which can be large or can contain
  /// sensitive data. This view does not include the body in
  /// AppEngineHttpRequest. Bodies are desirable to return only when needed,
  /// because they can be large and because of the sensitivity of the data that
  /// you choose to store in it.
  /// - "FULL" : All information is returned. Authorization for FULL requires
  /// `cloudtasks.tasks.fullView` [Google IAM](https://cloud.google.com/iam/)
  /// permission on the Queue resource.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Task].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Task> get(
    core.String name, {
    core.String? responseView,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (responseView != null) 'responseView': [responseView],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return Task.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists the tasks in a queue.
  ///
  /// By default, only the BASIC view is retrieved due to performance
  /// considerations; response_view controls the subset of information which is
  /// returned. The tasks may be returned in any order. The ordering may change
  /// at any time.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The queue name. For example:
  /// `projects/PROJECT_ID/locations/LOCATION_ID/queues/QUEUE_ID`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/queues/\[^/\]+$`.
  ///
  /// [pageSize] - Maximum page size. Fewer tasks than requested might be
  /// returned, even if more tasks exist; use next_page_token in the response to
  /// determine if more tasks exist. The maximum page size is 1000. If
  /// unspecified, the page size will be the maximum.
  ///
  /// [pageToken] - A token identifying the page of results to return. To
  /// request the first page results, page_token must be empty. To request the
  /// next page of results, page_token must be the value of next_page_token
  /// returned from the previous call to ListTasks method. The page token is
  /// valid for only 2 hours.
  ///
  /// [responseView] - The response_view specifies which subset of the Task will
  /// be returned. By default response_view is BASIC; not all information is
  /// retrieved by default because some data, such as payloads, might be
  /// desirable to return only when needed because of its large size or because
  /// of the sensitivity of data that it contains. Authorization for FULL
  /// requires `cloudtasks.tasks.fullView`
  /// [Google IAM](https://cloud.google.com/iam/) permission on the Task
  /// resource.
  /// Possible string values are:
  /// - "VIEW_UNSPECIFIED" : Unspecified. Defaults to BASIC.
  /// - "BASIC" : The basic view omits fields which can be large or can contain
  /// sensitive data. This view does not include the body in
  /// AppEngineHttpRequest. Bodies are desirable to return only when needed,
  /// because they can be large and because of the sensitivity of the data that
  /// you choose to store in it.
  /// - "FULL" : All information is returned. Authorization for FULL requires
  /// `cloudtasks.tasks.fullView` [Google IAM](https://cloud.google.com/iam/)
  /// permission on the Queue resource.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListTasksResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListTasksResponse> list(
    core.String parent, {
    core.int? pageSize,
    core.String? pageToken,
    core.String? responseView,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if (responseView != null) 'responseView': [responseView],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$parent') + '/tasks';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListTasksResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Forces a task to run now.
  ///
  /// When this method is called, Cloud Tasks will dispatch the task, even if
  /// the task is already running, the queue has reached its RateLimits or is
  /// PAUSED. This command is meant to be used for manual debugging. For
  /// example, RunTask can be used to retry a failed task after a fix has been
  /// made or to manually force a task to be dispatched now. The dispatched task
  /// is returned. That is, the task that is returned contains the status after
  /// the task is dispatched but before the task is received by its target. If
  /// Cloud Tasks receives a successful response from the task's target, then
  /// the task will be deleted; otherwise the task's schedule_time will be reset
  /// to the time that RunTask was called plus the retry delay specified in the
  /// queue's RetryConfig. RunTask returns NOT_FOUND when it is called on a task
  /// that has already succeeded or permanently failed.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The task name. For example:
  /// `projects/PROJECT_ID/locations/LOCATION_ID/queues/QUEUE_ID/tasks/TASK_ID`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/queues/\[^/\]+/tasks/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Task].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Task> run(
    RunTaskRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$name') + ':run';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Task.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }
}

/// App Engine HTTP request.
///
/// The message defines the HTTP request that is sent to an App Engine app when
/// the task is dispatched. Using AppEngineHttpRequest requires
/// \[`appengine.applications.get`\](https://cloud.google.com/appengine/docs/admin-api/access-control)
/// Google IAM permission for the project and the following scope:
/// `https://www.googleapis.com/auth/cloud-platform` The task will be delivered
/// to the App Engine app which belongs to the same project as the queue. For
/// more information, see
/// [How Requests are Routed](https://cloud.google.com/appengine/docs/standard/python/how-requests-are-routed)
/// and how routing is affected by
/// [dispatch files](https://cloud.google.com/appengine/docs/python/config/dispatchref).
/// Traffic is encrypted during transport and never leaves Google datacenters.
/// Because this traffic is carried over a communication mechanism internal to
/// Google, you cannot explicitly set the protocol (for example, HTTP or HTTPS).
/// The request to the handler, however, will appear to have used the HTTP
/// protocol. The AppEngineRouting used to construct the URL that the task is
/// delivered to can be set at the queue-level or task-level: * If
/// app_engine_routing_override is set on the queue, this value is used for all
/// tasks in the queue, no matter what the setting is for the task-level
/// app_engine_routing. The `url` that the task will be sent to is: * `url =`
/// host `+` relative_uri Tasks can be dispatched to secure app handlers,
/// unsecure app handlers, and URIs restricted with \[`login:
/// admin`\](https://cloud.google.com/appengine/docs/standard/python/config/appref).
/// Because tasks are not run as any user, they cannot be dispatched to URIs
/// restricted with \[`login:
/// required`\](https://cloud.google.com/appengine/docs/standard/python/config/appref)
/// Task dispatches also do not follow redirects. The task attempt has succeeded
/// if the app's request handler returns an HTTP response code in the range
/// \[`200` - `299`\]. The task attempt has failed if the app's handler returns
/// a non-2xx response code or Cloud Tasks does not receive response before the
/// deadline. Failed tasks will be retried according to the retry configuration.
/// `503` (Service Unavailable) is considered an App Engine system error instead
/// of an application error and will cause Cloud Tasks' traffic congestion
/// control to temporarily throttle the queue's dispatches. Unlike other types
/// of task targets, a `429` (Too Many Requests) response from an app handler
/// does not cause traffic congestion control to throttle the queue.
class AppEngineHttpRequest {
  /// Task-level setting for App Engine routing.
  ///
  /// * If app_engine_routing_override is set on the queue, this value is used
  /// for all tasks in the queue, no matter what the setting is for the
  /// task-level app_engine_routing.
  AppEngineRouting? appEngineRouting;

  /// HTTP request body.
  ///
  /// A request body is allowed only if the HTTP method is POST or PUT. It is an
  /// error to set a body on a task with an incompatible HttpMethod.
  core.String? body;
  core.List<core.int> get bodyAsBytes => convert.base64.decode(body!);

  set bodyAsBytes(core.List<core.int> bytes_) {
    body =
        convert.base64.encode(bytes_).replaceAll('/', '_').replaceAll('+', '-');
  }

  /// HTTP request headers.
  ///
  /// This map contains the header field names and values. Headers can be set
  /// when the task is created. Repeated headers are not supported but a header
  /// value can contain commas. Cloud Tasks sets some headers to default values:
  /// * `User-Agent`: By default, this header is `"AppEngine-Google;
  /// (+http://code.google.com/appengine)"`. This header can be modified, but
  /// Cloud Tasks will append `"AppEngine-Google;
  /// (+http://code.google.com/appengine)"` to the modified `User-Agent`. If the
  /// task has a body, Cloud Tasks sets the following headers: * `Content-Type`:
  /// By default, the `Content-Type` header is set to
  /// `"application/octet-stream"`. The default can be overridden by explicitly
  /// setting `Content-Type` to a particular media type when the task is
  /// created. For example, `Content-Type` can be set to `"application/json"`. *
  /// `Content-Length`: This is computed by Cloud Tasks. This value is output
  /// only. It cannot be changed. The headers below cannot be set or overridden:
  /// * `Host` * `X-Google-*` * `X-AppEngine-*` In addition, Cloud Tasks sets
  /// some headers when the task is dispatched, such as headers containing
  /// information about the task; see
  /// [request headers](https://cloud.google.com/tasks/docs/creating-appengine-handlers#reading_request_headers).
  /// These headers are set only when the task is dispatched, so they are not
  /// visible when the task is returned in a Cloud Tasks response. Although
  /// there is no specific limit for the maximum number of headers or the size,
  /// there is a limit on the maximum size of the Task. For more information,
  /// see the CreateTask documentation.
  core.Map<core.String, core.String>? headers;

  /// The HTTP method to use for the request.
  ///
  /// The default is POST. The app's request handler for the task's target URL
  /// must be able to handle HTTP requests with this http_method, otherwise the
  /// task attempt fails with error code 405 (Method Not Allowed). See
  /// [Writing a push task request handler](https://cloud.google.com/appengine/docs/java/taskqueue/push/creating-handlers#writing_a_push_task_request_handler)
  /// and the App Engine documentation for your runtime on
  /// [How Requests are Handled](https://cloud.google.com/appengine/docs/standard/python3/how-requests-are-handled).
  /// Possible string values are:
  /// - "HTTP_METHOD_UNSPECIFIED" : HTTP method unspecified
  /// - "POST" : HTTP POST
  /// - "GET" : HTTP GET
  /// - "HEAD" : HTTP HEAD
  /// - "PUT" : HTTP PUT
  /// - "DELETE" : HTTP DELETE
  /// - "PATCH" : HTTP PATCH
  /// - "OPTIONS" : HTTP OPTIONS
  core.String? httpMethod;

  /// The relative URI.
  ///
  /// The relative URI must begin with "/" and must be a valid HTTP relative
  /// URI. It can contain a path and query string arguments. If the relative URI
  /// is empty, then the root path "/" will be used. No spaces are allowed, and
  /// the maximum length allowed is 2083 characters.
  core.String? relativeUri;

  AppEngineHttpRequest({
    this.appEngineRouting,
    this.body,
    this.headers,
    this.httpMethod,
    this.relativeUri,
  });

  AppEngineHttpRequest.fromJson(core.Map json_)
      : this(
          appEngineRouting: json_.containsKey('appEngineRouting')
              ? AppEngineRouting.fromJson(json_['appEngineRouting']
                  as core.Map<core.String, core.dynamic>)
              : null,
          body: json_.containsKey('body') ? json_['body'] as core.String : null,
          headers: json_.containsKey('headers')
              ? (json_['headers'] as core.Map<core.String, core.dynamic>).map(
                  (key, item) => core.MapEntry(
                    key,
                    item as core.String,
                  ),
                )
              : null,
          httpMethod: json_.containsKey('httpMethod')
              ? json_['httpMethod'] as core.String
              : null,
          relativeUri: json_.containsKey('relativeUri')
              ? json_['relativeUri'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (appEngineRouting != null) 'appEngineRouting': appEngineRouting!,
        if (body != null) 'body': body!,
        if (headers != null) 'headers': headers!,
        if (httpMethod != null) 'httpMethod': httpMethod!,
        if (relativeUri != null) 'relativeUri': relativeUri!,
      };
}

/// App Engine Routing.
///
/// Defines routing characteristics specific to App Engine - service, version,
/// and instance. For more information about services, versions, and instances
/// see
/// [An Overview of App Engine](https://cloud.google.com/appengine/docs/python/an-overview-of-app-engine),
/// [Microservices Architecture on Google App Engine](https://cloud.google.com/appengine/docs/python/microservices-on-app-engine),
/// [App Engine Standard request routing](https://cloud.google.com/appengine/docs/standard/python/how-requests-are-routed),
/// and
/// [App Engine Flex request routing](https://cloud.google.com/appengine/docs/flexible/python/how-requests-are-routed).
/// Using AppEngineRouting requires
/// \[`appengine.applications.get`\](https://cloud.google.com/appengine/docs/admin-api/access-control)
/// Google IAM permission for the project and the following scope:
/// `https://www.googleapis.com/auth/cloud-platform`
class AppEngineRouting {
  /// The host that the task is sent to.
  ///
  /// The host is constructed from the domain name of the app associated with
  /// the queue's project ID (for example .appspot.com), and the service,
  /// version, and instance. Tasks which were created using the App Engine SDK
  /// might have a custom domain name. For more information, see
  /// [How Requests are Routed](https://cloud.google.com/appengine/docs/standard/python/how-requests-are-routed).
  ///
  /// Output only.
  core.String? host;

  /// App instance.
  ///
  /// By default, the task is sent to an instance which is available when the
  /// task is attempted. Requests can only be sent to a specific instance if
  /// [manual scaling is used in App Engine Standard](https://cloud.google.com/appengine/docs/python/an-overview-of-app-engine?hl=en_US#scaling_types_and_instance_classes).
  /// App Engine Flex does not support instances. For more information, see
  /// [App Engine Standard request routing](https://cloud.google.com/appengine/docs/standard/python/how-requests-are-routed)
  /// and
  /// [App Engine Flex request routing](https://cloud.google.com/appengine/docs/flexible/python/how-requests-are-routed).
  core.String? instance;

  /// App service.
  ///
  /// By default, the task is sent to the service which is the default service
  /// when the task is attempted. For some queues or tasks which were created
  /// using the App Engine Task Queue API, host is not parsable into service,
  /// version, and instance. For example, some tasks which were created using
  /// the App Engine SDK use a custom domain name; custom domains are not parsed
  /// by Cloud Tasks. If host is not parsable, then service, version, and
  /// instance are the empty string.
  core.String? service;

  /// App version.
  ///
  /// By default, the task is sent to the version which is the default version
  /// when the task is attempted. For some queues or tasks which were created
  /// using the App Engine Task Queue API, host is not parsable into service,
  /// version, and instance. For example, some tasks which were created using
  /// the App Engine SDK use a custom domain name; custom domains are not parsed
  /// by Cloud Tasks. If host is not parsable, then service, version, and
  /// instance are the empty string.
  core.String? version;

  AppEngineRouting({
    this.host,
    this.instance,
    this.service,
    this.version,
  });

  AppEngineRouting.fromJson(core.Map json_)
      : this(
          host: json_.containsKey('host') ? json_['host'] as core.String : null,
          instance: json_.containsKey('instance')
              ? json_['instance'] as core.String
              : null,
          service: json_.containsKey('service')
              ? json_['service'] as core.String
              : null,
          version: json_.containsKey('version')
              ? json_['version'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (host != null) 'host': host!,
        if (instance != null) 'instance': instance!,
        if (service != null) 'service': service!,
        if (version != null) 'version': version!,
      };
}

/// The status of a task attempt.
class Attempt {
  /// The time that this attempt was dispatched.
  ///
  /// `dispatch_time` will be truncated to the nearest microsecond.
  ///
  /// Output only.
  core.String? dispatchTime;

  /// The response from the worker for this attempt.
  ///
  /// If `response_time` is unset, then the task has not been attempted or is
  /// currently running and the `response_status` field is meaningless.
  ///
  /// Output only.
  Status? responseStatus;

  /// The time that this attempt response was received.
  ///
  /// `response_time` will be truncated to the nearest microsecond.
  ///
  /// Output only.
  core.String? responseTime;

  /// The time that this attempt was scheduled.
  ///
  /// `schedule_time` will be truncated to the nearest microsecond.
  ///
  /// Output only.
  core.String? scheduleTime;

  Attempt({
    this.dispatchTime,
    this.responseStatus,
    this.responseTime,
    this.scheduleTime,
  });

  Attempt.fromJson(core.Map json_)
      : this(
          dispatchTime: json_.containsKey('dispatchTime')
              ? json_['dispatchTime'] as core.String
              : null,
          responseStatus: json_.containsKey('responseStatus')
              ? Status.fromJson(json_['responseStatus']
                  as core.Map<core.String, core.dynamic>)
              : null,
          responseTime: json_.containsKey('responseTime')
              ? json_['responseTime'] as core.String
              : null,
          scheduleTime: json_.containsKey('scheduleTime')
              ? json_['scheduleTime'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (dispatchTime != null) 'dispatchTime': dispatchTime!,
        if (responseStatus != null) 'responseStatus': responseStatus!,
        if (responseTime != null) 'responseTime': responseTime!,
        if (scheduleTime != null) 'scheduleTime': scheduleTime!,
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

/// Request message for CreateTask.
class CreateTaskRequest {
  /// The response_view specifies which subset of the Task will be returned.
  ///
  /// By default response_view is BASIC; not all information is retrieved by
  /// default because some data, such as payloads, might be desirable to return
  /// only when needed because of its large size or because of the sensitivity
  /// of data that it contains. Authorization for FULL requires
  /// `cloudtasks.tasks.fullView` [Google IAM](https://cloud.google.com/iam/)
  /// permission on the Task resource.
  /// Possible string values are:
  /// - "VIEW_UNSPECIFIED" : Unspecified. Defaults to BASIC.
  /// - "BASIC" : The basic view omits fields which can be large or can contain
  /// sensitive data. This view does not include the body in
  /// AppEngineHttpRequest. Bodies are desirable to return only when needed,
  /// because they can be large and because of the sensitivity of the data that
  /// you choose to store in it.
  /// - "FULL" : All information is returned. Authorization for FULL requires
  /// `cloudtasks.tasks.fullView` [Google IAM](https://cloud.google.com/iam/)
  /// permission on the Queue resource.
  core.String? responseView;

  /// The task to add.
  ///
  /// Task names have the following format:
  /// `projects/PROJECT_ID/locations/LOCATION_ID/queues/QUEUE_ID/tasks/TASK_ID`.
  /// The user can optionally specify a task name. If a name is not specified
  /// then the system will generate a random unique task id, which will be set
  /// in the task returned in the response. If schedule_time is not set or is in
  /// the past then Cloud Tasks will set it to the current time. Task
  /// De-duplication: Explicitly specifying a task ID enables task
  /// de-duplication. If a task's ID is identical to that of an existing task or
  /// a task that was deleted or executed recently then the call will fail with
  /// ALREADY_EXISTS. If the task's queue was created using Cloud Tasks, then
  /// another task with the same name can't be created for ~1hour after the
  /// original task was deleted or executed. If the task's queue was created
  /// using queue.yaml or queue.xml, then another task with the same name can't
  /// be created for ~9days after the original task was deleted or executed.
  /// Because there is an extra lookup cost to identify duplicate task names,
  /// these CreateTask calls have significantly increased latency. Using hashed
  /// strings for the task id or for the prefix of the task id is recommended.
  /// Choosing task ids that are sequential or have sequential prefixes, for
  /// example using a timestamp, causes an increase in latency and error rates
  /// in all task commands. The infrastructure relies on an approximately
  /// uniform distribution of task ids to store and serve tasks efficiently.
  ///
  /// Required.
  Task? task;

  CreateTaskRequest({
    this.responseView,
    this.task,
  });

  CreateTaskRequest.fromJson(core.Map json_)
      : this(
          responseView: json_.containsKey('responseView')
              ? json_['responseView'] as core.String
              : null,
          task: json_.containsKey('task')
              ? Task.fromJson(
                  json_['task'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (responseView != null) 'responseView': responseView!,
        if (task != null) 'task': task!,
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

/// Request message for `GetIamPolicy` method.
class GetIamPolicyRequest {
  /// OPTIONAL: A `GetPolicyOptions` object for specifying options to
  /// `GetIamPolicy`.
  GetPolicyOptions? options;

  GetIamPolicyRequest({
    this.options,
  });

  GetIamPolicyRequest.fromJson(core.Map json_)
      : this(
          options: json_.containsKey('options')
              ? GetPolicyOptions.fromJson(
                  json_['options'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (options != null) 'options': options!,
      };
}

/// Encapsulates settings provided to GetIamPolicy.
typedef GetPolicyOptions = $GetPolicyOptions;

/// HTTP request.
///
/// The task will be pushed to the worker as an HTTP request. If the worker or
/// the redirected worker acknowledges the task by returning a successful HTTP
/// response code (\[`200` - `299`\]), the task will be removed from the queue.
/// If any other HTTP response code is returned or no response is received, the
/// task will be retried according to the following: * User-specified
/// throttling: retry configuration, rate limits, and the queue's state. *
/// System throttling: To prevent the worker from overloading, Cloud Tasks may
/// temporarily reduce the queue's effective rate. User-specified settings will
/// not be changed. System throttling happens because: * Cloud Tasks backs off
/// on all errors. Normally the backoff specified in rate limits will be used.
/// But if the worker returns `429` (Too Many Requests), `503` (Service
/// Unavailable), or the rate of errors is high, Cloud Tasks will use a higher
/// backoff rate. The retry specified in the `Retry-After` HTTP response header
/// is considered. * To prevent traffic spikes and to smooth sudden increases in
/// traffic, dispatches ramp up slowly when the queue is newly created or idle
/// and if large numbers of tasks suddenly become available to dispatch (due to
/// spikes in create task rates, the queue being unpaused, or many tasks that
/// are scheduled at the same time).
class HttpRequest {
  /// HTTP request body.
  ///
  /// A request body is allowed only if the HTTP method is POST, PUT, or PATCH.
  /// It is an error to set body on a task with an incompatible HttpMethod.
  core.String? body;
  core.List<core.int> get bodyAsBytes => convert.base64.decode(body!);

  set bodyAsBytes(core.List<core.int> bytes_) {
    body =
        convert.base64.encode(bytes_).replaceAll('/', '_').replaceAll('+', '-');
  }

  /// HTTP request headers.
  ///
  /// This map contains the header field names and values. Headers can be set
  /// when the task is created. These headers represent a subset of the headers
  /// that will accompany the task's HTTP request. Some HTTP request headers
  /// will be ignored or replaced. A partial list of headers that will be
  /// ignored or replaced is: * Host: This will be computed by Cloud Tasks and
  /// derived from HttpRequest.url. * Content-Length: This will be computed by
  /// Cloud Tasks. * User-Agent: This will be set to `"Google-Cloud-Tasks"`. *
  /// `X-Google-*`: Google use only. * `X-AppEngine-*`: Google use only.
  /// `Content-Type` won't be set by Cloud Tasks. You can explicitly set
  /// `Content-Type` to a media type when the task is created. For example,
  /// `Content-Type` can be set to `"application/octet-stream"` or
  /// `"application/json"`. Headers which can have multiple values (according to
  /// RFC2616) can be specified using comma-separated values. The size of the
  /// headers must be less than 80KB.
  core.Map<core.String, core.String>? headers;

  /// The HTTP method to use for the request.
  ///
  /// The default is POST.
  /// Possible string values are:
  /// - "HTTP_METHOD_UNSPECIFIED" : HTTP method unspecified
  /// - "POST" : HTTP POST
  /// - "GET" : HTTP GET
  /// - "HEAD" : HTTP HEAD
  /// - "PUT" : HTTP PUT
  /// - "DELETE" : HTTP DELETE
  /// - "PATCH" : HTTP PATCH
  /// - "OPTIONS" : HTTP OPTIONS
  core.String? httpMethod;

  /// If specified, an
  /// [OAuth token](https://developers.google.com/identity/protocols/OAuth2)
  /// will be generated and attached as an `Authorization` header in the HTTP
  /// request.
  ///
  /// This type of authorization should generally only be used when calling
  /// Google APIs hosted on *.googleapis.com.
  OAuthToken? oauthToken;

  /// If specified, an
  /// [OIDC](https://developers.google.com/identity/protocols/OpenIDConnect)
  /// token will be generated and attached as an `Authorization` header in the
  /// HTTP request.
  ///
  /// This type of authorization can be used for many scenarios, including
  /// calling Cloud Run, or endpoints where you intend to validate the token
  /// yourself.
  OidcToken? oidcToken;

  /// The full url path that the request will be sent to.
  ///
  /// This string must begin with either "http://" or "https://". Some examples
  /// are: `http://acme.com` and `https://acme.com/sales:8080`. Cloud Tasks will
  /// encode some characters for safety and compatibility. The maximum allowed
  /// URL length is 2083 characters after encoding. The `Location` header
  /// response from a redirect response \[`300` - `399`\] may be followed. The
  /// redirect is not counted as a separate attempt.
  ///
  /// Required.
  core.String? url;

  HttpRequest({
    this.body,
    this.headers,
    this.httpMethod,
    this.oauthToken,
    this.oidcToken,
    this.url,
  });

  HttpRequest.fromJson(core.Map json_)
      : this(
          body: json_.containsKey('body') ? json_['body'] as core.String : null,
          headers: json_.containsKey('headers')
              ? (json_['headers'] as core.Map<core.String, core.dynamic>).map(
                  (key, item) => core.MapEntry(
                    key,
                    item as core.String,
                  ),
                )
              : null,
          httpMethod: json_.containsKey('httpMethod')
              ? json_['httpMethod'] as core.String
              : null,
          oauthToken: json_.containsKey('oauthToken')
              ? OAuthToken.fromJson(
                  json_['oauthToken'] as core.Map<core.String, core.dynamic>)
              : null,
          oidcToken: json_.containsKey('oidcToken')
              ? OidcToken.fromJson(
                  json_['oidcToken'] as core.Map<core.String, core.dynamic>)
              : null,
          url: json_.containsKey('url') ? json_['url'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (body != null) 'body': body!,
        if (headers != null) 'headers': headers!,
        if (httpMethod != null) 'httpMethod': httpMethod!,
        if (oauthToken != null) 'oauthToken': oauthToken!,
        if (oidcToken != null) 'oidcToken': oidcToken!,
        if (url != null) 'url': url!,
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

/// Response message for ListQueues.
class ListQueuesResponse {
  /// A token to retrieve next page of results.
  ///
  /// To return the next page of results, call ListQueues with this value as the
  /// page_token. If the next_page_token is empty, there are no more results.
  /// The page token is valid for only 2 hours.
  core.String? nextPageToken;

  /// The list of queues.
  core.List<Queue>? queues;

  ListQueuesResponse({
    this.nextPageToken,
    this.queues,
  });

  ListQueuesResponse.fromJson(core.Map json_)
      : this(
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
          queues: json_.containsKey('queues')
              ? (json_['queues'] as core.List)
                  .map((value) => Queue.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (queues != null) 'queues': queues!,
      };
}

/// Response message for listing tasks using ListTasks.
class ListTasksResponse {
  /// A token to retrieve next page of results.
  ///
  /// To return the next page of results, call ListTasks with this value as the
  /// page_token. If the next_page_token is empty, there are no more results.
  core.String? nextPageToken;

  /// The list of tasks.
  core.List<Task>? tasks;

  ListTasksResponse({
    this.nextPageToken,
    this.tasks,
  });

  ListTasksResponse.fromJson(core.Map json_)
      : this(
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
          tasks: json_.containsKey('tasks')
              ? (json_['tasks'] as core.List)
                  .map((value) => Task.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (tasks != null) 'tasks': tasks!,
      };
}

/// A resource that represents Google Cloud Platform location.
typedef Location = $Location00;

/// Contains information needed for generating an
/// [OAuth token](https://developers.google.com/identity/protocols/OAuth2).
///
/// This type of authorization should generally only be used when calling Google
/// APIs hosted on *.googleapis.com.
class OAuthToken {
  /// OAuth scope to be used for generating OAuth access token.
  ///
  /// If not specified, "https://www.googleapis.com/auth/cloud-platform" will be
  /// used.
  core.String? scope;

  /// [Service account email](https://cloud.google.com/iam/docs/service-accounts)
  /// to be used for generating OAuth token.
  ///
  /// The service account must be within the same project as the queue. The
  /// caller must have iam.serviceAccounts.actAs permission for the service
  /// account.
  core.String? serviceAccountEmail;

  OAuthToken({
    this.scope,
    this.serviceAccountEmail,
  });

  OAuthToken.fromJson(core.Map json_)
      : this(
          scope:
              json_.containsKey('scope') ? json_['scope'] as core.String : null,
          serviceAccountEmail: json_.containsKey('serviceAccountEmail')
              ? json_['serviceAccountEmail'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (scope != null) 'scope': scope!,
        if (serviceAccountEmail != null)
          'serviceAccountEmail': serviceAccountEmail!,
      };
}

/// Contains information needed for generating an
/// [OpenID Connect token](https://developers.google.com/identity/protocols/OpenIDConnect).
///
/// This type of authorization can be used for many scenarios, including calling
/// Cloud Run, or endpoints where you intend to validate the token yourself.
class OidcToken {
  /// Audience to be used when generating OIDC token.
  ///
  /// If not specified, the URI specified in target will be used.
  core.String? audience;

  /// [Service account email](https://cloud.google.com/iam/docs/service-accounts)
  /// to be used for generating OIDC token.
  ///
  /// The service account must be within the same project as the queue. The
  /// caller must have iam.serviceAccounts.actAs permission for the service
  /// account.
  core.String? serviceAccountEmail;

  OidcToken({
    this.audience,
    this.serviceAccountEmail,
  });

  OidcToken.fromJson(core.Map json_)
      : this(
          audience: json_.containsKey('audience')
              ? json_['audience'] as core.String
              : null,
          serviceAccountEmail: json_.containsKey('serviceAccountEmail')
              ? json_['serviceAccountEmail'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (audience != null) 'audience': audience!,
        if (serviceAccountEmail != null)
          'serviceAccountEmail': serviceAccountEmail!,
      };
}

/// Request message for PauseQueue.
typedef PauseQueueRequest = $Empty;

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

/// Request message for PurgeQueue.
typedef PurgeQueueRequest = $Empty;

/// A queue is a container of related tasks.
///
/// Queues are configured to manage how those tasks are dispatched. Configurable
/// properties include rate limits, retry options, queue types, and others.
class Queue {
  /// Overrides for task-level app_engine_routing.
  ///
  /// These settings apply only to App Engine tasks in this queue. Http tasks
  /// are not affected. If set, `app_engine_routing_override` is used for all
  /// App Engine tasks in the queue, no matter what the setting is for the
  /// task-level app_engine_routing.
  AppEngineRouting? appEngineRoutingOverride;

  /// Caller-specified and required in CreateQueue, after which it becomes
  /// output only.
  ///
  /// The queue name. The queue name must have the following format:
  /// `projects/PROJECT_ID/locations/LOCATION_ID/queues/QUEUE_ID` * `PROJECT_ID`
  /// can contain letters (\[A-Za-z\]), numbers (\[0-9\]), hyphens (-), colons
  /// (:), or periods (.). For more information, see
  /// [Identifying projects](https://cloud.google.com/resource-manager/docs/creating-managing-projects#identifying_projects)
  /// * `LOCATION_ID` is the canonical ID for the queue's location. The list of
  /// available locations can be obtained by calling ListLocations. For more
  /// information, see https://cloud.google.com/about/locations/. * `QUEUE_ID`
  /// can contain letters (\[A-Za-z\]), numbers (\[0-9\]), or hyphens (-). The
  /// maximum length is 100 characters.
  core.String? name;

  /// The last time this queue was purged.
  ///
  /// All tasks that were created before this time were purged. A queue can be
  /// purged using PurgeQueue, the
  /// [App Engine Task Queue SDK, or the Cloud Console](https://cloud.google.com/appengine/docs/standard/python/taskqueue/push/deleting-tasks-and-queues#purging_all_tasks_from_a_queue).
  /// Purge time will be truncated to the nearest microsecond. Purge time will
  /// be unset if the queue has never been purged.
  ///
  /// Output only.
  core.String? purgeTime;

  /// Rate limits for task dispatches.
  ///
  /// rate_limits and retry_config are related because they both control task
  /// attempts. However they control task attempts in different ways: *
  /// rate_limits controls the total rate of dispatches from a queue (i.e. all
  /// traffic dispatched from the queue, regardless of whether the dispatch is
  /// from a first attempt or a retry). * retry_config controls what happens to
  /// particular a task after its first attempt fails. That is, retry_config
  /// controls task retries (the second attempt, third attempt, etc). The
  /// queue's actual dispatch rate is the result of: * Number of tasks in the
  /// queue * User-specified throttling: rate_limits, retry_config, and the
  /// queue's state. * System throttling due to `429` (Too Many Requests) or
  /// `503` (Service Unavailable) responses from the worker, high error rates,
  /// or to smooth sudden large traffic spikes.
  RateLimits? rateLimits;

  /// Settings that determine the retry behavior.
  ///
  /// * For tasks created using Cloud Tasks: the queue-level retry settings
  /// apply to all tasks in the queue that were created using Cloud Tasks. Retry
  /// settings cannot be set on individual tasks. * For tasks created using the
  /// App Engine SDK: the queue-level retry settings apply to all tasks in the
  /// queue which do not have retry settings explicitly set on the task and were
  /// created by the App Engine SDK. See
  /// [App Engine documentation](https://cloud.google.com/appengine/docs/standard/python/taskqueue/push/retrying-tasks).
  RetryConfig? retryConfig;

  /// Configuration options for writing logs to
  /// [Stackdriver Logging](https://cloud.google.com/logging/docs/).
  ///
  /// If this field is unset, then no logs are written.
  StackdriverLoggingConfig? stackdriverLoggingConfig;

  /// The state of the queue.
  ///
  /// `state` can only be changed by calling PauseQueue, ResumeQueue, or
  /// uploading
  /// [queue.yaml/xml](https://cloud.google.com/appengine/docs/python/config/queueref).
  /// UpdateQueue cannot be used to change `state`.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : Unspecified state.
  /// - "RUNNING" : The queue is running. Tasks can be dispatched. If the queue
  /// was created using Cloud Tasks and the queue has had no activity (method
  /// calls or task dispatches) for 30 days, the queue may take a few minutes to
  /// re-activate. Some method calls may return NOT_FOUND and tasks may not be
  /// dispatched for a few minutes until the queue has been re-activated.
  /// - "PAUSED" : Tasks are paused by the user. If the queue is paused then
  /// Cloud Tasks will stop delivering tasks from it, but more tasks can still
  /// be added to it by the user.
  /// - "DISABLED" : The queue is disabled. A queue becomes `DISABLED` when
  /// [queue.yaml](https://cloud.google.com/appengine/docs/python/config/queueref)
  /// or
  /// [queue.xml](https://cloud.google.com/appengine/docs/standard/java/config/queueref)
  /// is uploaded which does not contain the queue. You cannot directly disable
  /// a queue. When a queue is disabled, tasks can still be added to a queue but
  /// the tasks are not dispatched. To permanently delete this queue and all of
  /// its tasks, call DeleteQueue.
  core.String? state;

  Queue({
    this.appEngineRoutingOverride,
    this.name,
    this.purgeTime,
    this.rateLimits,
    this.retryConfig,
    this.stackdriverLoggingConfig,
    this.state,
  });

  Queue.fromJson(core.Map json_)
      : this(
          appEngineRoutingOverride:
              json_.containsKey('appEngineRoutingOverride')
                  ? AppEngineRouting.fromJson(json_['appEngineRoutingOverride']
                      as core.Map<core.String, core.dynamic>)
                  : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          purgeTime: json_.containsKey('purgeTime')
              ? json_['purgeTime'] as core.String
              : null,
          rateLimits: json_.containsKey('rateLimits')
              ? RateLimits.fromJson(
                  json_['rateLimits'] as core.Map<core.String, core.dynamic>)
              : null,
          retryConfig: json_.containsKey('retryConfig')
              ? RetryConfig.fromJson(
                  json_['retryConfig'] as core.Map<core.String, core.dynamic>)
              : null,
          stackdriverLoggingConfig:
              json_.containsKey('stackdriverLoggingConfig')
                  ? StackdriverLoggingConfig.fromJson(
                      json_['stackdriverLoggingConfig']
                          as core.Map<core.String, core.dynamic>)
                  : null,
          state:
              json_.containsKey('state') ? json_['state'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (appEngineRoutingOverride != null)
          'appEngineRoutingOverride': appEngineRoutingOverride!,
        if (name != null) 'name': name!,
        if (purgeTime != null) 'purgeTime': purgeTime!,
        if (rateLimits != null) 'rateLimits': rateLimits!,
        if (retryConfig != null) 'retryConfig': retryConfig!,
        if (stackdriverLoggingConfig != null)
          'stackdriverLoggingConfig': stackdriverLoggingConfig!,
        if (state != null) 'state': state!,
      };
}

/// Rate limits.
///
/// This message determines the maximum rate that tasks can be dispatched by a
/// queue, regardless of whether the dispatch is a first task attempt or a
/// retry. Note: The debugging command, RunTask, will run a task even if the
/// queue has reached its RateLimits.
class RateLimits {
  /// The max burst size.
  ///
  /// Max burst size limits how fast tasks in queue are processed when many
  /// tasks are in the queue and the rate is high. This field allows the queue
  /// to have a high rate so processing starts shortly after a task is enqueued,
  /// but still limits resource usage when many tasks are enqueued in a short
  /// period of time. The
  /// [token bucket](https://wikipedia.org/wiki/Token_Bucket) algorithm is used
  /// to control the rate of task dispatches. Each queue has a token bucket that
  /// holds tokens, up to the maximum specified by `max_burst_size`. Each time a
  /// task is dispatched, a token is removed from the bucket. Tasks will be
  /// dispatched until the queue's bucket runs out of tokens. The bucket will be
  /// continuously refilled with new tokens based on max_dispatches_per_second.
  /// Cloud Tasks will pick the value of `max_burst_size` based on the value of
  /// max_dispatches_per_second. For queues that were created or updated using
  /// `queue.yaml/xml`, `max_burst_size` is equal to
  /// [bucket_size](https://cloud.google.com/appengine/docs/standard/python/config/queueref#bucket_size).
  /// Since `max_burst_size` is output only, if UpdateQueue is called on a queue
  /// created by `queue.yaml/xml`, `max_burst_size` will be reset based on the
  /// value of max_dispatches_per_second, regardless of whether
  /// max_dispatches_per_second is updated.
  ///
  /// Output only.
  core.int? maxBurstSize;

  /// The maximum number of concurrent tasks that Cloud Tasks allows to be
  /// dispatched for this queue.
  ///
  /// After this threshold has been reached, Cloud Tasks stops dispatching tasks
  /// until the number of concurrent requests decreases. If unspecified when the
  /// queue is created, Cloud Tasks will pick the default. The maximum allowed
  /// value is 5,000. This field has the same meaning as
  /// [max_concurrent_requests in queue.yaml/xml](https://cloud.google.com/appengine/docs/standard/python/config/queueref#max_concurrent_requests).
  core.int? maxConcurrentDispatches;

  /// The maximum rate at which tasks are dispatched from this queue.
  ///
  /// If unspecified when the queue is created, Cloud Tasks will pick the
  /// default. * The maximum allowed value is 500. This field has the same
  /// meaning as
  /// [rate in queue.yaml/xml](https://cloud.google.com/appengine/docs/standard/python/config/queueref#rate).
  core.double? maxDispatchesPerSecond;

  RateLimits({
    this.maxBurstSize,
    this.maxConcurrentDispatches,
    this.maxDispatchesPerSecond,
  });

  RateLimits.fromJson(core.Map json_)
      : this(
          maxBurstSize: json_.containsKey('maxBurstSize')
              ? json_['maxBurstSize'] as core.int
              : null,
          maxConcurrentDispatches: json_.containsKey('maxConcurrentDispatches')
              ? json_['maxConcurrentDispatches'] as core.int
              : null,
          maxDispatchesPerSecond: json_.containsKey('maxDispatchesPerSecond')
              ? (json_['maxDispatchesPerSecond'] as core.num).toDouble()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (maxBurstSize != null) 'maxBurstSize': maxBurstSize!,
        if (maxConcurrentDispatches != null)
          'maxConcurrentDispatches': maxConcurrentDispatches!,
        if (maxDispatchesPerSecond != null)
          'maxDispatchesPerSecond': maxDispatchesPerSecond!,
      };
}

/// Request message for ResumeQueue.
typedef ResumeQueueRequest = $Empty;

/// Retry config.
///
/// These settings determine when a failed task attempt is retried.
class RetryConfig {
  /// Number of attempts per task.
  ///
  /// Cloud Tasks will attempt the task `max_attempts` times (that is, if the
  /// first attempt fails, then there will be `max_attempts - 1` retries). Must
  /// be \>= -1. If unspecified when the queue is created, Cloud Tasks will pick
  /// the default. -1 indicates unlimited attempts. This field has the same
  /// meaning as
  /// [task_retry_limit in queue.yaml/xml](https://cloud.google.com/appengine/docs/standard/python/config/queueref#retry_parameters).
  core.int? maxAttempts;

  /// A task will be scheduled for retry between min_backoff and max_backoff
  /// duration after it fails, if the queue's RetryConfig specifies that the
  /// task should be retried.
  ///
  /// If unspecified when the queue is created, Cloud Tasks will pick the
  /// default. `max_backoff` will be truncated to the nearest second. This field
  /// has the same meaning as
  /// [max_backoff_seconds in queue.yaml/xml](https://cloud.google.com/appengine/docs/standard/python/config/queueref#retry_parameters).
  core.String? maxBackoff;

  /// The time between retries will double `max_doublings` times.
  ///
  /// A task's retry interval starts at min_backoff, then doubles
  /// `max_doublings` times, then increases linearly, and finally retries at
  /// intervals of max_backoff up to max_attempts times. For example, if
  /// min_backoff is 10s, max_backoff is 300s, and `max_doublings` is 3, then
  /// the a task will first be retried in 10s. The retry interval will double
  /// three times, and then increase linearly by 2^3 * 10s. Finally, the task
  /// will retry at intervals of max_backoff until the task has been attempted
  /// max_attempts times. Thus, the requests will retry at 10s, 20s, 40s, 80s,
  /// 160s, 240s, 300s, 300s, .... If unspecified when the queue is created,
  /// Cloud Tasks will pick the default. This field has the same meaning as
  /// [max_doublings in queue.yaml/xml](https://cloud.google.com/appengine/docs/standard/python/config/queueref#retry_parameters).
  core.int? maxDoublings;

  /// If positive, `max_retry_duration` specifies the time limit for retrying a
  /// failed task, measured from when the task was first attempted.
  ///
  /// Once `max_retry_duration` time has passed *and* the task has been
  /// attempted max_attempts times, no further attempts will be made and the
  /// task will be deleted. If zero, then the task age is unlimited. If
  /// unspecified when the queue is created, Cloud Tasks will pick the default.
  /// `max_retry_duration` will be truncated to the nearest second. This field
  /// has the same meaning as
  /// [task_age_limit in queue.yaml/xml](https://cloud.google.com/appengine/docs/standard/python/config/queueref#retry_parameters).
  core.String? maxRetryDuration;

  /// A task will be scheduled for retry between min_backoff and max_backoff
  /// duration after it fails, if the queue's RetryConfig specifies that the
  /// task should be retried.
  ///
  /// If unspecified when the queue is created, Cloud Tasks will pick the
  /// default. `min_backoff` will be truncated to the nearest second. This field
  /// has the same meaning as
  /// [min_backoff_seconds in queue.yaml/xml](https://cloud.google.com/appengine/docs/standard/python/config/queueref#retry_parameters).
  core.String? minBackoff;

  RetryConfig({
    this.maxAttempts,
    this.maxBackoff,
    this.maxDoublings,
    this.maxRetryDuration,
    this.minBackoff,
  });

  RetryConfig.fromJson(core.Map json_)
      : this(
          maxAttempts: json_.containsKey('maxAttempts')
              ? json_['maxAttempts'] as core.int
              : null,
          maxBackoff: json_.containsKey('maxBackoff')
              ? json_['maxBackoff'] as core.String
              : null,
          maxDoublings: json_.containsKey('maxDoublings')
              ? json_['maxDoublings'] as core.int
              : null,
          maxRetryDuration: json_.containsKey('maxRetryDuration')
              ? json_['maxRetryDuration'] as core.String
              : null,
          minBackoff: json_.containsKey('minBackoff')
              ? json_['minBackoff'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (maxAttempts != null) 'maxAttempts': maxAttempts!,
        if (maxBackoff != null) 'maxBackoff': maxBackoff!,
        if (maxDoublings != null) 'maxDoublings': maxDoublings!,
        if (maxRetryDuration != null) 'maxRetryDuration': maxRetryDuration!,
        if (minBackoff != null) 'minBackoff': minBackoff!,
      };
}

/// Request message for forcing a task to run now using RunTask.
class RunTaskRequest {
  /// The response_view specifies which subset of the Task will be returned.
  ///
  /// By default response_view is BASIC; not all information is retrieved by
  /// default because some data, such as payloads, might be desirable to return
  /// only when needed because of its large size or because of the sensitivity
  /// of data that it contains. Authorization for FULL requires
  /// `cloudtasks.tasks.fullView` [Google IAM](https://cloud.google.com/iam/)
  /// permission on the Task resource.
  /// Possible string values are:
  /// - "VIEW_UNSPECIFIED" : Unspecified. Defaults to BASIC.
  /// - "BASIC" : The basic view omits fields which can be large or can contain
  /// sensitive data. This view does not include the body in
  /// AppEngineHttpRequest. Bodies are desirable to return only when needed,
  /// because they can be large and because of the sensitivity of the data that
  /// you choose to store in it.
  /// - "FULL" : All information is returned. Authorization for FULL requires
  /// `cloudtasks.tasks.fullView` [Google IAM](https://cloud.google.com/iam/)
  /// permission on the Queue resource.
  core.String? responseView;

  RunTaskRequest({
    this.responseView,
  });

  RunTaskRequest.fromJson(core.Map json_)
      : this(
          responseView: json_.containsKey('responseView')
              ? json_['responseView'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (responseView != null) 'responseView': responseView!,
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

/// Configuration options for writing logs to
/// [Stackdriver Logging](https://cloud.google.com/logging/docs/).
class StackdriverLoggingConfig {
  /// Specifies the fraction of operations to write to
  /// [Stackdriver Logging](https://cloud.google.com/logging/docs/).
  ///
  /// This field may contain any value between 0.0 and 1.0, inclusive. 0.0 is
  /// the default and means that no operations are logged.
  core.double? samplingRatio;

  StackdriverLoggingConfig({
    this.samplingRatio,
  });

  StackdriverLoggingConfig.fromJson(core.Map json_)
      : this(
          samplingRatio: json_.containsKey('samplingRatio')
              ? (json_['samplingRatio'] as core.num).toDouble()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (samplingRatio != null) 'samplingRatio': samplingRatio!,
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

/// A unit of scheduled work.
class Task {
  /// HTTP request that is sent to the App Engine app handler.
  ///
  /// An App Engine task is a task that has AppEngineHttpRequest set.
  AppEngineHttpRequest? appEngineHttpRequest;

  /// The time that the task was created.
  ///
  /// `create_time` will be truncated to the nearest second.
  ///
  /// Output only.
  core.String? createTime;

  /// The number of attempts dispatched.
  ///
  /// This count includes attempts which have been dispatched but haven't
  /// received a response.
  ///
  /// Output only.
  core.int? dispatchCount;

  /// The deadline for requests sent to the worker.
  ///
  /// If the worker does not respond by this deadline then the request is
  /// cancelled and the attempt is marked as a `DEADLINE_EXCEEDED` failure.
  /// Cloud Tasks will retry the task according to the RetryConfig. Note that
  /// when the request is cancelled, Cloud Tasks will stop listening for the
  /// response, but whether the worker stops processing depends on the worker.
  /// For example, if the worker is stuck, it may not react to cancelled
  /// requests. The default and maximum values depend on the type of request: *
  /// For HTTP tasks, the default is 10 minutes. The deadline must be in the
  /// interval \[15 seconds, 30 minutes\]. * For App Engine tasks, 0 indicates
  /// that the request has the default deadline. The default deadline depends on
  /// the
  /// [scaling type](https://cloud.google.com/appengine/docs/standard/go/how-instances-are-managed#instance_scaling)
  /// of the service: 10 minutes for standard apps with automatic scaling, 24
  /// hours for standard apps with manual and basic scaling, and 60 minutes for
  /// flex apps. If the request deadline is set, it must be in the interval \[15
  /// seconds, 24 hours 15 seconds\]. Regardless of the task's
  /// `dispatch_deadline`, the app handler will not run for longer than than the
  /// service's timeout. We recommend setting the `dispatch_deadline` to at most
  /// a few seconds more than the app handler's timeout. For more information
  /// see
  /// [Timeouts](https://cloud.google.com/tasks/docs/creating-appengine-handlers#timeouts).
  /// `dispatch_deadline` will be truncated to the nearest millisecond. The
  /// deadline is an approximate deadline.
  core.String? dispatchDeadline;

  /// The status of the task's first attempt.
  ///
  /// Only dispatch_time will be set. The other Attempt information is not
  /// retained by Cloud Tasks.
  ///
  /// Output only.
  Attempt? firstAttempt;

  /// HTTP request that is sent to the worker.
  ///
  /// An HTTP task is a task that has HttpRequest set.
  HttpRequest? httpRequest;

  /// The status of the task's last attempt.
  ///
  /// Output only.
  Attempt? lastAttempt;

  /// Optionally caller-specified in CreateTask.
  ///
  /// The task name. The task name must have the following format:
  /// `projects/PROJECT_ID/locations/LOCATION_ID/queues/QUEUE_ID/tasks/TASK_ID`
  /// * `PROJECT_ID` can contain letters (\[A-Za-z\]), numbers (\[0-9\]),
  /// hyphens (-), colons (:), or periods (.). For more information, see
  /// [Identifying projects](https://cloud.google.com/resource-manager/docs/creating-managing-projects#identifying_projects)
  /// * `LOCATION_ID` is the canonical ID for the task's location. The list of
  /// available locations can be obtained by calling ListLocations. For more
  /// information, see https://cloud.google.com/about/locations/. * `QUEUE_ID`
  /// can contain letters (\[A-Za-z\]), numbers (\[0-9\]), or hyphens (-). The
  /// maximum length is 100 characters. * `TASK_ID` can contain only letters
  /// (\[A-Za-z\]), numbers (\[0-9\]), hyphens (-), or underscores (_). The
  /// maximum length is 500 characters.
  core.String? name;

  /// The number of attempts which have received a response.
  ///
  /// Output only.
  core.int? responseCount;

  /// The time when the task is scheduled to be attempted or retried.
  ///
  /// `schedule_time` will be truncated to the nearest microsecond.
  core.String? scheduleTime;

  /// The view specifies which subset of the Task has been returned.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "VIEW_UNSPECIFIED" : Unspecified. Defaults to BASIC.
  /// - "BASIC" : The basic view omits fields which can be large or can contain
  /// sensitive data. This view does not include the body in
  /// AppEngineHttpRequest. Bodies are desirable to return only when needed,
  /// because they can be large and because of the sensitivity of the data that
  /// you choose to store in it.
  /// - "FULL" : All information is returned. Authorization for FULL requires
  /// `cloudtasks.tasks.fullView` [Google IAM](https://cloud.google.com/iam/)
  /// permission on the Queue resource.
  core.String? view;

  Task({
    this.appEngineHttpRequest,
    this.createTime,
    this.dispatchCount,
    this.dispatchDeadline,
    this.firstAttempt,
    this.httpRequest,
    this.lastAttempt,
    this.name,
    this.responseCount,
    this.scheduleTime,
    this.view,
  });

  Task.fromJson(core.Map json_)
      : this(
          appEngineHttpRequest: json_.containsKey('appEngineHttpRequest')
              ? AppEngineHttpRequest.fromJson(json_['appEngineHttpRequest']
                  as core.Map<core.String, core.dynamic>)
              : null,
          createTime: json_.containsKey('createTime')
              ? json_['createTime'] as core.String
              : null,
          dispatchCount: json_.containsKey('dispatchCount')
              ? json_['dispatchCount'] as core.int
              : null,
          dispatchDeadline: json_.containsKey('dispatchDeadline')
              ? json_['dispatchDeadline'] as core.String
              : null,
          firstAttempt: json_.containsKey('firstAttempt')
              ? Attempt.fromJson(
                  json_['firstAttempt'] as core.Map<core.String, core.dynamic>)
              : null,
          httpRequest: json_.containsKey('httpRequest')
              ? HttpRequest.fromJson(
                  json_['httpRequest'] as core.Map<core.String, core.dynamic>)
              : null,
          lastAttempt: json_.containsKey('lastAttempt')
              ? Attempt.fromJson(
                  json_['lastAttempt'] as core.Map<core.String, core.dynamic>)
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          responseCount: json_.containsKey('responseCount')
              ? json_['responseCount'] as core.int
              : null,
          scheduleTime: json_.containsKey('scheduleTime')
              ? json_['scheduleTime'] as core.String
              : null,
          view: json_.containsKey('view') ? json_['view'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (appEngineHttpRequest != null)
          'appEngineHttpRequest': appEngineHttpRequest!,
        if (createTime != null) 'createTime': createTime!,
        if (dispatchCount != null) 'dispatchCount': dispatchCount!,
        if (dispatchDeadline != null) 'dispatchDeadline': dispatchDeadline!,
        if (firstAttempt != null) 'firstAttempt': firstAttempt!,
        if (httpRequest != null) 'httpRequest': httpRequest!,
        if (lastAttempt != null) 'lastAttempt': lastAttempt!,
        if (name != null) 'name': name!,
        if (responseCount != null) 'responseCount': responseCount!,
        if (scheduleTime != null) 'scheduleTime': scheduleTime!,
        if (view != null) 'view': view!,
      };
}

/// Request message for `TestIamPermissions` method.
typedef TestIamPermissionsRequest = $TestIamPermissionsRequest00;

/// Response message for `TestIamPermissions` method.
typedef TestIamPermissionsResponse = $PermissionsResponse;
