// This is a generated file (see the discoveryapis_generator project).

// ignore_for_file: unnecessary_cast

library googleapis.container.v1;

import 'dart:core' as core;
import 'dart:async' as async;
import 'dart:convert' as convert;

import 'package:_discoveryapis_commons/_discoveryapis_commons.dart' as commons;
import 'package:http/http.dart' as http;

export 'package:_discoveryapis_commons/_discoveryapis_commons.dart'
    show ApiRequestError, DetailedApiRequestError;

const core.String USER_AGENT = 'dart-api-client container/v1';

/// Builds and manages container-based applications, powered by the open source
/// Kubernetes technology.
class ContainerApi {
  /// View and manage your data across Google Cloud Platform services
  static const CloudPlatformScope =
      "https://www.googleapis.com/auth/cloud-platform";

  final commons.ApiRequester _requester;

  ProjectsResourceApi get projects => new ProjectsResourceApi(_requester);

  ContainerApi(http.Client client,
      {core.String rootUrl = "https://container.googleapis.com/",
      core.String servicePath = ""})
      : _requester =
            new commons.ApiRequester(client, rootUrl, servicePath, USER_AGENT);
}

class ProjectsResourceApi {
  final commons.ApiRequester _requester;

  ProjectsAggregatedResourceApi get aggregated =>
      new ProjectsAggregatedResourceApi(_requester);
  ProjectsLocationsResourceApi get locations =>
      new ProjectsLocationsResourceApi(_requester);
  ProjectsZonesResourceApi get zones =>
      new ProjectsZonesResourceApi(_requester);

  ProjectsResourceApi(commons.ApiRequester client) : _requester = client;
}

class ProjectsAggregatedResourceApi {
  final commons.ApiRequester _requester;

  ProjectsAggregatedUsableSubnetworksResourceApi get usableSubnetworks =>
      new ProjectsAggregatedUsableSubnetworksResourceApi(_requester);

  ProjectsAggregatedResourceApi(commons.ApiRequester client)
      : _requester = client;
}

class ProjectsAggregatedUsableSubnetworksResourceApi {
  final commons.ApiRequester _requester;

  ProjectsAggregatedUsableSubnetworksResourceApi(commons.ApiRequester client)
      : _requester = client;

  /// Lists subnetworks that are usable for creating clusters in a project.
  ///
  /// Request parameters:
  ///
  /// [parent] - The parent project where subnetworks are usable.
  /// Specified in the format 'projects / * '.
  /// Value must have pattern "^projects/[^/]+$".
  ///
  /// [pageToken] - Specifies a page token to use. Set this to the nextPageToken
  /// returned by
  /// previous list requests to get the next page of results.
  ///
  /// [pageSize] - The max number of results per page that should be returned.
  /// If the number
  /// of available results is larger than `page_size`, a `next_page_token` is
  /// returned which can be used to get the next page of results in subsequent
  /// requests. Acceptable values are 0 to 500, inclusive. (Default: 500)
  ///
  /// [filter] - Filtering currently only supports equality on the
  /// networkProjectId and must
  /// be in the form: "networkProjectId=[PROJECTID]", where `networkProjectId`
  /// is the project which owns the listed subnetworks. This defaults to the
  /// parent project ID.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListUsableSubnetworksResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListUsableSubnetworksResponse> list(core.String parent,
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

    if (parent == null) {
      throw new core.ArgumentError("Parameter parent is required.");
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

    _url = 'v1/' +
        commons.Escaper.ecapeVariableReserved('$parent') +
        '/aggregated/usableSubnetworks';

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response
        .then((data) => new ListUsableSubnetworksResponse.fromJson(data));
  }
}

class ProjectsLocationsResourceApi {
  final commons.ApiRequester _requester;

  ProjectsLocationsClustersResourceApi get clusters =>
      new ProjectsLocationsClustersResourceApi(_requester);
  ProjectsLocationsOperationsResourceApi get operations =>
      new ProjectsLocationsOperationsResourceApi(_requester);

  ProjectsLocationsResourceApi(commons.ApiRequester client)
      : _requester = client;

  /// Returns configuration info about the Google Kubernetes Engine service.
  ///
  /// Request parameters:
  ///
  /// [name] - The name (project and location) of the server config to get,
  /// specified in the format 'projects / * /locations / * '.
  /// Value must have pattern "^projects/[^/]+/locations/[^/]+$".
  ///
  /// [projectId] - Deprecated. The Google Developers Console [project ID or
  /// project
  /// number](https://support.google.com/cloud/answer/6158840).
  /// This field has been deprecated and replaced by the name field.
  ///
  /// [zone] - Deprecated. The name of the Google Compute Engine
  /// [zone](/compute/docs/zones#available) to return operations for.
  /// This field has been deprecated and replaced by the name field.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ServerConfig].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ServerConfig> getServerConfig(core.String name,
      {core.String projectId, core.String zone, core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (name == null) {
      throw new core.ArgumentError("Parameter name is required.");
    }
    if (projectId != null) {
      _queryParams["projectId"] = [projectId];
    }
    if (zone != null) {
      _queryParams["zone"] = [zone];
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1/' +
        commons.Escaper.ecapeVariableReserved('$name') +
        '/serverConfig';

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new ServerConfig.fromJson(data));
  }
}

class ProjectsLocationsClustersResourceApi {
  final commons.ApiRequester _requester;

  ProjectsLocationsClustersNodePoolsResourceApi get nodePools =>
      new ProjectsLocationsClustersNodePoolsResourceApi(_requester);
  ProjectsLocationsClustersWell_knownResourceApi get well_known =>
      new ProjectsLocationsClustersWell_knownResourceApi(_requester);

  ProjectsLocationsClustersResourceApi(commons.ApiRequester client)
      : _requester = client;

  /// Completes master IP rotation.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - The name (project, location, cluster id) of the cluster to
  /// complete IP
  /// rotation. Specified in the format 'projects / * /locations / * /clusters /
  /// * '.
  /// Value must have pattern "^projects/[^/]+/locations/[^/]+/clusters/[^/]+$".
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
  async.Future<Operation> completeIpRotation(
      CompleteIPRotationRequest request, core.String name,
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

    _url = 'v1/' +
        commons.Escaper.ecapeVariableReserved('$name') +
        ':completeIpRotation';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Operation.fromJson(data));
  }

  /// Creates a cluster, consisting of the specified number and type of Google
  /// Compute Engine instances.
  ///
  /// By default, the cluster is created in the project's
  /// [default network](/compute/docs/networks-and-firewalls#networks).
  ///
  /// One firewall is added for the cluster. After cluster creation,
  /// the Kubelet creates routes for each node to allow the containers
  /// on that node to communicate with all other instances in the
  /// cluster.
  ///
  /// Finally, an entry is added to the project's global metadata indicating
  /// which CIDR range the cluster is using.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - The parent (project and location) where the cluster will be
  /// created.
  /// Specified in the format 'projects / * /locations / * '.
  /// Value must have pattern "^projects/[^/]+/locations/[^/]+$".
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
      CreateClusterRequest request, core.String parent,
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

    _url =
        'v1/' + commons.Escaper.ecapeVariableReserved('$parent') + '/clusters';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Operation.fromJson(data));
  }

  /// Deletes the cluster, including the Kubernetes endpoint and all worker
  /// nodes.
  ///
  /// Firewalls and routes that were configured during cluster creation
  /// are also deleted.
  ///
  /// Other Google Compute Engine resources that might be in use by the cluster,
  /// such as load balancer resources, are not deleted if they weren't present
  /// when the cluster was initially created.
  ///
  /// Request parameters:
  ///
  /// [name] - The name (project, location, cluster) of the cluster to delete.
  /// Specified in the format 'projects / * /locations / * /clusters / * '.
  /// Value must have pattern "^projects/[^/]+/locations/[^/]+/clusters/[^/]+$".
  ///
  /// [clusterId] - Deprecated. The name of the cluster to delete.
  /// This field has been deprecated and replaced by the name field.
  ///
  /// [projectId] - Deprecated. The Google Developers Console [project ID or
  /// project
  /// number](https://support.google.com/cloud/answer/6158840).
  /// This field has been deprecated and replaced by the name field.
  ///
  /// [zone] - Deprecated. The name of the Google Compute Engine
  /// [zone](/compute/docs/zones#available) in which the cluster
  /// resides.
  /// This field has been deprecated and replaced by the name field.
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
  async.Future<Operation> delete(core.String name,
      {core.String clusterId,
      core.String projectId,
      core.String zone,
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
    if (clusterId != null) {
      _queryParams["clusterId"] = [clusterId];
    }
    if (projectId != null) {
      _queryParams["projectId"] = [projectId];
    }
    if (zone != null) {
      _queryParams["zone"] = [zone];
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1/' + commons.Escaper.ecapeVariableReserved('$name');

    var _response = _requester.request(_url, "DELETE",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Operation.fromJson(data));
  }

  /// Gets the details of a specific cluster.
  ///
  /// Request parameters:
  ///
  /// [name] - The name (project, location, cluster) of the cluster to retrieve.
  /// Specified in the format 'projects / * /locations / * /clusters / * '.
  /// Value must have pattern "^projects/[^/]+/locations/[^/]+/clusters/[^/]+$".
  ///
  /// [projectId] - Deprecated. The Google Developers Console [project ID or
  /// project
  /// number](https://support.google.com/cloud/answer/6158840).
  /// This field has been deprecated and replaced by the name field.
  ///
  /// [zone] - Deprecated. The name of the Google Compute Engine
  /// [zone](/compute/docs/zones#available) in which the cluster
  /// resides.
  /// This field has been deprecated and replaced by the name field.
  ///
  /// [clusterId] - Deprecated. The name of the cluster to retrieve.
  /// This field has been deprecated and replaced by the name field.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Cluster].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Cluster> get(core.String name,
      {core.String projectId,
      core.String zone,
      core.String clusterId,
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
    if (projectId != null) {
      _queryParams["projectId"] = [projectId];
    }
    if (zone != null) {
      _queryParams["zone"] = [zone];
    }
    if (clusterId != null) {
      _queryParams["clusterId"] = [clusterId];
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1/' + commons.Escaper.ecapeVariableReserved('$name');

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Cluster.fromJson(data));
  }

  /// Gets the public component of the cluster signing keys in
  /// JSON Web Key format.
  /// This API is not yet intended for general use, and is not available for all
  /// clusters.
  ///
  /// Request parameters:
  ///
  /// [parent] - The cluster (project, location, cluster id) to get keys for.
  /// Specified in
  /// the format 'projects / * /locations / * /clusters / * '.
  /// Value must have pattern "^projects/[^/]+/locations/[^/]+/clusters/[^/]+$".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GetJSONWebKeysResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GetJSONWebKeysResponse> getJwks(core.String parent,
      {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (parent == null) {
      throw new core.ArgumentError("Parameter parent is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1/' + commons.Escaper.ecapeVariableReserved('$parent') + '/jwks';

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new GetJSONWebKeysResponse.fromJson(data));
  }

  /// Lists all clusters owned by a project in either the specified zone or all
  /// zones.
  ///
  /// Request parameters:
  ///
  /// [parent] - The parent (project and location) where the clusters will be
  /// listed.
  /// Specified in the format 'projects / * /locations / * '.
  /// Location "-" matches all zones and all regions.
  /// Value must have pattern "^projects/[^/]+/locations/[^/]+$".
  ///
  /// [projectId] - Deprecated. The Google Developers Console [project ID or
  /// project
  /// number](https://support.google.com/cloud/answer/6158840).
  /// This field has been deprecated and replaced by the parent field.
  ///
  /// [zone] - Deprecated. The name of the Google Compute Engine
  /// [zone](/compute/docs/zones#available) in which the cluster
  /// resides, or "-" for all zones.
  /// This field has been deprecated and replaced by the parent field.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListClustersResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListClustersResponse> list(core.String parent,
      {core.String projectId, core.String zone, core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (parent == null) {
      throw new core.ArgumentError("Parameter parent is required.");
    }
    if (projectId != null) {
      _queryParams["projectId"] = [projectId];
    }
    if (zone != null) {
      _queryParams["zone"] = [zone];
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url =
        'v1/' + commons.Escaper.ecapeVariableReserved('$parent') + '/clusters';

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new ListClustersResponse.fromJson(data));
  }

  /// Sets the addons for a specific cluster.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - The name (project, location, cluster) of the cluster to set
  /// addons.
  /// Specified in the format 'projects / * /locations / * /clusters / * '.
  /// Value must have pattern "^projects/[^/]+/locations/[^/]+/clusters/[^/]+$".
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
  async.Future<Operation> setAddons(
      SetAddonsConfigRequest request, core.String name,
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

    _url =
        'v1/' + commons.Escaper.ecapeVariableReserved('$name') + ':setAddons';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Operation.fromJson(data));
  }

  /// Enables or disables the ABAC authorization mechanism on a cluster.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - The name (project, location, cluster id) of the cluster to set
  /// legacy abac.
  /// Specified in the format 'projects / * /locations / * /clusters / * '.
  /// Value must have pattern "^projects/[^/]+/locations/[^/]+/clusters/[^/]+$".
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
  async.Future<Operation> setLegacyAbac(
      SetLegacyAbacRequest request, core.String name,
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

    _url = 'v1/' +
        commons.Escaper.ecapeVariableReserved('$name') +
        ':setLegacyAbac';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Operation.fromJson(data));
  }

  /// Sets the locations for a specific cluster.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - The name (project, location, cluster) of the cluster to set
  /// locations.
  /// Specified in the format 'projects / * /locations / * /clusters / * '.
  /// Value must have pattern "^projects/[^/]+/locations/[^/]+/clusters/[^/]+$".
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
  async.Future<Operation> setLocations(
      SetLocationsRequest request, core.String name,
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

    _url = 'v1/' +
        commons.Escaper.ecapeVariableReserved('$name') +
        ':setLocations';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Operation.fromJson(data));
  }

  /// Sets the logging service for a specific cluster.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - The name (project, location, cluster) of the cluster to set
  /// logging.
  /// Specified in the format 'projects / * /locations / * /clusters / * '.
  /// Value must have pattern "^projects/[^/]+/locations/[^/]+/clusters/[^/]+$".
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
  async.Future<Operation> setLogging(
      SetLoggingServiceRequest request, core.String name,
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

    _url =
        'v1/' + commons.Escaper.ecapeVariableReserved('$name') + ':setLogging';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Operation.fromJson(data));
  }

  /// Sets the maintenance policy for a cluster.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - The name (project, location, cluster id) of the cluster to set
  /// maintenance
  /// policy.
  /// Specified in the format 'projects / * /locations / * /clusters / * '.
  /// Value must have pattern "^projects/[^/]+/locations/[^/]+/clusters/[^/]+$".
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
  async.Future<Operation> setMaintenancePolicy(
      SetMaintenancePolicyRequest request, core.String name,
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

    _url = 'v1/' +
        commons.Escaper.ecapeVariableReserved('$name') +
        ':setMaintenancePolicy';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Operation.fromJson(data));
  }

  /// Sets master auth materials. Currently supports changing the admin password
  /// or a specific cluster, either via password generation or explicitly
  /// setting
  /// the password.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - The name (project, location, cluster) of the cluster to set auth.
  /// Specified in the format 'projects / * /locations / * /clusters / * '.
  /// Value must have pattern "^projects/[^/]+/locations/[^/]+/clusters/[^/]+$".
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
  async.Future<Operation> setMasterAuth(
      SetMasterAuthRequest request, core.String name,
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

    _url = 'v1/' +
        commons.Escaper.ecapeVariableReserved('$name') +
        ':setMasterAuth';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Operation.fromJson(data));
  }

  /// Sets the monitoring service for a specific cluster.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - The name (project, location, cluster) of the cluster to set
  /// monitoring.
  /// Specified in the format 'projects / * /locations / * /clusters / * '.
  /// Value must have pattern "^projects/[^/]+/locations/[^/]+/clusters/[^/]+$".
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
  async.Future<Operation> setMonitoring(
      SetMonitoringServiceRequest request, core.String name,
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

    _url = 'v1/' +
        commons.Escaper.ecapeVariableReserved('$name') +
        ':setMonitoring';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Operation.fromJson(data));
  }

  /// Enables or disables Network Policy for a cluster.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - The name (project, location, cluster id) of the cluster to set
  /// networking
  /// policy. Specified in the format 'projects / * /locations / * /clusters / *
  /// '.
  /// Value must have pattern "^projects/[^/]+/locations/[^/]+/clusters/[^/]+$".
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
  async.Future<Operation> setNetworkPolicy(
      SetNetworkPolicyRequest request, core.String name,
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

    _url = 'v1/' +
        commons.Escaper.ecapeVariableReserved('$name') +
        ':setNetworkPolicy';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Operation.fromJson(data));
  }

  /// Sets labels on a cluster.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - The name (project, location, cluster id) of the cluster to set
  /// labels.
  /// Specified in the format 'projects / * /locations / * /clusters / * '.
  /// Value must have pattern "^projects/[^/]+/locations/[^/]+/clusters/[^/]+$".
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
  async.Future<Operation> setResourceLabels(
      SetLabelsRequest request, core.String name,
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

    _url = 'v1/' +
        commons.Escaper.ecapeVariableReserved('$name') +
        ':setResourceLabels';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Operation.fromJson(data));
  }

  /// Starts master IP rotation.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - The name (project, location, cluster id) of the cluster to start
  /// IP
  /// rotation. Specified in the format 'projects / * /locations / * /clusters /
  /// * '.
  /// Value must have pattern "^projects/[^/]+/locations/[^/]+/clusters/[^/]+$".
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
  async.Future<Operation> startIpRotation(
      StartIPRotationRequest request, core.String name,
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

    _url = 'v1/' +
        commons.Escaper.ecapeVariableReserved('$name') +
        ':startIpRotation';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Operation.fromJson(data));
  }

  /// Updates the settings of a specific cluster.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - The name (project, location, cluster) of the cluster to update.
  /// Specified in the format 'projects / * /locations / * /clusters / * '.
  /// Value must have pattern "^projects/[^/]+/locations/[^/]+/clusters/[^/]+$".
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
  async.Future<Operation> update(UpdateClusterRequest request, core.String name,
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

    _url = 'v1/' + commons.Escaper.ecapeVariableReserved('$name');

    var _response = _requester.request(_url, "PUT",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Operation.fromJson(data));
  }

  /// Updates the master for a specific cluster.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - The name (project, location, cluster) of the cluster to update.
  /// Specified in the format 'projects / * /locations / * /clusters / * '.
  /// Value must have pattern "^projects/[^/]+/locations/[^/]+/clusters/[^/]+$".
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
  async.Future<Operation> updateMaster(
      UpdateMasterRequest request, core.String name,
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

    _url = 'v1/' +
        commons.Escaper.ecapeVariableReserved('$name') +
        ':updateMaster';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Operation.fromJson(data));
  }
}

class ProjectsLocationsClustersNodePoolsResourceApi {
  final commons.ApiRequester _requester;

  ProjectsLocationsClustersNodePoolsResourceApi(commons.ApiRequester client)
      : _requester = client;

  /// Creates a node pool for a cluster.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - The parent (project, location, cluster id) where the node pool
  /// will be
  /// created. Specified in the format
  /// 'projects / * /locations / * /clusters / * '.
  /// Value must have pattern "^projects/[^/]+/locations/[^/]+/clusters/[^/]+$".
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
      CreateNodePoolRequest request, core.String parent,
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

    _url =
        'v1/' + commons.Escaper.ecapeVariableReserved('$parent') + '/nodePools';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Operation.fromJson(data));
  }

  /// Deletes a node pool from a cluster.
  ///
  /// Request parameters:
  ///
  /// [name] - The name (project, location, cluster, node pool id) of the node
  /// pool to
  /// delete. Specified in the format
  /// 'projects / * /locations / * /clusters / * /nodePools / * '.
  /// Value must have pattern
  /// "^projects/[^/]+/locations/[^/]+/clusters/[^/]+/nodePools/[^/]+$".
  ///
  /// [projectId] - Deprecated. The Google Developers Console [project ID or
  /// project
  /// number](https://developers.google.com/console/help/new/#projectnumber).
  /// This field has been deprecated and replaced by the name field.
  ///
  /// [zone] - Deprecated. The name of the Google Compute Engine
  /// [zone](/compute/docs/zones#available) in which the cluster
  /// resides.
  /// This field has been deprecated and replaced by the name field.
  ///
  /// [clusterId] - Deprecated. The name of the cluster.
  /// This field has been deprecated and replaced by the name field.
  ///
  /// [nodePoolId] - Deprecated. The name of the node pool to delete.
  /// This field has been deprecated and replaced by the name field.
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
  async.Future<Operation> delete(core.String name,
      {core.String projectId,
      core.String zone,
      core.String clusterId,
      core.String nodePoolId,
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
    if (projectId != null) {
      _queryParams["projectId"] = [projectId];
    }
    if (zone != null) {
      _queryParams["zone"] = [zone];
    }
    if (clusterId != null) {
      _queryParams["clusterId"] = [clusterId];
    }
    if (nodePoolId != null) {
      _queryParams["nodePoolId"] = [nodePoolId];
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1/' + commons.Escaper.ecapeVariableReserved('$name');

    var _response = _requester.request(_url, "DELETE",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Operation.fromJson(data));
  }

  /// Retrieves the requested node pool.
  ///
  /// Request parameters:
  ///
  /// [name] - The name (project, location, cluster, node pool id) of the node
  /// pool to
  /// get. Specified in the format
  /// 'projects / * /locations / * /clusters / * /nodePools / * '.
  /// Value must have pattern
  /// "^projects/[^/]+/locations/[^/]+/clusters/[^/]+/nodePools/[^/]+$".
  ///
  /// [projectId] - Deprecated. The Google Developers Console [project ID or
  /// project
  /// number](https://developers.google.com/console/help/new/#projectnumber).
  /// This field has been deprecated and replaced by the name field.
  ///
  /// [zone] - Deprecated. The name of the Google Compute Engine
  /// [zone](/compute/docs/zones#available) in which the cluster
  /// resides.
  /// This field has been deprecated and replaced by the name field.
  ///
  /// [clusterId] - Deprecated. The name of the cluster.
  /// This field has been deprecated and replaced by the name field.
  ///
  /// [nodePoolId] - Deprecated. The name of the node pool.
  /// This field has been deprecated and replaced by the name field.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [NodePool].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<NodePool> get(core.String name,
      {core.String projectId,
      core.String zone,
      core.String clusterId,
      core.String nodePoolId,
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
    if (projectId != null) {
      _queryParams["projectId"] = [projectId];
    }
    if (zone != null) {
      _queryParams["zone"] = [zone];
    }
    if (clusterId != null) {
      _queryParams["clusterId"] = [clusterId];
    }
    if (nodePoolId != null) {
      _queryParams["nodePoolId"] = [nodePoolId];
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1/' + commons.Escaper.ecapeVariableReserved('$name');

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new NodePool.fromJson(data));
  }

  /// Lists the node pools for a cluster.
  ///
  /// Request parameters:
  ///
  /// [parent] - The parent (project, location, cluster id) where the node pools
  /// will be
  /// listed. Specified in the format 'projects / * /locations / * /clusters / *
  /// '.
  /// Value must have pattern "^projects/[^/]+/locations/[^/]+/clusters/[^/]+$".
  ///
  /// [projectId] - Deprecated. The Google Developers Console [project ID or
  /// project
  /// number](https://developers.google.com/console/help/new/#projectnumber).
  /// This field has been deprecated and replaced by the parent field.
  ///
  /// [zone] - Deprecated. The name of the Google Compute Engine
  /// [zone](/compute/docs/zones#available) in which the cluster
  /// resides.
  /// This field has been deprecated and replaced by the parent field.
  ///
  /// [clusterId] - Deprecated. The name of the cluster.
  /// This field has been deprecated and replaced by the parent field.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListNodePoolsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListNodePoolsResponse> list(core.String parent,
      {core.String projectId,
      core.String zone,
      core.String clusterId,
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
    if (projectId != null) {
      _queryParams["projectId"] = [projectId];
    }
    if (zone != null) {
      _queryParams["zone"] = [zone];
    }
    if (clusterId != null) {
      _queryParams["clusterId"] = [clusterId];
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url =
        'v1/' + commons.Escaper.ecapeVariableReserved('$parent') + '/nodePools';

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new ListNodePoolsResponse.fromJson(data));
  }

  /// Rolls back a previously Aborted or Failed NodePool upgrade.
  /// This makes no changes if the last upgrade successfully completed.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - The name (project, location, cluster, node pool id) of the node
  /// poll to
  /// rollback upgrade.
  /// Specified in the format 'projects / * /locations / * /clusters / *
  /// /nodePools / * '.
  /// Value must have pattern
  /// "^projects/[^/]+/locations/[^/]+/clusters/[^/]+/nodePools/[^/]+$".
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
      RollbackNodePoolUpgradeRequest request, core.String name,
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

    _url = 'v1/' + commons.Escaper.ecapeVariableReserved('$name') + ':rollback';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Operation.fromJson(data));
  }

  /// Sets the autoscaling settings for the specified node pool.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - The name (project, location, cluster, node pool) of the node pool
  /// to set
  /// autoscaler settings. Specified in the format
  /// 'projects / * /locations / * /clusters / * /nodePools / * '.
  /// Value must have pattern
  /// "^projects/[^/]+/locations/[^/]+/clusters/[^/]+/nodePools/[^/]+$".
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
  async.Future<Operation> setAutoscaling(
      SetNodePoolAutoscalingRequest request, core.String name,
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

    _url = 'v1/' +
        commons.Escaper.ecapeVariableReserved('$name') +
        ':setAutoscaling';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Operation.fromJson(data));
  }

  /// Sets the NodeManagement options for a node pool.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - The name (project, location, cluster, node pool id) of the node
  /// pool to set
  /// management properties. Specified in the format
  /// 'projects / * /locations / * /clusters / * /nodePools / * '.
  /// Value must have pattern
  /// "^projects/[^/]+/locations/[^/]+/clusters/[^/]+/nodePools/[^/]+$".
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
  async.Future<Operation> setManagement(
      SetNodePoolManagementRequest request, core.String name,
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

    _url = 'v1/' +
        commons.Escaper.ecapeVariableReserved('$name') +
        ':setManagement';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Operation.fromJson(data));
  }

  /// Sets the size for a specific node pool.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - The name (project, location, cluster, node pool id) of the node
  /// pool to set
  /// size.
  /// Specified in the format 'projects / * /locations / * /clusters / *
  /// /nodePools / * '.
  /// Value must have pattern
  /// "^projects/[^/]+/locations/[^/]+/clusters/[^/]+/nodePools/[^/]+$".
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
  async.Future<Operation> setSize(
      SetNodePoolSizeRequest request, core.String name,
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

    _url = 'v1/' + commons.Escaper.ecapeVariableReserved('$name') + ':setSize';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Operation.fromJson(data));
  }

  /// Updates the version and/or image type for the specified node pool.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - The name (project, location, cluster, node pool) of the node pool
  /// to
  /// update. Specified in the format
  /// 'projects / * /locations / * /clusters / * /nodePools / * '.
  /// Value must have pattern
  /// "^projects/[^/]+/locations/[^/]+/clusters/[^/]+/nodePools/[^/]+$".
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
      UpdateNodePoolRequest request, core.String name,
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

    _url = 'v1/' + commons.Escaper.ecapeVariableReserved('$name');

    var _response = _requester.request(_url, "PUT",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Operation.fromJson(data));
  }
}

class ProjectsLocationsClustersWell_knownResourceApi {
  final commons.ApiRequester _requester;

  ProjectsLocationsClustersWell_knownResourceApi(commons.ApiRequester client)
      : _requester = client;

  /// Gets the OIDC discovery document for the cluster.
  /// See the
  /// [OpenID Connect Discovery 1.0
  /// specification](https://openid.net/specs/openid-connect-discovery-1_0.html)
  /// for details.
  /// This API is not yet intended for general use, and is not available for all
  /// clusters.
  ///
  /// Request parameters:
  ///
  /// [parent] - The cluster (project, location, cluster id) to get the
  /// discovery document
  /// for. Specified in the format 'projects / * /locations / * /clusters / * '.
  /// Value must have pattern "^projects/[^/]+/locations/[^/]+/clusters/[^/]+$".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GetOpenIDConfigResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GetOpenIDConfigResponse> getOpenid_configuration(
      core.String parent,
      {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (parent == null) {
      throw new core.ArgumentError("Parameter parent is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1/' +
        commons.Escaper.ecapeVariableReserved('$parent') +
        '/.well-known/openid-configuration';

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new GetOpenIDConfigResponse.fromJson(data));
  }
}

class ProjectsLocationsOperationsResourceApi {
  final commons.ApiRequester _requester;

  ProjectsLocationsOperationsResourceApi(commons.ApiRequester client)
      : _requester = client;

  /// Cancels the specified operation.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - The name (project, location, operation id) of the operation to
  /// cancel.
  /// Specified in the format 'projects / * /locations / * /operations / * '.
  /// Value must have pattern
  /// "^projects/[^/]+/locations/[^/]+/operations/[^/]+$".
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
  async.Future<Empty> cancel(CancelOperationRequest request, core.String name,
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

    _url = 'v1/' + commons.Escaper.ecapeVariableReserved('$name') + ':cancel';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Empty.fromJson(data));
  }

  /// Gets the specified operation.
  ///
  /// Request parameters:
  ///
  /// [name] - The name (project, location, operation id) of the operation to
  /// get.
  /// Specified in the format 'projects / * /locations / * /operations / * '.
  /// Value must have pattern
  /// "^projects/[^/]+/locations/[^/]+/operations/[^/]+$".
  ///
  /// [operationId] - Deprecated. The server-assigned `name` of the operation.
  /// This field has been deprecated and replaced by the name field.
  ///
  /// [projectId] - Deprecated. The Google Developers Console [project ID or
  /// project
  /// number](https://support.google.com/cloud/answer/6158840).
  /// This field has been deprecated and replaced by the name field.
  ///
  /// [zone] - Deprecated. The name of the Google Compute Engine
  /// [zone](/compute/docs/zones#available) in which the cluster
  /// resides.
  /// This field has been deprecated and replaced by the name field.
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
  async.Future<Operation> get(core.String name,
      {core.String operationId,
      core.String projectId,
      core.String zone,
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
    if (operationId != null) {
      _queryParams["operationId"] = [operationId];
    }
    if (projectId != null) {
      _queryParams["projectId"] = [projectId];
    }
    if (zone != null) {
      _queryParams["zone"] = [zone];
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1/' + commons.Escaper.ecapeVariableReserved('$name');

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Operation.fromJson(data));
  }

  /// Lists all operations in a project in a specific zone or all zones.
  ///
  /// Request parameters:
  ///
  /// [parent] - The parent (project and location) where the operations will be
  /// listed.
  /// Specified in the format 'projects / * /locations / * '.
  /// Location "-" matches all zones and all regions.
  /// Value must have pattern "^projects/[^/]+/locations/[^/]+$".
  ///
  /// [projectId] - Deprecated. The Google Developers Console [project ID or
  /// project
  /// number](https://support.google.com/cloud/answer/6158840).
  /// This field has been deprecated and replaced by the parent field.
  ///
  /// [zone] - Deprecated. The name of the Google Compute Engine
  /// [zone](/compute/docs/zones#available) to return operations for, or `-` for
  /// all zones. This field has been deprecated and replaced by the parent
  /// field.
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
  async.Future<ListOperationsResponse> list(core.String parent,
      {core.String projectId, core.String zone, core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (parent == null) {
      throw new core.ArgumentError("Parameter parent is required.");
    }
    if (projectId != null) {
      _queryParams["projectId"] = [projectId];
    }
    if (zone != null) {
      _queryParams["zone"] = [zone];
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1/' +
        commons.Escaper.ecapeVariableReserved('$parent') +
        '/operations';

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new ListOperationsResponse.fromJson(data));
  }
}

class ProjectsZonesResourceApi {
  final commons.ApiRequester _requester;

  ProjectsZonesClustersResourceApi get clusters =>
      new ProjectsZonesClustersResourceApi(_requester);
  ProjectsZonesOperationsResourceApi get operations =>
      new ProjectsZonesOperationsResourceApi(_requester);

  ProjectsZonesResourceApi(commons.ApiRequester client) : _requester = client;

  /// Returns configuration info about the Google Kubernetes Engine service.
  ///
  /// Request parameters:
  ///
  /// [projectId] - Deprecated. The Google Developers Console [project ID or
  /// project
  /// number](https://support.google.com/cloud/answer/6158840).
  /// This field has been deprecated and replaced by the name field.
  ///
  /// [zone] - Deprecated. The name of the Google Compute Engine
  /// [zone](/compute/docs/zones#available) to return operations for.
  /// This field has been deprecated and replaced by the name field.
  ///
  /// [name] - The name (project and location) of the server config to get,
  /// specified in the format 'projects / * /locations / * '.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ServerConfig].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ServerConfig> getServerconfig(
      core.String projectId, core.String zone,
      {core.String name, core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (projectId == null) {
      throw new core.ArgumentError("Parameter projectId is required.");
    }
    if (zone == null) {
      throw new core.ArgumentError("Parameter zone is required.");
    }
    if (name != null) {
      _queryParams["name"] = [name];
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1/projects/' +
        commons.Escaper.ecapeVariable('$projectId') +
        '/zones/' +
        commons.Escaper.ecapeVariable('$zone') +
        '/serverconfig';

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new ServerConfig.fromJson(data));
  }
}

class ProjectsZonesClustersResourceApi {
  final commons.ApiRequester _requester;

  ProjectsZonesClustersNodePoolsResourceApi get nodePools =>
      new ProjectsZonesClustersNodePoolsResourceApi(_requester);

  ProjectsZonesClustersResourceApi(commons.ApiRequester client)
      : _requester = client;

  /// Sets the addons for a specific cluster.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [projectId] - Deprecated. The Google Developers Console [project ID or
  /// project
  /// number](https://support.google.com/cloud/answer/6158840).
  /// This field has been deprecated and replaced by the name field.
  ///
  /// [zone] - Deprecated. The name of the Google Compute Engine
  /// [zone](/compute/docs/zones#available) in which the cluster
  /// resides.
  /// This field has been deprecated and replaced by the name field.
  ///
  /// [clusterId] - Deprecated. The name of the cluster to upgrade.
  /// This field has been deprecated and replaced by the name field.
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
  async.Future<Operation> addons(SetAddonsConfigRequest request,
      core.String projectId, core.String zone, core.String clusterId,
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
    if (projectId == null) {
      throw new core.ArgumentError("Parameter projectId is required.");
    }
    if (zone == null) {
      throw new core.ArgumentError("Parameter zone is required.");
    }
    if (clusterId == null) {
      throw new core.ArgumentError("Parameter clusterId is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1/projects/' +
        commons.Escaper.ecapeVariable('$projectId') +
        '/zones/' +
        commons.Escaper.ecapeVariable('$zone') +
        '/clusters/' +
        commons.Escaper.ecapeVariable('$clusterId') +
        '/addons';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Operation.fromJson(data));
  }

  /// Completes master IP rotation.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [projectId] - Deprecated. The Google Developers Console [project ID or
  /// project
  /// number](https://developers.google.com/console/help/new/#projectnumber).
  /// This field has been deprecated and replaced by the name field.
  ///
  /// [zone] - Deprecated. The name of the Google Compute Engine
  /// [zone](/compute/docs/zones#available) in which the cluster
  /// resides.
  /// This field has been deprecated and replaced by the name field.
  ///
  /// [clusterId] - Deprecated. The name of the cluster.
  /// This field has been deprecated and replaced by the name field.
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
  async.Future<Operation> completeIpRotation(CompleteIPRotationRequest request,
      core.String projectId, core.String zone, core.String clusterId,
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
    if (projectId == null) {
      throw new core.ArgumentError("Parameter projectId is required.");
    }
    if (zone == null) {
      throw new core.ArgumentError("Parameter zone is required.");
    }
    if (clusterId == null) {
      throw new core.ArgumentError("Parameter clusterId is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1/projects/' +
        commons.Escaper.ecapeVariable('$projectId') +
        '/zones/' +
        commons.Escaper.ecapeVariable('$zone') +
        '/clusters/' +
        commons.Escaper.ecapeVariable('$clusterId') +
        ':completeIpRotation';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Operation.fromJson(data));
  }

  /// Creates a cluster, consisting of the specified number and type of Google
  /// Compute Engine instances.
  ///
  /// By default, the cluster is created in the project's
  /// [default network](/compute/docs/networks-and-firewalls#networks).
  ///
  /// One firewall is added for the cluster. After cluster creation,
  /// the Kubelet creates routes for each node to allow the containers
  /// on that node to communicate with all other instances in the
  /// cluster.
  ///
  /// Finally, an entry is added to the project's global metadata indicating
  /// which CIDR range the cluster is using.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [projectId] - Deprecated. The Google Developers Console [project ID or
  /// project
  /// number](https://support.google.com/cloud/answer/6158840).
  /// This field has been deprecated and replaced by the parent field.
  ///
  /// [zone] - Deprecated. The name of the Google Compute Engine
  /// [zone](/compute/docs/zones#available) in which the cluster
  /// resides.
  /// This field has been deprecated and replaced by the parent field.
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
      CreateClusterRequest request, core.String projectId, core.String zone,
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
    if (projectId == null) {
      throw new core.ArgumentError("Parameter projectId is required.");
    }
    if (zone == null) {
      throw new core.ArgumentError("Parameter zone is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1/projects/' +
        commons.Escaper.ecapeVariable('$projectId') +
        '/zones/' +
        commons.Escaper.ecapeVariable('$zone') +
        '/clusters';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Operation.fromJson(data));
  }

  /// Deletes the cluster, including the Kubernetes endpoint and all worker
  /// nodes.
  ///
  /// Firewalls and routes that were configured during cluster creation
  /// are also deleted.
  ///
  /// Other Google Compute Engine resources that might be in use by the cluster,
  /// such as load balancer resources, are not deleted if they weren't present
  /// when the cluster was initially created.
  ///
  /// Request parameters:
  ///
  /// [projectId] - Deprecated. The Google Developers Console [project ID or
  /// project
  /// number](https://support.google.com/cloud/answer/6158840).
  /// This field has been deprecated and replaced by the name field.
  ///
  /// [zone] - Deprecated. The name of the Google Compute Engine
  /// [zone](/compute/docs/zones#available) in which the cluster
  /// resides.
  /// This field has been deprecated and replaced by the name field.
  ///
  /// [clusterId] - Deprecated. The name of the cluster to delete.
  /// This field has been deprecated and replaced by the name field.
  ///
  /// [name] - The name (project, location, cluster) of the cluster to delete.
  /// Specified in the format 'projects / * /locations / * /clusters / * '.
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
      core.String projectId, core.String zone, core.String clusterId,
      {core.String name, core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (projectId == null) {
      throw new core.ArgumentError("Parameter projectId is required.");
    }
    if (zone == null) {
      throw new core.ArgumentError("Parameter zone is required.");
    }
    if (clusterId == null) {
      throw new core.ArgumentError("Parameter clusterId is required.");
    }
    if (name != null) {
      _queryParams["name"] = [name];
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1/projects/' +
        commons.Escaper.ecapeVariable('$projectId') +
        '/zones/' +
        commons.Escaper.ecapeVariable('$zone') +
        '/clusters/' +
        commons.Escaper.ecapeVariable('$clusterId');

    var _response = _requester.request(_url, "DELETE",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Operation.fromJson(data));
  }

  /// Gets the details of a specific cluster.
  ///
  /// Request parameters:
  ///
  /// [projectId] - Deprecated. The Google Developers Console [project ID or
  /// project
  /// number](https://support.google.com/cloud/answer/6158840).
  /// This field has been deprecated and replaced by the name field.
  ///
  /// [zone] - Deprecated. The name of the Google Compute Engine
  /// [zone](/compute/docs/zones#available) in which the cluster
  /// resides.
  /// This field has been deprecated and replaced by the name field.
  ///
  /// [clusterId] - Deprecated. The name of the cluster to retrieve.
  /// This field has been deprecated and replaced by the name field.
  ///
  /// [name] - The name (project, location, cluster) of the cluster to retrieve.
  /// Specified in the format 'projects / * /locations / * /clusters / * '.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Cluster].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Cluster> get(
      core.String projectId, core.String zone, core.String clusterId,
      {core.String name, core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (projectId == null) {
      throw new core.ArgumentError("Parameter projectId is required.");
    }
    if (zone == null) {
      throw new core.ArgumentError("Parameter zone is required.");
    }
    if (clusterId == null) {
      throw new core.ArgumentError("Parameter clusterId is required.");
    }
    if (name != null) {
      _queryParams["name"] = [name];
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1/projects/' +
        commons.Escaper.ecapeVariable('$projectId') +
        '/zones/' +
        commons.Escaper.ecapeVariable('$zone') +
        '/clusters/' +
        commons.Escaper.ecapeVariable('$clusterId');

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Cluster.fromJson(data));
  }

  /// Enables or disables the ABAC authorization mechanism on a cluster.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [projectId] - Deprecated. The Google Developers Console [project ID or
  /// project
  /// number](https://support.google.com/cloud/answer/6158840).
  /// This field has been deprecated and replaced by the name field.
  ///
  /// [zone] - Deprecated. The name of the Google Compute Engine
  /// [zone](/compute/docs/zones#available) in which the cluster
  /// resides.
  /// This field has been deprecated and replaced by the name field.
  ///
  /// [clusterId] - Deprecated. The name of the cluster to update.
  /// This field has been deprecated and replaced by the name field.
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
  async.Future<Operation> legacyAbac(SetLegacyAbacRequest request,
      core.String projectId, core.String zone, core.String clusterId,
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
    if (projectId == null) {
      throw new core.ArgumentError("Parameter projectId is required.");
    }
    if (zone == null) {
      throw new core.ArgumentError("Parameter zone is required.");
    }
    if (clusterId == null) {
      throw new core.ArgumentError("Parameter clusterId is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1/projects/' +
        commons.Escaper.ecapeVariable('$projectId') +
        '/zones/' +
        commons.Escaper.ecapeVariable('$zone') +
        '/clusters/' +
        commons.Escaper.ecapeVariable('$clusterId') +
        '/legacyAbac';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Operation.fromJson(data));
  }

  /// Lists all clusters owned by a project in either the specified zone or all
  /// zones.
  ///
  /// Request parameters:
  ///
  /// [projectId] - Deprecated. The Google Developers Console [project ID or
  /// project
  /// number](https://support.google.com/cloud/answer/6158840).
  /// This field has been deprecated and replaced by the parent field.
  ///
  /// [zone] - Deprecated. The name of the Google Compute Engine
  /// [zone](/compute/docs/zones#available) in which the cluster
  /// resides, or "-" for all zones.
  /// This field has been deprecated and replaced by the parent field.
  ///
  /// [parent] - The parent (project and location) where the clusters will be
  /// listed.
  /// Specified in the format 'projects / * /locations / * '.
  /// Location "-" matches all zones and all regions.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListClustersResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListClustersResponse> list(
      core.String projectId, core.String zone,
      {core.String parent, core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (projectId == null) {
      throw new core.ArgumentError("Parameter projectId is required.");
    }
    if (zone == null) {
      throw new core.ArgumentError("Parameter zone is required.");
    }
    if (parent != null) {
      _queryParams["parent"] = [parent];
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1/projects/' +
        commons.Escaper.ecapeVariable('$projectId') +
        '/zones/' +
        commons.Escaper.ecapeVariable('$zone') +
        '/clusters';

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new ListClustersResponse.fromJson(data));
  }

  /// Sets the locations for a specific cluster.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [projectId] - Deprecated. The Google Developers Console [project ID or
  /// project
  /// number](https://support.google.com/cloud/answer/6158840).
  /// This field has been deprecated and replaced by the name field.
  ///
  /// [zone] - Deprecated. The name of the Google Compute Engine
  /// [zone](/compute/docs/zones#available) in which the cluster
  /// resides.
  /// This field has been deprecated and replaced by the name field.
  ///
  /// [clusterId] - Deprecated. The name of the cluster to upgrade.
  /// This field has been deprecated and replaced by the name field.
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
  async.Future<Operation> locations(SetLocationsRequest request,
      core.String projectId, core.String zone, core.String clusterId,
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
    if (projectId == null) {
      throw new core.ArgumentError("Parameter projectId is required.");
    }
    if (zone == null) {
      throw new core.ArgumentError("Parameter zone is required.");
    }
    if (clusterId == null) {
      throw new core.ArgumentError("Parameter clusterId is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1/projects/' +
        commons.Escaper.ecapeVariable('$projectId') +
        '/zones/' +
        commons.Escaper.ecapeVariable('$zone') +
        '/clusters/' +
        commons.Escaper.ecapeVariable('$clusterId') +
        '/locations';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Operation.fromJson(data));
  }

  /// Sets the logging service for a specific cluster.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [projectId] - Deprecated. The Google Developers Console [project ID or
  /// project
  /// number](https://support.google.com/cloud/answer/6158840).
  /// This field has been deprecated and replaced by the name field.
  ///
  /// [zone] - Deprecated. The name of the Google Compute Engine
  /// [zone](/compute/docs/zones#available) in which the cluster
  /// resides.
  /// This field has been deprecated and replaced by the name field.
  ///
  /// [clusterId] - Deprecated. The name of the cluster to upgrade.
  /// This field has been deprecated and replaced by the name field.
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
  async.Future<Operation> logging(SetLoggingServiceRequest request,
      core.String projectId, core.String zone, core.String clusterId,
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
    if (projectId == null) {
      throw new core.ArgumentError("Parameter projectId is required.");
    }
    if (zone == null) {
      throw new core.ArgumentError("Parameter zone is required.");
    }
    if (clusterId == null) {
      throw new core.ArgumentError("Parameter clusterId is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1/projects/' +
        commons.Escaper.ecapeVariable('$projectId') +
        '/zones/' +
        commons.Escaper.ecapeVariable('$zone') +
        '/clusters/' +
        commons.Escaper.ecapeVariable('$clusterId') +
        '/logging';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Operation.fromJson(data));
  }

  /// Updates the master for a specific cluster.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [projectId] - Deprecated. The Google Developers Console [project ID or
  /// project
  /// number](https://support.google.com/cloud/answer/6158840).
  /// This field has been deprecated and replaced by the name field.
  ///
  /// [zone] - Deprecated. The name of the Google Compute Engine
  /// [zone](/compute/docs/zones#available) in which the cluster
  /// resides.
  /// This field has been deprecated and replaced by the name field.
  ///
  /// [clusterId] - Deprecated. The name of the cluster to upgrade.
  /// This field has been deprecated and replaced by the name field.
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
  async.Future<Operation> master(UpdateMasterRequest request,
      core.String projectId, core.String zone, core.String clusterId,
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
    if (projectId == null) {
      throw new core.ArgumentError("Parameter projectId is required.");
    }
    if (zone == null) {
      throw new core.ArgumentError("Parameter zone is required.");
    }
    if (clusterId == null) {
      throw new core.ArgumentError("Parameter clusterId is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1/projects/' +
        commons.Escaper.ecapeVariable('$projectId') +
        '/zones/' +
        commons.Escaper.ecapeVariable('$zone') +
        '/clusters/' +
        commons.Escaper.ecapeVariable('$clusterId') +
        '/master';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Operation.fromJson(data));
  }

  /// Sets the monitoring service for a specific cluster.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [projectId] - Deprecated. The Google Developers Console [project ID or
  /// project
  /// number](https://support.google.com/cloud/answer/6158840).
  /// This field has been deprecated and replaced by the name field.
  ///
  /// [zone] - Deprecated. The name of the Google Compute Engine
  /// [zone](/compute/docs/zones#available) in which the cluster
  /// resides.
  /// This field has been deprecated and replaced by the name field.
  ///
  /// [clusterId] - Deprecated. The name of the cluster to upgrade.
  /// This field has been deprecated and replaced by the name field.
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
  async.Future<Operation> monitoring(SetMonitoringServiceRequest request,
      core.String projectId, core.String zone, core.String clusterId,
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
    if (projectId == null) {
      throw new core.ArgumentError("Parameter projectId is required.");
    }
    if (zone == null) {
      throw new core.ArgumentError("Parameter zone is required.");
    }
    if (clusterId == null) {
      throw new core.ArgumentError("Parameter clusterId is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1/projects/' +
        commons.Escaper.ecapeVariable('$projectId') +
        '/zones/' +
        commons.Escaper.ecapeVariable('$zone') +
        '/clusters/' +
        commons.Escaper.ecapeVariable('$clusterId') +
        '/monitoring';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Operation.fromJson(data));
  }

  /// Sets labels on a cluster.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [projectId] - Deprecated. The Google Developers Console [project ID or
  /// project
  /// number](https://developers.google.com/console/help/new/#projectnumber).
  /// This field has been deprecated and replaced by the name field.
  ///
  /// [zone] - Deprecated. The name of the Google Compute Engine
  /// [zone](/compute/docs/zones#available) in which the cluster
  /// resides.
  /// This field has been deprecated and replaced by the name field.
  ///
  /// [clusterId] - Deprecated. The name of the cluster.
  /// This field has been deprecated and replaced by the name field.
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
  async.Future<Operation> resourceLabels(SetLabelsRequest request,
      core.String projectId, core.String zone, core.String clusterId,
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
    if (projectId == null) {
      throw new core.ArgumentError("Parameter projectId is required.");
    }
    if (zone == null) {
      throw new core.ArgumentError("Parameter zone is required.");
    }
    if (clusterId == null) {
      throw new core.ArgumentError("Parameter clusterId is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1/projects/' +
        commons.Escaper.ecapeVariable('$projectId') +
        '/zones/' +
        commons.Escaper.ecapeVariable('$zone') +
        '/clusters/' +
        commons.Escaper.ecapeVariable('$clusterId') +
        '/resourceLabels';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Operation.fromJson(data));
  }

  /// Sets the maintenance policy for a cluster.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [projectId] - The Google Developers Console [project ID or project
  /// number](https://support.google.com/cloud/answer/6158840).
  ///
  /// [zone] - The name of the Google Compute Engine
  /// [zone](/compute/docs/zones#available) in which the cluster
  /// resides.
  ///
  /// [clusterId] - The name of the cluster to update.
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
  async.Future<Operation> setMaintenancePolicy(
      SetMaintenancePolicyRequest request,
      core.String projectId,
      core.String zone,
      core.String clusterId,
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
    if (projectId == null) {
      throw new core.ArgumentError("Parameter projectId is required.");
    }
    if (zone == null) {
      throw new core.ArgumentError("Parameter zone is required.");
    }
    if (clusterId == null) {
      throw new core.ArgumentError("Parameter clusterId is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1/projects/' +
        commons.Escaper.ecapeVariable('$projectId') +
        '/zones/' +
        commons.Escaper.ecapeVariable('$zone') +
        '/clusters/' +
        commons.Escaper.ecapeVariable('$clusterId') +
        ':setMaintenancePolicy';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Operation.fromJson(data));
  }

  /// Sets master auth materials. Currently supports changing the admin password
  /// or a specific cluster, either via password generation or explicitly
  /// setting
  /// the password.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [projectId] - Deprecated. The Google Developers Console [project ID or
  /// project
  /// number](https://support.google.com/cloud/answer/6158840).
  /// This field has been deprecated and replaced by the name field.
  ///
  /// [zone] - Deprecated. The name of the Google Compute Engine
  /// [zone](/compute/docs/zones#available) in which the cluster
  /// resides.
  /// This field has been deprecated and replaced by the name field.
  ///
  /// [clusterId] - Deprecated. The name of the cluster to upgrade.
  /// This field has been deprecated and replaced by the name field.
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
  async.Future<Operation> setMasterAuth(SetMasterAuthRequest request,
      core.String projectId, core.String zone, core.String clusterId,
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
    if (projectId == null) {
      throw new core.ArgumentError("Parameter projectId is required.");
    }
    if (zone == null) {
      throw new core.ArgumentError("Parameter zone is required.");
    }
    if (clusterId == null) {
      throw new core.ArgumentError("Parameter clusterId is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1/projects/' +
        commons.Escaper.ecapeVariable('$projectId') +
        '/zones/' +
        commons.Escaper.ecapeVariable('$zone') +
        '/clusters/' +
        commons.Escaper.ecapeVariable('$clusterId') +
        ':setMasterAuth';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Operation.fromJson(data));
  }

  /// Enables or disables Network Policy for a cluster.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [projectId] - Deprecated. The Google Developers Console [project ID or
  /// project
  /// number](https://developers.google.com/console/help/new/#projectnumber).
  /// This field has been deprecated and replaced by the name field.
  ///
  /// [zone] - Deprecated. The name of the Google Compute Engine
  /// [zone](/compute/docs/zones#available) in which the cluster
  /// resides.
  /// This field has been deprecated and replaced by the name field.
  ///
  /// [clusterId] - Deprecated. The name of the cluster.
  /// This field has been deprecated and replaced by the name field.
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
  async.Future<Operation> setNetworkPolicy(SetNetworkPolicyRequest request,
      core.String projectId, core.String zone, core.String clusterId,
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
    if (projectId == null) {
      throw new core.ArgumentError("Parameter projectId is required.");
    }
    if (zone == null) {
      throw new core.ArgumentError("Parameter zone is required.");
    }
    if (clusterId == null) {
      throw new core.ArgumentError("Parameter clusterId is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1/projects/' +
        commons.Escaper.ecapeVariable('$projectId') +
        '/zones/' +
        commons.Escaper.ecapeVariable('$zone') +
        '/clusters/' +
        commons.Escaper.ecapeVariable('$clusterId') +
        ':setNetworkPolicy';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Operation.fromJson(data));
  }

  /// Starts master IP rotation.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [projectId] - Deprecated. The Google Developers Console [project ID or
  /// project
  /// number](https://developers.google.com/console/help/new/#projectnumber).
  /// This field has been deprecated and replaced by the name field.
  ///
  /// [zone] - Deprecated. The name of the Google Compute Engine
  /// [zone](/compute/docs/zones#available) in which the cluster
  /// resides.
  /// This field has been deprecated and replaced by the name field.
  ///
  /// [clusterId] - Deprecated. The name of the cluster.
  /// This field has been deprecated and replaced by the name field.
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
  async.Future<Operation> startIpRotation(StartIPRotationRequest request,
      core.String projectId, core.String zone, core.String clusterId,
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
    if (projectId == null) {
      throw new core.ArgumentError("Parameter projectId is required.");
    }
    if (zone == null) {
      throw new core.ArgumentError("Parameter zone is required.");
    }
    if (clusterId == null) {
      throw new core.ArgumentError("Parameter clusterId is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1/projects/' +
        commons.Escaper.ecapeVariable('$projectId') +
        '/zones/' +
        commons.Escaper.ecapeVariable('$zone') +
        '/clusters/' +
        commons.Escaper.ecapeVariable('$clusterId') +
        ':startIpRotation';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Operation.fromJson(data));
  }

  /// Updates the settings of a specific cluster.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [projectId] - Deprecated. The Google Developers Console [project ID or
  /// project
  /// number](https://support.google.com/cloud/answer/6158840).
  /// This field has been deprecated and replaced by the name field.
  ///
  /// [zone] - Deprecated. The name of the Google Compute Engine
  /// [zone](/compute/docs/zones#available) in which the cluster
  /// resides.
  /// This field has been deprecated and replaced by the name field.
  ///
  /// [clusterId] - Deprecated. The name of the cluster to upgrade.
  /// This field has been deprecated and replaced by the name field.
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
  async.Future<Operation> update(UpdateClusterRequest request,
      core.String projectId, core.String zone, core.String clusterId,
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
    if (projectId == null) {
      throw new core.ArgumentError("Parameter projectId is required.");
    }
    if (zone == null) {
      throw new core.ArgumentError("Parameter zone is required.");
    }
    if (clusterId == null) {
      throw new core.ArgumentError("Parameter clusterId is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1/projects/' +
        commons.Escaper.ecapeVariable('$projectId') +
        '/zones/' +
        commons.Escaper.ecapeVariable('$zone') +
        '/clusters/' +
        commons.Escaper.ecapeVariable('$clusterId');

    var _response = _requester.request(_url, "PUT",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Operation.fromJson(data));
  }
}

class ProjectsZonesClustersNodePoolsResourceApi {
  final commons.ApiRequester _requester;

  ProjectsZonesClustersNodePoolsResourceApi(commons.ApiRequester client)
      : _requester = client;

  /// Sets the autoscaling settings for the specified node pool.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [projectId] - Deprecated. The Google Developers Console [project ID or
  /// project
  /// number](https://support.google.com/cloud/answer/6158840).
  /// This field has been deprecated and replaced by the name field.
  ///
  /// [zone] - Deprecated. The name of the Google Compute Engine
  /// [zone](/compute/docs/zones#available) in which the cluster
  /// resides.
  /// This field has been deprecated and replaced by the name field.
  ///
  /// [clusterId] - Deprecated. The name of the cluster to upgrade.
  /// This field has been deprecated and replaced by the name field.
  ///
  /// [nodePoolId] - Deprecated. The name of the node pool to upgrade.
  /// This field has been deprecated and replaced by the name field.
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
  async.Future<Operation> autoscaling(
      SetNodePoolAutoscalingRequest request,
      core.String projectId,
      core.String zone,
      core.String clusterId,
      core.String nodePoolId,
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
    if (projectId == null) {
      throw new core.ArgumentError("Parameter projectId is required.");
    }
    if (zone == null) {
      throw new core.ArgumentError("Parameter zone is required.");
    }
    if (clusterId == null) {
      throw new core.ArgumentError("Parameter clusterId is required.");
    }
    if (nodePoolId == null) {
      throw new core.ArgumentError("Parameter nodePoolId is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1/projects/' +
        commons.Escaper.ecapeVariable('$projectId') +
        '/zones/' +
        commons.Escaper.ecapeVariable('$zone') +
        '/clusters/' +
        commons.Escaper.ecapeVariable('$clusterId') +
        '/nodePools/' +
        commons.Escaper.ecapeVariable('$nodePoolId') +
        '/autoscaling';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Operation.fromJson(data));
  }

  /// Creates a node pool for a cluster.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [projectId] - Deprecated. The Google Developers Console [project ID or
  /// project
  /// number](https://developers.google.com/console/help/new/#projectnumber).
  /// This field has been deprecated and replaced by the parent field.
  ///
  /// [zone] - Deprecated. The name of the Google Compute Engine
  /// [zone](/compute/docs/zones#available) in which the cluster
  /// resides.
  /// This field has been deprecated and replaced by the parent field.
  ///
  /// [clusterId] - Deprecated. The name of the cluster.
  /// This field has been deprecated and replaced by the parent field.
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
  async.Future<Operation> create(CreateNodePoolRequest request,
      core.String projectId, core.String zone, core.String clusterId,
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
    if (projectId == null) {
      throw new core.ArgumentError("Parameter projectId is required.");
    }
    if (zone == null) {
      throw new core.ArgumentError("Parameter zone is required.");
    }
    if (clusterId == null) {
      throw new core.ArgumentError("Parameter clusterId is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1/projects/' +
        commons.Escaper.ecapeVariable('$projectId') +
        '/zones/' +
        commons.Escaper.ecapeVariable('$zone') +
        '/clusters/' +
        commons.Escaper.ecapeVariable('$clusterId') +
        '/nodePools';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Operation.fromJson(data));
  }

  /// Deletes a node pool from a cluster.
  ///
  /// Request parameters:
  ///
  /// [projectId] - Deprecated. The Google Developers Console [project ID or
  /// project
  /// number](https://developers.google.com/console/help/new/#projectnumber).
  /// This field has been deprecated and replaced by the name field.
  ///
  /// [zone] - Deprecated. The name of the Google Compute Engine
  /// [zone](/compute/docs/zones#available) in which the cluster
  /// resides.
  /// This field has been deprecated and replaced by the name field.
  ///
  /// [clusterId] - Deprecated. The name of the cluster.
  /// This field has been deprecated and replaced by the name field.
  ///
  /// [nodePoolId] - Deprecated. The name of the node pool to delete.
  /// This field has been deprecated and replaced by the name field.
  ///
  /// [name] - The name (project, location, cluster, node pool id) of the node
  /// pool to
  /// delete. Specified in the format
  /// 'projects / * /locations / * /clusters / * /nodePools / * '.
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
  async.Future<Operation> delete(core.String projectId, core.String zone,
      core.String clusterId, core.String nodePoolId,
      {core.String name, core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (projectId == null) {
      throw new core.ArgumentError("Parameter projectId is required.");
    }
    if (zone == null) {
      throw new core.ArgumentError("Parameter zone is required.");
    }
    if (clusterId == null) {
      throw new core.ArgumentError("Parameter clusterId is required.");
    }
    if (nodePoolId == null) {
      throw new core.ArgumentError("Parameter nodePoolId is required.");
    }
    if (name != null) {
      _queryParams["name"] = [name];
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1/projects/' +
        commons.Escaper.ecapeVariable('$projectId') +
        '/zones/' +
        commons.Escaper.ecapeVariable('$zone') +
        '/clusters/' +
        commons.Escaper.ecapeVariable('$clusterId') +
        '/nodePools/' +
        commons.Escaper.ecapeVariable('$nodePoolId');

    var _response = _requester.request(_url, "DELETE",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Operation.fromJson(data));
  }

  /// Retrieves the requested node pool.
  ///
  /// Request parameters:
  ///
  /// [projectId] - Deprecated. The Google Developers Console [project ID or
  /// project
  /// number](https://developers.google.com/console/help/new/#projectnumber).
  /// This field has been deprecated and replaced by the name field.
  ///
  /// [zone] - Deprecated. The name of the Google Compute Engine
  /// [zone](/compute/docs/zones#available) in which the cluster
  /// resides.
  /// This field has been deprecated and replaced by the name field.
  ///
  /// [clusterId] - Deprecated. The name of the cluster.
  /// This field has been deprecated and replaced by the name field.
  ///
  /// [nodePoolId] - Deprecated. The name of the node pool.
  /// This field has been deprecated and replaced by the name field.
  ///
  /// [name] - The name (project, location, cluster, node pool id) of the node
  /// pool to
  /// get. Specified in the format
  /// 'projects / * /locations / * /clusters / * /nodePools / * '.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [NodePool].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<NodePool> get(core.String projectId, core.String zone,
      core.String clusterId, core.String nodePoolId,
      {core.String name, core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (projectId == null) {
      throw new core.ArgumentError("Parameter projectId is required.");
    }
    if (zone == null) {
      throw new core.ArgumentError("Parameter zone is required.");
    }
    if (clusterId == null) {
      throw new core.ArgumentError("Parameter clusterId is required.");
    }
    if (nodePoolId == null) {
      throw new core.ArgumentError("Parameter nodePoolId is required.");
    }
    if (name != null) {
      _queryParams["name"] = [name];
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1/projects/' +
        commons.Escaper.ecapeVariable('$projectId') +
        '/zones/' +
        commons.Escaper.ecapeVariable('$zone') +
        '/clusters/' +
        commons.Escaper.ecapeVariable('$clusterId') +
        '/nodePools/' +
        commons.Escaper.ecapeVariable('$nodePoolId');

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new NodePool.fromJson(data));
  }

  /// Lists the node pools for a cluster.
  ///
  /// Request parameters:
  ///
  /// [projectId] - Deprecated. The Google Developers Console [project ID or
  /// project
  /// number](https://developers.google.com/console/help/new/#projectnumber).
  /// This field has been deprecated and replaced by the parent field.
  ///
  /// [zone] - Deprecated. The name of the Google Compute Engine
  /// [zone](/compute/docs/zones#available) in which the cluster
  /// resides.
  /// This field has been deprecated and replaced by the parent field.
  ///
  /// [clusterId] - Deprecated. The name of the cluster.
  /// This field has been deprecated and replaced by the parent field.
  ///
  /// [parent] - The parent (project, location, cluster id) where the node pools
  /// will be
  /// listed. Specified in the format 'projects / * /locations / * /clusters / *
  /// '.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListNodePoolsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListNodePoolsResponse> list(
      core.String projectId, core.String zone, core.String clusterId,
      {core.String parent, core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (projectId == null) {
      throw new core.ArgumentError("Parameter projectId is required.");
    }
    if (zone == null) {
      throw new core.ArgumentError("Parameter zone is required.");
    }
    if (clusterId == null) {
      throw new core.ArgumentError("Parameter clusterId is required.");
    }
    if (parent != null) {
      _queryParams["parent"] = [parent];
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1/projects/' +
        commons.Escaper.ecapeVariable('$projectId') +
        '/zones/' +
        commons.Escaper.ecapeVariable('$zone') +
        '/clusters/' +
        commons.Escaper.ecapeVariable('$clusterId') +
        '/nodePools';

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new ListNodePoolsResponse.fromJson(data));
  }

  /// Rolls back a previously Aborted or Failed NodePool upgrade.
  /// This makes no changes if the last upgrade successfully completed.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [projectId] - Deprecated. The Google Developers Console [project ID or
  /// project
  /// number](https://support.google.com/cloud/answer/6158840).
  /// This field has been deprecated and replaced by the name field.
  ///
  /// [zone] - Deprecated. The name of the Google Compute Engine
  /// [zone](/compute/docs/zones#available) in which the cluster
  /// resides.
  /// This field has been deprecated and replaced by the name field.
  ///
  /// [clusterId] - Deprecated. The name of the cluster to rollback.
  /// This field has been deprecated and replaced by the name field.
  ///
  /// [nodePoolId] - Deprecated. The name of the node pool to rollback.
  /// This field has been deprecated and replaced by the name field.
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
      RollbackNodePoolUpgradeRequest request,
      core.String projectId,
      core.String zone,
      core.String clusterId,
      core.String nodePoolId,
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
    if (projectId == null) {
      throw new core.ArgumentError("Parameter projectId is required.");
    }
    if (zone == null) {
      throw new core.ArgumentError("Parameter zone is required.");
    }
    if (clusterId == null) {
      throw new core.ArgumentError("Parameter clusterId is required.");
    }
    if (nodePoolId == null) {
      throw new core.ArgumentError("Parameter nodePoolId is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1/projects/' +
        commons.Escaper.ecapeVariable('$projectId') +
        '/zones/' +
        commons.Escaper.ecapeVariable('$zone') +
        '/clusters/' +
        commons.Escaper.ecapeVariable('$clusterId') +
        '/nodePools/' +
        commons.Escaper.ecapeVariable('$nodePoolId') +
        ':rollback';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Operation.fromJson(data));
  }

  /// Sets the NodeManagement options for a node pool.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [projectId] - Deprecated. The Google Developers Console [project ID or
  /// project
  /// number](https://support.google.com/cloud/answer/6158840).
  /// This field has been deprecated and replaced by the name field.
  ///
  /// [zone] - Deprecated. The name of the Google Compute Engine
  /// [zone](/compute/docs/zones#available) in which the cluster
  /// resides.
  /// This field has been deprecated and replaced by the name field.
  ///
  /// [clusterId] - Deprecated. The name of the cluster to update.
  /// This field has been deprecated and replaced by the name field.
  ///
  /// [nodePoolId] - Deprecated. The name of the node pool to update.
  /// This field has been deprecated and replaced by the name field.
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
  async.Future<Operation> setManagement(
      SetNodePoolManagementRequest request,
      core.String projectId,
      core.String zone,
      core.String clusterId,
      core.String nodePoolId,
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
    if (projectId == null) {
      throw new core.ArgumentError("Parameter projectId is required.");
    }
    if (zone == null) {
      throw new core.ArgumentError("Parameter zone is required.");
    }
    if (clusterId == null) {
      throw new core.ArgumentError("Parameter clusterId is required.");
    }
    if (nodePoolId == null) {
      throw new core.ArgumentError("Parameter nodePoolId is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1/projects/' +
        commons.Escaper.ecapeVariable('$projectId') +
        '/zones/' +
        commons.Escaper.ecapeVariable('$zone') +
        '/clusters/' +
        commons.Escaper.ecapeVariable('$clusterId') +
        '/nodePools/' +
        commons.Escaper.ecapeVariable('$nodePoolId') +
        '/setManagement';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Operation.fromJson(data));
  }

  /// Sets the size for a specific node pool.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [projectId] - Deprecated. The Google Developers Console [project ID or
  /// project
  /// number](https://support.google.com/cloud/answer/6158840).
  /// This field has been deprecated and replaced by the name field.
  ///
  /// [zone] - Deprecated. The name of the Google Compute Engine
  /// [zone](/compute/docs/zones#available) in which the cluster
  /// resides.
  /// This field has been deprecated and replaced by the name field.
  ///
  /// [clusterId] - Deprecated. The name of the cluster to update.
  /// This field has been deprecated and replaced by the name field.
  ///
  /// [nodePoolId] - Deprecated. The name of the node pool to update.
  /// This field has been deprecated and replaced by the name field.
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
  async.Future<Operation> setSize(
      SetNodePoolSizeRequest request,
      core.String projectId,
      core.String zone,
      core.String clusterId,
      core.String nodePoolId,
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
    if (projectId == null) {
      throw new core.ArgumentError("Parameter projectId is required.");
    }
    if (zone == null) {
      throw new core.ArgumentError("Parameter zone is required.");
    }
    if (clusterId == null) {
      throw new core.ArgumentError("Parameter clusterId is required.");
    }
    if (nodePoolId == null) {
      throw new core.ArgumentError("Parameter nodePoolId is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1/projects/' +
        commons.Escaper.ecapeVariable('$projectId') +
        '/zones/' +
        commons.Escaper.ecapeVariable('$zone') +
        '/clusters/' +
        commons.Escaper.ecapeVariable('$clusterId') +
        '/nodePools/' +
        commons.Escaper.ecapeVariable('$nodePoolId') +
        '/setSize';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Operation.fromJson(data));
  }

  /// Updates the version and/or image type for the specified node pool.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [projectId] - Deprecated. The Google Developers Console [project ID or
  /// project
  /// number](https://support.google.com/cloud/answer/6158840).
  /// This field has been deprecated and replaced by the name field.
  ///
  /// [zone] - Deprecated. The name of the Google Compute Engine
  /// [zone](/compute/docs/zones#available) in which the cluster
  /// resides.
  /// This field has been deprecated and replaced by the name field.
  ///
  /// [clusterId] - Deprecated. The name of the cluster to upgrade.
  /// This field has been deprecated and replaced by the name field.
  ///
  /// [nodePoolId] - Deprecated. The name of the node pool to upgrade.
  /// This field has been deprecated and replaced by the name field.
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
      UpdateNodePoolRequest request,
      core.String projectId,
      core.String zone,
      core.String clusterId,
      core.String nodePoolId,
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
    if (projectId == null) {
      throw new core.ArgumentError("Parameter projectId is required.");
    }
    if (zone == null) {
      throw new core.ArgumentError("Parameter zone is required.");
    }
    if (clusterId == null) {
      throw new core.ArgumentError("Parameter clusterId is required.");
    }
    if (nodePoolId == null) {
      throw new core.ArgumentError("Parameter nodePoolId is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1/projects/' +
        commons.Escaper.ecapeVariable('$projectId') +
        '/zones/' +
        commons.Escaper.ecapeVariable('$zone') +
        '/clusters/' +
        commons.Escaper.ecapeVariable('$clusterId') +
        '/nodePools/' +
        commons.Escaper.ecapeVariable('$nodePoolId') +
        '/update';

    var _response = _requester.request(_url, "POST",
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

  ProjectsZonesOperationsResourceApi(commons.ApiRequester client)
      : _requester = client;

  /// Cancels the specified operation.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [projectId] - Deprecated. The Google Developers Console [project ID or
  /// project
  /// number](https://support.google.com/cloud/answer/6158840).
  /// This field has been deprecated and replaced by the name field.
  ///
  /// [zone] - Deprecated. The name of the Google Compute Engine
  /// [zone](/compute/docs/zones#available) in which the operation resides.
  /// This field has been deprecated and replaced by the name field.
  ///
  /// [operationId] - Deprecated. The server-assigned `name` of the operation.
  /// This field has been deprecated and replaced by the name field.
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
  async.Future<Empty> cancel(CancelOperationRequest request,
      core.String projectId, core.String zone, core.String operationId,
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
    if (projectId == null) {
      throw new core.ArgumentError("Parameter projectId is required.");
    }
    if (zone == null) {
      throw new core.ArgumentError("Parameter zone is required.");
    }
    if (operationId == null) {
      throw new core.ArgumentError("Parameter operationId is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1/projects/' +
        commons.Escaper.ecapeVariable('$projectId') +
        '/zones/' +
        commons.Escaper.ecapeVariable('$zone') +
        '/operations/' +
        commons.Escaper.ecapeVariable('$operationId') +
        ':cancel';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Empty.fromJson(data));
  }

  /// Gets the specified operation.
  ///
  /// Request parameters:
  ///
  /// [projectId] - Deprecated. The Google Developers Console [project ID or
  /// project
  /// number](https://support.google.com/cloud/answer/6158840).
  /// This field has been deprecated and replaced by the name field.
  ///
  /// [zone] - Deprecated. The name of the Google Compute Engine
  /// [zone](/compute/docs/zones#available) in which the cluster
  /// resides.
  /// This field has been deprecated and replaced by the name field.
  ///
  /// [operationId] - Deprecated. The server-assigned `name` of the operation.
  /// This field has been deprecated and replaced by the name field.
  ///
  /// [name] - The name (project, location, operation id) of the operation to
  /// get.
  /// Specified in the format 'projects / * /locations / * /operations / * '.
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
      core.String projectId, core.String zone, core.String operationId,
      {core.String name, core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (projectId == null) {
      throw new core.ArgumentError("Parameter projectId is required.");
    }
    if (zone == null) {
      throw new core.ArgumentError("Parameter zone is required.");
    }
    if (operationId == null) {
      throw new core.ArgumentError("Parameter operationId is required.");
    }
    if (name != null) {
      _queryParams["name"] = [name];
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1/projects/' +
        commons.Escaper.ecapeVariable('$projectId') +
        '/zones/' +
        commons.Escaper.ecapeVariable('$zone') +
        '/operations/' +
        commons.Escaper.ecapeVariable('$operationId');

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Operation.fromJson(data));
  }

  /// Lists all operations in a project in a specific zone or all zones.
  ///
  /// Request parameters:
  ///
  /// [projectId] - Deprecated. The Google Developers Console [project ID or
  /// project
  /// number](https://support.google.com/cloud/answer/6158840).
  /// This field has been deprecated and replaced by the parent field.
  ///
  /// [zone] - Deprecated. The name of the Google Compute Engine
  /// [zone](/compute/docs/zones#available) to return operations for, or `-` for
  /// all zones. This field has been deprecated and replaced by the parent
  /// field.
  ///
  /// [parent] - The parent (project and location) where the operations will be
  /// listed.
  /// Specified in the format 'projects / * /locations / * '.
  /// Location "-" matches all zones and all regions.
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
      core.String projectId, core.String zone,
      {core.String parent, core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (projectId == null) {
      throw new core.ArgumentError("Parameter projectId is required.");
    }
    if (zone == null) {
      throw new core.ArgumentError("Parameter zone is required.");
    }
    if (parent != null) {
      _queryParams["parent"] = [parent];
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1/projects/' +
        commons.Escaper.ecapeVariable('$projectId') +
        '/zones/' +
        commons.Escaper.ecapeVariable('$zone') +
        '/operations';

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new ListOperationsResponse.fromJson(data));
  }
}

/// AcceleratorConfig represents a Hardware Accelerator request.
class AcceleratorConfig {
  /// The number of the accelerator cards exposed to an instance.
  core.String acceleratorCount;

  /// The accelerator type resource name. List of supported accelerators
  /// [here](/compute/docs/gpus/#Introduction)
  core.String acceleratorType;

  AcceleratorConfig();

  AcceleratorConfig.fromJson(core.Map _json) {
    if (_json.containsKey("acceleratorCount")) {
      acceleratorCount = _json["acceleratorCount"];
    }
    if (_json.containsKey("acceleratorType")) {
      acceleratorType = _json["acceleratorType"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (acceleratorCount != null) {
      _json["acceleratorCount"] = acceleratorCount;
    }
    if (acceleratorType != null) {
      _json["acceleratorType"] = acceleratorType;
    }
    return _json;
  }
}

/// Configuration for the addons that can be automatically spun up in the
/// cluster, enabling additional functionality.
class AddonsConfig {
  /// Configuration for the horizontal pod autoscaling feature, which
  /// increases or decreases the number of replica pods a replication controller
  /// has based on the resource usage of the existing pods.
  HorizontalPodAutoscaling horizontalPodAutoscaling;

  /// Configuration for the HTTP (L7) load balancing controller addon, which
  /// makes it easy to set up HTTP load balancers for services in a cluster.
  HttpLoadBalancing httpLoadBalancing;

  /// Configuration for the Kubernetes Dashboard.
  /// This addon is deprecated, and will be disabled in 1.15. It is recommended
  /// to use the Cloud Console to manage and monitor your Kubernetes clusters,
  /// workloads and applications. For more information, see:
  /// https://cloud.google.com/kubernetes-engine/docs/concepts/dashboards
  KubernetesDashboard kubernetesDashboard;

  /// Configuration for NetworkPolicy. This only tracks whether the addon
  /// is enabled or not on the Master, it does not track whether network policy
  /// is enabled for the nodes.
  NetworkPolicyConfig networkPolicyConfig;

  AddonsConfig();

  AddonsConfig.fromJson(core.Map _json) {
    if (_json.containsKey("horizontalPodAutoscaling")) {
      horizontalPodAutoscaling = new HorizontalPodAutoscaling.fromJson(
          _json["horizontalPodAutoscaling"]);
    }
    if (_json.containsKey("httpLoadBalancing")) {
      httpLoadBalancing =
          new HttpLoadBalancing.fromJson(_json["httpLoadBalancing"]);
    }
    if (_json.containsKey("kubernetesDashboard")) {
      kubernetesDashboard =
          new KubernetesDashboard.fromJson(_json["kubernetesDashboard"]);
    }
    if (_json.containsKey("networkPolicyConfig")) {
      networkPolicyConfig =
          new NetworkPolicyConfig.fromJson(_json["networkPolicyConfig"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (horizontalPodAutoscaling != null) {
      _json["horizontalPodAutoscaling"] = (horizontalPodAutoscaling).toJson();
    }
    if (httpLoadBalancing != null) {
      _json["httpLoadBalancing"] = (httpLoadBalancing).toJson();
    }
    if (kubernetesDashboard != null) {
      _json["kubernetesDashboard"] = (kubernetesDashboard).toJson();
    }
    if (networkPolicyConfig != null) {
      _json["networkPolicyConfig"] = (networkPolicyConfig).toJson();
    }
    return _json;
  }
}

/// AutoUpgradeOptions defines the set of options for the user to control how
/// the Auto Upgrades will proceed.
class AutoUpgradeOptions {
  /// [Output only] This field is set when upgrades are about to commence
  /// with the approximate start time for the upgrades, in
  /// [RFC3339](https://www.ietf.org/rfc/rfc3339.txt) text format.
  core.String autoUpgradeStartTime;

  /// [Output only] This field is set when upgrades are about to commence
  /// with the description of the upgrade.
  core.String description;

  AutoUpgradeOptions();

  AutoUpgradeOptions.fromJson(core.Map _json) {
    if (_json.containsKey("autoUpgradeStartTime")) {
      autoUpgradeStartTime = _json["autoUpgradeStartTime"];
    }
    if (_json.containsKey("description")) {
      description = _json["description"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (autoUpgradeStartTime != null) {
      _json["autoUpgradeStartTime"] = autoUpgradeStartTime;
    }
    if (description != null) {
      _json["description"] = description;
    }
    return _json;
  }
}

/// Parameters for using BigQuery as the destination of resource usage export.
class BigQueryDestination {
  /// The ID of a BigQuery Dataset.
  core.String datasetId;

  BigQueryDestination();

  BigQueryDestination.fromJson(core.Map _json) {
    if (_json.containsKey("datasetId")) {
      datasetId = _json["datasetId"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (datasetId != null) {
      _json["datasetId"] = datasetId;
    }
    return _json;
  }
}

/// CancelOperationRequest cancels a single operation.
class CancelOperationRequest {
  /// The name (project, location, operation id) of the operation to cancel.
  /// Specified in the format 'projects / * /locations / * /operations / * '.
  core.String name;

  /// Deprecated. The server-assigned `name` of the operation.
  /// This field has been deprecated and replaced by the name field.
  core.String operationId;

  /// Deprecated. The Google Developers Console [project ID or project
  /// number](https://support.google.com/cloud/answer/6158840).
  /// This field has been deprecated and replaced by the name field.
  core.String projectId;

  /// Deprecated. The name of the Google Compute Engine
  /// [zone](/compute/docs/zones#available) in which the operation resides.
  /// This field has been deprecated and replaced by the name field.
  core.String zone;

  CancelOperationRequest();

  CancelOperationRequest.fromJson(core.Map _json) {
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
    if (_json.containsKey("operationId")) {
      operationId = _json["operationId"];
    }
    if (_json.containsKey("projectId")) {
      projectId = _json["projectId"];
    }
    if (_json.containsKey("zone")) {
      zone = _json["zone"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (name != null) {
      _json["name"] = name;
    }
    if (operationId != null) {
      _json["operationId"] = operationId;
    }
    if (projectId != null) {
      _json["projectId"] = projectId;
    }
    if (zone != null) {
      _json["zone"] = zone;
    }
    return _json;
  }
}

/// CidrBlock contains an optional name and one CIDR block.
class CidrBlock {
  /// cidr_block must be specified in CIDR notation.
  core.String cidrBlock;

  /// display_name is an optional field for users to identify CIDR blocks.
  core.String displayName;

  CidrBlock();

  CidrBlock.fromJson(core.Map _json) {
    if (_json.containsKey("cidrBlock")) {
      cidrBlock = _json["cidrBlock"];
    }
    if (_json.containsKey("displayName")) {
      displayName = _json["displayName"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (cidrBlock != null) {
      _json["cidrBlock"] = cidrBlock;
    }
    if (displayName != null) {
      _json["displayName"] = displayName;
    }
    return _json;
  }
}

/// Configuration for client certificates on the cluster.
class ClientCertificateConfig {
  /// Issue a client certificate.
  core.bool issueClientCertificate;

  ClientCertificateConfig();

  ClientCertificateConfig.fromJson(core.Map _json) {
    if (_json.containsKey("issueClientCertificate")) {
      issueClientCertificate = _json["issueClientCertificate"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (issueClientCertificate != null) {
      _json["issueClientCertificate"] = issueClientCertificate;
    }
    return _json;
  }
}

/// A Google Kubernetes Engine cluster.
class Cluster {
  /// Configurations for the various addons available to run in the cluster.
  AddonsConfig addonsConfig;

  /// The IP address range of the container pods in this cluster, in
  /// [CIDR](http://en.wikipedia.org/wiki/Classless_Inter-Domain_Routing)
  /// notation (e.g. `10.96.0.0/14`). Leave blank to have
  /// one automatically chosen or specify a `/14` block in `10.0.0.0/8`.
  core.String clusterIpv4Cidr;

  /// Which conditions caused the current cluster state.
  core.List<StatusCondition> conditions;

  /// [Output only] The time the cluster was created, in
  /// [RFC3339](https://www.ietf.org/rfc/rfc3339.txt) text format.
  core.String createTime;

  /// [Output only] The current software version of the master endpoint.
  core.String currentMasterVersion;

  /// [Output only]  The number of nodes currently in the cluster. Deprecated.
  /// Call Kubernetes API directly to retrieve node information.
  core.int currentNodeCount;

  /// [Output only] Deprecated, use
  /// [NodePools.version](/kubernetes-engine/docs/reference/rest/v1/projects.zones.clusters.nodePools)
  /// instead. The current version of the node software components. If they are
  /// currently at multiple versions because they're in the process of being
  /// upgraded, this reflects the minimum version of all nodes.
  core.String currentNodeVersion;

  /// The default constraint on the maximum number of pods that can be run
  /// simultaneously on a node in the node pool of this cluster. Only honored
  /// if cluster created with IP Alias support.
  MaxPodsConstraint defaultMaxPodsConstraint;

  /// An optional description of this cluster.
  core.String description;

  /// Kubernetes alpha features are enabled on this cluster. This includes alpha
  /// API groups (e.g. v1alpha1) and features that may not be production ready
  /// in
  /// the kubernetes version of the master and nodes.
  /// The cluster has no SLA for uptime and master/node upgrades are disabled.
  /// Alpha enabled clusters are automatically deleted thirty days after
  /// creation.
  core.bool enableKubernetesAlpha;

  /// Enable the ability to use Cloud TPUs in this cluster.
  core.bool enableTpu;

  /// [Output only] The IP address of this cluster's master endpoint.
  /// The endpoint can be accessed from the internet at
  /// `https://username:password@endpoint/`.
  ///
  /// See the `masterAuth` property of this resource for username and
  /// password information.
  core.String endpoint;

  /// [Output only] The time the cluster will be automatically
  /// deleted in [RFC3339](https://www.ietf.org/rfc/rfc3339.txt) text format.
  core.String expireTime;

  /// The initial Kubernetes version for this cluster.  Valid versions are those
  /// found in validMasterVersions returned by getServerConfig.  The version can
  /// be upgraded over time; such upgrades are reflected in
  /// currentMasterVersion and currentNodeVersion.
  ///
  /// Users may specify either explicit versions offered by
  /// Kubernetes Engine or version aliases, which have the following behavior:
  ///
  /// - "latest": picks the highest valid Kubernetes version
  /// - "1.X": picks the highest valid patch+gke.N patch in the 1.X version
  /// - "1.X.Y": picks the highest valid gke.N patch in the 1.X.Y version
  /// - "1.X.Y-gke.N": picks an explicit Kubernetes version
  /// - "","-": picks the default Kubernetes version
  core.String initialClusterVersion;

  /// The number of nodes to create in this cluster. You must ensure that your
  /// Compute Engine <a href="/compute/docs/resource-quotas">resource quota</a>
  /// is sufficient for this number of instances. You must also have available
  /// firewall and routes quota.
  /// For requests, this field should only be used in lieu of a
  /// "node_pool" object, since this configuration (along with the
  /// "node_config") will be used to create a "NodePool" object with an
  /// auto-generated name. Do not use this and a node_pool at the same time.
  ///
  /// This field is deprecated, use node_pool.initial_node_count instead.
  core.int initialNodeCount;

  /// Deprecated. Use node_pools.instance_group_urls.
  core.List<core.String> instanceGroupUrls;

  /// Configuration for cluster IP allocation.
  IPAllocationPolicy ipAllocationPolicy;

  /// The fingerprint of the set of labels for this cluster.
  core.String labelFingerprint;

  /// Configuration for the legacy ABAC authorization mode.
  LegacyAbac legacyAbac;

  /// [Output only] The name of the Google Compute Engine
  /// [zone](/compute/docs/regions-zones/regions-zones#available) or
  /// [region](/compute/docs/regions-zones/regions-zones#available) in which
  /// the cluster resides.
  core.String location;

  /// The list of Google Compute Engine
  /// [zones](/compute/docs/zones#available) in which the cluster's nodes
  /// should be located.
  core.List<core.String> locations;

  /// The logging service the cluster should use to write logs.
  /// Currently available options:
  ///
  /// * "logging.googleapis.com/kubernetes" - the Google Cloud Logging
  /// service with Kubernetes-native resource model in Stackdriver
  /// * `logging.googleapis.com` - the Google Cloud Logging service.
  /// * `none` - no logs will be exported from the cluster.
  /// * if left as an empty string,`logging.googleapis.com` will be used.
  core.String loggingService;

  /// Configure the maintenance policy for this cluster.
  MaintenancePolicy maintenancePolicy;

  /// The authentication information for accessing the master endpoint.
  /// If unspecified, the defaults are used:
  /// For clusters before v1.12, if master_auth is unspecified, `username` will
  /// be set to "admin", a random password will be generated, and a client
  /// certificate will be issued.
  MasterAuth masterAuth;

  /// The configuration options for master authorized networks feature.
  MasterAuthorizedNetworksConfig masterAuthorizedNetworksConfig;

  /// The monitoring service the cluster should use to write metrics.
  /// Currently available options:
  ///
  /// * `monitoring.googleapis.com` - the Google Cloud Monitoring service.
  /// * `none` - no metrics will be exported from the cluster.
  /// * if left as an empty string, `monitoring.googleapis.com` will be used.
  core.String monitoringService;

  /// The name of this cluster. The name must be unique within this project
  /// and zone, and can be up to 40 characters with the following restrictions:
  ///
  /// * Lowercase letters, numbers, and hyphens only.
  /// * Must start with a letter.
  /// * Must end with a number or a letter.
  core.String name;

  /// The name of the Google Compute Engine
  /// [network](/compute/docs/networks-and-firewalls#networks) to which the
  /// cluster is connected. If left unspecified, the `default` network
  /// will be used.
  core.String network;

  /// Configuration for cluster networking.
  NetworkConfig networkConfig;

  /// Configuration options for the NetworkPolicy feature.
  NetworkPolicy networkPolicy;

  /// Parameters used in creating the cluster's nodes.
  /// For requests, this field should only be used in lieu of a
  /// "node_pool" object, since this configuration (along with the
  /// "initial_node_count") will be used to create a "NodePool" object with an
  /// auto-generated name. Do not use this and a node_pool at the same time.
  /// For responses, this field will be populated with the node configuration of
  /// the first node pool. (For configuration of each node pool, see
  /// `node_pool.config`)
  ///
  /// If unspecified, the defaults are used.
  /// This field is deprecated, use node_pool.config instead.
  NodeConfig nodeConfig;

  /// [Output only] The size of the address space on each node for hosting
  /// containers. This is provisioned from within the `container_ipv4_cidr`
  /// range. This field will only be set when cluster is in route-based network
  /// mode.
  core.int nodeIpv4CidrSize;

  /// The node pools associated with this cluster.
  /// This field should not be set if "node_config" or "initial_node_count" are
  /// specified.
  core.List<NodePool> nodePools;

  /// Configuration for private cluster.
  PrivateClusterConfig privateClusterConfig;

  /// The resource labels for the cluster to use to annotate any related
  /// Google Compute Engine resources.
  core.Map<core.String, core.String> resourceLabels;

  /// Configuration for exporting resource usages. Resource usage export is
  /// disabled when this config is unspecified.
  ResourceUsageExportConfig resourceUsageExportConfig;

  /// [Output only] Server-defined URL for the resource.
  core.String selfLink;

  /// [Output only] The IP address range of the Kubernetes services in
  /// this cluster, in
  /// [CIDR](http://en.wikipedia.org/wiki/Classless_Inter-Domain_Routing)
  /// notation (e.g. `1.2.3.4/29`). Service addresses are
  /// typically put in the last `/16` from the container CIDR.
  core.String servicesIpv4Cidr;

  /// [Output only] The current status of this cluster.
  /// Possible string values are:
  /// - "STATUS_UNSPECIFIED" : Not set.
  /// - "PROVISIONING" : The PROVISIONING state indicates the cluster is being
  /// created.
  /// - "RUNNING" : The RUNNING state indicates the cluster has been created and
  /// is fully
  /// usable.
  /// - "RECONCILING" : The RECONCILING state indicates that some work is
  /// actively being done on
  /// the cluster, such as upgrading the master or node software. Details can
  /// be found in the `statusMessage` field.
  /// - "STOPPING" : The STOPPING state indicates the cluster is being deleted.
  /// - "ERROR" : The ERROR state indicates the cluster may be unusable. Details
  /// can be found in the `statusMessage` field.
  /// - "DEGRADED" : The DEGRADED state indicates the cluster requires user
  /// action to restore
  /// full functionality. Details can be found in the `statusMessage` field.
  core.String status;

  /// [Output only] Additional information about the current status of this
  /// cluster, if available.
  core.String statusMessage;

  /// The name of the Google Compute Engine
  /// [subnetwork](/compute/docs/subnetworks) to which the
  /// cluster is connected.
  core.String subnetwork;

  /// [Output only] The IP address range of the Cloud TPUs in this cluster, in
  /// [CIDR](http://en.wikipedia.org/wiki/Classless_Inter-Domain_Routing)
  /// notation (e.g. `1.2.3.4/29`).
  core.String tpuIpv4CidrBlock;

  /// [Output only] The name of the Google Compute Engine
  /// [zone](/compute/docs/zones#available) in which the cluster
  /// resides.
  /// This field is deprecated, use location instead.
  core.String zone;

  Cluster();

  Cluster.fromJson(core.Map _json) {
    if (_json.containsKey("addonsConfig")) {
      addonsConfig = new AddonsConfig.fromJson(_json["addonsConfig"]);
    }
    if (_json.containsKey("clusterIpv4Cidr")) {
      clusterIpv4Cidr = _json["clusterIpv4Cidr"];
    }
    if (_json.containsKey("conditions")) {
      conditions = (_json["conditions"] as core.List)
          .map<StatusCondition>((value) => new StatusCondition.fromJson(value))
          .toList();
    }
    if (_json.containsKey("createTime")) {
      createTime = _json["createTime"];
    }
    if (_json.containsKey("currentMasterVersion")) {
      currentMasterVersion = _json["currentMasterVersion"];
    }
    if (_json.containsKey("currentNodeCount")) {
      currentNodeCount = _json["currentNodeCount"];
    }
    if (_json.containsKey("currentNodeVersion")) {
      currentNodeVersion = _json["currentNodeVersion"];
    }
    if (_json.containsKey("defaultMaxPodsConstraint")) {
      defaultMaxPodsConstraint =
          new MaxPodsConstraint.fromJson(_json["defaultMaxPodsConstraint"]);
    }
    if (_json.containsKey("description")) {
      description = _json["description"];
    }
    if (_json.containsKey("enableKubernetesAlpha")) {
      enableKubernetesAlpha = _json["enableKubernetesAlpha"];
    }
    if (_json.containsKey("enableTpu")) {
      enableTpu = _json["enableTpu"];
    }
    if (_json.containsKey("endpoint")) {
      endpoint = _json["endpoint"];
    }
    if (_json.containsKey("expireTime")) {
      expireTime = _json["expireTime"];
    }
    if (_json.containsKey("initialClusterVersion")) {
      initialClusterVersion = _json["initialClusterVersion"];
    }
    if (_json.containsKey("initialNodeCount")) {
      initialNodeCount = _json["initialNodeCount"];
    }
    if (_json.containsKey("instanceGroupUrls")) {
      instanceGroupUrls =
          (_json["instanceGroupUrls"] as core.List).cast<core.String>();
    }
    if (_json.containsKey("ipAllocationPolicy")) {
      ipAllocationPolicy =
          new IPAllocationPolicy.fromJson(_json["ipAllocationPolicy"]);
    }
    if (_json.containsKey("labelFingerprint")) {
      labelFingerprint = _json["labelFingerprint"];
    }
    if (_json.containsKey("legacyAbac")) {
      legacyAbac = new LegacyAbac.fromJson(_json["legacyAbac"]);
    }
    if (_json.containsKey("location")) {
      location = _json["location"];
    }
    if (_json.containsKey("locations")) {
      locations = (_json["locations"] as core.List).cast<core.String>();
    }
    if (_json.containsKey("loggingService")) {
      loggingService = _json["loggingService"];
    }
    if (_json.containsKey("maintenancePolicy")) {
      maintenancePolicy =
          new MaintenancePolicy.fromJson(_json["maintenancePolicy"]);
    }
    if (_json.containsKey("masterAuth")) {
      masterAuth = new MasterAuth.fromJson(_json["masterAuth"]);
    }
    if (_json.containsKey("masterAuthorizedNetworksConfig")) {
      masterAuthorizedNetworksConfig =
          new MasterAuthorizedNetworksConfig.fromJson(
              _json["masterAuthorizedNetworksConfig"]);
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
    if (_json.containsKey("networkConfig")) {
      networkConfig = new NetworkConfig.fromJson(_json["networkConfig"]);
    }
    if (_json.containsKey("networkPolicy")) {
      networkPolicy = new NetworkPolicy.fromJson(_json["networkPolicy"]);
    }
    if (_json.containsKey("nodeConfig")) {
      nodeConfig = new NodeConfig.fromJson(_json["nodeConfig"]);
    }
    if (_json.containsKey("nodeIpv4CidrSize")) {
      nodeIpv4CidrSize = _json["nodeIpv4CidrSize"];
    }
    if (_json.containsKey("nodePools")) {
      nodePools = (_json["nodePools"] as core.List)
          .map<NodePool>((value) => new NodePool.fromJson(value))
          .toList();
    }
    if (_json.containsKey("privateClusterConfig")) {
      privateClusterConfig =
          new PrivateClusterConfig.fromJson(_json["privateClusterConfig"]);
    }
    if (_json.containsKey("resourceLabels")) {
      resourceLabels = (_json["resourceLabels"] as core.Map)
          .cast<core.String, core.String>();
    }
    if (_json.containsKey("resourceUsageExportConfig")) {
      resourceUsageExportConfig = new ResourceUsageExportConfig.fromJson(
          _json["resourceUsageExportConfig"]);
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
    if (_json.containsKey("subnetwork")) {
      subnetwork = _json["subnetwork"];
    }
    if (_json.containsKey("tpuIpv4CidrBlock")) {
      tpuIpv4CidrBlock = _json["tpuIpv4CidrBlock"];
    }
    if (_json.containsKey("zone")) {
      zone = _json["zone"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (addonsConfig != null) {
      _json["addonsConfig"] = (addonsConfig).toJson();
    }
    if (clusterIpv4Cidr != null) {
      _json["clusterIpv4Cidr"] = clusterIpv4Cidr;
    }
    if (conditions != null) {
      _json["conditions"] =
          conditions.map((value) => (value).toJson()).toList();
    }
    if (createTime != null) {
      _json["createTime"] = createTime;
    }
    if (currentMasterVersion != null) {
      _json["currentMasterVersion"] = currentMasterVersion;
    }
    if (currentNodeCount != null) {
      _json["currentNodeCount"] = currentNodeCount;
    }
    if (currentNodeVersion != null) {
      _json["currentNodeVersion"] = currentNodeVersion;
    }
    if (defaultMaxPodsConstraint != null) {
      _json["defaultMaxPodsConstraint"] = (defaultMaxPodsConstraint).toJson();
    }
    if (description != null) {
      _json["description"] = description;
    }
    if (enableKubernetesAlpha != null) {
      _json["enableKubernetesAlpha"] = enableKubernetesAlpha;
    }
    if (enableTpu != null) {
      _json["enableTpu"] = enableTpu;
    }
    if (endpoint != null) {
      _json["endpoint"] = endpoint;
    }
    if (expireTime != null) {
      _json["expireTime"] = expireTime;
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
    if (ipAllocationPolicy != null) {
      _json["ipAllocationPolicy"] = (ipAllocationPolicy).toJson();
    }
    if (labelFingerprint != null) {
      _json["labelFingerprint"] = labelFingerprint;
    }
    if (legacyAbac != null) {
      _json["legacyAbac"] = (legacyAbac).toJson();
    }
    if (location != null) {
      _json["location"] = location;
    }
    if (locations != null) {
      _json["locations"] = locations;
    }
    if (loggingService != null) {
      _json["loggingService"] = loggingService;
    }
    if (maintenancePolicy != null) {
      _json["maintenancePolicy"] = (maintenancePolicy).toJson();
    }
    if (masterAuth != null) {
      _json["masterAuth"] = (masterAuth).toJson();
    }
    if (masterAuthorizedNetworksConfig != null) {
      _json["masterAuthorizedNetworksConfig"] =
          (masterAuthorizedNetworksConfig).toJson();
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
    if (networkConfig != null) {
      _json["networkConfig"] = (networkConfig).toJson();
    }
    if (networkPolicy != null) {
      _json["networkPolicy"] = (networkPolicy).toJson();
    }
    if (nodeConfig != null) {
      _json["nodeConfig"] = (nodeConfig).toJson();
    }
    if (nodeIpv4CidrSize != null) {
      _json["nodeIpv4CidrSize"] = nodeIpv4CidrSize;
    }
    if (nodePools != null) {
      _json["nodePools"] = nodePools.map((value) => (value).toJson()).toList();
    }
    if (privateClusterConfig != null) {
      _json["privateClusterConfig"] = (privateClusterConfig).toJson();
    }
    if (resourceLabels != null) {
      _json["resourceLabels"] = resourceLabels;
    }
    if (resourceUsageExportConfig != null) {
      _json["resourceUsageExportConfig"] = (resourceUsageExportConfig).toJson();
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
    if (subnetwork != null) {
      _json["subnetwork"] = subnetwork;
    }
    if (tpuIpv4CidrBlock != null) {
      _json["tpuIpv4CidrBlock"] = tpuIpv4CidrBlock;
    }
    if (zone != null) {
      _json["zone"] = zone;
    }
    return _json;
  }
}

/// ClusterUpdate describes an update to the cluster. Exactly one update can
/// be applied to a cluster with each request, so at most one field can be
/// provided.
class ClusterUpdate {
  /// Configurations for the various addons available to run in the cluster.
  AddonsConfig desiredAddonsConfig;

  /// The desired image type for the node pool.
  /// NOTE: Set the "desired_node_pool" field as well.
  core.String desiredImageType;

  /// The desired list of Google Compute Engine
  /// [zones](/compute/docs/zones#available) in which the cluster's nodes
  /// should be located. Changing the locations a cluster is in will result
  /// in nodes being either created or removed from the cluster, depending on
  /// whether locations are being added or removed.
  ///
  /// This list must always include the cluster's primary zone.
  core.List<core.String> desiredLocations;

  /// The logging service the cluster should use to write logs.
  /// Currently available options:
  ///
  /// * "logging.googleapis.com/kubernetes" - the Google Cloud Logging
  /// service with Kubernetes-native resource model in Stackdriver
  /// * "logging.googleapis.com" - the Google Cloud Logging service
  /// * "none" - no logs will be exported from the cluster
  core.String desiredLoggingService;

  /// The desired configuration options for master authorized networks feature.
  MasterAuthorizedNetworksConfig desiredMasterAuthorizedNetworksConfig;

  /// The Kubernetes version to change the master to.
  ///
  /// Users may specify either explicit versions offered by
  /// Kubernetes Engine or version aliases, which have the following behavior:
  ///
  /// - "latest": picks the highest valid Kubernetes version
  /// - "1.X": picks the highest valid patch+gke.N patch in the 1.X version
  /// - "1.X.Y": picks the highest valid gke.N patch in the 1.X.Y version
  /// - "1.X.Y-gke.N": picks an explicit Kubernetes version
  /// - "-": picks the default Kubernetes version
  core.String desiredMasterVersion;

  /// The monitoring service the cluster should use to write metrics.
  /// Currently available options:
  ///
  /// * "monitoring.googleapis.com/kubernetes" - the Google Cloud Monitoring
  /// service with Kubernetes-native resource model in Stackdriver
  /// * "monitoring.googleapis.com" - the Google Cloud Monitoring service
  /// * "none" - no metrics will be exported from the cluster
  core.String desiredMonitoringService;

  /// Autoscaler configuration for the node pool specified in
  /// desired_node_pool_id. If there is only one pool in the
  /// cluster and desired_node_pool_id is not provided then
  /// the change applies to that single node pool.
  NodePoolAutoscaling desiredNodePoolAutoscaling;

  /// The node pool to be upgraded. This field is mandatory if
  /// "desired_node_version", "desired_image_family" or
  /// "desired_node_pool_autoscaling" is specified and there is more than one
  /// node pool on the cluster.
  core.String desiredNodePoolId;

  /// The Kubernetes version to change the nodes to (typically an
  /// upgrade).
  ///
  /// Users may specify either explicit versions offered by
  /// Kubernetes Engine or version aliases, which have the following behavior:
  ///
  /// - "latest": picks the highest valid Kubernetes version
  /// - "1.X": picks the highest valid patch+gke.N patch in the 1.X version
  /// - "1.X.Y": picks the highest valid gke.N patch in the 1.X.Y version
  /// - "1.X.Y-gke.N": picks an explicit Kubernetes version
  /// - "-": picks the Kubernetes master version
  core.String desiredNodeVersion;

  /// The desired configuration for exporting resource usage.
  ResourceUsageExportConfig desiredResourceUsageExportConfig;

  ClusterUpdate();

  ClusterUpdate.fromJson(core.Map _json) {
    if (_json.containsKey("desiredAddonsConfig")) {
      desiredAddonsConfig =
          new AddonsConfig.fromJson(_json["desiredAddonsConfig"]);
    }
    if (_json.containsKey("desiredImageType")) {
      desiredImageType = _json["desiredImageType"];
    }
    if (_json.containsKey("desiredLocations")) {
      desiredLocations =
          (_json["desiredLocations"] as core.List).cast<core.String>();
    }
    if (_json.containsKey("desiredLoggingService")) {
      desiredLoggingService = _json["desiredLoggingService"];
    }
    if (_json.containsKey("desiredMasterAuthorizedNetworksConfig")) {
      desiredMasterAuthorizedNetworksConfig =
          new MasterAuthorizedNetworksConfig.fromJson(
              _json["desiredMasterAuthorizedNetworksConfig"]);
    }
    if (_json.containsKey("desiredMasterVersion")) {
      desiredMasterVersion = _json["desiredMasterVersion"];
    }
    if (_json.containsKey("desiredMonitoringService")) {
      desiredMonitoringService = _json["desiredMonitoringService"];
    }
    if (_json.containsKey("desiredNodePoolAutoscaling")) {
      desiredNodePoolAutoscaling =
          new NodePoolAutoscaling.fromJson(_json["desiredNodePoolAutoscaling"]);
    }
    if (_json.containsKey("desiredNodePoolId")) {
      desiredNodePoolId = _json["desiredNodePoolId"];
    }
    if (_json.containsKey("desiredNodeVersion")) {
      desiredNodeVersion = _json["desiredNodeVersion"];
    }
    if (_json.containsKey("desiredResourceUsageExportConfig")) {
      desiredResourceUsageExportConfig = new ResourceUsageExportConfig.fromJson(
          _json["desiredResourceUsageExportConfig"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (desiredAddonsConfig != null) {
      _json["desiredAddonsConfig"] = (desiredAddonsConfig).toJson();
    }
    if (desiredImageType != null) {
      _json["desiredImageType"] = desiredImageType;
    }
    if (desiredLocations != null) {
      _json["desiredLocations"] = desiredLocations;
    }
    if (desiredLoggingService != null) {
      _json["desiredLoggingService"] = desiredLoggingService;
    }
    if (desiredMasterAuthorizedNetworksConfig != null) {
      _json["desiredMasterAuthorizedNetworksConfig"] =
          (desiredMasterAuthorizedNetworksConfig).toJson();
    }
    if (desiredMasterVersion != null) {
      _json["desiredMasterVersion"] = desiredMasterVersion;
    }
    if (desiredMonitoringService != null) {
      _json["desiredMonitoringService"] = desiredMonitoringService;
    }
    if (desiredNodePoolAutoscaling != null) {
      _json["desiredNodePoolAutoscaling"] =
          (desiredNodePoolAutoscaling).toJson();
    }
    if (desiredNodePoolId != null) {
      _json["desiredNodePoolId"] = desiredNodePoolId;
    }
    if (desiredNodeVersion != null) {
      _json["desiredNodeVersion"] = desiredNodeVersion;
    }
    if (desiredResourceUsageExportConfig != null) {
      _json["desiredResourceUsageExportConfig"] =
          (desiredResourceUsageExportConfig).toJson();
    }
    return _json;
  }
}

/// CompleteIPRotationRequest moves the cluster master back into single-IP mode.
class CompleteIPRotationRequest {
  /// Deprecated. The name of the cluster.
  /// This field has been deprecated and replaced by the name field.
  core.String clusterId;

  /// The name (project, location, cluster id) of the cluster to complete IP
  /// rotation. Specified in the format 'projects / * /locations / * /clusters /
  /// * '.
  core.String name;

  /// Deprecated. The Google Developers Console [project ID or project
  /// number](https://developers.google.com/console/help/new/#projectnumber).
  /// This field has been deprecated and replaced by the name field.
  core.String projectId;

  /// Deprecated. The name of the Google Compute Engine
  /// [zone](/compute/docs/zones#available) in which the cluster
  /// resides.
  /// This field has been deprecated and replaced by the name field.
  core.String zone;

  CompleteIPRotationRequest();

  CompleteIPRotationRequest.fromJson(core.Map _json) {
    if (_json.containsKey("clusterId")) {
      clusterId = _json["clusterId"];
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
    if (_json.containsKey("projectId")) {
      projectId = _json["projectId"];
    }
    if (_json.containsKey("zone")) {
      zone = _json["zone"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (clusterId != null) {
      _json["clusterId"] = clusterId;
    }
    if (name != null) {
      _json["name"] = name;
    }
    if (projectId != null) {
      _json["projectId"] = projectId;
    }
    if (zone != null) {
      _json["zone"] = zone;
    }
    return _json;
  }
}

/// Parameters for controlling consumption metering.
class ConsumptionMeteringConfig {
  /// Whether to enable consumption metering for this cluster. If enabled, a
  /// second BigQuery table will be created to hold resource consumption
  /// records.
  core.bool enabled;

  ConsumptionMeteringConfig();

  ConsumptionMeteringConfig.fromJson(core.Map _json) {
    if (_json.containsKey("enabled")) {
      enabled = _json["enabled"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (enabled != null) {
      _json["enabled"] = enabled;
    }
    return _json;
  }
}

/// CreateClusterRequest creates a cluster.
class CreateClusterRequest {
  /// A [cluster
  /// resource](/container-engine/reference/rest/v1/projects.zones.clusters)
  Cluster cluster;

  /// The parent (project and location) where the cluster will be created.
  /// Specified in the format 'projects / * /locations / * '.
  core.String parent;

  /// Deprecated. The Google Developers Console [project ID or project
  /// number](https://support.google.com/cloud/answer/6158840).
  /// This field has been deprecated and replaced by the parent field.
  core.String projectId;

  /// Deprecated. The name of the Google Compute Engine
  /// [zone](/compute/docs/zones#available) in which the cluster
  /// resides.
  /// This field has been deprecated and replaced by the parent field.
  core.String zone;

  CreateClusterRequest();

  CreateClusterRequest.fromJson(core.Map _json) {
    if (_json.containsKey("cluster")) {
      cluster = new Cluster.fromJson(_json["cluster"]);
    }
    if (_json.containsKey("parent")) {
      parent = _json["parent"];
    }
    if (_json.containsKey("projectId")) {
      projectId = _json["projectId"];
    }
    if (_json.containsKey("zone")) {
      zone = _json["zone"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (cluster != null) {
      _json["cluster"] = (cluster).toJson();
    }
    if (parent != null) {
      _json["parent"] = parent;
    }
    if (projectId != null) {
      _json["projectId"] = projectId;
    }
    if (zone != null) {
      _json["zone"] = zone;
    }
    return _json;
  }
}

/// CreateNodePoolRequest creates a node pool for a cluster.
class CreateNodePoolRequest {
  /// Deprecated. The name of the cluster.
  /// This field has been deprecated and replaced by the parent field.
  core.String clusterId;

  /// The node pool to create.
  NodePool nodePool;

  /// The parent (project, location, cluster id) where the node pool will be
  /// created. Specified in the format
  /// 'projects / * /locations / * /clusters / * '.
  core.String parent;

  /// Deprecated. The Google Developers Console [project ID or project
  /// number](https://developers.google.com/console/help/new/#projectnumber).
  /// This field has been deprecated and replaced by the parent field.
  core.String projectId;

  /// Deprecated. The name of the Google Compute Engine
  /// [zone](/compute/docs/zones#available) in which the cluster
  /// resides.
  /// This field has been deprecated and replaced by the parent field.
  core.String zone;

  CreateNodePoolRequest();

  CreateNodePoolRequest.fromJson(core.Map _json) {
    if (_json.containsKey("clusterId")) {
      clusterId = _json["clusterId"];
    }
    if (_json.containsKey("nodePool")) {
      nodePool = new NodePool.fromJson(_json["nodePool"]);
    }
    if (_json.containsKey("parent")) {
      parent = _json["parent"];
    }
    if (_json.containsKey("projectId")) {
      projectId = _json["projectId"];
    }
    if (_json.containsKey("zone")) {
      zone = _json["zone"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (clusterId != null) {
      _json["clusterId"] = clusterId;
    }
    if (nodePool != null) {
      _json["nodePool"] = (nodePool).toJson();
    }
    if (parent != null) {
      _json["parent"] = parent;
    }
    if (projectId != null) {
      _json["projectId"] = projectId;
    }
    if (zone != null) {
      _json["zone"] = zone;
    }
    return _json;
  }
}

/// Time window specified for daily maintenance operations.
class DailyMaintenanceWindow {
  /// [Output only] Duration of the time window, automatically chosen to be
  /// smallest possible in the given scenario.
  /// Duration will be in [RFC3339](https://www.ietf.org/rfc/rfc3339.txt)
  /// format "PTnHnMnS".
  core.String duration;

  /// Time within the maintenance window to start the maintenance operations.
  /// Time format should be in [RFC3339](https://www.ietf.org/rfc/rfc3339.txt)
  /// format "HH:MM", where HH : [00-23] and MM : [00-59] GMT.
  core.String startTime;

  DailyMaintenanceWindow();

  DailyMaintenanceWindow.fromJson(core.Map _json) {
    if (_json.containsKey("duration")) {
      duration = _json["duration"];
    }
    if (_json.containsKey("startTime")) {
      startTime = _json["startTime"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (duration != null) {
      _json["duration"] = duration;
    }
    if (startTime != null) {
      _json["startTime"] = startTime;
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

/// GetJSONWebKeysResponse is a valid JSON Web Key Set as specififed in rfc 7517
class GetJSONWebKeysResponse {
  /// The public component of the keys used by the cluster to sign token
  /// requests.
  core.List<Jwk> keys;

  GetJSONWebKeysResponse();

  GetJSONWebKeysResponse.fromJson(core.Map _json) {
    if (_json.containsKey("keys")) {
      keys = (_json["keys"] as core.List)
          .map<Jwk>((value) => new Jwk.fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (keys != null) {
      _json["keys"] = keys.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

/// GetOpenIDConfigResponse is an OIDC discovery document for the cluster.
/// See the OpenID Connect Discovery 1.0 specification for details.
class GetOpenIDConfigResponse {
  /// Supported claims.
  core.List<core.String> claimsSupported;

  /// Supported grant types.
  core.List<core.String> grantTypes;

  /// supported ID Token signing Algorithms.
  core.List<core.String> idTokenSigningAlgValuesSupported;

  /// OIDC Issuer.
  core.String issuer;

  /// JSON Web Key uri.
  core.String jwksUri;

  /// Supported response types.
  core.List<core.String> responseTypesSupported;

  /// Supported subject types.
  core.List<core.String> subjectTypesSupported;

  GetOpenIDConfigResponse();

  GetOpenIDConfigResponse.fromJson(core.Map _json) {
    if (_json.containsKey("claims_supported")) {
      claimsSupported =
          (_json["claims_supported"] as core.List).cast<core.String>();
    }
    if (_json.containsKey("grant_types")) {
      grantTypes = (_json["grant_types"] as core.List).cast<core.String>();
    }
    if (_json.containsKey("id_token_signing_alg_values_supported")) {
      idTokenSigningAlgValuesSupported =
          (_json["id_token_signing_alg_values_supported"] as core.List)
              .cast<core.String>();
    }
    if (_json.containsKey("issuer")) {
      issuer = _json["issuer"];
    }
    if (_json.containsKey("jwks_uri")) {
      jwksUri = _json["jwks_uri"];
    }
    if (_json.containsKey("response_types_supported")) {
      responseTypesSupported =
          (_json["response_types_supported"] as core.List).cast<core.String>();
    }
    if (_json.containsKey("subject_types_supported")) {
      subjectTypesSupported =
          (_json["subject_types_supported"] as core.List).cast<core.String>();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (claimsSupported != null) {
      _json["claims_supported"] = claimsSupported;
    }
    if (grantTypes != null) {
      _json["grant_types"] = grantTypes;
    }
    if (idTokenSigningAlgValuesSupported != null) {
      _json["id_token_signing_alg_values_supported"] =
          idTokenSigningAlgValuesSupported;
    }
    if (issuer != null) {
      _json["issuer"] = issuer;
    }
    if (jwksUri != null) {
      _json["jwks_uri"] = jwksUri;
    }
    if (responseTypesSupported != null) {
      _json["response_types_supported"] = responseTypesSupported;
    }
    if (subjectTypesSupported != null) {
      _json["subject_types_supported"] = subjectTypesSupported;
    }
    return _json;
  }
}

/// Configuration options for the horizontal pod autoscaling feature, which
/// increases or decreases the number of replica pods a replication controller
/// has based on the resource usage of the existing pods.
class HorizontalPodAutoscaling {
  /// Whether the Horizontal Pod Autoscaling feature is enabled in the cluster.
  /// When enabled, it ensures that a Heapster pod is running in the cluster,
  /// which is also used by the Cloud Monitoring service.
  core.bool disabled;

  HorizontalPodAutoscaling();

  HorizontalPodAutoscaling.fromJson(core.Map _json) {
    if (_json.containsKey("disabled")) {
      disabled = _json["disabled"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (disabled != null) {
      _json["disabled"] = disabled;
    }
    return _json;
  }
}

/// Configuration options for the HTTP (L7) load balancing controller addon,
/// which makes it easy to set up HTTP load balancers for services in a cluster.
class HttpLoadBalancing {
  /// Whether the HTTP Load Balancing controller is enabled in the cluster.
  /// When enabled, it runs a small pod in the cluster that manages the load
  /// balancers.
  core.bool disabled;

  HttpLoadBalancing();

  HttpLoadBalancing.fromJson(core.Map _json) {
    if (_json.containsKey("disabled")) {
      disabled = _json["disabled"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (disabled != null) {
      _json["disabled"] = disabled;
    }
    return _json;
  }
}

/// Configuration for controlling how IPs are allocated in the cluster.
class IPAllocationPolicy {
  /// This field is deprecated, use cluster_ipv4_cidr_block.
  core.String clusterIpv4Cidr;

  /// The IP address range for the cluster pod IPs. If this field is set, then
  /// `cluster.cluster_ipv4_cidr` must be left blank.
  ///
  /// This field is only applicable when `use_ip_aliases` is true.
  ///
  /// Set to blank to have a range chosen with the default size.
  ///
  /// Set to /netmask (e.g. `/14`) to have a range chosen with a specific
  /// netmask.
  ///
  /// Set to a
  /// [CIDR](http://en.wikipedia.org/wiki/Classless_Inter-Domain_Routing)
  /// notation (e.g. `10.96.0.0/14`) from the RFC-1918 private networks (e.g.
  /// `10.0.0.0/8`, `172.16.0.0/12`, `192.168.0.0/16`) to pick a specific range
  /// to use.
  core.String clusterIpv4CidrBlock;

  /// The name of the secondary range to be used for the cluster CIDR
  /// block.  The secondary range will be used for pod IP
  /// addresses. This must be an existing secondary range associated
  /// with the cluster subnetwork.
  ///
  /// This field is only applicable with use_ip_aliases is true and
  /// create_subnetwork is false.
  core.String clusterSecondaryRangeName;

  /// Whether a new subnetwork will be created automatically for the cluster.
  ///
  /// This field is only applicable when `use_ip_aliases` is true.
  core.bool createSubnetwork;

  /// This field is deprecated, use node_ipv4_cidr_block.
  core.String nodeIpv4Cidr;

  /// The IP address range of the instance IPs in this cluster.
  ///
  /// This is applicable only if `create_subnetwork` is true.
  ///
  /// Set to blank to have a range chosen with the default size.
  ///
  /// Set to /netmask (e.g. `/14`) to have a range chosen with a specific
  /// netmask.
  ///
  /// Set to a
  /// [CIDR](http://en.wikipedia.org/wiki/Classless_Inter-Domain_Routing)
  /// notation (e.g. `10.96.0.0/14`) from the RFC-1918 private networks (e.g.
  /// `10.0.0.0/8`, `172.16.0.0/12`, `192.168.0.0/16`) to pick a specific range
  /// to use.
  core.String nodeIpv4CidrBlock;

  /// This field is deprecated, use services_ipv4_cidr_block.
  core.String servicesIpv4Cidr;

  /// The IP address range of the services IPs in this cluster. If blank, a
  /// range
  /// will be automatically chosen with the default size.
  ///
  /// This field is only applicable when `use_ip_aliases` is true.
  ///
  /// Set to blank to have a range chosen with the default size.
  ///
  /// Set to /netmask (e.g. `/14`) to have a range chosen with a specific
  /// netmask.
  ///
  /// Set to a
  /// [CIDR](http://en.wikipedia.org/wiki/Classless_Inter-Domain_Routing)
  /// notation (e.g. `10.96.0.0/14`) from the RFC-1918 private networks (e.g.
  /// `10.0.0.0/8`, `172.16.0.0/12`, `192.168.0.0/16`) to pick a specific range
  /// to use.
  core.String servicesIpv4CidrBlock;

  /// The name of the secondary range to be used as for the services
  /// CIDR block.  The secondary range will be used for service
  /// ClusterIPs. This must be an existing secondary range associated
  /// with the cluster subnetwork.
  ///
  /// This field is only applicable with use_ip_aliases is true and
  /// create_subnetwork is false.
  core.String servicesSecondaryRangeName;

  /// A custom subnetwork name to be used if `create_subnetwork` is true.  If
  /// this field is empty, then an automatic name will be chosen for the new
  /// subnetwork.
  core.String subnetworkName;

  /// The IP address range of the Cloud TPUs in this cluster. If unspecified, a
  /// range will be automatically chosen with the default size.
  ///
  /// This field is only applicable when `use_ip_aliases` is true.
  ///
  /// If unspecified, the range will use the default size.
  ///
  /// Set to /netmask (e.g. `/14`) to have a range chosen with a specific
  /// netmask.
  ///
  /// Set to a
  /// [CIDR](http://en.wikipedia.org/wiki/Classless_Inter-Domain_Routing)
  /// notation (e.g. `10.96.0.0/14`) from the RFC-1918 private networks (e.g.
  /// `10.0.0.0/8`, `172.16.0.0/12`, `192.168.0.0/16`) to pick a specific range
  /// to use.
  core.String tpuIpv4CidrBlock;

  /// Whether alias IPs will be used for pod IPs in the cluster.
  core.bool useIpAliases;

  IPAllocationPolicy();

  IPAllocationPolicy.fromJson(core.Map _json) {
    if (_json.containsKey("clusterIpv4Cidr")) {
      clusterIpv4Cidr = _json["clusterIpv4Cidr"];
    }
    if (_json.containsKey("clusterIpv4CidrBlock")) {
      clusterIpv4CidrBlock = _json["clusterIpv4CidrBlock"];
    }
    if (_json.containsKey("clusterSecondaryRangeName")) {
      clusterSecondaryRangeName = _json["clusterSecondaryRangeName"];
    }
    if (_json.containsKey("createSubnetwork")) {
      createSubnetwork = _json["createSubnetwork"];
    }
    if (_json.containsKey("nodeIpv4Cidr")) {
      nodeIpv4Cidr = _json["nodeIpv4Cidr"];
    }
    if (_json.containsKey("nodeIpv4CidrBlock")) {
      nodeIpv4CidrBlock = _json["nodeIpv4CidrBlock"];
    }
    if (_json.containsKey("servicesIpv4Cidr")) {
      servicesIpv4Cidr = _json["servicesIpv4Cidr"];
    }
    if (_json.containsKey("servicesIpv4CidrBlock")) {
      servicesIpv4CidrBlock = _json["servicesIpv4CidrBlock"];
    }
    if (_json.containsKey("servicesSecondaryRangeName")) {
      servicesSecondaryRangeName = _json["servicesSecondaryRangeName"];
    }
    if (_json.containsKey("subnetworkName")) {
      subnetworkName = _json["subnetworkName"];
    }
    if (_json.containsKey("tpuIpv4CidrBlock")) {
      tpuIpv4CidrBlock = _json["tpuIpv4CidrBlock"];
    }
    if (_json.containsKey("useIpAliases")) {
      useIpAliases = _json["useIpAliases"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (clusterIpv4Cidr != null) {
      _json["clusterIpv4Cidr"] = clusterIpv4Cidr;
    }
    if (clusterIpv4CidrBlock != null) {
      _json["clusterIpv4CidrBlock"] = clusterIpv4CidrBlock;
    }
    if (clusterSecondaryRangeName != null) {
      _json["clusterSecondaryRangeName"] = clusterSecondaryRangeName;
    }
    if (createSubnetwork != null) {
      _json["createSubnetwork"] = createSubnetwork;
    }
    if (nodeIpv4Cidr != null) {
      _json["nodeIpv4Cidr"] = nodeIpv4Cidr;
    }
    if (nodeIpv4CidrBlock != null) {
      _json["nodeIpv4CidrBlock"] = nodeIpv4CidrBlock;
    }
    if (servicesIpv4Cidr != null) {
      _json["servicesIpv4Cidr"] = servicesIpv4Cidr;
    }
    if (servicesIpv4CidrBlock != null) {
      _json["servicesIpv4CidrBlock"] = servicesIpv4CidrBlock;
    }
    if (servicesSecondaryRangeName != null) {
      _json["servicesSecondaryRangeName"] = servicesSecondaryRangeName;
    }
    if (subnetworkName != null) {
      _json["subnetworkName"] = subnetworkName;
    }
    if (tpuIpv4CidrBlock != null) {
      _json["tpuIpv4CidrBlock"] = tpuIpv4CidrBlock;
    }
    if (useIpAliases != null) {
      _json["useIpAliases"] = useIpAliases;
    }
    return _json;
  }
}

/// Jwk is a JSON Web Key as specified in RFC 7517
class Jwk {
  /// Algorithm.
  core.String alg;

  /// Used for ECDSA keys.
  core.String crv;

  /// Used for RSA keys.
  core.String e;

  /// Key ID.
  core.String kid;

  /// Key Type.
  core.String kty;

  /// Used for RSA keys.
  core.String n;

  /// Permitted uses for the public keys.
  core.String use;

  /// Used for ECDSA keys.
  core.String x;

  /// Used for ECDSA keys.
  core.String y;

  Jwk();

  Jwk.fromJson(core.Map _json) {
    if (_json.containsKey("alg")) {
      alg = _json["alg"];
    }
    if (_json.containsKey("crv")) {
      crv = _json["crv"];
    }
    if (_json.containsKey("e")) {
      e = _json["e"];
    }
    if (_json.containsKey("kid")) {
      kid = _json["kid"];
    }
    if (_json.containsKey("kty")) {
      kty = _json["kty"];
    }
    if (_json.containsKey("n")) {
      n = _json["n"];
    }
    if (_json.containsKey("use")) {
      use = _json["use"];
    }
    if (_json.containsKey("x")) {
      x = _json["x"];
    }
    if (_json.containsKey("y")) {
      y = _json["y"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (alg != null) {
      _json["alg"] = alg;
    }
    if (crv != null) {
      _json["crv"] = crv;
    }
    if (e != null) {
      _json["e"] = e;
    }
    if (kid != null) {
      _json["kid"] = kid;
    }
    if (kty != null) {
      _json["kty"] = kty;
    }
    if (n != null) {
      _json["n"] = n;
    }
    if (use != null) {
      _json["use"] = use;
    }
    if (x != null) {
      _json["x"] = x;
    }
    if (y != null) {
      _json["y"] = y;
    }
    return _json;
  }
}

/// Configuration for the Kubernetes Dashboard.
class KubernetesDashboard {
  /// Whether the Kubernetes Dashboard is enabled for this cluster.
  core.bool disabled;

  KubernetesDashboard();

  KubernetesDashboard.fromJson(core.Map _json) {
    if (_json.containsKey("disabled")) {
      disabled = _json["disabled"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (disabled != null) {
      _json["disabled"] = disabled;
    }
    return _json;
  }
}

/// Configuration for the legacy Attribute Based Access Control authorization
/// mode.
class LegacyAbac {
  /// Whether the ABAC authorizer is enabled for this cluster. When enabled,
  /// identities in the system, including service accounts, nodes, and
  /// controllers, will have statically granted permissions beyond those
  /// provided by the RBAC configuration or IAM.
  core.bool enabled;

  LegacyAbac();

  LegacyAbac.fromJson(core.Map _json) {
    if (_json.containsKey("enabled")) {
      enabled = _json["enabled"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (enabled != null) {
      _json["enabled"] = enabled;
    }
    return _json;
  }
}

/// ListClustersResponse is the result of ListClustersRequest.
class ListClustersResponse {
  /// A list of clusters in the project in the specified zone, or
  /// across all ones.
  core.List<Cluster> clusters;

  /// If any zones are listed here, the list of clusters returned
  /// may be missing those zones.
  core.List<core.String> missingZones;

  ListClustersResponse();

  ListClustersResponse.fromJson(core.Map _json) {
    if (_json.containsKey("clusters")) {
      clusters = (_json["clusters"] as core.List)
          .map<Cluster>((value) => new Cluster.fromJson(value))
          .toList();
    }
    if (_json.containsKey("missingZones")) {
      missingZones = (_json["missingZones"] as core.List).cast<core.String>();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (clusters != null) {
      _json["clusters"] = clusters.map((value) => (value).toJson()).toList();
    }
    if (missingZones != null) {
      _json["missingZones"] = missingZones;
    }
    return _json;
  }
}

/// ListNodePoolsResponse is the result of ListNodePoolsRequest.
class ListNodePoolsResponse {
  /// A list of node pools for a cluster.
  core.List<NodePool> nodePools;

  ListNodePoolsResponse();

  ListNodePoolsResponse.fromJson(core.Map _json) {
    if (_json.containsKey("nodePools")) {
      nodePools = (_json["nodePools"] as core.List)
          .map<NodePool>((value) => new NodePool.fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (nodePools != null) {
      _json["nodePools"] = nodePools.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

/// ListOperationsResponse is the result of ListOperationsRequest.
class ListOperationsResponse {
  /// If any zones are listed here, the list of operations returned
  /// may be missing the operations from those zones.
  core.List<core.String> missingZones;

  /// A list of operations in the project in the specified zone.
  core.List<Operation> operations;

  ListOperationsResponse();

  ListOperationsResponse.fromJson(core.Map _json) {
    if (_json.containsKey("missingZones")) {
      missingZones = (_json["missingZones"] as core.List).cast<core.String>();
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
    if (missingZones != null) {
      _json["missingZones"] = missingZones;
    }
    if (operations != null) {
      _json["operations"] =
          operations.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

/// ListUsableSubnetworksResponse is the response of
/// ListUsableSubnetworksRequest.
class ListUsableSubnetworksResponse {
  /// This token allows you to get the next page of results for list requests.
  /// If the number of results is larger than `page_size`, use the
  /// `next_page_token` as a value for the query parameter `page_token` in the
  /// next request. The value will become empty when there are no more pages.
  core.String nextPageToken;

  /// A list of usable subnetworks in the specified network project.
  core.List<UsableSubnetwork> subnetworks;

  ListUsableSubnetworksResponse();

  ListUsableSubnetworksResponse.fromJson(core.Map _json) {
    if (_json.containsKey("nextPageToken")) {
      nextPageToken = _json["nextPageToken"];
    }
    if (_json.containsKey("subnetworks")) {
      subnetworks = (_json["subnetworks"] as core.List)
          .map<UsableSubnetwork>(
              (value) => new UsableSubnetwork.fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (nextPageToken != null) {
      _json["nextPageToken"] = nextPageToken;
    }
    if (subnetworks != null) {
      _json["subnetworks"] =
          subnetworks.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

/// MaintenancePolicy defines the maintenance policy to be used for the cluster.
class MaintenancePolicy {
  /// Specifies the maintenance window in which maintenance may be performed.
  MaintenanceWindow window;

  MaintenancePolicy();

  MaintenancePolicy.fromJson(core.Map _json) {
    if (_json.containsKey("window")) {
      window = new MaintenanceWindow.fromJson(_json["window"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (window != null) {
      _json["window"] = (window).toJson();
    }
    return _json;
  }
}

/// MaintenanceWindow defines the maintenance window to be used for the cluster.
class MaintenanceWindow {
  /// DailyMaintenanceWindow specifies a daily maintenance operation window.
  DailyMaintenanceWindow dailyMaintenanceWindow;

  MaintenanceWindow();

  MaintenanceWindow.fromJson(core.Map _json) {
    if (_json.containsKey("dailyMaintenanceWindow")) {
      dailyMaintenanceWindow =
          new DailyMaintenanceWindow.fromJson(_json["dailyMaintenanceWindow"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (dailyMaintenanceWindow != null) {
      _json["dailyMaintenanceWindow"] = (dailyMaintenanceWindow).toJson();
    }
    return _json;
  }
}

/// The authentication information for accessing the master endpoint.
/// Authentication can be done using HTTP basic auth or using client
/// certificates.
class MasterAuth {
  /// [Output only] Base64-encoded public certificate used by clients to
  /// authenticate to the cluster endpoint.
  core.String clientCertificate;

  /// Configuration for client certificate authentication on the cluster. For
  /// clusters before v1.12, if no configuration is specified, a client
  /// certificate is issued.
  ClientCertificateConfig clientCertificateConfig;

  /// [Output only] Base64-encoded private key used by clients to authenticate
  /// to the cluster endpoint.
  core.String clientKey;

  /// [Output only] Base64-encoded public certificate that is the root of
  /// trust for the cluster.
  core.String clusterCaCertificate;

  /// The password to use for HTTP basic authentication to the master endpoint.
  /// Because the master endpoint is open to the Internet, you should create a
  /// strong password.  If a password is provided for cluster creation, username
  /// must be non-empty.
  core.String password;

  /// The username to use for HTTP basic authentication to the master endpoint.
  /// For clusters v1.6.0 and later, basic authentication can be disabled by
  /// leaving username unspecified (or setting it to the empty string).
  core.String username;

  MasterAuth();

  MasterAuth.fromJson(core.Map _json) {
    if (_json.containsKey("clientCertificate")) {
      clientCertificate = _json["clientCertificate"];
    }
    if (_json.containsKey("clientCertificateConfig")) {
      clientCertificateConfig = new ClientCertificateConfig.fromJson(
          _json["clientCertificateConfig"]);
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

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (clientCertificate != null) {
      _json["clientCertificate"] = clientCertificate;
    }
    if (clientCertificateConfig != null) {
      _json["clientCertificateConfig"] = (clientCertificateConfig).toJson();
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

/// Configuration options for the master authorized networks feature. Enabled
/// master authorized networks will disallow all external traffic to access
/// Kubernetes master through HTTPS except traffic from the given CIDR blocks,
/// Google Compute Engine Public IPs and Google Prod IPs.
class MasterAuthorizedNetworksConfig {
  /// cidr_blocks define up to 50 external networks that could access
  /// Kubernetes master through HTTPS.
  core.List<CidrBlock> cidrBlocks;

  /// Whether or not master authorized networks is enabled.
  core.bool enabled;

  MasterAuthorizedNetworksConfig();

  MasterAuthorizedNetworksConfig.fromJson(core.Map _json) {
    if (_json.containsKey("cidrBlocks")) {
      cidrBlocks = (_json["cidrBlocks"] as core.List)
          .map<CidrBlock>((value) => new CidrBlock.fromJson(value))
          .toList();
    }
    if (_json.containsKey("enabled")) {
      enabled = _json["enabled"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (cidrBlocks != null) {
      _json["cidrBlocks"] =
          cidrBlocks.map((value) => (value).toJson()).toList();
    }
    if (enabled != null) {
      _json["enabled"] = enabled;
    }
    return _json;
  }
}

/// Constraints applied to pods.
class MaxPodsConstraint {
  /// Constraint enforced on the max num of pods per node.
  core.String maxPodsPerNode;

  MaxPodsConstraint();

  MaxPodsConstraint.fromJson(core.Map _json) {
    if (_json.containsKey("maxPodsPerNode")) {
      maxPodsPerNode = _json["maxPodsPerNode"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (maxPodsPerNode != null) {
      _json["maxPodsPerNode"] = maxPodsPerNode;
    }
    return _json;
  }
}

/// NetworkConfig reports the relative names of network & subnetwork.
class NetworkConfig {
  /// Output only. The relative name of the Google Compute Engine
  /// network(/compute/docs/networks-and-firewalls#networks) to which
  /// the cluster is connected.
  /// Example: projects/my-project/global/networks/my-network
  core.String network;

  /// Output only. The relative name of the Google Compute Engine
  /// [subnetwork](/compute/docs/vpc) to which the cluster is connected.
  /// Example: projects/my-project/regions/us-central1/subnetworks/my-subnet
  core.String subnetwork;

  NetworkConfig();

  NetworkConfig.fromJson(core.Map _json) {
    if (_json.containsKey("network")) {
      network = _json["network"];
    }
    if (_json.containsKey("subnetwork")) {
      subnetwork = _json["subnetwork"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (network != null) {
      _json["network"] = network;
    }
    if (subnetwork != null) {
      _json["subnetwork"] = subnetwork;
    }
    return _json;
  }
}

/// Configuration options for the NetworkPolicy feature.
/// https://kubernetes.io/docs/concepts/services-networking/networkpolicies/
class NetworkPolicy {
  /// Whether network policy is enabled on the cluster.
  core.bool enabled;

  /// The selected network policy provider.
  /// Possible string values are:
  /// - "PROVIDER_UNSPECIFIED" : Not set
  /// - "CALICO" : Tigera (Calico Felix).
  core.String provider;

  NetworkPolicy();

  NetworkPolicy.fromJson(core.Map _json) {
    if (_json.containsKey("enabled")) {
      enabled = _json["enabled"];
    }
    if (_json.containsKey("provider")) {
      provider = _json["provider"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (enabled != null) {
      _json["enabled"] = enabled;
    }
    if (provider != null) {
      _json["provider"] = provider;
    }
    return _json;
  }
}

/// Configuration for NetworkPolicy. This only tracks whether the addon
/// is enabled or not on the Master, it does not track whether network policy
/// is enabled for the nodes.
class NetworkPolicyConfig {
  /// Whether NetworkPolicy is enabled for this cluster.
  core.bool disabled;

  NetworkPolicyConfig();

  NetworkPolicyConfig.fromJson(core.Map _json) {
    if (_json.containsKey("disabled")) {
      disabled = _json["disabled"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (disabled != null) {
      _json["disabled"] = disabled;
    }
    return _json;
  }
}

/// Parameters that describe the nodes in a cluster.
class NodeConfig {
  /// A list of hardware accelerators to be attached to each node.
  /// See https://cloud.google.com/compute/docs/gpus for more information about
  /// support for GPUs.
  core.List<AcceleratorConfig> accelerators;

  /// Size of the disk attached to each node, specified in GB.
  /// The smallest allowed disk size is 10GB.
  ///
  /// If unspecified, the default disk size is 100GB.
  core.int diskSizeGb;

  /// Type of the disk attached to each node (e.g. 'pd-standard' or 'pd-ssd')
  ///
  /// If unspecified, the default disk type is 'pd-standard'
  core.String diskType;

  /// The image type to use for this node. Note that for a given image type,
  /// the latest version of it will be used.
  core.String imageType;

  /// The map of Kubernetes labels (key/value pairs) to be applied to each node.
  /// These will added in addition to any default label(s) that
  /// Kubernetes may apply to the node.
  /// In case of conflict in label keys, the applied set may differ depending on
  /// the Kubernetes version -- it's best to assume the behavior is undefined
  /// and conflicts should be avoided.
  /// For more information, including usage and the valid values, see:
  /// https://kubernetes.io/docs/concepts/overview/working-with-objects/labels/
  core.Map<core.String, core.String> labels;

  /// The number of local SSD disks to be attached to the node.
  ///
  /// The limit for this value is dependant upon the maximum number of
  /// disks available on a machine per zone. See:
  /// https://cloud.google.com/compute/docs/disks/local-ssd#local_ssd_limits
  /// for more information.
  core.int localSsdCount;

  /// The name of a Google Compute Engine [machine
  /// type](/compute/docs/machine-types) (e.g.
  /// `n1-standard-1`).
  ///
  /// If unspecified, the default machine type is
  /// `n1-standard-1`.
  core.String machineType;

  /// The metadata key/value pairs assigned to instances in the cluster.
  ///
  /// Keys must conform to the regexp [a-zA-Z0-9-_]+ and be less than 128 bytes
  /// in length. These are reflected as part of a URL in the metadata server.
  /// Additionally, to avoid ambiguity, keys must not conflict with any other
  /// metadata keys for the project or be one of the reserved keys:
  ///  "cluster-location"
  ///  "cluster-name"
  ///  "cluster-uid"
  ///  "configure-sh"
  ///  "containerd-configure-sh"
  ///  "enable-os-login"
  ///  "gci-update-strategy"
  ///  "gci-ensure-gke-docker"
  ///  "instance-template"
  ///  "kube-env"
  ///  "startup-script"
  ///  "user-data"
  ///  "disable-address-manager"
  ///  "windows-startup-script-ps1"
  ///  "common-psm1"
  ///  "k8s-node-setup-psm1"
  ///  "install-ssh-psm1"
  ///  "user-profile-psm1"
  ///  "serial-port-logging-enable"
  ///
  /// Values are free-form strings, and only have meaning as interpreted by
  /// the image running in the instance. The only restriction placed on them is
  /// that each value's size must be less than or equal to 32 KB.
  ///
  /// The total size of all keys and values must be less than 512 KB.
  core.Map<core.String, core.String> metadata;

  /// Minimum CPU platform to be used by this instance. The instance may be
  /// scheduled on the specified or newer CPU platform. Applicable values are
  /// the
  /// friendly names of CPU platforms, such as
  /// <code>minCpuPlatform: &quot;Intel Haswell&quot;</code> or
  /// <code>minCpuPlatform: &quot;Intel Sandy Bridge&quot;</code>. For more
  /// information, read [how to specify min CPU
  /// platform](https://cloud.google.com/compute/docs/instances/specify-min-cpu-platform)
  core.String minCpuPlatform;

  /// The set of Google API scopes to be made available on all of the
  /// node VMs under the "default" service account.
  ///
  /// The following scopes are recommended, but not required, and by default are
  /// not included:
  ///
  /// * `https://www.googleapis.com/auth/compute` is required for mounting
  /// persistent storage on your nodes.
  /// * `https://www.googleapis.com/auth/devstorage.read_only` is required for
  /// communicating with **gcr.io**
  /// (the [Google Container Registry](/container-registry/)).
  ///
  /// If unspecified, no scopes are added, unless Cloud Logging or Cloud
  /// Monitoring are enabled, in which case their required scopes will be added.
  core.List<core.String> oauthScopes;

  /// Whether the nodes are created as preemptible VM instances. See:
  /// https://cloud.google.com/compute/docs/instances/preemptible for more
  /// information about preemptible VM instances.
  core.bool preemptible;

  /// The Google Cloud Platform Service Account to be used by the node VMs. If
  /// no Service Account is specified, the "default" service account is used.
  core.String serviceAccount;

  /// The list of instance tags applied to all nodes. Tags are used to identify
  /// valid sources or targets for network firewalls and are specified by
  /// the client during cluster or node pool creation. Each tag within the list
  /// must comply with RFC1035.
  core.List<core.String> tags;

  /// List of kubernetes taints to be applied to each node.
  ///
  /// For more information, including usage and the valid values, see:
  /// https://kubernetes.io/docs/concepts/configuration/taint-and-toleration/
  core.List<NodeTaint> taints;

  NodeConfig();

  NodeConfig.fromJson(core.Map _json) {
    if (_json.containsKey("accelerators")) {
      accelerators = (_json["accelerators"] as core.List)
          .map<AcceleratorConfig>(
              (value) => new AcceleratorConfig.fromJson(value))
          .toList();
    }
    if (_json.containsKey("diskSizeGb")) {
      diskSizeGb = _json["diskSizeGb"];
    }
    if (_json.containsKey("diskType")) {
      diskType = _json["diskType"];
    }
    if (_json.containsKey("imageType")) {
      imageType = _json["imageType"];
    }
    if (_json.containsKey("labels")) {
      labels = (_json["labels"] as core.Map).cast<core.String, core.String>();
    }
    if (_json.containsKey("localSsdCount")) {
      localSsdCount = _json["localSsdCount"];
    }
    if (_json.containsKey("machineType")) {
      machineType = _json["machineType"];
    }
    if (_json.containsKey("metadata")) {
      metadata =
          (_json["metadata"] as core.Map).cast<core.String, core.String>();
    }
    if (_json.containsKey("minCpuPlatform")) {
      minCpuPlatform = _json["minCpuPlatform"];
    }
    if (_json.containsKey("oauthScopes")) {
      oauthScopes = (_json["oauthScopes"] as core.List).cast<core.String>();
    }
    if (_json.containsKey("preemptible")) {
      preemptible = _json["preemptible"];
    }
    if (_json.containsKey("serviceAccount")) {
      serviceAccount = _json["serviceAccount"];
    }
    if (_json.containsKey("tags")) {
      tags = (_json["tags"] as core.List).cast<core.String>();
    }
    if (_json.containsKey("taints")) {
      taints = (_json["taints"] as core.List)
          .map<NodeTaint>((value) => new NodeTaint.fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (accelerators != null) {
      _json["accelerators"] =
          accelerators.map((value) => (value).toJson()).toList();
    }
    if (diskSizeGb != null) {
      _json["diskSizeGb"] = diskSizeGb;
    }
    if (diskType != null) {
      _json["diskType"] = diskType;
    }
    if (imageType != null) {
      _json["imageType"] = imageType;
    }
    if (labels != null) {
      _json["labels"] = labels;
    }
    if (localSsdCount != null) {
      _json["localSsdCount"] = localSsdCount;
    }
    if (machineType != null) {
      _json["machineType"] = machineType;
    }
    if (metadata != null) {
      _json["metadata"] = metadata;
    }
    if (minCpuPlatform != null) {
      _json["minCpuPlatform"] = minCpuPlatform;
    }
    if (oauthScopes != null) {
      _json["oauthScopes"] = oauthScopes;
    }
    if (preemptible != null) {
      _json["preemptible"] = preemptible;
    }
    if (serviceAccount != null) {
      _json["serviceAccount"] = serviceAccount;
    }
    if (tags != null) {
      _json["tags"] = tags;
    }
    if (taints != null) {
      _json["taints"] = taints.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

/// NodeManagement defines the set of node management services turned on for the
/// node pool.
class NodeManagement {
  /// A flag that specifies whether the node auto-repair is enabled for the node
  /// pool. If enabled, the nodes in this node pool will be monitored and, if
  /// they fail health checks too many times, an automatic repair action will be
  /// triggered.
  core.bool autoRepair;

  /// A flag that specifies whether node auto-upgrade is enabled for the node
  /// pool. If enabled, node auto-upgrade helps keep the nodes in your node pool
  /// up to date with the latest release version of Kubernetes.
  core.bool autoUpgrade;

  /// Specifies the Auto Upgrade knobs for the node pool.
  AutoUpgradeOptions upgradeOptions;

  NodeManagement();

  NodeManagement.fromJson(core.Map _json) {
    if (_json.containsKey("autoRepair")) {
      autoRepair = _json["autoRepair"];
    }
    if (_json.containsKey("autoUpgrade")) {
      autoUpgrade = _json["autoUpgrade"];
    }
    if (_json.containsKey("upgradeOptions")) {
      upgradeOptions = new AutoUpgradeOptions.fromJson(_json["upgradeOptions"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (autoRepair != null) {
      _json["autoRepair"] = autoRepair;
    }
    if (autoUpgrade != null) {
      _json["autoUpgrade"] = autoUpgrade;
    }
    if (upgradeOptions != null) {
      _json["upgradeOptions"] = (upgradeOptions).toJson();
    }
    return _json;
  }
}

/// NodePool contains the name and configuration for a cluster's node pool.
/// Node pools are a set of nodes (i.e. VM's), with a common configuration and
/// specification, under the control of the cluster master. They may have a set
/// of Kubernetes labels applied to them, which may be used to reference them
/// during pod scheduling. They may also be resized up or down, to accommodate
/// the workload.
class NodePool {
  /// Autoscaler configuration for this NodePool. Autoscaler is enabled
  /// only if a valid configuration is present.
  NodePoolAutoscaling autoscaling;

  /// Which conditions caused the current node pool state.
  core.List<StatusCondition> conditions;

  /// The node configuration of the pool.
  NodeConfig config;

  /// The initial node count for the pool. You must ensure that your
  /// Compute Engine <a href="/compute/docs/resource-quotas">resource quota</a>
  /// is sufficient for this number of instances. You must also have available
  /// firewall and routes quota.
  core.int initialNodeCount;

  /// [Output only] The resource URLs of the [managed instance
  /// groups](/compute/docs/instance-groups/creating-groups-of-managed-instances)
  /// associated with this node pool.
  core.List<core.String> instanceGroupUrls;

  /// NodeManagement configuration for this NodePool.
  NodeManagement management;

  /// The constraint on the maximum number of pods that can be run
  /// simultaneously on a node in the node pool.
  MaxPodsConstraint maxPodsConstraint;

  /// The name of the node pool.
  core.String name;

  /// [Output only] The pod CIDR block size per node in this node pool.
  core.int podIpv4CidrSize;

  /// [Output only] Server-defined URL for the resource.
  core.String selfLink;

  /// [Output only] The status of the nodes in this pool instance.
  /// Possible string values are:
  /// - "STATUS_UNSPECIFIED" : Not set.
  /// - "PROVISIONING" : The PROVISIONING state indicates the node pool is being
  /// created.
  /// - "RUNNING" : The RUNNING state indicates the node pool has been created
  /// and is fully usable.
  /// - "RUNNING_WITH_ERROR" : The RUNNING_WITH_ERROR state indicates the node
  /// pool has been created
  /// and is partially usable. Some error state has occurred and some
  /// functionality may be impaired. Customer may need to reissue a request
  /// or trigger a new update.
  /// - "RECONCILING" : The RECONCILING state indicates that some work is
  /// actively being done on
  /// the node pool, such as upgrading node software. Details can
  /// be found in the `statusMessage` field.
  /// - "STOPPING" : The STOPPING state indicates the node pool is being
  /// deleted.
  /// - "ERROR" : The ERROR state indicates the node pool may be unusable.
  /// Details
  /// can be found in the `statusMessage` field.
  core.String status;

  /// [Output only] Additional information about the current status of this
  /// node pool instance, if available.
  core.String statusMessage;

  /// The version of the Kubernetes of this node.
  core.String version;

  NodePool();

  NodePool.fromJson(core.Map _json) {
    if (_json.containsKey("autoscaling")) {
      autoscaling = new NodePoolAutoscaling.fromJson(_json["autoscaling"]);
    }
    if (_json.containsKey("conditions")) {
      conditions = (_json["conditions"] as core.List)
          .map<StatusCondition>((value) => new StatusCondition.fromJson(value))
          .toList();
    }
    if (_json.containsKey("config")) {
      config = new NodeConfig.fromJson(_json["config"]);
    }
    if (_json.containsKey("initialNodeCount")) {
      initialNodeCount = _json["initialNodeCount"];
    }
    if (_json.containsKey("instanceGroupUrls")) {
      instanceGroupUrls =
          (_json["instanceGroupUrls"] as core.List).cast<core.String>();
    }
    if (_json.containsKey("management")) {
      management = new NodeManagement.fromJson(_json["management"]);
    }
    if (_json.containsKey("maxPodsConstraint")) {
      maxPodsConstraint =
          new MaxPodsConstraint.fromJson(_json["maxPodsConstraint"]);
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
    if (_json.containsKey("podIpv4CidrSize")) {
      podIpv4CidrSize = _json["podIpv4CidrSize"];
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
    if (_json.containsKey("version")) {
      version = _json["version"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (autoscaling != null) {
      _json["autoscaling"] = (autoscaling).toJson();
    }
    if (conditions != null) {
      _json["conditions"] =
          conditions.map((value) => (value).toJson()).toList();
    }
    if (config != null) {
      _json["config"] = (config).toJson();
    }
    if (initialNodeCount != null) {
      _json["initialNodeCount"] = initialNodeCount;
    }
    if (instanceGroupUrls != null) {
      _json["instanceGroupUrls"] = instanceGroupUrls;
    }
    if (management != null) {
      _json["management"] = (management).toJson();
    }
    if (maxPodsConstraint != null) {
      _json["maxPodsConstraint"] = (maxPodsConstraint).toJson();
    }
    if (name != null) {
      _json["name"] = name;
    }
    if (podIpv4CidrSize != null) {
      _json["podIpv4CidrSize"] = podIpv4CidrSize;
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
    if (version != null) {
      _json["version"] = version;
    }
    return _json;
  }
}

/// NodePoolAutoscaling contains information required by cluster autoscaler to
/// adjust the size of the node pool to the current cluster usage.
class NodePoolAutoscaling {
  /// Is autoscaling enabled for this node pool.
  core.bool enabled;

  /// Maximum number of nodes in the NodePool. Must be >= min_node_count. There
  /// has to enough quota to scale up the cluster.
  core.int maxNodeCount;

  /// Minimum number of nodes in the NodePool. Must be >= 1 and <=
  /// max_node_count.
  core.int minNodeCount;

  NodePoolAutoscaling();

  NodePoolAutoscaling.fromJson(core.Map _json) {
    if (_json.containsKey("enabled")) {
      enabled = _json["enabled"];
    }
    if (_json.containsKey("maxNodeCount")) {
      maxNodeCount = _json["maxNodeCount"];
    }
    if (_json.containsKey("minNodeCount")) {
      minNodeCount = _json["minNodeCount"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (enabled != null) {
      _json["enabled"] = enabled;
    }
    if (maxNodeCount != null) {
      _json["maxNodeCount"] = maxNodeCount;
    }
    if (minNodeCount != null) {
      _json["minNodeCount"] = minNodeCount;
    }
    return _json;
  }
}

/// Kubernetes taint is comprised of three fields: key, value, and effect.
/// Effect
/// can only be one of three types:  NoSchedule, PreferNoSchedule or NoExecute.
///
/// For more information, including usage and the valid values, see:
/// https://kubernetes.io/docs/concepts/configuration/taint-and-toleration/
class NodeTaint {
  /// Effect for taint.
  /// Possible string values are:
  /// - "EFFECT_UNSPECIFIED" : Not set
  /// - "NO_SCHEDULE" : NoSchedule
  /// - "PREFER_NO_SCHEDULE" : PreferNoSchedule
  /// - "NO_EXECUTE" : NoExecute
  core.String effect;

  /// Key for taint.
  core.String key;

  /// Value for taint.
  core.String value;

  NodeTaint();

  NodeTaint.fromJson(core.Map _json) {
    if (_json.containsKey("effect")) {
      effect = _json["effect"];
    }
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
    if (effect != null) {
      _json["effect"] = effect;
    }
    if (key != null) {
      _json["key"] = key;
    }
    if (value != null) {
      _json["value"] = value;
    }
    return _json;
  }
}

/// This operation resource represents operations that may have happened or are
/// happening on the cluster. All fields are output only.
class Operation {
  /// Which conditions caused the current cluster state.
  core.List<StatusCondition> clusterConditions;

  /// Detailed operation progress, if available.
  core.String detail;

  /// [Output only] The time the operation completed, in
  /// [RFC3339](https://www.ietf.org/rfc/rfc3339.txt) text format.
  core.String endTime;

  /// [Output only] The name of the Google Compute Engine
  /// [zone](/compute/docs/regions-zones/regions-zones#available) or
  /// [region](/compute/docs/regions-zones/regions-zones#available) in which
  /// the cluster resides.
  core.String location;

  /// The server-assigned ID for the operation.
  core.String name;

  /// Which conditions caused the current node pool state.
  core.List<StatusCondition> nodepoolConditions;

  /// The operation type.
  /// Possible string values are:
  /// - "TYPE_UNSPECIFIED" : Not set.
  /// - "CREATE_CLUSTER" : Cluster create.
  /// - "DELETE_CLUSTER" : Cluster delete.
  /// - "UPGRADE_MASTER" : A master upgrade.
  /// - "UPGRADE_NODES" : A node upgrade.
  /// - "REPAIR_CLUSTER" : Cluster repair.
  /// - "UPDATE_CLUSTER" : Cluster update.
  /// - "CREATE_NODE_POOL" : Node pool create.
  /// - "DELETE_NODE_POOL" : Node pool delete.
  /// - "SET_NODE_POOL_MANAGEMENT" : Set node pool management.
  /// - "AUTO_REPAIR_NODES" : Automatic node pool repair.
  /// - "AUTO_UPGRADE_NODES" : Automatic node upgrade.
  /// - "SET_LABELS" : Set labels.
  /// - "SET_MASTER_AUTH" : Set/generate master auth materials
  /// - "SET_NODE_POOL_SIZE" : Set node pool size.
  /// - "SET_NETWORK_POLICY" : Updates network policy for a cluster.
  /// - "SET_MAINTENANCE_POLICY" : Set the maintenance policy.
  core.String operationType;

  /// Server-defined URL for the resource.
  core.String selfLink;

  /// [Output only] The time the operation started, in
  /// [RFC3339](https://www.ietf.org/rfc/rfc3339.txt) text format.
  core.String startTime;

  /// The current status of the operation.
  /// Possible string values are:
  /// - "STATUS_UNSPECIFIED" : Not set.
  /// - "PENDING" : The operation has been created.
  /// - "RUNNING" : The operation is currently running.
  /// - "DONE" : The operation is done, either cancelled or completed.
  /// - "ABORTING" : The operation is aborting.
  core.String status;

  /// If an error has occurred, a textual description of the error.
  core.String statusMessage;

  /// Server-defined URL for the target of the operation.
  core.String targetLink;

  /// The name of the Google Compute Engine
  /// [zone](/compute/docs/zones#available) in which the operation
  /// is taking place.
  /// This field is deprecated, use location instead.
  core.String zone;

  Operation();

  Operation.fromJson(core.Map _json) {
    if (_json.containsKey("clusterConditions")) {
      clusterConditions = (_json["clusterConditions"] as core.List)
          .map<StatusCondition>((value) => new StatusCondition.fromJson(value))
          .toList();
    }
    if (_json.containsKey("detail")) {
      detail = _json["detail"];
    }
    if (_json.containsKey("endTime")) {
      endTime = _json["endTime"];
    }
    if (_json.containsKey("location")) {
      location = _json["location"];
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
    if (_json.containsKey("nodepoolConditions")) {
      nodepoolConditions = (_json["nodepoolConditions"] as core.List)
          .map<StatusCondition>((value) => new StatusCondition.fromJson(value))
          .toList();
    }
    if (_json.containsKey("operationType")) {
      operationType = _json["operationType"];
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
    if (_json.containsKey("targetLink")) {
      targetLink = _json["targetLink"];
    }
    if (_json.containsKey("zone")) {
      zone = _json["zone"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (clusterConditions != null) {
      _json["clusterConditions"] =
          clusterConditions.map((value) => (value).toJson()).toList();
    }
    if (detail != null) {
      _json["detail"] = detail;
    }
    if (endTime != null) {
      _json["endTime"] = endTime;
    }
    if (location != null) {
      _json["location"] = location;
    }
    if (name != null) {
      _json["name"] = name;
    }
    if (nodepoolConditions != null) {
      _json["nodepoolConditions"] =
          nodepoolConditions.map((value) => (value).toJson()).toList();
    }
    if (operationType != null) {
      _json["operationType"] = operationType;
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
    if (targetLink != null) {
      _json["targetLink"] = targetLink;
    }
    if (zone != null) {
      _json["zone"] = zone;
    }
    return _json;
  }
}

/// Configuration options for private clusters.
class PrivateClusterConfig {
  /// Whether the master's internal IP address is used as the cluster endpoint.
  core.bool enablePrivateEndpoint;

  /// Whether nodes have internal IP addresses only. If enabled, all nodes are
  /// given only RFC 1918 private addresses and communicate with the master via
  /// private networking.
  core.bool enablePrivateNodes;

  /// The IP range in CIDR notation to use for the hosted master network. This
  /// range will be used for assigning internal IP addresses to the master or
  /// set of masters, as well as the ILB VIP. This range must not overlap with
  /// any other ranges in use within the cluster's network.
  core.String masterIpv4CidrBlock;

  /// Output only. The internal IP address of this cluster's master endpoint.
  core.String privateEndpoint;

  /// Output only. The external IP address of this cluster's master endpoint.
  core.String publicEndpoint;

  PrivateClusterConfig();

  PrivateClusterConfig.fromJson(core.Map _json) {
    if (_json.containsKey("enablePrivateEndpoint")) {
      enablePrivateEndpoint = _json["enablePrivateEndpoint"];
    }
    if (_json.containsKey("enablePrivateNodes")) {
      enablePrivateNodes = _json["enablePrivateNodes"];
    }
    if (_json.containsKey("masterIpv4CidrBlock")) {
      masterIpv4CidrBlock = _json["masterIpv4CidrBlock"];
    }
    if (_json.containsKey("privateEndpoint")) {
      privateEndpoint = _json["privateEndpoint"];
    }
    if (_json.containsKey("publicEndpoint")) {
      publicEndpoint = _json["publicEndpoint"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (enablePrivateEndpoint != null) {
      _json["enablePrivateEndpoint"] = enablePrivateEndpoint;
    }
    if (enablePrivateNodes != null) {
      _json["enablePrivateNodes"] = enablePrivateNodes;
    }
    if (masterIpv4CidrBlock != null) {
      _json["masterIpv4CidrBlock"] = masterIpv4CidrBlock;
    }
    if (privateEndpoint != null) {
      _json["privateEndpoint"] = privateEndpoint;
    }
    if (publicEndpoint != null) {
      _json["publicEndpoint"] = publicEndpoint;
    }
    return _json;
  }
}

/// Configuration for exporting cluster resource usages.
class ResourceUsageExportConfig {
  /// Configuration to use BigQuery as usage export destination.
  BigQueryDestination bigqueryDestination;

  /// Configuration to enable resource consumption metering.
  ConsumptionMeteringConfig consumptionMeteringConfig;

  /// Whether to enable network egress metering for this cluster. If enabled, a
  /// daemonset will be created in the cluster to meter network egress traffic.
  core.bool enableNetworkEgressMetering;

  ResourceUsageExportConfig();

  ResourceUsageExportConfig.fromJson(core.Map _json) {
    if (_json.containsKey("bigqueryDestination")) {
      bigqueryDestination =
          new BigQueryDestination.fromJson(_json["bigqueryDestination"]);
    }
    if (_json.containsKey("consumptionMeteringConfig")) {
      consumptionMeteringConfig = new ConsumptionMeteringConfig.fromJson(
          _json["consumptionMeteringConfig"]);
    }
    if (_json.containsKey("enableNetworkEgressMetering")) {
      enableNetworkEgressMetering = _json["enableNetworkEgressMetering"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (bigqueryDestination != null) {
      _json["bigqueryDestination"] = (bigqueryDestination).toJson();
    }
    if (consumptionMeteringConfig != null) {
      _json["consumptionMeteringConfig"] = (consumptionMeteringConfig).toJson();
    }
    if (enableNetworkEgressMetering != null) {
      _json["enableNetworkEgressMetering"] = enableNetworkEgressMetering;
    }
    return _json;
  }
}

/// RollbackNodePoolUpgradeRequest rollbacks the previously Aborted or Failed
/// NodePool upgrade. This will be an no-op if the last upgrade successfully
/// completed.
class RollbackNodePoolUpgradeRequest {
  /// Deprecated. The name of the cluster to rollback.
  /// This field has been deprecated and replaced by the name field.
  core.String clusterId;

  /// The name (project, location, cluster, node pool id) of the node poll to
  /// rollback upgrade.
  /// Specified in the format 'projects / * /locations / * /clusters / *
  /// /nodePools / * '.
  core.String name;

  /// Deprecated. The name of the node pool to rollback.
  /// This field has been deprecated and replaced by the name field.
  core.String nodePoolId;

  /// Deprecated. The Google Developers Console [project ID or project
  /// number](https://support.google.com/cloud/answer/6158840).
  /// This field has been deprecated and replaced by the name field.
  core.String projectId;

  /// Deprecated. The name of the Google Compute Engine
  /// [zone](/compute/docs/zones#available) in which the cluster
  /// resides.
  /// This field has been deprecated and replaced by the name field.
  core.String zone;

  RollbackNodePoolUpgradeRequest();

  RollbackNodePoolUpgradeRequest.fromJson(core.Map _json) {
    if (_json.containsKey("clusterId")) {
      clusterId = _json["clusterId"];
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
    if (_json.containsKey("nodePoolId")) {
      nodePoolId = _json["nodePoolId"];
    }
    if (_json.containsKey("projectId")) {
      projectId = _json["projectId"];
    }
    if (_json.containsKey("zone")) {
      zone = _json["zone"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (clusterId != null) {
      _json["clusterId"] = clusterId;
    }
    if (name != null) {
      _json["name"] = name;
    }
    if (nodePoolId != null) {
      _json["nodePoolId"] = nodePoolId;
    }
    if (projectId != null) {
      _json["projectId"] = projectId;
    }
    if (zone != null) {
      _json["zone"] = zone;
    }
    return _json;
  }
}

/// Kubernetes Engine service configuration.
class ServerConfig {
  /// Version of Kubernetes the service deploys by default.
  core.String defaultClusterVersion;

  /// Default image type.
  core.String defaultImageType;

  /// List of valid image types.
  core.List<core.String> validImageTypes;

  /// List of valid master versions.
  core.List<core.String> validMasterVersions;

  /// List of valid node upgrade target versions.
  core.List<core.String> validNodeVersions;

  ServerConfig();

  ServerConfig.fromJson(core.Map _json) {
    if (_json.containsKey("defaultClusterVersion")) {
      defaultClusterVersion = _json["defaultClusterVersion"];
    }
    if (_json.containsKey("defaultImageType")) {
      defaultImageType = _json["defaultImageType"];
    }
    if (_json.containsKey("validImageTypes")) {
      validImageTypes =
          (_json["validImageTypes"] as core.List).cast<core.String>();
    }
    if (_json.containsKey("validMasterVersions")) {
      validMasterVersions =
          (_json["validMasterVersions"] as core.List).cast<core.String>();
    }
    if (_json.containsKey("validNodeVersions")) {
      validNodeVersions =
          (_json["validNodeVersions"] as core.List).cast<core.String>();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (defaultClusterVersion != null) {
      _json["defaultClusterVersion"] = defaultClusterVersion;
    }
    if (defaultImageType != null) {
      _json["defaultImageType"] = defaultImageType;
    }
    if (validImageTypes != null) {
      _json["validImageTypes"] = validImageTypes;
    }
    if (validMasterVersions != null) {
      _json["validMasterVersions"] = validMasterVersions;
    }
    if (validNodeVersions != null) {
      _json["validNodeVersions"] = validNodeVersions;
    }
    return _json;
  }
}

/// SetAddonsConfigRequest sets the addons associated with the cluster.
class SetAddonsConfigRequest {
  /// The desired configurations for the various addons available to run in the
  /// cluster.
  AddonsConfig addonsConfig;

  /// Deprecated. The name of the cluster to upgrade.
  /// This field has been deprecated and replaced by the name field.
  core.String clusterId;

  /// The name (project, location, cluster) of the cluster to set addons.
  /// Specified in the format 'projects / * /locations / * /clusters / * '.
  core.String name;

  /// Deprecated. The Google Developers Console [project ID or project
  /// number](https://support.google.com/cloud/answer/6158840).
  /// This field has been deprecated and replaced by the name field.
  core.String projectId;

  /// Deprecated. The name of the Google Compute Engine
  /// [zone](/compute/docs/zones#available) in which the cluster
  /// resides.
  /// This field has been deprecated and replaced by the name field.
  core.String zone;

  SetAddonsConfigRequest();

  SetAddonsConfigRequest.fromJson(core.Map _json) {
    if (_json.containsKey("addonsConfig")) {
      addonsConfig = new AddonsConfig.fromJson(_json["addonsConfig"]);
    }
    if (_json.containsKey("clusterId")) {
      clusterId = _json["clusterId"];
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
    if (_json.containsKey("projectId")) {
      projectId = _json["projectId"];
    }
    if (_json.containsKey("zone")) {
      zone = _json["zone"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (addonsConfig != null) {
      _json["addonsConfig"] = (addonsConfig).toJson();
    }
    if (clusterId != null) {
      _json["clusterId"] = clusterId;
    }
    if (name != null) {
      _json["name"] = name;
    }
    if (projectId != null) {
      _json["projectId"] = projectId;
    }
    if (zone != null) {
      _json["zone"] = zone;
    }
    return _json;
  }
}

/// SetLabelsRequest sets the Google Cloud Platform labels on a Google Container
/// Engine cluster, which will in turn set them for Google Compute Engine
/// resources used by that cluster
class SetLabelsRequest {
  /// Deprecated. The name of the cluster.
  /// This field has been deprecated and replaced by the name field.
  core.String clusterId;

  /// The fingerprint of the previous set of labels for this resource,
  /// used to detect conflicts. The fingerprint is initially generated by
  /// Kubernetes Engine and changes after every request to modify or update
  /// labels. You must always provide an up-to-date fingerprint hash when
  /// updating or changing labels. Make a <code>get()</code> request to the
  /// resource to get the latest fingerprint.
  core.String labelFingerprint;

  /// The name (project, location, cluster id) of the cluster to set labels.
  /// Specified in the format 'projects / * /locations / * /clusters / * '.
  core.String name;

  /// Deprecated. The Google Developers Console [project ID or project
  /// number](https://developers.google.com/console/help/new/#projectnumber).
  /// This field has been deprecated and replaced by the name field.
  core.String projectId;

  /// The labels to set for that cluster.
  core.Map<core.String, core.String> resourceLabels;

  /// Deprecated. The name of the Google Compute Engine
  /// [zone](/compute/docs/zones#available) in which the cluster
  /// resides.
  /// This field has been deprecated and replaced by the name field.
  core.String zone;

  SetLabelsRequest();

  SetLabelsRequest.fromJson(core.Map _json) {
    if (_json.containsKey("clusterId")) {
      clusterId = _json["clusterId"];
    }
    if (_json.containsKey("labelFingerprint")) {
      labelFingerprint = _json["labelFingerprint"];
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
    if (_json.containsKey("projectId")) {
      projectId = _json["projectId"];
    }
    if (_json.containsKey("resourceLabels")) {
      resourceLabels = (_json["resourceLabels"] as core.Map)
          .cast<core.String, core.String>();
    }
    if (_json.containsKey("zone")) {
      zone = _json["zone"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (clusterId != null) {
      _json["clusterId"] = clusterId;
    }
    if (labelFingerprint != null) {
      _json["labelFingerprint"] = labelFingerprint;
    }
    if (name != null) {
      _json["name"] = name;
    }
    if (projectId != null) {
      _json["projectId"] = projectId;
    }
    if (resourceLabels != null) {
      _json["resourceLabels"] = resourceLabels;
    }
    if (zone != null) {
      _json["zone"] = zone;
    }
    return _json;
  }
}

/// SetLegacyAbacRequest enables or disables the ABAC authorization mechanism
/// for
/// a cluster.
class SetLegacyAbacRequest {
  /// Deprecated. The name of the cluster to update.
  /// This field has been deprecated and replaced by the name field.
  core.String clusterId;

  /// Whether ABAC authorization will be enabled in the cluster.
  core.bool enabled;

  /// The name (project, location, cluster id) of the cluster to set legacy
  /// abac.
  /// Specified in the format 'projects / * /locations / * /clusters / * '.
  core.String name;

  /// Deprecated. The Google Developers Console [project ID or project
  /// number](https://support.google.com/cloud/answer/6158840).
  /// This field has been deprecated and replaced by the name field.
  core.String projectId;

  /// Deprecated. The name of the Google Compute Engine
  /// [zone](/compute/docs/zones#available) in which the cluster
  /// resides.
  /// This field has been deprecated and replaced by the name field.
  core.String zone;

  SetLegacyAbacRequest();

  SetLegacyAbacRequest.fromJson(core.Map _json) {
    if (_json.containsKey("clusterId")) {
      clusterId = _json["clusterId"];
    }
    if (_json.containsKey("enabled")) {
      enabled = _json["enabled"];
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
    if (_json.containsKey("projectId")) {
      projectId = _json["projectId"];
    }
    if (_json.containsKey("zone")) {
      zone = _json["zone"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (clusterId != null) {
      _json["clusterId"] = clusterId;
    }
    if (enabled != null) {
      _json["enabled"] = enabled;
    }
    if (name != null) {
      _json["name"] = name;
    }
    if (projectId != null) {
      _json["projectId"] = projectId;
    }
    if (zone != null) {
      _json["zone"] = zone;
    }
    return _json;
  }
}

/// SetLocationsRequest sets the locations of the cluster.
class SetLocationsRequest {
  /// Deprecated. The name of the cluster to upgrade.
  /// This field has been deprecated and replaced by the name field.
  core.String clusterId;

  /// The desired list of Google Compute Engine
  /// [zones](/compute/docs/zones#available) in which the cluster's nodes
  /// should be located. Changing the locations a cluster is in will result
  /// in nodes being either created or removed from the cluster, depending on
  /// whether locations are being added or removed.
  ///
  /// This list must always include the cluster's primary zone.
  core.List<core.String> locations;

  /// The name (project, location, cluster) of the cluster to set locations.
  /// Specified in the format 'projects / * /locations / * /clusters / * '.
  core.String name;

  /// Deprecated. The Google Developers Console [project ID or project
  /// number](https://support.google.com/cloud/answer/6158840).
  /// This field has been deprecated and replaced by the name field.
  core.String projectId;

  /// Deprecated. The name of the Google Compute Engine
  /// [zone](/compute/docs/zones#available) in which the cluster
  /// resides.
  /// This field has been deprecated and replaced by the name field.
  core.String zone;

  SetLocationsRequest();

  SetLocationsRequest.fromJson(core.Map _json) {
    if (_json.containsKey("clusterId")) {
      clusterId = _json["clusterId"];
    }
    if (_json.containsKey("locations")) {
      locations = (_json["locations"] as core.List).cast<core.String>();
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
    if (_json.containsKey("projectId")) {
      projectId = _json["projectId"];
    }
    if (_json.containsKey("zone")) {
      zone = _json["zone"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (clusterId != null) {
      _json["clusterId"] = clusterId;
    }
    if (locations != null) {
      _json["locations"] = locations;
    }
    if (name != null) {
      _json["name"] = name;
    }
    if (projectId != null) {
      _json["projectId"] = projectId;
    }
    if (zone != null) {
      _json["zone"] = zone;
    }
    return _json;
  }
}

/// SetLoggingServiceRequest sets the logging service of a cluster.
class SetLoggingServiceRequest {
  /// Deprecated. The name of the cluster to upgrade.
  /// This field has been deprecated and replaced by the name field.
  core.String clusterId;

  /// The logging service the cluster should use to write metrics.
  /// Currently available options:
  ///
  /// * "logging.googleapis.com" - the Google Cloud Logging service
  /// * "none" - no metrics will be exported from the cluster
  core.String loggingService;

  /// The name (project, location, cluster) of the cluster to set logging.
  /// Specified in the format 'projects / * /locations / * /clusters / * '.
  core.String name;

  /// Deprecated. The Google Developers Console [project ID or project
  /// number](https://support.google.com/cloud/answer/6158840).
  /// This field has been deprecated and replaced by the name field.
  core.String projectId;

  /// Deprecated. The name of the Google Compute Engine
  /// [zone](/compute/docs/zones#available) in which the cluster
  /// resides.
  /// This field has been deprecated and replaced by the name field.
  core.String zone;

  SetLoggingServiceRequest();

  SetLoggingServiceRequest.fromJson(core.Map _json) {
    if (_json.containsKey("clusterId")) {
      clusterId = _json["clusterId"];
    }
    if (_json.containsKey("loggingService")) {
      loggingService = _json["loggingService"];
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
    if (_json.containsKey("projectId")) {
      projectId = _json["projectId"];
    }
    if (_json.containsKey("zone")) {
      zone = _json["zone"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (clusterId != null) {
      _json["clusterId"] = clusterId;
    }
    if (loggingService != null) {
      _json["loggingService"] = loggingService;
    }
    if (name != null) {
      _json["name"] = name;
    }
    if (projectId != null) {
      _json["projectId"] = projectId;
    }
    if (zone != null) {
      _json["zone"] = zone;
    }
    return _json;
  }
}

/// SetMaintenancePolicyRequest sets the maintenance policy for a cluster.
class SetMaintenancePolicyRequest {
  /// The name of the cluster to update.
  core.String clusterId;

  /// The maintenance policy to be set for the cluster. An empty field
  /// clears the existing maintenance policy.
  MaintenancePolicy maintenancePolicy;

  /// The name (project, location, cluster id) of the cluster to set maintenance
  /// policy.
  /// Specified in the format 'projects / * /locations / * /clusters / * '.
  core.String name;

  /// The Google Developers Console [project ID or project
  /// number](https://support.google.com/cloud/answer/6158840).
  core.String projectId;

  /// The name of the Google Compute Engine
  /// [zone](/compute/docs/zones#available) in which the cluster
  /// resides.
  core.String zone;

  SetMaintenancePolicyRequest();

  SetMaintenancePolicyRequest.fromJson(core.Map _json) {
    if (_json.containsKey("clusterId")) {
      clusterId = _json["clusterId"];
    }
    if (_json.containsKey("maintenancePolicy")) {
      maintenancePolicy =
          new MaintenancePolicy.fromJson(_json["maintenancePolicy"]);
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
    if (_json.containsKey("projectId")) {
      projectId = _json["projectId"];
    }
    if (_json.containsKey("zone")) {
      zone = _json["zone"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (clusterId != null) {
      _json["clusterId"] = clusterId;
    }
    if (maintenancePolicy != null) {
      _json["maintenancePolicy"] = (maintenancePolicy).toJson();
    }
    if (name != null) {
      _json["name"] = name;
    }
    if (projectId != null) {
      _json["projectId"] = projectId;
    }
    if (zone != null) {
      _json["zone"] = zone;
    }
    return _json;
  }
}

/// SetMasterAuthRequest updates the admin password of a cluster.
class SetMasterAuthRequest {
  /// The exact form of action to be taken on the master auth.
  /// Possible string values are:
  /// - "UNKNOWN" : Operation is unknown and will error out.
  /// - "SET_PASSWORD" : Set the password to a user generated value.
  /// - "GENERATE_PASSWORD" : Generate a new password and set it to that.
  /// - "SET_USERNAME" : Set the username.  If an empty username is provided,
  /// basic authentication
  /// is disabled for the cluster.  If a non-empty username is provided, basic
  /// authentication is enabled, with either a provided password or a generated
  /// one.
  core.String action;

  /// Deprecated. The name of the cluster to upgrade.
  /// This field has been deprecated and replaced by the name field.
  core.String clusterId;

  /// The name (project, location, cluster) of the cluster to set auth.
  /// Specified in the format 'projects / * /locations / * /clusters / * '.
  core.String name;

  /// Deprecated. The Google Developers Console [project ID or project
  /// number](https://support.google.com/cloud/answer/6158840).
  /// This field has been deprecated and replaced by the name field.
  core.String projectId;

  /// A description of the update.
  MasterAuth update;

  /// Deprecated. The name of the Google Compute Engine
  /// [zone](/compute/docs/zones#available) in which the cluster
  /// resides.
  /// This field has been deprecated and replaced by the name field.
  core.String zone;

  SetMasterAuthRequest();

  SetMasterAuthRequest.fromJson(core.Map _json) {
    if (_json.containsKey("action")) {
      action = _json["action"];
    }
    if (_json.containsKey("clusterId")) {
      clusterId = _json["clusterId"];
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
    if (_json.containsKey("projectId")) {
      projectId = _json["projectId"];
    }
    if (_json.containsKey("update")) {
      update = new MasterAuth.fromJson(_json["update"]);
    }
    if (_json.containsKey("zone")) {
      zone = _json["zone"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (action != null) {
      _json["action"] = action;
    }
    if (clusterId != null) {
      _json["clusterId"] = clusterId;
    }
    if (name != null) {
      _json["name"] = name;
    }
    if (projectId != null) {
      _json["projectId"] = projectId;
    }
    if (update != null) {
      _json["update"] = (update).toJson();
    }
    if (zone != null) {
      _json["zone"] = zone;
    }
    return _json;
  }
}

/// SetMonitoringServiceRequest sets the monitoring service of a cluster.
class SetMonitoringServiceRequest {
  /// Deprecated. The name of the cluster to upgrade.
  /// This field has been deprecated and replaced by the name field.
  core.String clusterId;

  /// The monitoring service the cluster should use to write metrics.
  /// Currently available options:
  ///
  /// * "monitoring.googleapis.com/kubernetes" - the Google Cloud Monitoring
  /// service with Kubernetes-native resource model in Stackdriver
  /// * "monitoring.googleapis.com" - the Google Cloud Monitoring service
  /// * "none" - no metrics will be exported from the cluster
  core.String monitoringService;

  /// The name (project, location, cluster) of the cluster to set monitoring.
  /// Specified in the format 'projects / * /locations / * /clusters / * '.
  core.String name;

  /// Deprecated. The Google Developers Console [project ID or project
  /// number](https://support.google.com/cloud/answer/6158840).
  /// This field has been deprecated and replaced by the name field.
  core.String projectId;

  /// Deprecated. The name of the Google Compute Engine
  /// [zone](/compute/docs/zones#available) in which the cluster
  /// resides.
  /// This field has been deprecated and replaced by the name field.
  core.String zone;

  SetMonitoringServiceRequest();

  SetMonitoringServiceRequest.fromJson(core.Map _json) {
    if (_json.containsKey("clusterId")) {
      clusterId = _json["clusterId"];
    }
    if (_json.containsKey("monitoringService")) {
      monitoringService = _json["monitoringService"];
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
    if (_json.containsKey("projectId")) {
      projectId = _json["projectId"];
    }
    if (_json.containsKey("zone")) {
      zone = _json["zone"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (clusterId != null) {
      _json["clusterId"] = clusterId;
    }
    if (monitoringService != null) {
      _json["monitoringService"] = monitoringService;
    }
    if (name != null) {
      _json["name"] = name;
    }
    if (projectId != null) {
      _json["projectId"] = projectId;
    }
    if (zone != null) {
      _json["zone"] = zone;
    }
    return _json;
  }
}

/// SetNetworkPolicyRequest enables/disables network policy for a cluster.
class SetNetworkPolicyRequest {
  /// Deprecated. The name of the cluster.
  /// This field has been deprecated and replaced by the name field.
  core.String clusterId;

  /// The name (project, location, cluster id) of the cluster to set networking
  /// policy. Specified in the format 'projects / * /locations / * /clusters / *
  /// '.
  core.String name;

  /// Configuration options for the NetworkPolicy feature.
  NetworkPolicy networkPolicy;

  /// Deprecated. The Google Developers Console [project ID or project
  /// number](https://developers.google.com/console/help/new/#projectnumber).
  /// This field has been deprecated and replaced by the name field.
  core.String projectId;

  /// Deprecated. The name of the Google Compute Engine
  /// [zone](/compute/docs/zones#available) in which the cluster
  /// resides.
  /// This field has been deprecated and replaced by the name field.
  core.String zone;

  SetNetworkPolicyRequest();

  SetNetworkPolicyRequest.fromJson(core.Map _json) {
    if (_json.containsKey("clusterId")) {
      clusterId = _json["clusterId"];
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
    if (_json.containsKey("networkPolicy")) {
      networkPolicy = new NetworkPolicy.fromJson(_json["networkPolicy"]);
    }
    if (_json.containsKey("projectId")) {
      projectId = _json["projectId"];
    }
    if (_json.containsKey("zone")) {
      zone = _json["zone"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (clusterId != null) {
      _json["clusterId"] = clusterId;
    }
    if (name != null) {
      _json["name"] = name;
    }
    if (networkPolicy != null) {
      _json["networkPolicy"] = (networkPolicy).toJson();
    }
    if (projectId != null) {
      _json["projectId"] = projectId;
    }
    if (zone != null) {
      _json["zone"] = zone;
    }
    return _json;
  }
}

/// SetNodePoolAutoscalingRequest sets the autoscaler settings of a node pool.
class SetNodePoolAutoscalingRequest {
  /// Autoscaling configuration for the node pool.
  NodePoolAutoscaling autoscaling;

  /// Deprecated. The name of the cluster to upgrade.
  /// This field has been deprecated and replaced by the name field.
  core.String clusterId;

  /// The name (project, location, cluster, node pool) of the node pool to set
  /// autoscaler settings. Specified in the format
  /// 'projects / * /locations / * /clusters / * /nodePools / * '.
  core.String name;

  /// Deprecated. The name of the node pool to upgrade.
  /// This field has been deprecated and replaced by the name field.
  core.String nodePoolId;

  /// Deprecated. The Google Developers Console [project ID or project
  /// number](https://support.google.com/cloud/answer/6158840).
  /// This field has been deprecated and replaced by the name field.
  core.String projectId;

  /// Deprecated. The name of the Google Compute Engine
  /// [zone](/compute/docs/zones#available) in which the cluster
  /// resides.
  /// This field has been deprecated and replaced by the name field.
  core.String zone;

  SetNodePoolAutoscalingRequest();

  SetNodePoolAutoscalingRequest.fromJson(core.Map _json) {
    if (_json.containsKey("autoscaling")) {
      autoscaling = new NodePoolAutoscaling.fromJson(_json["autoscaling"]);
    }
    if (_json.containsKey("clusterId")) {
      clusterId = _json["clusterId"];
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
    if (_json.containsKey("nodePoolId")) {
      nodePoolId = _json["nodePoolId"];
    }
    if (_json.containsKey("projectId")) {
      projectId = _json["projectId"];
    }
    if (_json.containsKey("zone")) {
      zone = _json["zone"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (autoscaling != null) {
      _json["autoscaling"] = (autoscaling).toJson();
    }
    if (clusterId != null) {
      _json["clusterId"] = clusterId;
    }
    if (name != null) {
      _json["name"] = name;
    }
    if (nodePoolId != null) {
      _json["nodePoolId"] = nodePoolId;
    }
    if (projectId != null) {
      _json["projectId"] = projectId;
    }
    if (zone != null) {
      _json["zone"] = zone;
    }
    return _json;
  }
}

/// SetNodePoolManagementRequest sets the node management properties of a node
/// pool.
class SetNodePoolManagementRequest {
  /// Deprecated. The name of the cluster to update.
  /// This field has been deprecated and replaced by the name field.
  core.String clusterId;

  /// NodeManagement configuration for the node pool.
  NodeManagement management;

  /// The name (project, location, cluster, node pool id) of the node pool to
  /// set
  /// management properties. Specified in the format
  /// 'projects / * /locations / * /clusters / * /nodePools / * '.
  core.String name;

  /// Deprecated. The name of the node pool to update.
  /// This field has been deprecated and replaced by the name field.
  core.String nodePoolId;

  /// Deprecated. The Google Developers Console [project ID or project
  /// number](https://support.google.com/cloud/answer/6158840).
  /// This field has been deprecated and replaced by the name field.
  core.String projectId;

  /// Deprecated. The name of the Google Compute Engine
  /// [zone](/compute/docs/zones#available) in which the cluster
  /// resides.
  /// This field has been deprecated and replaced by the name field.
  core.String zone;

  SetNodePoolManagementRequest();

  SetNodePoolManagementRequest.fromJson(core.Map _json) {
    if (_json.containsKey("clusterId")) {
      clusterId = _json["clusterId"];
    }
    if (_json.containsKey("management")) {
      management = new NodeManagement.fromJson(_json["management"]);
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
    if (_json.containsKey("nodePoolId")) {
      nodePoolId = _json["nodePoolId"];
    }
    if (_json.containsKey("projectId")) {
      projectId = _json["projectId"];
    }
    if (_json.containsKey("zone")) {
      zone = _json["zone"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (clusterId != null) {
      _json["clusterId"] = clusterId;
    }
    if (management != null) {
      _json["management"] = (management).toJson();
    }
    if (name != null) {
      _json["name"] = name;
    }
    if (nodePoolId != null) {
      _json["nodePoolId"] = nodePoolId;
    }
    if (projectId != null) {
      _json["projectId"] = projectId;
    }
    if (zone != null) {
      _json["zone"] = zone;
    }
    return _json;
  }
}

/// SetNodePoolSizeRequest sets the size a node
/// pool.
class SetNodePoolSizeRequest {
  /// Deprecated. The name of the cluster to update.
  /// This field has been deprecated and replaced by the name field.
  core.String clusterId;

  /// The name (project, location, cluster, node pool id) of the node pool to
  /// set
  /// size.
  /// Specified in the format 'projects / * /locations / * /clusters / *
  /// /nodePools / * '.
  core.String name;

  /// The desired node count for the pool.
  core.int nodeCount;

  /// Deprecated. The name of the node pool to update.
  /// This field has been deprecated and replaced by the name field.
  core.String nodePoolId;

  /// Deprecated. The Google Developers Console [project ID or project
  /// number](https://support.google.com/cloud/answer/6158840).
  /// This field has been deprecated and replaced by the name field.
  core.String projectId;

  /// Deprecated. The name of the Google Compute Engine
  /// [zone](/compute/docs/zones#available) in which the cluster
  /// resides.
  /// This field has been deprecated and replaced by the name field.
  core.String zone;

  SetNodePoolSizeRequest();

  SetNodePoolSizeRequest.fromJson(core.Map _json) {
    if (_json.containsKey("clusterId")) {
      clusterId = _json["clusterId"];
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
    if (_json.containsKey("nodeCount")) {
      nodeCount = _json["nodeCount"];
    }
    if (_json.containsKey("nodePoolId")) {
      nodePoolId = _json["nodePoolId"];
    }
    if (_json.containsKey("projectId")) {
      projectId = _json["projectId"];
    }
    if (_json.containsKey("zone")) {
      zone = _json["zone"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (clusterId != null) {
      _json["clusterId"] = clusterId;
    }
    if (name != null) {
      _json["name"] = name;
    }
    if (nodeCount != null) {
      _json["nodeCount"] = nodeCount;
    }
    if (nodePoolId != null) {
      _json["nodePoolId"] = nodePoolId;
    }
    if (projectId != null) {
      _json["projectId"] = projectId;
    }
    if (zone != null) {
      _json["zone"] = zone;
    }
    return _json;
  }
}

/// StartIPRotationRequest creates a new IP for the cluster and then performs
/// a node upgrade on each node pool to point to the new IP.
class StartIPRotationRequest {
  /// Deprecated. The name of the cluster.
  /// This field has been deprecated and replaced by the name field.
  core.String clusterId;

  /// The name (project, location, cluster id) of the cluster to start IP
  /// rotation. Specified in the format 'projects / * /locations / * /clusters /
  /// * '.
  core.String name;

  /// Deprecated. The Google Developers Console [project ID or project
  /// number](https://developers.google.com/console/help/new/#projectnumber).
  /// This field has been deprecated and replaced by the name field.
  core.String projectId;

  /// Whether to rotate credentials during IP rotation.
  core.bool rotateCredentials;

  /// Deprecated. The name of the Google Compute Engine
  /// [zone](/compute/docs/zones#available) in which the cluster
  /// resides.
  /// This field has been deprecated and replaced by the name field.
  core.String zone;

  StartIPRotationRequest();

  StartIPRotationRequest.fromJson(core.Map _json) {
    if (_json.containsKey("clusterId")) {
      clusterId = _json["clusterId"];
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
    if (_json.containsKey("projectId")) {
      projectId = _json["projectId"];
    }
    if (_json.containsKey("rotateCredentials")) {
      rotateCredentials = _json["rotateCredentials"];
    }
    if (_json.containsKey("zone")) {
      zone = _json["zone"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (clusterId != null) {
      _json["clusterId"] = clusterId;
    }
    if (name != null) {
      _json["name"] = name;
    }
    if (projectId != null) {
      _json["projectId"] = projectId;
    }
    if (rotateCredentials != null) {
      _json["rotateCredentials"] = rotateCredentials;
    }
    if (zone != null) {
      _json["zone"] = zone;
    }
    return _json;
  }
}

/// StatusCondition describes why a cluster or a node pool has a certain status
/// (e.g., ERROR or DEGRADED).
class StatusCondition {
  /// Machine-friendly representation of the condition
  /// Possible string values are:
  /// - "UNKNOWN" : UNKNOWN indicates a generic condition.
  /// - "GCE_STOCKOUT" : GCE_STOCKOUT indicates a Google Compute Engine
  /// stockout.
  /// - "GKE_SERVICE_ACCOUNT_DELETED" : GKE_SERVICE_ACCOUNT_DELETED indicates
  /// that the user deleted their robot
  /// service account.
  /// - "GCE_QUOTA_EXCEEDED" : Google Compute Engine quota was exceeded.
  /// - "SET_BY_OPERATOR" : Cluster state was manually changed by an SRE due to
  /// a system logic error.
  /// More codes TBA
  core.String code;

  /// Human-friendly representation of the condition
  core.String message;

  StatusCondition();

  StatusCondition.fromJson(core.Map _json) {
    if (_json.containsKey("code")) {
      code = _json["code"];
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
    if (message != null) {
      _json["message"] = message;
    }
    return _json;
  }
}

/// UpdateClusterRequest updates the settings of a cluster.
class UpdateClusterRequest {
  /// Deprecated. The name of the cluster to upgrade.
  /// This field has been deprecated and replaced by the name field.
  core.String clusterId;

  /// The name (project, location, cluster) of the cluster to update.
  /// Specified in the format 'projects / * /locations / * /clusters / * '.
  core.String name;

  /// Deprecated. The Google Developers Console [project ID or project
  /// number](https://support.google.com/cloud/answer/6158840).
  /// This field has been deprecated and replaced by the name field.
  core.String projectId;

  /// A description of the update.
  ClusterUpdate update;

  /// Deprecated. The name of the Google Compute Engine
  /// [zone](/compute/docs/zones#available) in which the cluster
  /// resides.
  /// This field has been deprecated and replaced by the name field.
  core.String zone;

  UpdateClusterRequest();

  UpdateClusterRequest.fromJson(core.Map _json) {
    if (_json.containsKey("clusterId")) {
      clusterId = _json["clusterId"];
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
    if (_json.containsKey("projectId")) {
      projectId = _json["projectId"];
    }
    if (_json.containsKey("update")) {
      update = new ClusterUpdate.fromJson(_json["update"]);
    }
    if (_json.containsKey("zone")) {
      zone = _json["zone"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (clusterId != null) {
      _json["clusterId"] = clusterId;
    }
    if (name != null) {
      _json["name"] = name;
    }
    if (projectId != null) {
      _json["projectId"] = projectId;
    }
    if (update != null) {
      _json["update"] = (update).toJson();
    }
    if (zone != null) {
      _json["zone"] = zone;
    }
    return _json;
  }
}

/// UpdateMasterRequest updates the master of the cluster.
class UpdateMasterRequest {
  /// Deprecated. The name of the cluster to upgrade.
  /// This field has been deprecated and replaced by the name field.
  core.String clusterId;

  /// The Kubernetes version to change the master to.
  ///
  /// Users may specify either explicit versions offered by Kubernetes Engine or
  /// version aliases, which have the following behavior:
  ///
  /// - "latest": picks the highest valid Kubernetes version
  /// - "1.X": picks the highest valid patch+gke.N patch in the 1.X version
  /// - "1.X.Y": picks the highest valid gke.N patch in the 1.X.Y version
  /// - "1.X.Y-gke.N": picks an explicit Kubernetes version
  /// - "-": picks the default Kubernetes version
  core.String masterVersion;

  /// The name (project, location, cluster) of the cluster to update.
  /// Specified in the format 'projects / * /locations / * /clusters / * '.
  core.String name;

  /// Deprecated. The Google Developers Console [project ID or project
  /// number](https://support.google.com/cloud/answer/6158840).
  /// This field has been deprecated and replaced by the name field.
  core.String projectId;

  /// Deprecated. The name of the Google Compute Engine
  /// [zone](/compute/docs/zones#available) in which the cluster
  /// resides.
  /// This field has been deprecated and replaced by the name field.
  core.String zone;

  UpdateMasterRequest();

  UpdateMasterRequest.fromJson(core.Map _json) {
    if (_json.containsKey("clusterId")) {
      clusterId = _json["clusterId"];
    }
    if (_json.containsKey("masterVersion")) {
      masterVersion = _json["masterVersion"];
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
    if (_json.containsKey("projectId")) {
      projectId = _json["projectId"];
    }
    if (_json.containsKey("zone")) {
      zone = _json["zone"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (clusterId != null) {
      _json["clusterId"] = clusterId;
    }
    if (masterVersion != null) {
      _json["masterVersion"] = masterVersion;
    }
    if (name != null) {
      _json["name"] = name;
    }
    if (projectId != null) {
      _json["projectId"] = projectId;
    }
    if (zone != null) {
      _json["zone"] = zone;
    }
    return _json;
  }
}

/// UpdateNodePoolRequests update a node pool's image and/or version.
class UpdateNodePoolRequest {
  /// Deprecated. The name of the cluster to upgrade.
  /// This field has been deprecated and replaced by the name field.
  core.String clusterId;

  /// The desired image type for the node pool.
  core.String imageType;

  /// The name (project, location, cluster, node pool) of the node pool to
  /// update. Specified in the format
  /// 'projects / * /locations / * /clusters / * /nodePools / * '.
  core.String name;

  /// Deprecated. The name of the node pool to upgrade.
  /// This field has been deprecated and replaced by the name field.
  core.String nodePoolId;

  /// The Kubernetes version to change the nodes to (typically an
  /// upgrade).
  ///
  /// Users may specify either explicit versions offered by Kubernetes Engine or
  /// version aliases, which have the following behavior:
  ///
  /// - "latest": picks the highest valid Kubernetes version
  /// - "1.X": picks the highest valid patch+gke.N patch in the 1.X version
  /// - "1.X.Y": picks the highest valid gke.N patch in the 1.X.Y version
  /// - "1.X.Y-gke.N": picks an explicit Kubernetes version
  /// - "-": picks the Kubernetes master version
  core.String nodeVersion;

  /// Deprecated. The Google Developers Console [project ID or project
  /// number](https://support.google.com/cloud/answer/6158840).
  /// This field has been deprecated and replaced by the name field.
  core.String projectId;

  /// Deprecated. The name of the Google Compute Engine
  /// [zone](/compute/docs/zones#available) in which the cluster
  /// resides.
  /// This field has been deprecated and replaced by the name field.
  core.String zone;

  UpdateNodePoolRequest();

  UpdateNodePoolRequest.fromJson(core.Map _json) {
    if (_json.containsKey("clusterId")) {
      clusterId = _json["clusterId"];
    }
    if (_json.containsKey("imageType")) {
      imageType = _json["imageType"];
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
    if (_json.containsKey("nodePoolId")) {
      nodePoolId = _json["nodePoolId"];
    }
    if (_json.containsKey("nodeVersion")) {
      nodeVersion = _json["nodeVersion"];
    }
    if (_json.containsKey("projectId")) {
      projectId = _json["projectId"];
    }
    if (_json.containsKey("zone")) {
      zone = _json["zone"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (clusterId != null) {
      _json["clusterId"] = clusterId;
    }
    if (imageType != null) {
      _json["imageType"] = imageType;
    }
    if (name != null) {
      _json["name"] = name;
    }
    if (nodePoolId != null) {
      _json["nodePoolId"] = nodePoolId;
    }
    if (nodeVersion != null) {
      _json["nodeVersion"] = nodeVersion;
    }
    if (projectId != null) {
      _json["projectId"] = projectId;
    }
    if (zone != null) {
      _json["zone"] = zone;
    }
    return _json;
  }
}

/// UsableSubnetwork resource returns the subnetwork name, its associated
/// network
/// and the primary CIDR range.
class UsableSubnetwork {
  /// The range of internal addresses that are owned by this subnetwork.
  core.String ipCidrRange;

  /// Network Name.
  /// Example: projects/my-project/global/networks/my-network
  core.String network;

  /// Secondary IP ranges.
  core.List<UsableSubnetworkSecondaryRange> secondaryIpRanges;

  /// A human readable status message representing the reasons for cases where
  /// the caller cannot use the secondary ranges under the subnet. For example
  /// if
  /// the secondary_ip_ranges is empty due to a permission issue, an
  /// insufficient
  /// permission message will be given by status_message.
  core.String statusMessage;

  /// Subnetwork Name.
  /// Example: projects/my-project/regions/us-central1/subnetworks/my-subnet
  core.String subnetwork;

  UsableSubnetwork();

  UsableSubnetwork.fromJson(core.Map _json) {
    if (_json.containsKey("ipCidrRange")) {
      ipCidrRange = _json["ipCidrRange"];
    }
    if (_json.containsKey("network")) {
      network = _json["network"];
    }
    if (_json.containsKey("secondaryIpRanges")) {
      secondaryIpRanges = (_json["secondaryIpRanges"] as core.List)
          .map<UsableSubnetworkSecondaryRange>(
              (value) => new UsableSubnetworkSecondaryRange.fromJson(value))
          .toList();
    }
    if (_json.containsKey("statusMessage")) {
      statusMessage = _json["statusMessage"];
    }
    if (_json.containsKey("subnetwork")) {
      subnetwork = _json["subnetwork"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (ipCidrRange != null) {
      _json["ipCidrRange"] = ipCidrRange;
    }
    if (network != null) {
      _json["network"] = network;
    }
    if (secondaryIpRanges != null) {
      _json["secondaryIpRanges"] =
          secondaryIpRanges.map((value) => (value).toJson()).toList();
    }
    if (statusMessage != null) {
      _json["statusMessage"] = statusMessage;
    }
    if (subnetwork != null) {
      _json["subnetwork"] = subnetwork;
    }
    return _json;
  }
}

/// Secondary IP range of a usable subnetwork.
class UsableSubnetworkSecondaryRange {
  /// The range of IP addresses belonging to this subnetwork secondary range.
  core.String ipCidrRange;

  /// The name associated with this subnetwork secondary range, used when adding
  /// an alias IP range to a VM instance.
  core.String rangeName;

  /// This field is to determine the status of the secondary range programmably.
  /// Possible string values are:
  /// - "UNKNOWN" : UNKNOWN is the zero value of the Status enum. It's not a
  /// valid status.
  /// - "UNUSED" : UNUSED denotes that this range is unclaimed by any cluster.
  /// - "IN_USE_SERVICE" : IN_USE_SERVICE denotes that this range is claimed by
  /// a cluster for
  /// services. It cannot be used for other clusters.
  /// - "IN_USE_SHAREABLE_POD" : IN_USE_SHAREABLE_POD denotes this range was
  /// created by the network admin
  /// and is currently claimed by a cluster for pods. It can only be used by
  /// other clusters as a pod range.
  /// - "IN_USE_MANAGED_POD" : IN_USE_MANAGED_POD denotes this range was created
  /// by GKE and is claimed
  /// for pods. It cannot be used for other clusters.
  core.String status;

  UsableSubnetworkSecondaryRange();

  UsableSubnetworkSecondaryRange.fromJson(core.Map _json) {
    if (_json.containsKey("ipCidrRange")) {
      ipCidrRange = _json["ipCidrRange"];
    }
    if (_json.containsKey("rangeName")) {
      rangeName = _json["rangeName"];
    }
    if (_json.containsKey("status")) {
      status = _json["status"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (ipCidrRange != null) {
      _json["ipCidrRange"] = ipCidrRange;
    }
    if (rangeName != null) {
      _json["rangeName"] = rangeName;
    }
    if (status != null) {
      _json["status"] = status;
    }
    return _json;
  }
}
