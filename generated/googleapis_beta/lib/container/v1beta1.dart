library googleapis_beta.container.v1beta1;

import "dart:core" as core;
import "dart:collection" as collection;
import "dart:async" as async;
import "dart:convert" as convert;

import "package:crypto/crypto.dart" as crypto;
import 'package:http/http.dart' as http;
import '../src/common_internal.dart' as common_internal;
import '../common/common.dart' as common;

export '../common/common.dart' show ApiRequestError;
export '../common/common.dart' show DetailedApiRequestError;

/**
 * The Google Container Engine API is used for building and managing container
 * based applications, powered by the open source Kubernetes technology.
 */
class ContainerApi {
  /** View and manage your data across Google Cloud Platform services */
  static const CloudPlatformScope = "https://www.googleapis.com/auth/cloud-platform";


  final common_internal.ApiRequester _requester;

  ProjectsResourceApi get projects => new ProjectsResourceApi(_requester);

  ContainerApi(http.Client client, {core.String rootUrl: "https://www.googleapis.com/", core.String servicePath: "container/v1beta1/projects/"}) :
      _requester = new common_internal.ApiRequester(client, rootUrl, servicePath);
}


/** Not documented yet. */
class ProjectsResourceApi {
  final common_internal.ApiRequester _requester;

  ProjectsClustersResourceApi get clusters => new ProjectsClustersResourceApi(_requester);
  ProjectsOperationsResourceApi get operations => new ProjectsOperationsResourceApi(_requester);
  ProjectsZonesResourceApi get zones => new ProjectsZonesResourceApi(_requester);

  ProjectsResourceApi(common_internal.ApiRequester client) : 
      _requester = client;
}


/** Not documented yet. */
class ProjectsClustersResourceApi {
  final common_internal.ApiRequester _requester;

  ProjectsClustersResourceApi(common_internal.ApiRequester client) : 
      _requester = client;

  /**
   * Lists all clusters owned by a project across all zones.
   *
   * Request parameters:
   *
   * [projectId] - The Google Developers Console project ID or  project number.
   *
   * Completes with a [ListAggregatedClustersResponse].
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<ListAggregatedClustersResponse> list(core.String projectId) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (projectId == null) {
      throw new core.ArgumentError("Parameter projectId is required.");
    }


    _url = common_internal.Escaper.ecapeVariable('$projectId') + '/clusters';

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new ListAggregatedClustersResponse.fromJson(data));
  }

}


/** Not documented yet. */
class ProjectsOperationsResourceApi {
  final common_internal.ApiRequester _requester;

  ProjectsOperationsResourceApi(common_internal.ApiRequester client) : 
      _requester = client;

  /**
   * Lists all operations in a project, across all zones.
   *
   * Request parameters:
   *
   * [projectId] - The Google Developers Console project ID or  project number.
   *
   * Completes with a [ListAggregatedOperationsResponse].
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<ListAggregatedOperationsResponse> list(core.String projectId) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (projectId == null) {
      throw new core.ArgumentError("Parameter projectId is required.");
    }


    _url = common_internal.Escaper.ecapeVariable('$projectId') + '/operations';

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new ListAggregatedOperationsResponse.fromJson(data));
  }

}


/** Not documented yet. */
class ProjectsZonesResourceApi {
  final common_internal.ApiRequester _requester;

  ProjectsZonesClustersResourceApi get clusters => new ProjectsZonesClustersResourceApi(_requester);
  ProjectsZonesOperationsResourceApi get operations => new ProjectsZonesOperationsResourceApi(_requester);

  ProjectsZonesResourceApi(common_internal.ApiRequester client) : 
      _requester = client;
}


/** Not documented yet. */
class ProjectsZonesClustersResourceApi {
  final common_internal.ApiRequester _requester;

  ProjectsZonesClustersResourceApi(common_internal.ApiRequester client) : 
      _requester = client;

  /**
   * Creates a cluster, consisting of the specified number and type of Google
   * Compute Engine instances, plus a Kubernetes master instance.
   *
   * The cluster is created in the project's default network.
   *
   * A firewall is added that allows traffic into port 443 on the master, which
   * enables HTTPS. A firewall and a route is added for each node to allow the
   * containers on that node to communicate with all other instances in the
   * cluster.
   *
   * Finally, a route named k8s-iproute-10-xx-0-0 is created to track that the
   * cluster's 10.xx.0.0/16 CIDR has been assigned.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * [projectId] - The Google Developers Console project ID or  project number.
   *
   * [zoneId] - The name of the Google Compute Engine zone in which the cluster
   * resides.
   *
   * Completes with a [Operation].
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<Operation> create(CreateClusterRequest request, core.String projectId, core.String zoneId) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }
    if (projectId == null) {
      throw new core.ArgumentError("Parameter projectId is required.");
    }
    if (zoneId == null) {
      throw new core.ArgumentError("Parameter zoneId is required.");
    }


    _url = common_internal.Escaper.ecapeVariable('$projectId') + '/zones/' + common_internal.Escaper.ecapeVariable('$zoneId') + '/clusters';

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
   * Deletes the cluster, including the Kubernetes master and all worker nodes.
   *
   * Firewalls and routes that were configured at cluster creation are also
   * deleted.
   *
   * Request parameters:
   *
   * [projectId] - The Google Developers Console project ID or  project number.
   *
   * [zoneId] - The name of the Google Compute Engine zone in which the cluster
   * resides.
   *
   * [clusterId] - The name of the cluster to delete.
   *
   * Completes with a [Operation].
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<Operation> delete(core.String projectId, core.String zoneId, core.String clusterId) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (projectId == null) {
      throw new core.ArgumentError("Parameter projectId is required.");
    }
    if (zoneId == null) {
      throw new core.ArgumentError("Parameter zoneId is required.");
    }
    if (clusterId == null) {
      throw new core.ArgumentError("Parameter clusterId is required.");
    }


    _url = common_internal.Escaper.ecapeVariable('$projectId') + '/zones/' + common_internal.Escaper.ecapeVariable('$zoneId') + '/clusters/' + common_internal.Escaper.ecapeVariable('$clusterId');

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
   * [projectId] - The Google Developers Console project ID or  project number.
   *
   * [zoneId] - The name of the Google Compute Engine zone in which the cluster
   * resides.
   *
   * [clusterId] - The name of the cluster to retrieve.
   *
   * Completes with a [Cluster].
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<Cluster> get(core.String projectId, core.String zoneId, core.String clusterId) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (projectId == null) {
      throw new core.ArgumentError("Parameter projectId is required.");
    }
    if (zoneId == null) {
      throw new core.ArgumentError("Parameter zoneId is required.");
    }
    if (clusterId == null) {
      throw new core.ArgumentError("Parameter clusterId is required.");
    }


    _url = common_internal.Escaper.ecapeVariable('$projectId') + '/zones/' + common_internal.Escaper.ecapeVariable('$zoneId') + '/clusters/' + common_internal.Escaper.ecapeVariable('$clusterId');

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
   * Lists all clusters owned by a project in the specified zone.
   *
   * Request parameters:
   *
   * [projectId] - The Google Developers Console project ID or  project number.
   *
   * [zoneId] - The name of the Google Compute Engine zone in which the cluster
   * resides.
   *
   * Completes with a [ListClustersResponse].
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<ListClustersResponse> list(core.String projectId, core.String zoneId) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (projectId == null) {
      throw new core.ArgumentError("Parameter projectId is required.");
    }
    if (zoneId == null) {
      throw new core.ArgumentError("Parameter zoneId is required.");
    }


    _url = common_internal.Escaper.ecapeVariable('$projectId') + '/zones/' + common_internal.Escaper.ecapeVariable('$zoneId') + '/clusters';

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new ListClustersResponse.fromJson(data));
  }

}


/** Not documented yet. */
class ProjectsZonesOperationsResourceApi {
  final common_internal.ApiRequester _requester;

  ProjectsZonesOperationsResourceApi(common_internal.ApiRequester client) : 
      _requester = client;

  /**
   * Gets the specified operation.
   *
   * Request parameters:
   *
   * [projectId] - The Google Developers Console project ID or  project number.
   *
   * [zoneId] - The name of the Google Compute Engine zone in which the
   * operation resides. This is always the same zone as the cluster with which
   * the operation is associated.
   *
   * [operationId] - The server-assigned name of the operation.
   *
   * Completes with a [Operation].
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<Operation> get(core.String projectId, core.String zoneId, core.String operationId) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (projectId == null) {
      throw new core.ArgumentError("Parameter projectId is required.");
    }
    if (zoneId == null) {
      throw new core.ArgumentError("Parameter zoneId is required.");
    }
    if (operationId == null) {
      throw new core.ArgumentError("Parameter operationId is required.");
    }


    _url = common_internal.Escaper.ecapeVariable('$projectId') + '/zones/' + common_internal.Escaper.ecapeVariable('$zoneId') + '/operations/' + common_internal.Escaper.ecapeVariable('$operationId');

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
   * Lists all operations in a project in a specific zone.
   *
   * Request parameters:
   *
   * [projectId] - The Google Developers Console project ID or  project number.
   *
   * [zoneId] - The name of the Google Compute Engine zone to return operations
   * for.
   *
   * Completes with a [ListOperationsResponse].
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<ListOperationsResponse> list(core.String projectId, core.String zoneId) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (projectId == null) {
      throw new core.ArgumentError("Parameter projectId is required.");
    }
    if (zoneId == null) {
      throw new core.ArgumentError("Parameter zoneId is required.");
    }


    _url = common_internal.Escaper.ecapeVariable('$projectId') + '/zones/' + common_internal.Escaper.ecapeVariable('$zoneId') + '/operations';

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



/** Not documented yet. */
class Cluster {
  /**
   * The API version of the Kubernetes master and kubelets running in this
   * cluster. Allowed value is 0.4.2, or leave blank to pick up the latest
   * stable release.
   */
  core.String clusterApiVersion;

  /**
   * [Output only] The IP addresses of the container pods in this cluster, in
   * CIDR notation (e.g. 1.2.3.4/29).
   */
  core.String containerIpv4Cidr;

  /**
   * [Output only] The time the cluster was created, in RFC3339 text format.
   */
  core.String creationTimestamp;

  /** An optional description of this cluster. */
  core.String description;

  /**
   * [Output only] The IP address of this cluster's Kubernetes master. The
   * endpoint can be accessed from the internet at
   * https://username:password@endpoint/.
   *
   * See the masterAuth property of this resource for username and password
   * information.
   */
  core.String endpoint;

  /**
   * The HTTP basic authentication information for accessing the master. Because
   * the master endpoint is open to the internet, you should create a strong
   * password.
   */
  MasterAuth masterAuth;

  /**
   * The name of this cluster. The name must be unique within this project and
   * zone, and can be up to 40 characters with the following restrictions:
   * - Lowercase letters, numbers, and hyphens only.
   * - Must start with a letter.
   * - Must end with a number or a letter.
   */
  core.String name;

  /**
   * The name of the Google Compute Engine network to which the cluster is
   * connected.
   */
  core.String network;

  /**
   * The machine type and image to use for all nodes in this cluster. See the
   * descriptions of the child properties of nodeConfig.
   */
  NodeConfig nodeConfig;

  /**
   * [Output only] The size of the address space on each node for hosting
   * containers.
   */
  core.int nodeRoutingPrefixSize;

  /**
   * The number of nodes to create in this cluster. You must ensure that your
   * Compute Engine resource quota is sufficient for this number of instances
   * plus one (to include the master). You must also have available firewall and
   * routes quota.
   */
  core.int numNodes;

  /**
   * [Output only] The IP addresses of the Kubernetes services in this cluster,
   * in  CIDR notation (e.g. 1.2.3.4/29). Service addresses are always in the
   * 10.0.0.0/16 range.
   */
  core.String servicesIpv4Cidr;

  /**
   * [Output only] The current status of this cluster.
   * Possible string values are:
   * - "error"
   * - "provisioning"
   * - "running"
   * - "stopping"
   */
  core.String status;

  /**
   * [Output only] Additional information about the current status of this
   * cluster, if available.
   */
  core.String statusMessage;

  /**
   * [Output only] The name of the Google Compute Engine zone in which the
   * cluster resides.
   */
  core.String zone;


  Cluster();

  Cluster.fromJson(core.Map _json) {
    if (_json.containsKey("clusterApiVersion")) {
      clusterApiVersion = _json["clusterApiVersion"];
    }
    if (_json.containsKey("containerIpv4Cidr")) {
      containerIpv4Cidr = _json["containerIpv4Cidr"];
    }
    if (_json.containsKey("creationTimestamp")) {
      creationTimestamp = _json["creationTimestamp"];
    }
    if (_json.containsKey("description")) {
      description = _json["description"];
    }
    if (_json.containsKey("endpoint")) {
      endpoint = _json["endpoint"];
    }
    if (_json.containsKey("masterAuth")) {
      masterAuth = new MasterAuth.fromJson(_json["masterAuth"]);
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
    if (_json.containsKey("nodeRoutingPrefixSize")) {
      nodeRoutingPrefixSize = _json["nodeRoutingPrefixSize"];
    }
    if (_json.containsKey("numNodes")) {
      numNodes = _json["numNodes"];
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
    if (clusterApiVersion != null) {
      _json["clusterApiVersion"] = clusterApiVersion;
    }
    if (containerIpv4Cidr != null) {
      _json["containerIpv4Cidr"] = containerIpv4Cidr;
    }
    if (creationTimestamp != null) {
      _json["creationTimestamp"] = creationTimestamp;
    }
    if (description != null) {
      _json["description"] = description;
    }
    if (endpoint != null) {
      _json["endpoint"] = endpoint;
    }
    if (masterAuth != null) {
      _json["masterAuth"] = (masterAuth).toJson();
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
    if (nodeRoutingPrefixSize != null) {
      _json["nodeRoutingPrefixSize"] = nodeRoutingPrefixSize;
    }
    if (numNodes != null) {
      _json["numNodes"] = numNodes;
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


/** Not documented yet. */
class CreateClusterRequest {
  /** A cluster resource. */
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


/** Not documented yet. */
class ListAggregatedClustersResponse {
  /** A list of clusters in the project, across all zones. */
  core.List<Cluster> clusters;


  ListAggregatedClustersResponse();

  ListAggregatedClustersResponse.fromJson(core.Map _json) {
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


/** Not documented yet. */
class ListAggregatedOperationsResponse {
  /** A list of operations in the project, across all zones. */
  core.List<Operation> operations;


  ListAggregatedOperationsResponse();

  ListAggregatedOperationsResponse.fromJson(core.Map _json) {
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


/** Not documented yet. */
class ListClustersResponse {
  /** A list of clusters in the project in the specified zone. */
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


/** Not documented yet. */
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


/** Not documented yet. */
class MasterAuth {
  /** The password to use when accessing the Kubernetes master endpoint. */
  core.String password;

  /** The username to use when accessing the Kubernetes master endpoint. */
  core.String user;


  MasterAuth();

  MasterAuth.fromJson(core.Map _json) {
    if (_json.containsKey("password")) {
      password = _json["password"];
    }
    if (_json.containsKey("user")) {
      user = _json["user"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (password != null) {
      _json["password"] = password;
    }
    if (user != null) {
      _json["user"] = user;
    }
    return _json;
  }
}


/** Not documented yet. */
class NodeConfig {
  /**
   * The name of a Google Compute Engine machine type (e.g. n1-standard-1).
   *
   * If unspecified, the default machine type is n1-standard-1.
   */
  core.String machineType;

  /**
   * The fully-specified name of a Google Compute Engine image. For example:
   * https://www.googleapis.com/compute/v1/projects/debian-cloud/global/images/backports-debian-7-wheezy-vYYYYMMDD
   * (where YYYMMDD is the version date).
   *
   * If specifying an image, you are responsible for ensuring its compatibility
   * with the Debian 7 backports image. We recommend leaving this field blank to
   * accept the default backports-debian-7-wheezy value.
   */
  core.String sourceImage;


  NodeConfig();

  NodeConfig.fromJson(core.Map _json) {
    if (_json.containsKey("machineType")) {
      machineType = _json["machineType"];
    }
    if (_json.containsKey("sourceImage")) {
      sourceImage = _json["sourceImage"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (machineType != null) {
      _json["machineType"] = machineType;
    }
    if (sourceImage != null) {
      _json["sourceImage"] = sourceImage;
    }
    return _json;
  }
}


/** Defines the operation resource. All fields are output only. */
class Operation {
  /** If an error has occurred, a textual description of the error. */
  core.String errorMessage;

  /**
   * The server-assigned ID for this operation. If the operation is fulfilled
   * upfront, it may not have a resource name.
   */
  core.String name;

  /**
   * The operation type.
   * Possible string values are:
   * - "createCluster"
   * - "deleteCluster"
   */
  core.String operationType;

  /** Server-defined URL for the resource. */
  core.String selfLink;

  /**
   * The current status of the operation.
   * Possible string values are:
   * - "done"
   * - "pending"
   * - "running"
   */
  core.String status;

  /**
   * [Optional] The URL of the cluster resource that this operation is
   * associated with.
   */
  core.String target;

  /**
   * The name of the Google Compute Engine zone in which the operation is taking
   * place.
   */
  core.String zone;


  Operation();

  Operation.fromJson(core.Map _json) {
    if (_json.containsKey("errorMessage")) {
      errorMessage = _json["errorMessage"];
    }
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
    if (_json.containsKey("target")) {
      target = _json["target"];
    }
    if (_json.containsKey("zone")) {
      zone = _json["zone"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (errorMessage != null) {
      _json["errorMessage"] = errorMessage;
    }
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
    if (target != null) {
      _json["target"] = target;
    }
    if (zone != null) {
      _json["zone"] = zone;
    }
    return _json;
  }
}


