// This is a generated file (see the discoveryapis_generator project).

// ignore_for_file: unnecessary_cast

library googleapis.cloudtasks.v2;

import 'dart:core' as core;
import 'dart:async' as async;
import 'dart:convert' as convert;

import 'package:_discoveryapis_commons/_discoveryapis_commons.dart' as commons;
import 'package:http/http.dart' as http;

export 'package:_discoveryapis_commons/_discoveryapis_commons.dart'
    show ApiRequestError, DetailedApiRequestError;

const core.String USER_AGENT = 'dart-api-client cloudtasks/v2';

/// Manages the execution of large numbers of distributed requests.
class CloudtasksApi {
  /// View and manage your data across Google Cloud Platform services
  static const CloudPlatformScope =
      "https://www.googleapis.com/auth/cloud-platform";

  final commons.ApiRequester _requester;

  ProjectsResourceApi get projects => new ProjectsResourceApi(_requester);

  CloudtasksApi(http.Client client,
      {core.String rootUrl = "https://cloudtasks.googleapis.com/",
      core.String servicePath = ""})
      : _requester =
            new commons.ApiRequester(client, rootUrl, servicePath, USER_AGENT);
}

class ProjectsResourceApi {
  final commons.ApiRequester _requester;

  ProjectsLocationsResourceApi get locations =>
      new ProjectsLocationsResourceApi(_requester);

  ProjectsResourceApi(commons.ApiRequester client) : _requester = client;
}

class ProjectsLocationsResourceApi {
  final commons.ApiRequester _requester;

  ProjectsLocationsQueuesResourceApi get queues =>
      new ProjectsLocationsQueuesResourceApi(_requester);

  ProjectsLocationsResourceApi(commons.ApiRequester client)
      : _requester = client;

  /// Gets information about a location.
  ///
  /// Request parameters:
  ///
  /// [name] - Resource name for the location.
  /// Value must have pattern "^projects/[^/]+/locations/[^/]+$".
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
  async.Future<Location> get(core.String name, {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (name == null) {
      throw new core.ArgumentError("Parameter name is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v2/' + commons.Escaper.ecapeVariableReserved('$name');

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Location.fromJson(data));
  }

  /// Lists information about the supported locations for this service.
  ///
  /// Request parameters:
  ///
  /// [name] - The resource that owns the locations collection, if applicable.
  /// Value must have pattern "^projects/[^/]+$".
  ///
  /// [pageToken] - The standard list page token.
  ///
  /// [pageSize] - The standard list page size.
  ///
  /// [filter] - The standard list filter.
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
  async.Future<ListLocationsResponse> list(core.String name,
      {core.String pageToken,
      core.int pageSize,
      core.String filter,
      core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (name == null) {
      throw new core.ArgumentError("Parameter name is required.");
    }
    if (pageToken != null) {
      _queryParams["pageToken"] = [pageToken];
    }
    if (pageSize != null) {
      _queryParams["pageSize"] = ["${pageSize}"];
    }
    if (filter != null) {
      _queryParams["filter"] = [filter];
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url =
        'v2/' + commons.Escaper.ecapeVariableReserved('$name') + '/locations';

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new ListLocationsResponse.fromJson(data));
  }
}

class ProjectsLocationsQueuesResourceApi {
  final commons.ApiRequester _requester;

  ProjectsLocationsQueuesTasksResourceApi get tasks =>
      new ProjectsLocationsQueuesTasksResourceApi(_requester);

  ProjectsLocationsQueuesResourceApi(commons.ApiRequester client)
      : _requester = client;

  /// Creates a queue.
  ///
  /// Queues created with this method allow tasks to live for a maximum of 31
  /// days. After a task is 31 days old, the task will be deleted regardless of
  /// whether
  /// it was dispatched or not.
  ///
  /// WARNING: Using this method may have unintended side effects if you are
  /// using an App Engine `queue.yaml` or `queue.xml` file to manage your
  /// queues.
  /// Read
  /// [Overview of Queue Management and
  /// queue.yaml](https://cloud.google.com/tasks/docs/queue-yaml) before using
  /// this method.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required.
  ///
  /// The location name in which the queue will be created.
  /// For example: `projects/PROJECT_ID/locations/LOCATION_ID`
  ///
  /// The list of allowed locations can be obtained by calling Cloud
  /// Tasks' implementation of
  /// ListLocations.
  /// Value must have pattern "^projects/[^/]+/locations/[^/]+$".
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
  async.Future<Queue> create(Queue request, core.String parent,
      {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (request != null) {
      _body = convert.json.encode((request).toJson());
    }
    if (parent == null) {
      throw new core.ArgumentError("Parameter parent is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v2/' + commons.Escaper.ecapeVariableReserved('$parent') + '/queues';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Queue.fromJson(data));
  }

  /// Deletes a queue.
  ///
  /// This command will delete the queue even if it has tasks in it.
  ///
  /// Note: If you delete a queue, a queue with the same name can't be created
  /// for 7 days.
  ///
  /// WARNING: Using this method may have unintended side effects if you are
  /// using an App Engine `queue.yaml` or `queue.xml` file to manage your
  /// queues.
  /// Read
  /// [Overview of Queue Management and
  /// queue.yaml](https://cloud.google.com/tasks/docs/queue-yaml) before using
  /// this method.
  ///
  /// Request parameters:
  ///
  /// [name] - Required.
  ///
  /// The queue name. For example:
  /// `projects/PROJECT_ID/locations/LOCATION_ID/queues/QUEUE_ID`
  /// Value must have pattern "^projects/[^/]+/locations/[^/]+/queues/[^/]+$".
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
  async.Future<Empty> delete(core.String name, {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (name == null) {
      throw new core.ArgumentError("Parameter name is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v2/' + commons.Escaper.ecapeVariableReserved('$name');

    var _response = _requester.request(_url, "DELETE",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Empty.fromJson(data));
  }

  /// Gets a queue.
  ///
  /// Request parameters:
  ///
  /// [name] - Required.
  ///
  /// The resource name of the queue. For example:
  /// `projects/PROJECT_ID/locations/LOCATION_ID/queues/QUEUE_ID`
  /// Value must have pattern "^projects/[^/]+/locations/[^/]+/queues/[^/]+$".
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
  async.Future<Queue> get(core.String name, {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (name == null) {
      throw new core.ArgumentError("Parameter name is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v2/' + commons.Escaper.ecapeVariableReserved('$name');

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Queue.fromJson(data));
  }

  /// Gets the access control policy for a Queue.
  /// Returns an empty policy if the resource exists and does not have a policy
  /// set.
  ///
  /// Authorization requires the following
  /// [Google IAM](https://cloud.google.com/iam) permission on the specified
  /// resource parent:
  ///
  /// * `cloudtasks.queues.getIamPolicy`
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [resource] - REQUIRED: The resource for which the policy is being
  /// requested.
  /// See the operation documentation for the appropriate value for this field.
  /// Value must have pattern "^projects/[^/]+/locations/[^/]+/queues/[^/]+$".
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
      GetIamPolicyRequest request, core.String resource,
      {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (request != null) {
      _body = convert.json.encode((request).toJson());
    }
    if (resource == null) {
      throw new core.ArgumentError("Parameter resource is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v2/' +
        commons.Escaper.ecapeVariableReserved('$resource') +
        ':getIamPolicy';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Policy.fromJson(data));
  }

  /// Lists queues.
  ///
  /// Queues are returned in lexicographical order.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required.
  ///
  /// The location name.
  /// For example: `projects/PROJECT_ID/locations/LOCATION_ID`
  /// Value must have pattern "^projects/[^/]+/locations/[^/]+$".
  ///
  /// [pageSize] - Requested page size.
  ///
  /// The maximum page size is 9800. If unspecified, the page size will
  /// be the maximum. Fewer queues than requested might be returned,
  /// even if more queues exist; use the
  /// next_page_token in the
  /// response to determine if more queues exist.
  ///
  /// [filter] - `filter` can be used to specify a subset of queues. Any Queue
  /// field can be used as a filter and several operators as supported.
  /// For example: `<=, <, >=, >, !=, =, :`. The filter syntax is the same as
  /// described in
  /// [Stackdriver's Advanced Logs
  /// Filters](https://cloud.google.com/logging/docs/view/advanced_filters).
  ///
  /// Sample filter "state: PAUSED".
  ///
  /// Note that using filters might cause fewer queues than the
  /// requested page_size to be returned.
  ///
  /// [pageToken] - A token identifying the page of results to return.
  ///
  /// To request the first page results, page_token must be empty. To
  /// request the next page of results, page_token must be the value of
  /// next_page_token returned
  /// from the previous call to ListQueues
  /// method. It is an error to switch the value of the
  /// filter while iterating through pages.
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
  async.Future<ListQueuesResponse> list(core.String parent,
      {core.int pageSize,
      core.String filter,
      core.String pageToken,
      core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (parent == null) {
      throw new core.ArgumentError("Parameter parent is required.");
    }
    if (pageSize != null) {
      _queryParams["pageSize"] = ["${pageSize}"];
    }
    if (filter != null) {
      _queryParams["filter"] = [filter];
    }
    if (pageToken != null) {
      _queryParams["pageToken"] = [pageToken];
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v2/' + commons.Escaper.ecapeVariableReserved('$parent') + '/queues';

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new ListQueuesResponse.fromJson(data));
  }

  /// Updates a queue.
  ///
  /// This method creates the queue if it does not exist and updates
  /// the queue if it does exist.
  ///
  /// Queues created with this method allow tasks to live for a maximum of 31
  /// days. After a task is 31 days old, the task will be deleted regardless of
  /// whether
  /// it was dispatched or not.
  ///
  /// WARNING: Using this method may have unintended side effects if you are
  /// using an App Engine `queue.yaml` or `queue.xml` file to manage your
  /// queues.
  /// Read
  /// [Overview of Queue Management and
  /// queue.yaml](https://cloud.google.com/tasks/docs/queue-yaml) before using
  /// this method.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Caller-specified and required in CreateQueue,
  /// after which it becomes output only.
  ///
  /// The queue name.
  ///
  /// The queue name must have the following format:
  /// `projects/PROJECT_ID/locations/LOCATION_ID/queues/QUEUE_ID`
  ///
  /// * `PROJECT_ID` can contain letters ([A-Za-z]), numbers ([0-9]),
  ///    hyphens (-), colons (:), or periods (.).
  ///    For more information, see
  ///    [Identifying
  /// projects](https://cloud.google.com/resource-manager/docs/creating-managing-projects#identifying_projects)
  /// * `LOCATION_ID` is the canonical ID for the queue's location.
  ///    The list of available locations can be obtained by calling
  ///    ListLocations.
  ///    For more information, see https://cloud.google.com/about/locations/.
  /// * `QUEUE_ID` can contain letters ([A-Za-z]), numbers ([0-9]), or
  ///   hyphens (-). The maximum length is 100 characters.
  /// Value must have pattern "^projects/[^/]+/locations/[^/]+/queues/[^/]+$".
  ///
  /// [updateMask] - A mask used to specify which fields of the queue are being
  /// updated.
  ///
  /// If empty, then all fields will be updated.
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
  async.Future<Queue> patch(Queue request, core.String name,
      {core.String updateMask, core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (request != null) {
      _body = convert.json.encode((request).toJson());
    }
    if (name == null) {
      throw new core.ArgumentError("Parameter name is required.");
    }
    if (updateMask != null) {
      _queryParams["updateMask"] = [updateMask];
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v2/' + commons.Escaper.ecapeVariableReserved('$name');

    var _response = _requester.request(_url, "PATCH",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Queue.fromJson(data));
  }

  /// Pauses the queue.
  ///
  /// If a queue is paused then the system will stop dispatching tasks
  /// until the queue is resumed via
  /// ResumeQueue. Tasks can still be added
  /// when the queue is paused. A queue is paused if its
  /// state is PAUSED.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required.
  ///
  /// The queue name. For example:
  /// `projects/PROJECT_ID/location/LOCATION_ID/queues/QUEUE_ID`
  /// Value must have pattern "^projects/[^/]+/locations/[^/]+/queues/[^/]+$".
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
  async.Future<Queue> pause(PauseQueueRequest request, core.String name,
      {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (request != null) {
      _body = convert.json.encode((request).toJson());
    }
    if (name == null) {
      throw new core.ArgumentError("Parameter name is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v2/' + commons.Escaper.ecapeVariableReserved('$name') + ':pause';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Queue.fromJson(data));
  }

  /// Purges a queue by deleting all of its tasks.
  ///
  /// All tasks created before this method is called are permanently deleted.
  ///
  /// Purge operations can take up to one minute to take effect. Tasks
  /// might be dispatched before the purge takes effect. A purge is
  /// irreversible.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required.
  ///
  /// The queue name. For example:
  /// `projects/PROJECT_ID/location/LOCATION_ID/queues/QUEUE_ID`
  /// Value must have pattern "^projects/[^/]+/locations/[^/]+/queues/[^/]+$".
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
  async.Future<Queue> purge(PurgeQueueRequest request, core.String name,
      {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (request != null) {
      _body = convert.json.encode((request).toJson());
    }
    if (name == null) {
      throw new core.ArgumentError("Parameter name is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v2/' + commons.Escaper.ecapeVariableReserved('$name') + ':purge';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Queue.fromJson(data));
  }

  /// Resume a queue.
  ///
  /// This method resumes a queue after it has been
  /// PAUSED or
  /// DISABLED. The state of a queue is stored
  /// in the queue's state; after calling this method it
  /// will be set to RUNNING.
  ///
  /// WARNING: Resuming many high-QPS queues at the same time can
  /// lead to target overloading. If you are resuming high-QPS
  /// queues, follow the 500/50/5 pattern described in
  /// [Managing Cloud Tasks Scaling
  /// Risks](https://cloud.google.com/tasks/docs/manage-cloud-task-scaling).
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required.
  ///
  /// The queue name. For example:
  /// `projects/PROJECT_ID/location/LOCATION_ID/queues/QUEUE_ID`
  /// Value must have pattern "^projects/[^/]+/locations/[^/]+/queues/[^/]+$".
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
  async.Future<Queue> resume(ResumeQueueRequest request, core.String name,
      {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (request != null) {
      _body = convert.json.encode((request).toJson());
    }
    if (name == null) {
      throw new core.ArgumentError("Parameter name is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v2/' + commons.Escaper.ecapeVariableReserved('$name') + ':resume';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Queue.fromJson(data));
  }

  /// Sets the access control policy for a Queue. Replaces any existing
  /// policy.
  ///
  /// Note: The Cloud Console does not check queue-level IAM permissions yet.
  /// Project-level permissions are required to use the Cloud Console.
  ///
  /// Authorization requires the following
  /// [Google IAM](https://cloud.google.com/iam) permission on the specified
  /// resource parent:
  ///
  /// * `cloudtasks.queues.setIamPolicy`
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [resource] - REQUIRED: The resource for which the policy is being
  /// specified.
  /// See the operation documentation for the appropriate value for this field.
  /// Value must have pattern "^projects/[^/]+/locations/[^/]+/queues/[^/]+$".
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
      SetIamPolicyRequest request, core.String resource,
      {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (request != null) {
      _body = convert.json.encode((request).toJson());
    }
    if (resource == null) {
      throw new core.ArgumentError("Parameter resource is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v2/' +
        commons.Escaper.ecapeVariableReserved('$resource') +
        ':setIamPolicy';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Policy.fromJson(data));
  }

  /// Returns permissions that a caller has on a Queue.
  /// If the resource does not exist, this will return an empty set of
  /// permissions, not a NOT_FOUND error.
  ///
  /// Note: This operation is designed to be used for building permission-aware
  /// UIs and command-line tools, not for authorization checking. This operation
  /// may "fail open" without warning.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [resource] - REQUIRED: The resource for which the policy detail is being
  /// requested.
  /// See the operation documentation for the appropriate value for this field.
  /// Value must have pattern "^projects/[^/]+/locations/[^/]+/queues/[^/]+$".
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
      TestIamPermissionsRequest request, core.String resource,
      {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (request != null) {
      _body = convert.json.encode((request).toJson());
    }
    if (resource == null) {
      throw new core.ArgumentError("Parameter resource is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v2/' +
        commons.Escaper.ecapeVariableReserved('$resource') +
        ':testIamPermissions';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response
        .then((data) => new TestIamPermissionsResponse.fromJson(data));
  }
}

class ProjectsLocationsQueuesTasksResourceApi {
  final commons.ApiRequester _requester;

  ProjectsLocationsQueuesTasksResourceApi(commons.ApiRequester client)
      : _requester = client;

  /// Creates a task and adds it to a queue.
  ///
  /// Tasks cannot be updated after creation; there is no UpdateTask command.
  ///
  /// * The maximum task size is 100KB.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required.
  ///
  /// The queue name. For example:
  /// `projects/PROJECT_ID/locations/LOCATION_ID/queues/QUEUE_ID`
  ///
  /// The queue must already exist.
  /// Value must have pattern "^projects/[^/]+/locations/[^/]+/queues/[^/]+$".
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
  async.Future<Task> create(CreateTaskRequest request, core.String parent,
      {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (request != null) {
      _body = convert.json.encode((request).toJson());
    }
    if (parent == null) {
      throw new core.ArgumentError("Parameter parent is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v2/' + commons.Escaper.ecapeVariableReserved('$parent') + '/tasks';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Task.fromJson(data));
  }

  /// Deletes a task.
  ///
  /// A task can be deleted if it is scheduled or dispatched. A task
  /// cannot be deleted if it has executed successfully or permanently
  /// failed.
  ///
  /// Request parameters:
  ///
  /// [name] - Required.
  ///
  /// The task name. For example:
  /// `projects/PROJECT_ID/locations/LOCATION_ID/queues/QUEUE_ID/tasks/TASK_ID`
  /// Value must have pattern
  /// "^projects/[^/]+/locations/[^/]+/queues/[^/]+/tasks/[^/]+$".
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
  async.Future<Empty> delete(core.String name, {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (name == null) {
      throw new core.ArgumentError("Parameter name is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v2/' + commons.Escaper.ecapeVariableReserved('$name');

    var _response = _requester.request(_url, "DELETE",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Empty.fromJson(data));
  }

  /// Gets a task.
  ///
  /// Request parameters:
  ///
  /// [name] - Required.
  ///
  /// The task name. For example:
  /// `projects/PROJECT_ID/locations/LOCATION_ID/queues/QUEUE_ID/tasks/TASK_ID`
  /// Value must have pattern
  /// "^projects/[^/]+/locations/[^/]+/queues/[^/]+/tasks/[^/]+$".
  ///
  /// [responseView] - The response_view specifies which subset of the Task will
  /// be
  /// returned.
  ///
  /// By default response_view is BASIC; not all
  /// information is retrieved by default because some data, such as
  /// payloads, might be desirable to return only when needed because
  /// of its large size or because of the sensitivity of data that it
  /// contains.
  ///
  /// Authorization for FULL requires
  /// `cloudtasks.tasks.fullView` [Google IAM](https://cloud.google.com/iam/)
  /// permission on the Task resource.
  /// Possible string values are:
  /// - "VIEW_UNSPECIFIED" : A VIEW_UNSPECIFIED.
  /// - "BASIC" : A BASIC.
  /// - "FULL" : A FULL.
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
  async.Future<Task> get(core.String name,
      {core.String responseView, core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (name == null) {
      throw new core.ArgumentError("Parameter name is required.");
    }
    if (responseView != null) {
      _queryParams["responseView"] = [responseView];
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v2/' + commons.Escaper.ecapeVariableReserved('$name');

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Task.fromJson(data));
  }

  /// Lists the tasks in a queue.
  ///
  /// By default, only the BASIC view is retrieved
  /// due to performance considerations;
  /// response_view controls the
  /// subset of information which is returned.
  ///
  /// The tasks may be returned in any order. The ordering may change at any
  /// time.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required.
  ///
  /// The queue name. For example:
  /// `projects/PROJECT_ID/locations/LOCATION_ID/queues/QUEUE_ID`
  /// Value must have pattern "^projects/[^/]+/locations/[^/]+/queues/[^/]+$".
  ///
  /// [pageSize] - Maximum page size.
  ///
  /// Fewer tasks than requested might be returned, even if more tasks exist;
  /// use
  /// next_page_token in the response to
  /// determine if more tasks exist.
  ///
  /// The maximum page size is 1000. If unspecified, the page size will be the
  /// maximum.
  ///
  /// [responseView] - The response_view specifies which subset of the Task will
  /// be
  /// returned.
  ///
  /// By default response_view is BASIC; not all
  /// information is retrieved by default because some data, such as
  /// payloads, might be desirable to return only when needed because
  /// of its large size or because of the sensitivity of data that it
  /// contains.
  ///
  /// Authorization for FULL requires
  /// `cloudtasks.tasks.fullView` [Google IAM](https://cloud.google.com/iam/)
  /// permission on the Task resource.
  /// Possible string values are:
  /// - "VIEW_UNSPECIFIED" : A VIEW_UNSPECIFIED.
  /// - "BASIC" : A BASIC.
  /// - "FULL" : A FULL.
  ///
  /// [pageToken] - A token identifying the page of results to return.
  ///
  /// To request the first page results, page_token must be empty. To
  /// request the next page of results, page_token must be the value of
  /// next_page_token returned
  /// from the previous call to ListTasks
  /// method.
  ///
  /// The page token is valid for only 2 hours.
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
  async.Future<ListTasksResponse> list(core.String parent,
      {core.int pageSize,
      core.String responseView,
      core.String pageToken,
      core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (parent == null) {
      throw new core.ArgumentError("Parameter parent is required.");
    }
    if (pageSize != null) {
      _queryParams["pageSize"] = ["${pageSize}"];
    }
    if (responseView != null) {
      _queryParams["responseView"] = [responseView];
    }
    if (pageToken != null) {
      _queryParams["pageToken"] = [pageToken];
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v2/' + commons.Escaper.ecapeVariableReserved('$parent') + '/tasks';

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new ListTasksResponse.fromJson(data));
  }

  /// Forces a task to run now.
  ///
  /// When this method is called, Cloud Tasks will dispatch the task, even if
  /// the task is already running, the queue has reached its RateLimits or
  /// is PAUSED.
  ///
  /// This command is meant to be used for manual debugging. For
  /// example, RunTask can be used to retry a failed
  /// task after a fix has been made or to manually force a task to be
  /// dispatched now.
  ///
  /// The dispatched task is returned. That is, the task that is returned
  /// contains the status after the task is dispatched but
  /// before the task is received by its target.
  ///
  /// If Cloud Tasks receives a successful response from the task's
  /// target, then the task will be deleted; otherwise the task's
  /// schedule_time will be reset to the time that
  /// RunTask was called plus the retry delay specified
  /// in the queue's RetryConfig.
  ///
  /// RunTask returns
  /// NOT_FOUND when it is called on a
  /// task that has already succeeded or permanently failed.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required.
  ///
  /// The task name. For example:
  /// `projects/PROJECT_ID/locations/LOCATION_ID/queues/QUEUE_ID/tasks/TASK_ID`
  /// Value must have pattern
  /// "^projects/[^/]+/locations/[^/]+/queues/[^/]+/tasks/[^/]+$".
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
  async.Future<Task> run(RunTaskRequest request, core.String name,
      {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (request != null) {
      _body = convert.json.encode((request).toJson());
    }
    if (name == null) {
      throw new core.ArgumentError("Parameter name is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v2/' + commons.Escaper.ecapeVariableReserved('$name') + ':run';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Task.fromJson(data));
  }
}

/// App Engine HTTP request.
///
/// The message defines the HTTP request that is sent to an App Engine app when
/// the task is dispatched.
///
/// Using AppEngineHttpRequest requires
/// [`appengine.applications.get`](https://cloud.google.com/appengine/docs/admin-api/access-control)
/// Google IAM permission for the project
/// and the following scope:
///
/// `https://www.googleapis.com/auth/cloud-platform`
///
/// The task will be delivered to the App Engine app which belongs to the same
/// project as the queue. For more information, see
/// [How Requests are
/// Routed](https://cloud.google.com/appengine/docs/standard/python/how-requests-are-routed)
/// and how routing is affected by
/// [dispatch
/// files](https://cloud.google.com/appengine/docs/python/config/dispatchref).
/// Traffic is encrypted during transport and never leaves Google datacenters.
/// Because this traffic is carried over a communication mechanism internal to
/// Google, you cannot explicitly set the protocol (for example, HTTP or HTTPS).
/// The request to the handler, however, will appear to have used the HTTP
/// protocol.
///
/// The AppEngineRouting used to construct the URL that the task is
/// delivered to can be set at the queue-level or task-level:
///
/// * If set,
///    app_engine_routing_override
///    is used for all tasks in the queue, no matter what the setting
///    is for the
///    task-level app_engine_routing.
///
///
/// The `url` that the task will be sent to is:
///
/// * `url =` host `+`
///   relative_uri
///
/// Tasks can be dispatched to secure app handlers, unsecure app handlers, and
/// URIs restricted with
/// [`login:
/// admin`](https://cloud.google.com/appengine/docs/standard/python/config/appref).
/// Because tasks are not run as any user, they cannot be dispatched to URIs
/// restricted with
/// [`login:
/// required`](https://cloud.google.com/appengine/docs/standard/python/config/appref)
/// Task dispatches also do not follow redirects.
///
/// The task attempt has succeeded if the app's request handler returns an HTTP
/// response code in the range [`200` - `299`]. The task attempt has failed if
/// the app's handler returns a non-2xx response code or Cloud Tasks does
/// not receive response before the deadline. Failed
/// tasks will be retried according to the
/// retry configuration. `503` (Service Unavailable) is
/// considered an App Engine system error instead of an application error and
/// will cause Cloud Tasks' traffic congestion control to temporarily throttle
/// the queue's dispatches. Unlike other types of task targets, a `429` (Too
/// Many
/// Requests) response from an app handler does not cause traffic congestion
/// control to throttle the queue.
class AppEngineHttpRequest {
  /// Task-level setting for App Engine routing.
  ///
  /// If set,
  /// app_engine_routing_override
  /// is used for all tasks in the queue, no matter what the setting is for the
  /// task-level app_engine_routing.
  AppEngineRouting appEngineRouting;

  /// HTTP request body.
  ///
  /// A request body is allowed only if the HTTP method is POST or PUT. It is
  /// an error to set a body on a task with an incompatible HttpMethod.
  core.String body;
  core.List<core.int> get bodyAsBytes {
    return convert.base64.decode(body);
  }

  set bodyAsBytes(core.List<core.int> _bytes) {
    body =
        convert.base64.encode(_bytes).replaceAll("/", "_").replaceAll("+", "-");
  }

  /// HTTP request headers.
  ///
  /// This map contains the header field names and values.
  /// Headers can be set when the
  /// task is created.
  /// Repeated headers are not supported but a header value can contain commas.
  ///
  /// Cloud Tasks sets some headers to default values:
  ///
  /// * `User-Agent`: By default, this header is
  ///   `"AppEngine-Google; (+http://code.google.com/appengine)"`.
  ///   This header can be modified, but Cloud Tasks will append
  ///   `"AppEngine-Google; (+http://code.google.com/appengine)"` to the
  ///   modified `User-Agent`.
  ///
  /// If the task has a body, Cloud
  /// Tasks sets the following headers:
  ///
  /// * `Content-Type`: By default, the `Content-Type` header is set to
  /// `"application/octet-stream"`. The default can be overridden by explicitly
  ///   setting `Content-Type` to a particular media type when the
  ///   task is created.
  ///   For example, `Content-Type` can be set to `"application/json"`.
  /// * `Content-Length`: This is computed by Cloud Tasks. This value is
  ///   output only.   It cannot be changed.
  ///
  /// The headers below cannot be set or overridden:
  ///
  /// * `Host`
  /// * `X-Google-*`
  /// * `X-AppEngine-*`
  ///
  /// In addition, Cloud Tasks sets some headers when the task is dispatched,
  /// such as headers containing information about the task; see
  /// [request
  /// headers](https://cloud.google.com/appengine/docs/python/taskqueue/push/creating-handlers#reading_request_headers).
  /// These headers are set only when the task is dispatched, so they are not
  /// visible when the task is returned in a Cloud Tasks response.
  ///
  /// Although there is no specific limit for the maximum number of headers or
  /// the size, there is a limit on the maximum size of the Task. For more
  /// information, see the CreateTask documentation.
  core.Map<core.String, core.String> headers;

  /// The HTTP method to use for the request. The default is POST.
  ///
  /// The app's request handler for the task's target URL must be able to handle
  /// HTTP requests with this http_method, otherwise the task attempt will fail
  /// with error code 405 (Method Not Allowed). See
  /// [Writing a push task request
  /// handler](https://cloud.google.com/appengine/docs/java/taskqueue/push/creating-handlers#writing_a_push_task_request_handler)
  /// and the documentation for the request handlers in the language your app is
  /// written in e.g.
  /// [Python Request
  /// Handler](https://cloud.google.com/appengine/docs/python/tools/webapp/requesthandlerclass).
  /// Possible string values are:
  /// - "HTTP_METHOD_UNSPECIFIED" : HTTP method unspecified
  /// - "POST" : HTTP POST
  /// - "GET" : HTTP GET
  /// - "HEAD" : HTTP HEAD
  /// - "PUT" : HTTP PUT
  /// - "DELETE" : HTTP DELETE
  /// - "PATCH" : HTTP PATCH
  /// - "OPTIONS" : HTTP OPTIONS
  core.String httpMethod;

  /// The relative URI.
  ///
  /// The relative URI must begin with "/" and must be a valid HTTP relative
  /// URI.
  /// It can contain a path and query string arguments.
  /// If the relative URI is empty, then the root path "/" will be used.
  /// No spaces are allowed, and the maximum length allowed is 2083 characters.
  core.String relativeUri;

  AppEngineHttpRequest();

  AppEngineHttpRequest.fromJson(core.Map _json) {
    if (_json.containsKey("appEngineRouting")) {
      appEngineRouting =
          new AppEngineRouting.fromJson(_json["appEngineRouting"]);
    }
    if (_json.containsKey("body")) {
      body = _json["body"];
    }
    if (_json.containsKey("headers")) {
      headers = (_json["headers"] as core.Map).cast<core.String, core.String>();
    }
    if (_json.containsKey("httpMethod")) {
      httpMethod = _json["httpMethod"];
    }
    if (_json.containsKey("relativeUri")) {
      relativeUri = _json["relativeUri"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (appEngineRouting != null) {
      _json["appEngineRouting"] = (appEngineRouting).toJson();
    }
    if (body != null) {
      _json["body"] = body;
    }
    if (headers != null) {
      _json["headers"] = headers;
    }
    if (httpMethod != null) {
      _json["httpMethod"] = httpMethod;
    }
    if (relativeUri != null) {
      _json["relativeUri"] = relativeUri;
    }
    return _json;
  }
}

/// App Engine Routing.
///
/// Defines routing characteristics specific to App Engine - service, version,
/// and instance.
///
/// For more information about services, versions, and instances see
/// [An Overview of App
/// Engine](https://cloud.google.com/appengine/docs/python/an-overview-of-app-engine),
/// [Microservices Architecture on Google App
/// Engine](https://cloud.google.com/appengine/docs/python/microservices-on-app-engine),
/// [App Engine Standard request
/// routing](https://cloud.google.com/appengine/docs/standard/python/how-requests-are-routed),
/// and [App Engine Flex request
/// routing](https://cloud.google.com/appengine/docs/flexible/python/how-requests-are-routed).
class AppEngineRouting {
  /// Output only. The host that the task is sent to.
  ///
  /// The host is constructed from the domain name of the app associated with
  /// the queue's project ID (for example <app-id>.appspot.com), and the
  /// service, version,
  /// and instance. Tasks which were created using
  /// the App Engine SDK might have a custom domain name.
  ///
  /// For more information, see
  /// [How Requests are
  /// Routed](https://cloud.google.com/appengine/docs/standard/python/how-requests-are-routed).
  core.String host;

  /// App instance.
  ///
  /// By default, the task is sent to an instance which is available when
  /// the task is attempted.
  ///
  /// Requests can only be sent to a specific instance if
  /// [manual scaling is used in App Engine
  /// Standard](https://cloud.google.com/appengine/docs/python/an-overview-of-app-engine?hl=en_US#scaling_types_and_instance_classes).
  /// App Engine Flex does not support instances. For more information, see
  /// [App Engine Standard request
  /// routing](https://cloud.google.com/appengine/docs/standard/python/how-requests-are-routed)
  /// and [App Engine Flex request
  /// routing](https://cloud.google.com/appengine/docs/flexible/python/how-requests-are-routed).
  core.String instance;

  /// App service.
  ///
  /// By default, the task is sent to the service which is the default
  /// service when the task is attempted.
  ///
  /// For some queues or tasks which were created using the App Engine
  /// Task Queue API, host is not parsable
  /// into service,
  /// version, and
  /// instance. For example, some tasks
  /// which were created using the App Engine SDK use a custom domain
  /// name; custom domains are not parsed by Cloud Tasks. If
  /// host is not parsable, then
  /// service,
  /// version, and
  /// instance are the empty string.
  core.String service;

  /// App version.
  ///
  /// By default, the task is sent to the version which is the default
  /// version when the task is attempted.
  ///
  /// For some queues or tasks which were created using the App Engine
  /// Task Queue API, host is not parsable
  /// into service,
  /// version, and
  /// instance. For example, some tasks
  /// which were created using the App Engine SDK use a custom domain
  /// name; custom domains are not parsed by Cloud Tasks. If
  /// host is not parsable, then
  /// service,
  /// version, and
  /// instance are the empty string.
  core.String version;

  AppEngineRouting();

  AppEngineRouting.fromJson(core.Map _json) {
    if (_json.containsKey("host")) {
      host = _json["host"];
    }
    if (_json.containsKey("instance")) {
      instance = _json["instance"];
    }
    if (_json.containsKey("service")) {
      service = _json["service"];
    }
    if (_json.containsKey("version")) {
      version = _json["version"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (host != null) {
      _json["host"] = host;
    }
    if (instance != null) {
      _json["instance"] = instance;
    }
    if (service != null) {
      _json["service"] = service;
    }
    if (version != null) {
      _json["version"] = version;
    }
    return _json;
  }
}

/// The status of a task attempt.
class Attempt {
  /// Output only. The time that this attempt was dispatched.
  ///
  /// `dispatch_time` will be truncated to the nearest microsecond.
  core.String dispatchTime;

  /// Output only. The response from the worker for this attempt.
  ///
  /// If `response_time` is unset, then the task has not been attempted or is
  /// currently running and the `response_status` field is meaningless.
  Status responseStatus;

  /// Output only. The time that this attempt response was received.
  ///
  /// `response_time` will be truncated to the nearest microsecond.
  core.String responseTime;

  /// Output only. The time that this attempt was scheduled.
  ///
  /// `schedule_time` will be truncated to the nearest microsecond.
  core.String scheduleTime;

  Attempt();

  Attempt.fromJson(core.Map _json) {
    if (_json.containsKey("dispatchTime")) {
      dispatchTime = _json["dispatchTime"];
    }
    if (_json.containsKey("responseStatus")) {
      responseStatus = new Status.fromJson(_json["responseStatus"]);
    }
    if (_json.containsKey("responseTime")) {
      responseTime = _json["responseTime"];
    }
    if (_json.containsKey("scheduleTime")) {
      scheduleTime = _json["scheduleTime"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (dispatchTime != null) {
      _json["dispatchTime"] = dispatchTime;
    }
    if (responseStatus != null) {
      _json["responseStatus"] = (responseStatus).toJson();
    }
    if (responseTime != null) {
      _json["responseTime"] = responseTime;
    }
    if (scheduleTime != null) {
      _json["scheduleTime"] = scheduleTime;
    }
    return _json;
  }
}

/// Associates `members` with a `role`.
class Binding {
  /// The condition that is associated with this binding.
  /// NOTE: An unsatisfied condition will not allow user access via current
  /// binding. Different bindings, including their conditions, are examined
  /// independently.
  Expr condition;

  /// Specifies the identities requesting access for a Cloud Platform resource.
  /// `members` can have the following values:
  ///
  /// * `allUsers`: A special identifier that represents anyone who is
  ///    on the internet; with or without a Google account.
  ///
  /// * `allAuthenticatedUsers`: A special identifier that represents anyone
  ///    who is authenticated with a Google account or a service account.
  ///
  /// * `user:{emailid}`: An email address that represents a specific Google
  ///    account. For example, `alice@gmail.com` .
  ///
  ///
  /// * `serviceAccount:{emailid}`: An email address that represents a service
  ///    account. For example, `my-other-app@appspot.gserviceaccount.com`.
  ///
  /// * `group:{emailid}`: An email address that represents a Google group.
  ///    For example, `admins@example.com`.
  ///
  ///
  /// * `domain:{domain}`: The G Suite domain (primary) that represents all the
  ///    users of that domain. For example, `google.com` or `example.com`.
  core.List<core.String> members;

  /// Role that is assigned to `members`.
  /// For example, `roles/viewer`, `roles/editor`, or `roles/owner`.
  core.String role;

  Binding();

  Binding.fromJson(core.Map _json) {
    if (_json.containsKey("condition")) {
      condition = new Expr.fromJson(_json["condition"]);
    }
    if (_json.containsKey("members")) {
      members = (_json["members"] as core.List).cast<core.String>();
    }
    if (_json.containsKey("role")) {
      role = _json["role"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (condition != null) {
      _json["condition"] = (condition).toJson();
    }
    if (members != null) {
      _json["members"] = members;
    }
    if (role != null) {
      _json["role"] = role;
    }
    return _json;
  }
}

/// Request message for CreateTask.
class CreateTaskRequest {
  /// The response_view specifies which subset of the Task will be
  /// returned.
  ///
  /// By default response_view is BASIC; not all
  /// information is retrieved by default because some data, such as
  /// payloads, might be desirable to return only when needed because
  /// of its large size or because of the sensitivity of data that it
  /// contains.
  ///
  /// Authorization for FULL requires
  /// `cloudtasks.tasks.fullView` [Google IAM](https://cloud.google.com/iam/)
  /// permission on the Task resource.
  /// Possible string values are:
  /// - "VIEW_UNSPECIFIED" : Unspecified. Defaults to BASIC.
  /// - "BASIC" : The basic view omits fields which can be large or can contain
  /// sensitive data.
  ///
  /// This view does not include the
  /// body in AppEngineHttpRequest.
  /// Bodies are desirable to return only when needed, because they
  /// can be large and because of the sensitivity of the data that you
  /// choose to store in it.
  /// - "FULL" : All information is returned.
  ///
  /// Authorization for FULL requires
  /// `cloudtasks.tasks.fullView` [Google IAM](https://cloud.google.com/iam/)
  /// permission on the Queue resource.
  core.String responseView;

  /// Required.
  ///
  /// The task to add.
  ///
  /// Task names have the following format:
  /// `projects/PROJECT_ID/locations/LOCATION_ID/queues/QUEUE_ID/tasks/TASK_ID`.
  /// The user can optionally specify a task name. If a
  /// name is not specified then the system will generate a random
  /// unique task id, which will be set in the task returned in the
  /// response.
  ///
  /// If schedule_time is not set or is in the
  /// past then Cloud Tasks will set it to the current time.
  ///
  /// Task De-duplication:
  ///
  /// Explicitly specifying a task ID enables task de-duplication.  If
  /// a task's ID is identical to that of an existing task or a task
  /// that was deleted or executed recently then the call will fail
  /// with ALREADY_EXISTS.
  /// If the task's queue was created using Cloud Tasks, then another task with
  /// the same name can't be created for ~1hour after the original task was
  /// deleted or executed. If the task's queue was created using queue.yaml or
  /// queue.xml, then another task with the same name can't be created
  /// for ~9days after the original task was deleted or executed.
  ///
  /// Because there is an extra lookup cost to identify duplicate task
  /// names, these CreateTask calls have significantly
  /// increased latency. Using hashed strings for the task id or for
  /// the prefix of the task id is recommended. Choosing task ids that
  /// are sequential or have sequential prefixes, for example using a
  /// timestamp, causes an increase in latency and error rates in all
  /// task commands. The infrastructure relies on an approximately
  /// uniform distribution of task ids to store and serve tasks
  /// efficiently.
  Task task;

  CreateTaskRequest();

  CreateTaskRequest.fromJson(core.Map _json) {
    if (_json.containsKey("responseView")) {
      responseView = _json["responseView"];
    }
    if (_json.containsKey("task")) {
      task = new Task.fromJson(_json["task"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (responseView != null) {
      _json["responseView"] = responseView;
    }
    if (task != null) {
      _json["task"] = (task).toJson();
    }
    return _json;
  }
}

/// A generic empty message that you can re-use to avoid defining duplicated
/// empty messages in your APIs. A typical example is to use it as the request
/// or the response type of an API method. For instance:
///
///     service Foo {
///       rpc Bar(google.protobuf.Empty) returns (google.protobuf.Empty);
///     }
///
/// The JSON representation for `Empty` is empty JSON object `{}`.
class Empty {
  Empty();

  Empty.fromJson(core.Map _json) {}

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    return _json;
  }
}

/// Represents an expression text. Example:
///
///     title: "User account presence"
///     description: "Determines whether the request has a user account"
///     expression: "size(request.user) > 0"
class Expr {
  /// An optional description of the expression. This is a longer text which
  /// describes the expression, e.g. when hovered over it in a UI.
  core.String description;

  /// Textual representation of an expression in
  /// Common Expression Language syntax.
  ///
  /// The application context of the containing message determines which
  /// well-known feature set of CEL is supported.
  core.String expression;

  /// An optional string indicating the location of the expression for error
  /// reporting, e.g. a file name and a position in the file.
  core.String location;

  /// An optional title for the expression, i.e. a short string describing
  /// its purpose. This can be used e.g. in UIs which allow to enter the
  /// expression.
  core.String title;

  Expr();

  Expr.fromJson(core.Map _json) {
    if (_json.containsKey("description")) {
      description = _json["description"];
    }
    if (_json.containsKey("expression")) {
      expression = _json["expression"];
    }
    if (_json.containsKey("location")) {
      location = _json["location"];
    }
    if (_json.containsKey("title")) {
      title = _json["title"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (description != null) {
      _json["description"] = description;
    }
    if (expression != null) {
      _json["expression"] = expression;
    }
    if (location != null) {
      _json["location"] = location;
    }
    if (title != null) {
      _json["title"] = title;
    }
    return _json;
  }
}

/// Request message for `GetIamPolicy` method.
class GetIamPolicyRequest {
  GetIamPolicyRequest();

  GetIamPolicyRequest.fromJson(core.Map _json) {}

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    return _json;
  }
}

/// The response message for Locations.ListLocations.
class ListLocationsResponse {
  /// A list of locations that matches the specified filter in the request.
  core.List<Location> locations;

  /// The standard List next-page token.
  core.String nextPageToken;

  ListLocationsResponse();

  ListLocationsResponse.fromJson(core.Map _json) {
    if (_json.containsKey("locations")) {
      locations = (_json["locations"] as core.List)
          .map<Location>((value) => new Location.fromJson(value))
          .toList();
    }
    if (_json.containsKey("nextPageToken")) {
      nextPageToken = _json["nextPageToken"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (locations != null) {
      _json["locations"] = locations.map((value) => (value).toJson()).toList();
    }
    if (nextPageToken != null) {
      _json["nextPageToken"] = nextPageToken;
    }
    return _json;
  }
}

/// Response message for ListQueues.
class ListQueuesResponse {
  /// A token to retrieve next page of results.
  ///
  /// To return the next page of results, call
  /// ListQueues with this value as the
  /// page_token.
  ///
  /// If the next_page_token is empty, there are no more results.
  ///
  /// The page token is valid for only 2 hours.
  core.String nextPageToken;

  /// The list of queues.
  core.List<Queue> queues;

  ListQueuesResponse();

  ListQueuesResponse.fromJson(core.Map _json) {
    if (_json.containsKey("nextPageToken")) {
      nextPageToken = _json["nextPageToken"];
    }
    if (_json.containsKey("queues")) {
      queues = (_json["queues"] as core.List)
          .map<Queue>((value) => new Queue.fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (nextPageToken != null) {
      _json["nextPageToken"] = nextPageToken;
    }
    if (queues != null) {
      _json["queues"] = queues.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

/// Response message for listing tasks using ListTasks.
class ListTasksResponse {
  /// A token to retrieve next page of results.
  ///
  /// To return the next page of results, call
  /// ListTasks with this value as the
  /// page_token.
  ///
  /// If the next_page_token is empty, there are no more results.
  core.String nextPageToken;

  /// The list of tasks.
  core.List<Task> tasks;

  ListTasksResponse();

  ListTasksResponse.fromJson(core.Map _json) {
    if (_json.containsKey("nextPageToken")) {
      nextPageToken = _json["nextPageToken"];
    }
    if (_json.containsKey("tasks")) {
      tasks = (_json["tasks"] as core.List)
          .map<Task>((value) => new Task.fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (nextPageToken != null) {
      _json["nextPageToken"] = nextPageToken;
    }
    if (tasks != null) {
      _json["tasks"] = tasks.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

/// A resource that represents Google Cloud Platform location.
class Location {
  /// The friendly name for this location, typically a nearby city name.
  /// For example, "Tokyo".
  core.String displayName;

  /// Cross-service attributes for the location. For example
  ///
  ///     {"cloud.googleapis.com/region": "us-east1"}
  core.Map<core.String, core.String> labels;

  /// The canonical id for this location. For example: `"us-east1"`.
  core.String locationId;

  /// Service-specific metadata. For example the available capacity at the given
  /// location.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object> metadata;

  /// Resource name for the location, which may vary between implementations.
  /// For example: `"projects/example-project/locations/us-east1"`
  core.String name;

  Location();

  Location.fromJson(core.Map _json) {
    if (_json.containsKey("displayName")) {
      displayName = _json["displayName"];
    }
    if (_json.containsKey("labels")) {
      labels = (_json["labels"] as core.Map).cast<core.String, core.String>();
    }
    if (_json.containsKey("locationId")) {
      locationId = _json["locationId"];
    }
    if (_json.containsKey("metadata")) {
      metadata =
          (_json["metadata"] as core.Map).cast<core.String, core.Object>();
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (displayName != null) {
      _json["displayName"] = displayName;
    }
    if (labels != null) {
      _json["labels"] = labels;
    }
    if (locationId != null) {
      _json["locationId"] = locationId;
    }
    if (metadata != null) {
      _json["metadata"] = metadata;
    }
    if (name != null) {
      _json["name"] = name;
    }
    return _json;
  }
}

/// Request message for PauseQueue.
class PauseQueueRequest {
  PauseQueueRequest();

  PauseQueueRequest.fromJson(core.Map _json) {}

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    return _json;
  }
}

/// Defines an Identity and Access Management (IAM) policy. It is used to
/// specify access control policies for Cloud Platform resources.
///
///
/// A `Policy` consists of a list of `bindings`. A `binding` binds a list of
/// `members` to a `role`, where the members can be user accounts, Google
/// groups,
/// Google domains, and service accounts. A `role` is a named list of
/// permissions
/// defined by IAM.
///
/// **JSON Example**
///
///     {
///       "bindings": [
///         {
///           "role": "roles/owner",
///           "members": [
///             "user:mike@example.com",
///             "group:admins@example.com",
///             "domain:google.com",
///             "serviceAccount:my-other-app@appspot.gserviceaccount.com"
///           ]
///         },
///         {
///           "role": "roles/viewer",
///           "members": ["user:sean@example.com"]
///         }
///       ]
///     }
///
/// **YAML Example**
///
///     bindings:
///     - members:
///       - user:mike@example.com
///       - group:admins@example.com
///       - domain:google.com
///       - serviceAccount:my-other-app@appspot.gserviceaccount.com
///       role: roles/owner
///     - members:
///       - user:sean@example.com
///       role: roles/viewer
///
///
/// For a description of IAM and its features, see the
/// [IAM developer's guide](https://cloud.google.com/iam/docs).
class Policy {
  /// Associates a list of `members` to a `role`.
  /// `bindings` with no members will result in an error.
  core.List<Binding> bindings;

  /// `etag` is used for optimistic concurrency control as a way to help
  /// prevent simultaneous updates of a policy from overwriting each other.
  /// It is strongly suggested that systems make use of the `etag` in the
  /// read-modify-write cycle to perform policy updates in order to avoid race
  /// conditions: An `etag` is returned in the response to `getIamPolicy`, and
  /// systems are expected to put that etag in the request to `setIamPolicy` to
  /// ensure that their change will be applied to the same version of the
  /// policy.
  ///
  /// If no `etag` is provided in the call to `setIamPolicy`, then the existing
  /// policy is overwritten blindly.
  core.String etag;
  core.List<core.int> get etagAsBytes {
    return convert.base64.decode(etag);
  }

  set etagAsBytes(core.List<core.int> _bytes) {
    etag =
        convert.base64.encode(_bytes).replaceAll("/", "_").replaceAll("+", "-");
  }

  /// Deprecated.
  core.int version;

  Policy();

  Policy.fromJson(core.Map _json) {
    if (_json.containsKey("bindings")) {
      bindings = (_json["bindings"] as core.List)
          .map<Binding>((value) => new Binding.fromJson(value))
          .toList();
    }
    if (_json.containsKey("etag")) {
      etag = _json["etag"];
    }
    if (_json.containsKey("version")) {
      version = _json["version"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (bindings != null) {
      _json["bindings"] = bindings.map((value) => (value).toJson()).toList();
    }
    if (etag != null) {
      _json["etag"] = etag;
    }
    if (version != null) {
      _json["version"] = version;
    }
    return _json;
  }
}

/// Request message for PurgeQueue.
class PurgeQueueRequest {
  PurgeQueueRequest();

  PurgeQueueRequest.fromJson(core.Map _json) {}

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    return _json;
  }
}

/// A queue is a container of related tasks. Queues are configured to manage
/// how those tasks are dispatched. Configurable properties include rate limits,
/// retry options, queue types, and others.
class Queue {
  /// Overrides for
  /// task-level app_engine_routing.
  /// These settings apply only to
  /// App Engine tasks in this queue.
  ///
  /// If set, `app_engine_routing_override` is used for all
  /// App Engine tasks in the queue, no matter what the
  /// setting is for the
  /// task-level app_engine_routing.
  AppEngineRouting appEngineRoutingOverride;

  /// Caller-specified and required in CreateQueue,
  /// after which it becomes output only.
  ///
  /// The queue name.
  ///
  /// The queue name must have the following format:
  /// `projects/PROJECT_ID/locations/LOCATION_ID/queues/QUEUE_ID`
  ///
  /// * `PROJECT_ID` can contain letters ([A-Za-z]), numbers ([0-9]),
  ///    hyphens (-), colons (:), or periods (.).
  ///    For more information, see
  ///    [Identifying
  /// projects](https://cloud.google.com/resource-manager/docs/creating-managing-projects#identifying_projects)
  /// * `LOCATION_ID` is the canonical ID for the queue's location.
  ///    The list of available locations can be obtained by calling
  ///    ListLocations.
  ///    For more information, see https://cloud.google.com/about/locations/.
  /// * `QUEUE_ID` can contain letters ([A-Za-z]), numbers ([0-9]), or
  ///   hyphens (-). The maximum length is 100 characters.
  core.String name;

  /// Output only. The last time this queue was purged.
  ///
  /// All tasks that were created before this time
  /// were purged.
  ///
  /// A queue can be purged using PurgeQueue, the
  /// [App Engine Task Queue SDK, or the Cloud
  /// Console](https://cloud.google.com/appengine/docs/standard/python/taskqueue/push/deleting-tasks-and-queues#purging_all_tasks_from_a_queue).
  ///
  /// Purge time will be truncated to the nearest microsecond. Purge
  /// time will be unset if the queue has never been purged.
  core.String purgeTime;

  /// Rate limits for task dispatches.
  ///
  /// rate_limits and retry_config are
  /// related because they both control task attempts. However they control task
  /// attempts in different ways:
  ///
  /// * rate_limits controls the total rate of
  ///   dispatches from a queue (i.e. all traffic dispatched from the
  ///   queue, regardless of whether the dispatch is from a first
  ///   attempt or a retry).
  /// * retry_config controls what happens to
  ///   particular a task after its first attempt fails. That is,
  ///   retry_config controls task retries (the
  ///   second attempt, third attempt, etc).
  ///
  /// The queue's actual dispatch rate is the result of:
  ///
  /// * Number of tasks in the queue
  /// * User-specified throttling: rate_limits,
  ///   retry_config, and the
  ///   queue's state.
  /// * System throttling due to `429` (Too Many Requests) or `503` (Service
  ///   Unavailable) responses from the worker, high error rates, or to smooth
  ///   sudden large traffic spikes.
  RateLimits rateLimits;

  /// Settings that determine the retry behavior.
  ///
  /// * For tasks created using Cloud Tasks: the queue-level retry settings
  ///   apply to all tasks in the queue that were created using Cloud Tasks.
  ///   Retry settings cannot be set on individual tasks.
  /// * For tasks created using the App Engine SDK: the queue-level retry
  /// settings apply to all tasks in the queue which do not have retry settings
  ///   explicitly set on the task and were created by the App Engine SDK. See
  ///   [App Engine
  /// documentation](https://cloud.google.com/appengine/docs/standard/python/taskqueue/push/retrying-tasks).
  RetryConfig retryConfig;

  /// Output only. The state of the queue.
  ///
  /// `state` can only be changed by called
  /// PauseQueue,
  /// ResumeQueue, or uploading
  /// [queue.yaml/xml](https://cloud.google.com/appengine/docs/python/config/queueref).
  /// UpdateQueue cannot be used to change `state`.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : Unspecified state.
  /// - "RUNNING" : The queue is running. Tasks can be dispatched.
  ///
  /// If the queue was created using Cloud Tasks and the queue has
  /// had no activity (method calls or task dispatches) for 30 days,
  /// the queue may take a few minutes to re-activate. Some method
  /// calls may return NOT_FOUND and
  /// tasks may not be dispatched for a few minutes until the queue
  /// has been re-activated.
  /// - "PAUSED" : Tasks are paused by the user. If the queue is paused then
  /// Cloud
  /// Tasks will stop delivering tasks from it, but more tasks can
  /// still be added to it by the user.
  /// - "DISABLED" : The queue is disabled.
  ///
  /// A queue becomes `DISABLED` when
  /// [queue.yaml](https://cloud.google.com/appengine/docs/python/config/queueref)
  /// or
  /// [queue.xml](https://cloud.google.com/appengine/docs/standard/java/config/queueref)
  /// is uploaded which does not contain the queue. You cannot directly disable
  /// a queue.
  ///
  /// When a queue is disabled, tasks can still be added to a queue
  /// but the tasks are not dispatched.
  ///
  /// To permanently delete this queue and all of its tasks, call
  /// DeleteQueue.
  core.String state;

  Queue();

  Queue.fromJson(core.Map _json) {
    if (_json.containsKey("appEngineRoutingOverride")) {
      appEngineRoutingOverride =
          new AppEngineRouting.fromJson(_json["appEngineRoutingOverride"]);
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
    if (_json.containsKey("purgeTime")) {
      purgeTime = _json["purgeTime"];
    }
    if (_json.containsKey("rateLimits")) {
      rateLimits = new RateLimits.fromJson(_json["rateLimits"]);
    }
    if (_json.containsKey("retryConfig")) {
      retryConfig = new RetryConfig.fromJson(_json["retryConfig"]);
    }
    if (_json.containsKey("state")) {
      state = _json["state"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (appEngineRoutingOverride != null) {
      _json["appEngineRoutingOverride"] = (appEngineRoutingOverride).toJson();
    }
    if (name != null) {
      _json["name"] = name;
    }
    if (purgeTime != null) {
      _json["purgeTime"] = purgeTime;
    }
    if (rateLimits != null) {
      _json["rateLimits"] = (rateLimits).toJson();
    }
    if (retryConfig != null) {
      _json["retryConfig"] = (retryConfig).toJson();
    }
    if (state != null) {
      _json["state"] = state;
    }
    return _json;
  }
}

/// Rate limits.
///
/// This message determines the maximum rate that tasks can be dispatched by a
/// queue, regardless of whether the dispatch is a first task attempt or a
/// retry.
///
/// Note: The debugging command, RunTask, will run a task
/// even if the queue has reached its RateLimits.
class RateLimits {
  /// Output only. The max burst size.
  ///
  /// Max burst size limits how fast tasks in queue are processed when
  /// many tasks are in the queue and the rate is high. This field
  /// allows the queue to have a high rate so processing starts shortly
  /// after a task is enqueued, but still limits resource usage when
  /// many tasks are enqueued in a short period of time.
  ///
  /// The [token bucket](https://wikipedia.org/wiki/Token_Bucket)
  /// algorithm is used to control the rate of task dispatches. Each
  /// queue has a token bucket that holds tokens, up to the maximum
  /// specified by `max_burst_size`. Each time a task is dispatched, a
  /// token is removed from the bucket. Tasks will be dispatched until
  /// the queue's bucket runs out of tokens. The bucket will be
  /// continuously refilled with new tokens based on
  /// max_dispatches_per_second.
  ///
  /// Cloud Tasks will pick the value of `max_burst_size` based on the
  /// value of
  /// max_dispatches_per_second.
  ///
  /// For App Engine queues that were created or updated using
  /// `queue.yaml/xml`, `max_burst_size` is equal to
  /// [bucket_size](https://cloud.google.com/appengine/docs/standard/python/config/queueref#bucket_size).
  /// Since `max_burst_size` is output only, if
  /// UpdateQueue is called on a queue
  /// created by `queue.yaml/xml`, `max_burst_size` will be reset based
  /// on the value of
  /// max_dispatches_per_second,
  /// regardless of whether
  /// max_dispatches_per_second
  /// is updated.
  core.int maxBurstSize;

  /// The maximum number of concurrent tasks that Cloud Tasks allows
  /// to be dispatched for this queue. After this threshold has been
  /// reached, Cloud Tasks stops dispatching tasks until the number of
  /// concurrent requests decreases.
  ///
  /// If unspecified when the queue is created, Cloud Tasks will pick the
  /// default.
  ///
  ///
  /// The maximum allowed value is 5,000.
  ///
  ///
  /// This field has the same meaning as
  /// [max_concurrent_requests in
  /// queue.yaml/xml](https://cloud.google.com/appengine/docs/standard/python/config/queueref#max_concurrent_requests).
  core.int maxConcurrentDispatches;

  /// The maximum rate at which tasks are dispatched from this queue.
  ///
  /// If unspecified when the queue is created, Cloud Tasks will pick the
  /// default.
  ///
  /// * For App Engine queues, the maximum allowed value
  ///   is 500.
  ///
  ///
  /// This field has the same meaning as
  /// [rate in
  /// queue.yaml/xml](https://cloud.google.com/appengine/docs/standard/python/config/queueref#rate).
  core.double maxDispatchesPerSecond;

  RateLimits();

  RateLimits.fromJson(core.Map _json) {
    if (_json.containsKey("maxBurstSize")) {
      maxBurstSize = _json["maxBurstSize"];
    }
    if (_json.containsKey("maxConcurrentDispatches")) {
      maxConcurrentDispatches = _json["maxConcurrentDispatches"];
    }
    if (_json.containsKey("maxDispatchesPerSecond")) {
      maxDispatchesPerSecond = _json["maxDispatchesPerSecond"].toDouble();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (maxBurstSize != null) {
      _json["maxBurstSize"] = maxBurstSize;
    }
    if (maxConcurrentDispatches != null) {
      _json["maxConcurrentDispatches"] = maxConcurrentDispatches;
    }
    if (maxDispatchesPerSecond != null) {
      _json["maxDispatchesPerSecond"] = maxDispatchesPerSecond;
    }
    return _json;
  }
}

/// Request message for ResumeQueue.
class ResumeQueueRequest {
  ResumeQueueRequest();

  ResumeQueueRequest.fromJson(core.Map _json) {}

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    return _json;
  }
}

/// Retry config.
///
/// These settings determine when a failed task attempt is retried.
class RetryConfig {
  /// Number of attempts per task.
  ///
  /// Cloud Tasks will attempt the task `max_attempts` times (that is, if the
  /// first attempt fails, then there will be `max_attempts - 1` retries). Must
  /// be >= -1.
  ///
  /// If unspecified when the queue is created, Cloud Tasks will pick the
  /// default.
  ///
  /// -1 indicates unlimited attempts.
  ///
  /// This field has the same meaning as
  /// [task_retry_limit in
  /// queue.yaml/xml](https://cloud.google.com/appengine/docs/standard/python/config/queueref#retry_parameters).
  core.int maxAttempts;

  /// A task will be scheduled for retry between
  /// min_backoff and
  /// max_backoff duration after it fails,
  /// if the queue's RetryConfig specifies that the task should be
  /// retried.
  ///
  /// If unspecified when the queue is created, Cloud Tasks will pick the
  /// default.
  ///
  ///
  /// `max_backoff` will be truncated to the nearest second.
  ///
  /// This field has the same meaning as
  /// [max_backoff_seconds in
  /// queue.yaml/xml](https://cloud.google.com/appengine/docs/standard/python/config/queueref#retry_parameters).
  core.String maxBackoff;

  /// The time between retries will double `max_doublings` times.
  ///
  /// A task's retry interval starts at
  /// min_backoff, then doubles
  /// `max_doublings` times, then increases linearly, and finally
  /// retries retries at intervals of
  /// max_backoff up to
  /// max_attempts times.
  ///
  /// For example, if min_backoff is 10s,
  /// max_backoff is 300s, and
  /// `max_doublings` is 3, then the a task will first be retried in
  /// 10s. The retry interval will double three times, and then
  /// increase linearly by 2^3 * 10s.  Finally, the task will retry at
  /// intervals of max_backoff until the
  /// task has been attempted max_attempts
  /// times. Thus, the requests will retry at 10s, 20s, 40s, 80s, 160s,
  /// 240s, 300s, 300s, ....
  ///
  /// If unspecified when the queue is created, Cloud Tasks will pick the
  /// default.
  ///
  ///
  /// This field has the same meaning as
  /// [max_doublings in
  /// queue.yaml/xml](https://cloud.google.com/appengine/docs/standard/python/config/queueref#retry_parameters).
  core.int maxDoublings;

  /// If positive, `max_retry_duration` specifies the time limit for
  /// retrying a failed task, measured from when the task was first
  /// attempted. Once `max_retry_duration` time has passed *and* the
  /// task has been attempted max_attempts
  /// times, no further attempts will be made and the task will be
  /// deleted.
  ///
  /// If zero, then the task age is unlimited.
  ///
  /// If unspecified when the queue is created, Cloud Tasks will pick the
  /// default.
  ///
  ///
  /// `max_retry_duration` will be truncated to the nearest second.
  ///
  /// This field has the same meaning as
  /// [task_age_limit in
  /// queue.yaml/xml](https://cloud.google.com/appengine/docs/standard/python/config/queueref#retry_parameters).
  core.String maxRetryDuration;

  /// A task will be scheduled for retry between
  /// min_backoff and
  /// max_backoff duration after it fails,
  /// if the queue's RetryConfig specifies that the task should be
  /// retried.
  ///
  /// If unspecified when the queue is created, Cloud Tasks will pick the
  /// default.
  ///
  ///
  /// `min_backoff` will be truncated to the nearest second.
  ///
  /// This field has the same meaning as
  /// [min_backoff_seconds in
  /// queue.yaml/xml](https://cloud.google.com/appengine/docs/standard/python/config/queueref#retry_parameters).
  core.String minBackoff;

  RetryConfig();

  RetryConfig.fromJson(core.Map _json) {
    if (_json.containsKey("maxAttempts")) {
      maxAttempts = _json["maxAttempts"];
    }
    if (_json.containsKey("maxBackoff")) {
      maxBackoff = _json["maxBackoff"];
    }
    if (_json.containsKey("maxDoublings")) {
      maxDoublings = _json["maxDoublings"];
    }
    if (_json.containsKey("maxRetryDuration")) {
      maxRetryDuration = _json["maxRetryDuration"];
    }
    if (_json.containsKey("minBackoff")) {
      minBackoff = _json["minBackoff"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (maxAttempts != null) {
      _json["maxAttempts"] = maxAttempts;
    }
    if (maxBackoff != null) {
      _json["maxBackoff"] = maxBackoff;
    }
    if (maxDoublings != null) {
      _json["maxDoublings"] = maxDoublings;
    }
    if (maxRetryDuration != null) {
      _json["maxRetryDuration"] = maxRetryDuration;
    }
    if (minBackoff != null) {
      _json["minBackoff"] = minBackoff;
    }
    return _json;
  }
}

/// Request message for forcing a task to run now using
/// RunTask.
class RunTaskRequest {
  /// The response_view specifies which subset of the Task will be
  /// returned.
  ///
  /// By default response_view is BASIC; not all
  /// information is retrieved by default because some data, such as
  /// payloads, might be desirable to return only when needed because
  /// of its large size or because of the sensitivity of data that it
  /// contains.
  ///
  /// Authorization for FULL requires
  /// `cloudtasks.tasks.fullView` [Google IAM](https://cloud.google.com/iam/)
  /// permission on the Task resource.
  /// Possible string values are:
  /// - "VIEW_UNSPECIFIED" : Unspecified. Defaults to BASIC.
  /// - "BASIC" : The basic view omits fields which can be large or can contain
  /// sensitive data.
  ///
  /// This view does not include the
  /// body in AppEngineHttpRequest.
  /// Bodies are desirable to return only when needed, because they
  /// can be large and because of the sensitivity of the data that you
  /// choose to store in it.
  /// - "FULL" : All information is returned.
  ///
  /// Authorization for FULL requires
  /// `cloudtasks.tasks.fullView` [Google IAM](https://cloud.google.com/iam/)
  /// permission on the Queue resource.
  core.String responseView;

  RunTaskRequest();

  RunTaskRequest.fromJson(core.Map _json) {
    if (_json.containsKey("responseView")) {
      responseView = _json["responseView"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (responseView != null) {
      _json["responseView"] = responseView;
    }
    return _json;
  }
}

/// Request message for `SetIamPolicy` method.
class SetIamPolicyRequest {
  /// REQUIRED: The complete policy to be applied to the `resource`. The size of
  /// the policy is limited to a few 10s of KB. An empty policy is a
  /// valid policy but certain Cloud Platform services (such as Projects)
  /// might reject them.
  Policy policy;

  SetIamPolicyRequest();

  SetIamPolicyRequest.fromJson(core.Map _json) {
    if (_json.containsKey("policy")) {
      policy = new Policy.fromJson(_json["policy"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (policy != null) {
      _json["policy"] = (policy).toJson();
    }
    return _json;
  }
}

/// The `Status` type defines a logical error model that is suitable for
/// different programming environments, including REST APIs and RPC APIs. It is
/// used by [gRPC](https://github.com/grpc). Each `Status` message contains
/// three pieces of data: error code, error message, and error details.
///
/// You can find out more about this error model and how to work with it in the
/// [API Design Guide](https://cloud.google.com/apis/design/errors).
class Status {
  /// The status code, which should be an enum value of google.rpc.Code.
  core.int code;

  /// A list of messages that carry the error details.  There is a common set of
  /// message types for APIs to use.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.List<core.Map<core.String, core.Object>> details;

  /// A developer-facing error message, which should be in English. Any
  /// user-facing error message should be localized and sent in the
  /// google.rpc.Status.details field, or localized by the client.
  core.String message;

  Status();

  Status.fromJson(core.Map _json) {
    if (_json.containsKey("code")) {
      code = _json["code"];
    }
    if (_json.containsKey("details")) {
      details = (_json["details"] as core.List)
          .map<core.Map<core.String, core.Object>>(
              (value) => (value as core.Map).cast<core.String, core.Object>())
          .toList();
    }
    if (_json.containsKey("message")) {
      message = _json["message"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (code != null) {
      _json["code"] = code;
    }
    if (details != null) {
      _json["details"] = details;
    }
    if (message != null) {
      _json["message"] = message;
    }
    return _json;
  }
}

/// A unit of scheduled work.
class Task {
  /// HTTP request that is sent to the App Engine app handler.
  ///
  /// An App Engine task is a task that has AppEngineHttpRequest set.
  AppEngineHttpRequest appEngineHttpRequest;

  /// Output only. The time that the task was created.
  ///
  /// `create_time` will be truncated to the nearest second.
  core.String createTime;

  /// Output only. The number of attempts dispatched.
  ///
  /// This count includes attempts which have been dispatched but haven't
  /// received a response.
  core.int dispatchCount;

  /// The deadline for requests sent to the worker. If the worker does not
  /// respond by this deadline then the request is cancelled and the attempt
  /// is marked as a `DEADLINE_EXCEEDED` failure. Cloud Tasks will retry the
  /// task according to the RetryConfig.
  ///
  /// Note that when the request is cancelled, Cloud Tasks will stop listing for
  /// the response, but whether the worker stops processing depends on the
  /// worker. For example, if the worker is stuck, it may not react to cancelled
  /// requests.
  ///
  /// The default and maximum values depend on the type of request:
  ///
  ///
  /// * For App Engine tasks, 0 indicates that the
  ///   request has the default deadline. The default deadline depends on the
  ///   [scaling
  /// type](https://cloud.google.com/appengine/docs/standard/go/how-instances-are-managed#instance_scaling)
  ///   of the service: 10 minutes for standard apps with automatic scaling, 24
  /// hours for standard apps with manual and basic scaling, and 60 minutes for
  /// flex apps. If the request deadline is set, it must be in the interval [15
  ///   seconds, 24 hours 15 seconds]. Regardless of the task's
  ///   `dispatch_deadline`, the app handler will not run for longer than than
  ///   the service's timeout. We recommend setting the `dispatch_deadline` to
  ///   at most a few seconds more than the app handler's timeout. For more
  ///   information see
  /// [Timeouts](https://cloud.google.com/tasks/docs/creating-appengine-handlers#timeouts).
  ///
  /// `dispatch_deadline` will be truncated to the nearest millisecond. The
  /// deadline is an approximate deadline.
  core.String dispatchDeadline;

  /// Output only. The status of the task's first attempt.
  ///
  /// Only dispatch_time will be set.
  /// The other Attempt information is not retained by Cloud Tasks.
  Attempt firstAttempt;

  /// Output only. The status of the task's last attempt.
  Attempt lastAttempt;

  /// Optionally caller-specified in CreateTask.
  ///
  /// The task name.
  ///
  /// The task name must have the following format:
  /// `projects/PROJECT_ID/locations/LOCATION_ID/queues/QUEUE_ID/tasks/TASK_ID`
  ///
  /// * `PROJECT_ID` can contain letters ([A-Za-z]), numbers ([0-9]),
  ///    hyphens (-), colons (:), or periods (.).
  ///    For more information, see
  ///    [Identifying
  /// projects](https://cloud.google.com/resource-manager/docs/creating-managing-projects#identifying_projects)
  /// * `LOCATION_ID` is the canonical ID for the task's location.
  ///    The list of available locations can be obtained by calling
  ///    ListLocations.
  ///    For more information, see https://cloud.google.com/about/locations/.
  /// * `QUEUE_ID` can contain letters ([A-Za-z]), numbers ([0-9]), or
  ///   hyphens (-). The maximum length is 100 characters.
  /// * `TASK_ID` can contain only letters ([A-Za-z]), numbers ([0-9]),
  ///   hyphens (-), or underscores (_). The maximum length is 500 characters.
  core.String name;

  /// Output only. The number of attempts which have received a response.
  core.int responseCount;

  /// The time when the task is scheduled to be attempted.
  ///
  /// For App Engine queues, this is when the task will be attempted or retried.
  ///
  /// `schedule_time` will be truncated to the nearest microsecond.
  core.String scheduleTime;

  /// Output only. The view specifies which subset of the Task has
  /// been returned.
  /// Possible string values are:
  /// - "VIEW_UNSPECIFIED" : Unspecified. Defaults to BASIC.
  /// - "BASIC" : The basic view omits fields which can be large or can contain
  /// sensitive data.
  ///
  /// This view does not include the
  /// body in AppEngineHttpRequest.
  /// Bodies are desirable to return only when needed, because they
  /// can be large and because of the sensitivity of the data that you
  /// choose to store in it.
  /// - "FULL" : All information is returned.
  ///
  /// Authorization for FULL requires
  /// `cloudtasks.tasks.fullView` [Google IAM](https://cloud.google.com/iam/)
  /// permission on the Queue resource.
  core.String view;

  Task();

  Task.fromJson(core.Map _json) {
    if (_json.containsKey("appEngineHttpRequest")) {
      appEngineHttpRequest =
          new AppEngineHttpRequest.fromJson(_json["appEngineHttpRequest"]);
    }
    if (_json.containsKey("createTime")) {
      createTime = _json["createTime"];
    }
    if (_json.containsKey("dispatchCount")) {
      dispatchCount = _json["dispatchCount"];
    }
    if (_json.containsKey("dispatchDeadline")) {
      dispatchDeadline = _json["dispatchDeadline"];
    }
    if (_json.containsKey("firstAttempt")) {
      firstAttempt = new Attempt.fromJson(_json["firstAttempt"]);
    }
    if (_json.containsKey("lastAttempt")) {
      lastAttempt = new Attempt.fromJson(_json["lastAttempt"]);
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
    if (_json.containsKey("responseCount")) {
      responseCount = _json["responseCount"];
    }
    if (_json.containsKey("scheduleTime")) {
      scheduleTime = _json["scheduleTime"];
    }
    if (_json.containsKey("view")) {
      view = _json["view"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (appEngineHttpRequest != null) {
      _json["appEngineHttpRequest"] = (appEngineHttpRequest).toJson();
    }
    if (createTime != null) {
      _json["createTime"] = createTime;
    }
    if (dispatchCount != null) {
      _json["dispatchCount"] = dispatchCount;
    }
    if (dispatchDeadline != null) {
      _json["dispatchDeadline"] = dispatchDeadline;
    }
    if (firstAttempt != null) {
      _json["firstAttempt"] = (firstAttempt).toJson();
    }
    if (lastAttempt != null) {
      _json["lastAttempt"] = (lastAttempt).toJson();
    }
    if (name != null) {
      _json["name"] = name;
    }
    if (responseCount != null) {
      _json["responseCount"] = responseCount;
    }
    if (scheduleTime != null) {
      _json["scheduleTime"] = scheduleTime;
    }
    if (view != null) {
      _json["view"] = view;
    }
    return _json;
  }
}

/// Request message for `TestIamPermissions` method.
class TestIamPermissionsRequest {
  /// The set of permissions to check for the `resource`. Permissions with
  /// wildcards (such as '*' or 'storage.*') are not allowed. For more
  /// information see
  /// [IAM Overview](https://cloud.google.com/iam/docs/overview#permissions).
  core.List<core.String> permissions;

  TestIamPermissionsRequest();

  TestIamPermissionsRequest.fromJson(core.Map _json) {
    if (_json.containsKey("permissions")) {
      permissions = (_json["permissions"] as core.List).cast<core.String>();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (permissions != null) {
      _json["permissions"] = permissions;
    }
    return _json;
  }
}

/// Response message for `TestIamPermissions` method.
class TestIamPermissionsResponse {
  /// A subset of `TestPermissionsRequest.permissions` that the caller is
  /// allowed.
  core.List<core.String> permissions;

  TestIamPermissionsResponse();

  TestIamPermissionsResponse.fromJson(core.Map _json) {
    if (_json.containsKey("permissions")) {
      permissions = (_json["permissions"] as core.List).cast<core.String>();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (permissions != null) {
      _json["permissions"] = permissions;
    }
    return _json;
  }
}
