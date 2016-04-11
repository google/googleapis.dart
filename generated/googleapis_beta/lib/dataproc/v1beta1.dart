// This is a generated file (see the discoveryapis_generator project).

library googleapis_beta.dataproc.v1beta1;

import 'dart:core' as core;
import 'dart:async' as async;
import 'dart:convert' as convert;

import 'package:_discoveryapis_commons/_discoveryapis_commons.dart' as commons;
import 'package:http/http.dart' as http;

export 'package:_discoveryapis_commons/_discoveryapis_commons.dart' show
    ApiRequestError, DetailedApiRequestError;

const core.String USER_AGENT = 'dart-api-client dataproc/v1beta1';

/**
 * An API for managing Hadoop-based clusters and jobs on Google Cloud Platform.
 */
class DataprocApi {
  /** View and manage your data across Google Cloud Platform services */
  static const CloudPlatformScope = "https://www.googleapis.com/auth/cloud-platform";


  final commons.ApiRequester _requester;

  OperationsResourceApi get operations => new OperationsResourceApi(_requester);
  ProjectsResourceApi get projects => new ProjectsResourceApi(_requester);

  DataprocApi(http.Client client, {core.String rootUrl: "https://dataproc.googleapis.com/", core.String servicePath: ""}) :
      _requester = new commons.ApiRequester(client, rootUrl, servicePath, USER_AGENT);
}


class OperationsResourceApi {
  final commons.ApiRequester _requester;

  OperationsResourceApi(commons.ApiRequester client) : 
      _requester = client;

  /**
   * Starts asynchronous cancellation on a long-running operation. The server
   * makes a best effort to cancel the operation, but success is not guaranteed.
   * If the server doesn't support this method, it returns
   * `google.rpc.Code.UNIMPLEMENTED`. Clients can use
   * [operations.get](/dataproc/reference/rest/v1beta1/operations/get) or other
   * methods to check whether the cancellation succeeded or whether the
   * operation completed despite cancellation.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * [name] - The name of the operation resource to be cancelled.
   * Value must have pattern "^operations/.*$".
   *
   * Completes with a [Empty].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<Empty> cancel(CancelOperationRequest request, core.String name) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }
    if (name == null) {
      throw new core.ArgumentError("Parameter name is required.");
    }

    _url = 'v1beta1/' + commons.Escaper.ecapeVariableReserved('$name') + ':cancel';

    var _response = _requester.request(_url,
                                       "POST",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new Empty.fromJson(data));
  }

  /**
   * Deletes a long-running operation. This method indicates that the client is
   * no longer interested in the operation result. It does not cancel the
   * operation. If the server doesn't support this method, it returns
   * `google.rpc.Code.UNIMPLEMENTED`.
   *
   * Request parameters:
   *
   * [name] - The name of the operation resource to be deleted.
   * Value must have pattern "^operations/.*$".
   *
   * Completes with a [Empty].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<Empty> delete(core.String name) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (name == null) {
      throw new core.ArgumentError("Parameter name is required.");
    }

    _url = 'v1beta1/' + commons.Escaper.ecapeVariableReserved('$name');

    var _response = _requester.request(_url,
                                       "DELETE",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new Empty.fromJson(data));
  }

  /**
   * Gets the latest state of a long-running operation. Clients can use this
   * method to poll the operation result at intervals as recommended by the API
   * service.
   *
   * Request parameters:
   *
   * [name] - The name of the operation resource.
   * Value must have pattern "^operations/.*$".
   *
   * Completes with a [Operation].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<Operation> get(core.String name) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (name == null) {
      throw new core.ArgumentError("Parameter name is required.");
    }

    _url = 'v1beta1/' + commons.Escaper.ecapeVariableReserved('$name');

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new Operation.fromJson(data));
  }

  /**
   * Lists operations that match the specified filter in the request. If the
   * server doesn't support this method, it returns `UNIMPLEMENTED`. NOTE: the
   * `name` binding below allows API services to override the binding to use
   * different resource name schemes, such as `users / * /operations`.
   *
   * Request parameters:
   *
   * [name] - The name of the operation collection.
   * Value must have pattern "^operations$".
   *
   * [filter] - The standard list filter.
   *
   * [pageSize] - The standard list page size.
   *
   * [pageToken] - The standard list page token.
   *
   * Completes with a [ListOperationsResponse].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<ListOperationsResponse> list(core.String name, {core.String filter, core.int pageSize, core.String pageToken}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (name == null) {
      throw new core.ArgumentError("Parameter name is required.");
    }
    if (filter != null) {
      _queryParams["filter"] = [filter];
    }
    if (pageSize != null) {
      _queryParams["pageSize"] = ["${pageSize}"];
    }
    if (pageToken != null) {
      _queryParams["pageToken"] = [pageToken];
    }

    _url = 'v1beta1/' + commons.Escaper.ecapeVariableReserved('$name');

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new ListOperationsResponse.fromJson(data));
  }

}


class ProjectsResourceApi {
  final commons.ApiRequester _requester;

  ProjectsClustersResourceApi get clusters => new ProjectsClustersResourceApi(_requester);
  ProjectsJobsResourceApi get jobs => new ProjectsJobsResourceApi(_requester);

  ProjectsResourceApi(commons.ApiRequester client) : 
      _requester = client;
}


class ProjectsClustersResourceApi {
  final commons.ApiRequester _requester;

  ProjectsClustersResourceApi(commons.ApiRequester client) : 
      _requester = client;

  /**
   * Creates a cluster in a project.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * [projectId] - [Required] The ID of the Google Cloud Platform project that
   * the cluster belongs to.
   *
   * Completes with a [Operation].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<Operation> create(Cluster request, core.String projectId) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }
    if (projectId == null) {
      throw new core.ArgumentError("Parameter projectId is required.");
    }

    _url = 'v1beta1/projects/' + commons.Escaper.ecapeVariable('$projectId') + '/clusters';

    var _response = _requester.request(_url,
                                       "POST",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new Operation.fromJson(data));
  }

  /**
   * Deletes a cluster in a project.
   *
   * Request parameters:
   *
   * [projectId] - [Required] The ID of the Google Cloud Platform project that
   * the cluster belongs to.
   *
   * [clusterName] - [Required] The cluster name.
   *
   * Completes with a [Operation].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<Operation> delete(core.String projectId, core.String clusterName) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (projectId == null) {
      throw new core.ArgumentError("Parameter projectId is required.");
    }
    if (clusterName == null) {
      throw new core.ArgumentError("Parameter clusterName is required.");
    }

    _url = 'v1beta1/projects/' + commons.Escaper.ecapeVariable('$projectId') + '/clusters/' + commons.Escaper.ecapeVariable('$clusterName');

    var _response = _requester.request(_url,
                                       "DELETE",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new Operation.fromJson(data));
  }

  /**
   * Gets cluster diagnostic information. After the operation completes, the
   * Operation.response field contains `DiagnoseClusterOutputLocation`.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * [projectId] - [Required] The ID of the Google Cloud Platform project that
   * the cluster belongs to.
   *
   * [clusterName] - [Required] The cluster name.
   *
   * Completes with a [Operation].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<Operation> diagnose(DiagnoseClusterRequest request, core.String projectId, core.String clusterName) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }
    if (projectId == null) {
      throw new core.ArgumentError("Parameter projectId is required.");
    }
    if (clusterName == null) {
      throw new core.ArgumentError("Parameter clusterName is required.");
    }

    _url = 'v1beta1/projects/' + commons.Escaper.ecapeVariable('$projectId') + '/clusters/' + commons.Escaper.ecapeVariable('$clusterName') + ':diagnose';

    var _response = _requester.request(_url,
                                       "POST",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new Operation.fromJson(data));
  }

  /**
   * Gets the resource representation for a cluster in a project.
   *
   * Request parameters:
   *
   * [projectId] - [Required] The ID of the Google Cloud Platform project that
   * the cluster belongs to.
   *
   * [clusterName] - [Required] The cluster name.
   *
   * Completes with a [Cluster].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<Cluster> get(core.String projectId, core.String clusterName) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (projectId == null) {
      throw new core.ArgumentError("Parameter projectId is required.");
    }
    if (clusterName == null) {
      throw new core.ArgumentError("Parameter clusterName is required.");
    }

    _url = 'v1beta1/projects/' + commons.Escaper.ecapeVariable('$projectId') + '/clusters/' + commons.Escaper.ecapeVariable('$clusterName');

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new Cluster.fromJson(data));
  }

  /**
   * Gets the access control policy for a `resource`. Returns an empty policy if
   * the resource exists and does not have a policy set.
   *
   * Request parameters:
   *
   * [resource] - REQUIRED: The resource for which the policy is being
   * requested. `resource` is usually specified as a path, such as `projects / *
   * project * / zones / * zone * / disks / * disk*`. The format for the path
   * specified in this value is resource specific and is specified in the
   * `getIamPolicy` documentation.
   * Value must have pattern "^projects/[^/] * / clusters/[^/]*$".
   *
   * Completes with a [Policy].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<Policy> getIamPolicy(core.String resource) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (resource == null) {
      throw new core.ArgumentError("Parameter resource is required.");
    }

    _url = 'v1beta1/' + commons.Escaper.ecapeVariableReserved('$resource') + ':getIamPolicy';

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new Policy.fromJson(data));
  }

  /**
   * Lists all clusters in a project.
   *
   * Request parameters:
   *
   * [projectId] - [Required] The ID of the Google Cloud Platform project that
   * the cluster belongs to.
   *
   * [pageSize] - The standard List page size.
   *
   * [pageToken] - The standard List page token.
   *
   * Completes with a [ListClustersResponse].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<ListClustersResponse> list(core.String projectId, {core.int pageSize, core.String pageToken}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (projectId == null) {
      throw new core.ArgumentError("Parameter projectId is required.");
    }
    if (pageSize != null) {
      _queryParams["pageSize"] = ["${pageSize}"];
    }
    if (pageToken != null) {
      _queryParams["pageToken"] = [pageToken];
    }

    _url = 'v1beta1/projects/' + commons.Escaper.ecapeVariable('$projectId') + '/clusters';

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new ListClustersResponse.fromJson(data));
  }

  /**
   * Updates a cluster in a project.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * [projectId] - [Required] The ID of the Google Cloud Platform project the
   * cluster belongs to.
   *
   * [clusterName] - [Required] The cluster name.
   *
   * [updateMask] - [Required] Specifies the path, relative to Cluster, of the
   * field to update. For example, to change the number of workers in a cluster
   * to 5, the update_mask parameter would be specified as
   * configuration.worker_configuration.num_instances, and the `PATCH` request
   * body would specify the new value, as follows: { "configuration":{
   * "workerConfiguration":{ "numInstances":"5" } } } Note: Currently,
   * configuration.worker_configuration.num_instances is the only field that can
   * be updated.
   *
   * Completes with a [Operation].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<Operation> patch(Cluster request, core.String projectId, core.String clusterName, {core.String updateMask}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }
    if (projectId == null) {
      throw new core.ArgumentError("Parameter projectId is required.");
    }
    if (clusterName == null) {
      throw new core.ArgumentError("Parameter clusterName is required.");
    }
    if (updateMask != null) {
      _queryParams["updateMask"] = [updateMask];
    }

    _url = 'v1beta1/projects/' + commons.Escaper.ecapeVariable('$projectId') + '/clusters/' + commons.Escaper.ecapeVariable('$clusterName');

    var _response = _requester.request(_url,
                                       "PATCH",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new Operation.fromJson(data));
  }

  /**
   * Sets the access control policy on the specified resource. Replaces any
   * existing policy.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * [resource] - REQUIRED: The resource for which the policy is being
   * specified. `resource` is usually specified as a path, such as `projects / *
   * project * / zones / * zone * / disks / * disk*`. The format for the path
   * specified in this value is resource specific and is specified in the
   * `setIamPolicy` documentation.
   * Value must have pattern "^projects/[^/] * / clusters/[^/]*$".
   *
   * Completes with a [Policy].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<Policy> setIamPolicy(SetIamPolicyRequest request, core.String resource) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }
    if (resource == null) {
      throw new core.ArgumentError("Parameter resource is required.");
    }

    _url = 'v1beta1/' + commons.Escaper.ecapeVariableReserved('$resource') + ':setIamPolicy';

    var _response = _requester.request(_url,
                                       "POST",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new Policy.fromJson(data));
  }

  /**
   * Returns permissions that a caller has on the specified resource.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * [resource] - REQUIRED: The resource for which the policy detail is being
   * requested. `resource` is usually specified as a path, such as `projects / *
   * project * / zones / * zone * / disks / * disk*`. The format for the path
   * specified in this value is resource specific and is specified in the
   * `testIamPermissions` documentation.
   * Value must have pattern "^projects/[^/] * / clusters/[^/]*$".
   *
   * Completes with a [TestIamPermissionsResponse].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<TestIamPermissionsResponse> testIamPermissions(TestIamPermissionsRequest request, core.String resource) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }
    if (resource == null) {
      throw new core.ArgumentError("Parameter resource is required.");
    }

    _url = 'v1beta1/' + commons.Escaper.ecapeVariableReserved('$resource') + ':testIamPermissions';

    var _response = _requester.request(_url,
                                       "POST",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new TestIamPermissionsResponse.fromJson(data));
  }

}


class ProjectsJobsResourceApi {
  final commons.ApiRequester _requester;

  ProjectsJobsResourceApi(commons.ApiRequester client) : 
      _requester = client;

  /**
   * Starts a job cancellation request. To access the job resource after
   * cancellation, call
   * [jobs.list](/dataproc/reference/rest/v1beta1/projects.jobs/list) or
   * [jobs.get](/dataproc/reference/rest/v1beta1/projects.jobs/get).
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * [projectId] - [Required] The ID of the Google Cloud Platform project that
   * the job belongs to.
   *
   * [jobId] - [Required] The job ID.
   *
   * Completes with a [Job].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<Job> cancel(CancelJobRequest request, core.String projectId, core.String jobId) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }
    if (projectId == null) {
      throw new core.ArgumentError("Parameter projectId is required.");
    }
    if (jobId == null) {
      throw new core.ArgumentError("Parameter jobId is required.");
    }

    _url = 'v1beta1/projects/' + commons.Escaper.ecapeVariable('$projectId') + '/jobs/' + commons.Escaper.ecapeVariable('$jobId') + ':cancel';

    var _response = _requester.request(_url,
                                       "POST",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new Job.fromJson(data));
  }

  /**
   * Deletes the job from the project. If the job is active, the delete fails,
   * and the response returns `FAILED_PRECONDITION`.
   *
   * Request parameters:
   *
   * [projectId] - [Required] The ID of the Google Cloud Platform project that
   * the job belongs to.
   *
   * [jobId] - [Required] The job ID.
   *
   * Completes with a [Empty].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<Empty> delete(core.String projectId, core.String jobId) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (projectId == null) {
      throw new core.ArgumentError("Parameter projectId is required.");
    }
    if (jobId == null) {
      throw new core.ArgumentError("Parameter jobId is required.");
    }

    _url = 'v1beta1/projects/' + commons.Escaper.ecapeVariable('$projectId') + '/jobs/' + commons.Escaper.ecapeVariable('$jobId');

    var _response = _requester.request(_url,
                                       "DELETE",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new Empty.fromJson(data));
  }

  /**
   * Gets the resource representation for a job in a project.
   *
   * Request parameters:
   *
   * [projectId] - [Required] The ID of the Google Cloud Platform project that
   * the job belongs to.
   *
   * [jobId] - [Required] The job ID.
   *
   * Completes with a [Job].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<Job> get(core.String projectId, core.String jobId) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (projectId == null) {
      throw new core.ArgumentError("Parameter projectId is required.");
    }
    if (jobId == null) {
      throw new core.ArgumentError("Parameter jobId is required.");
    }

    _url = 'v1beta1/projects/' + commons.Escaper.ecapeVariable('$projectId') + '/jobs/' + commons.Escaper.ecapeVariable('$jobId');

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new Job.fromJson(data));
  }

  /**
   * Gets the access control policy for a `resource`. Returns an empty policy if
   * the resource exists and does not have a policy set.
   *
   * Request parameters:
   *
   * [resource] - REQUIRED: The resource for which the policy is being
   * requested. `resource` is usually specified as a path, such as `projects / *
   * project * / zones / * zone * / disks / * disk*`. The format for the path
   * specified in this value is resource specific and is specified in the
   * `getIamPolicy` documentation.
   * Value must have pattern "^projects/[^/] * / jobs/[^/]*$".
   *
   * Completes with a [Policy].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<Policy> getIamPolicy(core.String resource) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (resource == null) {
      throw new core.ArgumentError("Parameter resource is required.");
    }

    _url = 'v1beta1/' + commons.Escaper.ecapeVariableReserved('$resource') + ':getIamPolicy';

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new Policy.fromJson(data));
  }

  /**
   * Lists jobs in a project.
   *
   * Request parameters:
   *
   * [projectId] - [Required] The ID of the Google Cloud Platform project that
   * the job belongs to.
   *
   * [pageSize] - [Optional] The number of results to return in each response.
   *
   * [pageToken] - [Optional] The page token, returned by a previous call, to
   * request the next page of results.
   *
   * [clusterName] - [Optional] If set, the returned jobs list includes only
   * jobs that were submitted to the named cluster.
   *
   * [jobStateMatcher] - [Optional] Specifies enumerated categories of jobs to
   * list.
   * Possible string values are:
   * - "ALL" : A ALL.
   * - "ACTIVE" : A ACTIVE.
   * - "NON_ACTIVE" : A NON_ACTIVE.
   *
   * Completes with a [ListJobsResponse].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<ListJobsResponse> list(core.String projectId, {core.int pageSize, core.String pageToken, core.String clusterName, core.String jobStateMatcher}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (projectId == null) {
      throw new core.ArgumentError("Parameter projectId is required.");
    }
    if (pageSize != null) {
      _queryParams["pageSize"] = ["${pageSize}"];
    }
    if (pageToken != null) {
      _queryParams["pageToken"] = [pageToken];
    }
    if (clusterName != null) {
      _queryParams["clusterName"] = [clusterName];
    }
    if (jobStateMatcher != null) {
      _queryParams["jobStateMatcher"] = [jobStateMatcher];
    }

    _url = 'v1beta1/projects/' + commons.Escaper.ecapeVariable('$projectId') + '/jobs';

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new ListJobsResponse.fromJson(data));
  }

  /**
   * Sets the access control policy on the specified resource. Replaces any
   * existing policy.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * [resource] - REQUIRED: The resource for which the policy is being
   * specified. `resource` is usually specified as a path, such as `projects / *
   * project * / zones / * zone * / disks / * disk*`. The format for the path
   * specified in this value is resource specific and is specified in the
   * `setIamPolicy` documentation.
   * Value must have pattern "^projects/[^/] * / jobs/[^/]*$".
   *
   * Completes with a [Policy].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<Policy> setIamPolicy(SetIamPolicyRequest request, core.String resource) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }
    if (resource == null) {
      throw new core.ArgumentError("Parameter resource is required.");
    }

    _url = 'v1beta1/' + commons.Escaper.ecapeVariableReserved('$resource') + ':setIamPolicy';

    var _response = _requester.request(_url,
                                       "POST",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new Policy.fromJson(data));
  }

  /**
   * Submits a job to a cluster.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * [projectId] - [Required] The ID of the Google Cloud Platform project that
   * the job belongs to.
   *
   * Completes with a [Job].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<Job> submit(SubmitJobRequest request, core.String projectId) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }
    if (projectId == null) {
      throw new core.ArgumentError("Parameter projectId is required.");
    }

    _url = 'v1beta1/projects/' + commons.Escaper.ecapeVariable('$projectId') + '/jobs:submit';

    var _response = _requester.request(_url,
                                       "POST",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new Job.fromJson(data));
  }

  /**
   * Returns permissions that a caller has on the specified resource.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * [resource] - REQUIRED: The resource for which the policy detail is being
   * requested. `resource` is usually specified as a path, such as `projects / *
   * project * / zones / * zone * / disks / * disk*`. The format for the path
   * specified in this value is resource specific and is specified in the
   * `testIamPermissions` documentation.
   * Value must have pattern "^projects/[^/] * / jobs/[^/]*$".
   *
   * Completes with a [TestIamPermissionsResponse].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<TestIamPermissionsResponse> testIamPermissions(TestIamPermissionsRequest request, core.String resource) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }
    if (resource == null) {
      throw new core.ArgumentError("Parameter resource is required.");
    }

    _url = 'v1beta1/' + commons.Escaper.ecapeVariableReserved('$resource') + ':testIamPermissions';

    var _response = _requester.request(_url,
                                       "POST",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new TestIamPermissionsResponse.fromJson(data));
  }

}



/** Associates `members` with a `role`. */
class Binding {
  /**
   * Specifies the identities requesting access for a Cloud Platform resource.
   * `members` can have the following values: * `allUsers`: A special identifier
   * that represents anyone who is on the internet; with or without a Google
   * account. * `allAuthenticatedUsers`: A special identifier that represents
   * anyone who is authenticated with a Google account or a service account. *
   * `user:{emailid}`: An email address that represents a specific Google
   * account. For example, `alice@gmail.com` or `joe@example.com`. *
   * `serviceAccount:{emailid}`: An email address that represents a service
   * account. For example, `my-other-app@appspot.gserviceaccount.com`. *
   * `group:{emailid}`: An email address that represents a Google group. For
   * example, `admins@example.com`. * `domain:{domain}`: A Google Apps domain
   * name that represents all the users of that domain. For example,
   * `google.com` or `example.com`.
   */
  core.List<core.String> members;
  /**
   * Role that is assigned to `members`. For example, `roles/viewer`,
   * `roles/editor`, or `roles/owner`. Required
   */
  core.String role;

  Binding();

  Binding.fromJson(core.Map _json) {
    if (_json.containsKey("members")) {
      members = _json["members"];
    }
    if (_json.containsKey("role")) {
      role = _json["role"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (members != null) {
      _json["members"] = members;
    }
    if (role != null) {
      _json["role"] = role;
    }
    return _json;
  }
}

/** A request to cancel a job. */
class CancelJobRequest {

  CancelJobRequest();

  CancelJobRequest.fromJson(core.Map _json) {
  }

  core.Map toJson() {
    var _json = new core.Map();
    return _json;
  }
}

/** The request message for Operations.CancelOperation. */
class CancelOperationRequest {

  CancelOperationRequest();

  CancelOperationRequest.fromJson(core.Map _json) {
  }

  core.Map toJson() {
    var _json = new core.Map();
    return _json;
  }
}

/**
 * Describes the identifying information, configuration, and status of a cluster
 * of Google Compute Engine instances.
 */
class Cluster {
  /**
   * [Required] The cluster name. Cluster names within a project must be unique.
   * Names from deleted clusters can be reused.
   */
  core.String clusterName;
  /**
   * [Output-only] A cluster UUID (Unique Universal Identifier). Cloud Dataproc
   * generates this value when it creates the cluster.
   */
  core.String clusterUuid;
  /**
   * [Required] The cluster configuration. Note that Cloud Dataproc may set
   * default values, and values may change when clusters are updated.
   */
  ClusterConfiguration configuration;
  /**
   * [Required] The Google Cloud Platform project ID that the cluster belongs
   * to.
   */
  core.String projectId;
  /** [Output-only] Cluster status. */
  ClusterStatus status;
  /** [Output-only] Previous cluster statuses. */
  core.List<ClusterStatus> statusHistory;

  Cluster();

  Cluster.fromJson(core.Map _json) {
    if (_json.containsKey("clusterName")) {
      clusterName = _json["clusterName"];
    }
    if (_json.containsKey("clusterUuid")) {
      clusterUuid = _json["clusterUuid"];
    }
    if (_json.containsKey("configuration")) {
      configuration = new ClusterConfiguration.fromJson(_json["configuration"]);
    }
    if (_json.containsKey("projectId")) {
      projectId = _json["projectId"];
    }
    if (_json.containsKey("status")) {
      status = new ClusterStatus.fromJson(_json["status"]);
    }
    if (_json.containsKey("statusHistory")) {
      statusHistory = _json["statusHistory"].map((value) => new ClusterStatus.fromJson(value)).toList();
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (clusterName != null) {
      _json["clusterName"] = clusterName;
    }
    if (clusterUuid != null) {
      _json["clusterUuid"] = clusterUuid;
    }
    if (configuration != null) {
      _json["configuration"] = (configuration).toJson();
    }
    if (projectId != null) {
      _json["projectId"] = projectId;
    }
    if (status != null) {
      _json["status"] = (status).toJson();
    }
    if (statusHistory != null) {
      _json["statusHistory"] = statusHistory.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

/** The cluster configuration. */
class ClusterConfiguration {
  /**
   * [Optional] A Google Cloud Storage staging bucket used for sharing generated
   * SSH keys and configuration. If you do not specify a staging bucket, Cloud
   * Dataproc will determine an appropriate Cloud Storage location (US, ASIA, or
   * EU) for your cluster's staging bucket according to the Google Compute
   * Engine zone where your cluster is deployed, and then it will create and
   * manage this project-level, per-location bucket for you.
   */
  core.String configurationBucket;
  /**
   * [Optional] The shared Google Compute Engine configuration settings for all
   * instances in a cluster.
   */
  GceClusterConfiguration gceClusterConfiguration;
  /**
   * [Optional] Commands to execute on each node after configuration is
   * completed. By default, executables are run on master and all worker nodes.
   * You can test a node's role metadata to run an executable on a master or
   * worker node, as shown below: ROLE=$(/usr/share/google/get_metadata_value
   * attributes/role) if [[ "${ROLE}" == 'Master' ]]; then ... master specific
   * actions ... else ... worker specific actions ... fi
   */
  core.List<NodeInitializationAction> initializationActions;
  /**
   * [Optional] The Google Compute Engine configuration settings for the master
   * instance in a cluster.
   */
  InstanceGroupConfiguration masterConfiguration;
  /**
   * [Optional] The Google Compute Engine configuration settings for additional
   * worker instances in a cluster.
   */
  InstanceGroupConfiguration secondaryWorkerConfiguration;
  /** [Optional] The configuration settings for software inside the cluster. */
  SoftwareConfiguration softwareConfiguration;
  /**
   * [Optional] The Google Compute Engine configuration settings for worker
   * instances in a cluster.
   */
  InstanceGroupConfiguration workerConfiguration;

  ClusterConfiguration();

  ClusterConfiguration.fromJson(core.Map _json) {
    if (_json.containsKey("configurationBucket")) {
      configurationBucket = _json["configurationBucket"];
    }
    if (_json.containsKey("gceClusterConfiguration")) {
      gceClusterConfiguration = new GceClusterConfiguration.fromJson(_json["gceClusterConfiguration"]);
    }
    if (_json.containsKey("initializationActions")) {
      initializationActions = _json["initializationActions"].map((value) => new NodeInitializationAction.fromJson(value)).toList();
    }
    if (_json.containsKey("masterConfiguration")) {
      masterConfiguration = new InstanceGroupConfiguration.fromJson(_json["masterConfiguration"]);
    }
    if (_json.containsKey("secondaryWorkerConfiguration")) {
      secondaryWorkerConfiguration = new InstanceGroupConfiguration.fromJson(_json["secondaryWorkerConfiguration"]);
    }
    if (_json.containsKey("softwareConfiguration")) {
      softwareConfiguration = new SoftwareConfiguration.fromJson(_json["softwareConfiguration"]);
    }
    if (_json.containsKey("workerConfiguration")) {
      workerConfiguration = new InstanceGroupConfiguration.fromJson(_json["workerConfiguration"]);
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (configurationBucket != null) {
      _json["configurationBucket"] = configurationBucket;
    }
    if (gceClusterConfiguration != null) {
      _json["gceClusterConfiguration"] = (gceClusterConfiguration).toJson();
    }
    if (initializationActions != null) {
      _json["initializationActions"] = initializationActions.map((value) => (value).toJson()).toList();
    }
    if (masterConfiguration != null) {
      _json["masterConfiguration"] = (masterConfiguration).toJson();
    }
    if (secondaryWorkerConfiguration != null) {
      _json["secondaryWorkerConfiguration"] = (secondaryWorkerConfiguration).toJson();
    }
    if (softwareConfiguration != null) {
      _json["softwareConfiguration"] = (softwareConfiguration).toJson();
    }
    if (workerConfiguration != null) {
      _json["workerConfiguration"] = (workerConfiguration).toJson();
    }
    return _json;
  }
}

/** Metadata describing the operation. */
class ClusterOperationMetadata {
  /** Name of the cluster for the operation. */
  core.String clusterName;
  /** Cluster UUId for the operation. */
  core.String clusterUuid;
  /** [Output-only] Short description of operation. */
  core.String description;
  /** [Output-only] The operation type. */
  core.String operationType;
  /** [Output-only] Current operation status. */
  ClusterOperationStatus status;
  /** [Output-only] The previous operation status. */
  core.List<ClusterOperationStatus> statusHistory;

  ClusterOperationMetadata();

  ClusterOperationMetadata.fromJson(core.Map _json) {
    if (_json.containsKey("clusterName")) {
      clusterName = _json["clusterName"];
    }
    if (_json.containsKey("clusterUuid")) {
      clusterUuid = _json["clusterUuid"];
    }
    if (_json.containsKey("description")) {
      description = _json["description"];
    }
    if (_json.containsKey("operationType")) {
      operationType = _json["operationType"];
    }
    if (_json.containsKey("status")) {
      status = new ClusterOperationStatus.fromJson(_json["status"]);
    }
    if (_json.containsKey("statusHistory")) {
      statusHistory = _json["statusHistory"].map((value) => new ClusterOperationStatus.fromJson(value)).toList();
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (clusterName != null) {
      _json["clusterName"] = clusterName;
    }
    if (clusterUuid != null) {
      _json["clusterUuid"] = clusterUuid;
    }
    if (description != null) {
      _json["description"] = description;
    }
    if (operationType != null) {
      _json["operationType"] = operationType;
    }
    if (status != null) {
      _json["status"] = (status).toJson();
    }
    if (statusHistory != null) {
      _json["statusHistory"] = statusHistory.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

/** The status of the operation. */
class ClusterOperationStatus {
  /** A message containing any operation metadata details. */
  core.String details;
  /** A message containing the detailed operation state. */
  core.String innerState;
  /**
   * A message containing the operation state.
   * Possible string values are:
   * - "UNKNOWN" : A UNKNOWN.
   * - "PENDING" : A PENDING.
   * - "RUNNING" : A RUNNING.
   * - "DONE" : A DONE.
   */
  core.String state;
  /** The time this state was entered. */
  core.String stateStartTime;

  ClusterOperationStatus();

  ClusterOperationStatus.fromJson(core.Map _json) {
    if (_json.containsKey("details")) {
      details = _json["details"];
    }
    if (_json.containsKey("innerState")) {
      innerState = _json["innerState"];
    }
    if (_json.containsKey("state")) {
      state = _json["state"];
    }
    if (_json.containsKey("stateStartTime")) {
      stateStartTime = _json["stateStartTime"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (details != null) {
      _json["details"] = details;
    }
    if (innerState != null) {
      _json["innerState"] = innerState;
    }
    if (state != null) {
      _json["state"] = state;
    }
    if (stateStartTime != null) {
      _json["stateStartTime"] = stateStartTime;
    }
    return _json;
  }
}

/** The status of a cluster and its instances. */
class ClusterStatus {
  /** Optional details of cluster's state. */
  core.String detail;
  /**
   * The cluster's state.
   * Possible string values are:
   * - "UNKNOWN" : A UNKNOWN.
   * - "CREATING" : A CREATING.
   * - "RUNNING" : A RUNNING.
   * - "ERROR" : A ERROR.
   * - "DELETING" : A DELETING.
   * - "UPDATING" : A UPDATING.
   */
  core.String state;
  /** Time when this state was entered. */
  core.String stateStartTime;

  ClusterStatus();

  ClusterStatus.fromJson(core.Map _json) {
    if (_json.containsKey("detail")) {
      detail = _json["detail"];
    }
    if (_json.containsKey("state")) {
      state = _json["state"];
    }
    if (_json.containsKey("stateStartTime")) {
      stateStartTime = _json["stateStartTime"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (detail != null) {
      _json["detail"] = detail;
    }
    if (state != null) {
      _json["state"] = state;
    }
    if (stateStartTime != null) {
      _json["stateStartTime"] = stateStartTime;
    }
    return _json;
  }
}

/** The location where output from diagnostic command can be found. */
class DiagnoseClusterOutputLocation {
  /**
   * [Output-only] The Google Cloud Storage URI of the diagnostic output. This
   * will be a plain text file with summary of collected diagnostics.
   */
  core.String outputUri;

  DiagnoseClusterOutputLocation();

  DiagnoseClusterOutputLocation.fromJson(core.Map _json) {
    if (_json.containsKey("outputUri")) {
      outputUri = _json["outputUri"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (outputUri != null) {
      _json["outputUri"] = outputUri;
    }
    return _json;
  }
}

/** A request to collect cluster diagnostic information. */
class DiagnoseClusterRequest {

  DiagnoseClusterRequest();

  DiagnoseClusterRequest.fromJson(core.Map _json) {
  }

  core.Map toJson() {
    var _json = new core.Map();
    return _json;
  }
}

/** The location of diagnostic output. */
class DiagnoseClusterResults {
  /**
   * [Output-only] The Google Cloud Storage URI of the diagnostic output. This
   * is a plain text file with a summary of collected diagnostics.
   */
  core.String outputUri;

  DiagnoseClusterResults();

  DiagnoseClusterResults.fromJson(core.Map _json) {
    if (_json.containsKey("outputUri")) {
      outputUri = _json["outputUri"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (outputUri != null) {
      _json["outputUri"] = outputUri;
    }
    return _json;
  }
}

/** Specifies the configuration of disk options for a group of VM instances. */
class DiskConfiguration {
  /** [Optional] Size in GB of the boot disk (default is 500GB). */
  core.int bootDiskSizeGb;
  /**
   * [Optional] Number of attached SSDs, from 0 to 4 (default is 0). If SSDs are
   * not attached, the boot disk is used to store runtime logs and HDFS data. If
   * one or more SSDs are attached, this runtime bulk data is spread across
   * them, and the boot disk contains only basic configuration and installed
   * binaries.
   */
  core.int numLocalSsds;

  DiskConfiguration();

  DiskConfiguration.fromJson(core.Map _json) {
    if (_json.containsKey("bootDiskSizeGb")) {
      bootDiskSizeGb = _json["bootDiskSizeGb"];
    }
    if (_json.containsKey("numLocalSsds")) {
      numLocalSsds = _json["numLocalSsds"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (bootDiskSizeGb != null) {
      _json["bootDiskSizeGb"] = bootDiskSizeGb;
    }
    if (numLocalSsds != null) {
      _json["numLocalSsds"] = numLocalSsds;
    }
    return _json;
  }
}

/**
 * A generic empty message that you can re-use to avoid defining duplicated
 * empty messages in your APIs. A typical example is to use it as the request or
 * the response type of an API method. For instance: service Foo { rpc
 * Bar(google.protobuf.Empty) returns (google.protobuf.Empty); } The JSON
 * representation for `Empty` is empty JSON object `{}`.
 */
class Empty {

  Empty();

  Empty.fromJson(core.Map _json) {
  }

  core.Map toJson() {
    var _json = new core.Map();
    return _json;
  }
}

/**
 * Common configuration settings for resources of Google Compute Engine cluster
 * instances, applicable to all instances in the cluster.
 */
class GceClusterConfiguration {
  /** The Google Compute Engine metadata entries to add to all instances. */
  core.Map<core.String, core.String> metadata;
  /**
   * The Google Compute Engine network to be used for machine communications.
   * Cannot be specified with subnetwork_uri. If neither network_uri nor
   * subnetwork_uri is specified, the "default" network of the project is used,
   * if it exists. Cannot be a "Custom Subnet Network" (see
   * https://cloud.google.com/compute/docs/subnetworks for more information).
   * Example:
   * `https://www.googleapis.com/compute/v1/projects/[project_id]/regions/global/default`.
   */
  core.String networkUri;
  /**
   * The URIs of service account scopes to be included in Google Compute Engine
   * instances. The following base set of scopes is always included: -
   * https://www.googleapis.com/auth/cloud.useraccounts.readonly -
   * https://www.googleapis.com/auth/devstorage.read_write -
   * https://www.googleapis.com/auth/logging.write If no scopes are specfied,
   * the following defaults are also provided: -
   * https://www.googleapis.com/auth/bigquery -
   * https://www.googleapis.com/auth/bigtable.admin.table -
   * https://www.googleapis.com/auth/bigtable.data -
   * https://www.googleapis.com/auth/devstorage.full_control
   */
  core.List<core.String> serviceAccountScopes;
  /**
   * The Google Compute Engine subnetwork to be used for machine communications.
   * Cannot be specified with network_uri. Example:
   * `https://www.googleapis.com/compute/v1/projects/[project_id]/regions/us-east1/sub0`.
   */
  core.String subnetworkUri;
  /** The Google Compute Engine tags to add to all instances. */
  core.List<core.String> tags;
  /**
   * [Required] The zone where the Google Compute Engine cluster will be
   * located. Example:
   * `https://www.googleapis.com/compute/v1/projects/[project_id]/zones/[zone]`.
   */
  core.String zoneUri;

  GceClusterConfiguration();

  GceClusterConfiguration.fromJson(core.Map _json) {
    if (_json.containsKey("metadata")) {
      metadata = _json["metadata"];
    }
    if (_json.containsKey("networkUri")) {
      networkUri = _json["networkUri"];
    }
    if (_json.containsKey("serviceAccountScopes")) {
      serviceAccountScopes = _json["serviceAccountScopes"];
    }
    if (_json.containsKey("subnetworkUri")) {
      subnetworkUri = _json["subnetworkUri"];
    }
    if (_json.containsKey("tags")) {
      tags = _json["tags"];
    }
    if (_json.containsKey("zoneUri")) {
      zoneUri = _json["zoneUri"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (metadata != null) {
      _json["metadata"] = metadata;
    }
    if (networkUri != null) {
      _json["networkUri"] = networkUri;
    }
    if (serviceAccountScopes != null) {
      _json["serviceAccountScopes"] = serviceAccountScopes;
    }
    if (subnetworkUri != null) {
      _json["subnetworkUri"] = subnetworkUri;
    }
    if (tags != null) {
      _json["tags"] = tags;
    }
    if (zoneUri != null) {
      _json["zoneUri"] = zoneUri;
    }
    return _json;
  }
}

/** A Cloud Dataproc job for running Hadoop MapReduce jobs on YARN. */
class HadoopJob {
  /**
   * [Optional] HCFS URIs of archives to be extracted in the working directory
   * of Hadoop drivers and tasks. Supported file types: .jar, .tar, .tar.gz,
   * .tgz, or .zip.
   */
  core.List<core.String> archiveUris;
  /**
   * [Optional] The arguments to pass to the driver. Do not include arguments,
   * such as `-libjars` or `-Dfoo=bar`, that can be set as job properties, since
   * a collision may occur that causes an incorrect job submission.
   */
  core.List<core.String> args;
  /**
   * [Optional] HCFS URIs of files to be copied to the working directory of
   * Hadoop drivers and distributed tasks. Useful for naively parallel tasks.
   */
  core.List<core.String> fileUris;
  /**
   * [Optional] Jar file URIs to add to the CLASSPATHs of the Hadoop driver and
   * tasks.
   */
  core.List<core.String> jarFileUris;
  /** [Optional] The runtime log configuration for job execution. */
  LoggingConfiguration loggingConfiguration;
  /**
   * The name of the driver's main class. The jar file containing the class must
   * be in the default CLASSPATH or specified in `jar_file_uris`.
   */
  core.String mainClass;
  /**
   * The Hadoop Compatible Filesystem (HCFS) URI of the jar file containing the
   * main class. Examples:
   * 'gs://foo-bucket/analytics-binaries/extract-useful-metrics-mr.jar'
   * 'hdfs:/tmp/test-samples/custom-wordcount.jar'
   * 'file:///home/usr/lib/hadoop-mapreduce/hadoop-mapreduce-examples.jar'
   */
  core.String mainJarFileUri;
  /**
   * [Optional] A mapping of property names to values, used to configure Hadoop.
   * Properties that conflict with values set by the Cloud Dataproc API may be
   * overwritten. Can include properties set in /etc/hadoop/conf / * -site and
   * classes in user code.
   */
  core.Map<core.String, core.String> properties;

  HadoopJob();

  HadoopJob.fromJson(core.Map _json) {
    if (_json.containsKey("archiveUris")) {
      archiveUris = _json["archiveUris"];
    }
    if (_json.containsKey("args")) {
      args = _json["args"];
    }
    if (_json.containsKey("fileUris")) {
      fileUris = _json["fileUris"];
    }
    if (_json.containsKey("jarFileUris")) {
      jarFileUris = _json["jarFileUris"];
    }
    if (_json.containsKey("loggingConfiguration")) {
      loggingConfiguration = new LoggingConfiguration.fromJson(_json["loggingConfiguration"]);
    }
    if (_json.containsKey("mainClass")) {
      mainClass = _json["mainClass"];
    }
    if (_json.containsKey("mainJarFileUri")) {
      mainJarFileUri = _json["mainJarFileUri"];
    }
    if (_json.containsKey("properties")) {
      properties = _json["properties"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (archiveUris != null) {
      _json["archiveUris"] = archiveUris;
    }
    if (args != null) {
      _json["args"] = args;
    }
    if (fileUris != null) {
      _json["fileUris"] = fileUris;
    }
    if (jarFileUris != null) {
      _json["jarFileUris"] = jarFileUris;
    }
    if (loggingConfiguration != null) {
      _json["loggingConfiguration"] = (loggingConfiguration).toJson();
    }
    if (mainClass != null) {
      _json["mainClass"] = mainClass;
    }
    if (mainJarFileUri != null) {
      _json["mainJarFileUri"] = mainJarFileUri;
    }
    if (properties != null) {
      _json["properties"] = properties;
    }
    return _json;
  }
}

/** A Cloud Dataproc job for running Hive queries on YARN. */
class HiveJob {
  /**
   * [Optional] Whether to continue executing queries if a query fails. The
   * default value is `false`. Setting to `true` can be useful when executing
   * independent parallel queries.
   */
  core.bool continueOnFailure;
  /**
   * [Optional] HCFS URIs of jar files to add to the CLASSPATH of the Hive
   * server and Hadoop MapReduce (MR) tasks. Can contain Hive SerDes and UDFs.
   */
  core.List<core.String> jarFileUris;
  /**
   * [Optional] A mapping of property names and values, used to configure Hive.
   * Properties that conflict with values set by the Cloud Dataproc API may be
   * overwritten. Can include properties set in /etc/hadoop/conf / * -site.xml,
   * /etc/hive/conf/hive-site.xml, and classes in user code.
   */
  core.Map<core.String, core.String> properties;
  /** The HCFS URI of the script that contains Hive queries. */
  core.String queryFileUri;
  /** A list of queries. */
  QueryList queryList;
  /**
   * [Optional] Mapping of query variable names to values (equivalent to the
   * Hive command: `SET name="value";`).
   */
  core.Map<core.String, core.String> scriptVariables;

  HiveJob();

  HiveJob.fromJson(core.Map _json) {
    if (_json.containsKey("continueOnFailure")) {
      continueOnFailure = _json["continueOnFailure"];
    }
    if (_json.containsKey("jarFileUris")) {
      jarFileUris = _json["jarFileUris"];
    }
    if (_json.containsKey("properties")) {
      properties = _json["properties"];
    }
    if (_json.containsKey("queryFileUri")) {
      queryFileUri = _json["queryFileUri"];
    }
    if (_json.containsKey("queryList")) {
      queryList = new QueryList.fromJson(_json["queryList"]);
    }
    if (_json.containsKey("scriptVariables")) {
      scriptVariables = _json["scriptVariables"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (continueOnFailure != null) {
      _json["continueOnFailure"] = continueOnFailure;
    }
    if (jarFileUris != null) {
      _json["jarFileUris"] = jarFileUris;
    }
    if (properties != null) {
      _json["properties"] = properties;
    }
    if (queryFileUri != null) {
      _json["queryFileUri"] = queryFileUri;
    }
    if (queryList != null) {
      _json["queryList"] = (queryList).toJson();
    }
    if (scriptVariables != null) {
      _json["scriptVariables"] = scriptVariables;
    }
    return _json;
  }
}

/**
 * The configuration settings for Google Compute Engine resources in an instance
 * group, such as a master or worker group.
 */
class InstanceGroupConfiguration {
  /** Disk option configuration settings. */
  DiskConfiguration diskConfiguration;
  /**
   * [Output-only] The Google Compute Engine image resource used for cluster
   * instances. Inferred from `SoftwareConfiguration.image_version`.
   */
  core.String imageUri;
  /**
   * The list of instance names. Dataproc derives the names from `cluster_name`,
   * `num_instances`, and the instance group if not set by user (recommended
   * practice is to let Dataproc derive the name).
   */
  core.List<core.String> instanceNames;
  /** Specifies that this instance group contains Preemptible Instances. */
  core.bool isPreemptible;
  /**
   * The Google Compute Engine machine type used for cluster instances. Example:
   * `https://www.googleapis.com/compute/v1/projects/[project_id]/zones/us-east1-a/machineTypes/n1-standard-2`.
   */
  core.String machineTypeUri;
  /**
   * [Output-only] The configuration for Google Compute Engine Instance Group
   * Manager that manages this group. This is only used for preemptible instance
   * groups.
   */
  ManagedGroupConfiguration managedGroupConfiguration;
  /**
   * The number of VM instances in the instance group. For master instance
   * groups, must be set to 1.
   */
  core.int numInstances;

  InstanceGroupConfiguration();

  InstanceGroupConfiguration.fromJson(core.Map _json) {
    if (_json.containsKey("diskConfiguration")) {
      diskConfiguration = new DiskConfiguration.fromJson(_json["diskConfiguration"]);
    }
    if (_json.containsKey("imageUri")) {
      imageUri = _json["imageUri"];
    }
    if (_json.containsKey("instanceNames")) {
      instanceNames = _json["instanceNames"];
    }
    if (_json.containsKey("isPreemptible")) {
      isPreemptible = _json["isPreemptible"];
    }
    if (_json.containsKey("machineTypeUri")) {
      machineTypeUri = _json["machineTypeUri"];
    }
    if (_json.containsKey("managedGroupConfiguration")) {
      managedGroupConfiguration = new ManagedGroupConfiguration.fromJson(_json["managedGroupConfiguration"]);
    }
    if (_json.containsKey("numInstances")) {
      numInstances = _json["numInstances"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (diskConfiguration != null) {
      _json["diskConfiguration"] = (diskConfiguration).toJson();
    }
    if (imageUri != null) {
      _json["imageUri"] = imageUri;
    }
    if (instanceNames != null) {
      _json["instanceNames"] = instanceNames;
    }
    if (isPreemptible != null) {
      _json["isPreemptible"] = isPreemptible;
    }
    if (machineTypeUri != null) {
      _json["machineTypeUri"] = machineTypeUri;
    }
    if (managedGroupConfiguration != null) {
      _json["managedGroupConfiguration"] = (managedGroupConfiguration).toJson();
    }
    if (numInstances != null) {
      _json["numInstances"] = numInstances;
    }
    return _json;
  }
}

/** A Cloud Dataproc job resource. */
class Job {
  /**
   * [Output-only] If present, the location of miscellaneous control files which
   * may be used as part of job setup and handling. If not present, control
   * files may be placed in the same location as `driver_output_uri`.
   */
  core.String driverControlFilesUri;
  /**
   * [Output-only] A URI pointing to the location of the stdin of the job's
   * driver program, only set if the job is interactive.
   */
  core.String driverInputResourceUri;
  /**
   * [Output-only] A URI pointing to the location of the stdout of the job's
   * driver program.
   */
  core.String driverOutputResourceUri;
  /** Job is a Hadoop job. */
  HadoopJob hadoopJob;
  /** Job is a Hive job. */
  HiveJob hiveJob;
  /**
   * [Optional] If set to `true`, the driver's stdin will be kept open and
   * `driver_input_uri` will be set to provide a path at which additional input
   * can be sent to the driver.
   */
  core.bool interactive;
  /** Job is a Pig job. */
  PigJob pigJob;
  /**
   * [Required] Job information, including how, when, and where to run the job.
   */
  JobPlacement placement;
  /** Job is a Pyspark job. */
  PySparkJob pysparkJob;
  /**
   * [Optional] The fully qualified reference to the job, which can be used to
   * obtain the equivalent REST path of the job resource. If this property is
   * not specified when a job is created, the server generates a job_id.
   */
  JobReference reference;
  /** Job is a Spark job. */
  SparkJob sparkJob;
  /** Job is a SparkSql job. */
  SparkSqlJob sparkSqlJob;
  /**
   * [Output-only] The job status. Additional application-specific status
   * information may be contained in the type_job and yarn_applications fields.
   */
  JobStatus status;
  /** [Output-only] The previous job status. */
  core.List<JobStatus> statusHistory;
  /**
   * [Output-only] The email address of the user submitting the job. For jobs
   * submitted on the cluster, the address is username@hostname.
   */
  core.String submittedBy;
  /** [Output-only] The collection of YARN applications spun up by this job. */
  core.List<YarnApplication> yarnApplications;

  Job();

  Job.fromJson(core.Map _json) {
    if (_json.containsKey("driverControlFilesUri")) {
      driverControlFilesUri = _json["driverControlFilesUri"];
    }
    if (_json.containsKey("driverInputResourceUri")) {
      driverInputResourceUri = _json["driverInputResourceUri"];
    }
    if (_json.containsKey("driverOutputResourceUri")) {
      driverOutputResourceUri = _json["driverOutputResourceUri"];
    }
    if (_json.containsKey("hadoopJob")) {
      hadoopJob = new HadoopJob.fromJson(_json["hadoopJob"]);
    }
    if (_json.containsKey("hiveJob")) {
      hiveJob = new HiveJob.fromJson(_json["hiveJob"]);
    }
    if (_json.containsKey("interactive")) {
      interactive = _json["interactive"];
    }
    if (_json.containsKey("pigJob")) {
      pigJob = new PigJob.fromJson(_json["pigJob"]);
    }
    if (_json.containsKey("placement")) {
      placement = new JobPlacement.fromJson(_json["placement"]);
    }
    if (_json.containsKey("pysparkJob")) {
      pysparkJob = new PySparkJob.fromJson(_json["pysparkJob"]);
    }
    if (_json.containsKey("reference")) {
      reference = new JobReference.fromJson(_json["reference"]);
    }
    if (_json.containsKey("sparkJob")) {
      sparkJob = new SparkJob.fromJson(_json["sparkJob"]);
    }
    if (_json.containsKey("sparkSqlJob")) {
      sparkSqlJob = new SparkSqlJob.fromJson(_json["sparkSqlJob"]);
    }
    if (_json.containsKey("status")) {
      status = new JobStatus.fromJson(_json["status"]);
    }
    if (_json.containsKey("statusHistory")) {
      statusHistory = _json["statusHistory"].map((value) => new JobStatus.fromJson(value)).toList();
    }
    if (_json.containsKey("submittedBy")) {
      submittedBy = _json["submittedBy"];
    }
    if (_json.containsKey("yarnApplications")) {
      yarnApplications = _json["yarnApplications"].map((value) => new YarnApplication.fromJson(value)).toList();
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (driverControlFilesUri != null) {
      _json["driverControlFilesUri"] = driverControlFilesUri;
    }
    if (driverInputResourceUri != null) {
      _json["driverInputResourceUri"] = driverInputResourceUri;
    }
    if (driverOutputResourceUri != null) {
      _json["driverOutputResourceUri"] = driverOutputResourceUri;
    }
    if (hadoopJob != null) {
      _json["hadoopJob"] = (hadoopJob).toJson();
    }
    if (hiveJob != null) {
      _json["hiveJob"] = (hiveJob).toJson();
    }
    if (interactive != null) {
      _json["interactive"] = interactive;
    }
    if (pigJob != null) {
      _json["pigJob"] = (pigJob).toJson();
    }
    if (placement != null) {
      _json["placement"] = (placement).toJson();
    }
    if (pysparkJob != null) {
      _json["pysparkJob"] = (pysparkJob).toJson();
    }
    if (reference != null) {
      _json["reference"] = (reference).toJson();
    }
    if (sparkJob != null) {
      _json["sparkJob"] = (sparkJob).toJson();
    }
    if (sparkSqlJob != null) {
      _json["sparkSqlJob"] = (sparkSqlJob).toJson();
    }
    if (status != null) {
      _json["status"] = (status).toJson();
    }
    if (statusHistory != null) {
      _json["statusHistory"] = statusHistory.map((value) => (value).toJson()).toList();
    }
    if (submittedBy != null) {
      _json["submittedBy"] = submittedBy;
    }
    if (yarnApplications != null) {
      _json["yarnApplications"] = yarnApplications.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

/** Cloud Dataproc job configuration. */
class JobPlacement {
  /** [Required] The name of the cluster where the job will be submitted. */
  core.String clusterName;
  /**
   * [Output-only] A cluster UUID generated by the Dataproc service when the job
   * is submitted.
   */
  core.String clusterUuid;

  JobPlacement();

  JobPlacement.fromJson(core.Map _json) {
    if (_json.containsKey("clusterName")) {
      clusterName = _json["clusterName"];
    }
    if (_json.containsKey("clusterUuid")) {
      clusterUuid = _json["clusterUuid"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (clusterName != null) {
      _json["clusterName"] = clusterName;
    }
    if (clusterUuid != null) {
      _json["clusterUuid"] = clusterUuid;
    }
    return _json;
  }
}

/** Encapsulates the full scoping used to reference a job. */
class JobReference {
  /**
   * [Required] The job ID, which must be unique within the project. The job ID
   * is generated by the server upon job submission or provided by the user as a
   * means to perform retries without creating duplicate jobs. The ID must
   * contain only letters (a-z, A-Z), numbers (0-9), underscores (_), or hyphens
   * (-). The maximum length is 512 characters.
   */
  core.String jobId;
  /**
   * [Required] The ID of the Google Cloud Platform project that the job belongs
   * to.
   */
  core.String projectId;

  JobReference();

  JobReference.fromJson(core.Map _json) {
    if (_json.containsKey("jobId")) {
      jobId = _json["jobId"];
    }
    if (_json.containsKey("projectId")) {
      projectId = _json["projectId"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (jobId != null) {
      _json["jobId"] = jobId;
    }
    if (projectId != null) {
      _json["projectId"] = projectId;
    }
    return _json;
  }
}

/** Cloud Dataproc job status. */
class JobStatus {
  /**
   * [Optional] Job state details, such as an error description if the state is
   * ERROR.
   */
  core.String details;
  /**
   * [Required] A state message specifying the overall job state.
   * Possible string values are:
   * - "STATE_UNSPECIFIED" : A STATE_UNSPECIFIED.
   * - "PENDING" : A PENDING.
   * - "SETUP_DONE" : A SETUP_DONE.
   * - "RUNNING" : A RUNNING.
   * - "CANCEL_PENDING" : A CANCEL_PENDING.
   * - "CANCEL_STARTED" : A CANCEL_STARTED.
   * - "CANCELLED" : A CANCELLED.
   * - "DONE" : A DONE.
   * - "ERROR" : A ERROR.
   */
  core.String state;
  /** [Output-only] The time when this state was entered. */
  core.String stateStartTime;

  JobStatus();

  JobStatus.fromJson(core.Map _json) {
    if (_json.containsKey("details")) {
      details = _json["details"];
    }
    if (_json.containsKey("state")) {
      state = _json["state"];
    }
    if (_json.containsKey("stateStartTime")) {
      stateStartTime = _json["stateStartTime"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (details != null) {
      _json["details"] = details;
    }
    if (state != null) {
      _json["state"] = state;
    }
    if (stateStartTime != null) {
      _json["stateStartTime"] = stateStartTime;
    }
    return _json;
  }
}

/** The list of all clusters in a project. */
class ListClustersResponse {
  /** [Output-only] The clusters in the project. */
  core.List<Cluster> clusters;
  /** The standard List next-page token. */
  core.String nextPageToken;

  ListClustersResponse();

  ListClustersResponse.fromJson(core.Map _json) {
    if (_json.containsKey("clusters")) {
      clusters = _json["clusters"].map((value) => new Cluster.fromJson(value)).toList();
    }
    if (_json.containsKey("nextPageToken")) {
      nextPageToken = _json["nextPageToken"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (clusters != null) {
      _json["clusters"] = clusters.map((value) => (value).toJson()).toList();
    }
    if (nextPageToken != null) {
      _json["nextPageToken"] = nextPageToken;
    }
    return _json;
  }
}

/** A list of jobs in a project. */
class ListJobsResponse {
  /** [Output-only] Jobs list. */
  core.List<Job> jobs;
  /**
   * [Optional] This token is included in the response if there are more results
   * to fetch. To fetch additional results, provide this value as the
   * `page_token` in a subsequent ListJobsRequest.
   */
  core.String nextPageToken;

  ListJobsResponse();

  ListJobsResponse.fromJson(core.Map _json) {
    if (_json.containsKey("jobs")) {
      jobs = _json["jobs"].map((value) => new Job.fromJson(value)).toList();
    }
    if (_json.containsKey("nextPageToken")) {
      nextPageToken = _json["nextPageToken"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (jobs != null) {
      _json["jobs"] = jobs.map((value) => (value).toJson()).toList();
    }
    if (nextPageToken != null) {
      _json["nextPageToken"] = nextPageToken;
    }
    return _json;
  }
}

/** The response message for Operations.ListOperations. */
class ListOperationsResponse {
  /** The standard List next-page token. */
  core.String nextPageToken;
  /** A list of operations that matches the specified filter in the request. */
  core.List<Operation> operations;

  ListOperationsResponse();

  ListOperationsResponse.fromJson(core.Map _json) {
    if (_json.containsKey("nextPageToken")) {
      nextPageToken = _json["nextPageToken"];
    }
    if (_json.containsKey("operations")) {
      operations = _json["operations"].map((value) => new Operation.fromJson(value)).toList();
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (nextPageToken != null) {
      _json["nextPageToken"] = nextPageToken;
    }
    if (operations != null) {
      _json["operations"] = operations.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

/** The runtime logging configuration of the job. */
class LoggingConfiguration {
  /**
   * The per-package log levels for the driver. This may include "root" package
   * name to configure rootLogger. Examples: 'com.google = FATAL', 'root =
   * INFO', 'org.apache = DEBUG'
   */
  core.Map<core.String, core.String> driverLogLevels;

  LoggingConfiguration();

  LoggingConfiguration.fromJson(core.Map _json) {
    if (_json.containsKey("driverLogLevels")) {
      driverLogLevels = _json["driverLogLevels"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (driverLogLevels != null) {
      _json["driverLogLevels"] = driverLogLevels;
    }
    return _json;
  }
}

/** Specifies the resources used to actively manage an instance group. */
class ManagedGroupConfiguration {
  /** [Output-only] The name of the Instance Group Manager for this group. */
  core.String instanceGroupManagerName;
  /**
   * [Output-only] The name of the Instance Template used for the Managed
   * Instance Group.
   */
  core.String instanceTemplateName;

  ManagedGroupConfiguration();

  ManagedGroupConfiguration.fromJson(core.Map _json) {
    if (_json.containsKey("instanceGroupManagerName")) {
      instanceGroupManagerName = _json["instanceGroupManagerName"];
    }
    if (_json.containsKey("instanceTemplateName")) {
      instanceTemplateName = _json["instanceTemplateName"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (instanceGroupManagerName != null) {
      _json["instanceGroupManagerName"] = instanceGroupManagerName;
    }
    if (instanceTemplateName != null) {
      _json["instanceTemplateName"] = instanceTemplateName;
    }
    return _json;
  }
}

/**
 * Specifies an executable to run on a fully configured node and a timeout
 * period for executable completion.
 */
class NodeInitializationAction {
  /** [Required] Google Cloud Storage URI of executable file. */
  core.String executableFile;
  /**
   * [Optional] Amount of time executable has to complete. Default is 10
   * minutes. Cluster creation fails with an explanatory error message (the name
   * of the executable that caused the error and the exceeded timeout period) if
   * the executable is not completed at end of the timeout period.
   */
  core.String executionTimeout;

  NodeInitializationAction();

  NodeInitializationAction.fromJson(core.Map _json) {
    if (_json.containsKey("executableFile")) {
      executableFile = _json["executableFile"];
    }
    if (_json.containsKey("executionTimeout")) {
      executionTimeout = _json["executionTimeout"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (executableFile != null) {
      _json["executableFile"] = executableFile;
    }
    if (executionTimeout != null) {
      _json["executionTimeout"] = executionTimeout;
    }
    return _json;
  }
}

/**
 * This resource represents a long-running operation that is the result of a
 * network API call.
 */
class Operation {
  /**
   * If the value is `false`, it means the operation is still in progress. If
   * true, the operation is completed, and either `error` or `response` is
   * available.
   */
  core.bool done;
  /** The error result of the operation in case of failure. */
  Status error;
  /**
   * Service-specific metadata associated with the operation. It typically
   * contains progress information and common metadata such as create time. Some
   * services might not provide such metadata. Any method that returns a
   * long-running operation should document the metadata type, if any.
   *
   * The values for Object must be JSON objects. It can consist of `num`,
   * `String`, `bool` and `null` as well as `Map` and `List` values.
   */
  core.Map<core.String, core.Object> metadata;
  /**
   * The server-assigned name, which is only unique within the same service that
   * originally returns it. If you use the default HTTP mapping, the `name`
   * should have the format of `operations/some/unique/name`.
   */
  core.String name;
  /**
   * The normal response of the operation in case of success. If the original
   * method returns no data on success, such as `Delete`, the response is
   * `google.protobuf.Empty`. If the original method is standard
   * `Get`/`Create`/`Update`, the response should be the resource. For other
   * methods, the response should have the type `XxxResponse`, where `Xxx` is
   * the original method name. For example, if the original method name is
   * `TakeSnapshot()`, the inferred response type is `TakeSnapshotResponse`.
   *
   * The values for Object must be JSON objects. It can consist of `num`,
   * `String`, `bool` and `null` as well as `Map` and `List` values.
   */
  core.Map<core.String, core.Object> response;

  Operation();

  Operation.fromJson(core.Map _json) {
    if (_json.containsKey("done")) {
      done = _json["done"];
    }
    if (_json.containsKey("error")) {
      error = new Status.fromJson(_json["error"]);
    }
    if (_json.containsKey("metadata")) {
      metadata = _json["metadata"];
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
    if (_json.containsKey("response")) {
      response = _json["response"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (done != null) {
      _json["done"] = done;
    }
    if (error != null) {
      _json["error"] = (error).toJson();
    }
    if (metadata != null) {
      _json["metadata"] = metadata;
    }
    if (name != null) {
      _json["name"] = name;
    }
    if (response != null) {
      _json["response"] = response;
    }
    return _json;
  }
}

/** Metadata describing the operation. */
class OperationMetadata {
  /** Name of the cluster for the operation. */
  core.String clusterName;
  /** Cluster UUId for the operation. */
  core.String clusterUuid;
  /** [Output-only] Short description of operation. */
  core.String description;
  /** A message containing any operation metadata details. */
  core.String details;
  /** The time that the operation completed. */
  core.String endTime;
  /** A message containing the detailed operation state. */
  core.String innerState;
  /** The time that the operation was requested. */
  core.String insertTime;
  /** [Output-only] The operation type. */
  core.String operationType;
  /** The time that the operation was started by the server. */
  core.String startTime;
  /**
   * A message containing the operation state.
   * Possible string values are:
   * - "UNKNOWN" : A UNKNOWN.
   * - "PENDING" : A PENDING.
   * - "RUNNING" : A RUNNING.
   * - "DONE" : A DONE.
   */
  core.String state;
  /** [Output-only] Current operation status. */
  OperationStatus status;
  /** [Output-only] Previous operation status. */
  core.List<OperationStatus> statusHistory;

  OperationMetadata();

  OperationMetadata.fromJson(core.Map _json) {
    if (_json.containsKey("clusterName")) {
      clusterName = _json["clusterName"];
    }
    if (_json.containsKey("clusterUuid")) {
      clusterUuid = _json["clusterUuid"];
    }
    if (_json.containsKey("description")) {
      description = _json["description"];
    }
    if (_json.containsKey("details")) {
      details = _json["details"];
    }
    if (_json.containsKey("endTime")) {
      endTime = _json["endTime"];
    }
    if (_json.containsKey("innerState")) {
      innerState = _json["innerState"];
    }
    if (_json.containsKey("insertTime")) {
      insertTime = _json["insertTime"];
    }
    if (_json.containsKey("operationType")) {
      operationType = _json["operationType"];
    }
    if (_json.containsKey("startTime")) {
      startTime = _json["startTime"];
    }
    if (_json.containsKey("state")) {
      state = _json["state"];
    }
    if (_json.containsKey("status")) {
      status = new OperationStatus.fromJson(_json["status"]);
    }
    if (_json.containsKey("statusHistory")) {
      statusHistory = _json["statusHistory"].map((value) => new OperationStatus.fromJson(value)).toList();
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (clusterName != null) {
      _json["clusterName"] = clusterName;
    }
    if (clusterUuid != null) {
      _json["clusterUuid"] = clusterUuid;
    }
    if (description != null) {
      _json["description"] = description;
    }
    if (details != null) {
      _json["details"] = details;
    }
    if (endTime != null) {
      _json["endTime"] = endTime;
    }
    if (innerState != null) {
      _json["innerState"] = innerState;
    }
    if (insertTime != null) {
      _json["insertTime"] = insertTime;
    }
    if (operationType != null) {
      _json["operationType"] = operationType;
    }
    if (startTime != null) {
      _json["startTime"] = startTime;
    }
    if (state != null) {
      _json["state"] = state;
    }
    if (status != null) {
      _json["status"] = (status).toJson();
    }
    if (statusHistory != null) {
      _json["statusHistory"] = statusHistory.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

/** The status of the operation. */
class OperationStatus {
  /** A message containing any operation metadata details. */
  core.String details;
  /** A message containing the detailed operation state. */
  core.String innerState;
  /**
   * A message containing the operation state.
   * Possible string values are:
   * - "UNKNOWN" : A UNKNOWN.
   * - "PENDING" : A PENDING.
   * - "RUNNING" : A RUNNING.
   * - "DONE" : A DONE.
   */
  core.String state;
  /** The time this state was entered. */
  core.String stateStartTime;

  OperationStatus();

  OperationStatus.fromJson(core.Map _json) {
    if (_json.containsKey("details")) {
      details = _json["details"];
    }
    if (_json.containsKey("innerState")) {
      innerState = _json["innerState"];
    }
    if (_json.containsKey("state")) {
      state = _json["state"];
    }
    if (_json.containsKey("stateStartTime")) {
      stateStartTime = _json["stateStartTime"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (details != null) {
      _json["details"] = details;
    }
    if (innerState != null) {
      _json["innerState"] = innerState;
    }
    if (state != null) {
      _json["state"] = state;
    }
    if (stateStartTime != null) {
      _json["stateStartTime"] = stateStartTime;
    }
    return _json;
  }
}

/** A Cloud Dataproc job for running Pig queries on YARN. */
class PigJob {
  /**
   * [Optional] Whether to continue executing queries if a query fails. The
   * default value is `false`. Setting to `true` can be useful when executing
   * independent parallel queries.
   */
  core.bool continueOnFailure;
  /**
   * [Optional] HCFS URIs of jar files to add to the CLASSPATH of the Pig Client
   * and Hadoop MapReduce (MR) tasks. Can contain Pig UDFs.
   */
  core.List<core.String> jarFileUris;
  /** [Optional] The runtime log configuration for job execution. */
  LoggingConfiguration loggingConfiguration;
  /**
   * [Optional] A mapping of property names to values, used to configure Pig.
   * Properties that conflict with values set by the Cloud Dataproc API may be
   * overwritten. Can include properties set in /etc/hadoop/conf / * -site.xml,
   * /etc/pig/conf/pig.properties, and classes in user code.
   */
  core.Map<core.String, core.String> properties;
  /** The HCFS URI of the script that contains the Pig queries. */
  core.String queryFileUri;
  /** A list of queries. */
  QueryList queryList;
  /**
   * [Optional] Mapping of query variable names to values (equivalent to the Pig
   * command: `name=[value]`).
   */
  core.Map<core.String, core.String> scriptVariables;

  PigJob();

  PigJob.fromJson(core.Map _json) {
    if (_json.containsKey("continueOnFailure")) {
      continueOnFailure = _json["continueOnFailure"];
    }
    if (_json.containsKey("jarFileUris")) {
      jarFileUris = _json["jarFileUris"];
    }
    if (_json.containsKey("loggingConfiguration")) {
      loggingConfiguration = new LoggingConfiguration.fromJson(_json["loggingConfiguration"]);
    }
    if (_json.containsKey("properties")) {
      properties = _json["properties"];
    }
    if (_json.containsKey("queryFileUri")) {
      queryFileUri = _json["queryFileUri"];
    }
    if (_json.containsKey("queryList")) {
      queryList = new QueryList.fromJson(_json["queryList"]);
    }
    if (_json.containsKey("scriptVariables")) {
      scriptVariables = _json["scriptVariables"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (continueOnFailure != null) {
      _json["continueOnFailure"] = continueOnFailure;
    }
    if (jarFileUris != null) {
      _json["jarFileUris"] = jarFileUris;
    }
    if (loggingConfiguration != null) {
      _json["loggingConfiguration"] = (loggingConfiguration).toJson();
    }
    if (properties != null) {
      _json["properties"] = properties;
    }
    if (queryFileUri != null) {
      _json["queryFileUri"] = queryFileUri;
    }
    if (queryList != null) {
      _json["queryList"] = (queryList).toJson();
    }
    if (scriptVariables != null) {
      _json["scriptVariables"] = scriptVariables;
    }
    return _json;
  }
}

/**
 * Defines an Identity and Access Management (IAM) policy. It is used to specify
 * access control policies for Cloud Platform resources. A `Policy` consists of
 * a list of `bindings`. A `Binding` binds a list of `members` to a `role`,
 * where the members can be user accounts, Google groups, Google domains, and
 * service accounts. A `role` is a named list of permissions defined by IAM.
 * **Example** { "bindings": [ { "role": "roles/owner", "members": [
 * "user:mike@example.com", "group:admins@example.com", "domain:google.com",
 * "serviceAccount:my-other-app@appspot.gserviceaccount.com", ] }, { "role":
 * "roles/viewer", "members": ["user:sean@example.com"] } ] } For a description
 * of IAM and its features, see the [IAM developer's
 * guide](https://cloud.google.com/iam).
 */
class Policy {
  /**
   * Associates a list of `members` to a `role`. Multiple `bindings` must not be
   * specified for the same `role`. `bindings` with no members will result in an
   * error.
   */
  core.List<Binding> bindings;
  /**
   * `etag` is used for optimistic concurrency control as a way to help prevent
   * simultaneous updates of a policy from overwriting each other. It is
   * strongly suggested that systems make use of the `etag` in the
   * read-modify-write cycle to perform policy updates in order to avoid race
   * conditions: An `etag` is returned in the response to `getIamPolicy`, and
   * systems are expected to put that etag in the request to `setIamPolicy` to
   * ensure that their change will be applied to the same version of the policy.
   * If no `etag` is provided in the call to `setIamPolicy`, then the existing
   * policy is overwritten blindly.
   */
  core.String etag;
  core.List<core.int> get etagAsBytes {
    return convert.BASE64.decode(etag);
  }

  void set etagAsBytes(core.List<core.int> _bytes) {
    etag = convert.BASE64.encode(_bytes).replaceAll("/", "_").replaceAll("+", "-").replaceAll("=", "");
  }
  /** Version of the `Policy`. The default version is 0. */
  core.int version;

  Policy();

  Policy.fromJson(core.Map _json) {
    if (_json.containsKey("bindings")) {
      bindings = _json["bindings"].map((value) => new Binding.fromJson(value)).toList();
    }
    if (_json.containsKey("etag")) {
      etag = _json["etag"];
    }
    if (_json.containsKey("version")) {
      version = _json["version"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
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

/** A Cloud Dataproc job for running PySpark applications on YARN. */
class PySparkJob {
  /**
   * [Optional] HCFS URIs of archives to be extracted in the working directory
   * of .jar, .tar, .tar.gz, .tgz, and .zip.
   */
  core.List<core.String> archiveUris;
  /**
   * [Optional] The arguments to pass to the driver. Do not include arguments,
   * such as `--conf`, that can be set as job properties, since a collision may
   * occur that causes an incorrect job submission.
   */
  core.List<core.String> args;
  /**
   * [Optional] HCFS URIs of files to be copied to the working directory of
   * Python drivers and distributed tasks. Useful for naively parallel tasks.
   */
  core.List<core.String> fileUris;
  /**
   * [Optional] HCFS URIs of jar files to add to the CLASSPATHs of the Python
   * driver and tasks.
   */
  core.List<core.String> jarFileUris;
  /** [Optional] The runtime log configuration for job execution. */
  LoggingConfiguration loggingConfiguration;
  /**
   * [Required] The Hadoop Compatible Filesystem (HCFS) URI of the main Python
   * file to use as the driver. Must be a .py file.
   */
  core.String mainPythonFileUri;
  /**
   * [Optional] A mapping of property names to values, used to configure
   * PySpark. Properties that conflict with values set by the Cloud Dataproc API
   * may be overwritten. Can include properties set in
   * /etc/spark/conf/spark-defaults.conf and classes in user code.
   */
  core.Map<core.String, core.String> properties;
  /**
   * [Optional] HCFS file URIs of Python files to pass to the PySpark framework.
   * Supported file types: .py, .egg, and .zip.
   */
  core.List<core.String> pythonFileUris;

  PySparkJob();

  PySparkJob.fromJson(core.Map _json) {
    if (_json.containsKey("archiveUris")) {
      archiveUris = _json["archiveUris"];
    }
    if (_json.containsKey("args")) {
      args = _json["args"];
    }
    if (_json.containsKey("fileUris")) {
      fileUris = _json["fileUris"];
    }
    if (_json.containsKey("jarFileUris")) {
      jarFileUris = _json["jarFileUris"];
    }
    if (_json.containsKey("loggingConfiguration")) {
      loggingConfiguration = new LoggingConfiguration.fromJson(_json["loggingConfiguration"]);
    }
    if (_json.containsKey("mainPythonFileUri")) {
      mainPythonFileUri = _json["mainPythonFileUri"];
    }
    if (_json.containsKey("properties")) {
      properties = _json["properties"];
    }
    if (_json.containsKey("pythonFileUris")) {
      pythonFileUris = _json["pythonFileUris"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (archiveUris != null) {
      _json["archiveUris"] = archiveUris;
    }
    if (args != null) {
      _json["args"] = args;
    }
    if (fileUris != null) {
      _json["fileUris"] = fileUris;
    }
    if (jarFileUris != null) {
      _json["jarFileUris"] = jarFileUris;
    }
    if (loggingConfiguration != null) {
      _json["loggingConfiguration"] = (loggingConfiguration).toJson();
    }
    if (mainPythonFileUri != null) {
      _json["mainPythonFileUri"] = mainPythonFileUri;
    }
    if (properties != null) {
      _json["properties"] = properties;
    }
    if (pythonFileUris != null) {
      _json["pythonFileUris"] = pythonFileUris;
    }
    return _json;
  }
}

/** A list of queries to run on a cluster. */
class QueryList {
  /**
   * [Required] The queries to execute. You do not need to terminate a query
   * with a semicolon. Multiple queries can be specified in one string by
   * separating each with a semicolon. Here is an example of an Cloud Dataproc
   * API snippet that uses a QueryList to specify a HiveJob: "hiveJob": {
   * "queryList": { "queries": [ "query1", "query2", "query3;query4", ] } }
   */
  core.List<core.String> queries;

  QueryList();

  QueryList.fromJson(core.Map _json) {
    if (_json.containsKey("queries")) {
      queries = _json["queries"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (queries != null) {
      _json["queries"] = queries;
    }
    return _json;
  }
}

/** Request message for `SetIamPolicy` method. */
class SetIamPolicyRequest {
  /**
   * REQUIRED: The complete policy to be applied to the `resource`. The size of
   * the policy is limited to a few 10s of KB. An empty policy is a valid policy
   * but certain Cloud Platform services (such as Projects) might reject them.
   */
  Policy policy;

  SetIamPolicyRequest();

  SetIamPolicyRequest.fromJson(core.Map _json) {
    if (_json.containsKey("policy")) {
      policy = new Policy.fromJson(_json["policy"]);
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (policy != null) {
      _json["policy"] = (policy).toJson();
    }
    return _json;
  }
}

/**
 * Specifies the selection and configuration of software inside the cluster.
 */
class SoftwareConfiguration {
  /**
   * [Optional] The version of software inside the cluster. It must match the
   * regular expression `[0-9]+\.[0-9]+`. If unspecified, it defaults to the
   * latest version (see [Cloud Dataproc Versioning](/dataproc/versioning)).
   */
  core.String imageVersion;
  /**
   * [Optional] The properties to set on daemon configuration files. Property
   * keys are specified in "prefix:property" format, such as
   * "core:fs.defaultFS". The following are supported prefixes and their
   * mappings: core - core-site.xml hdfs - hdfs-site.xml mapred -
   * mapred-site.xml yarn - yarn-site.xml hive - hive-site.xml pig -
   * pig.properties spark - spark-defaults.conf
   */
  core.Map<core.String, core.String> properties;

  SoftwareConfiguration();

  SoftwareConfiguration.fromJson(core.Map _json) {
    if (_json.containsKey("imageVersion")) {
      imageVersion = _json["imageVersion"];
    }
    if (_json.containsKey("properties")) {
      properties = _json["properties"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (imageVersion != null) {
      _json["imageVersion"] = imageVersion;
    }
    if (properties != null) {
      _json["properties"] = properties;
    }
    return _json;
  }
}

/** A Cloud Dataproc job for running Spark applications on YARN. */
class SparkJob {
  /**
   * [Optional] HCFS URIs of archives to be extracted in the working directory
   * of Spark drivers and tasks. Supported file types: .jar, .tar, .tar.gz,
   * .tgz, and .zip.
   */
  core.List<core.String> archiveUris;
  /**
   * [Optional] The arguments to pass to the driver. Do not include arguments,
   * such as `--conf`, that can be set as job properties, since a collision may
   * occur that causes an incorrect job submission.
   */
  core.List<core.String> args;
  /**
   * [Optional] HCFS URIs of files to be copied to the working directory of
   * Spark drivers and distributed tasks. Useful for naively parallel tasks.
   */
  core.List<core.String> fileUris;
  /**
   * [Optional] HCFS URIs of jar files to add to the CLASSPATHs of the Spark
   * driver and tasks.
   */
  core.List<core.String> jarFileUris;
  /** [Optional] The runtime log configuration for job execution. */
  LoggingConfiguration loggingConfiguration;
  /**
   * The name of the driver's main class. The jar file that contains the class
   * must be in the default CLASSPATH or specified in `jar_file_uris`.
   */
  core.String mainClass;
  /**
   * The Hadoop Compatible Filesystem (HCFS) URI of the jar file that contains
   * the main class.
   */
  core.String mainJarFileUri;
  /**
   * [Optional] A mapping of property names to values, used to configure Spark.
   * Properties that conflict with values set by the Cloud Dataproc API may be
   * overwritten. Can include properties set in
   * /etc/spark/conf/spark-defaults.conf and classes in user code.
   */
  core.Map<core.String, core.String> properties;

  SparkJob();

  SparkJob.fromJson(core.Map _json) {
    if (_json.containsKey("archiveUris")) {
      archiveUris = _json["archiveUris"];
    }
    if (_json.containsKey("args")) {
      args = _json["args"];
    }
    if (_json.containsKey("fileUris")) {
      fileUris = _json["fileUris"];
    }
    if (_json.containsKey("jarFileUris")) {
      jarFileUris = _json["jarFileUris"];
    }
    if (_json.containsKey("loggingConfiguration")) {
      loggingConfiguration = new LoggingConfiguration.fromJson(_json["loggingConfiguration"]);
    }
    if (_json.containsKey("mainClass")) {
      mainClass = _json["mainClass"];
    }
    if (_json.containsKey("mainJarFileUri")) {
      mainJarFileUri = _json["mainJarFileUri"];
    }
    if (_json.containsKey("properties")) {
      properties = _json["properties"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (archiveUris != null) {
      _json["archiveUris"] = archiveUris;
    }
    if (args != null) {
      _json["args"] = args;
    }
    if (fileUris != null) {
      _json["fileUris"] = fileUris;
    }
    if (jarFileUris != null) {
      _json["jarFileUris"] = jarFileUris;
    }
    if (loggingConfiguration != null) {
      _json["loggingConfiguration"] = (loggingConfiguration).toJson();
    }
    if (mainClass != null) {
      _json["mainClass"] = mainClass;
    }
    if (mainJarFileUri != null) {
      _json["mainJarFileUri"] = mainJarFileUri;
    }
    if (properties != null) {
      _json["properties"] = properties;
    }
    return _json;
  }
}

/** A Cloud Dataproc job for running Spark SQL queries. */
class SparkSqlJob {
  /** [Optional] HCFS URIs of jar files to be added to the Spark CLASSPATH. */
  core.List<core.String> jarFileUris;
  /** [Optional] The runtime log configuration for job execution. */
  LoggingConfiguration loggingConfiguration;
  /**
   * [Optional] A mapping of property names to values, used to configure Spark
   * SQL's SparkConf. Properties that conflict with values set by the Cloud
   * Dataproc API may be overwritten.
   */
  core.Map<core.String, core.String> properties;
  /** The HCFS URI of the script that contains SQL queries. */
  core.String queryFileUri;
  /** A list of queries. */
  QueryList queryList;
  /**
   * [Optional] Mapping of query variable names to values (equivalent to the
   * Spark SQL command: SET `name="value";`).
   */
  core.Map<core.String, core.String> scriptVariables;

  SparkSqlJob();

  SparkSqlJob.fromJson(core.Map _json) {
    if (_json.containsKey("jarFileUris")) {
      jarFileUris = _json["jarFileUris"];
    }
    if (_json.containsKey("loggingConfiguration")) {
      loggingConfiguration = new LoggingConfiguration.fromJson(_json["loggingConfiguration"]);
    }
    if (_json.containsKey("properties")) {
      properties = _json["properties"];
    }
    if (_json.containsKey("queryFileUri")) {
      queryFileUri = _json["queryFileUri"];
    }
    if (_json.containsKey("queryList")) {
      queryList = new QueryList.fromJson(_json["queryList"]);
    }
    if (_json.containsKey("scriptVariables")) {
      scriptVariables = _json["scriptVariables"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (jarFileUris != null) {
      _json["jarFileUris"] = jarFileUris;
    }
    if (loggingConfiguration != null) {
      _json["loggingConfiguration"] = (loggingConfiguration).toJson();
    }
    if (properties != null) {
      _json["properties"] = properties;
    }
    if (queryFileUri != null) {
      _json["queryFileUri"] = queryFileUri;
    }
    if (queryList != null) {
      _json["queryList"] = (queryList).toJson();
    }
    if (scriptVariables != null) {
      _json["scriptVariables"] = scriptVariables;
    }
    return _json;
  }
}

/**
 * The `Status` type defines a logical error model that is suitable for
 * different programming environments, including REST APIs and RPC APIs. It is
 * used by [gRPC](https://github.com/grpc). The error model is designed to be: -
 * Simple to use and understand for most users - Flexible enough to meet
 * unexpected needs # Overview The `Status` message contains three pieces of
 * data: error code, error message, and error details. The error code should be
 * an enum value of google.rpc.Code, but it may accept additional error codes if
 * needed. The error message should be a developer-facing English message that
 * helps developers *understand* and *resolve* the error. If a localized
 * user-facing error message is needed, put the localized message in the error
 * details or localize it in the client. The optional error details may contain
 * arbitrary information about the error. There is a predefined set of error
 * detail types in the package `google.rpc` which can be used for common error
 * conditions. # Language mapping The `Status` message is the logical
 * representation of the error model, but it is not necessarily the actual wire
 * format. When the `Status` message is exposed in different client libraries
 * and different wire protocols, it can be mapped differently. For example, it
 * will likely be mapped to some exceptions in Java, but more likely mapped to
 * some error codes in C. # Other uses The error model and the `Status` message
 * can be used in a variety of environments, either with or without APIs, to
 * provide a consistent developer experience across different environments.
 * Example uses of this error model include: - Partial errors. If a service
 * needs to return partial errors to the client, it may embed the `Status` in
 * the normal response to indicate the partial errors. - Workflow errors. A
 * typical workflow has multiple steps. Each step may have a `Status` message
 * for error reporting purpose. - Batch operations. If a client uses batch
 * request and batch response, the `Status` message should be used directly
 * inside batch response, one for each error sub-response. - Asynchronous
 * operations. If an API call embeds asynchronous operation results in its
 * response, the status of those operations should be represented directly using
 * the `Status` message. - Logging. If some API errors are stored in logs, the
 * message `Status` could be used directly after any stripping needed for
 * security/privacy reasons.
 */
class Status {
  /** The status code, which should be an enum value of google.rpc.Code. */
  core.int code;
  /**
   * A list of messages that carry the error details. There will be a common set
   * of message types for APIs to use.
   *
   * The values for Object must be JSON objects. It can consist of `num`,
   * `String`, `bool` and `null` as well as `Map` and `List` values.
   */
  core.List<core.Map<core.String, core.Object>> details;
  /**
   * A developer-facing error message, which should be in English. Any
   * user-facing error message should be localized and sent in the
   * google.rpc.Status.details field, or localized by the client.
   */
  core.String message;

  Status();

  Status.fromJson(core.Map _json) {
    if (_json.containsKey("code")) {
      code = _json["code"];
    }
    if (_json.containsKey("details")) {
      details = _json["details"];
    }
    if (_json.containsKey("message")) {
      message = _json["message"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
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

/** A request to submit a job. */
class SubmitJobRequest {
  /** [Required] The job resource. */
  Job job;

  SubmitJobRequest();

  SubmitJobRequest.fromJson(core.Map _json) {
    if (_json.containsKey("job")) {
      job = new Job.fromJson(_json["job"]);
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (job != null) {
      _json["job"] = (job).toJson();
    }
    return _json;
  }
}

/** Request message for `TestIamPermissions` method. */
class TestIamPermissionsRequest {
  /**
   * The set of permissions to check for the `resource`. Permissions with
   * wildcards (such as '*' or 'storage.*') are not allowed. For more
   * information see IAM Overview.
   */
  core.List<core.String> permissions;

  TestIamPermissionsRequest();

  TestIamPermissionsRequest.fromJson(core.Map _json) {
    if (_json.containsKey("permissions")) {
      permissions = _json["permissions"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (permissions != null) {
      _json["permissions"] = permissions;
    }
    return _json;
  }
}

/** Response message for `TestIamPermissions` method. */
class TestIamPermissionsResponse {
  /**
   * A subset of `TestPermissionsRequest.permissions` that the caller is
   * allowed.
   */
  core.List<core.String> permissions;

  TestIamPermissionsResponse();

  TestIamPermissionsResponse.fromJson(core.Map _json) {
    if (_json.containsKey("permissions")) {
      permissions = _json["permissions"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (permissions != null) {
      _json["permissions"] = permissions;
    }
    return _json;
  }
}

/**
 * A YARN application created by a job. Application information is a subset of
 * org.apache.hadoop.yarn.proto.YarnProtos.ApplicationReportProto.
 */
class YarnApplication {
  /** [Required] The application name. */
  core.String name;
  /** [Required] The numerical progress of the application, from 1 to 100. */
  core.double progress;
  /**
   * [Required] The application state.
   * Possible string values are:
   * - "STATE_UNSPECIFIED" : A STATE_UNSPECIFIED.
   * - "NEW" : A NEW.
   * - "NEW_SAVING" : A NEW_SAVING.
   * - "SUBMITTED" : A SUBMITTED.
   * - "ACCEPTED" : A ACCEPTED.
   * - "RUNNING" : A RUNNING.
   * - "FINISHED" : A FINISHED.
   * - "FAILED" : A FAILED.
   * - "KILLED" : A KILLED.
   */
  core.String state;
  /**
   * [Optional] The HTTP URL of the ApplicationMaster, HistoryServer, or
   * TimelineServer that provides application-specific information. The URL uses
   * the internal hostname, and requires a proxy server for resolution and,
   * possibly, access.
   */
  core.String trackingUrl;

  YarnApplication();

  YarnApplication.fromJson(core.Map _json) {
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
    if (_json.containsKey("progress")) {
      progress = _json["progress"];
    }
    if (_json.containsKey("state")) {
      state = _json["state"];
    }
    if (_json.containsKey("trackingUrl")) {
      trackingUrl = _json["trackingUrl"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (name != null) {
      _json["name"] = name;
    }
    if (progress != null) {
      _json["progress"] = progress;
    }
    if (state != null) {
      _json["state"] = state;
    }
    if (trackingUrl != null) {
      _json["trackingUrl"] = trackingUrl;
    }
    return _json;
  }
}
