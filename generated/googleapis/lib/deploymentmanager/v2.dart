// This is a generated file (see the discoveryapis_generator project).

// ignore_for_file: unnecessary_cast

library googleapis.deploymentmanager.v2;

import 'dart:core' as core;
import 'dart:async' as async;
import 'dart:convert' as convert;

import 'package:_discoveryapis_commons/_discoveryapis_commons.dart' as commons;
import 'package:http/http.dart' as http;

export 'package:_discoveryapis_commons/_discoveryapis_commons.dart'
    show ApiRequestError, DetailedApiRequestError;

const core.String USER_AGENT = 'dart-api-client deploymentmanager/v2';

/// Declares, configures, and deploys complex solutions on Google Cloud
/// Platform.
class DeploymentmanagerApi {
  /// View and manage your data across Google Cloud Platform services
  static const CloudPlatformScope =
      "https://www.googleapis.com/auth/cloud-platform";

  /// View your data across Google Cloud Platform services
  static const CloudPlatformReadOnlyScope =
      "https://www.googleapis.com/auth/cloud-platform.read-only";

  /// View and manage your Google Cloud Platform management resources and
  /// deployment status information
  static const NdevCloudmanScope =
      "https://www.googleapis.com/auth/ndev.cloudman";

  /// View your Google Cloud Platform management resources and deployment status
  /// information
  static const NdevCloudmanReadonlyScope =
      "https://www.googleapis.com/auth/ndev.cloudman.readonly";

  final commons.ApiRequester _requester;

  DeploymentsResourceApi get deployments =>
      new DeploymentsResourceApi(_requester);
  ManifestsResourceApi get manifests => new ManifestsResourceApi(_requester);
  OperationsResourceApi get operations => new OperationsResourceApi(_requester);
  ResourcesResourceApi get resources => new ResourcesResourceApi(_requester);
  TypesResourceApi get types => new TypesResourceApi(_requester);

  DeploymentmanagerApi(http.Client client,
      {core.String rootUrl = "https://www.googleapis.com/",
      core.String servicePath = "deploymentmanager/v2/projects/"})
      : _requester =
            new commons.ApiRequester(client, rootUrl, servicePath, USER_AGENT);
}

class DeploymentsResourceApi {
  final commons.ApiRequester _requester;

  DeploymentsResourceApi(commons.ApiRequester client) : _requester = client;

  /// Cancels and removes the preview currently associated with the deployment.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [project] - The project ID for this request.
  /// Value must have pattern
  /// "(?:(?:[-a-z0-9]{1,63}\.)*(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?):)?(?:[0-9]{1,19}|(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?))".
  ///
  /// [deployment] - The name of the deployment for this request.
  /// Value must have pattern "[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?".
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
  async.Future<Operation> cancelPreview(DeploymentsCancelPreviewRequest request,
      core.String project, core.String deployment,
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
    if (project == null) {
      throw new core.ArgumentError("Parameter project is required.");
    }
    if (deployment == null) {
      throw new core.ArgumentError("Parameter deployment is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = commons.Escaper.ecapeVariable('$project') +
        '/global/deployments/' +
        commons.Escaper.ecapeVariable('$deployment') +
        '/cancelPreview';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Operation.fromJson(data));
  }

  /// Deletes a deployment and all of the resources in the deployment.
  ///
  /// Request parameters:
  ///
  /// [project] - The project ID for this request.
  /// Value must have pattern
  /// "(?:(?:[-a-z0-9]{1,63}\.)*(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?):)?(?:[0-9]{1,19}|(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?))".
  ///
  /// [deployment] - The name of the deployment for this request.
  ///
  /// [deletePolicy] - Sets the policy to use for deleting resources.
  /// Possible string values are:
  /// - "ABANDON"
  /// - "DELETE"
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
  async.Future<Operation> delete(core.String project, core.String deployment,
      {core.String deletePolicy, core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (project == null) {
      throw new core.ArgumentError("Parameter project is required.");
    }
    if (deployment == null) {
      throw new core.ArgumentError("Parameter deployment is required.");
    }
    if (deletePolicy != null) {
      _queryParams["deletePolicy"] = [deletePolicy];
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = commons.Escaper.ecapeVariable('$project') +
        '/global/deployments/' +
        commons.Escaper.ecapeVariable('$deployment');

    var _response = _requester.request(_url, "DELETE",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Operation.fromJson(data));
  }

  /// Gets information about a specific deployment.
  ///
  /// Request parameters:
  ///
  /// [project] - The project ID for this request.
  /// Value must have pattern
  /// "(?:(?:[-a-z0-9]{1,63}\.)*(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?):)?(?:[0-9]{1,19}|(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?))".
  ///
  /// [deployment] - The name of the deployment for this request.
  /// Value must have pattern "[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?".
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
  async.Future<Deployment> get(core.String project, core.String deployment,
      {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (project == null) {
      throw new core.ArgumentError("Parameter project is required.");
    }
    if (deployment == null) {
      throw new core.ArgumentError("Parameter deployment is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = commons.Escaper.ecapeVariable('$project') +
        '/global/deployments/' +
        commons.Escaper.ecapeVariable('$deployment');

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Deployment.fromJson(data));
  }

  /// Gets the access control policy for a resource. May be empty if no such
  /// policy or resource exists.
  ///
  /// Request parameters:
  ///
  /// [project] - Project ID for this request.
  /// Value must have pattern
  /// "(?:(?:[-a-z0-9]{1,63}\.)*(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?):)?(?:[0-9]{1,19}|(?:[a-z0-9](?:[-a-z0-9]{0,61}[a-z0-9])?))".
  ///
  /// [resource] - Name or id of the resource for this request.
  /// Value must have pattern
  /// "[a-z](?:[-a-z0-9_]{0,61}[a-z0-9])?|[1-9][0-9]{0,19}".
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
  async.Future<Policy> getIamPolicy(core.String project, core.String resource,
      {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (project == null) {
      throw new core.ArgumentError("Parameter project is required.");
    }
    if (resource == null) {
      throw new core.ArgumentError("Parameter resource is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = commons.Escaper.ecapeVariable('$project') +
        '/global/deployments/' +
        commons.Escaper.ecapeVariable('$resource') +
        '/getIamPolicy';

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Policy.fromJson(data));
  }

  /// Creates a deployment and all of the resources described by the deployment
  /// manifest.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [project] - The project ID for this request.
  /// Value must have pattern
  /// "(?:(?:[-a-z0-9]{1,63}\.)*(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?):)?(?:[0-9]{1,19}|(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?))".
  ///
  /// [createPolicy] - Sets the policy to use for creating new resources.
  /// Possible string values are:
  /// - "ACQUIRE"
  /// - "CREATE_OR_ACQUIRE"
  ///
  /// [preview] - If set to true, creates a deployment and creates "shell"
  /// resources but does not actually instantiate these resources. This allows
  /// you to preview what your deployment looks like. After previewing a
  /// deployment, you can deploy your resources by making a request with the
  /// update() method or you can use the cancelPreview() method to cancel the
  /// preview altogether. Note that the deployment will still exist after you
  /// cancel the preview and you must separately delete this deployment if you
  /// want to remove it.
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
  async.Future<Operation> insert(Deployment request, core.String project,
      {core.String createPolicy, core.bool preview, core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (request != null) {
      _body = convert.json.encode((request).toJson());
    }
    if (project == null) {
      throw new core.ArgumentError("Parameter project is required.");
    }
    if (createPolicy != null) {
      _queryParams["createPolicy"] = [createPolicy];
    }
    if (preview != null) {
      _queryParams["preview"] = ["${preview}"];
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = commons.Escaper.ecapeVariable('$project') + '/global/deployments';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Operation.fromJson(data));
  }

  /// Lists all deployments for a given project.
  ///
  /// Request parameters:
  ///
  /// [project] - The project ID for this request.
  /// Value must have pattern
  /// "(?:(?:[-a-z0-9]{1,63}\.)*(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?):)?(?:[0-9]{1,19}|(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?))".
  ///
  /// [filter] - A filter expression that filters resources listed in the
  /// response. The expression must specify the field name, a comparison
  /// operator, and the value that you want to use for filtering. The value must
  /// be a string, a number, or a boolean. The comparison operator must be
  /// either =, !=, >, or <.
  ///
  /// For example, if you are filtering Compute Engine instances, you can
  /// exclude instances named example-instance by specifying name !=
  /// example-instance.
  ///
  /// You can also filter nested fields. For example, you could specify
  /// scheduling.automaticRestart = false to include instances only if they are
  /// not scheduled for automatic restarts. You can use filtering on nested
  /// fields to filter based on resource labels.
  ///
  /// To filter on multiple expressions, provide each separate expression within
  /// parentheses. For example, (scheduling.automaticRestart = true)
  /// (cpuPlatform = "Intel Skylake"). By default, each expression is an AND
  /// expression. However, you can include AND and OR expressions explicitly.
  /// For example, (cpuPlatform = "Intel Skylake") OR (cpuPlatform = "Intel
  /// Broadwell") AND (scheduling.automaticRestart = true).
  ///
  /// [maxResults] - The maximum number of results per page that should be
  /// returned. If the number of available results is larger than maxResults,
  /// Compute Engine returns a nextPageToken that can be used to get the next
  /// page of results in subsequent list requests. Acceptable values are 0 to
  /// 500, inclusive. (Default: 500)
  ///
  /// [orderBy] - Sorts list results by a certain order. By default, results are
  /// returned in alphanumerical order based on the resource name.
  ///
  /// You can also sort results in descending order based on the creation
  /// timestamp using orderBy="creationTimestamp desc". This sorts results based
  /// on the creationTimestamp field in reverse chronological order (newest
  /// result first). Use this to sort resources like operations so that the
  /// newest operation is returned first.
  ///
  /// Currently, only sorting by name or creationTimestamp desc is supported.
  ///
  /// [pageToken] - Specifies a page token to use. Set pageToken to the
  /// nextPageToken returned by a previous list request to get the next page of
  /// results.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [DeploymentsListResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<DeploymentsListResponse> list(core.String project,
      {core.String filter,
      core.int maxResults,
      core.String orderBy,
      core.String pageToken,
      core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (project == null) {
      throw new core.ArgumentError("Parameter project is required.");
    }
    if (filter != null) {
      _queryParams["filter"] = [filter];
    }
    if (maxResults != null) {
      _queryParams["maxResults"] = ["${maxResults}"];
    }
    if (orderBy != null) {
      _queryParams["orderBy"] = [orderBy];
    }
    if (pageToken != null) {
      _queryParams["pageToken"] = [pageToken];
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = commons.Escaper.ecapeVariable('$project') + '/global/deployments';

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new DeploymentsListResponse.fromJson(data));
  }

  /// Updates a deployment and all of the resources described by the deployment
  /// manifest. This method supports patch semantics.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [project] - The project ID for this request.
  /// Value must have pattern
  /// "(?:(?:[-a-z0-9]{1,63}\.)*(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?):)?(?:[0-9]{1,19}|(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?))".
  ///
  /// [deployment] - The name of the deployment for this request.
  /// Value must have pattern "[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?".
  ///
  /// [createPolicy] - Sets the policy to use for creating new resources.
  /// Possible string values are:
  /// - "ACQUIRE"
  /// - "CREATE_OR_ACQUIRE"
  ///
  /// [deletePolicy] - Sets the policy to use for deleting resources.
  /// Possible string values are:
  /// - "ABANDON"
  /// - "DELETE"
  ///
  /// [preview] - If set to true, updates the deployment and creates and updates
  /// the "shell" resources but does not actually alter or instantiate these
  /// resources. This allows you to preview what your deployment will look like.
  /// You can use this intent to preview how an update would affect your
  /// deployment. You must provide a target.config with a configuration if this
  /// is set to true. After previewing a deployment, you can deploy your
  /// resources by making a request with the update() or you can cancelPreview()
  /// to remove the preview altogether. Note that the deployment will still
  /// exist after you cancel the preview and you must separately delete this
  /// deployment if you want to remove it.
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
      Deployment request, core.String project, core.String deployment,
      {core.String createPolicy,
      core.String deletePolicy,
      core.bool preview,
      core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (request != null) {
      _body = convert.json.encode((request).toJson());
    }
    if (project == null) {
      throw new core.ArgumentError("Parameter project is required.");
    }
    if (deployment == null) {
      throw new core.ArgumentError("Parameter deployment is required.");
    }
    if (createPolicy != null) {
      _queryParams["createPolicy"] = [createPolicy];
    }
    if (deletePolicy != null) {
      _queryParams["deletePolicy"] = [deletePolicy];
    }
    if (preview != null) {
      _queryParams["preview"] = ["${preview}"];
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = commons.Escaper.ecapeVariable('$project') +
        '/global/deployments/' +
        commons.Escaper.ecapeVariable('$deployment');

    var _response = _requester.request(_url, "PATCH",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Operation.fromJson(data));
  }

  /// Sets the access control policy on the specified resource. Replaces any
  /// existing policy.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [project] - Project ID for this request.
  /// Value must have pattern
  /// "(?:(?:[-a-z0-9]{1,63}\.)*(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?):)?(?:[0-9]{1,19}|(?:[a-z0-9](?:[-a-z0-9]{0,61}[a-z0-9])?))".
  ///
  /// [resource] - Name or id of the resource for this request.
  /// Value must have pattern
  /// "[a-z](?:[-a-z0-9_]{0,61}[a-z0-9])?|[1-9][0-9]{0,19}".
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
      GlobalSetPolicyRequest request, core.String project, core.String resource,
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
    if (project == null) {
      throw new core.ArgumentError("Parameter project is required.");
    }
    if (resource == null) {
      throw new core.ArgumentError("Parameter resource is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = commons.Escaper.ecapeVariable('$project') +
        '/global/deployments/' +
        commons.Escaper.ecapeVariable('$resource') +
        '/setIamPolicy';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Policy.fromJson(data));
  }

  /// Stops an ongoing operation. This does not roll back any work that has
  /// already been completed, but prevents any new work from being started.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [project] - The project ID for this request.
  /// Value must have pattern
  /// "(?:(?:[-a-z0-9]{1,63}\.)*(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?):)?(?:[0-9]{1,19}|(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?))".
  ///
  /// [deployment] - The name of the deployment for this request.
  /// Value must have pattern "[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?".
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
  async.Future<Operation> stop(DeploymentsStopRequest request,
      core.String project, core.String deployment,
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
    if (project == null) {
      throw new core.ArgumentError("Parameter project is required.");
    }
    if (deployment == null) {
      throw new core.ArgumentError("Parameter deployment is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = commons.Escaper.ecapeVariable('$project') +
        '/global/deployments/' +
        commons.Escaper.ecapeVariable('$deployment') +
        '/stop';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Operation.fromJson(data));
  }

  /// Returns permissions that a caller has on the specified resource.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [project] - Project ID for this request.
  /// Value must have pattern
  /// "(?:(?:[-a-z0-9]{1,63}\.)*(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?):)?(?:[0-9]{1,19}|(?:[a-z0-9](?:[-a-z0-9]{0,61}[a-z0-9])?))".
  ///
  /// [resource] - Name or id of the resource for this request.
  /// Value must have pattern
  /// "[a-z](?:[-a-z0-9_]{0,61}[a-z0-9])?|[1-9][0-9]{0,19}".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [TestPermissionsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<TestPermissionsResponse> testIamPermissions(
      TestPermissionsRequest request, core.String project, core.String resource,
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
    if (project == null) {
      throw new core.ArgumentError("Parameter project is required.");
    }
    if (resource == null) {
      throw new core.ArgumentError("Parameter resource is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = commons.Escaper.ecapeVariable('$project') +
        '/global/deployments/' +
        commons.Escaper.ecapeVariable('$resource') +
        '/testIamPermissions';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new TestPermissionsResponse.fromJson(data));
  }

  /// Updates a deployment and all of the resources described by the deployment
  /// manifest.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [project] - The project ID for this request.
  /// Value must have pattern
  /// "(?:(?:[-a-z0-9]{1,63}\.)*(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?):)?(?:[0-9]{1,19}|(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?))".
  ///
  /// [deployment] - The name of the deployment for this request.
  /// Value must have pattern "[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?".
  ///
  /// [createPolicy] - Sets the policy to use for creating new resources.
  /// Possible string values are:
  /// - "ACQUIRE"
  /// - "CREATE_OR_ACQUIRE"
  ///
  /// [deletePolicy] - Sets the policy to use for deleting resources.
  /// Possible string values are:
  /// - "ABANDON"
  /// - "DELETE"
  ///
  /// [preview] - If set to true, updates the deployment and creates and updates
  /// the "shell" resources but does not actually alter or instantiate these
  /// resources. This allows you to preview what your deployment will look like.
  /// You can use this intent to preview how an update would affect your
  /// deployment. You must provide a target.config with a configuration if this
  /// is set to true. After previewing a deployment, you can deploy your
  /// resources by making a request with the update() or you can cancelPreview()
  /// to remove the preview altogether. Note that the deployment will still
  /// exist after you cancel the preview and you must separately delete this
  /// deployment if you want to remove it.
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
  async.Future<Operation> update(
      Deployment request, core.String project, core.String deployment,
      {core.String createPolicy,
      core.String deletePolicy,
      core.bool preview,
      core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (request != null) {
      _body = convert.json.encode((request).toJson());
    }
    if (project == null) {
      throw new core.ArgumentError("Parameter project is required.");
    }
    if (deployment == null) {
      throw new core.ArgumentError("Parameter deployment is required.");
    }
    if (createPolicy != null) {
      _queryParams["createPolicy"] = [createPolicy];
    }
    if (deletePolicy != null) {
      _queryParams["deletePolicy"] = [deletePolicy];
    }
    if (preview != null) {
      _queryParams["preview"] = ["${preview}"];
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = commons.Escaper.ecapeVariable('$project') +
        '/global/deployments/' +
        commons.Escaper.ecapeVariable('$deployment');

    var _response = _requester.request(_url, "PUT",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Operation.fromJson(data));
  }
}

class ManifestsResourceApi {
  final commons.ApiRequester _requester;

  ManifestsResourceApi(commons.ApiRequester client) : _requester = client;

  /// Gets information about a specific manifest.
  ///
  /// Request parameters:
  ///
  /// [project] - The project ID for this request.
  /// Value must have pattern
  /// "(?:(?:[-a-z0-9]{1,63}\.)*(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?):)?(?:[0-9]{1,19}|(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?))".
  ///
  /// [deployment] - The name of the deployment for this request.
  /// Value must have pattern "[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?".
  ///
  /// [manifest] - The name of the manifest for this request.
  /// Value must have pattern "[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Manifest].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Manifest> get(
      core.String project, core.String deployment, core.String manifest,
      {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (project == null) {
      throw new core.ArgumentError("Parameter project is required.");
    }
    if (deployment == null) {
      throw new core.ArgumentError("Parameter deployment is required.");
    }
    if (manifest == null) {
      throw new core.ArgumentError("Parameter manifest is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = commons.Escaper.ecapeVariable('$project') +
        '/global/deployments/' +
        commons.Escaper.ecapeVariable('$deployment') +
        '/manifests/' +
        commons.Escaper.ecapeVariable('$manifest');

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Manifest.fromJson(data));
  }

  /// Lists all manifests for a given deployment.
  ///
  /// Request parameters:
  ///
  /// [project] - The project ID for this request.
  /// Value must have pattern
  /// "(?:(?:[-a-z0-9]{1,63}\.)*(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?):)?(?:[0-9]{1,19}|(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?))".
  ///
  /// [deployment] - The name of the deployment for this request.
  /// Value must have pattern "[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?".
  ///
  /// [filter] - A filter expression that filters resources listed in the
  /// response. The expression must specify the field name, a comparison
  /// operator, and the value that you want to use for filtering. The value must
  /// be a string, a number, or a boolean. The comparison operator must be
  /// either =, !=, >, or <.
  ///
  /// For example, if you are filtering Compute Engine instances, you can
  /// exclude instances named example-instance by specifying name !=
  /// example-instance.
  ///
  /// You can also filter nested fields. For example, you could specify
  /// scheduling.automaticRestart = false to include instances only if they are
  /// not scheduled for automatic restarts. You can use filtering on nested
  /// fields to filter based on resource labels.
  ///
  /// To filter on multiple expressions, provide each separate expression within
  /// parentheses. For example, (scheduling.automaticRestart = true)
  /// (cpuPlatform = "Intel Skylake"). By default, each expression is an AND
  /// expression. However, you can include AND and OR expressions explicitly.
  /// For example, (cpuPlatform = "Intel Skylake") OR (cpuPlatform = "Intel
  /// Broadwell") AND (scheduling.automaticRestart = true).
  ///
  /// [maxResults] - The maximum number of results per page that should be
  /// returned. If the number of available results is larger than maxResults,
  /// Compute Engine returns a nextPageToken that can be used to get the next
  /// page of results in subsequent list requests. Acceptable values are 0 to
  /// 500, inclusive. (Default: 500)
  ///
  /// [orderBy] - Sorts list results by a certain order. By default, results are
  /// returned in alphanumerical order based on the resource name.
  ///
  /// You can also sort results in descending order based on the creation
  /// timestamp using orderBy="creationTimestamp desc". This sorts results based
  /// on the creationTimestamp field in reverse chronological order (newest
  /// result first). Use this to sort resources like operations so that the
  /// newest operation is returned first.
  ///
  /// Currently, only sorting by name or creationTimestamp desc is supported.
  ///
  /// [pageToken] - Specifies a page token to use. Set pageToken to the
  /// nextPageToken returned by a previous list request to get the next page of
  /// results.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ManifestsListResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ManifestsListResponse> list(
      core.String project, core.String deployment,
      {core.String filter,
      core.int maxResults,
      core.String orderBy,
      core.String pageToken,
      core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (project == null) {
      throw new core.ArgumentError("Parameter project is required.");
    }
    if (deployment == null) {
      throw new core.ArgumentError("Parameter deployment is required.");
    }
    if (filter != null) {
      _queryParams["filter"] = [filter];
    }
    if (maxResults != null) {
      _queryParams["maxResults"] = ["${maxResults}"];
    }
    if (orderBy != null) {
      _queryParams["orderBy"] = [orderBy];
    }
    if (pageToken != null) {
      _queryParams["pageToken"] = [pageToken];
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = commons.Escaper.ecapeVariable('$project') +
        '/global/deployments/' +
        commons.Escaper.ecapeVariable('$deployment') +
        '/manifests';

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new ManifestsListResponse.fromJson(data));
  }
}

class OperationsResourceApi {
  final commons.ApiRequester _requester;

  OperationsResourceApi(commons.ApiRequester client) : _requester = client;

  /// Gets information about a specific operation.
  ///
  /// Request parameters:
  ///
  /// [project] - The project ID for this request.
  /// Value must have pattern
  /// "(?:(?:[-a-z0-9]{1,63}\.)*(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?):)?(?:[0-9]{1,19}|(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?))".
  ///
  /// [operation] - The name of the operation for this request.
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
  async.Future<Operation> get(core.String project, core.String operation,
      {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (project == null) {
      throw new core.ArgumentError("Parameter project is required.");
    }
    if (operation == null) {
      throw new core.ArgumentError("Parameter operation is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = commons.Escaper.ecapeVariable('$project') +
        '/global/operations/' +
        commons.Escaper.ecapeVariable('$operation');

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Operation.fromJson(data));
  }

  /// Lists all operations for a project.
  ///
  /// Request parameters:
  ///
  /// [project] - The project ID for this request.
  /// Value must have pattern
  /// "(?:(?:[-a-z0-9]{1,63}\.)*(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?):)?(?:[0-9]{1,19}|(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?))".
  ///
  /// [filter] - A filter expression that filters resources listed in the
  /// response. The expression must specify the field name, a comparison
  /// operator, and the value that you want to use for filtering. The value must
  /// be a string, a number, or a boolean. The comparison operator must be
  /// either =, !=, >, or <.
  ///
  /// For example, if you are filtering Compute Engine instances, you can
  /// exclude instances named example-instance by specifying name !=
  /// example-instance.
  ///
  /// You can also filter nested fields. For example, you could specify
  /// scheduling.automaticRestart = false to include instances only if they are
  /// not scheduled for automatic restarts. You can use filtering on nested
  /// fields to filter based on resource labels.
  ///
  /// To filter on multiple expressions, provide each separate expression within
  /// parentheses. For example, (scheduling.automaticRestart = true)
  /// (cpuPlatform = "Intel Skylake"). By default, each expression is an AND
  /// expression. However, you can include AND and OR expressions explicitly.
  /// For example, (cpuPlatform = "Intel Skylake") OR (cpuPlatform = "Intel
  /// Broadwell") AND (scheduling.automaticRestart = true).
  ///
  /// [maxResults] - The maximum number of results per page that should be
  /// returned. If the number of available results is larger than maxResults,
  /// Compute Engine returns a nextPageToken that can be used to get the next
  /// page of results in subsequent list requests. Acceptable values are 0 to
  /// 500, inclusive. (Default: 500)
  ///
  /// [orderBy] - Sorts list results by a certain order. By default, results are
  /// returned in alphanumerical order based on the resource name.
  ///
  /// You can also sort results in descending order based on the creation
  /// timestamp using orderBy="creationTimestamp desc". This sorts results based
  /// on the creationTimestamp field in reverse chronological order (newest
  /// result first). Use this to sort resources like operations so that the
  /// newest operation is returned first.
  ///
  /// Currently, only sorting by name or creationTimestamp desc is supported.
  ///
  /// [pageToken] - Specifies a page token to use. Set pageToken to the
  /// nextPageToken returned by a previous list request to get the next page of
  /// results.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [OperationsListResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<OperationsListResponse> list(core.String project,
      {core.String filter,
      core.int maxResults,
      core.String orderBy,
      core.String pageToken,
      core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (project == null) {
      throw new core.ArgumentError("Parameter project is required.");
    }
    if (filter != null) {
      _queryParams["filter"] = [filter];
    }
    if (maxResults != null) {
      _queryParams["maxResults"] = ["${maxResults}"];
    }
    if (orderBy != null) {
      _queryParams["orderBy"] = [orderBy];
    }
    if (pageToken != null) {
      _queryParams["pageToken"] = [pageToken];
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = commons.Escaper.ecapeVariable('$project') + '/global/operations';

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new OperationsListResponse.fromJson(data));
  }
}

class ResourcesResourceApi {
  final commons.ApiRequester _requester;

  ResourcesResourceApi(commons.ApiRequester client) : _requester = client;

  /// Gets information about a single resource.
  ///
  /// Request parameters:
  ///
  /// [project] - The project ID for this request.
  /// Value must have pattern
  /// "(?:(?:[-a-z0-9]{1,63}\.)*(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?):)?(?:[0-9]{1,19}|(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?))".
  ///
  /// [deployment] - The name of the deployment for this request.
  /// Value must have pattern "[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?".
  ///
  /// [resource] - The name of the resource for this request.
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
      core.String project, core.String deployment, core.String resource,
      {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (project == null) {
      throw new core.ArgumentError("Parameter project is required.");
    }
    if (deployment == null) {
      throw new core.ArgumentError("Parameter deployment is required.");
    }
    if (resource == null) {
      throw new core.ArgumentError("Parameter resource is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = commons.Escaper.ecapeVariable('$project') +
        '/global/deployments/' +
        commons.Escaper.ecapeVariable('$deployment') +
        '/resources/' +
        commons.Escaper.ecapeVariable('$resource');

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Resource.fromJson(data));
  }

  /// Lists all resources in a given deployment.
  ///
  /// Request parameters:
  ///
  /// [project] - The project ID for this request.
  /// Value must have pattern
  /// "(?:(?:[-a-z0-9]{1,63}\.)*(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?):)?(?:[0-9]{1,19}|(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?))".
  ///
  /// [deployment] - The name of the deployment for this request.
  /// Value must have pattern "[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?".
  ///
  /// [filter] - A filter expression that filters resources listed in the
  /// response. The expression must specify the field name, a comparison
  /// operator, and the value that you want to use for filtering. The value must
  /// be a string, a number, or a boolean. The comparison operator must be
  /// either =, !=, >, or <.
  ///
  /// For example, if you are filtering Compute Engine instances, you can
  /// exclude instances named example-instance by specifying name !=
  /// example-instance.
  ///
  /// You can also filter nested fields. For example, you could specify
  /// scheduling.automaticRestart = false to include instances only if they are
  /// not scheduled for automatic restarts. You can use filtering on nested
  /// fields to filter based on resource labels.
  ///
  /// To filter on multiple expressions, provide each separate expression within
  /// parentheses. For example, (scheduling.automaticRestart = true)
  /// (cpuPlatform = "Intel Skylake"). By default, each expression is an AND
  /// expression. However, you can include AND and OR expressions explicitly.
  /// For example, (cpuPlatform = "Intel Skylake") OR (cpuPlatform = "Intel
  /// Broadwell") AND (scheduling.automaticRestart = true).
  ///
  /// [maxResults] - The maximum number of results per page that should be
  /// returned. If the number of available results is larger than maxResults,
  /// Compute Engine returns a nextPageToken that can be used to get the next
  /// page of results in subsequent list requests. Acceptable values are 0 to
  /// 500, inclusive. (Default: 500)
  ///
  /// [orderBy] - Sorts list results by a certain order. By default, results are
  /// returned in alphanumerical order based on the resource name.
  ///
  /// You can also sort results in descending order based on the creation
  /// timestamp using orderBy="creationTimestamp desc". This sorts results based
  /// on the creationTimestamp field in reverse chronological order (newest
  /// result first). Use this to sort resources like operations so that the
  /// newest operation is returned first.
  ///
  /// Currently, only sorting by name or creationTimestamp desc is supported.
  ///
  /// [pageToken] - Specifies a page token to use. Set pageToken to the
  /// nextPageToken returned by a previous list request to get the next page of
  /// results.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ResourcesListResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ResourcesListResponse> list(
      core.String project, core.String deployment,
      {core.String filter,
      core.int maxResults,
      core.String orderBy,
      core.String pageToken,
      core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (project == null) {
      throw new core.ArgumentError("Parameter project is required.");
    }
    if (deployment == null) {
      throw new core.ArgumentError("Parameter deployment is required.");
    }
    if (filter != null) {
      _queryParams["filter"] = [filter];
    }
    if (maxResults != null) {
      _queryParams["maxResults"] = ["${maxResults}"];
    }
    if (orderBy != null) {
      _queryParams["orderBy"] = [orderBy];
    }
    if (pageToken != null) {
      _queryParams["pageToken"] = [pageToken];
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = commons.Escaper.ecapeVariable('$project') +
        '/global/deployments/' +
        commons.Escaper.ecapeVariable('$deployment') +
        '/resources';

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new ResourcesListResponse.fromJson(data));
  }
}

class TypesResourceApi {
  final commons.ApiRequester _requester;

  TypesResourceApi(commons.ApiRequester client) : _requester = client;

  /// Lists all resource types for Deployment Manager.
  ///
  /// Request parameters:
  ///
  /// [project] - The project ID for this request.
  /// Value must have pattern
  /// "(?:(?:[-a-z0-9]{1,63}\.)*(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?):)?(?:[0-9]{1,19}|(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?))".
  ///
  /// [filter] - A filter expression that filters resources listed in the
  /// response. The expression must specify the field name, a comparison
  /// operator, and the value that you want to use for filtering. The value must
  /// be a string, a number, or a boolean. The comparison operator must be
  /// either =, !=, >, or <.
  ///
  /// For example, if you are filtering Compute Engine instances, you can
  /// exclude instances named example-instance by specifying name !=
  /// example-instance.
  ///
  /// You can also filter nested fields. For example, you could specify
  /// scheduling.automaticRestart = false to include instances only if they are
  /// not scheduled for automatic restarts. You can use filtering on nested
  /// fields to filter based on resource labels.
  ///
  /// To filter on multiple expressions, provide each separate expression within
  /// parentheses. For example, (scheduling.automaticRestart = true)
  /// (cpuPlatform = "Intel Skylake"). By default, each expression is an AND
  /// expression. However, you can include AND and OR expressions explicitly.
  /// For example, (cpuPlatform = "Intel Skylake") OR (cpuPlatform = "Intel
  /// Broadwell") AND (scheduling.automaticRestart = true).
  ///
  /// [maxResults] - The maximum number of results per page that should be
  /// returned. If the number of available results is larger than maxResults,
  /// Compute Engine returns a nextPageToken that can be used to get the next
  /// page of results in subsequent list requests. Acceptable values are 0 to
  /// 500, inclusive. (Default: 500)
  ///
  /// [orderBy] - Sorts list results by a certain order. By default, results are
  /// returned in alphanumerical order based on the resource name.
  ///
  /// You can also sort results in descending order based on the creation
  /// timestamp using orderBy="creationTimestamp desc". This sorts results based
  /// on the creationTimestamp field in reverse chronological order (newest
  /// result first). Use this to sort resources like operations so that the
  /// newest operation is returned first.
  ///
  /// Currently, only sorting by name or creationTimestamp desc is supported.
  ///
  /// [pageToken] - Specifies a page token to use. Set pageToken to the
  /// nextPageToken returned by a previous list request to get the next page of
  /// results.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [TypesListResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<TypesListResponse> list(core.String project,
      {core.String filter,
      core.int maxResults,
      core.String orderBy,
      core.String pageToken,
      core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (project == null) {
      throw new core.ArgumentError("Parameter project is required.");
    }
    if (filter != null) {
      _queryParams["filter"] = [filter];
    }
    if (maxResults != null) {
      _queryParams["maxResults"] = ["${maxResults}"];
    }
    if (orderBy != null) {
      _queryParams["orderBy"] = [orderBy];
    }
    if (pageToken != null) {
      _queryParams["pageToken"] = [pageToken];
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = commons.Escaper.ecapeVariable('$project') + '/global/types';

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new TypesListResponse.fromJson(data));
  }
}

/// Specifies the audit configuration for a service. The configuration
/// determines which permission types are logged, and what identities, if any,
/// are exempted from logging. An AuditConfig must have one or more
/// AuditLogConfigs.
///
/// If there are AuditConfigs for both `allServices` and a specific service, the
/// union of the two AuditConfigs is used for that service: the log_types
/// specified in each AuditConfig are enabled, and the exempted_members in each
/// AuditLogConfig are exempted.
///
/// Example Policy with multiple AuditConfigs:
///
/// { "audit_configs": [ { "service": "allServices" "audit_log_configs": [ {
/// "log_type": "DATA_READ", "exempted_members": [ "user:foo@gmail.com" ] }, {
/// "log_type": "DATA_WRITE", }, { "log_type": "ADMIN_READ", } ] }, { "service":
/// "fooservice.googleapis.com" "audit_log_configs": [ { "log_type":
/// "DATA_READ", }, { "log_type": "DATA_WRITE", "exempted_members": [
/// "user:bar@gmail.com" ] } ] } ] }
///
/// For fooservice, this policy enables DATA_READ, DATA_WRITE and ADMIN_READ
/// logging. It also exempts foo@gmail.com from DATA_READ logging, and
/// bar@gmail.com from DATA_WRITE logging.
class AuditConfig {
  /// The configuration for logging of each type of permission.
  core.List<AuditLogConfig> auditLogConfigs;
  core.List<core.String> exemptedMembers;

  /// Specifies a service that will be enabled for audit logging. For example,
  /// `storage.googleapis.com`, `cloudsql.googleapis.com`. `allServices` is a
  /// special value that covers all services.
  core.String service;

  AuditConfig();

  AuditConfig.fromJson(core.Map _json) {
    if (_json.containsKey("auditLogConfigs")) {
      auditLogConfigs = (_json["auditLogConfigs"] as core.List)
          .map<AuditLogConfig>((value) => new AuditLogConfig.fromJson(value))
          .toList();
    }
    if (_json.containsKey("exemptedMembers")) {
      exemptedMembers =
          (_json["exemptedMembers"] as core.List).cast<core.String>();
    }
    if (_json.containsKey("service")) {
      service = _json["service"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (auditLogConfigs != null) {
      _json["auditLogConfigs"] =
          auditLogConfigs.map((value) => (value).toJson()).toList();
    }
    if (exemptedMembers != null) {
      _json["exemptedMembers"] = exemptedMembers;
    }
    if (service != null) {
      _json["service"] = service;
    }
    return _json;
  }
}

/// Provides the configuration for logging a type of permissions. Example:
///
/// { "audit_log_configs": [ { "log_type": "DATA_READ", "exempted_members": [
/// "user:foo@gmail.com" ] }, { "log_type": "DATA_WRITE", } ] }
///
/// This enables 'DATA_READ' and 'DATA_WRITE' logging, while exempting
/// foo@gmail.com from DATA_READ logging.
class AuditLogConfig {
  /// Specifies the identities that do not cause logging for this type of
  /// permission. Follows the same format of [Binding.members][].
  core.List<core.String> exemptedMembers;

  /// The log type that this config enables.
  core.String logType;

  AuditLogConfig();

  AuditLogConfig.fromJson(core.Map _json) {
    if (_json.containsKey("exemptedMembers")) {
      exemptedMembers =
          (_json["exemptedMembers"] as core.List).cast<core.String>();
    }
    if (_json.containsKey("logType")) {
      logType = _json["logType"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (exemptedMembers != null) {
      _json["exemptedMembers"] = exemptedMembers;
    }
    if (logType != null) {
      _json["logType"] = logType;
    }
    return _json;
  }
}

/// Authorization-related information used by Cloud Audit Logging.
class AuthorizationLoggingOptions {
  /// The type of the permission that was checked.
  core.String permissionType;

  AuthorizationLoggingOptions();

  AuthorizationLoggingOptions.fromJson(core.Map _json) {
    if (_json.containsKey("permissionType")) {
      permissionType = _json["permissionType"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (permissionType != null) {
      _json["permissionType"] = permissionType;
    }
    return _json;
  }
}

/// Associates `members` with a `role`.
class Binding {
  /// Unimplemented. The condition that is associated with this binding. NOTE:
  /// an unsatisfied condition will not allow user access via current binding.
  /// Different bindings, including their conditions, are examined
  /// independently.
  Expr condition;

  /// Specifies the identities requesting access for a Cloud Platform resource.
  /// `members` can have the following values:
  ///
  /// * `allUsers`: A special identifier that represents anyone who is on the
  /// internet; with or without a Google account.
  ///
  /// * `allAuthenticatedUsers`: A special identifier that represents anyone who
  /// is authenticated with a Google account or a service account.
  ///
  /// * `user:{emailid}`: An email address that represents a specific Google
  /// account. For example, `alice@gmail.com` .
  ///
  ///
  ///
  /// * `serviceAccount:{emailid}`: An email address that represents a service
  /// account. For example, `my-other-app@appspot.gserviceaccount.com`.
  ///
  /// * `group:{emailid}`: An email address that represents a Google group. For
  /// example, `admins@example.com`.
  ///
  ///
  ///
  /// * `domain:{domain}`: A Google Apps domain name that represents all the
  /// users of that domain. For example, `google.com` or `example.com`.
  core.List<core.String> members;

  /// Role that is assigned to `members`. For example, `roles/viewer`,
  /// `roles/editor`, or `roles/owner`.
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

/// A condition to be met.
class Condition {
  /// Trusted attributes supplied by the IAM system.
  core.String iam;

  /// An operator to apply the subject with.
  core.String op;

  /// Trusted attributes discharged by the service.
  core.String svc;

  /// Trusted attributes supplied by any service that owns resources and uses
  /// the IAM system for access control.
  core.String sys;

  /// DEPRECATED. Use 'values' instead.
  core.String value;

  /// The objects of the condition. This is mutually exclusive with 'value'.
  core.List<core.String> values;

  Condition();

  Condition.fromJson(core.Map _json) {
    if (_json.containsKey("iam")) {
      iam = _json["iam"];
    }
    if (_json.containsKey("op")) {
      op = _json["op"];
    }
    if (_json.containsKey("svc")) {
      svc = _json["svc"];
    }
    if (_json.containsKey("sys")) {
      sys = _json["sys"];
    }
    if (_json.containsKey("value")) {
      value = _json["value"];
    }
    if (_json.containsKey("values")) {
      values = (_json["values"] as core.List).cast<core.String>();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (iam != null) {
      _json["iam"] = iam;
    }
    if (op != null) {
      _json["op"] = op;
    }
    if (svc != null) {
      _json["svc"] = svc;
    }
    if (sys != null) {
      _json["sys"] = sys;
    }
    if (value != null) {
      _json["value"] = value;
    }
    if (values != null) {
      _json["values"] = values;
    }
    return _json;
  }
}

class ConfigFile {
  /// The contents of the file.
  core.String content;

  ConfigFile();

  ConfigFile.fromJson(core.Map _json) {
    if (_json.containsKey("content")) {
      content = _json["content"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (content != null) {
      _json["content"] = content;
    }
    return _json;
  }
}

class Deployment {
  /// An optional user-provided description of the deployment.
  core.String description;

  /// Provides a fingerprint to use in requests to modify a deployment, such as
  /// update(), stop(), and cancelPreview() requests. A fingerprint is a
  /// randomly generated value that must be provided with update(), stop(), and
  /// cancelPreview() requests to perform optimistic locking. This ensures
  /// optimistic concurrency so that only one request happens at a time.
  ///
  /// The fingerprint is initially generated by Deployment Manager and changes
  /// after every request to modify data. To get the latest fingerprint value,
  /// perform a get() request to a deployment.
  core.String fingerprint;
  core.List<core.int> get fingerprintAsBytes {
    return convert.base64.decode(fingerprint);
  }

  set fingerprintAsBytes(core.List<core.int> _bytes) {
    fingerprint =
        convert.base64.encode(_bytes).replaceAll("/", "_").replaceAll("+", "-");
  }

  core.String id;

  /// Output only. Creation timestamp in RFC3339 text format.
  core.String insertTime;

  /// Map of labels; provided by the client when the resource is created or
  /// updated. Specifically: Label keys must be between 1 and 63 characters long
  /// and must conform to the following regular expression:
  /// [a-z]([-a-z0-9]*[a-z0-9])? Label values must be between 0 and 63
  /// characters long and must conform to the regular expression
  /// ([a-z]([-a-z0-9]*[a-z0-9])?)?
  core.List<DeploymentLabelEntry> labels;

  /// Output only. URL of the manifest representing the last manifest that was
  /// successfully deployed.
  core.String manifest;

  /// Name of the resource; provided by the client when the resource is created.
  /// The name must be 1-63 characters long, and comply with RFC1035.
  /// Specifically, the name must be 1-63 characters long and match the regular
  /// expression [a-z]([-a-z0-9]*[a-z0-9])? which means the first character must
  /// be a lowercase letter, and all following characters must be a dash,
  /// lowercase letter, or digit, except the last character, which cannot be a
  /// dash.
  core.String name;

  /// Output only. The Operation that most recently ran, or is currently
  /// running, on this deployment.
  Operation operation;

  /// Output only. Server defined URL for the resource.
  core.String selfLink;

  /// [Input Only] The parameters that define your deployment, including the
  /// deployment configuration and relevant templates.
  TargetConfiguration target;

  /// Output only. If Deployment Manager is currently updating or previewing an
  /// update to this deployment, the updated configuration appears here.
  DeploymentUpdate update;

  /// Output only. Update timestamp in RFC3339 text format.
  core.String updateTime;

  Deployment();

  Deployment.fromJson(core.Map _json) {
    if (_json.containsKey("description")) {
      description = _json["description"];
    }
    if (_json.containsKey("fingerprint")) {
      fingerprint = _json["fingerprint"];
    }
    if (_json.containsKey("id")) {
      id = _json["id"];
    }
    if (_json.containsKey("insertTime")) {
      insertTime = _json["insertTime"];
    }
    if (_json.containsKey("labels")) {
      labels = (_json["labels"] as core.List)
          .map<DeploymentLabelEntry>(
              (value) => new DeploymentLabelEntry.fromJson(value))
          .toList();
    }
    if (_json.containsKey("manifest")) {
      manifest = _json["manifest"];
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
    if (_json.containsKey("operation")) {
      operation = new Operation.fromJson(_json["operation"]);
    }
    if (_json.containsKey("selfLink")) {
      selfLink = _json["selfLink"];
    }
    if (_json.containsKey("target")) {
      target = new TargetConfiguration.fromJson(_json["target"]);
    }
    if (_json.containsKey("update")) {
      update = new DeploymentUpdate.fromJson(_json["update"]);
    }
    if (_json.containsKey("updateTime")) {
      updateTime = _json["updateTime"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (description != null) {
      _json["description"] = description;
    }
    if (fingerprint != null) {
      _json["fingerprint"] = fingerprint;
    }
    if (id != null) {
      _json["id"] = id;
    }
    if (insertTime != null) {
      _json["insertTime"] = insertTime;
    }
    if (labels != null) {
      _json["labels"] = labels.map((value) => (value).toJson()).toList();
    }
    if (manifest != null) {
      _json["manifest"] = manifest;
    }
    if (name != null) {
      _json["name"] = name;
    }
    if (operation != null) {
      _json["operation"] = (operation).toJson();
    }
    if (selfLink != null) {
      _json["selfLink"] = selfLink;
    }
    if (target != null) {
      _json["target"] = (target).toJson();
    }
    if (update != null) {
      _json["update"] = (update).toJson();
    }
    if (updateTime != null) {
      _json["updateTime"] = updateTime;
    }
    return _json;
  }
}

class DeploymentLabelEntry {
  core.String key;
  core.String value;

  DeploymentLabelEntry();

  DeploymentLabelEntry.fromJson(core.Map _json) {
    if (_json.containsKey("key")) {
      key = _json["key"];
    }
    if (_json.containsKey("value")) {
      value = _json["value"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (key != null) {
      _json["key"] = key;
    }
    if (value != null) {
      _json["value"] = value;
    }
    return _json;
  }
}

class DeploymentUpdate {
  /// Output only. An optional user-provided description of the deployment after
  /// the current update has been applied.
  core.String description;

  /// Output only. Map of labels; provided by the client when the resource is
  /// created or updated. Specifically: Label keys must be between 1 and 63
  /// characters long and must conform to the following regular expression:
  /// [a-z]([-a-z0-9]*[a-z0-9])? Label values must be between 0 and 63
  /// characters long and must conform to the regular expression
  /// ([a-z]([-a-z0-9]*[a-z0-9])?)?
  core.List<DeploymentUpdateLabelEntry> labels;

  /// Output only. URL of the manifest representing the update configuration of
  /// this deployment.
  core.String manifest;

  DeploymentUpdate();

  DeploymentUpdate.fromJson(core.Map _json) {
    if (_json.containsKey("description")) {
      description = _json["description"];
    }
    if (_json.containsKey("labels")) {
      labels = (_json["labels"] as core.List)
          .map<DeploymentUpdateLabelEntry>(
              (value) => new DeploymentUpdateLabelEntry.fromJson(value))
          .toList();
    }
    if (_json.containsKey("manifest")) {
      manifest = _json["manifest"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (description != null) {
      _json["description"] = description;
    }
    if (labels != null) {
      _json["labels"] = labels.map((value) => (value).toJson()).toList();
    }
    if (manifest != null) {
      _json["manifest"] = manifest;
    }
    return _json;
  }
}

class DeploymentUpdateLabelEntry {
  core.String key;
  core.String value;

  DeploymentUpdateLabelEntry();

  DeploymentUpdateLabelEntry.fromJson(core.Map _json) {
    if (_json.containsKey("key")) {
      key = _json["key"];
    }
    if (_json.containsKey("value")) {
      value = _json["value"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (key != null) {
      _json["key"] = key;
    }
    if (value != null) {
      _json["value"] = value;
    }
    return _json;
  }
}

class DeploymentsCancelPreviewRequest {
  /// Specifies a fingerprint for cancelPreview() requests. A fingerprint is a
  /// randomly generated value that must be provided in cancelPreview() requests
  /// to perform optimistic locking. This ensures optimistic concurrency so that
  /// the deployment does not have conflicting requests (e.g. if someone
  /// attempts to make a new update request while another user attempts to
  /// cancel a preview, this would prevent one of the requests).
  ///
  /// The fingerprint is initially generated by Deployment Manager and changes
  /// after every request to modify a deployment. To get the latest fingerprint
  /// value, perform a get() request on the deployment.
  core.String fingerprint;
  core.List<core.int> get fingerprintAsBytes {
    return convert.base64.decode(fingerprint);
  }

  set fingerprintAsBytes(core.List<core.int> _bytes) {
    fingerprint =
        convert.base64.encode(_bytes).replaceAll("/", "_").replaceAll("+", "-");
  }

  DeploymentsCancelPreviewRequest();

  DeploymentsCancelPreviewRequest.fromJson(core.Map _json) {
    if (_json.containsKey("fingerprint")) {
      fingerprint = _json["fingerprint"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (fingerprint != null) {
      _json["fingerprint"] = fingerprint;
    }
    return _json;
  }
}

/// A response containing a partial list of deployments and a page token used to
/// build the next request if the request has been truncated.
class DeploymentsListResponse {
  /// Output only. The deployments contained in this response.
  core.List<Deployment> deployments;

  /// Output only. A token used to continue a truncated list request.
  core.String nextPageToken;

  DeploymentsListResponse();

  DeploymentsListResponse.fromJson(core.Map _json) {
    if (_json.containsKey("deployments")) {
      deployments = (_json["deployments"] as core.List)
          .map<Deployment>((value) => new Deployment.fromJson(value))
          .toList();
    }
    if (_json.containsKey("nextPageToken")) {
      nextPageToken = _json["nextPageToken"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (deployments != null) {
      _json["deployments"] =
          deployments.map((value) => (value).toJson()).toList();
    }
    if (nextPageToken != null) {
      _json["nextPageToken"] = nextPageToken;
    }
    return _json;
  }
}

class DeploymentsStopRequest {
  /// Specifies a fingerprint for stop() requests. A fingerprint is a randomly
  /// generated value that must be provided in stop() requests to perform
  /// optimistic locking. This ensures optimistic concurrency so that the
  /// deployment does not have conflicting requests (e.g. if someone attempts to
  /// make a new update request while another user attempts to stop an ongoing
  /// update request, this would prevent a collision).
  ///
  /// The fingerprint is initially generated by Deployment Manager and changes
  /// after every request to modify a deployment. To get the latest fingerprint
  /// value, perform a get() request on the deployment.
  core.String fingerprint;
  core.List<core.int> get fingerprintAsBytes {
    return convert.base64.decode(fingerprint);
  }

  set fingerprintAsBytes(core.List<core.int> _bytes) {
    fingerprint =
        convert.base64.encode(_bytes).replaceAll("/", "_").replaceAll("+", "-");
  }

  DeploymentsStopRequest();

  DeploymentsStopRequest.fromJson(core.Map _json) {
    if (_json.containsKey("fingerprint")) {
      fingerprint = _json["fingerprint"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (fingerprint != null) {
      _json["fingerprint"] = fingerprint;
    }
    return _json;
  }
}

/// Represents an expression text. Example:
///
/// title: "User account presence" description: "Determines whether the request
/// has a user account" expression: "size(request.user) > 0"
class Expr {
  /// An optional description of the expression. This is a longer text which
  /// describes the expression, e.g. when hovered over it in a UI.
  core.String description;

  /// Textual representation of an expression in Common Expression Language
  /// syntax.
  ///
  /// The application context of the containing message determines which
  /// well-known feature set of CEL is supported.
  core.String expression;

  /// An optional string indicating the location of the expression for error
  /// reporting, e.g. a file name and a position in the file.
  core.String location;

  /// An optional title for the expression, i.e. a short string describing its
  /// purpose. This can be used e.g. in UIs which allow to enter the expression.
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

class GlobalSetPolicyRequest {
  /// Flatten Policy to create a backward compatible wire-format. Deprecated.
  /// Use 'policy' to specify bindings.
  core.List<Binding> bindings;

  /// Flatten Policy to create a backward compatible wire-format. Deprecated.
  /// Use 'policy' to specify the etag.
  core.String etag;
  core.List<core.int> get etagAsBytes {
    return convert.base64.decode(etag);
  }

  set etagAsBytes(core.List<core.int> _bytes) {
    etag =
        convert.base64.encode(_bytes).replaceAll("/", "_").replaceAll("+", "-");
  }

  /// REQUIRED: The complete policy to be applied to the 'resource'. The size of
  /// the policy is limited to a few 10s of KB. An empty policy is in general a
  /// valid policy but certain services (like Projects) might reject them.
  Policy policy;

  GlobalSetPolicyRequest();

  GlobalSetPolicyRequest.fromJson(core.Map _json) {
    if (_json.containsKey("bindings")) {
      bindings = (_json["bindings"] as core.List)
          .map<Binding>((value) => new Binding.fromJson(value))
          .toList();
    }
    if (_json.containsKey("etag")) {
      etag = _json["etag"];
    }
    if (_json.containsKey("policy")) {
      policy = new Policy.fromJson(_json["policy"]);
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
    if (policy != null) {
      _json["policy"] = (policy).toJson();
    }
    return _json;
  }
}

class ImportFile {
  /// The contents of the file.
  core.String content;

  /// The name of the file.
  core.String name;

  ImportFile();

  ImportFile.fromJson(core.Map _json) {
    if (_json.containsKey("content")) {
      content = _json["content"];
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (content != null) {
      _json["content"] = content;
    }
    if (name != null) {
      _json["name"] = name;
    }
    return _json;
  }
}

/// Specifies what kind of log the caller must write
class LogConfig {
  /// Cloud audit options.
  LogConfigCloudAuditOptions cloudAudit;

  /// Counter options.
  LogConfigCounterOptions counter;

  /// Data access options.
  LogConfigDataAccessOptions dataAccess;

  LogConfig();

  LogConfig.fromJson(core.Map _json) {
    if (_json.containsKey("cloudAudit")) {
      cloudAudit = new LogConfigCloudAuditOptions.fromJson(_json["cloudAudit"]);
    }
    if (_json.containsKey("counter")) {
      counter = new LogConfigCounterOptions.fromJson(_json["counter"]);
    }
    if (_json.containsKey("dataAccess")) {
      dataAccess = new LogConfigDataAccessOptions.fromJson(_json["dataAccess"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (cloudAudit != null) {
      _json["cloudAudit"] = (cloudAudit).toJson();
    }
    if (counter != null) {
      _json["counter"] = (counter).toJson();
    }
    if (dataAccess != null) {
      _json["dataAccess"] = (dataAccess).toJson();
    }
    return _json;
  }
}

/// Write a Cloud Audit log
class LogConfigCloudAuditOptions {
  /// Information used by the Cloud Audit Logging pipeline.
  AuthorizationLoggingOptions authorizationLoggingOptions;

  /// The log_name to populate in the Cloud Audit Record.
  core.String logName;

  LogConfigCloudAuditOptions();

  LogConfigCloudAuditOptions.fromJson(core.Map _json) {
    if (_json.containsKey("authorizationLoggingOptions")) {
      authorizationLoggingOptions = new AuthorizationLoggingOptions.fromJson(
          _json["authorizationLoggingOptions"]);
    }
    if (_json.containsKey("logName")) {
      logName = _json["logName"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (authorizationLoggingOptions != null) {
      _json["authorizationLoggingOptions"] =
          (authorizationLoggingOptions).toJson();
    }
    if (logName != null) {
      _json["logName"] = logName;
    }
    return _json;
  }
}

/// Increment a streamz counter with the specified metric and field names.
///
/// Metric names should start with a '/', generally be lowercase-only, and end
/// in "_count". Field names should not contain an initial slash. The actual
/// exported metric names will have "/iam/policy" prepended.
///
/// Field names correspond to IAM request parameters and field values are their
/// respective values.
///
/// Supported field names: - "authority", which is "[token]" if IAMContext.token
/// is present, otherwise the value of IAMContext.authority_selector if present,
/// and otherwise a representation of IAMContext.principal; or -
/// "iam_principal", a representation of IAMContext.principal even if a token or
/// authority selector is present; or - "" (empty string), resulting in a
/// counter with no fields.
///
/// Examples: counter { metric: "/debug_access_count" field: "iam_principal" }
/// ==> increment counter /iam/policy/backend_debug_access_count
/// {iam_principal=[value of IAMContext.principal]}
///
/// At this time we do not support multiple field names (though this may be
/// supported in the future).
class LogConfigCounterOptions {
  /// The field value to attribute.
  core.String field;

  /// The metric to update.
  core.String metric;

  LogConfigCounterOptions();

  LogConfigCounterOptions.fromJson(core.Map _json) {
    if (_json.containsKey("field")) {
      field = _json["field"];
    }
    if (_json.containsKey("metric")) {
      metric = _json["metric"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (field != null) {
      _json["field"] = field;
    }
    if (metric != null) {
      _json["metric"] = metric;
    }
    return _json;
  }
}

/// Write a Data Access (Gin) log
class LogConfigDataAccessOptions {
  /// Whether Gin logging should happen in a fail-closed manner at the caller.
  /// This is relevant only in the LocalIAM implementation, for now.
  ///
  /// NOTE: Logging to Gin in a fail-closed manner is currently unsupported
  /// while work is being done to satisfy the requirements of go/345. Currently,
  /// setting LOG_FAIL_CLOSED mode will have no effect, but still exists because
  /// there is active work being done to support it (b/115874152).
  core.String logMode;

  LogConfigDataAccessOptions();

  LogConfigDataAccessOptions.fromJson(core.Map _json) {
    if (_json.containsKey("logMode")) {
      logMode = _json["logMode"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (logMode != null) {
      _json["logMode"] = logMode;
    }
    return _json;
  }
}

class Manifest {
  /// Output only. The YAML configuration for this manifest.
  ConfigFile config;

  /// Output only. The fully-expanded configuration file, including any
  /// templates and references.
  core.String expandedConfig;
  core.String id;

  /// Output only. The imported files for this manifest.
  core.List<ImportFile> imports;

  /// Output only. Creation timestamp in RFC3339 text format.
  core.String insertTime;

  /// Output only. The YAML layout for this manifest.
  core.String layout;

  /// Output only.
  ///
  /// The name of the manifest.
  core.String name;

  /// Output only. Self link for the manifest.
  core.String selfLink;

  Manifest();

  Manifest.fromJson(core.Map _json) {
    if (_json.containsKey("config")) {
      config = new ConfigFile.fromJson(_json["config"]);
    }
    if (_json.containsKey("expandedConfig")) {
      expandedConfig = _json["expandedConfig"];
    }
    if (_json.containsKey("id")) {
      id = _json["id"];
    }
    if (_json.containsKey("imports")) {
      imports = (_json["imports"] as core.List)
          .map<ImportFile>((value) => new ImportFile.fromJson(value))
          .toList();
    }
    if (_json.containsKey("insertTime")) {
      insertTime = _json["insertTime"];
    }
    if (_json.containsKey("layout")) {
      layout = _json["layout"];
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
    if (_json.containsKey("selfLink")) {
      selfLink = _json["selfLink"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (config != null) {
      _json["config"] = (config).toJson();
    }
    if (expandedConfig != null) {
      _json["expandedConfig"] = expandedConfig;
    }
    if (id != null) {
      _json["id"] = id;
    }
    if (imports != null) {
      _json["imports"] = imports.map((value) => (value).toJson()).toList();
    }
    if (insertTime != null) {
      _json["insertTime"] = insertTime;
    }
    if (layout != null) {
      _json["layout"] = layout;
    }
    if (name != null) {
      _json["name"] = name;
    }
    if (selfLink != null) {
      _json["selfLink"] = selfLink;
    }
    return _json;
  }
}

/// A response containing a partial list of manifests and a page token used to
/// build the next request if the request has been truncated.
class ManifestsListResponse {
  /// Output only. Manifests contained in this list response.
  core.List<Manifest> manifests;

  /// Output only. A token used to continue a truncated list request.
  core.String nextPageToken;

  ManifestsListResponse();

  ManifestsListResponse.fromJson(core.Map _json) {
    if (_json.containsKey("manifests")) {
      manifests = (_json["manifests"] as core.List)
          .map<Manifest>((value) => new Manifest.fromJson(value))
          .toList();
    }
    if (_json.containsKey("nextPageToken")) {
      nextPageToken = _json["nextPageToken"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (manifests != null) {
      _json["manifests"] = manifests.map((value) => (value).toJson()).toList();
    }
    if (nextPageToken != null) {
      _json["nextPageToken"] = nextPageToken;
    }
    return _json;
  }
}

class OperationErrorErrors {
  /// [Output Only] The error type identifier for this error.
  core.String code;

  /// [Output Only] Indicates the field in the request that caused the error.
  /// This property is optional.
  core.String location;

  /// [Output Only] An optional, human-readable error message.
  core.String message;

  OperationErrorErrors();

  OperationErrorErrors.fromJson(core.Map _json) {
    if (_json.containsKey("code")) {
      code = _json["code"];
    }
    if (_json.containsKey("location")) {
      location = _json["location"];
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
    if (location != null) {
      _json["location"] = location;
    }
    if (message != null) {
      _json["message"] = message;
    }
    return _json;
  }
}

/// [Output Only] If errors are generated during processing of the operation,
/// this field will be populated.
class OperationError {
  /// [Output Only] The array of errors encountered while processing this
  /// operation.
  core.List<OperationErrorErrors> errors;

  OperationError();

  OperationError.fromJson(core.Map _json) {
    if (_json.containsKey("errors")) {
      errors = (_json["errors"] as core.List)
          .map<OperationErrorErrors>(
              (value) => new OperationErrorErrors.fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (errors != null) {
      _json["errors"] = errors.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

class OperationWarningsData {
  /// [Output Only] A key that provides more detail on the warning being
  /// returned. For example, for warnings where there are no results in a list
  /// request for a particular zone, this key might be scope and the key value
  /// might be the zone name. Other examples might be a key indicating a
  /// deprecated resource and a suggested replacement, or a warning about
  /// invalid network settings (for example, if an instance attempts to perform
  /// IP forwarding but is not enabled for IP forwarding).
  core.String key;

  /// [Output Only] A warning data value corresponding to the key.
  core.String value;

  OperationWarningsData();

  OperationWarningsData.fromJson(core.Map _json) {
    if (_json.containsKey("key")) {
      key = _json["key"];
    }
    if (_json.containsKey("value")) {
      value = _json["value"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (key != null) {
      _json["key"] = key;
    }
    if (value != null) {
      _json["value"] = value;
    }
    return _json;
  }
}

class OperationWarnings {
  /// [Output Only] A warning code, if applicable. For example, Compute Engine
  /// returns NO_RESULTS_ON_PAGE if there are no results in the response.
  core.String code;

  /// [Output Only] Metadata about this warning in key: value format. For
  /// example:
  /// "data": [ { "key": "scope", "value": "zones/us-east1-d" }
  core.List<OperationWarningsData> data;

  /// [Output Only] A human-readable description of the warning code.
  core.String message;

  OperationWarnings();

  OperationWarnings.fromJson(core.Map _json) {
    if (_json.containsKey("code")) {
      code = _json["code"];
    }
    if (_json.containsKey("data")) {
      data = (_json["data"] as core.List)
          .map<OperationWarningsData>(
              (value) => new OperationWarningsData.fromJson(value))
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
    if (data != null) {
      _json["data"] = data.map((value) => (value).toJson()).toList();
    }
    if (message != null) {
      _json["message"] = message;
    }
    return _json;
  }
}

/// An Operation resource, used to manage asynchronous API requests. (==
/// resource_for v1.globalOperations ==) (== resource_for beta.globalOperations
/// ==) (== resource_for v1.regionOperations ==) (== resource_for
/// beta.regionOperations ==) (== resource_for v1.zoneOperations ==) (==
/// resource_for beta.zoneOperations ==)
class Operation {
  /// [Output Only] The value of `requestId` if you provided it in the request.
  /// Not present otherwise.
  core.String clientOperationId;

  /// [Deprecated] This field is deprecated.
  core.String creationTimestamp;

  /// [Output Only] A textual description of the operation, which is set when
  /// the operation is created.
  core.String description;

  /// [Output Only] The time that this operation was completed. This value is in
  /// RFC3339 text format.
  core.String endTime;

  /// [Output Only] If errors are generated during processing of the operation,
  /// this field will be populated.
  OperationError error;

  /// [Output Only] If the operation fails, this field contains the HTTP error
  /// message that was returned, such as NOT FOUND.
  core.String httpErrorMessage;

  /// [Output Only] If the operation fails, this field contains the HTTP error
  /// status code that was returned. For example, a 404 means the resource was
  /// not found.
  core.int httpErrorStatusCode;

  /// [Output Only] The unique identifier for the resource. This identifier is
  /// defined by the server.
  core.String id;

  /// [Output Only] The time that this operation was requested. This value is in
  /// RFC3339 text format.
  core.String insertTime;

  /// [Output Only] Type of the resource. Always compute#operation for Operation
  /// resources.
  core.String kind;

  /// [Output Only] Name of the resource.
  core.String name;

  /// [Output Only] The type of operation, such as insert, update, or delete,
  /// and so on.
  core.String operationType;

  /// [Output Only] An optional progress indicator that ranges from 0 to 100.
  /// There is no requirement that this be linear or support any granularity of
  /// operations. This should not be used to guess when the operation will be
  /// complete. This number should monotonically increase as the operation
  /// progresses.
  core.int progress;

  /// [Output Only] The URL of the region where the operation resides. Only
  /// available when performing regional operations. You must specify this field
  /// as part of the HTTP request URL. It is not settable as a field in the
  /// request body.
  core.String region;

  /// [Output Only] Server-defined URL for the resource.
  core.String selfLink;

  /// [Output Only] The time that this operation was started by the server. This
  /// value is in RFC3339 text format.
  core.String startTime;

  /// [Output Only] The status of the operation, which can be one of the
  /// following: PENDING, RUNNING, or DONE.
  core.String status;

  /// [Output Only] An optional textual description of the current status of the
  /// operation.
  core.String statusMessage;

  /// [Output Only] The unique target ID, which identifies a specific
  /// incarnation of the target resource.
  core.String targetId;

  /// [Output Only] The URL of the resource that the operation modifies. For
  /// operations related to creating a snapshot, this points to the persistent
  /// disk that the snapshot was created from.
  core.String targetLink;

  /// [Output Only] User who requested the operation, for example:
  /// user@example.com.
  core.String user;

  /// [Output Only] If warning messages are generated during processing of the
  /// operation, this field will be populated.
  core.List<OperationWarnings> warnings;

  /// [Output Only] The URL of the zone where the operation resides. Only
  /// available when performing per-zone operations. You must specify this field
  /// as part of the HTTP request URL. It is not settable as a field in the
  /// request body.
  core.String zone;

  Operation();

  Operation.fromJson(core.Map _json) {
    if (_json.containsKey("clientOperationId")) {
      clientOperationId = _json["clientOperationId"];
    }
    if (_json.containsKey("creationTimestamp")) {
      creationTimestamp = _json["creationTimestamp"];
    }
    if (_json.containsKey("description")) {
      description = _json["description"];
    }
    if (_json.containsKey("endTime")) {
      endTime = _json["endTime"];
    }
    if (_json.containsKey("error")) {
      error = new OperationError.fromJson(_json["error"]);
    }
    if (_json.containsKey("httpErrorMessage")) {
      httpErrorMessage = _json["httpErrorMessage"];
    }
    if (_json.containsKey("httpErrorStatusCode")) {
      httpErrorStatusCode = _json["httpErrorStatusCode"];
    }
    if (_json.containsKey("id")) {
      id = _json["id"];
    }
    if (_json.containsKey("insertTime")) {
      insertTime = _json["insertTime"];
    }
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
    if (_json.containsKey("operationType")) {
      operationType = _json["operationType"];
    }
    if (_json.containsKey("progress")) {
      progress = _json["progress"];
    }
    if (_json.containsKey("region")) {
      region = _json["region"];
    }
    if (_json.containsKey("selfLink")) {
      selfLink = _json["selfLink"];
    }
    if (_json.containsKey("startTime")) {
      startTime = _json["startTime"];
    }
    if (_json.containsKey("status")) {
      status = _json["status"];
    }
    if (_json.containsKey("statusMessage")) {
      statusMessage = _json["statusMessage"];
    }
    if (_json.containsKey("targetId")) {
      targetId = _json["targetId"];
    }
    if (_json.containsKey("targetLink")) {
      targetLink = _json["targetLink"];
    }
    if (_json.containsKey("user")) {
      user = _json["user"];
    }
    if (_json.containsKey("warnings")) {
      warnings = (_json["warnings"] as core.List)
          .map<OperationWarnings>(
              (value) => new OperationWarnings.fromJson(value))
          .toList();
    }
    if (_json.containsKey("zone")) {
      zone = _json["zone"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (clientOperationId != null) {
      _json["clientOperationId"] = clientOperationId;
    }
    if (creationTimestamp != null) {
      _json["creationTimestamp"] = creationTimestamp;
    }
    if (description != null) {
      _json["description"] = description;
    }
    if (endTime != null) {
      _json["endTime"] = endTime;
    }
    if (error != null) {
      _json["error"] = (error).toJson();
    }
    if (httpErrorMessage != null) {
      _json["httpErrorMessage"] = httpErrorMessage;
    }
    if (httpErrorStatusCode != null) {
      _json["httpErrorStatusCode"] = httpErrorStatusCode;
    }
    if (id != null) {
      _json["id"] = id;
    }
    if (insertTime != null) {
      _json["insertTime"] = insertTime;
    }
    if (kind != null) {
      _json["kind"] = kind;
    }
    if (name != null) {
      _json["name"] = name;
    }
    if (operationType != null) {
      _json["operationType"] = operationType;
    }
    if (progress != null) {
      _json["progress"] = progress;
    }
    if (region != null) {
      _json["region"] = region;
    }
    if (selfLink != null) {
      _json["selfLink"] = selfLink;
    }
    if (startTime != null) {
      _json["startTime"] = startTime;
    }
    if (status != null) {
      _json["status"] = status;
    }
    if (statusMessage != null) {
      _json["statusMessage"] = statusMessage;
    }
    if (targetId != null) {
      _json["targetId"] = targetId;
    }
    if (targetLink != null) {
      _json["targetLink"] = targetLink;
    }
    if (user != null) {
      _json["user"] = user;
    }
    if (warnings != null) {
      _json["warnings"] = warnings.map((value) => (value).toJson()).toList();
    }
    if (zone != null) {
      _json["zone"] = zone;
    }
    return _json;
  }
}

/// A response containing a partial list of operations and a page token used to
/// build the next request if the request has been truncated.
class OperationsListResponse {
  /// Output only. A token used to continue a truncated list request.
  core.String nextPageToken;

  /// Output only. Operations contained in this list response.
  core.List<Operation> operations;

  OperationsListResponse();

  OperationsListResponse.fromJson(core.Map _json) {
    if (_json.containsKey("nextPageToken")) {
      nextPageToken = _json["nextPageToken"];
    }
    if (_json.containsKey("operations")) {
      operations = (_json["operations"] as core.List)
          .map<Operation>((value) => new Operation.fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (nextPageToken != null) {
      _json["nextPageToken"] = nextPageToken;
    }
    if (operations != null) {
      _json["operations"] =
          operations.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

/// Defines an Identity and Access Management (IAM) policy. It is used to
/// specify access control policies for Cloud Platform resources.
///
///
///
/// A `Policy` consists of a list of `bindings`. A `binding` binds a list of
/// `members` to a `role`, where the members can be user accounts, Google
/// groups, Google domains, and service accounts. A `role` is a named list of
/// permissions defined by IAM.
///
/// **JSON Example**
///
/// { "bindings": [ { "role": "roles/owner", "members": [
/// "user:mike@example.com", "group:admins@example.com", "domain:google.com",
/// "serviceAccount:my-other-app@appspot.gserviceaccount.com" ] }, { "role":
/// "roles/viewer", "members": ["user:sean@example.com"] } ] }
///
/// **YAML Example**
///
/// bindings: - members: - user:mike@example.com - group:admins@example.com -
/// domain:google.com - serviceAccount:my-other-app@appspot.gserviceaccount.com
/// role: roles/owner - members: - user:sean@example.com role: roles/viewer
///
///
///
/// For a description of IAM and its features, see the [IAM developer's
/// guide](https://cloud.google.com/iam/docs).
class Policy {
  /// Specifies cloud audit logging configuration for this policy.
  core.List<AuditConfig> auditConfigs;

  /// Associates a list of `members` to a `role`. `bindings` with no members
  /// will result in an error.
  core.List<Binding> bindings;

  /// `etag` is used for optimistic concurrency control as a way to help prevent
  /// simultaneous updates of a policy from overwriting each other. It is
  /// strongly suggested that systems make use of the `etag` in the
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

  core.bool iamOwned;

  /// If more than one rule is specified, the rules are applied in the following
  /// manner: - All matching LOG rules are always applied. - If any
  /// DENY/DENY_WITH_LOG rule matches, permission is denied. Logging will be
  /// applied if one or more matching rule requires logging. - Otherwise, if any
  /// ALLOW/ALLOW_WITH_LOG rule matches, permission is granted. Logging will be
  /// applied if one or more matching rule requires logging. - Otherwise, if no
  /// rule applies, permission is denied.
  core.List<Rule> rules;

  /// Deprecated.
  core.int version;

  Policy();

  Policy.fromJson(core.Map _json) {
    if (_json.containsKey("auditConfigs")) {
      auditConfigs = (_json["auditConfigs"] as core.List)
          .map<AuditConfig>((value) => new AuditConfig.fromJson(value))
          .toList();
    }
    if (_json.containsKey("bindings")) {
      bindings = (_json["bindings"] as core.List)
          .map<Binding>((value) => new Binding.fromJson(value))
          .toList();
    }
    if (_json.containsKey("etag")) {
      etag = _json["etag"];
    }
    if (_json.containsKey("iamOwned")) {
      iamOwned = _json["iamOwned"];
    }
    if (_json.containsKey("rules")) {
      rules = (_json["rules"] as core.List)
          .map<Rule>((value) => new Rule.fromJson(value))
          .toList();
    }
    if (_json.containsKey("version")) {
      version = _json["version"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (auditConfigs != null) {
      _json["auditConfigs"] =
          auditConfigs.map((value) => (value).toJson()).toList();
    }
    if (bindings != null) {
      _json["bindings"] = bindings.map((value) => (value).toJson()).toList();
    }
    if (etag != null) {
      _json["etag"] = etag;
    }
    if (iamOwned != null) {
      _json["iamOwned"] = iamOwned;
    }
    if (rules != null) {
      _json["rules"] = rules.map((value) => (value).toJson()).toList();
    }
    if (version != null) {
      _json["version"] = version;
    }
    return _json;
  }
}

class ResourceWarningsData {
  /// [Output Only] A key that provides more detail on the warning being
  /// returned. For example, for warnings where there are no results in a list
  /// request for a particular zone, this key might be scope and the key value
  /// might be the zone name. Other examples might be a key indicating a
  /// deprecated resource and a suggested replacement, or a warning about
  /// invalid network settings (for example, if an instance attempts to perform
  /// IP forwarding but is not enabled for IP forwarding).
  core.String key;

  /// [Output Only] A warning data value corresponding to the key.
  core.String value;

  ResourceWarningsData();

  ResourceWarningsData.fromJson(core.Map _json) {
    if (_json.containsKey("key")) {
      key = _json["key"];
    }
    if (_json.containsKey("value")) {
      value = _json["value"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (key != null) {
      _json["key"] = key;
    }
    if (value != null) {
      _json["value"] = value;
    }
    return _json;
  }
}

class ResourceWarnings {
  /// [Output Only] A warning code, if applicable. For example, Compute Engine
  /// returns NO_RESULTS_ON_PAGE if there are no results in the response.
  core.String code;

  /// [Output Only] Metadata about this warning in key: value format. For
  /// example:
  /// "data": [ { "key": "scope", "value": "zones/us-east1-d" }
  core.List<ResourceWarningsData> data;

  /// [Output Only] A human-readable description of the warning code.
  core.String message;

  ResourceWarnings();

  ResourceWarnings.fromJson(core.Map _json) {
    if (_json.containsKey("code")) {
      code = _json["code"];
    }
    if (_json.containsKey("data")) {
      data = (_json["data"] as core.List)
          .map<ResourceWarningsData>(
              (value) => new ResourceWarningsData.fromJson(value))
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
    if (data != null) {
      _json["data"] = data.map((value) => (value).toJson()).toList();
    }
    if (message != null) {
      _json["message"] = message;
    }
    return _json;
  }
}

class Resource {
  /// The Access Control Policy set on this resource.
  ResourceAccessControl accessControl;

  /// Output only. The evaluated properties of the resource with references
  /// expanded. Returned as serialized YAML.
  core.String finalProperties;
  core.String id;

  /// Output only. Creation timestamp in RFC3339 text format.
  core.String insertTime;

  /// Output only. URL of the manifest representing the current configuration of
  /// this resource.
  core.String manifest;

  /// Output only. The name of the resource as it appears in the YAML config.
  core.String name;

  /// Output only. The current properties of the resource before any references
  /// have been filled in. Returned as serialized YAML.
  core.String properties;

  /// Output only. The type of the resource, for example compute.v1.instance, or
  /// cloudfunctions.v1beta1.function.
  core.String type;

  /// Output only. If Deployment Manager is currently updating or previewing an
  /// update to this resource, the updated configuration appears here.
  ResourceUpdate update;

  /// Output only. Update timestamp in RFC3339 text format.
  core.String updateTime;

  /// Output only. The URL of the actual resource.
  core.String url;

  /// Output only. If warning messages are generated during processing of this
  /// resource, this field will be populated.
  core.List<ResourceWarnings> warnings;

  Resource();

  Resource.fromJson(core.Map _json) {
    if (_json.containsKey("accessControl")) {
      accessControl =
          new ResourceAccessControl.fromJson(_json["accessControl"]);
    }
    if (_json.containsKey("finalProperties")) {
      finalProperties = _json["finalProperties"];
    }
    if (_json.containsKey("id")) {
      id = _json["id"];
    }
    if (_json.containsKey("insertTime")) {
      insertTime = _json["insertTime"];
    }
    if (_json.containsKey("manifest")) {
      manifest = _json["manifest"];
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
    if (_json.containsKey("properties")) {
      properties = _json["properties"];
    }
    if (_json.containsKey("type")) {
      type = _json["type"];
    }
    if (_json.containsKey("update")) {
      update = new ResourceUpdate.fromJson(_json["update"]);
    }
    if (_json.containsKey("updateTime")) {
      updateTime = _json["updateTime"];
    }
    if (_json.containsKey("url")) {
      url = _json["url"];
    }
    if (_json.containsKey("warnings")) {
      warnings = (_json["warnings"] as core.List)
          .map<ResourceWarnings>(
              (value) => new ResourceWarnings.fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (accessControl != null) {
      _json["accessControl"] = (accessControl).toJson();
    }
    if (finalProperties != null) {
      _json["finalProperties"] = finalProperties;
    }
    if (id != null) {
      _json["id"] = id;
    }
    if (insertTime != null) {
      _json["insertTime"] = insertTime;
    }
    if (manifest != null) {
      _json["manifest"] = manifest;
    }
    if (name != null) {
      _json["name"] = name;
    }
    if (properties != null) {
      _json["properties"] = properties;
    }
    if (type != null) {
      _json["type"] = type;
    }
    if (update != null) {
      _json["update"] = (update).toJson();
    }
    if (updateTime != null) {
      _json["updateTime"] = updateTime;
    }
    if (url != null) {
      _json["url"] = url;
    }
    if (warnings != null) {
      _json["warnings"] = warnings.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

/// The access controls set on the resource.
class ResourceAccessControl {
  /// The GCP IAM Policy to set on the resource.
  core.String gcpIamPolicy;

  ResourceAccessControl();

  ResourceAccessControl.fromJson(core.Map _json) {
    if (_json.containsKey("gcpIamPolicy")) {
      gcpIamPolicy = _json["gcpIamPolicy"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (gcpIamPolicy != null) {
      _json["gcpIamPolicy"] = gcpIamPolicy;
    }
    return _json;
  }
}

class ResourceUpdateErrorErrors {
  /// [Output Only] The error type identifier for this error.
  core.String code;

  /// [Output Only] Indicates the field in the request that caused the error.
  /// This property is optional.
  core.String location;

  /// [Output Only] An optional, human-readable error message.
  core.String message;

  ResourceUpdateErrorErrors();

  ResourceUpdateErrorErrors.fromJson(core.Map _json) {
    if (_json.containsKey("code")) {
      code = _json["code"];
    }
    if (_json.containsKey("location")) {
      location = _json["location"];
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
    if (location != null) {
      _json["location"] = location;
    }
    if (message != null) {
      _json["message"] = message;
    }
    return _json;
  }
}

/// Output only. If errors are generated during update of the resource, this
/// field will be populated.
class ResourceUpdateError {
  /// [Output Only] The array of errors encountered while processing this
  /// operation.
  core.List<ResourceUpdateErrorErrors> errors;

  ResourceUpdateError();

  ResourceUpdateError.fromJson(core.Map _json) {
    if (_json.containsKey("errors")) {
      errors = (_json["errors"] as core.List)
          .map<ResourceUpdateErrorErrors>(
              (value) => new ResourceUpdateErrorErrors.fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (errors != null) {
      _json["errors"] = errors.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

class ResourceUpdateWarningsData {
  /// [Output Only] A key that provides more detail on the warning being
  /// returned. For example, for warnings where there are no results in a list
  /// request for a particular zone, this key might be scope and the key value
  /// might be the zone name. Other examples might be a key indicating a
  /// deprecated resource and a suggested replacement, or a warning about
  /// invalid network settings (for example, if an instance attempts to perform
  /// IP forwarding but is not enabled for IP forwarding).
  core.String key;

  /// [Output Only] A warning data value corresponding to the key.
  core.String value;

  ResourceUpdateWarningsData();

  ResourceUpdateWarningsData.fromJson(core.Map _json) {
    if (_json.containsKey("key")) {
      key = _json["key"];
    }
    if (_json.containsKey("value")) {
      value = _json["value"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (key != null) {
      _json["key"] = key;
    }
    if (value != null) {
      _json["value"] = value;
    }
    return _json;
  }
}

class ResourceUpdateWarnings {
  /// [Output Only] A warning code, if applicable. For example, Compute Engine
  /// returns NO_RESULTS_ON_PAGE if there are no results in the response.
  core.String code;

  /// [Output Only] Metadata about this warning in key: value format. For
  /// example:
  /// "data": [ { "key": "scope", "value": "zones/us-east1-d" }
  core.List<ResourceUpdateWarningsData> data;

  /// [Output Only] A human-readable description of the warning code.
  core.String message;

  ResourceUpdateWarnings();

  ResourceUpdateWarnings.fromJson(core.Map _json) {
    if (_json.containsKey("code")) {
      code = _json["code"];
    }
    if (_json.containsKey("data")) {
      data = (_json["data"] as core.List)
          .map<ResourceUpdateWarningsData>(
              (value) => new ResourceUpdateWarningsData.fromJson(value))
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
    if (data != null) {
      _json["data"] = data.map((value) => (value).toJson()).toList();
    }
    if (message != null) {
      _json["message"] = message;
    }
    return _json;
  }
}

class ResourceUpdate {
  /// The Access Control Policy to set on this resource after updating the
  /// resource itself.
  ResourceAccessControl accessControl;

  /// Output only. If errors are generated during update of the resource, this
  /// field will be populated.
  ResourceUpdateError error;

  /// Output only. The expanded properties of the resource with reference values
  /// expanded. Returned as serialized YAML.
  core.String finalProperties;

  /// Output only. The intent of the resource: PREVIEW, UPDATE, or CANCEL.
  core.String intent;

  /// Output only. URL of the manifest representing the update configuration of
  /// this resource.
  core.String manifest;

  /// Output only. The set of updated properties for this resource, before
  /// references are expanded. Returned as serialized YAML.
  core.String properties;

  /// Output only. The state of the resource.
  core.String state;

  /// Output only. If warning messages are generated during processing of this
  /// resource, this field will be populated.
  core.List<ResourceUpdateWarnings> warnings;

  ResourceUpdate();

  ResourceUpdate.fromJson(core.Map _json) {
    if (_json.containsKey("accessControl")) {
      accessControl =
          new ResourceAccessControl.fromJson(_json["accessControl"]);
    }
    if (_json.containsKey("error")) {
      error = new ResourceUpdateError.fromJson(_json["error"]);
    }
    if (_json.containsKey("finalProperties")) {
      finalProperties = _json["finalProperties"];
    }
    if (_json.containsKey("intent")) {
      intent = _json["intent"];
    }
    if (_json.containsKey("manifest")) {
      manifest = _json["manifest"];
    }
    if (_json.containsKey("properties")) {
      properties = _json["properties"];
    }
    if (_json.containsKey("state")) {
      state = _json["state"];
    }
    if (_json.containsKey("warnings")) {
      warnings = (_json["warnings"] as core.List)
          .map<ResourceUpdateWarnings>(
              (value) => new ResourceUpdateWarnings.fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (accessControl != null) {
      _json["accessControl"] = (accessControl).toJson();
    }
    if (error != null) {
      _json["error"] = (error).toJson();
    }
    if (finalProperties != null) {
      _json["finalProperties"] = finalProperties;
    }
    if (intent != null) {
      _json["intent"] = intent;
    }
    if (manifest != null) {
      _json["manifest"] = manifest;
    }
    if (properties != null) {
      _json["properties"] = properties;
    }
    if (state != null) {
      _json["state"] = state;
    }
    if (warnings != null) {
      _json["warnings"] = warnings.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

/// A response containing a partial list of resources and a page token used to
/// build the next request if the request has been truncated.
class ResourcesListResponse {
  /// A token used to continue a truncated list request.
  core.String nextPageToken;

  /// Resources contained in this list response.
  core.List<Resource> resources;

  ResourcesListResponse();

  ResourcesListResponse.fromJson(core.Map _json) {
    if (_json.containsKey("nextPageToken")) {
      nextPageToken = _json["nextPageToken"];
    }
    if (_json.containsKey("resources")) {
      resources = (_json["resources"] as core.List)
          .map<Resource>((value) => new Resource.fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (nextPageToken != null) {
      _json["nextPageToken"] = nextPageToken;
    }
    if (resources != null) {
      _json["resources"] = resources.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

/// A rule to be applied in a Policy.
class Rule {
  /// Required
  core.String action;

  /// Additional restrictions that must be met. All conditions must pass for the
  /// rule to match.
  core.List<Condition> conditions;

  /// Human-readable description of the rule.
  core.String description;

  /// If one or more 'in' clauses are specified, the rule matches if the
  /// PRINCIPAL/AUTHORITY_SELECTOR is in at least one of these entries.
  core.List<core.String> ins;

  /// The config returned to callers of tech.iam.IAM.CheckPolicy for any entries
  /// that match the LOG action.
  core.List<LogConfig> logConfigs;

  /// If one or more 'not_in' clauses are specified, the rule matches if the
  /// PRINCIPAL/AUTHORITY_SELECTOR is in none of the entries.
  core.List<core.String> notIns;

  /// A permission is a string of form '..' (e.g., 'storage.buckets.list'). A
  /// value of '*' matches all permissions, and a verb part of '*' (e.g.,
  /// 'storage.buckets.*') matches all verbs.
  core.List<core.String> permissions;

  Rule();

  Rule.fromJson(core.Map _json) {
    if (_json.containsKey("action")) {
      action = _json["action"];
    }
    if (_json.containsKey("conditions")) {
      conditions = (_json["conditions"] as core.List)
          .map<Condition>((value) => new Condition.fromJson(value))
          .toList();
    }
    if (_json.containsKey("description")) {
      description = _json["description"];
    }
    if (_json.containsKey("ins")) {
      ins = (_json["ins"] as core.List).cast<core.String>();
    }
    if (_json.containsKey("logConfigs")) {
      logConfigs = (_json["logConfigs"] as core.List)
          .map<LogConfig>((value) => new LogConfig.fromJson(value))
          .toList();
    }
    if (_json.containsKey("notIns")) {
      notIns = (_json["notIns"] as core.List).cast<core.String>();
    }
    if (_json.containsKey("permissions")) {
      permissions = (_json["permissions"] as core.List).cast<core.String>();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (action != null) {
      _json["action"] = action;
    }
    if (conditions != null) {
      _json["conditions"] =
          conditions.map((value) => (value).toJson()).toList();
    }
    if (description != null) {
      _json["description"] = description;
    }
    if (ins != null) {
      _json["ins"] = ins;
    }
    if (logConfigs != null) {
      _json["logConfigs"] =
          logConfigs.map((value) => (value).toJson()).toList();
    }
    if (notIns != null) {
      _json["notIns"] = notIns;
    }
    if (permissions != null) {
      _json["permissions"] = permissions;
    }
    return _json;
  }
}

class TargetConfiguration {
  /// The configuration to use for this deployment.
  ConfigFile config;

  /// Specifies any files to import for this configuration. This can be used to
  /// import templates or other files. For example, you might import a text file
  /// in order to use the file in a template.
  core.List<ImportFile> imports;

  TargetConfiguration();

  TargetConfiguration.fromJson(core.Map _json) {
    if (_json.containsKey("config")) {
      config = new ConfigFile.fromJson(_json["config"]);
    }
    if (_json.containsKey("imports")) {
      imports = (_json["imports"] as core.List)
          .map<ImportFile>((value) => new ImportFile.fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (config != null) {
      _json["config"] = (config).toJson();
    }
    if (imports != null) {
      _json["imports"] = imports.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

class TestPermissionsRequest {
  /// The set of permissions to check for the 'resource'. Permissions with
  /// wildcards (such as '*' or 'storage.*') are not allowed.
  core.List<core.String> permissions;

  TestPermissionsRequest();

  TestPermissionsRequest.fromJson(core.Map _json) {
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

class TestPermissionsResponse {
  /// A subset of `TestPermissionsRequest.permissions` that the caller is
  /// allowed.
  core.List<core.String> permissions;

  TestPermissionsResponse();

  TestPermissionsResponse.fromJson(core.Map _json) {
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

/// A resource type supported by Deployment Manager.
class Type {
  core.String id;

  /// Output only. Creation timestamp in RFC3339 text format.
  core.String insertTime;

  /// Name of the type.
  core.String name;

  /// Output only. The Operation that most recently ran, or is currently
  /// running, on this type.
  Operation operation;

  /// Output only. Server defined URL for the resource.
  core.String selfLink;

  Type();

  Type.fromJson(core.Map _json) {
    if (_json.containsKey("id")) {
      id = _json["id"];
    }
    if (_json.containsKey("insertTime")) {
      insertTime = _json["insertTime"];
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
    if (_json.containsKey("operation")) {
      operation = new Operation.fromJson(_json["operation"]);
    }
    if (_json.containsKey("selfLink")) {
      selfLink = _json["selfLink"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (id != null) {
      _json["id"] = id;
    }
    if (insertTime != null) {
      _json["insertTime"] = insertTime;
    }
    if (name != null) {
      _json["name"] = name;
    }
    if (operation != null) {
      _json["operation"] = (operation).toJson();
    }
    if (selfLink != null) {
      _json["selfLink"] = selfLink;
    }
    return _json;
  }
}

/// A response that returns all Types supported by Deployment Manager
class TypesListResponse {
  /// A token used to continue a truncated list request.
  core.String nextPageToken;

  /// Output only. A list of resource types supported by Deployment Manager.
  core.List<Type> types;

  TypesListResponse();

  TypesListResponse.fromJson(core.Map _json) {
    if (_json.containsKey("nextPageToken")) {
      nextPageToken = _json["nextPageToken"];
    }
    if (_json.containsKey("types")) {
      types = (_json["types"] as core.List)
          .map<Type>((value) => new Type.fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (nextPageToken != null) {
      _json["nextPageToken"] = nextPageToken;
    }
    if (types != null) {
      _json["types"] = types.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}
