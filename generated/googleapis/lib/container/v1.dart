// This is a generated file (see the discoveryapis_generator project).

library googleapis.container.v1;

import 'dart:core' as core;
import 'dart:async' as async;
import 'dart:convert' as convert;

import 'package:_discoveryapis_commons/_discoveryapis_commons.dart' as commons;
import 'package:http/http.dart' as http;

export 'package:_discoveryapis_commons/_discoveryapis_commons.dart' show
    ApiRequestError, DetailedApiRequestError;

const core.String USER_AGENT = 'dart-api-client container/v1';

/**
 * The Google Container Engine API is used for building and managing container
 * based applications, powered by the open source Kubernetes technology.
 */
class ContainerApi {
  /** View and manage your data across Google Cloud Platform services */
  static const CloudPlatformScope = "https://www.googleapis.com/auth/cloud-platform";


  final commons.ApiRequester _requester;

  ProjectsResourceApi get projects => new ProjectsResourceApi(_requester);

  ContainerApi(http.Client client, {core.String rootUrl: "https://container.googleapis.com/", core.String servicePath: ""}) :
      _requester = new commons.ApiRequester(client, rootUrl, servicePath, USER_AGENT);
}


class ProjectsResourceApi {
  final commons.ApiRequester _requester;

  ProjectsZonesResourceApi get zones => new ProjectsZonesResourceApi(_requester);

  ProjectsResourceApi(commons.ApiRequester client) : 
      _requester = client;
}


class ProjectsZonesResourceApi {
  final commons.ApiRequester _requester;

  ProjectsZonesClustersResourceApi get clusters => new ProjectsZonesClustersResourceApi(_requester);
  ProjectsZonesOperationsResourceApi get operations => new ProjectsZonesOperationsResourceApi(_requester);

  ProjectsZonesResourceApi(commons.ApiRequester client) : 
      _requester = client;
}


class ProjectsZonesClustersResourceApi {
  final commons.ApiRequester _requester;

  ProjectsZonesClustersResourceApi(commons.ApiRequester client) : 
      _requester = client;

  /**
   * Creates a cluster, consisting of the specified number and type of Google
   * Compute Engine instances, plus a Kubernetes master endpoint. By default,
   * the cluster is created in the project's [default
   * network]('/compute/docs/networking#networks_1'). One firewall is added for
   * the cluster. After cluster creation, the cluster creates routes for each
   * node to allow the containers on that node to communicate with all other
   * instances in the cluster. Finally, an entry is added to the project's
   * global metadata indicating which CIDR range is being used by the cluster.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * [projectId] - The Google Developers Console [project
   * ID](https://console.developers.google.com/project) or [project
   * number](https://developers.google.com/console/help/project-number)
   *
   * [zone] - The name of the Google Compute Engine
   * [zone](/compute/docs/zones#available) in which the cluster resides.
   *
   * Completes with a [Operation].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<Operation> create(CreateClusterRequest request, core.String projectId, core.String zone) {
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
    if (zone == null) {
      throw new core.ArgumentError("Parameter zone is required.");
    }

    _url = 'v1/projects/' + commons.Escaper.ecapeVariable('$projectId') + '/zones/' + commons.Escaper.ecapeVariable('$zone') + '/clusters';

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
   * Deletes the cluster, including the Kubernetes endpoint and all worker
   * nodes. Firewalls and routes that were configured during cluster creation
   * are also deleted.
   *
   * Request parameters:
   *
   * [projectId] - The Google Developers Console [project
   * ID](https://console.developers.google.com/project) or [project
   * number](https://developers.google.com/console/help/project-number)
   *
   * [zone] - The name of the Google Compute Engine
   * [zone](/compute/docs/zones#available) in which the cluster resides.
   *
   * [clusterId] - The name of the cluster to delete.
   *
   * Completes with a [Operation].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<Operation> delete(core.String projectId, core.String zone, core.String clusterId) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (projectId == null) {
      throw new core.ArgumentError("Parameter projectId is required.");
    }
    if (zone == null) {
      throw new core.ArgumentError("Parameter zone is required.");
    }
    if (clusterId == null) {
      throw new core.ArgumentError("Parameter clusterId is required.");
    }

    _url = 'v1/projects/' + commons.Escaper.ecapeVariable('$projectId') + '/zones/' + commons.Escaper.ecapeVariable('$zone') + '/clusters/' + commons.Escaper.ecapeVariable('$clusterId');

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
   * Gets a specific cluster.
   *
   * Request parameters:
   *
   * [projectId] - The Google Developers Console A [project
   * ID](https://console.developers.google.com/project) or [project
   * number](https://developers.google.com/console/help/project-number)
   *
   * [zone] - The name of the Google Compute Engine
   * [zone](/compute/docs/zones#available) in which the cluster resides.
   *
   * [clusterId] - The name of the cluster to retrieve.
   *
   * Completes with a [Cluster].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<Cluster> get(core.String projectId, core.String zone, core.String clusterId) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (projectId == null) {
      throw new core.ArgumentError("Parameter projectId is required.");
    }
    if (zone == null) {
      throw new core.ArgumentError("Parameter zone is required.");
    }
    if (clusterId == null) {
      throw new core.ArgumentError("Parameter clusterId is required.");
    }

    _url = 'v1/projects/' + commons.Escaper.ecapeVariable('$projectId') + '/zones/' + commons.Escaper.ecapeVariable('$zone') + '/clusters/' + commons.Escaper.ecapeVariable('$clusterId');

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
   * Lists all clusters owned by a project in either the specified zone or all
   * zones.
   *
   * Request parameters:
   *
   * [projectId] - The Google Developers Console [project
   * ID](https://console.developers.google.com/project) or [project
   * number](https://developers.google.com/console/help/project-number)
   *
   * [zone] - The name of the Google Compute Engine
   * [zone](/compute/docs/zones#available) in which the cluster resides, or "-"
   * for all zones.
   *
   * Completes with a [ListClustersResponse].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<ListClustersResponse> list(core.String projectId, core.String zone) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (projectId == null) {
      throw new core.ArgumentError("Parameter projectId is required.");
    }
    if (zone == null) {
      throw new core.ArgumentError("Parameter zone is required.");
    }

    _url = 'v1/projects/' + commons.Escaper.ecapeVariable('$projectId') + '/zones/' + commons.Escaper.ecapeVariable('$zone') + '/clusters';

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
   * Update settings of a specific cluster.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * [projectId] - The Google Developers Console [project
   * ID](https://console.developers.google.com/project) or [project
   * number](https://developers.google.com/console/help/project-number)
   *
   * [zone] - The name of the Google Compute Engine
   * [zone](/compute/docs/zones#available) in which the cluster resides.
   *
   * [clusterId] - The name of the cluster to upgrade.
   *
   * Completes with a [Operation].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<Operation> update(UpdateClusterRequest request, core.String projectId, core.String zone, core.String clusterId) {
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
    if (zone == null) {
      throw new core.ArgumentError("Parameter zone is required.");
    }
    if (clusterId == null) {
      throw new core.ArgumentError("Parameter clusterId is required.");
    }

    _url = 'v1/projects/' + commons.Escaper.ecapeVariable('$projectId') + '/zones/' + commons.Escaper.ecapeVariable('$zone') + '/clusters/' + commons.Escaper.ecapeVariable('$clusterId');

    var _response = _requester.request(_url,
                                       "PUT",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new Operation.fromJson(data));
  }

}


class ProjectsZonesOperationsResourceApi {
  final commons.ApiRequester _requester;

  ProjectsZonesOperationsResourceApi(commons.ApiRequester client) : 
      _requester = client;

  /**
   * Gets the specified operation.
   *
   * Request parameters:
   *
   * [projectId] - The Google Developers Console [project
   * ID](https://console.developers.google.com/project) or [project
   * number](https://developers.google.com/console/help/project-number)
   *
   * [zone] - The name of the Google Compute Engine
   * [zone](/compute/docs/zones#available) in which the cluster resides.
   *
   * [operationId] - The server-assigned `name` of the operation.
   *
   * Completes with a [Operation].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<Operation> get(core.String projectId, core.String zone, core.String operationId) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (projectId == null) {
      throw new core.ArgumentError("Parameter projectId is required.");
    }
    if (zone == null) {
      throw new core.ArgumentError("Parameter zone is required.");
    }
    if (operationId == null) {
      throw new core.ArgumentError("Parameter operationId is required.");
    }

    _url = 'v1/projects/' + commons.Escaper.ecapeVariable('$projectId') + '/zones/' + commons.Escaper.ecapeVariable('$zone') + '/operations/' + commons.Escaper.ecapeVariable('$operationId');

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
   * Lists all operations in a project in a specific zone or all zones.
   *
   * Request parameters:
   *
   * [projectId] - The Google Developers Console [project
   * ID](https://console.developers.google.com/project) or [project
   * number](https://developers.google.com/console/help/project-number)
   *
   * [zone] - The name of the Google Compute Engine
   * [zone](/compute/docs/zones#available) to return operations for, or "-" for
   * all zones.
   *
   * Completes with a [ListOperationsResponse].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<ListOperationsResponse> list(core.String projectId, core.String zone) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (projectId == null) {
      throw new core.ArgumentError("Parameter projectId is required.");
    }
    if (zone == null) {
      throw new core.ArgumentError("Parameter zone is required.");
    }

    _url = 'v1/projects/' + commons.Escaper.ecapeVariable('$projectId') + '/zones/' + commons.Escaper.ecapeVariable('$zone') + '/operations';

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



/** A Google Container Engine cluster. */
class Cluster {
  /**
   * The IP address range of the container pods in this cluster, in
   * [CIDR](http://en.wikipedia.org/wiki/Classless_Inter-Domain_Routing)
   * notation (e.g. `10.96.0.0/14`). Leave blank to have one automatically
   * chosen or specify a `/14` block in `10.0.0.0/8` or `172.16.0.0/12`.
   */
  core.String clusterIpv4Cidr;
  /**
   * [Output only] The time the cluster was created, in
   * [RFC3339](href='https://www.ietf.org/rfc/rfc3339.txt) text format.
   * @OutputOnly.
   */
  core.String createTime;
  /**
   * [Output only] The current software version of the master endpoint.
   * @OutputOnly.
   */
  core.String currentMasterVersion;
  /**
   * [Output only] The current version of the node software components. If they
   * are currently at different versions because they're in the process of being
   * upgraded, this reflects the minimum version of any of them. @OutputOnly.
   */
  core.String currentNodeVersion;
  /** An optional description of this cluster. */
  core.String description;
  /**
   * [Output only] The IP address of this cluster's Kubernetes master endpoint.
   * The endpoint can be accessed from the internet at
   * `https://username:password@endpoint/`. @OutputOnly. See the `masterAuth`
   * property of this resource for username and password information.
   */
  core.String endpoint;
  /**
   * [Output only] The software version of Kubernetes master and kubelets used
   * in the cluster when it was first created. The version can be upgraded over
   * time. @OutputOnly.
   */
  core.String initialClusterVersion;
  /**
   * The number of nodes to create in this cluster. You must ensure that your
   * Compute Engine [resource quota](/compute/docs/resource-quotas) is
   * sufficient for this number of instances. You must also have available
   * firewall and routes quota.
   */
  core.int initialNodeCount;
  /**
   * [Output only] The resource URLs of [instance
   * groups](/compute/docs/instance-groups/) associated with this cluster.
   * @OutputOnly.
   */
  core.List<core.String> instanceGroupUrls;
  /**
   * The logging service that the cluster should write logs to. Currently
   * available options: * "logging.googleapis.com" - the Google Cloud Logging
   * service * "none" - no logs will be exported from the cluster * "" - default
   * value; the default is "logging.googleapis.com"
   */
  core.String loggingService;
  /** The authentication information for accessing the master. */
  MasterAuth masterAuth;
  /**
   * The monitoring service that the cluster should write metrics to. Currently
   * available options: * "monitoring.googleapis.com" - the Google Cloud
   * Monitoring service * "none" - no metrics will be exported from the cluster
   * * "" - default value; the default is "monitoring.googleapis.com"
   */
  core.String monitoringService;
  /**
   * The name of this cluster. The name must be unique within this project and
   * zone, and can be up to 40 characters with the following restrictions: *
   * Lowercase letters, numbers, and hyphens only. * Must start with a letter. *
   * Must end with a number or a letter.
   */
  core.String name;
  /**
   * The name of the Google Compute Engine
   * [network](/compute/docs/networking#networks_1) to which the cluster is
   * connected. If left unspecified, the "default" network will be used.
   */
  core.String network;
  /**
   * Parameters used in creating the cluster's nodes. See the descriptions of
   * the child properties of `nodeConfig`.
   */
  NodeConfig nodeConfig;
  /**
   * [Output only] The size of the address space on each node for hosting
   * containers. This is provisioned from within the container_ipv4_cidr range.
   * @OutputOnly.
   */
  core.int nodeIpv4CidrSize;
  /** [Output only] Server-defined URL for the resource. @OutputOnly. */
  core.String selfLink;
  /**
   * [Output only] The IP address range of the Kubernetes services in this
   * cluster, in
   * [CIDR](http://en.wikipedia.org/wiki/Classless_Inter-Domain_Routing)
   * notation (e.g. `1.2.3.4/29`). Service addresses are typically put in the
   * last /16 from the container CIDR. @OutputOnly.
   */
  core.String servicesIpv4Cidr;
  /**
   * [Output only] The current status of this cluster. @OutputOnly.
   * Possible string values are:
   * - "STATUS_UNSPECIFIED" : A STATUS_UNSPECIFIED.
   * - "PROVISIONING" : A PROVISIONING.
   * - "RUNNING" : A RUNNING.
   * - "RECONCILING" : A RECONCILING.
   * - "STOPPING" : A STOPPING.
   * - "ERROR" : A ERROR.
   */
  core.String status;
  /**
   * [Output only] Additional information about the current status of this
   * cluster, if available. @OutputOnly.
   */
  core.String statusMessage;
  /**
   * [Output only] The name of the Google Compute Engine
   * [zone](/compute/docs/zones#available) in which the cluster resides.
   * @OutputOnly.
   */
  core.String zone;

  Cluster();

  Cluster.fromJson(core.Map _json) {
    if (_json.containsKey("clusterIpv4Cidr")) {
      clusterIpv4Cidr = _json["clusterIpv4Cidr"];
    }
    if (_json.containsKey("createTime")) {
      createTime = _json["createTime"];
    }
    if (_json.containsKey("currentMasterVersion")) {
      currentMasterVersion = _json["currentMasterVersion"];
    }
    if (_json.containsKey("currentNodeVersion")) {
      currentNodeVersion = _json["currentNodeVersion"];
    }
    if (_json.containsKey("description")) {
      description = _json["description"];
    }
    if (_json.containsKey("endpoint")) {
      endpoint = _json["endpoint"];
    }
    if (_json.containsKey("initialClusterVersion")) {
      initialClusterVersion = _json["initialClusterVersion"];
    }
    if (_json.containsKey("initialNodeCount")) {
      initialNodeCount = _json["initialNodeCount"];
    }
    if (_json.containsKey("instanceGroupUrls")) {
      instanceGroupUrls = _json["instanceGroupUrls"];
    }
    if (_json.containsKey("loggingService")) {
      loggingService = _json["loggingService"];
    }
    if (_json.containsKey("masterAuth")) {
      masterAuth = new MasterAuth.fromJson(_json["masterAuth"]);
    }
    if (_json.containsKey("monitoringService")) {
      monitoringService = _json["monitoringService"];
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
    if (_json.containsKey("network")) {
      network = _json["network"];
    }
    if (_json.containsKey("nodeConfig")) {
      nodeConfig = new NodeConfig.fromJson(_json["nodeConfig"]);
    }
    if (_json.containsKey("nodeIpv4CidrSize")) {
      nodeIpv4CidrSize = _json["nodeIpv4CidrSize"];
    }
    if (_json.containsKey("selfLink")) {
      selfLink = _json["selfLink"];
    }
    if (_json.containsKey("servicesIpv4Cidr")) {
      servicesIpv4Cidr = _json["servicesIpv4Cidr"];
    }
    if (_json.containsKey("status")) {
      status = _json["status"];
    }
    if (_json.containsKey("statusMessage")) {
      statusMessage = _json["statusMessage"];
    }
    if (_json.containsKey("zone")) {
      zone = _json["zone"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (clusterIpv4Cidr != null) {
      _json["clusterIpv4Cidr"] = clusterIpv4Cidr;
    }
    if (createTime != null) {
      _json["createTime"] = createTime;
    }
    if (currentMasterVersion != null) {
      _json["currentMasterVersion"] = currentMasterVersion;
    }
    if (currentNodeVersion != null) {
      _json["currentNodeVersion"] = currentNodeVersion;
    }
    if (description != null) {
      _json["description"] = description;
    }
    if (endpoint != null) {
      _json["endpoint"] = endpoint;
    }
    if (initialClusterVersion != null) {
      _json["initialClusterVersion"] = initialClusterVersion;
    }
    if (initialNodeCount != null) {
      _json["initialNodeCount"] = initialNodeCount;
    }
    if (instanceGroupUrls != null) {
      _json["instanceGroupUrls"] = instanceGroupUrls;
    }
    if (loggingService != null) {
      _json["loggingService"] = loggingService;
    }
    if (masterAuth != null) {
      _json["masterAuth"] = (masterAuth).toJson();
    }
    if (monitoringService != null) {
      _json["monitoringService"] = monitoringService;
    }
    if (name != null) {
      _json["name"] = name;
    }
    if (network != null) {
      _json["network"] = network;
    }
    if (nodeConfig != null) {
      _json["nodeConfig"] = (nodeConfig).toJson();
    }
    if (nodeIpv4CidrSize != null) {
      _json["nodeIpv4CidrSize"] = nodeIpv4CidrSize;
    }
    if (selfLink != null) {
      _json["selfLink"] = selfLink;
    }
    if (servicesIpv4Cidr != null) {
      _json["servicesIpv4Cidr"] = servicesIpv4Cidr;
    }
    if (status != null) {
      _json["status"] = status;
    }
    if (statusMessage != null) {
      _json["statusMessage"] = statusMessage;
    }
    if (zone != null) {
      _json["zone"] = zone;
    }
    return _json;
  }
}

/** ClusterUpdate describes an update to the cluster. */
class ClusterUpdate {
  /**
   * The Kubernetes version to change the nodes to (typically an upgrade). Use
   * "-" to upgrade to the latest version supported by the server.
   */
  core.String desiredNodeVersion;

  ClusterUpdate();

  ClusterUpdate.fromJson(core.Map _json) {
    if (_json.containsKey("desiredNodeVersion")) {
      desiredNodeVersion = _json["desiredNodeVersion"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (desiredNodeVersion != null) {
      _json["desiredNodeVersion"] = desiredNodeVersion;
    }
    return _json;
  }
}

/** CreateClusterRequest creates a cluster. */
class CreateClusterRequest {
  /**
   * A [cluster resource](/container-engine/docs/v1/projects/zones/clusters)
   */
  Cluster cluster;

  CreateClusterRequest();

  CreateClusterRequest.fromJson(core.Map _json) {
    if (_json.containsKey("cluster")) {
      cluster = new Cluster.fromJson(_json["cluster"]);
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (cluster != null) {
      _json["cluster"] = (cluster).toJson();
    }
    return _json;
  }
}

/** ListClustersResponse is the result of ListClustersRequest. */
class ListClustersResponse {
  /**
   * A list of clusters in the project in the specified zone, or across all
   * ones.
   */
  core.List<Cluster> clusters;

  ListClustersResponse();

  ListClustersResponse.fromJson(core.Map _json) {
    if (_json.containsKey("clusters")) {
      clusters = _json["clusters"].map((value) => new Cluster.fromJson(value)).toList();
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (clusters != null) {
      _json["clusters"] = clusters.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

/** ListOperationsResponse is the result of ListOperationsRequest. */
class ListOperationsResponse {
  /** A list of operations in the project in the specified zone. */
  core.List<Operation> operations;

  ListOperationsResponse();

  ListOperationsResponse.fromJson(core.Map _json) {
    if (_json.containsKey("operations")) {
      operations = _json["operations"].map((value) => new Operation.fromJson(value)).toList();
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (operations != null) {
      _json["operations"] = operations.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

/**
 * The authentication information for accessing the master endpoint.
 * Authentication can be done using HTTP basic auth or using client
 * certificates.
 */
class MasterAuth {
  /**
   * [Output only] Base64 encoded public certificate used by clients to
   * authenticate to the cluster endpoint. @OutputOnly.
   */
  core.String clientCertificate;
  /**
   * [Output only] Base64 encoded private key used by clients to authenticate to
   * the cluster endpoint. @OutputOnly.
   */
  core.String clientKey;
  /**
   * [Output only] Base64 encoded public certificate that is the root of trust
   * for the cluster. @OutputOnly.
   */
  core.String clusterCaCertificate;
  /**
   * The password to use for HTTP basic authentication when accessing the
   * Kubernetes master endpoint. Because the master endpoint is open to the
   * internet, you should create a strong password.
   */
  core.String password;
  /**
   * The username to use for HTTP basic authentication when accessing the
   * Kubernetes master endpoint.
   */
  core.String username;

  MasterAuth();

  MasterAuth.fromJson(core.Map _json) {
    if (_json.containsKey("clientCertificate")) {
      clientCertificate = _json["clientCertificate"];
    }
    if (_json.containsKey("clientKey")) {
      clientKey = _json["clientKey"];
    }
    if (_json.containsKey("clusterCaCertificate")) {
      clusterCaCertificate = _json["clusterCaCertificate"];
    }
    if (_json.containsKey("password")) {
      password = _json["password"];
    }
    if (_json.containsKey("username")) {
      username = _json["username"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (clientCertificate != null) {
      _json["clientCertificate"] = clientCertificate;
    }
    if (clientKey != null) {
      _json["clientKey"] = clientKey;
    }
    if (clusterCaCertificate != null) {
      _json["clusterCaCertificate"] = clusterCaCertificate;
    }
    if (password != null) {
      _json["password"] = password;
    }
    if (username != null) {
      _json["username"] = username;
    }
    return _json;
  }
}

/** Per-node parameters. */
class NodeConfig {
  /**
   * Size of the disk attached to each node, specified in GB. The smallest
   * allowed disk size is 10GB, and the default is 100GB.
   */
  core.int diskSizeGb;
  /**
   * The name of a Google Compute Engine [machine
   * type](/compute/docs/machine-types) (e.g. `n1-standard-1`). If unspecified,
   * the default machine type is `n1-standard-1`.
   */
  core.String machineType;
  /**
   * The set of Google API scopes to be made available on all of the node VMs
   * under the "default" service account. Currently, the following scopes are
   * necessary to ensure the correct functioning of the cluster: *
   * "https://www.googleapis.com/auth/compute" *
   * "https://www.googleapis.com/auth/devstorage.read_only"
   */
  core.List<core.String> oauthScopes;

  NodeConfig();

  NodeConfig.fromJson(core.Map _json) {
    if (_json.containsKey("diskSizeGb")) {
      diskSizeGb = _json["diskSizeGb"];
    }
    if (_json.containsKey("machineType")) {
      machineType = _json["machineType"];
    }
    if (_json.containsKey("oauthScopes")) {
      oauthScopes = _json["oauthScopes"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (diskSizeGb != null) {
      _json["diskSizeGb"] = diskSizeGb;
    }
    if (machineType != null) {
      _json["machineType"] = machineType;
    }
    if (oauthScopes != null) {
      _json["oauthScopes"] = oauthScopes;
    }
    return _json;
  }
}

/** Defines the operation resource. All fields are output only. */
class Operation {
  /** The server-assigned ID for the operation. @OutputOnly. */
  core.String name;
  /**
   * The operation type. @OutputOnly.
   * Possible string values are:
   * - "TYPE_UNSPECIFIED" : A TYPE_UNSPECIFIED.
   * - "CREATE_CLUSTER" : A CREATE_CLUSTER.
   * - "DELETE_CLUSTER" : A DELETE_CLUSTER.
   * - "UPGRADE_MASTER" : A UPGRADE_MASTER.
   * - "UPGRADE_NODES" : A UPGRADE_NODES.
   * - "REPAIR_CLUSTER" : A REPAIR_CLUSTER.
   */
  core.String operationType;
  /** Server-defined URL for the resource. @OutputOnly. */
  core.String selfLink;
  /**
   * The current status of the operation. @OutputOnly.
   * Possible string values are:
   * - "STATUS_UNSPECIFIED" : A STATUS_UNSPECIFIED.
   * - "PENDING" : A PENDING.
   * - "RUNNING" : A RUNNING.
   * - "DONE" : A DONE.
   */
  core.String status;
  /**
   * If an error has occurred, a textual description of the error. @OutputOnly.
   */
  core.String statusMessage;
  /** Server-defined URL for the target of the operation. @OutputOnly. */
  core.String targetLink;
  /**
   * The name of the Google Compute Engine [zone](/compute/docs/zones#available)
   * in which the operation is taking place. @OutputOnly.
   */
  core.String zone;

  Operation();

  Operation.fromJson(core.Map _json) {
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
    if (_json.containsKey("operationType")) {
      operationType = _json["operationType"];
    }
    if (_json.containsKey("selfLink")) {
      selfLink = _json["selfLink"];
    }
    if (_json.containsKey("status")) {
      status = _json["status"];
    }
    if (_json.containsKey("statusMessage")) {
      statusMessage = _json["statusMessage"];
    }
    if (_json.containsKey("targetLink")) {
      targetLink = _json["targetLink"];
    }
    if (_json.containsKey("zone")) {
      zone = _json["zone"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (name != null) {
      _json["name"] = name;
    }
    if (operationType != null) {
      _json["operationType"] = operationType;
    }
    if (selfLink != null) {
      _json["selfLink"] = selfLink;
    }
    if (status != null) {
      _json["status"] = status;
    }
    if (statusMessage != null) {
      _json["statusMessage"] = statusMessage;
    }
    if (targetLink != null) {
      _json["targetLink"] = targetLink;
    }
    if (zone != null) {
      _json["zone"] = zone;
    }
    return _json;
  }
}

/** UpdateClusterRequest updates a cluster. */
class UpdateClusterRequest {
  /** A description of the update. */
  ClusterUpdate update;

  UpdateClusterRequest();

  UpdateClusterRequest.fromJson(core.Map _json) {
    if (_json.containsKey("update")) {
      update = new ClusterUpdate.fromJson(_json["update"]);
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (update != null) {
      _json["update"] = (update).toJson();
    }
    return _json;
  }
}
