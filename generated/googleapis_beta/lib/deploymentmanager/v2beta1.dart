// This is a generated file (see the discoveryapis_generator project).

library googleapis_beta.deploymentmanager.v2beta1;

import 'dart:core' as core;
import 'dart:async' as async;
import 'dart:convert' as convert;

import 'package:_discoveryapis_commons/_discoveryapis_commons.dart' as commons;
import 'package:http/http.dart' as http;

export 'package:_discoveryapis_commons/_discoveryapis_commons.dart' show
    ApiRequestError, DetailedApiRequestError;

const core.String USER_AGENT = 'dart-api-client deploymentmanager/v2beta1';

/**
 * The Deployment Manager API allows users to declaratively configure, deploy
 * and run complex solutions on the Google Cloud Platform.
 */
class DeploymentmanagerApi {
  /** View and manage your data across Google Cloud Platform services */
  static const CloudPlatformScope = "https://www.googleapis.com/auth/cloud-platform";

  /** View your data across Google Cloud Platform services */
  static const CloudPlatformReadOnlyScope = "https://www.googleapis.com/auth/cloud-platform.read-only";

  /**
   * View and manage your Google Cloud Platform management resources and
   * deployment status information
   */
  static const NdevCloudmanScope = "https://www.googleapis.com/auth/ndev.cloudman";

  /**
   * View your Google Cloud Platform management resources and deployment status
   * information
   */
  static const NdevCloudmanReadonlyScope = "https://www.googleapis.com/auth/ndev.cloudman.readonly";


  final commons.ApiRequester _requester;

  DeploymentsResourceApi get deployments => new DeploymentsResourceApi(_requester);
  ManifestsResourceApi get manifests => new ManifestsResourceApi(_requester);
  OperationsResourceApi get operations => new OperationsResourceApi(_requester);
  ResourcesResourceApi get resources => new ResourcesResourceApi(_requester);
  TypesResourceApi get types => new TypesResourceApi(_requester);

  DeploymentmanagerApi(http.Client client, {core.String rootUrl: "https://www.googleapis.com/", core.String servicePath: "deploymentmanager/v2beta1/projects/"}) :
      _requester = new commons.ApiRequester(client, rootUrl, servicePath, USER_AGENT);
}


class DeploymentsResourceApi {
  final commons.ApiRequester _requester;

  DeploymentsResourceApi(commons.ApiRequester client) : 
      _requester = client;

  /**
   * ! Deletes a deployment and all of the resources in the deployment.
   *
   * Request parameters:
   *
   * [project] - ! The project ID for this request.
   * Value must have pattern
   * "(?:(?:[-a-z0-9]{1,63}\.)*(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?):)?(?:[0-9]{1,19}|(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?))".
   *
   * [deployment] - ! The name of the deployment for this request.
   * Value must have pattern "[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?".
   *
   * Completes with a [Operation].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<Operation> delete(core.String project, core.String deployment) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (project == null) {
      throw new core.ArgumentError("Parameter project is required.");
    }
    if (deployment == null) {
      throw new core.ArgumentError("Parameter deployment is required.");
    }

    _url = commons.Escaper.ecapeVariable('$project') + '/global/deployments/' + commons.Escaper.ecapeVariable('$deployment');

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
   * ! Gets information about a specific deployment.
   *
   * Request parameters:
   *
   * [project] - ! The project ID for this request.
   * Value must have pattern
   * "(?:(?:[-a-z0-9]{1,63}\.)*(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?):)?(?:[0-9]{1,19}|(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?))".
   *
   * [deployment] - ! The name of the deployment for this request.
   * Value must have pattern "[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?".
   *
   * Completes with a [Deployment].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<Deployment> get(core.String project, core.String deployment) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (project == null) {
      throw new core.ArgumentError("Parameter project is required.");
    }
    if (deployment == null) {
      throw new core.ArgumentError("Parameter deployment is required.");
    }

    _url = commons.Escaper.ecapeVariable('$project') + '/global/deployments/' + commons.Escaper.ecapeVariable('$deployment');

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new Deployment.fromJson(data));
  }

  /**
   * ! Creates a deployment and all of the resources described by the !
   * deployment manifest.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * [project] - ! The project ID for this request.
   * Value must have pattern
   * "(?:(?:[-a-z0-9]{1,63}\.)*(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?):)?(?:[0-9]{1,19}|(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?))".
   *
   * Completes with a [Operation].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<Operation> insert(Deployment request, core.String project) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }
    if (project == null) {
      throw new core.ArgumentError("Parameter project is required.");
    }

    _url = commons.Escaper.ecapeVariable('$project') + '/global/deployments';

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
   * ! Lists all deployments for a given project.
   *
   * Request parameters:
   *
   * [project] - ! The project ID for this request.
   * Value must have pattern
   * "(?:(?:[-a-z0-9]{1,63}\.)*(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?):)?(?:[0-9]{1,19}|(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?))".
   *
   * [maxResults] - ! Maximum count of results to be returned. ! Acceptable
   * values are 0 to 100, inclusive. (Default: 50)
   * Value must be between "0" and "100".
   *
   * [pageToken] - ! Specifies a nextPageToken returned by a previous list
   * request. This ! token can be used to request the next page of results from
   * a previous ! list request.
   *
   * Completes with a [DeploymentsListResponse].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<DeploymentsListResponse> list(core.String project, {core.int maxResults, core.String pageToken}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (project == null) {
      throw new core.ArgumentError("Parameter project is required.");
    }
    if (maxResults != null) {
      _queryParams["maxResults"] = ["${maxResults}"];
    }
    if (pageToken != null) {
      _queryParams["pageToken"] = [pageToken];
    }

    _url = commons.Escaper.ecapeVariable('$project') + '/global/deployments';

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new DeploymentsListResponse.fromJson(data));
  }

}


class ManifestsResourceApi {
  final commons.ApiRequester _requester;

  ManifestsResourceApi(commons.ApiRequester client) : 
      _requester = client;

  /**
   * ! Gets information about a specific manifest.
   *
   * Request parameters:
   *
   * [project] - ! The project ID for this request.
   * Value must have pattern
   * "(?:(?:[-a-z0-9]{1,63}\.)*(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?):)?(?:[0-9]{1,19}|(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?))".
   *
   * [deployment] - ! The name of the deployment for this request.
   * Value must have pattern "[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?".
   *
   * [manifest] - ! The name of the manifest for this request.
   * Value must have pattern "[-a-z0-9]{1,61}".
   *
   * Completes with a [Manifest].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<Manifest> get(core.String project, core.String deployment, core.String manifest) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (project == null) {
      throw new core.ArgumentError("Parameter project is required.");
    }
    if (deployment == null) {
      throw new core.ArgumentError("Parameter deployment is required.");
    }
    if (manifest == null) {
      throw new core.ArgumentError("Parameter manifest is required.");
    }

    _url = commons.Escaper.ecapeVariable('$project') + '/global/deployments/' + commons.Escaper.ecapeVariable('$deployment') + '/manifests/' + commons.Escaper.ecapeVariable('$manifest');

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new Manifest.fromJson(data));
  }

  /**
   * ! Lists all manifests for a given deployment.
   *
   * Request parameters:
   *
   * [project] - ! The project ID for this request.
   * Value must have pattern
   * "(?:(?:[-a-z0-9]{1,63}\.)*(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?):)?(?:[0-9]{1,19}|(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?))".
   *
   * [deployment] - ! The name of the deployment for this request.
   * Value must have pattern "[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?".
   *
   * [maxResults] - ! Maximum count of results to be returned. ! Acceptable
   * values are 0 to 100, inclusive. (Default: 50)
   * Value must be between "0" and "100".
   *
   * [pageToken] - ! Specifies a nextPageToken returned by a previous list
   * request. This ! token can be used to request the next page of results from
   * a previous ! list request.
   *
   * Completes with a [ManifestsListResponse].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<ManifestsListResponse> list(core.String project, core.String deployment, {core.int maxResults, core.String pageToken}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (project == null) {
      throw new core.ArgumentError("Parameter project is required.");
    }
    if (deployment == null) {
      throw new core.ArgumentError("Parameter deployment is required.");
    }
    if (maxResults != null) {
      _queryParams["maxResults"] = ["${maxResults}"];
    }
    if (pageToken != null) {
      _queryParams["pageToken"] = [pageToken];
    }

    _url = commons.Escaper.ecapeVariable('$project') + '/global/deployments/' + commons.Escaper.ecapeVariable('$deployment') + '/manifests';

    var _response = _requester.request(_url,
                                       "GET",
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

  OperationsResourceApi(commons.ApiRequester client) : 
      _requester = client;

  /**
   * ! Gets information about a specific Operation.
   *
   * Request parameters:
   *
   * [project] - ! The project ID for this request.
   * Value must have pattern
   * "(?:(?:[-a-z0-9]{1,63}\.)*(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?):)?(?:[0-9]{1,19}|(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?))".
   *
   * [operation] - ! The name of the operation for this request.
   *
   * Completes with a [Operation].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<Operation> get(core.String project, core.String operation) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (project == null) {
      throw new core.ArgumentError("Parameter project is required.");
    }
    if (operation == null) {
      throw new core.ArgumentError("Parameter operation is required.");
    }

    _url = commons.Escaper.ecapeVariable('$project') + '/global/operations/' + commons.Escaper.ecapeVariable('$operation');

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
   * ! Lists all Operations for a project.
   *
   * Request parameters:
   *
   * [project] - ! The project ID for this request.
   * Value must have pattern
   * "(?:(?:[-a-z0-9]{1,63}\.)*(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?):)?(?:[0-9]{1,19}|(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?))".
   *
   * [maxResults] - ! Maximum count of results to be returned. ! Acceptable
   * values are 0 to 100, inclusive. (Default: 50)
   * Value must be between "0" and "100".
   *
   * [pageToken] - ! Specifies a nextPageToken returned by a previous list
   * request. This ! token can be used to request the next page of results from
   * a previous ! list request.
   *
   * Completes with a [OperationsListResponse].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<OperationsListResponse> list(core.String project, {core.int maxResults, core.String pageToken}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (project == null) {
      throw new core.ArgumentError("Parameter project is required.");
    }
    if (maxResults != null) {
      _queryParams["maxResults"] = ["${maxResults}"];
    }
    if (pageToken != null) {
      _queryParams["pageToken"] = [pageToken];
    }

    _url = commons.Escaper.ecapeVariable('$project') + '/global/operations';

    var _response = _requester.request(_url,
                                       "GET",
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

  ResourcesResourceApi(commons.ApiRequester client) : 
      _requester = client;

  /**
   * ! Gets information about a single resource.
   *
   * Request parameters:
   *
   * [project] - ! The project ID for this request.
   * Value must have pattern
   * "(?:(?:[-a-z0-9]{1,63}\.)*(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?):)?(?:[0-9]{1,19}|(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?))".
   *
   * [deployment] - ! The name of the deployment for this request.
   * Value must have pattern "[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?".
   *
   * [resource] - ! The name of the resource for this request.
   * Value must have pattern "[-a-z0-9]{1,61}".
   *
   * Completes with a [Resource].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<Resource> get(core.String project, core.String deployment, core.String resource) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (project == null) {
      throw new core.ArgumentError("Parameter project is required.");
    }
    if (deployment == null) {
      throw new core.ArgumentError("Parameter deployment is required.");
    }
    if (resource == null) {
      throw new core.ArgumentError("Parameter resource is required.");
    }

    _url = commons.Escaper.ecapeVariable('$project') + '/global/deployments/' + commons.Escaper.ecapeVariable('$deployment') + '/resources/' + commons.Escaper.ecapeVariable('$resource');

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new Resource.fromJson(data));
  }

  /**
   * ! Lists all resources in a given deployment.
   *
   * Request parameters:
   *
   * [project] - ! The project ID for this request.
   * Value must have pattern
   * "(?:(?:[-a-z0-9]{1,63}\.)*(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?):)?(?:[0-9]{1,19}|(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?))".
   *
   * [deployment] - ! The name of the deployment for this request.
   * Value must have pattern "[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?".
   *
   * [maxResults] - ! Maximum count of results to be returned. ! Acceptable
   * values are 0 to 100, inclusive. (Default: 50)
   * Value must be between "0" and "100".
   *
   * [pageToken] - ! Specifies a nextPageToken returned by a previous list
   * request. This ! token can be used to request the next page of results from
   * a previous ! list request.
   *
   * Completes with a [ResourcesListResponse].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<ResourcesListResponse> list(core.String project, core.String deployment, {core.int maxResults, core.String pageToken}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (project == null) {
      throw new core.ArgumentError("Parameter project is required.");
    }
    if (deployment == null) {
      throw new core.ArgumentError("Parameter deployment is required.");
    }
    if (maxResults != null) {
      _queryParams["maxResults"] = ["${maxResults}"];
    }
    if (pageToken != null) {
      _queryParams["pageToken"] = [pageToken];
    }

    _url = commons.Escaper.ecapeVariable('$project') + '/global/deployments/' + commons.Escaper.ecapeVariable('$deployment') + '/resources';

    var _response = _requester.request(_url,
                                       "GET",
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

  TypesResourceApi(commons.ApiRequester client) : 
      _requester = client;

  /**
   * ! Lists all Types for Deployment Manager.
   *
   * Request parameters:
   *
   * [project] - ! The project ID for this request.
   * Value must have pattern
   * "(?:(?:[-a-z0-9]{1,63}\.)*(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?):)?(?:[0-9]{1,19}|(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?))".
   *
   * [maxResults] - ! Maximum count of results to be returned. ! Acceptable
   * values are 0 to 100, inclusive. (Default: 50)
   * Value must be between "0" and "100".
   *
   * [pageToken] - ! Specifies a nextPageToken returned by a previous list
   * request. This ! token can be used to request the next page of results from
   * a previous ! list request.
   *
   * Completes with a [TypesListResponse].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<TypesListResponse> list(core.String project, {core.int maxResults, core.String pageToken}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (project == null) {
      throw new core.ArgumentError("Parameter project is required.");
    }
    if (maxResults != null) {
      _queryParams["maxResults"] = ["${maxResults}"];
    }
    if (pageToken != null) {
      _queryParams["pageToken"] = [pageToken];
    }

    _url = commons.Escaper.ecapeVariable('$project') + '/global/types';

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new TypesListResponse.fromJson(data));
  }

}



/** Next available tag: 8 */
class Deployment {
  /** ! An optional user-provided description of the deployment. */
  core.String description;
  /**
   * [Output Only] Unique identifier for the resource; defined by the server.
   */
  core.String id;
  /**
   * ! [Output Only] URL of the manifest representing the full configuration !
   * of this deployment.
   */
  core.String manifest;
  /** ! The name of the deployment, which must be unique within the project. */
  core.String name;
  /**
   * ! [Input Only] The YAML configuration to use in processing this deployment.
   * ! ! When you create a deployment, the server creates a new manifest with
   * the ! given YAML configuration and sets the `manifest` property to the URL
   * of ! the manifest resource.
   */
  core.String targetConfig;

  Deployment();

  Deployment.fromJson(core.Map _json) {
    if (_json.containsKey("description")) {
      description = _json["description"];
    }
    if (_json.containsKey("id")) {
      id = _json["id"];
    }
    if (_json.containsKey("manifest")) {
      manifest = _json["manifest"];
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
    if (_json.containsKey("targetConfig")) {
      targetConfig = _json["targetConfig"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (description != null) {
      _json["description"] = description;
    }
    if (id != null) {
      _json["id"] = id;
    }
    if (manifest != null) {
      _json["manifest"] = manifest;
    }
    if (name != null) {
      _json["name"] = name;
    }
    if (targetConfig != null) {
      _json["targetConfig"] = targetConfig;
    }
    return _json;
  }
}

/**
 * ! A response containing a partial list of deployments and a page token used !
 * to build the next request if the request has been truncated. Next available
 * tag: 4
 */
class DeploymentsListResponse {
  /** ! The deployments contained in this response. */
  core.List<Deployment> deployments;
  /** ! A token used to continue a truncated list request. */
  core.String nextPageToken;

  DeploymentsListResponse();

  DeploymentsListResponse.fromJson(core.Map _json) {
    if (_json.containsKey("deployments")) {
      deployments = _json["deployments"].map((value) => new Deployment.fromJson(value)).toList();
    }
    if (_json.containsKey("nextPageToken")) {
      nextPageToken = _json["nextPageToken"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (deployments != null) {
      _json["deployments"] = deployments.map((value) => (value).toJson()).toList();
    }
    if (nextPageToken != null) {
      _json["nextPageToken"] = nextPageToken;
    }
    return _json;
  }
}

/** Next available tag: 10 */
class Manifest {
  /**
   * v2beta1: YAML with config - described above v2beta2: YAML + templates. !
   * The YAML configuration for this manifest.
   */
  core.String config;
  /**
   * ! [Output Only] The fully-expanded configuration file, including any !
   * templates and references.
   */
  core.String evaluatedConfig;
  /**
   * [Output Only] Unique identifier for the resource; defined by the server.
   */
  core.String id;
  /** ! [Output Only] The name of the manifest. */
  core.String name;
  /** [Output Only] Self link for the manifest. */
  core.String selfLink;

  Manifest();

  Manifest.fromJson(core.Map _json) {
    if (_json.containsKey("config")) {
      config = _json["config"];
    }
    if (_json.containsKey("evaluatedConfig")) {
      evaluatedConfig = _json["evaluatedConfig"];
    }
    if (_json.containsKey("id")) {
      id = _json["id"];
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
    if (_json.containsKey("selfLink")) {
      selfLink = _json["selfLink"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (config != null) {
      _json["config"] = config;
    }
    if (evaluatedConfig != null) {
      _json["evaluatedConfig"] = evaluatedConfig;
    }
    if (id != null) {
      _json["id"] = id;
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

/**
 * ! A response containing a partial list of manifests and a page token used !
 * to build the next request if the request has been truncated. Next available
 * tag: 4
 */
class ManifestsListResponse {
  /** ! Manifests contained in this list response. */
  core.List<Manifest> manifests;
  /** ! A token used to continue a truncated list request. */
  core.String nextPageToken;

  ManifestsListResponse();

  ManifestsListResponse.fromJson(core.Map _json) {
    if (_json.containsKey("manifests")) {
      manifests = _json["manifests"].map((value) => new Manifest.fromJson(value)).toList();
    }
    if (_json.containsKey("nextPageToken")) {
      nextPageToken = _json["nextPageToken"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
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
  /** ! The error type identifier for this error. */
  core.String code;
  /**
   * ! Indicates the field in the request which caused the error. ! This
   * property is optional.
   */
  core.String location;
  /** ! An optional, human-readable error message. */
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

  core.Map toJson() {
    var _json = new core.Map();
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

/**
 * ! [Output Only] If errors occurred during processing of this operation, !
 * this field will be populated.
 */
class OperationError {
  /** ! The array of errors encountered while processing this operation. */
  core.List<OperationErrorErrors> errors;

  OperationError();

  OperationError.fromJson(core.Map _json) {
    if (_json.containsKey("errors")) {
      errors = _json["errors"].map((value) => new OperationErrorErrors.fromJson(value)).toList();
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (errors != null) {
      _json["errors"] = errors.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

class OperationWarningsData {
  /** ! A key for the warning data. */
  core.String key;
  /** ! A warning data value corresponding to the key. */
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

  core.Map toJson() {
    var _json = new core.Map();
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
  /**
   * ! The warning type identifier for this warning.
   *
   * The values for Object must be JSON objects. It can consist of `num`,
   * `String`, `bool` and `null` as well as `Map` and `List` values.
   */
  core.Object code;
  /** ! Metadata for this warning in 'key: value' format. */
  core.List<OperationWarningsData> data;
  /** ! Optional human-readable details for this warning. */
  core.String message;

  OperationWarnings();

  OperationWarnings.fromJson(core.Map _json) {
    if (_json.containsKey("code")) {
      code = _json["code"];
    }
    if (_json.containsKey("data")) {
      data = _json["data"].map((value) => new OperationWarningsData.fromJson(value)).toList();
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
    if (data != null) {
      _json["data"] = data.map((value) => (value).toJson()).toList();
    }
    if (message != null) {
      _json["message"] = message;
    }
    return _json;
  }
}

/**
 * ! An operation resource, used to manage asynchronous API requests. Next
 * available tag: 24
 */
class Operation {
  /** ! [Output Only] Creation timestamp in RFC3339 text format. */
  core.String creationTimestamp;
  /**
   * ! [Output Only] The time that this operation was completed. This is in !
   * RFC3339 format.
   */
  core.String endTime;
  /**
   * ! [Output Only] If errors occurred during processing of this operation, !
   * this field will be populated.
   */
  OperationError error;
  /**
   * ! [Output Only] If operation fails, the HTTP error message returned, ! e.g.
   * NOT FOUND.
   */
  core.String httpErrorMessage;
  /**
   * ! [Output Only] If operation fails, the HTTP error status code returned, !
   * e.g. 404.
   */
  core.int httpErrorStatusCode;
  /**
   * ! [Output Only] Unique identifier for the resource; defined by the server.
   */
  core.String id;
  /**
   * ! [Output Only] The time that this operation was requested. ! This is in
   * RFC 3339 format.
   */
  core.String insertTime;
  /** ! [Output Only] Name of the operation. */
  core.String name;
  /**
   * ! [Output Only] Type of the operation. Examples include "insert", or !
   * "delete"
   */
  core.String operationType;
  /**
   * ! [Output Only] An optional progress indicator that ranges from 0 to 100. !
   * There is no requirement that this be linear or support any granularity ! of
   * operations. This should not be used to guess at when the operation will !
   * be complete. This number should be monotonically increasing as the !
   * operation progresses.
   */
  core.int progress;
  /** [Output Only] Self link for the manifest. */
  core.String selfLink;
  /**
   * ! [Output Only] The time that this operation was started by the server. !
   * This is in RFC 3339 format.
   */
  core.String startTime;
  /**
   * ! [Output Only] Status of the operation. Can be one of the following: !
   * "PENDING", "RUNNING", or "DONE".
   */
  core.String status;
  /**
   * ! [Output Only] An optional textual description of the current status of !
   * the operation.
   */
  core.String statusMessage;
  /**
   * ! [Output Only] Unique target id which identifies a particular !
   * incarnation of the target.
   */
  core.String targetId;
  /** ! [Output Only] URL of the resource the operation is mutating. */
  core.String targetLink;
  /**
   * ! [Output Only] User who requested the operation, for example !
   * "user@example.com"
   */
  core.String user;
  /**
   * ! [Output Only] If warning messages generated during processing of this !
   * operation, this field will be populated.
   */
  core.List<OperationWarnings> warnings;

  Operation();

  Operation.fromJson(core.Map _json) {
    if (_json.containsKey("creationTimestamp")) {
      creationTimestamp = _json["creationTimestamp"];
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
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
    if (_json.containsKey("operationType")) {
      operationType = _json["operationType"];
    }
    if (_json.containsKey("progress")) {
      progress = _json["progress"];
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
      warnings = _json["warnings"].map((value) => new OperationWarnings.fromJson(value)).toList();
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (creationTimestamp != null) {
      _json["creationTimestamp"] = creationTimestamp;
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
    if (name != null) {
      _json["name"] = name;
    }
    if (operationType != null) {
      _json["operationType"] = operationType;
    }
    if (progress != null) {
      _json["progress"] = progress;
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
    return _json;
  }
}

/**
 * ! A response containing a partial list of operations and a page token used !
 * to build the next request if the request has been truncated. Next available
 * tag: 4
 */
class OperationsListResponse {
  /** ! A token used to continue a truncated list request. */
  core.String nextPageToken;
  /** ! Operations contained in this list response. */
  core.List<Operation> operations;

  OperationsListResponse();

  OperationsListResponse.fromJson(core.Map _json) {
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

/** Next available tag: 12 */
class Resource {
  /** ! [Output Only] A list of any errors that occurred during deployment. */
  core.List<core.String> errors;
  /**
   * [Output Only] Unique identifier for the resource; defined by the server.
   */
  core.String id;
  /** ! [Output Only] The intended state of the resource. */
  core.String intent;
  /**
   * ! [Output Only] URL of the manifest representing the current configuration
   * ! of this resource.
   */
  core.String manifest;
  /**
   * ! [Output Only] The name of the resource as it appears in the YAML config.
   */
  core.String name;
  /** ! [Output Only] The state of the resource. */
  core.String state;
  /**
   * ! [Output Only] The type of the resource, for example !
   * ?compute.v1.instance?, or ?replicaPools.v1beta2.instanceGroupManager?
   */
  core.String type;
  /** ! [Output Only] The URL of the actual resource. */
  core.String url;

  Resource();

  Resource.fromJson(core.Map _json) {
    if (_json.containsKey("errors")) {
      errors = _json["errors"];
    }
    if (_json.containsKey("id")) {
      id = _json["id"];
    }
    if (_json.containsKey("intent")) {
      intent = _json["intent"];
    }
    if (_json.containsKey("manifest")) {
      manifest = _json["manifest"];
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
    if (_json.containsKey("state")) {
      state = _json["state"];
    }
    if (_json.containsKey("type")) {
      type = _json["type"];
    }
    if (_json.containsKey("url")) {
      url = _json["url"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (errors != null) {
      _json["errors"] = errors;
    }
    if (id != null) {
      _json["id"] = id;
    }
    if (intent != null) {
      _json["intent"] = intent;
    }
    if (manifest != null) {
      _json["manifest"] = manifest;
    }
    if (name != null) {
      _json["name"] = name;
    }
    if (state != null) {
      _json["state"] = state;
    }
    if (type != null) {
      _json["type"] = type;
    }
    if (url != null) {
      _json["url"] = url;
    }
    return _json;
  }
}

/**
 * ! A response containing a partial list of resources and a page token used !
 * to build the next request if the request has been truncated. Next available
 * tag: 4
 */
class ResourcesListResponse {
  /** ! A token used to continue a truncated list request. */
  core.String nextPageToken;
  /** ! Resources contained in this list response. */
  core.List<Resource> resources;

  ResourcesListResponse();

  ResourcesListResponse.fromJson(core.Map _json) {
    if (_json.containsKey("nextPageToken")) {
      nextPageToken = _json["nextPageToken"];
    }
    if (_json.containsKey("resources")) {
      resources = _json["resources"].map((value) => new Resource.fromJson(value)).toList();
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (nextPageToken != null) {
      _json["nextPageToken"] = nextPageToken;
    }
    if (resources != null) {
      _json["resources"] = resources.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

/** ! A type supported by Deployment Manager. Next available tag: 4 */
class Type {
  /** ! Name of the type. */
  core.String name;

  Type();

  Type.fromJson(core.Map _json) {
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (name != null) {
      _json["name"] = name;
    }
    return _json;
  }
}

/**
 * ! A response that returns all Types supported by Deployment Manager Next
 * available tag: 3
 */
class TypesListResponse {
  /** ! Types supported by Deployment Manager */
  core.List<Type> types;

  TypesListResponse();

  TypesListResponse.fromJson(core.Map _json) {
    if (_json.containsKey("types")) {
      types = _json["types"].map((value) => new Type.fromJson(value)).toList();
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (types != null) {
      _json["types"] = types.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}
