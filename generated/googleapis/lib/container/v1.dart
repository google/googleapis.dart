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

/// Kubernetes Engine API - v1
///
/// Builds and manages container-based applications, powered by the open source
/// Kubernetes technology.
///
/// For more information, see <https://cloud.google.com/container-engine/>
///
/// Create an instance of [ContainerApi] to access these resources:
///
/// - [ProjectsResource]
///   - [ProjectsAggregatedResource]
///     - [ProjectsAggregatedUsableSubnetworksResource]
///   - [ProjectsLocationsResource]
///     - [ProjectsLocationsClustersResource]
///       - [ProjectsLocationsClustersNodePoolsResource]
///       - [ProjectsLocationsClustersWellKnownResource]
///     - [ProjectsLocationsOperationsResource]
///   - [ProjectsZonesResource]
///     - [ProjectsZonesClustersResource]
///       - [ProjectsZonesClustersNodePoolsResource]
///     - [ProjectsZonesOperationsResource]
library container.v1;

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

/// Builds and manages container-based applications, powered by the open source
/// Kubernetes technology.
class ContainerApi {
  /// See, edit, configure, and delete your Google Cloud data and see the email
  /// address for your Google Account.
  static const cloudPlatformScope =
      'https://www.googleapis.com/auth/cloud-platform';

  final commons.ApiRequester _requester;

  ProjectsResource get projects => ProjectsResource(_requester);

  ContainerApi(http.Client client,
      {core.String rootUrl = 'https://container.googleapis.com/',
      core.String servicePath = ''})
      : _requester =
            commons.ApiRequester(client, rootUrl, servicePath, requestHeaders);
}

class ProjectsResource {
  final commons.ApiRequester _requester;

  ProjectsAggregatedResource get aggregated =>
      ProjectsAggregatedResource(_requester);
  ProjectsLocationsResource get locations =>
      ProjectsLocationsResource(_requester);
  ProjectsZonesResource get zones => ProjectsZonesResource(_requester);

  ProjectsResource(commons.ApiRequester client) : _requester = client;
}

class ProjectsAggregatedResource {
  final commons.ApiRequester _requester;

  ProjectsAggregatedUsableSubnetworksResource get usableSubnetworks =>
      ProjectsAggregatedUsableSubnetworksResource(_requester);

  ProjectsAggregatedResource(commons.ApiRequester client) : _requester = client;
}

class ProjectsAggregatedUsableSubnetworksResource {
  final commons.ApiRequester _requester;

  ProjectsAggregatedUsableSubnetworksResource(commons.ApiRequester client)
      : _requester = client;

  /// Lists subnetworks that are usable for creating clusters in a project.
  ///
  /// Request parameters:
  ///
  /// [parent] - The parent project where subnetworks are usable. Specified in
  /// the format `projects / * `.
  /// Value must have pattern `^projects/\[^/\]+$`.
  ///
  /// [filter] - Filtering currently only supports equality on the
  /// networkProjectId and must be in the form:
  /// "networkProjectId=\[PROJECTID\]", where `networkProjectId` is the project
  /// which owns the listed subnetworks. This defaults to the parent project ID.
  ///
  /// [pageSize] - The max number of results per page that should be returned.
  /// If the number of available results is larger than `page_size`, a
  /// `next_page_token` is returned which can be used to get the next page of
  /// results in subsequent requests. Acceptable values are 0 to 500, inclusive.
  /// (Default: 500)
  ///
  /// [pageToken] - Specifies a page token to use. Set this to the nextPageToken
  /// returned by previous list requests to get the next page of results.
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
  async.Future<ListUsableSubnetworksResponse> list(
    core.String parent, {
    core.String? filter,
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (filter != null) 'filter': [filter],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' +
        core.Uri.encodeFull('$parent') +
        '/aggregated/usableSubnetworks';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return ListUsableSubnetworksResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsClustersResource get clusters =>
      ProjectsLocationsClustersResource(_requester);
  ProjectsLocationsOperationsResource get operations =>
      ProjectsLocationsOperationsResource(_requester);

  ProjectsLocationsResource(commons.ApiRequester client) : _requester = client;

  /// Returns configuration info about the Google Kubernetes Engine service.
  ///
  /// Request parameters:
  ///
  /// [name] - The name (project and location) of the server config to get,
  /// specified in the format `projects / * /locations / * `.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [projectId] - Deprecated. The Google Developers Console
  /// [project ID or project number](https://support.google.com/cloud/answer/6158840).
  /// This field has been deprecated and replaced by the name field.
  ///
  /// [zone] - Deprecated. The name of the Google Compute Engine
  /// [zone](https://cloud.google.com/compute/docs/zones#available) to return
  /// operations for. This field has been deprecated and replaced by the name
  /// field.
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
  async.Future<ServerConfig> getServerConfig(
    core.String name, {
    core.String? projectId,
    core.String? zone,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (projectId != null) 'projectId': [projectId],
      if (zone != null) 'zone': [zone],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$name') + '/serverConfig';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return ServerConfig.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsClustersResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsClustersNodePoolsResource get nodePools =>
      ProjectsLocationsClustersNodePoolsResource(_requester);
  ProjectsLocationsClustersWellKnownResource get wellKnown =>
      ProjectsLocationsClustersWellKnownResource(_requester);

  ProjectsLocationsClustersResource(commons.ApiRequester client)
      : _requester = client;

  /// Completes master IP rotation.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - The name (project, location, cluster name) of the cluster to
  /// complete IP rotation. Specified in the format `projects / * /locations / *
  /// /clusters / * `.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/clusters/\[^/\]+$`.
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
    CompleteIPRotationRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$name') + ':completeIpRotation';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return Operation.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Creates a cluster, consisting of the specified number and type of Google
  /// Compute Engine instances.
  ///
  /// By default, the cluster is created in the project's
  /// [default network](https://cloud.google.com/compute/docs/networks-and-firewalls#networks).
  /// One firewall is added for the cluster. After cluster creation, the Kubelet
  /// creates routes for each node to allow the containers on that node to
  /// communicate with all other instances in the cluster. Finally, an entry is
  /// added to the project's global metadata indicating which CIDR range the
  /// cluster is using.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - The parent (project and location) where the cluster will be
  /// created. Specified in the format `projects / * /locations / * `.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
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
    CreateClusterRequest request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$parent') + '/clusters';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return Operation.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Deletes the cluster, including the Kubernetes endpoint and all worker
  /// nodes.
  ///
  /// Firewalls and routes that were configured during cluster creation are also
  /// deleted. Other Google Compute Engine resources that might be in use by the
  /// cluster, such as load balancer resources, are not deleted if they weren't
  /// present when the cluster was initially created.
  ///
  /// Request parameters:
  ///
  /// [name] - The name (project, location, cluster) of the cluster to delete.
  /// Specified in the format `projects / * /locations / * /clusters / * `.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/clusters/\[^/\]+$`.
  ///
  /// [clusterId] - Deprecated. The name of the cluster to delete. This field
  /// has been deprecated and replaced by the name field.
  ///
  /// [projectId] - Deprecated. The Google Developers Console
  /// [project ID or project number](https://support.google.com/cloud/answer/6158840).
  /// This field has been deprecated and replaced by the name field.
  ///
  /// [zone] - Deprecated. The name of the Google Compute Engine
  /// [zone](https://cloud.google.com/compute/docs/zones#available) in which the
  /// cluster resides. This field has been deprecated and replaced by the name
  /// field.
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
    core.String? clusterId,
    core.String? projectId,
    core.String? zone,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (clusterId != null) 'clusterId': [clusterId],
      if (projectId != null) 'projectId': [projectId],
      if (zone != null) 'zone': [zone],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'DELETE',
      queryParams: _queryParams,
    );
    return Operation.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Gets the details of a specific cluster.
  ///
  /// Request parameters:
  ///
  /// [name] - The name (project, location, cluster) of the cluster to retrieve.
  /// Specified in the format `projects / * /locations / * /clusters / * `.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/clusters/\[^/\]+$`.
  ///
  /// [clusterId] - Deprecated. The name of the cluster to retrieve. This field
  /// has been deprecated and replaced by the name field.
  ///
  /// [projectId] - Deprecated. The Google Developers Console
  /// [project ID or project number](https://support.google.com/cloud/answer/6158840).
  /// This field has been deprecated and replaced by the name field.
  ///
  /// [zone] - Deprecated. The name of the Google Compute Engine
  /// [zone](https://cloud.google.com/compute/docs/zones#available) in which the
  /// cluster resides. This field has been deprecated and replaced by the name
  /// field.
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
    core.String name, {
    core.String? clusterId,
    core.String? projectId,
    core.String? zone,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (clusterId != null) 'clusterId': [clusterId],
      if (projectId != null) 'projectId': [projectId],
      if (zone != null) 'zone': [zone],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return Cluster.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Gets the public component of the cluster signing keys in JSON Web Key
  /// format.
  ///
  /// This API is not yet intended for general use, and is not available for all
  /// clusters.
  ///
  /// Request parameters:
  ///
  /// [parent] - The cluster (project, location, cluster name) to get keys for.
  /// Specified in the format `projects / * /locations / * /clusters / * `.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/clusters/\[^/\]+$`.
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
  async.Future<GetJSONWebKeysResponse> getJwks(
    core.String parent, {
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$parent') + '/jwks';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return GetJSONWebKeysResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Lists all clusters owned by a project in either the specified zone or all
  /// zones.
  ///
  /// Request parameters:
  ///
  /// [parent] - The parent (project and location) where the clusters will be
  /// listed. Specified in the format `projects / * /locations / * `. Location
  /// "-" matches all zones and all regions.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [projectId] - Deprecated. The Google Developers Console
  /// [project ID or project number](https://support.google.com/cloud/answer/6158840).
  /// This field has been deprecated and replaced by the parent field.
  ///
  /// [zone] - Deprecated. The name of the Google Compute Engine
  /// [zone](https://cloud.google.com/compute/docs/zones#available) in which the
  /// cluster resides, or "-" for all zones. This field has been deprecated and
  /// replaced by the parent field.
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
    core.String parent, {
    core.String? projectId,
    core.String? zone,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (projectId != null) 'projectId': [projectId],
      if (zone != null) 'zone': [zone],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$parent') + '/clusters';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return ListClustersResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Sets the addons for a specific cluster.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - The name (project, location, cluster) of the cluster to set
  /// addons. Specified in the format `projects / * /locations / * /clusters / *
  /// `.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/clusters/\[^/\]+$`.
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
    SetAddonsConfigRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$name') + ':setAddons';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return Operation.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Enables or disables the ABAC authorization mechanism on a cluster.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - The name (project, location, cluster name) of the cluster to set
  /// legacy abac. Specified in the format `projects / * /locations / *
  /// /clusters / * `.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/clusters/\[^/\]+$`.
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
    SetLegacyAbacRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$name') + ':setLegacyAbac';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return Operation.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Sets the locations for a specific cluster.
  ///
  /// Deprecated. Use
  /// [projects.locations.clusters.update](https://cloud.google.com/kubernetes-engine/docs/reference/rest/v1/projects.locations.clusters/update)
  /// instead.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - The name (project, location, cluster) of the cluster to set
  /// locations. Specified in the format `projects / * /locations / * /clusters
  /// / * `.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/clusters/\[^/\]+$`.
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
    SetLocationsRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$name') + ':setLocations';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return Operation.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Sets the logging service for a specific cluster.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - The name (project, location, cluster) of the cluster to set
  /// logging. Specified in the format `projects / * /locations / * /clusters /
  /// * `.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/clusters/\[^/\]+$`.
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
    SetLoggingServiceRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$name') + ':setLogging';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return Operation.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Sets the maintenance policy for a cluster.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - The name (project, location, cluster name) of the cluster to set
  /// maintenance policy. Specified in the format `projects / * /locations / *
  /// /clusters / * `.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/clusters/\[^/\]+$`.
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
    core.String name, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$name') + ':setMaintenancePolicy';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return Operation.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Sets master auth materials.
  ///
  /// Currently supports changing the admin password or a specific cluster,
  /// either via password generation or explicitly setting the password.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - The name (project, location, cluster) of the cluster to set auth.
  /// Specified in the format `projects / * /locations / * /clusters / * `.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/clusters/\[^/\]+$`.
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
    SetMasterAuthRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$name') + ':setMasterAuth';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return Operation.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Sets the monitoring service for a specific cluster.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - The name (project, location, cluster) of the cluster to set
  /// monitoring. Specified in the format `projects / * /locations / * /clusters
  /// / * `.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/clusters/\[^/\]+$`.
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
    SetMonitoringServiceRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$name') + ':setMonitoring';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return Operation.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Enables or disables Network Policy for a cluster.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - The name (project, location, cluster name) of the cluster to set
  /// networking policy. Specified in the format `projects / * /locations / *
  /// /clusters / * `.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/clusters/\[^/\]+$`.
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
    SetNetworkPolicyRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$name') + ':setNetworkPolicy';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return Operation.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Sets labels on a cluster.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - The name (project, location, cluster name) of the cluster to set
  /// labels. Specified in the format `projects / * /locations / * /clusters / *
  /// `.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/clusters/\[^/\]+$`.
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
    SetLabelsRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$name') + ':setResourceLabels';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return Operation.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Starts master IP rotation.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - The name (project, location, cluster name) of the cluster to
  /// start IP rotation. Specified in the format `projects / * /locations / *
  /// /clusters / * `.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/clusters/\[^/\]+$`.
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
    StartIPRotationRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$name') + ':startIpRotation';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return Operation.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Updates the settings of a specific cluster.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - The name (project, location, cluster) of the cluster to update.
  /// Specified in the format `projects / * /locations / * /clusters / * `.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/clusters/\[^/\]+$`.
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
    UpdateClusterRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'PUT',
      body: _body,
      queryParams: _queryParams,
    );
    return Operation.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Updates the master for a specific cluster.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - The name (project, location, cluster) of the cluster to update.
  /// Specified in the format `projects / * /locations / * /clusters / * `.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/clusters/\[^/\]+$`.
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
    UpdateMasterRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$name') + ':updateMaster';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return Operation.fromJson(_response as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsClustersNodePoolsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsClustersNodePoolsResource(commons.ApiRequester client)
      : _requester = client;

  /// Creates a node pool for a cluster.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - The parent (project, location, cluster name) where the node
  /// pool will be created. Specified in the format `projects / * /locations / *
  /// /clusters / * `.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/clusters/\[^/\]+$`.
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
    CreateNodePoolRequest request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$parent') + '/nodePools';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return Operation.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Deletes a node pool from a cluster.
  ///
  /// Request parameters:
  ///
  /// [name] - The name (project, location, cluster, node pool id) of the node
  /// pool to delete. Specified in the format `projects / * /locations / *
  /// /clusters / * /nodePools / * `.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/clusters/\[^/\]+/nodePools/\[^/\]+$`.
  ///
  /// [clusterId] - Deprecated. The name of the cluster. This field has been
  /// deprecated and replaced by the name field.
  ///
  /// [nodePoolId] - Deprecated. The name of the node pool to delete. This field
  /// has been deprecated and replaced by the name field.
  ///
  /// [projectId] - Deprecated. The Google Developers Console
  /// [project ID or project number](https://developers.google.com/console/help/new/#projectnumber).
  /// This field has been deprecated and replaced by the name field.
  ///
  /// [zone] - Deprecated. The name of the Google Compute Engine
  /// [zone](https://cloud.google.com/compute/docs/zones#available) in which the
  /// cluster resides. This field has been deprecated and replaced by the name
  /// field.
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
    core.String? clusterId,
    core.String? nodePoolId,
    core.String? projectId,
    core.String? zone,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (clusterId != null) 'clusterId': [clusterId],
      if (nodePoolId != null) 'nodePoolId': [nodePoolId],
      if (projectId != null) 'projectId': [projectId],
      if (zone != null) 'zone': [zone],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'DELETE',
      queryParams: _queryParams,
    );
    return Operation.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Retrieves the requested node pool.
  ///
  /// Request parameters:
  ///
  /// [name] - The name (project, location, cluster, node pool id) of the node
  /// pool to get. Specified in the format `projects / * /locations / *
  /// /clusters / * /nodePools / * `.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/clusters/\[^/\]+/nodePools/\[^/\]+$`.
  ///
  /// [clusterId] - Deprecated. The name of the cluster. This field has been
  /// deprecated and replaced by the name field.
  ///
  /// [nodePoolId] - Deprecated. The name of the node pool. This field has been
  /// deprecated and replaced by the name field.
  ///
  /// [projectId] - Deprecated. The Google Developers Console
  /// [project ID or project number](https://developers.google.com/console/help/new/#projectnumber).
  /// This field has been deprecated and replaced by the name field.
  ///
  /// [zone] - Deprecated. The name of the Google Compute Engine
  /// [zone](https://cloud.google.com/compute/docs/zones#available) in which the
  /// cluster resides. This field has been deprecated and replaced by the name
  /// field.
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
  async.Future<NodePool> get(
    core.String name, {
    core.String? clusterId,
    core.String? nodePoolId,
    core.String? projectId,
    core.String? zone,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (clusterId != null) 'clusterId': [clusterId],
      if (nodePoolId != null) 'nodePoolId': [nodePoolId],
      if (projectId != null) 'projectId': [projectId],
      if (zone != null) 'zone': [zone],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return NodePool.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Lists the node pools for a cluster.
  ///
  /// Request parameters:
  ///
  /// [parent] - The parent (project, location, cluster name) where the node
  /// pools will be listed. Specified in the format `projects / * /locations / *
  /// /clusters / * `.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/clusters/\[^/\]+$`.
  ///
  /// [clusterId] - Deprecated. The name of the cluster. This field has been
  /// deprecated and replaced by the parent field.
  ///
  /// [projectId] - Deprecated. The Google Developers Console
  /// [project ID or project number](https://developers.google.com/console/help/new/#projectnumber).
  /// This field has been deprecated and replaced by the parent field.
  ///
  /// [zone] - Deprecated. The name of the Google Compute Engine
  /// [zone](https://cloud.google.com/compute/docs/zones#available) in which the
  /// cluster resides. This field has been deprecated and replaced by the parent
  /// field.
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
    core.String parent, {
    core.String? clusterId,
    core.String? projectId,
    core.String? zone,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (clusterId != null) 'clusterId': [clusterId],
      if (projectId != null) 'projectId': [projectId],
      if (zone != null) 'zone': [zone],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$parent') + '/nodePools';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return ListNodePoolsResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Rolls back a previously Aborted or Failed NodePool upgrade.
  ///
  /// This makes no changes if the last upgrade successfully completed.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - The name (project, location, cluster, node pool id) of the node
  /// poll to rollback upgrade. Specified in the format `projects / * /locations
  /// / * /clusters / * /nodePools / * `.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/clusters/\[^/\]+/nodePools/\[^/\]+$`.
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
    core.String name, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$name') + ':rollback';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return Operation.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Sets the autoscaling settings for the specified node pool.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - The name (project, location, cluster, node pool) of the node pool
  /// to set autoscaler settings. Specified in the format `projects / *
  /// /locations / * /clusters / * /nodePools / * `.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/clusters/\[^/\]+/nodePools/\[^/\]+$`.
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
    SetNodePoolAutoscalingRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$name') + ':setAutoscaling';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return Operation.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Sets the NodeManagement options for a node pool.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - The name (project, location, cluster, node pool id) of the node
  /// pool to set management properties. Specified in the format `projects / *
  /// /locations / * /clusters / * /nodePools / * `.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/clusters/\[^/\]+/nodePools/\[^/\]+$`.
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
    core.String name, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$name') + ':setManagement';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return Operation.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Sets the size for a specific node pool.
  ///
  /// The new size will be used for all replicas, including future replicas
  /// created by modifying NodePool.locations.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - The name (project, location, cluster, node pool id) of the node
  /// pool to set size. Specified in the format `projects / * /locations / *
  /// /clusters / * /nodePools / * `.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/clusters/\[^/\]+/nodePools/\[^/\]+$`.
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
    core.String name, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$name') + ':setSize';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return Operation.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Updates the version and/or image type for the specified node pool.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - The name (project, location, cluster, node pool) of the node pool
  /// to update. Specified in the format `projects / * /locations / * /clusters
  /// / * /nodePools / * `.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/clusters/\[^/\]+/nodePools/\[^/\]+$`.
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
    core.String name, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'PUT',
      body: _body,
      queryParams: _queryParams,
    );
    return Operation.fromJson(_response as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsClustersWellKnownResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsClustersWellKnownResource(commons.ApiRequester client)
      : _requester = client;

  /// Gets the OIDC discovery document for the cluster.
  ///
  /// See the
  /// [OpenID Connect Discovery 1.0 specification](https://openid.net/specs/openid-connect-discovery-1_0.html)
  /// for details. This API is not yet intended for general use, and is not
  /// available for all clusters.
  ///
  /// Request parameters:
  ///
  /// [parent] - The cluster (project, location, cluster name) to get the
  /// discovery document for. Specified in the format `projects / * /locations /
  /// * /clusters / * `.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/clusters/\[^/\]+$`.
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
  async.Future<GetOpenIDConfigResponse> getOpenidConfiguration(
    core.String parent, {
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' +
        core.Uri.encodeFull('$parent') +
        '/.well-known/openid-configuration';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return GetOpenIDConfigResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsOperationsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsOperationsResource(commons.ApiRequester client)
      : _requester = client;

  /// Cancels the specified operation.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - The name (project, location, operation id) of the operation to
  /// cancel. Specified in the format `projects / * /locations / * /operations /
  /// * `.
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
  async.Future<Empty> cancel(
    CancelOperationRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$name') + ':cancel';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return Empty.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Gets the specified operation.
  ///
  /// Request parameters:
  ///
  /// [name] - The name (project, location, operation id) of the operation to
  /// get. Specified in the format `projects / * /locations / * /operations / *
  /// `.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/operations/\[^/\]+$`.
  ///
  /// [operationId] - Deprecated. The server-assigned `name` of the operation.
  /// This field has been deprecated and replaced by the name field.
  ///
  /// [projectId] - Deprecated. The Google Developers Console
  /// [project ID or project number](https://support.google.com/cloud/answer/6158840).
  /// This field has been deprecated and replaced by the name field.
  ///
  /// [zone] - Deprecated. The name of the Google Compute Engine
  /// [zone](https://cloud.google.com/compute/docs/zones#available) in which the
  /// cluster resides. This field has been deprecated and replaced by the name
  /// field.
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
    core.String name, {
    core.String? operationId,
    core.String? projectId,
    core.String? zone,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (operationId != null) 'operationId': [operationId],
      if (projectId != null) 'projectId': [projectId],
      if (zone != null) 'zone': [zone],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return Operation.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Lists all operations in a project in a specific zone or all zones.
  ///
  /// Request parameters:
  ///
  /// [parent] - The parent (project and location) where the operations will be
  /// listed. Specified in the format `projects / * /locations / * `. Location
  /// "-" matches all zones and all regions.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [projectId] - Deprecated. The Google Developers Console
  /// [project ID or project number](https://support.google.com/cloud/answer/6158840).
  /// This field has been deprecated and replaced by the parent field.
  ///
  /// [zone] - Deprecated. The name of the Google Compute Engine
  /// [zone](https://cloud.google.com/compute/docs/zones#available) to return
  /// operations for, or `-` for all zones. This field has been deprecated and
  /// replaced by the parent field.
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
    core.String parent, {
    core.String? projectId,
    core.String? zone,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (projectId != null) 'projectId': [projectId],
      if (zone != null) 'zone': [zone],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$parent') + '/operations';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return ListOperationsResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsZonesResource {
  final commons.ApiRequester _requester;

  ProjectsZonesClustersResource get clusters =>
      ProjectsZonesClustersResource(_requester);
  ProjectsZonesOperationsResource get operations =>
      ProjectsZonesOperationsResource(_requester);

  ProjectsZonesResource(commons.ApiRequester client) : _requester = client;

  /// Returns configuration info about the Google Kubernetes Engine service.
  ///
  /// Request parameters:
  ///
  /// [projectId] - Deprecated. The Google Developers Console
  /// [project ID or project number](https://support.google.com/cloud/answer/6158840).
  /// This field has been deprecated and replaced by the name field.
  ///
  /// [zone] - Deprecated. The name of the Google Compute Engine
  /// [zone](https://cloud.google.com/compute/docs/zones#available) to return
  /// operations for. This field has been deprecated and replaced by the name
  /// field.
  ///
  /// [name] - The name (project and location) of the server config to get,
  /// specified in the format `projects / * /locations / * `.
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
    core.String projectId,
    core.String zone, {
    core.String? name,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (name != null) 'name': [name],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/projects/' +
        commons.escapeVariable('$projectId') +
        '/zones/' +
        commons.escapeVariable('$zone') +
        '/serverconfig';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return ServerConfig.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsZonesClustersResource {
  final commons.ApiRequester _requester;

  ProjectsZonesClustersNodePoolsResource get nodePools =>
      ProjectsZonesClustersNodePoolsResource(_requester);

  ProjectsZonesClustersResource(commons.ApiRequester client)
      : _requester = client;

  /// Sets the addons for a specific cluster.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [projectId] - Deprecated. The Google Developers Console
  /// [project ID or project number](https://support.google.com/cloud/answer/6158840).
  /// This field has been deprecated and replaced by the name field.
  ///
  /// [zone] - Deprecated. The name of the Google Compute Engine
  /// [zone](https://cloud.google.com/compute/docs/zones#available) in which the
  /// cluster resides. This field has been deprecated and replaced by the name
  /// field.
  ///
  /// [clusterId] - Deprecated. The name of the cluster to upgrade. This field
  /// has been deprecated and replaced by the name field.
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
  async.Future<Operation> addons(
    SetAddonsConfigRequest request,
    core.String projectId,
    core.String zone,
    core.String clusterId, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/projects/' +
        commons.escapeVariable('$projectId') +
        '/zones/' +
        commons.escapeVariable('$zone') +
        '/clusters/' +
        commons.escapeVariable('$clusterId') +
        '/addons';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return Operation.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Completes master IP rotation.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [projectId] - Deprecated. The Google Developers Console
  /// [project ID or project number](https://developers.google.com/console/help/new/#projectnumber).
  /// This field has been deprecated and replaced by the name field.
  ///
  /// [zone] - Deprecated. The name of the Google Compute Engine
  /// [zone](https://cloud.google.com/compute/docs/zones#available) in which the
  /// cluster resides. This field has been deprecated and replaced by the name
  /// field.
  ///
  /// [clusterId] - Deprecated. The name of the cluster. This field has been
  /// deprecated and replaced by the name field.
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
    CompleteIPRotationRequest request,
    core.String projectId,
    core.String zone,
    core.String clusterId, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/projects/' +
        commons.escapeVariable('$projectId') +
        '/zones/' +
        commons.escapeVariable('$zone') +
        '/clusters/' +
        commons.escapeVariable('$clusterId') +
        ':completeIpRotation';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return Operation.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Creates a cluster, consisting of the specified number and type of Google
  /// Compute Engine instances.
  ///
  /// By default, the cluster is created in the project's
  /// [default network](https://cloud.google.com/compute/docs/networks-and-firewalls#networks).
  /// One firewall is added for the cluster. After cluster creation, the Kubelet
  /// creates routes for each node to allow the containers on that node to
  /// communicate with all other instances in the cluster. Finally, an entry is
  /// added to the project's global metadata indicating which CIDR range the
  /// cluster is using.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [projectId] - Deprecated. The Google Developers Console
  /// [project ID or project number](https://support.google.com/cloud/answer/6158840).
  /// This field has been deprecated and replaced by the parent field.
  ///
  /// [zone] - Deprecated. The name of the Google Compute Engine
  /// [zone](https://cloud.google.com/compute/docs/zones#available) in which the
  /// cluster resides. This field has been deprecated and replaced by the parent
  /// field.
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
    CreateClusterRequest request,
    core.String projectId,
    core.String zone, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/projects/' +
        commons.escapeVariable('$projectId') +
        '/zones/' +
        commons.escapeVariable('$zone') +
        '/clusters';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return Operation.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Deletes the cluster, including the Kubernetes endpoint and all worker
  /// nodes.
  ///
  /// Firewalls and routes that were configured during cluster creation are also
  /// deleted. Other Google Compute Engine resources that might be in use by the
  /// cluster, such as load balancer resources, are not deleted if they weren't
  /// present when the cluster was initially created.
  ///
  /// Request parameters:
  ///
  /// [projectId] - Deprecated. The Google Developers Console
  /// [project ID or project number](https://support.google.com/cloud/answer/6158840).
  /// This field has been deprecated and replaced by the name field.
  ///
  /// [zone] - Deprecated. The name of the Google Compute Engine
  /// [zone](https://cloud.google.com/compute/docs/zones#available) in which the
  /// cluster resides. This field has been deprecated and replaced by the name
  /// field.
  ///
  /// [clusterId] - Deprecated. The name of the cluster to delete. This field
  /// has been deprecated and replaced by the name field.
  ///
  /// [name] - The name (project, location, cluster) of the cluster to delete.
  /// Specified in the format `projects / * /locations / * /clusters / * `.
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
    core.String projectId,
    core.String zone,
    core.String clusterId, {
    core.String? name,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (name != null) 'name': [name],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/projects/' +
        commons.escapeVariable('$projectId') +
        '/zones/' +
        commons.escapeVariable('$zone') +
        '/clusters/' +
        commons.escapeVariable('$clusterId');

    final _response = await _requester.request(
      _url,
      'DELETE',
      queryParams: _queryParams,
    );
    return Operation.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Gets the details of a specific cluster.
  ///
  /// Request parameters:
  ///
  /// [projectId] - Deprecated. The Google Developers Console
  /// [project ID or project number](https://support.google.com/cloud/answer/6158840).
  /// This field has been deprecated and replaced by the name field.
  ///
  /// [zone] - Deprecated. The name of the Google Compute Engine
  /// [zone](https://cloud.google.com/compute/docs/zones#available) in which the
  /// cluster resides. This field has been deprecated and replaced by the name
  /// field.
  ///
  /// [clusterId] - Deprecated. The name of the cluster to retrieve. This field
  /// has been deprecated and replaced by the name field.
  ///
  /// [name] - The name (project, location, cluster) of the cluster to retrieve.
  /// Specified in the format `projects / * /locations / * /clusters / * `.
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
    core.String projectId,
    core.String zone,
    core.String clusterId, {
    core.String? name,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (name != null) 'name': [name],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/projects/' +
        commons.escapeVariable('$projectId') +
        '/zones/' +
        commons.escapeVariable('$zone') +
        '/clusters/' +
        commons.escapeVariable('$clusterId');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return Cluster.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Enables or disables the ABAC authorization mechanism on a cluster.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [projectId] - Deprecated. The Google Developers Console
  /// [project ID or project number](https://support.google.com/cloud/answer/6158840).
  /// This field has been deprecated and replaced by the name field.
  ///
  /// [zone] - Deprecated. The name of the Google Compute Engine
  /// [zone](https://cloud.google.com/compute/docs/zones#available) in which the
  /// cluster resides. This field has been deprecated and replaced by the name
  /// field.
  ///
  /// [clusterId] - Deprecated. The name of the cluster to update. This field
  /// has been deprecated and replaced by the name field.
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
  async.Future<Operation> legacyAbac(
    SetLegacyAbacRequest request,
    core.String projectId,
    core.String zone,
    core.String clusterId, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/projects/' +
        commons.escapeVariable('$projectId') +
        '/zones/' +
        commons.escapeVariable('$zone') +
        '/clusters/' +
        commons.escapeVariable('$clusterId') +
        '/legacyAbac';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return Operation.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Lists all clusters owned by a project in either the specified zone or all
  /// zones.
  ///
  /// Request parameters:
  ///
  /// [projectId] - Deprecated. The Google Developers Console
  /// [project ID or project number](https://support.google.com/cloud/answer/6158840).
  /// This field has been deprecated and replaced by the parent field.
  ///
  /// [zone] - Deprecated. The name of the Google Compute Engine
  /// [zone](https://cloud.google.com/compute/docs/zones#available) in which the
  /// cluster resides, or "-" for all zones. This field has been deprecated and
  /// replaced by the parent field.
  ///
  /// [parent] - The parent (project and location) where the clusters will be
  /// listed. Specified in the format `projects / * /locations / * `. Location
  /// "-" matches all zones and all regions.
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
    core.String projectId,
    core.String zone, {
    core.String? parent,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (parent != null) 'parent': [parent],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/projects/' +
        commons.escapeVariable('$projectId') +
        '/zones/' +
        commons.escapeVariable('$zone') +
        '/clusters';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return ListClustersResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Sets the locations for a specific cluster.
  ///
  /// Deprecated. Use
  /// [projects.locations.clusters.update](https://cloud.google.com/kubernetes-engine/docs/reference/rest/v1/projects.locations.clusters/update)
  /// instead.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [projectId] - Deprecated. The Google Developers Console
  /// [project ID or project number](https://support.google.com/cloud/answer/6158840).
  /// This field has been deprecated and replaced by the name field.
  ///
  /// [zone] - Deprecated. The name of the Google Compute Engine
  /// [zone](https://cloud.google.com/compute/docs/zones#available) in which the
  /// cluster resides. This field has been deprecated and replaced by the name
  /// field.
  ///
  /// [clusterId] - Deprecated. The name of the cluster to upgrade. This field
  /// has been deprecated and replaced by the name field.
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
  async.Future<Operation> locations(
    SetLocationsRequest request,
    core.String projectId,
    core.String zone,
    core.String clusterId, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/projects/' +
        commons.escapeVariable('$projectId') +
        '/zones/' +
        commons.escapeVariable('$zone') +
        '/clusters/' +
        commons.escapeVariable('$clusterId') +
        '/locations';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return Operation.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Sets the logging service for a specific cluster.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [projectId] - Deprecated. The Google Developers Console
  /// [project ID or project number](https://support.google.com/cloud/answer/6158840).
  /// This field has been deprecated and replaced by the name field.
  ///
  /// [zone] - Deprecated. The name of the Google Compute Engine
  /// [zone](https://cloud.google.com/compute/docs/zones#available) in which the
  /// cluster resides. This field has been deprecated and replaced by the name
  /// field.
  ///
  /// [clusterId] - Deprecated. The name of the cluster to upgrade. This field
  /// has been deprecated and replaced by the name field.
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
  async.Future<Operation> logging(
    SetLoggingServiceRequest request,
    core.String projectId,
    core.String zone,
    core.String clusterId, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/projects/' +
        commons.escapeVariable('$projectId') +
        '/zones/' +
        commons.escapeVariable('$zone') +
        '/clusters/' +
        commons.escapeVariable('$clusterId') +
        '/logging';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return Operation.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Updates the master for a specific cluster.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [projectId] - Deprecated. The Google Developers Console
  /// [project ID or project number](https://support.google.com/cloud/answer/6158840).
  /// This field has been deprecated and replaced by the name field.
  ///
  /// [zone] - Deprecated. The name of the Google Compute Engine
  /// [zone](https://cloud.google.com/compute/docs/zones#available) in which the
  /// cluster resides. This field has been deprecated and replaced by the name
  /// field.
  ///
  /// [clusterId] - Deprecated. The name of the cluster to upgrade. This field
  /// has been deprecated and replaced by the name field.
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
  async.Future<Operation> master(
    UpdateMasterRequest request,
    core.String projectId,
    core.String zone,
    core.String clusterId, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/projects/' +
        commons.escapeVariable('$projectId') +
        '/zones/' +
        commons.escapeVariable('$zone') +
        '/clusters/' +
        commons.escapeVariable('$clusterId') +
        '/master';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return Operation.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Sets the monitoring service for a specific cluster.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [projectId] - Deprecated. The Google Developers Console
  /// [project ID or project number](https://support.google.com/cloud/answer/6158840).
  /// This field has been deprecated and replaced by the name field.
  ///
  /// [zone] - Deprecated. The name of the Google Compute Engine
  /// [zone](https://cloud.google.com/compute/docs/zones#available) in which the
  /// cluster resides. This field has been deprecated and replaced by the name
  /// field.
  ///
  /// [clusterId] - Deprecated. The name of the cluster to upgrade. This field
  /// has been deprecated and replaced by the name field.
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
  async.Future<Operation> monitoring(
    SetMonitoringServiceRequest request,
    core.String projectId,
    core.String zone,
    core.String clusterId, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/projects/' +
        commons.escapeVariable('$projectId') +
        '/zones/' +
        commons.escapeVariable('$zone') +
        '/clusters/' +
        commons.escapeVariable('$clusterId') +
        '/monitoring';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return Operation.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Sets labels on a cluster.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [projectId] - Deprecated. The Google Developers Console
  /// [project ID or project number](https://developers.google.com/console/help/new/#projectnumber).
  /// This field has been deprecated and replaced by the name field.
  ///
  /// [zone] - Deprecated. The name of the Google Compute Engine
  /// [zone](https://cloud.google.com/compute/docs/zones#available) in which the
  /// cluster resides. This field has been deprecated and replaced by the name
  /// field.
  ///
  /// [clusterId] - Deprecated. The name of the cluster. This field has been
  /// deprecated and replaced by the name field.
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
  async.Future<Operation> resourceLabels(
    SetLabelsRequest request,
    core.String projectId,
    core.String zone,
    core.String clusterId, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/projects/' +
        commons.escapeVariable('$projectId') +
        '/zones/' +
        commons.escapeVariable('$zone') +
        '/clusters/' +
        commons.escapeVariable('$clusterId') +
        '/resourceLabels';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return Operation.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Sets the maintenance policy for a cluster.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [projectId] - Required. The Google Developers Console
  /// [project ID or project number](https://support.google.com/cloud/answer/6158840).
  ///
  /// [zone] - Required. The name of the Google Compute Engine
  /// [zone](https://cloud.google.com/compute/docs/zones#available) in which the
  /// cluster resides.
  ///
  /// [clusterId] - Required. The name of the cluster to update.
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
    core.String clusterId, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/projects/' +
        commons.escapeVariable('$projectId') +
        '/zones/' +
        commons.escapeVariable('$zone') +
        '/clusters/' +
        commons.escapeVariable('$clusterId') +
        ':setMaintenancePolicy';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return Operation.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Sets master auth materials.
  ///
  /// Currently supports changing the admin password or a specific cluster,
  /// either via password generation or explicitly setting the password.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [projectId] - Deprecated. The Google Developers Console
  /// [project ID or project number](https://support.google.com/cloud/answer/6158840).
  /// This field has been deprecated and replaced by the name field.
  ///
  /// [zone] - Deprecated. The name of the Google Compute Engine
  /// [zone](https://cloud.google.com/compute/docs/zones#available) in which the
  /// cluster resides. This field has been deprecated and replaced by the name
  /// field.
  ///
  /// [clusterId] - Deprecated. The name of the cluster to upgrade. This field
  /// has been deprecated and replaced by the name field.
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
    SetMasterAuthRequest request,
    core.String projectId,
    core.String zone,
    core.String clusterId, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/projects/' +
        commons.escapeVariable('$projectId') +
        '/zones/' +
        commons.escapeVariable('$zone') +
        '/clusters/' +
        commons.escapeVariable('$clusterId') +
        ':setMasterAuth';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return Operation.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Enables or disables Network Policy for a cluster.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [projectId] - Deprecated. The Google Developers Console
  /// [project ID or project number](https://developers.google.com/console/help/new/#projectnumber).
  /// This field has been deprecated and replaced by the name field.
  ///
  /// [zone] - Deprecated. The name of the Google Compute Engine
  /// [zone](https://cloud.google.com/compute/docs/zones#available) in which the
  /// cluster resides. This field has been deprecated and replaced by the name
  /// field.
  ///
  /// [clusterId] - Deprecated. The name of the cluster. This field has been
  /// deprecated and replaced by the name field.
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
    SetNetworkPolicyRequest request,
    core.String projectId,
    core.String zone,
    core.String clusterId, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/projects/' +
        commons.escapeVariable('$projectId') +
        '/zones/' +
        commons.escapeVariable('$zone') +
        '/clusters/' +
        commons.escapeVariable('$clusterId') +
        ':setNetworkPolicy';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return Operation.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Starts master IP rotation.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [projectId] - Deprecated. The Google Developers Console
  /// [project ID or project number](https://developers.google.com/console/help/new/#projectnumber).
  /// This field has been deprecated and replaced by the name field.
  ///
  /// [zone] - Deprecated. The name of the Google Compute Engine
  /// [zone](https://cloud.google.com/compute/docs/zones#available) in which the
  /// cluster resides. This field has been deprecated and replaced by the name
  /// field.
  ///
  /// [clusterId] - Deprecated. The name of the cluster. This field has been
  /// deprecated and replaced by the name field.
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
    StartIPRotationRequest request,
    core.String projectId,
    core.String zone,
    core.String clusterId, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/projects/' +
        commons.escapeVariable('$projectId') +
        '/zones/' +
        commons.escapeVariable('$zone') +
        '/clusters/' +
        commons.escapeVariable('$clusterId') +
        ':startIpRotation';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return Operation.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Updates the settings of a specific cluster.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [projectId] - Deprecated. The Google Developers Console
  /// [project ID or project number](https://support.google.com/cloud/answer/6158840).
  /// This field has been deprecated and replaced by the name field.
  ///
  /// [zone] - Deprecated. The name of the Google Compute Engine
  /// [zone](https://cloud.google.com/compute/docs/zones#available) in which the
  /// cluster resides. This field has been deprecated and replaced by the name
  /// field.
  ///
  /// [clusterId] - Deprecated. The name of the cluster to upgrade. This field
  /// has been deprecated and replaced by the name field.
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
    UpdateClusterRequest request,
    core.String projectId,
    core.String zone,
    core.String clusterId, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/projects/' +
        commons.escapeVariable('$projectId') +
        '/zones/' +
        commons.escapeVariable('$zone') +
        '/clusters/' +
        commons.escapeVariable('$clusterId');

    final _response = await _requester.request(
      _url,
      'PUT',
      body: _body,
      queryParams: _queryParams,
    );
    return Operation.fromJson(_response as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsZonesClustersNodePoolsResource {
  final commons.ApiRequester _requester;

  ProjectsZonesClustersNodePoolsResource(commons.ApiRequester client)
      : _requester = client;

  /// Sets the autoscaling settings for the specified node pool.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [projectId] - Deprecated. The Google Developers Console
  /// [project ID or project number](https://support.google.com/cloud/answer/6158840).
  /// This field has been deprecated and replaced by the name field.
  ///
  /// [zone] - Deprecated. The name of the Google Compute Engine
  /// [zone](https://cloud.google.com/compute/docs/zones#available) in which the
  /// cluster resides. This field has been deprecated and replaced by the name
  /// field.
  ///
  /// [clusterId] - Deprecated. The name of the cluster to upgrade. This field
  /// has been deprecated and replaced by the name field.
  ///
  /// [nodePoolId] - Deprecated. The name of the node pool to upgrade. This
  /// field has been deprecated and replaced by the name field.
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
    core.String nodePoolId, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/projects/' +
        commons.escapeVariable('$projectId') +
        '/zones/' +
        commons.escapeVariable('$zone') +
        '/clusters/' +
        commons.escapeVariable('$clusterId') +
        '/nodePools/' +
        commons.escapeVariable('$nodePoolId') +
        '/autoscaling';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return Operation.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Creates a node pool for a cluster.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [projectId] - Deprecated. The Google Developers Console
  /// [project ID or project number](https://developers.google.com/console/help/new/#projectnumber).
  /// This field has been deprecated and replaced by the parent field.
  ///
  /// [zone] - Deprecated. The name of the Google Compute Engine
  /// [zone](https://cloud.google.com/compute/docs/zones#available) in which the
  /// cluster resides. This field has been deprecated and replaced by the parent
  /// field.
  ///
  /// [clusterId] - Deprecated. The name of the cluster. This field has been
  /// deprecated and replaced by the parent field.
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
    CreateNodePoolRequest request,
    core.String projectId,
    core.String zone,
    core.String clusterId, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/projects/' +
        commons.escapeVariable('$projectId') +
        '/zones/' +
        commons.escapeVariable('$zone') +
        '/clusters/' +
        commons.escapeVariable('$clusterId') +
        '/nodePools';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return Operation.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Deletes a node pool from a cluster.
  ///
  /// Request parameters:
  ///
  /// [projectId] - Deprecated. The Google Developers Console
  /// [project ID or project number](https://developers.google.com/console/help/new/#projectnumber).
  /// This field has been deprecated and replaced by the name field.
  ///
  /// [zone] - Deprecated. The name of the Google Compute Engine
  /// [zone](https://cloud.google.com/compute/docs/zones#available) in which the
  /// cluster resides. This field has been deprecated and replaced by the name
  /// field.
  ///
  /// [clusterId] - Deprecated. The name of the cluster. This field has been
  /// deprecated and replaced by the name field.
  ///
  /// [nodePoolId] - Deprecated. The name of the node pool to delete. This field
  /// has been deprecated and replaced by the name field.
  ///
  /// [name] - The name (project, location, cluster, node pool id) of the node
  /// pool to delete. Specified in the format `projects / * /locations / *
  /// /clusters / * /nodePools / * `.
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
    core.String projectId,
    core.String zone,
    core.String clusterId,
    core.String nodePoolId, {
    core.String? name,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (name != null) 'name': [name],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/projects/' +
        commons.escapeVariable('$projectId') +
        '/zones/' +
        commons.escapeVariable('$zone') +
        '/clusters/' +
        commons.escapeVariable('$clusterId') +
        '/nodePools/' +
        commons.escapeVariable('$nodePoolId');

    final _response = await _requester.request(
      _url,
      'DELETE',
      queryParams: _queryParams,
    );
    return Operation.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Retrieves the requested node pool.
  ///
  /// Request parameters:
  ///
  /// [projectId] - Deprecated. The Google Developers Console
  /// [project ID or project number](https://developers.google.com/console/help/new/#projectnumber).
  /// This field has been deprecated and replaced by the name field.
  ///
  /// [zone] - Deprecated. The name of the Google Compute Engine
  /// [zone](https://cloud.google.com/compute/docs/zones#available) in which the
  /// cluster resides. This field has been deprecated and replaced by the name
  /// field.
  ///
  /// [clusterId] - Deprecated. The name of the cluster. This field has been
  /// deprecated and replaced by the name field.
  ///
  /// [nodePoolId] - Deprecated. The name of the node pool. This field has been
  /// deprecated and replaced by the name field.
  ///
  /// [name] - The name (project, location, cluster, node pool id) of the node
  /// pool to get. Specified in the format `projects / * /locations / *
  /// /clusters / * /nodePools / * `.
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
  async.Future<NodePool> get(
    core.String projectId,
    core.String zone,
    core.String clusterId,
    core.String nodePoolId, {
    core.String? name,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (name != null) 'name': [name],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/projects/' +
        commons.escapeVariable('$projectId') +
        '/zones/' +
        commons.escapeVariable('$zone') +
        '/clusters/' +
        commons.escapeVariable('$clusterId') +
        '/nodePools/' +
        commons.escapeVariable('$nodePoolId');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return NodePool.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Lists the node pools for a cluster.
  ///
  /// Request parameters:
  ///
  /// [projectId] - Deprecated. The Google Developers Console
  /// [project ID or project number](https://developers.google.com/console/help/new/#projectnumber).
  /// This field has been deprecated and replaced by the parent field.
  ///
  /// [zone] - Deprecated. The name of the Google Compute Engine
  /// [zone](https://cloud.google.com/compute/docs/zones#available) in which the
  /// cluster resides. This field has been deprecated and replaced by the parent
  /// field.
  ///
  /// [clusterId] - Deprecated. The name of the cluster. This field has been
  /// deprecated and replaced by the parent field.
  ///
  /// [parent] - The parent (project, location, cluster name) where the node
  /// pools will be listed. Specified in the format `projects / * /locations / *
  /// /clusters / * `.
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
    core.String projectId,
    core.String zone,
    core.String clusterId, {
    core.String? parent,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (parent != null) 'parent': [parent],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/projects/' +
        commons.escapeVariable('$projectId') +
        '/zones/' +
        commons.escapeVariable('$zone') +
        '/clusters/' +
        commons.escapeVariable('$clusterId') +
        '/nodePools';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return ListNodePoolsResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Rolls back a previously Aborted or Failed NodePool upgrade.
  ///
  /// This makes no changes if the last upgrade successfully completed.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [projectId] - Deprecated. The Google Developers Console
  /// [project ID or project number](https://support.google.com/cloud/answer/6158840).
  /// This field has been deprecated and replaced by the name field.
  ///
  /// [zone] - Deprecated. The name of the Google Compute Engine
  /// [zone](https://cloud.google.com/compute/docs/zones#available) in which the
  /// cluster resides. This field has been deprecated and replaced by the name
  /// field.
  ///
  /// [clusterId] - Deprecated. The name of the cluster to rollback. This field
  /// has been deprecated and replaced by the name field.
  ///
  /// [nodePoolId] - Deprecated. The name of the node pool to rollback. This
  /// field has been deprecated and replaced by the name field.
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
    core.String nodePoolId, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/projects/' +
        commons.escapeVariable('$projectId') +
        '/zones/' +
        commons.escapeVariable('$zone') +
        '/clusters/' +
        commons.escapeVariable('$clusterId') +
        '/nodePools/' +
        commons.escapeVariable('$nodePoolId') +
        ':rollback';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return Operation.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Sets the NodeManagement options for a node pool.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [projectId] - Deprecated. The Google Developers Console
  /// [project ID or project number](https://support.google.com/cloud/answer/6158840).
  /// This field has been deprecated and replaced by the name field.
  ///
  /// [zone] - Deprecated. The name of the Google Compute Engine
  /// [zone](https://cloud.google.com/compute/docs/zones#available) in which the
  /// cluster resides. This field has been deprecated and replaced by the name
  /// field.
  ///
  /// [clusterId] - Deprecated. The name of the cluster to update. This field
  /// has been deprecated and replaced by the name field.
  ///
  /// [nodePoolId] - Deprecated. The name of the node pool to update. This field
  /// has been deprecated and replaced by the name field.
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
    core.String nodePoolId, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/projects/' +
        commons.escapeVariable('$projectId') +
        '/zones/' +
        commons.escapeVariable('$zone') +
        '/clusters/' +
        commons.escapeVariable('$clusterId') +
        '/nodePools/' +
        commons.escapeVariable('$nodePoolId') +
        '/setManagement';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return Operation.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Sets the size for a specific node pool.
  ///
  /// The new size will be used for all replicas, including future replicas
  /// created by modifying NodePool.locations.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [projectId] - Deprecated. The Google Developers Console
  /// [project ID or project number](https://support.google.com/cloud/answer/6158840).
  /// This field has been deprecated and replaced by the name field.
  ///
  /// [zone] - Deprecated. The name of the Google Compute Engine
  /// [zone](https://cloud.google.com/compute/docs/zones#available) in which the
  /// cluster resides. This field has been deprecated and replaced by the name
  /// field.
  ///
  /// [clusterId] - Deprecated. The name of the cluster to update. This field
  /// has been deprecated and replaced by the name field.
  ///
  /// [nodePoolId] - Deprecated. The name of the node pool to update. This field
  /// has been deprecated and replaced by the name field.
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
    core.String nodePoolId, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/projects/' +
        commons.escapeVariable('$projectId') +
        '/zones/' +
        commons.escapeVariable('$zone') +
        '/clusters/' +
        commons.escapeVariable('$clusterId') +
        '/nodePools/' +
        commons.escapeVariable('$nodePoolId') +
        '/setSize';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return Operation.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Updates the version and/or image type for the specified node pool.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [projectId] - Deprecated. The Google Developers Console
  /// [project ID or project number](https://support.google.com/cloud/answer/6158840).
  /// This field has been deprecated and replaced by the name field.
  ///
  /// [zone] - Deprecated. The name of the Google Compute Engine
  /// [zone](https://cloud.google.com/compute/docs/zones#available) in which the
  /// cluster resides. This field has been deprecated and replaced by the name
  /// field.
  ///
  /// [clusterId] - Deprecated. The name of the cluster to upgrade. This field
  /// has been deprecated and replaced by the name field.
  ///
  /// [nodePoolId] - Deprecated. The name of the node pool to upgrade. This
  /// field has been deprecated and replaced by the name field.
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
    core.String nodePoolId, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/projects/' +
        commons.escapeVariable('$projectId') +
        '/zones/' +
        commons.escapeVariable('$zone') +
        '/clusters/' +
        commons.escapeVariable('$clusterId') +
        '/nodePools/' +
        commons.escapeVariable('$nodePoolId') +
        '/update';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return Operation.fromJson(_response as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsZonesOperationsResource {
  final commons.ApiRequester _requester;

  ProjectsZonesOperationsResource(commons.ApiRequester client)
      : _requester = client;

  /// Cancels the specified operation.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [projectId] - Deprecated. The Google Developers Console
  /// [project ID or project number](https://support.google.com/cloud/answer/6158840).
  /// This field has been deprecated and replaced by the name field.
  ///
  /// [zone] - Deprecated. The name of the Google Compute Engine
  /// [zone](https://cloud.google.com/compute/docs/zones#available) in which the
  /// operation resides. This field has been deprecated and replaced by the name
  /// field.
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
  async.Future<Empty> cancel(
    CancelOperationRequest request,
    core.String projectId,
    core.String zone,
    core.String operationId, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/projects/' +
        commons.escapeVariable('$projectId') +
        '/zones/' +
        commons.escapeVariable('$zone') +
        '/operations/' +
        commons.escapeVariable('$operationId') +
        ':cancel';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return Empty.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Gets the specified operation.
  ///
  /// Request parameters:
  ///
  /// [projectId] - Deprecated. The Google Developers Console
  /// [project ID or project number](https://support.google.com/cloud/answer/6158840).
  /// This field has been deprecated and replaced by the name field.
  ///
  /// [zone] - Deprecated. The name of the Google Compute Engine
  /// [zone](https://cloud.google.com/compute/docs/zones#available) in which the
  /// cluster resides. This field has been deprecated and replaced by the name
  /// field.
  ///
  /// [operationId] - Deprecated. The server-assigned `name` of the operation.
  /// This field has been deprecated and replaced by the name field.
  ///
  /// [name] - The name (project, location, operation id) of the operation to
  /// get. Specified in the format `projects / * /locations / * /operations / *
  /// `.
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
    core.String projectId,
    core.String zone,
    core.String operationId, {
    core.String? name,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (name != null) 'name': [name],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/projects/' +
        commons.escapeVariable('$projectId') +
        '/zones/' +
        commons.escapeVariable('$zone') +
        '/operations/' +
        commons.escapeVariable('$operationId');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return Operation.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Lists all operations in a project in a specific zone or all zones.
  ///
  /// Request parameters:
  ///
  /// [projectId] - Deprecated. The Google Developers Console
  /// [project ID or project number](https://support.google.com/cloud/answer/6158840).
  /// This field has been deprecated and replaced by the parent field.
  ///
  /// [zone] - Deprecated. The name of the Google Compute Engine
  /// [zone](https://cloud.google.com/compute/docs/zones#available) to return
  /// operations for, or `-` for all zones. This field has been deprecated and
  /// replaced by the parent field.
  ///
  /// [parent] - The parent (project and location) where the operations will be
  /// listed. Specified in the format `projects / * /locations / * `. Location
  /// "-" matches all zones and all regions.
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
    core.String projectId,
    core.String zone, {
    core.String? parent,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (parent != null) 'parent': [parent],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/projects/' +
        commons.escapeVariable('$projectId') +
        '/zones/' +
        commons.escapeVariable('$zone') +
        '/operations';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return ListOperationsResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

/// AcceleratorConfig represents a Hardware Accelerator request.
class AcceleratorConfig {
  /// The number of the accelerator cards exposed to an instance.
  core.String? acceleratorCount;

  /// The accelerator type resource name.
  ///
  /// List of supported accelerators
  /// [here](https://cloud.google.com/compute/docs/gpus)
  core.String? acceleratorType;

  /// Size of partitions to create on the GPU.
  ///
  /// Valid values are described in the NVIDIA
  /// [mig user guide](https://docs.nvidia.com/datacenter/tesla/mig-user-guide/#partitioning).
  core.String? gpuPartitionSize;

  AcceleratorConfig({
    this.acceleratorCount,
    this.acceleratorType,
    this.gpuPartitionSize,
  });

  AcceleratorConfig.fromJson(core.Map _json)
      : this(
          acceleratorCount: _json.containsKey('acceleratorCount')
              ? _json['acceleratorCount'] as core.String
              : null,
          acceleratorType: _json.containsKey('acceleratorType')
              ? _json['acceleratorType'] as core.String
              : null,
          gpuPartitionSize: _json.containsKey('gpuPartitionSize')
              ? _json['gpuPartitionSize'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (acceleratorCount != null) 'acceleratorCount': acceleratorCount!,
        if (acceleratorType != null) 'acceleratorType': acceleratorType!,
        if (gpuPartitionSize != null) 'gpuPartitionSize': gpuPartitionSize!,
      };
}

/// Configuration for the addons that can be automatically spun up in the
/// cluster, enabling additional functionality.
class AddonsConfig {
  /// Configuration for the Cloud Run addon, which allows the user to use a
  /// managed Knative service.
  CloudRunConfig? cloudRunConfig;

  /// Configuration for the ConfigConnector add-on, a Kubernetes extension to
  /// manage hosted GCP services through the Kubernetes API
  ConfigConnectorConfig? configConnectorConfig;

  /// Configuration for NodeLocalDNS, a dns cache running on cluster nodes
  DnsCacheConfig? dnsCacheConfig;

  /// Configuration for the Compute Engine Persistent Disk CSI driver.
  GcePersistentDiskCsiDriverConfig? gcePersistentDiskCsiDriverConfig;

  /// Configuration for the GCP Filestore CSI driver.
  GcpFilestoreCsiDriverConfig? gcpFilestoreCsiDriverConfig;

  /// Configuration for the horizontal pod autoscaling feature, which increases
  /// or decreases the number of replica pods a replication controller has based
  /// on the resource usage of the existing pods.
  HorizontalPodAutoscaling? horizontalPodAutoscaling;

  /// Configuration for the HTTP (L7) load balancing controller addon, which
  /// makes it easy to set up HTTP load balancers for services in a cluster.
  HttpLoadBalancing? httpLoadBalancing;

  /// Configuration for the Kubernetes Dashboard.
  ///
  /// This addon is deprecated, and will be disabled in 1.15. It is recommended
  /// to use the Cloud Console to manage and monitor your Kubernetes clusters,
  /// workloads and applications. For more information, see:
  /// https://cloud.google.com/kubernetes-engine/docs/concepts/dashboards
  KubernetesDashboard? kubernetesDashboard;

  /// Configuration for NetworkPolicy.
  ///
  /// This only tracks whether the addon is enabled or not on the Master, it
  /// does not track whether network policy is enabled for the nodes.
  NetworkPolicyConfig? networkPolicyConfig;

  AddonsConfig({
    this.cloudRunConfig,
    this.configConnectorConfig,
    this.dnsCacheConfig,
    this.gcePersistentDiskCsiDriverConfig,
    this.gcpFilestoreCsiDriverConfig,
    this.horizontalPodAutoscaling,
    this.httpLoadBalancing,
    this.kubernetesDashboard,
    this.networkPolicyConfig,
  });

  AddonsConfig.fromJson(core.Map _json)
      : this(
          cloudRunConfig: _json.containsKey('cloudRunConfig')
              ? CloudRunConfig.fromJson(_json['cloudRunConfig']
                  as core.Map<core.String, core.dynamic>)
              : null,
          configConnectorConfig: _json.containsKey('configConnectorConfig')
              ? ConfigConnectorConfig.fromJson(_json['configConnectorConfig']
                  as core.Map<core.String, core.dynamic>)
              : null,
          dnsCacheConfig: _json.containsKey('dnsCacheConfig')
              ? DnsCacheConfig.fromJson(_json['dnsCacheConfig']
                  as core.Map<core.String, core.dynamic>)
              : null,
          gcePersistentDiskCsiDriverConfig:
              _json.containsKey('gcePersistentDiskCsiDriverConfig')
                  ? GcePersistentDiskCsiDriverConfig.fromJson(
                      _json['gcePersistentDiskCsiDriverConfig']
                          as core.Map<core.String, core.dynamic>)
                  : null,
          gcpFilestoreCsiDriverConfig:
              _json.containsKey('gcpFilestoreCsiDriverConfig')
                  ? GcpFilestoreCsiDriverConfig.fromJson(
                      _json['gcpFilestoreCsiDriverConfig']
                          as core.Map<core.String, core.dynamic>)
                  : null,
          horizontalPodAutoscaling:
              _json.containsKey('horizontalPodAutoscaling')
                  ? HorizontalPodAutoscaling.fromJson(
                      _json['horizontalPodAutoscaling']
                          as core.Map<core.String, core.dynamic>)
                  : null,
          httpLoadBalancing: _json.containsKey('httpLoadBalancing')
              ? HttpLoadBalancing.fromJson(_json['httpLoadBalancing']
                  as core.Map<core.String, core.dynamic>)
              : null,
          kubernetesDashboard: _json.containsKey('kubernetesDashboard')
              ? KubernetesDashboard.fromJson(_json['kubernetesDashboard']
                  as core.Map<core.String, core.dynamic>)
              : null,
          networkPolicyConfig: _json.containsKey('networkPolicyConfig')
              ? NetworkPolicyConfig.fromJson(_json['networkPolicyConfig']
                  as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (cloudRunConfig != null) 'cloudRunConfig': cloudRunConfig!,
        if (configConnectorConfig != null)
          'configConnectorConfig': configConnectorConfig!,
        if (dnsCacheConfig != null) 'dnsCacheConfig': dnsCacheConfig!,
        if (gcePersistentDiskCsiDriverConfig != null)
          'gcePersistentDiskCsiDriverConfig': gcePersistentDiskCsiDriverConfig!,
        if (gcpFilestoreCsiDriverConfig != null)
          'gcpFilestoreCsiDriverConfig': gcpFilestoreCsiDriverConfig!,
        if (horizontalPodAutoscaling != null)
          'horizontalPodAutoscaling': horizontalPodAutoscaling!,
        if (httpLoadBalancing != null) 'httpLoadBalancing': httpLoadBalancing!,
        if (kubernetesDashboard != null)
          'kubernetesDashboard': kubernetesDashboard!,
        if (networkPolicyConfig != null)
          'networkPolicyConfig': networkPolicyConfig!,
      };
}

/// Specifies options for controlling advanced machine features.
class AdvancedMachineFeatures {
  /// The number of threads per physical core.
  ///
  /// To disable simultaneous multithreading (SMT) set this to 1. If unset, the
  /// maximum number of threads supported per core by the underlying processor
  /// is assumed.
  core.String? threadsPerCore;

  AdvancedMachineFeatures({
    this.threadsPerCore,
  });

  AdvancedMachineFeatures.fromJson(core.Map _json)
      : this(
          threadsPerCore: _json.containsKey('threadsPerCore')
              ? _json['threadsPerCore'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (threadsPerCore != null) 'threadsPerCore': threadsPerCore!,
      };
}

/// Configuration for returning group information from authenticators.
class AuthenticatorGroupsConfig {
  /// Whether this cluster should return group membership lookups during
  /// authentication using a group of security groups.
  core.bool? enabled;

  /// The name of the security group-of-groups to be used.
  ///
  /// Only relevant if enabled = true.
  core.String? securityGroup;

  AuthenticatorGroupsConfig({
    this.enabled,
    this.securityGroup,
  });

  AuthenticatorGroupsConfig.fromJson(core.Map _json)
      : this(
          enabled: _json.containsKey('enabled')
              ? _json['enabled'] as core.bool
              : null,
          securityGroup: _json.containsKey('securityGroup')
              ? _json['securityGroup'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (enabled != null) 'enabled': enabled!,
        if (securityGroup != null) 'securityGroup': securityGroup!,
      };
}

/// AutoUpgradeOptions defines the set of options for the user to control how
/// the Auto Upgrades will proceed.
class AutoUpgradeOptions {
  /// This field is set when upgrades are about to commence with the approximate
  /// start time for the upgrades, in
  /// [RFC3339](https://www.ietf.org/rfc/rfc3339.txt) text format.
  ///
  /// Output only.
  core.String? autoUpgradeStartTime;

  /// This field is set when upgrades are about to commence with the description
  /// of the upgrade.
  ///
  /// Output only.
  core.String? description;

  AutoUpgradeOptions({
    this.autoUpgradeStartTime,
    this.description,
  });

  AutoUpgradeOptions.fromJson(core.Map _json)
      : this(
          autoUpgradeStartTime: _json.containsKey('autoUpgradeStartTime')
              ? _json['autoUpgradeStartTime'] as core.String
              : null,
          description: _json.containsKey('description')
              ? _json['description'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (autoUpgradeStartTime != null)
          'autoUpgradeStartTime': autoUpgradeStartTime!,
        if (description != null) 'description': description!,
      };
}

/// Autopilot is the configuration for Autopilot settings on the cluster.
class Autopilot {
  /// Enable Autopilot
  core.bool? enabled;

  Autopilot({
    this.enabled,
  });

  Autopilot.fromJson(core.Map _json)
      : this(
          enabled: _json.containsKey('enabled')
              ? _json['enabled'] as core.bool
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (enabled != null) 'enabled': enabled!,
      };
}

/// AutoprovisioningNodePoolDefaults contains defaults for a node pool created
/// by NAP.
class AutoprovisioningNodePoolDefaults {
  /// The Customer Managed Encryption Key used to encrypt the boot disk attached
  /// to each node in the node pool.
  ///
  /// This should be of the form
  /// projects/\[KEY_PROJECT_ID\]/locations/\[LOCATION\]/keyRings/\[RING_NAME\]/cryptoKeys/\[KEY_NAME\].
  /// For more information about protecting resources with Cloud KMS Keys please
  /// see:
  /// https://cloud.google.com/compute/docs/disks/customer-managed-encryption
  core.String? bootDiskKmsKey;

  /// Size of the disk attached to each node, specified in GB.
  ///
  /// The smallest allowed disk size is 10GB. If unspecified, the default disk
  /// size is 100GB.
  core.int? diskSizeGb;

  /// Type of the disk attached to each node (e.g. 'pd-standard', 'pd-ssd' or
  /// 'pd-balanced') If unspecified, the default disk type is 'pd-standard'
  core.String? diskType;

  /// The image type to use for NAP created node.
  core.String? imageType;

  /// Specifies the node management options for NAP created node-pools.
  NodeManagement? management;

  /// Minimum CPU platform to be used for NAP created node pools.
  ///
  /// The instance may be scheduled on the specified or newer CPU platform.
  /// Applicable values are the friendly names of CPU platforms, such as
  /// minCpuPlatform: Intel Haswell or minCpuPlatform: Intel Sandy Bridge. For
  /// more information, read
  /// [how to specify min CPU platform](https://cloud.google.com/compute/docs/instances/specify-min-cpu-platform)
  /// This field is deprecated, min_cpu_platform should be specified using
  /// cloud.google.com/requested-min-cpu-platform label selector on the pod. To
  /// unset the min cpu platform field pass "automatic" as field value.
  ///
  /// Deprecated.
  core.String? minCpuPlatform;

  /// Scopes that are used by NAP when creating node pools.
  core.List<core.String>? oauthScopes;

  /// The Google Cloud Platform Service Account to be used by the node VMs.
  core.String? serviceAccount;

  /// Shielded Instance options.
  ShieldedInstanceConfig? shieldedInstanceConfig;

  /// Specifies the upgrade settings for NAP created node pools
  UpgradeSettings? upgradeSettings;

  AutoprovisioningNodePoolDefaults({
    this.bootDiskKmsKey,
    this.diskSizeGb,
    this.diskType,
    this.imageType,
    this.management,
    this.minCpuPlatform,
    this.oauthScopes,
    this.serviceAccount,
    this.shieldedInstanceConfig,
    this.upgradeSettings,
  });

  AutoprovisioningNodePoolDefaults.fromJson(core.Map _json)
      : this(
          bootDiskKmsKey: _json.containsKey('bootDiskKmsKey')
              ? _json['bootDiskKmsKey'] as core.String
              : null,
          diskSizeGb: _json.containsKey('diskSizeGb')
              ? _json['diskSizeGb'] as core.int
              : null,
          diskType: _json.containsKey('diskType')
              ? _json['diskType'] as core.String
              : null,
          imageType: _json.containsKey('imageType')
              ? _json['imageType'] as core.String
              : null,
          management: _json.containsKey('management')
              ? NodeManagement.fromJson(
                  _json['management'] as core.Map<core.String, core.dynamic>)
              : null,
          minCpuPlatform: _json.containsKey('minCpuPlatform')
              ? _json['minCpuPlatform'] as core.String
              : null,
          oauthScopes: _json.containsKey('oauthScopes')
              ? (_json['oauthScopes'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          serviceAccount: _json.containsKey('serviceAccount')
              ? _json['serviceAccount'] as core.String
              : null,
          shieldedInstanceConfig: _json.containsKey('shieldedInstanceConfig')
              ? ShieldedInstanceConfig.fromJson(_json['shieldedInstanceConfig']
                  as core.Map<core.String, core.dynamic>)
              : null,
          upgradeSettings: _json.containsKey('upgradeSettings')
              ? UpgradeSettings.fromJson(_json['upgradeSettings']
                  as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (bootDiskKmsKey != null) 'bootDiskKmsKey': bootDiskKmsKey!,
        if (diskSizeGb != null) 'diskSizeGb': diskSizeGb!,
        if (diskType != null) 'diskType': diskType!,
        if (imageType != null) 'imageType': imageType!,
        if (management != null) 'management': management!,
        if (minCpuPlatform != null) 'minCpuPlatform': minCpuPlatform!,
        if (oauthScopes != null) 'oauthScopes': oauthScopes!,
        if (serviceAccount != null) 'serviceAccount': serviceAccount!,
        if (shieldedInstanceConfig != null)
          'shieldedInstanceConfig': shieldedInstanceConfig!,
        if (upgradeSettings != null) 'upgradeSettings': upgradeSettings!,
      };
}

/// Parameters for using BigQuery as the destination of resource usage export.
class BigQueryDestination {
  /// The ID of a BigQuery Dataset.
  core.String? datasetId;

  BigQueryDestination({
    this.datasetId,
  });

  BigQueryDestination.fromJson(core.Map _json)
      : this(
          datasetId: _json.containsKey('datasetId')
              ? _json['datasetId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (datasetId != null) 'datasetId': datasetId!,
      };
}

/// Configuration for Binary Authorization.
class BinaryAuthorization {
  /// Enable Binary Authorization for this cluster.
  ///
  /// If enabled, all container images will be validated by Binary
  /// Authorization.
  core.bool? enabled;

  BinaryAuthorization({
    this.enabled,
  });

  BinaryAuthorization.fromJson(core.Map _json)
      : this(
          enabled: _json.containsKey('enabled')
              ? _json['enabled'] as core.bool
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (enabled != null) 'enabled': enabled!,
      };
}

/// CancelOperationRequest cancels a single operation.
class CancelOperationRequest {
  /// The name (project, location, operation id) of the operation to cancel.
  ///
  /// Specified in the format `projects / * /locations / * /operations / * `.
  core.String? name;

  /// The server-assigned `name` of the operation.
  ///
  /// This field has been deprecated and replaced by the name field.
  ///
  /// Deprecated.
  core.String? operationId;

  /// The Google Developers Console
  /// [project ID or project number](https://support.google.com/cloud/answer/6158840).
  ///
  /// This field has been deprecated and replaced by the name field.
  ///
  /// Deprecated.
  core.String? projectId;

  /// The name of the Google Compute Engine
  /// [zone](https://cloud.google.com/compute/docs/zones#available) in which the
  /// operation resides.
  ///
  /// This field has been deprecated and replaced by the name field.
  ///
  /// Deprecated.
  core.String? zone;

  CancelOperationRequest({
    this.name,
    this.operationId,
    this.projectId,
    this.zone,
  });

  CancelOperationRequest.fromJson(core.Map _json)
      : this(
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          operationId: _json.containsKey('operationId')
              ? _json['operationId'] as core.String
              : null,
          projectId: _json.containsKey('projectId')
              ? _json['projectId'] as core.String
              : null,
          zone: _json.containsKey('zone') ? _json['zone'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (name != null) 'name': name!,
        if (operationId != null) 'operationId': operationId!,
        if (projectId != null) 'projectId': projectId!,
        if (zone != null) 'zone': zone!,
      };
}

/// CidrBlock contains an optional name and one CIDR block.
class CidrBlock {
  /// cidr_block must be specified in CIDR notation.
  core.String? cidrBlock;

  /// display_name is an optional field for users to identify CIDR blocks.
  core.String? displayName;

  CidrBlock({
    this.cidrBlock,
    this.displayName,
  });

  CidrBlock.fromJson(core.Map _json)
      : this(
          cidrBlock: _json.containsKey('cidrBlock')
              ? _json['cidrBlock'] as core.String
              : null,
          displayName: _json.containsKey('displayName')
              ? _json['displayName'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (cidrBlock != null) 'cidrBlock': cidrBlock!,
        if (displayName != null) 'displayName': displayName!,
      };
}

/// Configuration for client certificates on the cluster.
class ClientCertificateConfig {
  /// Issue a client certificate.
  core.bool? issueClientCertificate;

  ClientCertificateConfig({
    this.issueClientCertificate,
  });

  ClientCertificateConfig.fromJson(core.Map _json)
      : this(
          issueClientCertificate: _json.containsKey('issueClientCertificate')
              ? _json['issueClientCertificate'] as core.bool
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (issueClientCertificate != null)
          'issueClientCertificate': issueClientCertificate!,
      };
}

/// Configuration options for the Cloud Run feature.
class CloudRunConfig {
  /// Whether Cloud Run addon is enabled for this cluster.
  core.bool? disabled;

  /// Which load balancer type is installed for Cloud Run.
  /// Possible string values are:
  /// - "LOAD_BALANCER_TYPE_UNSPECIFIED" : Load balancer type for Cloud Run is
  /// unspecified.
  /// - "LOAD_BALANCER_TYPE_EXTERNAL" : Install external load balancer for Cloud
  /// Run.
  /// - "LOAD_BALANCER_TYPE_INTERNAL" : Install internal load balancer for Cloud
  /// Run.
  core.String? loadBalancerType;

  CloudRunConfig({
    this.disabled,
    this.loadBalancerType,
  });

  CloudRunConfig.fromJson(core.Map _json)
      : this(
          disabled: _json.containsKey('disabled')
              ? _json['disabled'] as core.bool
              : null,
          loadBalancerType: _json.containsKey('loadBalancerType')
              ? _json['loadBalancerType'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (disabled != null) 'disabled': disabled!,
        if (loadBalancerType != null) 'loadBalancerType': loadBalancerType!,
      };
}

/// A Google Kubernetes Engine cluster.
class Cluster {
  /// Configurations for the various addons available to run in the cluster.
  AddonsConfig? addonsConfig;

  /// Configuration controlling RBAC group membership information.
  AuthenticatorGroupsConfig? authenticatorGroupsConfig;

  /// Autopilot configuration for the cluster.
  Autopilot? autopilot;

  /// Cluster-level autoscaling configuration.
  ClusterAutoscaling? autoscaling;

  /// Configuration for Binary Authorization.
  BinaryAuthorization? binaryAuthorization;

  /// The IP address range of the container pods in this cluster, in
  /// [CIDR](http://en.wikipedia.org/wiki/Classless_Inter-Domain_Routing)
  /// notation (e.g. `10.96.0.0/14`).
  ///
  /// Leave blank to have one automatically chosen or specify a `/14` block in
  /// `10.0.0.0/8`.
  core.String? clusterIpv4Cidr;

  /// Which conditions caused the current cluster state.
  core.List<StatusCondition>? conditions;

  /// Configuration of Confidential Nodes.
  ///
  /// All the nodes in the cluster will be Confidential VM once enabled.
  ConfidentialNodes? confidentialNodes;

  /// The time the cluster was created, in
  /// [RFC3339](https://www.ietf.org/rfc/rfc3339.txt) text format.
  ///
  /// Output only.
  core.String? createTime;

  /// The current software version of the master endpoint.
  ///
  /// Output only.
  core.String? currentMasterVersion;

  /// The number of nodes currently in the cluster.
  ///
  /// Deprecated. Call Kubernetes API directly to retrieve node information.
  ///
  /// Output only.
  core.int? currentNodeCount;

  /// Deprecated, use
  /// [NodePools.version](https://cloud.google.com/kubernetes-engine/docs/reference/rest/v1/projects.locations.clusters.nodePools)
  /// instead.
  ///
  /// The current version of the node software components. If they are currently
  /// at multiple versions because they're in the process of being upgraded,
  /// this reflects the minimum version of all nodes.
  ///
  /// Output only.
  core.String? currentNodeVersion;

  /// Configuration of etcd encryption.
  DatabaseEncryption? databaseEncryption;

  /// The default constraint on the maximum number of pods that can be run
  /// simultaneously on a node in the node pool of this cluster.
  ///
  /// Only honored if cluster created with IP Alias support.
  MaxPodsConstraint? defaultMaxPodsConstraint;

  /// An optional description of this cluster.
  core.String? description;

  /// Kubernetes alpha features are enabled on this cluster.
  ///
  /// This includes alpha API groups (e.g. v1alpha1) and features that may not
  /// be production ready in the kubernetes version of the master and nodes. The
  /// cluster has no SLA for uptime and master/node upgrades are disabled. Alpha
  /// enabled clusters are automatically deleted thirty days after creation.
  core.bool? enableKubernetesAlpha;

  /// Enable the ability to use Cloud TPUs in this cluster.
  core.bool? enableTpu;

  /// The IP address of this cluster's master endpoint.
  ///
  /// The endpoint can be accessed from the internet at
  /// `https://username:password@endpoint/`. See the `masterAuth` property of
  /// this resource for username and password information.
  ///
  /// Output only.
  core.String? endpoint;

  /// The time the cluster will be automatically deleted in
  /// [RFC3339](https://www.ietf.org/rfc/rfc3339.txt) text format.
  ///
  /// Output only.
  core.String? expireTime;

  /// Unique id for the cluster.
  ///
  /// Output only.
  core.String? id;

  /// Configuration for Identity Service component.
  IdentityServiceConfig? identityServiceConfig;

  /// The initial Kubernetes version for this cluster.
  ///
  /// Valid versions are those found in validMasterVersions returned by
  /// getServerConfig. The version can be upgraded over time; such upgrades are
  /// reflected in currentMasterVersion and currentNodeVersion. Users may
  /// specify either explicit versions offered by Kubernetes Engine or version
  /// aliases, which have the following behavior: - "latest": picks the highest
  /// valid Kubernetes version - "1.X": picks the highest valid patch+gke.N
  /// patch in the 1.X version - "1.X.Y": picks the highest valid gke.N patch in
  /// the 1.X.Y version - "1.X.Y-gke.N": picks an explicit Kubernetes version -
  /// "","-": picks the default Kubernetes version
  core.String? initialClusterVersion;

  /// The number of nodes to create in this cluster.
  ///
  /// You must ensure that your Compute Engine
  /// [resource quota](https://cloud.google.com/compute/quotas) is sufficient
  /// for this number of instances. You must also have available firewall and
  /// routes quota. For requests, this field should only be used in lieu of a
  /// "node_pool" object, since this configuration (along with the
  /// "node_config") will be used to create a "NodePool" object with an
  /// auto-generated name. Do not use this and a node_pool at the same time.
  /// This field is deprecated, use node_pool.initial_node_count instead.
  core.int? initialNodeCount;

  /// Use node_pools.instance_group_urls.
  ///
  /// Deprecated.
  core.List<core.String>? instanceGroupUrls;

  /// Configuration for cluster IP allocation.
  IPAllocationPolicy? ipAllocationPolicy;

  /// The fingerprint of the set of labels for this cluster.
  core.String? labelFingerprint;

  /// Configuration for the legacy ABAC authorization mode.
  LegacyAbac? legacyAbac;

  /// The name of the Google Compute Engine
  /// [zone](https://cloud.google.com/compute/docs/regions-zones/regions-zones#available)
  /// or
  /// [region](https://cloud.google.com/compute/docs/regions-zones/regions-zones#available)
  /// in which the cluster resides.
  ///
  /// Output only.
  core.String? location;

  /// The list of Google Compute Engine
  /// [zones](https://cloud.google.com/compute/docs/zones#available) in which
  /// the cluster's nodes should be located.
  ///
  /// This field provides a default value if
  /// [NodePool.Locations](https://cloud.google.com/kubernetes-engine/docs/reference/rest/v1/projects.locations.clusters.nodePools#NodePool.FIELDS.locations)
  /// are not specified during node pool creation. Warning: changing cluster
  /// locations will update the
  /// [NodePool.Locations](https://cloud.google.com/kubernetes-engine/docs/reference/rest/v1/projects.locations.clusters.nodePools#NodePool.FIELDS.locations)
  /// of all node pools and will result in nodes being added and/or removed.
  core.List<core.String>? locations;

  /// Logging configuration for the cluster.
  LoggingConfig? loggingConfig;

  /// The logging service the cluster should use to write logs.
  ///
  /// Currently available options: * `logging.googleapis.com/kubernetes` - The
  /// Cloud Logging service with a Kubernetes-native resource model *
  /// `logging.googleapis.com` - The legacy Cloud Logging service (no longer
  /// available as of GKE 1.15). * `none` - no logs will be exported from the
  /// cluster. If left as an empty string,`logging.googleapis.com/kubernetes`
  /// will be used for GKE 1.14+ or `logging.googleapis.com` for earlier
  /// versions.
  core.String? loggingService;

  /// Configure the maintenance policy for this cluster.
  MaintenancePolicy? maintenancePolicy;

  /// The authentication information for accessing the master endpoint.
  ///
  /// If unspecified, the defaults are used: For clusters before v1.12, if
  /// master_auth is unspecified, `username` will be set to "admin", a random
  /// password will be generated, and a client certificate will be issued.
  MasterAuth? masterAuth;

  /// The configuration options for master authorized networks feature.
  MasterAuthorizedNetworksConfig? masterAuthorizedNetworksConfig;

  /// Configuration for issuance of mTLS keys and certificates to Kubernetes
  /// pods.
  MeshCertificates? meshCertificates;

  /// Monitoring configuration for the cluster.
  MonitoringConfig? monitoringConfig;

  /// The monitoring service the cluster should use to write metrics.
  ///
  /// Currently available options: * "monitoring.googleapis.com/kubernetes" -
  /// The Cloud Monitoring service with a Kubernetes-native resource model *
  /// `monitoring.googleapis.com` - The legacy Cloud Monitoring service (no
  /// longer available as of GKE 1.15). * `none` - No metrics will be exported
  /// from the cluster. If left as an empty
  /// string,`monitoring.googleapis.com/kubernetes` will be used for GKE 1.14+
  /// or `monitoring.googleapis.com` for earlier versions.
  core.String? monitoringService;

  /// The name of this cluster.
  ///
  /// The name must be unique within this project and location (e.g. zone or
  /// region), and can be up to 40 characters with the following restrictions: *
  /// Lowercase letters, numbers, and hyphens only. * Must start with a letter.
  /// * Must end with a number or a letter.
  core.String? name;

  /// The name of the Google Compute Engine
  /// [network](https://cloud.google.com/compute/docs/networks-and-firewalls#networks)
  /// to which the cluster is connected.
  ///
  /// If left unspecified, the `default` network will be used.
  core.String? network;

  /// Configuration for cluster networking.
  NetworkConfig? networkConfig;

  /// Configuration options for the NetworkPolicy feature.
  NetworkPolicy? networkPolicy;

  /// Parameters used in creating the cluster's nodes.
  ///
  /// For requests, this field should only be used in lieu of a "node_pool"
  /// object, since this configuration (along with the "initial_node_count")
  /// will be used to create a "NodePool" object with an auto-generated name. Do
  /// not use this and a node_pool at the same time. For responses, this field
  /// will be populated with the node configuration of the first node pool. (For
  /// configuration of each node pool, see `node_pool.config`) If unspecified,
  /// the defaults are used. This field is deprecated, use node_pool.config
  /// instead.
  NodeConfig? nodeConfig;

  /// The size of the address space on each node for hosting containers.
  ///
  /// This is provisioned from within the `container_ipv4_cidr` range. This
  /// field will only be set when cluster is in route-based network mode.
  ///
  /// Output only.
  core.int? nodeIpv4CidrSize;

  /// Node pool configs that apply to all auto-provisioned node pools in
  /// autopilot clusters and node auto-provisioning enabled clusters.
  NodePoolAutoConfig? nodePoolAutoConfig;

  /// Default NodePool settings for the entire cluster.
  ///
  /// These settings are overridden if specified on the specific NodePool
  /// object.
  NodePoolDefaults? nodePoolDefaults;

  /// The node pools associated with this cluster.
  ///
  /// This field should not be set if "node_config" or "initial_node_count" are
  /// specified.
  core.List<NodePool>? nodePools;

  /// Notification configuration of the cluster.
  NotificationConfig? notificationConfig;

  /// Configuration for private cluster.
  PrivateClusterConfig? privateClusterConfig;

  /// Release channel configuration.
  ReleaseChannel? releaseChannel;

  /// The resource labels for the cluster to use to annotate any related Google
  /// Compute Engine resources.
  core.Map<core.String, core.String>? resourceLabels;

  /// Configuration for exporting resource usages.
  ///
  /// Resource usage export is disabled when this config is unspecified.
  ResourceUsageExportConfig? resourceUsageExportConfig;

  /// Server-defined URL for the resource.
  ///
  /// Output only.
  core.String? selfLink;

  /// The IP address range of the Kubernetes services in this cluster, in
  /// [CIDR](http://en.wikipedia.org/wiki/Classless_Inter-Domain_Routing)
  /// notation (e.g. `1.2.3.4/29`).
  ///
  /// Service addresses are typically put in the last `/16` from the container
  /// CIDR.
  ///
  /// Output only.
  core.String? servicesIpv4Cidr;

  /// Shielded Nodes configuration.
  ShieldedNodes? shieldedNodes;

  /// The current status of this cluster.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "STATUS_UNSPECIFIED" : Not set.
  /// - "PROVISIONING" : The PROVISIONING state indicates the cluster is being
  /// created.
  /// - "RUNNING" : The RUNNING state indicates the cluster has been created and
  /// is fully usable.
  /// - "RECONCILING" : The RECONCILING state indicates that some work is
  /// actively being done on the cluster, such as upgrading the master or node
  /// software. Details can be found in the `statusMessage` field.
  /// - "STOPPING" : The STOPPING state indicates the cluster is being deleted.
  /// - "ERROR" : The ERROR state indicates the cluster is unusable. It will be
  /// automatically deleted. Details can be found in the `statusMessage` field.
  /// - "DEGRADED" : The DEGRADED state indicates the cluster requires user
  /// action to restore full functionality. Details can be found in the
  /// `statusMessage` field.
  core.String? status;

  /// Use conditions instead.
  ///
  /// Additional information about the current status of this cluster, if
  /// available.
  ///
  /// Output only. Deprecated.
  core.String? statusMessage;

  /// The name of the Google Compute Engine
  /// [subnetwork](https://cloud.google.com/compute/docs/subnetworks) to which
  /// the cluster is connected.
  core.String? subnetwork;

  /// The IP address range of the Cloud TPUs in this cluster, in
  /// [CIDR](http://en.wikipedia.org/wiki/Classless_Inter-Domain_Routing)
  /// notation (e.g. `1.2.3.4/29`).
  ///
  /// Output only.
  core.String? tpuIpv4CidrBlock;

  /// Cluster-level Vertical Pod Autoscaling configuration.
  VerticalPodAutoscaling? verticalPodAutoscaling;

  /// Configuration for the use of Kubernetes Service Accounts in GCP IAM
  /// policies.
  WorkloadIdentityConfig? workloadIdentityConfig;

  /// The name of the Google Compute Engine
  /// [zone](https://cloud.google.com/compute/docs/zones#available) in which the
  /// cluster resides.
  ///
  /// This field is deprecated, use location instead.
  ///
  /// Output only.
  core.String? zone;

  Cluster({
    this.addonsConfig,
    this.authenticatorGroupsConfig,
    this.autopilot,
    this.autoscaling,
    this.binaryAuthorization,
    this.clusterIpv4Cidr,
    this.conditions,
    this.confidentialNodes,
    this.createTime,
    this.currentMasterVersion,
    this.currentNodeCount,
    this.currentNodeVersion,
    this.databaseEncryption,
    this.defaultMaxPodsConstraint,
    this.description,
    this.enableKubernetesAlpha,
    this.enableTpu,
    this.endpoint,
    this.expireTime,
    this.id,
    this.identityServiceConfig,
    this.initialClusterVersion,
    this.initialNodeCount,
    this.instanceGroupUrls,
    this.ipAllocationPolicy,
    this.labelFingerprint,
    this.legacyAbac,
    this.location,
    this.locations,
    this.loggingConfig,
    this.loggingService,
    this.maintenancePolicy,
    this.masterAuth,
    this.masterAuthorizedNetworksConfig,
    this.meshCertificates,
    this.monitoringConfig,
    this.monitoringService,
    this.name,
    this.network,
    this.networkConfig,
    this.networkPolicy,
    this.nodeConfig,
    this.nodeIpv4CidrSize,
    this.nodePoolAutoConfig,
    this.nodePoolDefaults,
    this.nodePools,
    this.notificationConfig,
    this.privateClusterConfig,
    this.releaseChannel,
    this.resourceLabels,
    this.resourceUsageExportConfig,
    this.selfLink,
    this.servicesIpv4Cidr,
    this.shieldedNodes,
    this.status,
    this.statusMessage,
    this.subnetwork,
    this.tpuIpv4CidrBlock,
    this.verticalPodAutoscaling,
    this.workloadIdentityConfig,
    this.zone,
  });

  Cluster.fromJson(core.Map _json)
      : this(
          addonsConfig: _json.containsKey('addonsConfig')
              ? AddonsConfig.fromJson(
                  _json['addonsConfig'] as core.Map<core.String, core.dynamic>)
              : null,
          authenticatorGroupsConfig:
              _json.containsKey('authenticatorGroupsConfig')
                  ? AuthenticatorGroupsConfig.fromJson(
                      _json['authenticatorGroupsConfig']
                          as core.Map<core.String, core.dynamic>)
                  : null,
          autopilot: _json.containsKey('autopilot')
              ? Autopilot.fromJson(
                  _json['autopilot'] as core.Map<core.String, core.dynamic>)
              : null,
          autoscaling: _json.containsKey('autoscaling')
              ? ClusterAutoscaling.fromJson(
                  _json['autoscaling'] as core.Map<core.String, core.dynamic>)
              : null,
          binaryAuthorization: _json.containsKey('binaryAuthorization')
              ? BinaryAuthorization.fromJson(_json['binaryAuthorization']
                  as core.Map<core.String, core.dynamic>)
              : null,
          clusterIpv4Cidr: _json.containsKey('clusterIpv4Cidr')
              ? _json['clusterIpv4Cidr'] as core.String
              : null,
          conditions: _json.containsKey('conditions')
              ? (_json['conditions'] as core.List)
                  .map((value) => StatusCondition.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          confidentialNodes: _json.containsKey('confidentialNodes')
              ? ConfidentialNodes.fromJson(_json['confidentialNodes']
                  as core.Map<core.String, core.dynamic>)
              : null,
          createTime: _json.containsKey('createTime')
              ? _json['createTime'] as core.String
              : null,
          currentMasterVersion: _json.containsKey('currentMasterVersion')
              ? _json['currentMasterVersion'] as core.String
              : null,
          currentNodeCount: _json.containsKey('currentNodeCount')
              ? _json['currentNodeCount'] as core.int
              : null,
          currentNodeVersion: _json.containsKey('currentNodeVersion')
              ? _json['currentNodeVersion'] as core.String
              : null,
          databaseEncryption: _json.containsKey('databaseEncryption')
              ? DatabaseEncryption.fromJson(_json['databaseEncryption']
                  as core.Map<core.String, core.dynamic>)
              : null,
          defaultMaxPodsConstraint:
              _json.containsKey('defaultMaxPodsConstraint')
                  ? MaxPodsConstraint.fromJson(_json['defaultMaxPodsConstraint']
                      as core.Map<core.String, core.dynamic>)
                  : null,
          description: _json.containsKey('description')
              ? _json['description'] as core.String
              : null,
          enableKubernetesAlpha: _json.containsKey('enableKubernetesAlpha')
              ? _json['enableKubernetesAlpha'] as core.bool
              : null,
          enableTpu: _json.containsKey('enableTpu')
              ? _json['enableTpu'] as core.bool
              : null,
          endpoint: _json.containsKey('endpoint')
              ? _json['endpoint'] as core.String
              : null,
          expireTime: _json.containsKey('expireTime')
              ? _json['expireTime'] as core.String
              : null,
          id: _json.containsKey('id') ? _json['id'] as core.String : null,
          identityServiceConfig: _json.containsKey('identityServiceConfig')
              ? IdentityServiceConfig.fromJson(_json['identityServiceConfig']
                  as core.Map<core.String, core.dynamic>)
              : null,
          initialClusterVersion: _json.containsKey('initialClusterVersion')
              ? _json['initialClusterVersion'] as core.String
              : null,
          initialNodeCount: _json.containsKey('initialNodeCount')
              ? _json['initialNodeCount'] as core.int
              : null,
          instanceGroupUrls: _json.containsKey('instanceGroupUrls')
              ? (_json['instanceGroupUrls'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          ipAllocationPolicy: _json.containsKey('ipAllocationPolicy')
              ? IPAllocationPolicy.fromJson(_json['ipAllocationPolicy']
                  as core.Map<core.String, core.dynamic>)
              : null,
          labelFingerprint: _json.containsKey('labelFingerprint')
              ? _json['labelFingerprint'] as core.String
              : null,
          legacyAbac: _json.containsKey('legacyAbac')
              ? LegacyAbac.fromJson(
                  _json['legacyAbac'] as core.Map<core.String, core.dynamic>)
              : null,
          location: _json.containsKey('location')
              ? _json['location'] as core.String
              : null,
          locations: _json.containsKey('locations')
              ? (_json['locations'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          loggingConfig: _json.containsKey('loggingConfig')
              ? LoggingConfig.fromJson(
                  _json['loggingConfig'] as core.Map<core.String, core.dynamic>)
              : null,
          loggingService: _json.containsKey('loggingService')
              ? _json['loggingService'] as core.String
              : null,
          maintenancePolicy: _json.containsKey('maintenancePolicy')
              ? MaintenancePolicy.fromJson(_json['maintenancePolicy']
                  as core.Map<core.String, core.dynamic>)
              : null,
          masterAuth: _json.containsKey('masterAuth')
              ? MasterAuth.fromJson(
                  _json['masterAuth'] as core.Map<core.String, core.dynamic>)
              : null,
          masterAuthorizedNetworksConfig:
              _json.containsKey('masterAuthorizedNetworksConfig')
                  ? MasterAuthorizedNetworksConfig.fromJson(
                      _json['masterAuthorizedNetworksConfig']
                          as core.Map<core.String, core.dynamic>)
                  : null,
          meshCertificates: _json.containsKey('meshCertificates')
              ? MeshCertificates.fromJson(_json['meshCertificates']
                  as core.Map<core.String, core.dynamic>)
              : null,
          monitoringConfig: _json.containsKey('monitoringConfig')
              ? MonitoringConfig.fromJson(_json['monitoringConfig']
                  as core.Map<core.String, core.dynamic>)
              : null,
          monitoringService: _json.containsKey('monitoringService')
              ? _json['monitoringService'] as core.String
              : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          network: _json.containsKey('network')
              ? _json['network'] as core.String
              : null,
          networkConfig: _json.containsKey('networkConfig')
              ? NetworkConfig.fromJson(
                  _json['networkConfig'] as core.Map<core.String, core.dynamic>)
              : null,
          networkPolicy: _json.containsKey('networkPolicy')
              ? NetworkPolicy.fromJson(
                  _json['networkPolicy'] as core.Map<core.String, core.dynamic>)
              : null,
          nodeConfig: _json.containsKey('nodeConfig')
              ? NodeConfig.fromJson(
                  _json['nodeConfig'] as core.Map<core.String, core.dynamic>)
              : null,
          nodeIpv4CidrSize: _json.containsKey('nodeIpv4CidrSize')
              ? _json['nodeIpv4CidrSize'] as core.int
              : null,
          nodePoolAutoConfig: _json.containsKey('nodePoolAutoConfig')
              ? NodePoolAutoConfig.fromJson(_json['nodePoolAutoConfig']
                  as core.Map<core.String, core.dynamic>)
              : null,
          nodePoolDefaults: _json.containsKey('nodePoolDefaults')
              ? NodePoolDefaults.fromJson(_json['nodePoolDefaults']
                  as core.Map<core.String, core.dynamic>)
              : null,
          nodePools: _json.containsKey('nodePools')
              ? (_json['nodePools'] as core.List)
                  .map((value) => NodePool.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          notificationConfig: _json.containsKey('notificationConfig')
              ? NotificationConfig.fromJson(_json['notificationConfig']
                  as core.Map<core.String, core.dynamic>)
              : null,
          privateClusterConfig: _json.containsKey('privateClusterConfig')
              ? PrivateClusterConfig.fromJson(_json['privateClusterConfig']
                  as core.Map<core.String, core.dynamic>)
              : null,
          releaseChannel: _json.containsKey('releaseChannel')
              ? ReleaseChannel.fromJson(_json['releaseChannel']
                  as core.Map<core.String, core.dynamic>)
              : null,
          resourceLabels: _json.containsKey('resourceLabels')
              ? (_json['resourceLabels'] as core.Map<core.String, core.dynamic>)
                  .map(
                  (key, item) => core.MapEntry(
                    key,
                    item as core.String,
                  ),
                )
              : null,
          resourceUsageExportConfig:
              _json.containsKey('resourceUsageExportConfig')
                  ? ResourceUsageExportConfig.fromJson(
                      _json['resourceUsageExportConfig']
                          as core.Map<core.String, core.dynamic>)
                  : null,
          selfLink: _json.containsKey('selfLink')
              ? _json['selfLink'] as core.String
              : null,
          servicesIpv4Cidr: _json.containsKey('servicesIpv4Cidr')
              ? _json['servicesIpv4Cidr'] as core.String
              : null,
          shieldedNodes: _json.containsKey('shieldedNodes')
              ? ShieldedNodes.fromJson(
                  _json['shieldedNodes'] as core.Map<core.String, core.dynamic>)
              : null,
          status: _json.containsKey('status')
              ? _json['status'] as core.String
              : null,
          statusMessage: _json.containsKey('statusMessage')
              ? _json['statusMessage'] as core.String
              : null,
          subnetwork: _json.containsKey('subnetwork')
              ? _json['subnetwork'] as core.String
              : null,
          tpuIpv4CidrBlock: _json.containsKey('tpuIpv4CidrBlock')
              ? _json['tpuIpv4CidrBlock'] as core.String
              : null,
          verticalPodAutoscaling: _json.containsKey('verticalPodAutoscaling')
              ? VerticalPodAutoscaling.fromJson(_json['verticalPodAutoscaling']
                  as core.Map<core.String, core.dynamic>)
              : null,
          workloadIdentityConfig: _json.containsKey('workloadIdentityConfig')
              ? WorkloadIdentityConfig.fromJson(_json['workloadIdentityConfig']
                  as core.Map<core.String, core.dynamic>)
              : null,
          zone: _json.containsKey('zone') ? _json['zone'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (addonsConfig != null) 'addonsConfig': addonsConfig!,
        if (authenticatorGroupsConfig != null)
          'authenticatorGroupsConfig': authenticatorGroupsConfig!,
        if (autopilot != null) 'autopilot': autopilot!,
        if (autoscaling != null) 'autoscaling': autoscaling!,
        if (binaryAuthorization != null)
          'binaryAuthorization': binaryAuthorization!,
        if (clusterIpv4Cidr != null) 'clusterIpv4Cidr': clusterIpv4Cidr!,
        if (conditions != null) 'conditions': conditions!,
        if (confidentialNodes != null) 'confidentialNodes': confidentialNodes!,
        if (createTime != null) 'createTime': createTime!,
        if (currentMasterVersion != null)
          'currentMasterVersion': currentMasterVersion!,
        if (currentNodeCount != null) 'currentNodeCount': currentNodeCount!,
        if (currentNodeVersion != null)
          'currentNodeVersion': currentNodeVersion!,
        if (databaseEncryption != null)
          'databaseEncryption': databaseEncryption!,
        if (defaultMaxPodsConstraint != null)
          'defaultMaxPodsConstraint': defaultMaxPodsConstraint!,
        if (description != null) 'description': description!,
        if (enableKubernetesAlpha != null)
          'enableKubernetesAlpha': enableKubernetesAlpha!,
        if (enableTpu != null) 'enableTpu': enableTpu!,
        if (endpoint != null) 'endpoint': endpoint!,
        if (expireTime != null) 'expireTime': expireTime!,
        if (id != null) 'id': id!,
        if (identityServiceConfig != null)
          'identityServiceConfig': identityServiceConfig!,
        if (initialClusterVersion != null)
          'initialClusterVersion': initialClusterVersion!,
        if (initialNodeCount != null) 'initialNodeCount': initialNodeCount!,
        if (instanceGroupUrls != null) 'instanceGroupUrls': instanceGroupUrls!,
        if (ipAllocationPolicy != null)
          'ipAllocationPolicy': ipAllocationPolicy!,
        if (labelFingerprint != null) 'labelFingerprint': labelFingerprint!,
        if (legacyAbac != null) 'legacyAbac': legacyAbac!,
        if (location != null) 'location': location!,
        if (locations != null) 'locations': locations!,
        if (loggingConfig != null) 'loggingConfig': loggingConfig!,
        if (loggingService != null) 'loggingService': loggingService!,
        if (maintenancePolicy != null) 'maintenancePolicy': maintenancePolicy!,
        if (masterAuth != null) 'masterAuth': masterAuth!,
        if (masterAuthorizedNetworksConfig != null)
          'masterAuthorizedNetworksConfig': masterAuthorizedNetworksConfig!,
        if (meshCertificates != null) 'meshCertificates': meshCertificates!,
        if (monitoringConfig != null) 'monitoringConfig': monitoringConfig!,
        if (monitoringService != null) 'monitoringService': monitoringService!,
        if (name != null) 'name': name!,
        if (network != null) 'network': network!,
        if (networkConfig != null) 'networkConfig': networkConfig!,
        if (networkPolicy != null) 'networkPolicy': networkPolicy!,
        if (nodeConfig != null) 'nodeConfig': nodeConfig!,
        if (nodeIpv4CidrSize != null) 'nodeIpv4CidrSize': nodeIpv4CidrSize!,
        if (nodePoolAutoConfig != null)
          'nodePoolAutoConfig': nodePoolAutoConfig!,
        if (nodePoolDefaults != null) 'nodePoolDefaults': nodePoolDefaults!,
        if (nodePools != null) 'nodePools': nodePools!,
        if (notificationConfig != null)
          'notificationConfig': notificationConfig!,
        if (privateClusterConfig != null)
          'privateClusterConfig': privateClusterConfig!,
        if (releaseChannel != null) 'releaseChannel': releaseChannel!,
        if (resourceLabels != null) 'resourceLabels': resourceLabels!,
        if (resourceUsageExportConfig != null)
          'resourceUsageExportConfig': resourceUsageExportConfig!,
        if (selfLink != null) 'selfLink': selfLink!,
        if (servicesIpv4Cidr != null) 'servicesIpv4Cidr': servicesIpv4Cidr!,
        if (shieldedNodes != null) 'shieldedNodes': shieldedNodes!,
        if (status != null) 'status': status!,
        if (statusMessage != null) 'statusMessage': statusMessage!,
        if (subnetwork != null) 'subnetwork': subnetwork!,
        if (tpuIpv4CidrBlock != null) 'tpuIpv4CidrBlock': tpuIpv4CidrBlock!,
        if (verticalPodAutoscaling != null)
          'verticalPodAutoscaling': verticalPodAutoscaling!,
        if (workloadIdentityConfig != null)
          'workloadIdentityConfig': workloadIdentityConfig!,
        if (zone != null) 'zone': zone!,
      };
}

/// ClusterAutoscaling contains global, per-cluster information required by
/// Cluster Autoscaler to automatically adjust the size of the cluster and
/// create/delete node pools based on the current needs.
class ClusterAutoscaling {
  /// The list of Google Compute Engine
  /// [zones](https://cloud.google.com/compute/docs/zones#available) in which
  /// the NodePool's nodes can be created by NAP.
  core.List<core.String>? autoprovisioningLocations;

  /// AutoprovisioningNodePoolDefaults contains defaults for a node pool created
  /// by NAP.
  AutoprovisioningNodePoolDefaults? autoprovisioningNodePoolDefaults;

  /// Defines autoscaling behaviour.
  /// Possible string values are:
  /// - "PROFILE_UNSPECIFIED" : No change to autoscaling configuration.
  /// - "OPTIMIZE_UTILIZATION" : Prioritize optimizing utilization of resources.
  /// - "BALANCED" : Use default (balanced) autoscaling configuration.
  core.String? autoscalingProfile;

  /// Enables automatic node pool creation and deletion.
  core.bool? enableNodeAutoprovisioning;

  /// Contains global constraints regarding minimum and maximum amount of
  /// resources in the cluster.
  core.List<ResourceLimit>? resourceLimits;

  ClusterAutoscaling({
    this.autoprovisioningLocations,
    this.autoprovisioningNodePoolDefaults,
    this.autoscalingProfile,
    this.enableNodeAutoprovisioning,
    this.resourceLimits,
  });

  ClusterAutoscaling.fromJson(core.Map _json)
      : this(
          autoprovisioningLocations:
              _json.containsKey('autoprovisioningLocations')
                  ? (_json['autoprovisioningLocations'] as core.List)
                      .map((value) => value as core.String)
                      .toList()
                  : null,
          autoprovisioningNodePoolDefaults:
              _json.containsKey('autoprovisioningNodePoolDefaults')
                  ? AutoprovisioningNodePoolDefaults.fromJson(
                      _json['autoprovisioningNodePoolDefaults']
                          as core.Map<core.String, core.dynamic>)
                  : null,
          autoscalingProfile: _json.containsKey('autoscalingProfile')
              ? _json['autoscalingProfile'] as core.String
              : null,
          enableNodeAutoprovisioning:
              _json.containsKey('enableNodeAutoprovisioning')
                  ? _json['enableNodeAutoprovisioning'] as core.bool
                  : null,
          resourceLimits: _json.containsKey('resourceLimits')
              ? (_json['resourceLimits'] as core.List)
                  .map((value) => ResourceLimit.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (autoprovisioningLocations != null)
          'autoprovisioningLocations': autoprovisioningLocations!,
        if (autoprovisioningNodePoolDefaults != null)
          'autoprovisioningNodePoolDefaults': autoprovisioningNodePoolDefaults!,
        if (autoscalingProfile != null)
          'autoscalingProfile': autoscalingProfile!,
        if (enableNodeAutoprovisioning != null)
          'enableNodeAutoprovisioning': enableNodeAutoprovisioning!,
        if (resourceLimits != null) 'resourceLimits': resourceLimits!,
      };
}

/// ClusterUpdate describes an update to the cluster.
///
/// Exactly one update can be applied to a cluster with each request, so at most
/// one field can be provided.
class ClusterUpdate {
  /// Configurations for the various addons available to run in the cluster.
  AddonsConfig? desiredAddonsConfig;

  /// The desired authenticator groups config for the cluster.
  AuthenticatorGroupsConfig? desiredAuthenticatorGroupsConfig;

  /// The desired configuration options for the Binary Authorization feature.
  BinaryAuthorization? desiredBinaryAuthorization;

  /// Cluster-level autoscaling configuration.
  ClusterAutoscaling? desiredClusterAutoscaling;

  /// Configuration of etcd encryption.
  DatabaseEncryption? desiredDatabaseEncryption;

  /// The desired datapath provider for the cluster.
  /// Possible string values are:
  /// - "DATAPATH_PROVIDER_UNSPECIFIED" : Default value.
  /// - "LEGACY_DATAPATH" : Use the IPTables implementation based on kube-proxy.
  /// - "ADVANCED_DATAPATH" : Use the eBPF based GKE Dataplane V2 with
  /// additional features. See the
  /// [GKE Dataplane V2 documentation](https://cloud.google.com/kubernetes-engine/docs/how-to/dataplane-v2)
  /// for more.
  core.String? desiredDatapathProvider;

  /// The desired status of whether to disable default sNAT for this cluster.
  DefaultSnatStatus? desiredDefaultSnatStatus;

  /// DNSConfig contains clusterDNS config for this cluster.
  DNSConfig? desiredDnsConfig;

  /// The desired GCFS config for the cluster
  GcfsConfig? desiredGcfsConfig;

  /// The desired Identity Service component configuration.
  IdentityServiceConfig? desiredIdentityServiceConfig;

  /// The desired image type for the node pool.
  ///
  /// NOTE: Set the "desired_node_pool" field as well.
  core.String? desiredImageType;

  /// The desired config of Intra-node visibility.
  IntraNodeVisibilityConfig? desiredIntraNodeVisibilityConfig;

  /// The desired L4 Internal Load Balancer Subsetting configuration.
  ILBSubsettingConfig? desiredL4ilbSubsettingConfig;

  /// The desired list of Google Compute Engine
  /// [zones](https://cloud.google.com/compute/docs/zones#available) in which
  /// the cluster's nodes should be located.
  ///
  /// This list must always include the cluster's primary zone. Warning:
  /// changing cluster locations will update the locations of all node pools and
  /// will result in nodes being added and/or removed.
  core.List<core.String>? desiredLocations;

  /// The desired logging configuration.
  LoggingConfig? desiredLoggingConfig;

  /// The logging service the cluster should use to write logs.
  ///
  /// Currently available options: * `logging.googleapis.com/kubernetes` - The
  /// Cloud Logging service with a Kubernetes-native resource model *
  /// `logging.googleapis.com` - The legacy Cloud Logging service (no longer
  /// available as of GKE 1.15). * `none` - no logs will be exported from the
  /// cluster. If left as an empty string,`logging.googleapis.com/kubernetes`
  /// will be used for GKE 1.14+ or `logging.googleapis.com` for earlier
  /// versions.
  core.String? desiredLoggingService;

  /// The desired configuration options for master authorized networks feature.
  MasterAuthorizedNetworksConfig? desiredMasterAuthorizedNetworksConfig;

  /// The Kubernetes version to change the master to.
  ///
  /// Users may specify either explicit versions offered by Kubernetes Engine or
  /// version aliases, which have the following behavior: - "latest": picks the
  /// highest valid Kubernetes version - "1.X": picks the highest valid
  /// patch+gke.N patch in the 1.X version - "1.X.Y": picks the highest valid
  /// gke.N patch in the 1.X.Y version - "1.X.Y-gke.N": picks an explicit
  /// Kubernetes version - "-": picks the default Kubernetes version
  core.String? desiredMasterVersion;

  /// Configuration for issuance of mTLS keys and certificates to Kubernetes
  /// pods.
  MeshCertificates? desiredMeshCertificates;

  /// The desired monitoring configuration.
  MonitoringConfig? desiredMonitoringConfig;

  /// The monitoring service the cluster should use to write metrics.
  ///
  /// Currently available options: * "monitoring.googleapis.com/kubernetes" -
  /// The Cloud Monitoring service with a Kubernetes-native resource model *
  /// `monitoring.googleapis.com` - The legacy Cloud Monitoring service (no
  /// longer available as of GKE 1.15). * `none` - No metrics will be exported
  /// from the cluster. If left as an empty
  /// string,`monitoring.googleapis.com/kubernetes` will be used for GKE 1.14+
  /// or `monitoring.googleapis.com` for earlier versions.
  core.String? desiredMonitoringService;

  /// The desired network tags that apply to all auto-provisioned node pools in
  /// autopilot clusters and node auto-provisioning enabled clusters.
  NetworkTags? desiredNodePoolAutoConfigNetworkTags;

  /// Autoscaler configuration for the node pool specified in
  /// desired_node_pool_id.
  ///
  /// If there is only one pool in the cluster and desired_node_pool_id is not
  /// provided then the change applies to that single node pool.
  NodePoolAutoscaling? desiredNodePoolAutoscaling;

  /// The node pool to be upgraded.
  ///
  /// This field is mandatory if "desired_node_version", "desired_image_family"
  /// or "desired_node_pool_autoscaling" is specified and there is more than one
  /// node pool on the cluster.
  core.String? desiredNodePoolId;

  /// The Kubernetes version to change the nodes to (typically an upgrade).
  ///
  /// Users may specify either explicit versions offered by Kubernetes Engine or
  /// version aliases, which have the following behavior: - "latest": picks the
  /// highest valid Kubernetes version - "1.X": picks the highest valid
  /// patch+gke.N patch in the 1.X version - "1.X.Y": picks the highest valid
  /// gke.N patch in the 1.X.Y version - "1.X.Y-gke.N": picks an explicit
  /// Kubernetes version - "-": picks the Kubernetes master version
  core.String? desiredNodeVersion;

  /// The desired notification configuration.
  NotificationConfig? desiredNotificationConfig;

  /// The desired private cluster configuration.
  PrivateClusterConfig? desiredPrivateClusterConfig;

  /// The desired state of IPv6 connectivity to Google Services.
  /// Possible string values are:
  /// - "PRIVATE_IPV6_GOOGLE_ACCESS_UNSPECIFIED" : Default value. Same as
  /// DISABLED
  /// - "PRIVATE_IPV6_GOOGLE_ACCESS_DISABLED" : No private access to or from
  /// Google Services
  /// - "PRIVATE_IPV6_GOOGLE_ACCESS_TO_GOOGLE" : Enables private IPv6 access to
  /// Google Services from GKE
  /// - "PRIVATE_IPV6_GOOGLE_ACCESS_BIDIRECTIONAL" : Enables priate IPv6 access
  /// to and from Google Services
  core.String? desiredPrivateIpv6GoogleAccess;

  /// The desired release channel configuration.
  ReleaseChannel? desiredReleaseChannel;

  /// The desired configuration for exporting resource usage.
  ResourceUsageExportConfig? desiredResourceUsageExportConfig;

  /// ServiceExternalIPsConfig specifies the config for the use of Services with
  /// ExternalIPs field.
  ServiceExternalIPsConfig? desiredServiceExternalIpsConfig;

  /// Configuration for Shielded Nodes.
  ShieldedNodes? desiredShieldedNodes;

  /// Cluster-level Vertical Pod Autoscaling configuration.
  VerticalPodAutoscaling? desiredVerticalPodAutoscaling;

  /// Configuration for Workload Identity.
  WorkloadIdentityConfig? desiredWorkloadIdentityConfig;

  ClusterUpdate({
    this.desiredAddonsConfig,
    this.desiredAuthenticatorGroupsConfig,
    this.desiredBinaryAuthorization,
    this.desiredClusterAutoscaling,
    this.desiredDatabaseEncryption,
    this.desiredDatapathProvider,
    this.desiredDefaultSnatStatus,
    this.desiredDnsConfig,
    this.desiredGcfsConfig,
    this.desiredIdentityServiceConfig,
    this.desiredImageType,
    this.desiredIntraNodeVisibilityConfig,
    this.desiredL4ilbSubsettingConfig,
    this.desiredLocations,
    this.desiredLoggingConfig,
    this.desiredLoggingService,
    this.desiredMasterAuthorizedNetworksConfig,
    this.desiredMasterVersion,
    this.desiredMeshCertificates,
    this.desiredMonitoringConfig,
    this.desiredMonitoringService,
    this.desiredNodePoolAutoConfigNetworkTags,
    this.desiredNodePoolAutoscaling,
    this.desiredNodePoolId,
    this.desiredNodeVersion,
    this.desiredNotificationConfig,
    this.desiredPrivateClusterConfig,
    this.desiredPrivateIpv6GoogleAccess,
    this.desiredReleaseChannel,
    this.desiredResourceUsageExportConfig,
    this.desiredServiceExternalIpsConfig,
    this.desiredShieldedNodes,
    this.desiredVerticalPodAutoscaling,
    this.desiredWorkloadIdentityConfig,
  });

  ClusterUpdate.fromJson(core.Map _json)
      : this(
          desiredAddonsConfig: _json.containsKey('desiredAddonsConfig')
              ? AddonsConfig.fromJson(_json['desiredAddonsConfig']
                  as core.Map<core.String, core.dynamic>)
              : null,
          desiredAuthenticatorGroupsConfig:
              _json.containsKey('desiredAuthenticatorGroupsConfig')
                  ? AuthenticatorGroupsConfig.fromJson(
                      _json['desiredAuthenticatorGroupsConfig']
                          as core.Map<core.String, core.dynamic>)
                  : null,
          desiredBinaryAuthorization: _json
                  .containsKey('desiredBinaryAuthorization')
              ? BinaryAuthorization.fromJson(_json['desiredBinaryAuthorization']
                  as core.Map<core.String, core.dynamic>)
              : null,
          desiredClusterAutoscaling: _json
                  .containsKey('desiredClusterAutoscaling')
              ? ClusterAutoscaling.fromJson(_json['desiredClusterAutoscaling']
                  as core.Map<core.String, core.dynamic>)
              : null,
          desiredDatabaseEncryption: _json
                  .containsKey('desiredDatabaseEncryption')
              ? DatabaseEncryption.fromJson(_json['desiredDatabaseEncryption']
                  as core.Map<core.String, core.dynamic>)
              : null,
          desiredDatapathProvider: _json.containsKey('desiredDatapathProvider')
              ? _json['desiredDatapathProvider'] as core.String
              : null,
          desiredDefaultSnatStatus:
              _json.containsKey('desiredDefaultSnatStatus')
                  ? DefaultSnatStatus.fromJson(_json['desiredDefaultSnatStatus']
                      as core.Map<core.String, core.dynamic>)
                  : null,
          desiredDnsConfig: _json.containsKey('desiredDnsConfig')
              ? DNSConfig.fromJson(_json['desiredDnsConfig']
                  as core.Map<core.String, core.dynamic>)
              : null,
          desiredGcfsConfig: _json.containsKey('desiredGcfsConfig')
              ? GcfsConfig.fromJson(_json['desiredGcfsConfig']
                  as core.Map<core.String, core.dynamic>)
              : null,
          desiredIdentityServiceConfig:
              _json.containsKey('desiredIdentityServiceConfig')
                  ? IdentityServiceConfig.fromJson(
                      _json['desiredIdentityServiceConfig']
                          as core.Map<core.String, core.dynamic>)
                  : null,
          desiredImageType: _json.containsKey('desiredImageType')
              ? _json['desiredImageType'] as core.String
              : null,
          desiredIntraNodeVisibilityConfig:
              _json.containsKey('desiredIntraNodeVisibilityConfig')
                  ? IntraNodeVisibilityConfig.fromJson(
                      _json['desiredIntraNodeVisibilityConfig']
                          as core.Map<core.String, core.dynamic>)
                  : null,
          desiredL4ilbSubsettingConfig:
              _json.containsKey('desiredL4ilbSubsettingConfig')
                  ? ILBSubsettingConfig.fromJson(
                      _json['desiredL4ilbSubsettingConfig']
                          as core.Map<core.String, core.dynamic>)
                  : null,
          desiredLocations: _json.containsKey('desiredLocations')
              ? (_json['desiredLocations'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          desiredLoggingConfig: _json.containsKey('desiredLoggingConfig')
              ? LoggingConfig.fromJson(_json['desiredLoggingConfig']
                  as core.Map<core.String, core.dynamic>)
              : null,
          desiredLoggingService: _json.containsKey('desiredLoggingService')
              ? _json['desiredLoggingService'] as core.String
              : null,
          desiredMasterAuthorizedNetworksConfig:
              _json.containsKey('desiredMasterAuthorizedNetworksConfig')
                  ? MasterAuthorizedNetworksConfig.fromJson(
                      _json['desiredMasterAuthorizedNetworksConfig']
                          as core.Map<core.String, core.dynamic>)
                  : null,
          desiredMasterVersion: _json.containsKey('desiredMasterVersion')
              ? _json['desiredMasterVersion'] as core.String
              : null,
          desiredMeshCertificates: _json.containsKey('desiredMeshCertificates')
              ? MeshCertificates.fromJson(_json['desiredMeshCertificates']
                  as core.Map<core.String, core.dynamic>)
              : null,
          desiredMonitoringConfig: _json.containsKey('desiredMonitoringConfig')
              ? MonitoringConfig.fromJson(_json['desiredMonitoringConfig']
                  as core.Map<core.String, core.dynamic>)
              : null,
          desiredMonitoringService:
              _json.containsKey('desiredMonitoringService')
                  ? _json['desiredMonitoringService'] as core.String
                  : null,
          desiredNodePoolAutoConfigNetworkTags:
              _json.containsKey('desiredNodePoolAutoConfigNetworkTags')
                  ? NetworkTags.fromJson(
                      _json['desiredNodePoolAutoConfigNetworkTags']
                          as core.Map<core.String, core.dynamic>)
                  : null,
          desiredNodePoolAutoscaling: _json
                  .containsKey('desiredNodePoolAutoscaling')
              ? NodePoolAutoscaling.fromJson(_json['desiredNodePoolAutoscaling']
                  as core.Map<core.String, core.dynamic>)
              : null,
          desiredNodePoolId: _json.containsKey('desiredNodePoolId')
              ? _json['desiredNodePoolId'] as core.String
              : null,
          desiredNodeVersion: _json.containsKey('desiredNodeVersion')
              ? _json['desiredNodeVersion'] as core.String
              : null,
          desiredNotificationConfig: _json
                  .containsKey('desiredNotificationConfig')
              ? NotificationConfig.fromJson(_json['desiredNotificationConfig']
                  as core.Map<core.String, core.dynamic>)
              : null,
          desiredPrivateClusterConfig:
              _json.containsKey('desiredPrivateClusterConfig')
                  ? PrivateClusterConfig.fromJson(
                      _json['desiredPrivateClusterConfig']
                          as core.Map<core.String, core.dynamic>)
                  : null,
          desiredPrivateIpv6GoogleAccess:
              _json.containsKey('desiredPrivateIpv6GoogleAccess')
                  ? _json['desiredPrivateIpv6GoogleAccess'] as core.String
                  : null,
          desiredReleaseChannel: _json.containsKey('desiredReleaseChannel')
              ? ReleaseChannel.fromJson(_json['desiredReleaseChannel']
                  as core.Map<core.String, core.dynamic>)
              : null,
          desiredResourceUsageExportConfig:
              _json.containsKey('desiredResourceUsageExportConfig')
                  ? ResourceUsageExportConfig.fromJson(
                      _json['desiredResourceUsageExportConfig']
                          as core.Map<core.String, core.dynamic>)
                  : null,
          desiredServiceExternalIpsConfig:
              _json.containsKey('desiredServiceExternalIpsConfig')
                  ? ServiceExternalIPsConfig.fromJson(
                      _json['desiredServiceExternalIpsConfig']
                          as core.Map<core.String, core.dynamic>)
                  : null,
          desiredShieldedNodes: _json.containsKey('desiredShieldedNodes')
              ? ShieldedNodes.fromJson(_json['desiredShieldedNodes']
                  as core.Map<core.String, core.dynamic>)
              : null,
          desiredVerticalPodAutoscaling:
              _json.containsKey('desiredVerticalPodAutoscaling')
                  ? VerticalPodAutoscaling.fromJson(
                      _json['desiredVerticalPodAutoscaling']
                          as core.Map<core.String, core.dynamic>)
                  : null,
          desiredWorkloadIdentityConfig:
              _json.containsKey('desiredWorkloadIdentityConfig')
                  ? WorkloadIdentityConfig.fromJson(
                      _json['desiredWorkloadIdentityConfig']
                          as core.Map<core.String, core.dynamic>)
                  : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (desiredAddonsConfig != null)
          'desiredAddonsConfig': desiredAddonsConfig!,
        if (desiredAuthenticatorGroupsConfig != null)
          'desiredAuthenticatorGroupsConfig': desiredAuthenticatorGroupsConfig!,
        if (desiredBinaryAuthorization != null)
          'desiredBinaryAuthorization': desiredBinaryAuthorization!,
        if (desiredClusterAutoscaling != null)
          'desiredClusterAutoscaling': desiredClusterAutoscaling!,
        if (desiredDatabaseEncryption != null)
          'desiredDatabaseEncryption': desiredDatabaseEncryption!,
        if (desiredDatapathProvider != null)
          'desiredDatapathProvider': desiredDatapathProvider!,
        if (desiredDefaultSnatStatus != null)
          'desiredDefaultSnatStatus': desiredDefaultSnatStatus!,
        if (desiredDnsConfig != null) 'desiredDnsConfig': desiredDnsConfig!,
        if (desiredGcfsConfig != null) 'desiredGcfsConfig': desiredGcfsConfig!,
        if (desiredIdentityServiceConfig != null)
          'desiredIdentityServiceConfig': desiredIdentityServiceConfig!,
        if (desiredImageType != null) 'desiredImageType': desiredImageType!,
        if (desiredIntraNodeVisibilityConfig != null)
          'desiredIntraNodeVisibilityConfig': desiredIntraNodeVisibilityConfig!,
        if (desiredL4ilbSubsettingConfig != null)
          'desiredL4ilbSubsettingConfig': desiredL4ilbSubsettingConfig!,
        if (desiredLocations != null) 'desiredLocations': desiredLocations!,
        if (desiredLoggingConfig != null)
          'desiredLoggingConfig': desiredLoggingConfig!,
        if (desiredLoggingService != null)
          'desiredLoggingService': desiredLoggingService!,
        if (desiredMasterAuthorizedNetworksConfig != null)
          'desiredMasterAuthorizedNetworksConfig':
              desiredMasterAuthorizedNetworksConfig!,
        if (desiredMasterVersion != null)
          'desiredMasterVersion': desiredMasterVersion!,
        if (desiredMeshCertificates != null)
          'desiredMeshCertificates': desiredMeshCertificates!,
        if (desiredMonitoringConfig != null)
          'desiredMonitoringConfig': desiredMonitoringConfig!,
        if (desiredMonitoringService != null)
          'desiredMonitoringService': desiredMonitoringService!,
        if (desiredNodePoolAutoConfigNetworkTags != null)
          'desiredNodePoolAutoConfigNetworkTags':
              desiredNodePoolAutoConfigNetworkTags!,
        if (desiredNodePoolAutoscaling != null)
          'desiredNodePoolAutoscaling': desiredNodePoolAutoscaling!,
        if (desiredNodePoolId != null) 'desiredNodePoolId': desiredNodePoolId!,
        if (desiredNodeVersion != null)
          'desiredNodeVersion': desiredNodeVersion!,
        if (desiredNotificationConfig != null)
          'desiredNotificationConfig': desiredNotificationConfig!,
        if (desiredPrivateClusterConfig != null)
          'desiredPrivateClusterConfig': desiredPrivateClusterConfig!,
        if (desiredPrivateIpv6GoogleAccess != null)
          'desiredPrivateIpv6GoogleAccess': desiredPrivateIpv6GoogleAccess!,
        if (desiredReleaseChannel != null)
          'desiredReleaseChannel': desiredReleaseChannel!,
        if (desiredResourceUsageExportConfig != null)
          'desiredResourceUsageExportConfig': desiredResourceUsageExportConfig!,
        if (desiredServiceExternalIpsConfig != null)
          'desiredServiceExternalIpsConfig': desiredServiceExternalIpsConfig!,
        if (desiredShieldedNodes != null)
          'desiredShieldedNodes': desiredShieldedNodes!,
        if (desiredVerticalPodAutoscaling != null)
          'desiredVerticalPodAutoscaling': desiredVerticalPodAutoscaling!,
        if (desiredWorkloadIdentityConfig != null)
          'desiredWorkloadIdentityConfig': desiredWorkloadIdentityConfig!,
      };
}

/// CompleteIPRotationRequest moves the cluster master back into single-IP mode.
class CompleteIPRotationRequest {
  /// The name of the cluster.
  ///
  /// This field has been deprecated and replaced by the name field.
  ///
  /// Deprecated.
  core.String? clusterId;

  /// The name (project, location, cluster name) of the cluster to complete IP
  /// rotation.
  ///
  /// Specified in the format `projects / * /locations / * /clusters / * `.
  core.String? name;

  /// The Google Developers Console
  /// [project ID or project number](https://developers.google.com/console/help/new/#projectnumber).
  ///
  /// This field has been deprecated and replaced by the name field.
  ///
  /// Deprecated.
  core.String? projectId;

  /// The name of the Google Compute Engine
  /// [zone](https://cloud.google.com/compute/docs/zones#available) in which the
  /// cluster resides.
  ///
  /// This field has been deprecated and replaced by the name field.
  ///
  /// Deprecated.
  core.String? zone;

  CompleteIPRotationRequest({
    this.clusterId,
    this.name,
    this.projectId,
    this.zone,
  });

  CompleteIPRotationRequest.fromJson(core.Map _json)
      : this(
          clusterId: _json.containsKey('clusterId')
              ? _json['clusterId'] as core.String
              : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          projectId: _json.containsKey('projectId')
              ? _json['projectId'] as core.String
              : null,
          zone: _json.containsKey('zone') ? _json['zone'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (clusterId != null) 'clusterId': clusterId!,
        if (name != null) 'name': name!,
        if (projectId != null) 'projectId': projectId!,
        if (zone != null) 'zone': zone!,
      };
}

/// ConfidentialNodes is configuration for the confidential nodes feature, which
/// makes nodes run on confidential VMs.
class ConfidentialNodes {
  /// Whether Confidential Nodes feature is enabled.
  core.bool? enabled;

  ConfidentialNodes({
    this.enabled,
  });

  ConfidentialNodes.fromJson(core.Map _json)
      : this(
          enabled: _json.containsKey('enabled')
              ? _json['enabled'] as core.bool
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (enabled != null) 'enabled': enabled!,
      };
}

/// Configuration options for the Config Connector add-on.
class ConfigConnectorConfig {
  /// Whether Cloud Connector is enabled for this cluster.
  core.bool? enabled;

  ConfigConnectorConfig({
    this.enabled,
  });

  ConfigConnectorConfig.fromJson(core.Map _json)
      : this(
          enabled: _json.containsKey('enabled')
              ? _json['enabled'] as core.bool
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (enabled != null) 'enabled': enabled!,
      };
}

/// Parameters for controlling consumption metering.
class ConsumptionMeteringConfig {
  /// Whether to enable consumption metering for this cluster.
  ///
  /// If enabled, a second BigQuery table will be created to hold resource
  /// consumption records.
  core.bool? enabled;

  ConsumptionMeteringConfig({
    this.enabled,
  });

  ConsumptionMeteringConfig.fromJson(core.Map _json)
      : this(
          enabled: _json.containsKey('enabled')
              ? _json['enabled'] as core.bool
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (enabled != null) 'enabled': enabled!,
      };
}

/// CreateClusterRequest creates a cluster.
class CreateClusterRequest {
  /// A
  /// [cluster resource](https://cloud.google.com/container-engine/reference/rest/v1/projects.locations.clusters)
  ///
  /// Required.
  Cluster? cluster;

  /// The parent (project and location) where the cluster will be created.
  ///
  /// Specified in the format `projects / * /locations / * `.
  core.String? parent;

  /// The Google Developers Console
  /// [project ID or project number](https://support.google.com/cloud/answer/6158840).
  ///
  /// This field has been deprecated and replaced by the parent field.
  ///
  /// Deprecated.
  core.String? projectId;

  /// The name of the Google Compute Engine
  /// [zone](https://cloud.google.com/compute/docs/zones#available) in which the
  /// cluster resides.
  ///
  /// This field has been deprecated and replaced by the parent field.
  ///
  /// Deprecated.
  core.String? zone;

  CreateClusterRequest({
    this.cluster,
    this.parent,
    this.projectId,
    this.zone,
  });

  CreateClusterRequest.fromJson(core.Map _json)
      : this(
          cluster: _json.containsKey('cluster')
              ? Cluster.fromJson(
                  _json['cluster'] as core.Map<core.String, core.dynamic>)
              : null,
          parent: _json.containsKey('parent')
              ? _json['parent'] as core.String
              : null,
          projectId: _json.containsKey('projectId')
              ? _json['projectId'] as core.String
              : null,
          zone: _json.containsKey('zone') ? _json['zone'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (cluster != null) 'cluster': cluster!,
        if (parent != null) 'parent': parent!,
        if (projectId != null) 'projectId': projectId!,
        if (zone != null) 'zone': zone!,
      };
}

/// CreateNodePoolRequest creates a node pool for a cluster.
class CreateNodePoolRequest {
  /// The name of the cluster.
  ///
  /// This field has been deprecated and replaced by the parent field.
  ///
  /// Deprecated.
  core.String? clusterId;

  /// The node pool to create.
  ///
  /// Required.
  NodePool? nodePool;

  /// The parent (project, location, cluster name) where the node pool will be
  /// created.
  ///
  /// Specified in the format `projects / * /locations / * /clusters / * `.
  core.String? parent;

  /// The Google Developers Console
  /// [project ID or project number](https://developers.google.com/console/help/new/#projectnumber).
  ///
  /// This field has been deprecated and replaced by the parent field.
  ///
  /// Deprecated.
  core.String? projectId;

  /// The name of the Google Compute Engine
  /// [zone](https://cloud.google.com/compute/docs/zones#available) in which the
  /// cluster resides.
  ///
  /// This field has been deprecated and replaced by the parent field.
  ///
  /// Deprecated.
  core.String? zone;

  CreateNodePoolRequest({
    this.clusterId,
    this.nodePool,
    this.parent,
    this.projectId,
    this.zone,
  });

  CreateNodePoolRequest.fromJson(core.Map _json)
      : this(
          clusterId: _json.containsKey('clusterId')
              ? _json['clusterId'] as core.String
              : null,
          nodePool: _json.containsKey('nodePool')
              ? NodePool.fromJson(
                  _json['nodePool'] as core.Map<core.String, core.dynamic>)
              : null,
          parent: _json.containsKey('parent')
              ? _json['parent'] as core.String
              : null,
          projectId: _json.containsKey('projectId')
              ? _json['projectId'] as core.String
              : null,
          zone: _json.containsKey('zone') ? _json['zone'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (clusterId != null) 'clusterId': clusterId!,
        if (nodePool != null) 'nodePool': nodePool!,
        if (parent != null) 'parent': parent!,
        if (projectId != null) 'projectId': projectId!,
        if (zone != null) 'zone': zone!,
      };
}

/// DNSConfig contains the desired set of options for configuring clusterDNS.
class DNSConfig {
  /// cluster_dns indicates which in-cluster DNS provider should be used.
  /// Possible string values are:
  /// - "PROVIDER_UNSPECIFIED" : Default value
  /// - "PLATFORM_DEFAULT" : Use GKE default DNS provider(kube-dns) for DNS
  /// resolution.
  /// - "CLOUD_DNS" : Use CloudDNS for DNS resolution.
  core.String? clusterDns;

  /// cluster_dns_domain is the suffix used for all cluster service records.
  core.String? clusterDnsDomain;

  /// cluster_dns_scope indicates the scope of access to cluster DNS records.
  /// Possible string values are:
  /// - "DNS_SCOPE_UNSPECIFIED" : Default value, will be inferred as cluster
  /// scope.
  /// - "VPC_SCOPE" : DNS records are accessible from within the VPC.
  core.String? clusterDnsScope;

  DNSConfig({
    this.clusterDns,
    this.clusterDnsDomain,
    this.clusterDnsScope,
  });

  DNSConfig.fromJson(core.Map _json)
      : this(
          clusterDns: _json.containsKey('clusterDns')
              ? _json['clusterDns'] as core.String
              : null,
          clusterDnsDomain: _json.containsKey('clusterDnsDomain')
              ? _json['clusterDnsDomain'] as core.String
              : null,
          clusterDnsScope: _json.containsKey('clusterDnsScope')
              ? _json['clusterDnsScope'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (clusterDns != null) 'clusterDns': clusterDns!,
        if (clusterDnsDomain != null) 'clusterDnsDomain': clusterDnsDomain!,
        if (clusterDnsScope != null) 'clusterDnsScope': clusterDnsScope!,
      };
}

/// Time window specified for daily maintenance operations.
class DailyMaintenanceWindow {
  /// Duration of the time window, automatically chosen to be smallest possible
  /// in the given scenario.
  ///
  /// Duration will be in [RFC3339](https://www.ietf.org/rfc/rfc3339.txt) format
  /// "PTnHnMnS".
  ///
  /// Output only.
  core.String? duration;

  /// Time within the maintenance window to start the maintenance operations.
  ///
  /// Time format should be in [RFC3339](https://www.ietf.org/rfc/rfc3339.txt)
  /// format "HH:MM", where HH : \[00-23\] and MM : \[00-59\] GMT.
  core.String? startTime;

  DailyMaintenanceWindow({
    this.duration,
    this.startTime,
  });

  DailyMaintenanceWindow.fromJson(core.Map _json)
      : this(
          duration: _json.containsKey('duration')
              ? _json['duration'] as core.String
              : null,
          startTime: _json.containsKey('startTime')
              ? _json['startTime'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (duration != null) 'duration': duration!,
        if (startTime != null) 'startTime': startTime!,
      };
}

/// Configuration of etcd encryption.
class DatabaseEncryption {
  /// Name of CloudKMS key to use for the encryption of secrets in etcd.
  ///
  /// Ex.
  /// projects/my-project/locations/global/keyRings/my-ring/cryptoKeys/my-key
  core.String? keyName;

  /// Denotes the state of etcd encryption.
  /// Possible string values are:
  /// - "UNKNOWN" : Should never be set
  /// - "ENCRYPTED" : Secrets in etcd are encrypted.
  /// - "DECRYPTED" : Secrets in etcd are stored in plain text (at etcd level) -
  /// this is unrelated to Compute Engine level full disk encryption.
  core.String? state;

  DatabaseEncryption({
    this.keyName,
    this.state,
  });

  DatabaseEncryption.fromJson(core.Map _json)
      : this(
          keyName: _json.containsKey('keyName')
              ? _json['keyName'] as core.String
              : null,
          state:
              _json.containsKey('state') ? _json['state'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (keyName != null) 'keyName': keyName!,
        if (state != null) 'state': state!,
      };
}

/// DefaultSnatStatus contains the desired state of whether default sNAT should
/// be disabled on the cluster.
class DefaultSnatStatus {
  /// Disables cluster default sNAT rules.
  core.bool? disabled;

  DefaultSnatStatus({
    this.disabled,
  });

  DefaultSnatStatus.fromJson(core.Map _json)
      : this(
          disabled: _json.containsKey('disabled')
              ? _json['disabled'] as core.bool
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (disabled != null) 'disabled': disabled!,
      };
}

/// Configuration for NodeLocal DNSCache
class DnsCacheConfig {
  /// Whether NodeLocal DNSCache is enabled for this cluster.
  core.bool? enabled;

  DnsCacheConfig({
    this.enabled,
  });

  DnsCacheConfig.fromJson(core.Map _json)
      : this(
          enabled: _json.containsKey('enabled')
              ? _json['enabled'] as core.bool
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (enabled != null) 'enabled': enabled!,
      };
}

/// A generic empty message that you can re-use to avoid defining duplicated
/// empty messages in your APIs.
///
/// A typical example is to use it as the request or the response type of an API
/// method. For instance: service Foo { rpc Bar(google.protobuf.Empty) returns
/// (google.protobuf.Empty); } The JSON representation for `Empty` is empty JSON
/// object `{}`.
typedef Empty = $Empty;

/// Allows filtering to one or more specific event types.
///
/// If event types are present, those and only those event types will be
/// transmitted to the cluster. Other types will be skipped. If no filter is
/// specified, or no event types are present, all event types will be sent
class Filter {
  /// Event types to allowlist.
  core.List<core.String>? eventType;

  Filter({
    this.eventType,
  });

  Filter.fromJson(core.Map _json)
      : this(
          eventType: _json.containsKey('eventType')
              ? (_json['eventType'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (eventType != null) 'eventType': eventType!,
      };
}

/// Configuration for the Compute Engine PD CSI driver.
class GcePersistentDiskCsiDriverConfig {
  /// Whether the Compute Engine PD CSI driver is enabled for this cluster.
  core.bool? enabled;

  GcePersistentDiskCsiDriverConfig({
    this.enabled,
  });

  GcePersistentDiskCsiDriverConfig.fromJson(core.Map _json)
      : this(
          enabled: _json.containsKey('enabled')
              ? _json['enabled'] as core.bool
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (enabled != null) 'enabled': enabled!,
      };
}

/// GcfsConfig contains configurations of Google Container File System (image
/// streaming).
class GcfsConfig {
  /// Whether to use GCFS.
  core.bool? enabled;

  GcfsConfig({
    this.enabled,
  });

  GcfsConfig.fromJson(core.Map _json)
      : this(
          enabled: _json.containsKey('enabled')
              ? _json['enabled'] as core.bool
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (enabled != null) 'enabled': enabled!,
      };
}

/// Configuration for the GCP Filestore CSI driver.
class GcpFilestoreCsiDriverConfig {
  /// Whether the GCP Filestore CSI driver is enabled for this cluster.
  core.bool? enabled;

  GcpFilestoreCsiDriverConfig({
    this.enabled,
  });

  GcpFilestoreCsiDriverConfig.fromJson(core.Map _json)
      : this(
          enabled: _json.containsKey('enabled')
              ? _json['enabled'] as core.bool
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (enabled != null) 'enabled': enabled!,
      };
}

/// GetJSONWebKeysResponse is a valid JSON Web Key Set as specififed in rfc 7517
class GetJSONWebKeysResponse {
  /// OnePlatform automatically extracts this field and uses it to set the HTTP
  /// Cache-Control header.
  HttpCacheControlResponseHeader? cacheHeader;

  /// The public component of the keys used by the cluster to sign token
  /// requests.
  core.List<Jwk>? keys;

  GetJSONWebKeysResponse({
    this.cacheHeader,
    this.keys,
  });

  GetJSONWebKeysResponse.fromJson(core.Map _json)
      : this(
          cacheHeader: _json.containsKey('cacheHeader')
              ? HttpCacheControlResponseHeader.fromJson(
                  _json['cacheHeader'] as core.Map<core.String, core.dynamic>)
              : null,
          keys: _json.containsKey('keys')
              ? (_json['keys'] as core.List)
                  .map((value) => Jwk.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (cacheHeader != null) 'cacheHeader': cacheHeader!,
        if (keys != null) 'keys': keys!,
      };
}

/// GetOpenIDConfigResponse is an OIDC discovery document for the cluster.
///
/// See the OpenID Connect Discovery 1.0 specification for details.
class GetOpenIDConfigResponse {
  /// OnePlatform automatically extracts this field and uses it to set the HTTP
  /// Cache-Control header.
  HttpCacheControlResponseHeader? cacheHeader;

  /// Supported claims.
  core.List<core.String>? claimsSupported;

  /// Supported grant types.
  core.List<core.String>? grantTypes;

  /// supported ID Token signing Algorithms.
  core.List<core.String>? idTokenSigningAlgValuesSupported;

  /// OIDC Issuer.
  core.String? issuer;

  /// JSON Web Key uri.
  core.String? jwksUri;

  /// Supported response types.
  core.List<core.String>? responseTypesSupported;

  /// Supported subject types.
  core.List<core.String>? subjectTypesSupported;

  GetOpenIDConfigResponse({
    this.cacheHeader,
    this.claimsSupported,
    this.grantTypes,
    this.idTokenSigningAlgValuesSupported,
    this.issuer,
    this.jwksUri,
    this.responseTypesSupported,
    this.subjectTypesSupported,
  });

  GetOpenIDConfigResponse.fromJson(core.Map _json)
      : this(
          cacheHeader: _json.containsKey('cacheHeader')
              ? HttpCacheControlResponseHeader.fromJson(
                  _json['cacheHeader'] as core.Map<core.String, core.dynamic>)
              : null,
          claimsSupported: _json.containsKey('claims_supported')
              ? (_json['claims_supported'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          grantTypes: _json.containsKey('grant_types')
              ? (_json['grant_types'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          idTokenSigningAlgValuesSupported: _json
                  .containsKey('id_token_signing_alg_values_supported')
              ? (_json['id_token_signing_alg_values_supported'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          issuer: _json.containsKey('issuer')
              ? _json['issuer'] as core.String
              : null,
          jwksUri: _json.containsKey('jwks_uri')
              ? _json['jwks_uri'] as core.String
              : null,
          responseTypesSupported: _json.containsKey('response_types_supported')
              ? (_json['response_types_supported'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          subjectTypesSupported: _json.containsKey('subject_types_supported')
              ? (_json['subject_types_supported'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (cacheHeader != null) 'cacheHeader': cacheHeader!,
        if (claimsSupported != null) 'claims_supported': claimsSupported!,
        if (grantTypes != null) 'grant_types': grantTypes!,
        if (idTokenSigningAlgValuesSupported != null)
          'id_token_signing_alg_values_supported':
              idTokenSigningAlgValuesSupported!,
        if (issuer != null) 'issuer': issuer!,
        if (jwksUri != null) 'jwks_uri': jwksUri!,
        if (responseTypesSupported != null)
          'response_types_supported': responseTypesSupported!,
        if (subjectTypesSupported != null)
          'subject_types_supported': subjectTypesSupported!,
      };
}

/// Configuration options for the horizontal pod autoscaling feature, which
/// increases or decreases the number of replica pods a replication controller
/// has based on the resource usage of the existing pods.
class HorizontalPodAutoscaling {
  /// Whether the Horizontal Pod Autoscaling feature is enabled in the cluster.
  ///
  /// When enabled, it ensures that metrics are collected into Stackdriver
  /// Monitoring.
  core.bool? disabled;

  HorizontalPodAutoscaling({
    this.disabled,
  });

  HorizontalPodAutoscaling.fromJson(core.Map _json)
      : this(
          disabled: _json.containsKey('disabled')
              ? _json['disabled'] as core.bool
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (disabled != null) 'disabled': disabled!,
      };
}

/// RFC-2616: cache control support
class HttpCacheControlResponseHeader {
  /// 14.6 response cache age, in seconds since the response is generated
  core.String? age;

  /// 14.9 request and response directives
  core.String? directive;

  /// 14.21 response cache expires, in RFC 1123 date format
  core.String? expires;

  HttpCacheControlResponseHeader({
    this.age,
    this.directive,
    this.expires,
  });

  HttpCacheControlResponseHeader.fromJson(core.Map _json)
      : this(
          age: _json.containsKey('age') ? _json['age'] as core.String : null,
          directive: _json.containsKey('directive')
              ? _json['directive'] as core.String
              : null,
          expires: _json.containsKey('expires')
              ? _json['expires'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (age != null) 'age': age!,
        if (directive != null) 'directive': directive!,
        if (expires != null) 'expires': expires!,
      };
}

/// Configuration options for the HTTP (L7) load balancing controller addon,
/// which makes it easy to set up HTTP load balancers for services in a cluster.
class HttpLoadBalancing {
  /// Whether the HTTP Load Balancing controller is enabled in the cluster.
  ///
  /// When enabled, it runs a small pod in the cluster that manages the load
  /// balancers.
  core.bool? disabled;

  HttpLoadBalancing({
    this.disabled,
  });

  HttpLoadBalancing.fromJson(core.Map _json)
      : this(
          disabled: _json.containsKey('disabled')
              ? _json['disabled'] as core.bool
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (disabled != null) 'disabled': disabled!,
      };
}

/// ILBSubsettingConfig contains the desired config of L4 Internal LoadBalancer
/// subsetting on this cluster.
class ILBSubsettingConfig {
  /// Enables l4 ILB subsetting for this cluster.
  core.bool? enabled;

  ILBSubsettingConfig({
    this.enabled,
  });

  ILBSubsettingConfig.fromJson(core.Map _json)
      : this(
          enabled: _json.containsKey('enabled')
              ? _json['enabled'] as core.bool
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (enabled != null) 'enabled': enabled!,
      };
}

/// Configuration for controlling how IPs are allocated in the cluster.
class IPAllocationPolicy {
  /// This field is deprecated, use cluster_ipv4_cidr_block.
  core.String? clusterIpv4Cidr;

  /// The IP address range for the cluster pod IPs.
  ///
  /// If this field is set, then `cluster.cluster_ipv4_cidr` must be left blank.
  /// This field is only applicable when `use_ip_aliases` is true. Set to blank
  /// to have a range chosen with the default size. Set to /netmask (e.g. `/14`)
  /// to have a range chosen with a specific netmask. Set to a
  /// [CIDR](http://en.wikipedia.org/wiki/Classless_Inter-Domain_Routing)
  /// notation (e.g. `10.96.0.0/14`) from the RFC-1918 private networks (e.g.
  /// `10.0.0.0/8`, `172.16.0.0/12`, `192.168.0.0/16`) to pick a specific range
  /// to use.
  core.String? clusterIpv4CidrBlock;

  /// The name of the secondary range to be used for the cluster CIDR block.
  ///
  /// The secondary range will be used for pod IP addresses. This must be an
  /// existing secondary range associated with the cluster subnetwork. This
  /// field is only applicable with use_ip_aliases is true and create_subnetwork
  /// is false.
  core.String? clusterSecondaryRangeName;

  /// Whether a new subnetwork will be created automatically for the cluster.
  ///
  /// This field is only applicable when `use_ip_aliases` is true.
  core.bool? createSubnetwork;

  /// This field is deprecated, use node_ipv4_cidr_block.
  core.String? nodeIpv4Cidr;

  /// The IP address range of the instance IPs in this cluster.
  ///
  /// This is applicable only if `create_subnetwork` is true. Set to blank to
  /// have a range chosen with the default size. Set to /netmask (e.g. `/14`) to
  /// have a range chosen with a specific netmask. Set to a
  /// [CIDR](http://en.wikipedia.org/wiki/Classless_Inter-Domain_Routing)
  /// notation (e.g. `10.96.0.0/14`) from the RFC-1918 private networks (e.g.
  /// `10.0.0.0/8`, `172.16.0.0/12`, `192.168.0.0/16`) to pick a specific range
  /// to use.
  core.String? nodeIpv4CidrBlock;

  /// This field is deprecated, use services_ipv4_cidr_block.
  core.String? servicesIpv4Cidr;

  /// The IP address range of the services IPs in this cluster.
  ///
  /// If blank, a range will be automatically chosen with the default size. This
  /// field is only applicable when `use_ip_aliases` is true. Set to blank to
  /// have a range chosen with the default size. Set to /netmask (e.g. `/14`) to
  /// have a range chosen with a specific netmask. Set to a
  /// [CIDR](http://en.wikipedia.org/wiki/Classless_Inter-Domain_Routing)
  /// notation (e.g. `10.96.0.0/14`) from the RFC-1918 private networks (e.g.
  /// `10.0.0.0/8`, `172.16.0.0/12`, `192.168.0.0/16`) to pick a specific range
  /// to use.
  core.String? servicesIpv4CidrBlock;

  /// The name of the secondary range to be used as for the services CIDR block.
  ///
  /// The secondary range will be used for service ClusterIPs. This must be an
  /// existing secondary range associated with the cluster subnetwork. This
  /// field is only applicable with use_ip_aliases is true and create_subnetwork
  /// is false.
  core.String? servicesSecondaryRangeName;

  /// A custom subnetwork name to be used if `create_subnetwork` is true.
  ///
  /// If this field is empty, then an automatic name will be chosen for the new
  /// subnetwork.
  core.String? subnetworkName;

  /// The IP address range of the Cloud TPUs in this cluster.
  ///
  /// If unspecified, a range will be automatically chosen with the default
  /// size. This field is only applicable when `use_ip_aliases` is true. If
  /// unspecified, the range will use the default size. Set to /netmask (e.g.
  /// `/14`) to have a range chosen with a specific netmask. Set to a
  /// [CIDR](http://en.wikipedia.org/wiki/Classless_Inter-Domain_Routing)
  /// notation (e.g. `10.96.0.0/14`) from the RFC-1918 private networks (e.g.
  /// `10.0.0.0/8`, `172.16.0.0/12`, `192.168.0.0/16`) to pick a specific range
  /// to use.
  core.String? tpuIpv4CidrBlock;

  /// Whether alias IPs will be used for pod IPs in the cluster.
  ///
  /// This is used in conjunction with use_routes. It cannot be true if
  /// use_routes is true. If both use_ip_aliases and use_routes are false, then
  /// the server picks the default IP allocation mode
  core.bool? useIpAliases;

  /// Whether routes will be used for pod IPs in the cluster.
  ///
  /// This is used in conjunction with use_ip_aliases. It cannot be true if
  /// use_ip_aliases is true. If both use_ip_aliases and use_routes are false,
  /// then the server picks the default IP allocation mode
  core.bool? useRoutes;

  IPAllocationPolicy({
    this.clusterIpv4Cidr,
    this.clusterIpv4CidrBlock,
    this.clusterSecondaryRangeName,
    this.createSubnetwork,
    this.nodeIpv4Cidr,
    this.nodeIpv4CidrBlock,
    this.servicesIpv4Cidr,
    this.servicesIpv4CidrBlock,
    this.servicesSecondaryRangeName,
    this.subnetworkName,
    this.tpuIpv4CidrBlock,
    this.useIpAliases,
    this.useRoutes,
  });

  IPAllocationPolicy.fromJson(core.Map _json)
      : this(
          clusterIpv4Cidr: _json.containsKey('clusterIpv4Cidr')
              ? _json['clusterIpv4Cidr'] as core.String
              : null,
          clusterIpv4CidrBlock: _json.containsKey('clusterIpv4CidrBlock')
              ? _json['clusterIpv4CidrBlock'] as core.String
              : null,
          clusterSecondaryRangeName:
              _json.containsKey('clusterSecondaryRangeName')
                  ? _json['clusterSecondaryRangeName'] as core.String
                  : null,
          createSubnetwork: _json.containsKey('createSubnetwork')
              ? _json['createSubnetwork'] as core.bool
              : null,
          nodeIpv4Cidr: _json.containsKey('nodeIpv4Cidr')
              ? _json['nodeIpv4Cidr'] as core.String
              : null,
          nodeIpv4CidrBlock: _json.containsKey('nodeIpv4CidrBlock')
              ? _json['nodeIpv4CidrBlock'] as core.String
              : null,
          servicesIpv4Cidr: _json.containsKey('servicesIpv4Cidr')
              ? _json['servicesIpv4Cidr'] as core.String
              : null,
          servicesIpv4CidrBlock: _json.containsKey('servicesIpv4CidrBlock')
              ? _json['servicesIpv4CidrBlock'] as core.String
              : null,
          servicesSecondaryRangeName:
              _json.containsKey('servicesSecondaryRangeName')
                  ? _json['servicesSecondaryRangeName'] as core.String
                  : null,
          subnetworkName: _json.containsKey('subnetworkName')
              ? _json['subnetworkName'] as core.String
              : null,
          tpuIpv4CidrBlock: _json.containsKey('tpuIpv4CidrBlock')
              ? _json['tpuIpv4CidrBlock'] as core.String
              : null,
          useIpAliases: _json.containsKey('useIpAliases')
              ? _json['useIpAliases'] as core.bool
              : null,
          useRoutes: _json.containsKey('useRoutes')
              ? _json['useRoutes'] as core.bool
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (clusterIpv4Cidr != null) 'clusterIpv4Cidr': clusterIpv4Cidr!,
        if (clusterIpv4CidrBlock != null)
          'clusterIpv4CidrBlock': clusterIpv4CidrBlock!,
        if (clusterSecondaryRangeName != null)
          'clusterSecondaryRangeName': clusterSecondaryRangeName!,
        if (createSubnetwork != null) 'createSubnetwork': createSubnetwork!,
        if (nodeIpv4Cidr != null) 'nodeIpv4Cidr': nodeIpv4Cidr!,
        if (nodeIpv4CidrBlock != null) 'nodeIpv4CidrBlock': nodeIpv4CidrBlock!,
        if (servicesIpv4Cidr != null) 'servicesIpv4Cidr': servicesIpv4Cidr!,
        if (servicesIpv4CidrBlock != null)
          'servicesIpv4CidrBlock': servicesIpv4CidrBlock!,
        if (servicesSecondaryRangeName != null)
          'servicesSecondaryRangeName': servicesSecondaryRangeName!,
        if (subnetworkName != null) 'subnetworkName': subnetworkName!,
        if (tpuIpv4CidrBlock != null) 'tpuIpv4CidrBlock': tpuIpv4CidrBlock!,
        if (useIpAliases != null) 'useIpAliases': useIpAliases!,
        if (useRoutes != null) 'useRoutes': useRoutes!,
      };
}

/// IdentityServiceConfig is configuration for Identity Service which allows
/// customers to use external identity providers with the K8S API
class IdentityServiceConfig {
  /// Whether to enable the Identity Service component
  core.bool? enabled;

  IdentityServiceConfig({
    this.enabled,
  });

  IdentityServiceConfig.fromJson(core.Map _json)
      : this(
          enabled: _json.containsKey('enabled')
              ? _json['enabled'] as core.bool
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (enabled != null) 'enabled': enabled!,
      };
}

/// IntraNodeVisibilityConfig contains the desired config of the intra-node
/// visibility on this cluster.
class IntraNodeVisibilityConfig {
  /// Enables intra node visibility for this cluster.
  core.bool? enabled;

  IntraNodeVisibilityConfig({
    this.enabled,
  });

  IntraNodeVisibilityConfig.fromJson(core.Map _json)
      : this(
          enabled: _json.containsKey('enabled')
              ? _json['enabled'] as core.bool
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (enabled != null) 'enabled': enabled!,
      };
}

/// Jwk is a JSON Web Key as specified in RFC 7517
class Jwk {
  /// Algorithm.
  core.String? alg;

  /// Used for ECDSA keys.
  core.String? crv;

  /// Used for RSA keys.
  core.String? e;

  /// Key ID.
  core.String? kid;

  /// Key Type.
  core.String? kty;

  /// Used for RSA keys.
  core.String? n;

  /// Permitted uses for the public keys.
  core.String? use;

  /// Used for ECDSA keys.
  core.String? x;

  /// Used for ECDSA keys.
  core.String? y;

  Jwk({
    this.alg,
    this.crv,
    this.e,
    this.kid,
    this.kty,
    this.n,
    this.use,
    this.x,
    this.y,
  });

  Jwk.fromJson(core.Map _json)
      : this(
          alg: _json.containsKey('alg') ? _json['alg'] as core.String : null,
          crv: _json.containsKey('crv') ? _json['crv'] as core.String : null,
          e: _json.containsKey('e') ? _json['e'] as core.String : null,
          kid: _json.containsKey('kid') ? _json['kid'] as core.String : null,
          kty: _json.containsKey('kty') ? _json['kty'] as core.String : null,
          n: _json.containsKey('n') ? _json['n'] as core.String : null,
          use: _json.containsKey('use') ? _json['use'] as core.String : null,
          x: _json.containsKey('x') ? _json['x'] as core.String : null,
          y: _json.containsKey('y') ? _json['y'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (alg != null) 'alg': alg!,
        if (crv != null) 'crv': crv!,
        if (e != null) 'e': e!,
        if (kid != null) 'kid': kid!,
        if (kty != null) 'kty': kty!,
        if (n != null) 'n': n!,
        if (use != null) 'use': use!,
        if (x != null) 'x': x!,
        if (y != null) 'y': y!,
      };
}

/// Configuration for the Kubernetes Dashboard.
class KubernetesDashboard {
  /// Whether the Kubernetes Dashboard is enabled for this cluster.
  core.bool? disabled;

  KubernetesDashboard({
    this.disabled,
  });

  KubernetesDashboard.fromJson(core.Map _json)
      : this(
          disabled: _json.containsKey('disabled')
              ? _json['disabled'] as core.bool
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (disabled != null) 'disabled': disabled!,
      };
}

/// Configuration for the legacy Attribute Based Access Control authorization
/// mode.
class LegacyAbac {
  /// Whether the ABAC authorizer is enabled for this cluster.
  ///
  /// When enabled, identities in the system, including service accounts, nodes,
  /// and controllers, will have statically granted permissions beyond those
  /// provided by the RBAC configuration or IAM.
  core.bool? enabled;

  LegacyAbac({
    this.enabled,
  });

  LegacyAbac.fromJson(core.Map _json)
      : this(
          enabled: _json.containsKey('enabled')
              ? _json['enabled'] as core.bool
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (enabled != null) 'enabled': enabled!,
      };
}

/// Parameters that can be configured on Linux nodes.
class LinuxNodeConfig {
  /// The Linux kernel parameters to be applied to the nodes and all pods
  /// running on the nodes.
  ///
  /// The following parameters are supported. net.core.netdev_max_backlog
  /// net.core.rmem_max net.core.wmem_default net.core.wmem_max
  /// net.core.optmem_max net.core.somaxconn net.ipv4.tcp_rmem net.ipv4.tcp_wmem
  /// net.ipv4.tcp_tw_reuse
  core.Map<core.String, core.String>? sysctls;

  LinuxNodeConfig({
    this.sysctls,
  });

  LinuxNodeConfig.fromJson(core.Map _json)
      : this(
          sysctls: _json.containsKey('sysctls')
              ? (_json['sysctls'] as core.Map<core.String, core.dynamic>).map(
                  (key, item) => core.MapEntry(
                    key,
                    item as core.String,
                  ),
                )
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (sysctls != null) 'sysctls': sysctls!,
      };
}

/// ListClustersResponse is the result of ListClustersRequest.
class ListClustersResponse {
  /// A list of clusters in the project in the specified zone, or across all
  /// ones.
  core.List<Cluster>? clusters;

  /// If any zones are listed here, the list of clusters returned may be missing
  /// those zones.
  core.List<core.String>? missingZones;

  ListClustersResponse({
    this.clusters,
    this.missingZones,
  });

  ListClustersResponse.fromJson(core.Map _json)
      : this(
          clusters: _json.containsKey('clusters')
              ? (_json['clusters'] as core.List)
                  .map((value) => Cluster.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          missingZones: _json.containsKey('missingZones')
              ? (_json['missingZones'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (clusters != null) 'clusters': clusters!,
        if (missingZones != null) 'missingZones': missingZones!,
      };
}

/// ListNodePoolsResponse is the result of ListNodePoolsRequest.
class ListNodePoolsResponse {
  /// A list of node pools for a cluster.
  core.List<NodePool>? nodePools;

  ListNodePoolsResponse({
    this.nodePools,
  });

  ListNodePoolsResponse.fromJson(core.Map _json)
      : this(
          nodePools: _json.containsKey('nodePools')
              ? (_json['nodePools'] as core.List)
                  .map((value) => NodePool.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (nodePools != null) 'nodePools': nodePools!,
      };
}

/// ListOperationsResponse is the result of ListOperationsRequest.
class ListOperationsResponse {
  /// If any zones are listed here, the list of operations returned may be
  /// missing the operations from those zones.
  core.List<core.String>? missingZones;

  /// A list of operations in the project in the specified zone.
  core.List<Operation>? operations;

  ListOperationsResponse({
    this.missingZones,
    this.operations,
  });

  ListOperationsResponse.fromJson(core.Map _json)
      : this(
          missingZones: _json.containsKey('missingZones')
              ? (_json['missingZones'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          operations: _json.containsKey('operations')
              ? (_json['operations'] as core.List)
                  .map((value) => Operation.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (missingZones != null) 'missingZones': missingZones!,
        if (operations != null) 'operations': operations!,
      };
}

/// ListUsableSubnetworksResponse is the response of
/// ListUsableSubnetworksRequest.
class ListUsableSubnetworksResponse {
  /// This token allows you to get the next page of results for list requests.
  ///
  /// If the number of results is larger than `page_size`, use the
  /// `next_page_token` as a value for the query parameter `page_token` in the
  /// next request. The value will become empty when there are no more pages.
  core.String? nextPageToken;

  /// A list of usable subnetworks in the specified network project.
  core.List<UsableSubnetwork>? subnetworks;

  ListUsableSubnetworksResponse({
    this.nextPageToken,
    this.subnetworks,
  });

  ListUsableSubnetworksResponse.fromJson(core.Map _json)
      : this(
          nextPageToken: _json.containsKey('nextPageToken')
              ? _json['nextPageToken'] as core.String
              : null,
          subnetworks: _json.containsKey('subnetworks')
              ? (_json['subnetworks'] as core.List)
                  .map((value) => UsableSubnetwork.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (subnetworks != null) 'subnetworks': subnetworks!,
      };
}

/// LoggingComponentConfig is cluster logging component configuration.
class LoggingComponentConfig {
  /// Select components to collect logs.
  ///
  /// An empty set would disable all logging.
  core.List<core.String>? enableComponents;

  LoggingComponentConfig({
    this.enableComponents,
  });

  LoggingComponentConfig.fromJson(core.Map _json)
      : this(
          enableComponents: _json.containsKey('enableComponents')
              ? (_json['enableComponents'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (enableComponents != null) 'enableComponents': enableComponents!,
      };
}

/// LoggingConfig is cluster logging configuration.
class LoggingConfig {
  /// Logging components configuration
  LoggingComponentConfig? componentConfig;

  LoggingConfig({
    this.componentConfig,
  });

  LoggingConfig.fromJson(core.Map _json)
      : this(
          componentConfig: _json.containsKey('componentConfig')
              ? LoggingComponentConfig.fromJson(_json['componentConfig']
                  as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (componentConfig != null) 'componentConfig': componentConfig!,
      };
}

/// Represents the Maintenance exclusion option.
class MaintenanceExclusionOptions {
  /// Scope specifies the upgrade scope which upgrades are blocked by the
  /// exclusion.
  /// Possible string values are:
  /// - "NO_UPGRADES" : NO_UPGRADES excludes all upgrades, including patch
  /// upgrades and minor upgrades across control planes and nodes. This is the
  /// default exclusion behavior.
  /// - "NO_MINOR_UPGRADES" : NO_MINOR_UPGRADES excludes all minor upgrades for
  /// the cluster, only patches are allowed.
  /// - "NO_MINOR_OR_NODE_UPGRADES" : NO_MINOR_OR_NODE_UPGRADES excludes all
  /// minor upgrades for the cluster, and also exclude all node pool upgrades.
  /// Only control plane patches are allowed.
  core.String? scope;

  MaintenanceExclusionOptions({
    this.scope,
  });

  MaintenanceExclusionOptions.fromJson(core.Map _json)
      : this(
          scope:
              _json.containsKey('scope') ? _json['scope'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (scope != null) 'scope': scope!,
      };
}

/// MaintenancePolicy defines the maintenance policy to be used for the cluster.
class MaintenancePolicy {
  /// A hash identifying the version of this policy, so that updates to fields
  /// of the policy won't accidentally undo intermediate changes (and so that
  /// users of the API unaware of some fields won't accidentally remove other
  /// fields).
  ///
  /// Make a `get()` request to the cluster to get the current resource version
  /// and include it with requests to set the policy.
  core.String? resourceVersion;

  /// Specifies the maintenance window in which maintenance may be performed.
  MaintenanceWindow? window;

  MaintenancePolicy({
    this.resourceVersion,
    this.window,
  });

  MaintenancePolicy.fromJson(core.Map _json)
      : this(
          resourceVersion: _json.containsKey('resourceVersion')
              ? _json['resourceVersion'] as core.String
              : null,
          window: _json.containsKey('window')
              ? MaintenanceWindow.fromJson(
                  _json['window'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (resourceVersion != null) 'resourceVersion': resourceVersion!,
        if (window != null) 'window': window!,
      };
}

/// MaintenanceWindow defines the maintenance window to be used for the cluster.
class MaintenanceWindow {
  /// DailyMaintenanceWindow specifies a daily maintenance operation window.
  DailyMaintenanceWindow? dailyMaintenanceWindow;

  /// Exceptions to maintenance window.
  ///
  /// Non-emergency maintenance should not occur in these windows.
  core.Map<core.String, TimeWindow>? maintenanceExclusions;

  /// RecurringWindow specifies some number of recurring time periods for
  /// maintenance to occur.
  ///
  /// The time windows may be overlapping. If no maintenance windows are set,
  /// maintenance can occur at any time.
  RecurringTimeWindow? recurringWindow;

  MaintenanceWindow({
    this.dailyMaintenanceWindow,
    this.maintenanceExclusions,
    this.recurringWindow,
  });

  MaintenanceWindow.fromJson(core.Map _json)
      : this(
          dailyMaintenanceWindow: _json.containsKey('dailyMaintenanceWindow')
              ? DailyMaintenanceWindow.fromJson(_json['dailyMaintenanceWindow']
                  as core.Map<core.String, core.dynamic>)
              : null,
          maintenanceExclusions: _json.containsKey('maintenanceExclusions')
              ? (_json['maintenanceExclusions']
                      as core.Map<core.String, core.dynamic>)
                  .map(
                  (key, item) => core.MapEntry(
                    key,
                    TimeWindow.fromJson(
                        item as core.Map<core.String, core.dynamic>),
                  ),
                )
              : null,
          recurringWindow: _json.containsKey('recurringWindow')
              ? RecurringTimeWindow.fromJson(_json['recurringWindow']
                  as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (dailyMaintenanceWindow != null)
          'dailyMaintenanceWindow': dailyMaintenanceWindow!,
        if (maintenanceExclusions != null)
          'maintenanceExclusions': maintenanceExclusions!,
        if (recurringWindow != null) 'recurringWindow': recurringWindow!,
      };
}

/// The authentication information for accessing the master endpoint.
///
/// Authentication can be done using HTTP basic auth or using client
/// certificates.
class MasterAuth {
  /// Base64-encoded public certificate used by clients to authenticate to the
  /// cluster endpoint.
  ///
  /// Output only.
  core.String? clientCertificate;

  /// Configuration for client certificate authentication on the cluster.
  ///
  /// For clusters before v1.12, if no configuration is specified, a client
  /// certificate is issued.
  ClientCertificateConfig? clientCertificateConfig;

  /// Base64-encoded private key used by clients to authenticate to the cluster
  /// endpoint.
  ///
  /// Output only.
  core.String? clientKey;

  /// Base64-encoded public certificate that is the root of trust for the
  /// cluster.
  ///
  /// Output only.
  core.String? clusterCaCertificate;

  /// The password to use for HTTP basic authentication to the master endpoint.
  ///
  /// Because the master endpoint is open to the Internet, you should create a
  /// strong password. If a password is provided for cluster creation, username
  /// must be non-empty. Warning: basic authentication is deprecated, and will
  /// be removed in GKE control plane versions 1.19 and newer. For a list of
  /// recommended authentication methods, see:
  /// https://cloud.google.com/kubernetes-engine/docs/how-to/api-server-authentication
  core.String? password;

  /// The username to use for HTTP basic authentication to the master endpoint.
  ///
  /// For clusters v1.6.0 and later, basic authentication can be disabled by
  /// leaving username unspecified (or setting it to the empty string). Warning:
  /// basic authentication is deprecated, and will be removed in GKE control
  /// plane versions 1.19 and newer. For a list of recommended authentication
  /// methods, see:
  /// https://cloud.google.com/kubernetes-engine/docs/how-to/api-server-authentication
  core.String? username;

  MasterAuth({
    this.clientCertificate,
    this.clientCertificateConfig,
    this.clientKey,
    this.clusterCaCertificate,
    this.password,
    this.username,
  });

  MasterAuth.fromJson(core.Map _json)
      : this(
          clientCertificate: _json.containsKey('clientCertificate')
              ? _json['clientCertificate'] as core.String
              : null,
          clientCertificateConfig: _json.containsKey('clientCertificateConfig')
              ? ClientCertificateConfig.fromJson(
                  _json['clientCertificateConfig']
                      as core.Map<core.String, core.dynamic>)
              : null,
          clientKey: _json.containsKey('clientKey')
              ? _json['clientKey'] as core.String
              : null,
          clusterCaCertificate: _json.containsKey('clusterCaCertificate')
              ? _json['clusterCaCertificate'] as core.String
              : null,
          password: _json.containsKey('password')
              ? _json['password'] as core.String
              : null,
          username: _json.containsKey('username')
              ? _json['username'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (clientCertificate != null) 'clientCertificate': clientCertificate!,
        if (clientCertificateConfig != null)
          'clientCertificateConfig': clientCertificateConfig!,
        if (clientKey != null) 'clientKey': clientKey!,
        if (clusterCaCertificate != null)
          'clusterCaCertificate': clusterCaCertificate!,
        if (password != null) 'password': password!,
        if (username != null) 'username': username!,
      };
}

/// Configuration options for the master authorized networks feature.
///
/// Enabled master authorized networks will disallow all external traffic to
/// access Kubernetes master through HTTPS except traffic from the given CIDR
/// blocks, Google Compute Engine Public IPs and Google Prod IPs.
class MasterAuthorizedNetworksConfig {
  /// cidr_blocks define up to 50 external networks that could access Kubernetes
  /// master through HTTPS.
  core.List<CidrBlock>? cidrBlocks;

  /// Whether or not master authorized networks is enabled.
  core.bool? enabled;

  MasterAuthorizedNetworksConfig({
    this.cidrBlocks,
    this.enabled,
  });

  MasterAuthorizedNetworksConfig.fromJson(core.Map _json)
      : this(
          cidrBlocks: _json.containsKey('cidrBlocks')
              ? (_json['cidrBlocks'] as core.List)
                  .map((value) => CidrBlock.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          enabled: _json.containsKey('enabled')
              ? _json['enabled'] as core.bool
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (cidrBlocks != null) 'cidrBlocks': cidrBlocks!,
        if (enabled != null) 'enabled': enabled!,
      };
}

/// Constraints applied to pods.
class MaxPodsConstraint {
  /// Constraint enforced on the max num of pods per node.
  core.String? maxPodsPerNode;

  MaxPodsConstraint({
    this.maxPodsPerNode,
  });

  MaxPodsConstraint.fromJson(core.Map _json)
      : this(
          maxPodsPerNode: _json.containsKey('maxPodsPerNode')
              ? _json['maxPodsPerNode'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (maxPodsPerNode != null) 'maxPodsPerNode': maxPodsPerNode!,
      };
}

/// Configuration for issuance of mTLS keys and certificates to Kubernetes pods.
class MeshCertificates {
  /// enable_certificates controls issuance of workload mTLS certificates.
  ///
  /// If set, the GKE Workload Identity Certificates controller and node agent
  /// will be deployed in the cluster, which can then be configured by creating
  /// a WorkloadCertificateConfig Custom Resource. Requires Workload Identity
  /// (workload_pool must be non-empty).
  core.bool? enableCertificates;

  MeshCertificates({
    this.enableCertificates,
  });

  MeshCertificates.fromJson(core.Map _json)
      : this(
          enableCertificates: _json.containsKey('enableCertificates')
              ? _json['enableCertificates'] as core.bool
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (enableCertificates != null)
          'enableCertificates': enableCertificates!,
      };
}

/// Progress metric is (string, int|float|string) pair.
class Metric {
  /// For metrics with floating point value.
  core.double? doubleValue;

  /// For metrics with integer value.
  core.String? intValue;

  /// Metric name, e.g., "nodes total", "percent done".
  ///
  /// Required.
  core.String? name;

  /// For metrics with custom values (ratios, visual progress, etc.).
  core.String? stringValue;

  Metric({
    this.doubleValue,
    this.intValue,
    this.name,
    this.stringValue,
  });

  Metric.fromJson(core.Map _json)
      : this(
          doubleValue: _json.containsKey('doubleValue')
              ? (_json['doubleValue'] as core.num).toDouble()
              : null,
          intValue: _json.containsKey('intValue')
              ? _json['intValue'] as core.String
              : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          stringValue: _json.containsKey('stringValue')
              ? _json['stringValue'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (doubleValue != null) 'doubleValue': doubleValue!,
        if (intValue != null) 'intValue': intValue!,
        if (name != null) 'name': name!,
        if (stringValue != null) 'stringValue': stringValue!,
      };
}

/// MonitoringComponentConfig is cluster monitoring component configuration.
class MonitoringComponentConfig {
  /// Select components to collect metrics.
  ///
  /// An empty set would disable all monitoring.
  core.List<core.String>? enableComponents;

  MonitoringComponentConfig({
    this.enableComponents,
  });

  MonitoringComponentConfig.fromJson(core.Map _json)
      : this(
          enableComponents: _json.containsKey('enableComponents')
              ? (_json['enableComponents'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (enableComponents != null) 'enableComponents': enableComponents!,
      };
}

/// MonitoringConfig is cluster monitoring configuration.
class MonitoringConfig {
  /// Monitoring components configuration
  MonitoringComponentConfig? componentConfig;

  MonitoringConfig({
    this.componentConfig,
  });

  MonitoringConfig.fromJson(core.Map _json)
      : this(
          componentConfig: _json.containsKey('componentConfig')
              ? MonitoringComponentConfig.fromJson(_json['componentConfig']
                  as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (componentConfig != null) 'componentConfig': componentConfig!,
      };
}

/// NetworkConfig reports the relative names of network & subnetwork.
class NetworkConfig {
  /// The desired datapath provider for this cluster.
  ///
  /// By default, uses the IPTables-based kube-proxy implementation.
  /// Possible string values are:
  /// - "DATAPATH_PROVIDER_UNSPECIFIED" : Default value.
  /// - "LEGACY_DATAPATH" : Use the IPTables implementation based on kube-proxy.
  /// - "ADVANCED_DATAPATH" : Use the eBPF based GKE Dataplane V2 with
  /// additional features. See the
  /// [GKE Dataplane V2 documentation](https://cloud.google.com/kubernetes-engine/docs/how-to/dataplane-v2)
  /// for more.
  core.String? datapathProvider;

  /// Whether the cluster disables default in-node sNAT rules.
  ///
  /// In-node sNAT rules will be disabled when default_snat_status is disabled.
  /// When disabled is set to false, default IP masquerade rules will be applied
  /// to the nodes to prevent sNAT on cluster internal traffic.
  DefaultSnatStatus? defaultSnatStatus;

  /// DNSConfig contains clusterDNS config for this cluster.
  DNSConfig? dnsConfig;

  /// Whether Intra-node visibility is enabled for this cluster.
  ///
  /// This makes same node pod to pod traffic visible for VPC network.
  core.bool? enableIntraNodeVisibility;

  /// Whether L4ILB Subsetting is enabled for this cluster.
  core.bool? enableL4ilbSubsetting;

  /// The relative name of the Google Compute Engine
  /// network(https://cloud.google.com/compute/docs/networks-and-firewalls#networks)
  /// to which the cluster is connected.
  ///
  /// Example: projects/my-project/global/networks/my-network
  ///
  /// Output only.
  core.String? network;

  /// The desired state of IPv6 connectivity to Google Services.
  ///
  /// By default, no private IPv6 access to or from Google Services (all access
  /// will be via IPv4)
  /// Possible string values are:
  /// - "PRIVATE_IPV6_GOOGLE_ACCESS_UNSPECIFIED" : Default value. Same as
  /// DISABLED
  /// - "PRIVATE_IPV6_GOOGLE_ACCESS_DISABLED" : No private access to or from
  /// Google Services
  /// - "PRIVATE_IPV6_GOOGLE_ACCESS_TO_GOOGLE" : Enables private IPv6 access to
  /// Google Services from GKE
  /// - "PRIVATE_IPV6_GOOGLE_ACCESS_BIDIRECTIONAL" : Enables priate IPv6 access
  /// to and from Google Services
  core.String? privateIpv6GoogleAccess;

  /// ServiceExternalIPsConfig specifies if services with externalIPs field are
  /// blocked or not.
  ServiceExternalIPsConfig? serviceExternalIpsConfig;

  /// The relative name of the Google Compute Engine
  /// [subnetwork](https://cloud.google.com/compute/docs/vpc) to which the
  /// cluster is connected.
  ///
  /// Example: projects/my-project/regions/us-central1/subnetworks/my-subnet
  ///
  /// Output only.
  core.String? subnetwork;

  NetworkConfig({
    this.datapathProvider,
    this.defaultSnatStatus,
    this.dnsConfig,
    this.enableIntraNodeVisibility,
    this.enableL4ilbSubsetting,
    this.network,
    this.privateIpv6GoogleAccess,
    this.serviceExternalIpsConfig,
    this.subnetwork,
  });

  NetworkConfig.fromJson(core.Map _json)
      : this(
          datapathProvider: _json.containsKey('datapathProvider')
              ? _json['datapathProvider'] as core.String
              : null,
          defaultSnatStatus: _json.containsKey('defaultSnatStatus')
              ? DefaultSnatStatus.fromJson(_json['defaultSnatStatus']
                  as core.Map<core.String, core.dynamic>)
              : null,
          dnsConfig: _json.containsKey('dnsConfig')
              ? DNSConfig.fromJson(
                  _json['dnsConfig'] as core.Map<core.String, core.dynamic>)
              : null,
          enableIntraNodeVisibility:
              _json.containsKey('enableIntraNodeVisibility')
                  ? _json['enableIntraNodeVisibility'] as core.bool
                  : null,
          enableL4ilbSubsetting: _json.containsKey('enableL4ilbSubsetting')
              ? _json['enableL4ilbSubsetting'] as core.bool
              : null,
          network: _json.containsKey('network')
              ? _json['network'] as core.String
              : null,
          privateIpv6GoogleAccess: _json.containsKey('privateIpv6GoogleAccess')
              ? _json['privateIpv6GoogleAccess'] as core.String
              : null,
          serviceExternalIpsConfig:
              _json.containsKey('serviceExternalIpsConfig')
                  ? ServiceExternalIPsConfig.fromJson(
                      _json['serviceExternalIpsConfig']
                          as core.Map<core.String, core.dynamic>)
                  : null,
          subnetwork: _json.containsKey('subnetwork')
              ? _json['subnetwork'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (datapathProvider != null) 'datapathProvider': datapathProvider!,
        if (defaultSnatStatus != null) 'defaultSnatStatus': defaultSnatStatus!,
        if (dnsConfig != null) 'dnsConfig': dnsConfig!,
        if (enableIntraNodeVisibility != null)
          'enableIntraNodeVisibility': enableIntraNodeVisibility!,
        if (enableL4ilbSubsetting != null)
          'enableL4ilbSubsetting': enableL4ilbSubsetting!,
        if (network != null) 'network': network!,
        if (privateIpv6GoogleAccess != null)
          'privateIpv6GoogleAccess': privateIpv6GoogleAccess!,
        if (serviceExternalIpsConfig != null)
          'serviceExternalIpsConfig': serviceExternalIpsConfig!,
        if (subnetwork != null) 'subnetwork': subnetwork!,
      };
}

/// Configuration options for the NetworkPolicy feature.
///
/// https://kubernetes.io/docs/concepts/services-networking/networkpolicies/
class NetworkPolicy {
  /// Whether network policy is enabled on the cluster.
  core.bool? enabled;

  /// The selected network policy provider.
  /// Possible string values are:
  /// - "PROVIDER_UNSPECIFIED" : Not set
  /// - "CALICO" : Tigera (Calico Felix).
  core.String? provider;

  NetworkPolicy({
    this.enabled,
    this.provider,
  });

  NetworkPolicy.fromJson(core.Map _json)
      : this(
          enabled: _json.containsKey('enabled')
              ? _json['enabled'] as core.bool
              : null,
          provider: _json.containsKey('provider')
              ? _json['provider'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (enabled != null) 'enabled': enabled!,
        if (provider != null) 'provider': provider!,
      };
}

/// Configuration for NetworkPolicy.
///
/// This only tracks whether the addon is enabled or not on the Master, it does
/// not track whether network policy is enabled for the nodes.
class NetworkPolicyConfig {
  /// Whether NetworkPolicy is enabled for this cluster.
  core.bool? disabled;

  NetworkPolicyConfig({
    this.disabled,
  });

  NetworkPolicyConfig.fromJson(core.Map _json)
      : this(
          disabled: _json.containsKey('disabled')
              ? _json['disabled'] as core.bool
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (disabled != null) 'disabled': disabled!,
      };
}

/// Collection of Compute Engine network tags that can be applied to a node's
/// underlying VM instance.
class NetworkTags {
  /// List of network tags.
  core.List<core.String>? tags;

  NetworkTags({
    this.tags,
  });

  NetworkTags.fromJson(core.Map _json)
      : this(
          tags: _json.containsKey('tags')
              ? (_json['tags'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (tags != null) 'tags': tags!,
      };
}

/// Parameters that describe the nodes in a cluster.
///
/// *Note: *GKE Autopilot clusters do not recognize parameters in `NodeConfig`.
/// Use AutoprovisioningNodePoolDefaults instead.
class NodeConfig {
  /// A list of hardware accelerators to be attached to each node.
  ///
  /// See https://cloud.google.com/compute/docs/gpus for more information about
  /// support for GPUs.
  core.List<AcceleratorConfig>? accelerators;

  /// Advanced features for the Compute Engine VM.
  AdvancedMachineFeatures? advancedMachineFeatures;

  /// The Customer Managed Encryption Key used to encrypt the boot disk attached
  /// to each node in the node pool.
  ///
  /// This should be of the form
  /// projects/\[KEY_PROJECT_ID\]/locations/\[LOCATION\]/keyRings/\[RING_NAME\]/cryptoKeys/\[KEY_NAME\].
  /// For more information about protecting resources with Cloud KMS Keys please
  /// see:
  /// https://cloud.google.com/compute/docs/disks/customer-managed-encryption
  core.String? bootDiskKmsKey;

  /// Size of the disk attached to each node, specified in GB.
  ///
  /// The smallest allowed disk size is 10GB. If unspecified, the default disk
  /// size is 100GB.
  core.int? diskSizeGb;

  /// Type of the disk attached to each node (e.g. 'pd-standard', 'pd-ssd' or
  /// 'pd-balanced') If unspecified, the default disk type is 'pd-standard'
  core.String? diskType;

  /// Google Container File System (image streaming) configs.
  GcfsConfig? gcfsConfig;

  /// Enable or disable gvnic in the node pool.
  VirtualNIC? gvnic;

  /// The image type to use for this node.
  ///
  /// Note that for a given image type, the latest version of it will be used.
  core.String? imageType;

  /// Node kubelet configs.
  NodeKubeletConfig? kubeletConfig;

  /// The map of Kubernetes labels (key/value pairs) to be applied to each node.
  ///
  /// These will added in addition to any default label(s) that Kubernetes may
  /// apply to the node. In case of conflict in label keys, the applied set may
  /// differ depending on the Kubernetes version -- it's best to assume the
  /// behavior is undefined and conflicts should be avoided. For more
  /// information, including usage and the valid values, see:
  /// https://kubernetes.io/docs/concepts/overview/working-with-objects/labels/
  core.Map<core.String, core.String>? labels;

  /// Parameters that can be configured on Linux nodes.
  LinuxNodeConfig? linuxNodeConfig;

  /// The number of local SSD disks to be attached to the node.
  ///
  /// The limit for this value is dependent upon the maximum number of disks
  /// available on a machine per zone. See:
  /// https://cloud.google.com/compute/docs/disks/local-ssd for more
  /// information.
  core.int? localSsdCount;

  /// The name of a Google Compute Engine
  /// [machine type](https://cloud.google.com/compute/docs/machine-types) If
  /// unspecified, the default machine type is `e2-medium`.
  core.String? machineType;

  /// The metadata key/value pairs assigned to instances in the cluster.
  ///
  /// Keys must conform to the regexp `[a-zA-Z0-9-_]+` and be less than 128
  /// bytes in length. These are reflected as part of a URL in the metadata
  /// server. Additionally, to avoid ambiguity, keys must not conflict with any
  /// other metadata keys for the project or be one of the reserved keys: -
  /// "cluster-location" - "cluster-name" - "cluster-uid" - "configure-sh" -
  /// "containerd-configure-sh" - "enable-os-login" - "gci-ensure-gke-docker" -
  /// "gci-metrics-enabled" - "gci-update-strategy" - "instance-template" -
  /// "kube-env" - "startup-script" - "user-data" - "disable-address-manager" -
  /// "windows-startup-script-ps1" - "common-psm1" - "k8s-node-setup-psm1" -
  /// "install-ssh-psm1" - "user-profile-psm1" Values are free-form strings, and
  /// only have meaning as interpreted by the image running in the instance. The
  /// only restriction placed on them is that each value's size must be less
  /// than or equal to 32 KB. The total size of all keys and values must be less
  /// than 512 KB.
  core.Map<core.String, core.String>? metadata;

  /// Minimum CPU platform to be used by this instance.
  ///
  /// The instance may be scheduled on the specified or newer CPU platform.
  /// Applicable values are the friendly names of CPU platforms, such as
  /// `minCpuPlatform: "Intel Haswell"` or `minCpuPlatform: "Intel Sandy
  /// Bridge"`. For more information, read
  /// [how to specify min CPU platform](https://cloud.google.com/compute/docs/instances/specify-min-cpu-platform)
  core.String? minCpuPlatform;

  /// Setting this field will assign instances of this pool to run on the
  /// specified node group.
  ///
  /// This is useful for running workloads on
  /// [sole tenant nodes](https://cloud.google.com/compute/docs/nodes/sole-tenant-nodes).
  core.String? nodeGroup;

  /// The set of Google API scopes to be made available on all of the node VMs
  /// under the "default" service account.
  ///
  /// The following scopes are recommended, but not required, and by default are
  /// not included: * `https://www.googleapis.com/auth/compute` is required for
  /// mounting persistent storage on your nodes. *
  /// `https://www.googleapis.com/auth/devstorage.read_only` is required for
  /// communicating with **gcr.io** (the
  /// [Google Container Registry](https://cloud.google.com/container-registry/)).
  /// If unspecified, no scopes are added, unless Cloud Logging or Cloud
  /// Monitoring are enabled, in which case their required scopes will be added.
  core.List<core.String>? oauthScopes;

  /// Whether the nodes are created as preemptible VM instances.
  ///
  /// See: https://cloud.google.com/compute/docs/instances/preemptible for more
  /// information about preemptible VM instances.
  core.bool? preemptible;

  /// The optional reservation affinity.
  ///
  /// Setting this field will apply the specified
  /// [Zonal Compute Reservation](https://cloud.google.com/compute/docs/instances/reserving-zonal-resources)
  /// to this node pool.
  ReservationAffinity? reservationAffinity;

  /// Sandbox configuration for this node.
  SandboxConfig? sandboxConfig;

  /// The Google Cloud Platform Service Account to be used by the node VMs.
  ///
  /// Specify the email address of the Service Account; otherwise, if no Service
  /// Account is specified, the "default" service account is used.
  core.String? serviceAccount;

  /// Shielded Instance options.
  ShieldedInstanceConfig? shieldedInstanceConfig;

  /// Spot flag for enabling Spot VM, which is a rebrand of the existing
  /// preemptible flag.
  core.bool? spot;

  /// The list of instance tags applied to all nodes.
  ///
  /// Tags are used to identify valid sources or targets for network firewalls
  /// and are specified by the client during cluster or node pool creation. Each
  /// tag within the list must comply with RFC1035.
  core.List<core.String>? tags;

  /// List of kubernetes taints to be applied to each node.
  ///
  /// For more information, including usage and the valid values, see:
  /// https://kubernetes.io/docs/concepts/configuration/taint-and-toleration/
  core.List<NodeTaint>? taints;

  /// The workload metadata configuration for this node.
  WorkloadMetadataConfig? workloadMetadataConfig;

  NodeConfig({
    this.accelerators,
    this.advancedMachineFeatures,
    this.bootDiskKmsKey,
    this.diskSizeGb,
    this.diskType,
    this.gcfsConfig,
    this.gvnic,
    this.imageType,
    this.kubeletConfig,
    this.labels,
    this.linuxNodeConfig,
    this.localSsdCount,
    this.machineType,
    this.metadata,
    this.minCpuPlatform,
    this.nodeGroup,
    this.oauthScopes,
    this.preemptible,
    this.reservationAffinity,
    this.sandboxConfig,
    this.serviceAccount,
    this.shieldedInstanceConfig,
    this.spot,
    this.tags,
    this.taints,
    this.workloadMetadataConfig,
  });

  NodeConfig.fromJson(core.Map _json)
      : this(
          accelerators: _json.containsKey('accelerators')
              ? (_json['accelerators'] as core.List)
                  .map((value) => AcceleratorConfig.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          advancedMachineFeatures: _json.containsKey('advancedMachineFeatures')
              ? AdvancedMachineFeatures.fromJson(
                  _json['advancedMachineFeatures']
                      as core.Map<core.String, core.dynamic>)
              : null,
          bootDiskKmsKey: _json.containsKey('bootDiskKmsKey')
              ? _json['bootDiskKmsKey'] as core.String
              : null,
          diskSizeGb: _json.containsKey('diskSizeGb')
              ? _json['diskSizeGb'] as core.int
              : null,
          diskType: _json.containsKey('diskType')
              ? _json['diskType'] as core.String
              : null,
          gcfsConfig: _json.containsKey('gcfsConfig')
              ? GcfsConfig.fromJson(
                  _json['gcfsConfig'] as core.Map<core.String, core.dynamic>)
              : null,
          gvnic: _json.containsKey('gvnic')
              ? VirtualNIC.fromJson(
                  _json['gvnic'] as core.Map<core.String, core.dynamic>)
              : null,
          imageType: _json.containsKey('imageType')
              ? _json['imageType'] as core.String
              : null,
          kubeletConfig: _json.containsKey('kubeletConfig')
              ? NodeKubeletConfig.fromJson(
                  _json['kubeletConfig'] as core.Map<core.String, core.dynamic>)
              : null,
          labels: _json.containsKey('labels')
              ? (_json['labels'] as core.Map<core.String, core.dynamic>).map(
                  (key, item) => core.MapEntry(
                    key,
                    item as core.String,
                  ),
                )
              : null,
          linuxNodeConfig: _json.containsKey('linuxNodeConfig')
              ? LinuxNodeConfig.fromJson(_json['linuxNodeConfig']
                  as core.Map<core.String, core.dynamic>)
              : null,
          localSsdCount: _json.containsKey('localSsdCount')
              ? _json['localSsdCount'] as core.int
              : null,
          machineType: _json.containsKey('machineType')
              ? _json['machineType'] as core.String
              : null,
          metadata: _json.containsKey('metadata')
              ? (_json['metadata'] as core.Map<core.String, core.dynamic>).map(
                  (key, item) => core.MapEntry(
                    key,
                    item as core.String,
                  ),
                )
              : null,
          minCpuPlatform: _json.containsKey('minCpuPlatform')
              ? _json['minCpuPlatform'] as core.String
              : null,
          nodeGroup: _json.containsKey('nodeGroup')
              ? _json['nodeGroup'] as core.String
              : null,
          oauthScopes: _json.containsKey('oauthScopes')
              ? (_json['oauthScopes'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          preemptible: _json.containsKey('preemptible')
              ? _json['preemptible'] as core.bool
              : null,
          reservationAffinity: _json.containsKey('reservationAffinity')
              ? ReservationAffinity.fromJson(_json['reservationAffinity']
                  as core.Map<core.String, core.dynamic>)
              : null,
          sandboxConfig: _json.containsKey('sandboxConfig')
              ? SandboxConfig.fromJson(
                  _json['sandboxConfig'] as core.Map<core.String, core.dynamic>)
              : null,
          serviceAccount: _json.containsKey('serviceAccount')
              ? _json['serviceAccount'] as core.String
              : null,
          shieldedInstanceConfig: _json.containsKey('shieldedInstanceConfig')
              ? ShieldedInstanceConfig.fromJson(_json['shieldedInstanceConfig']
                  as core.Map<core.String, core.dynamic>)
              : null,
          spot: _json.containsKey('spot') ? _json['spot'] as core.bool : null,
          tags: _json.containsKey('tags')
              ? (_json['tags'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          taints: _json.containsKey('taints')
              ? (_json['taints'] as core.List)
                  .map((value) => NodeTaint.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          workloadMetadataConfig: _json.containsKey('workloadMetadataConfig')
              ? WorkloadMetadataConfig.fromJson(_json['workloadMetadataConfig']
                  as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (accelerators != null) 'accelerators': accelerators!,
        if (advancedMachineFeatures != null)
          'advancedMachineFeatures': advancedMachineFeatures!,
        if (bootDiskKmsKey != null) 'bootDiskKmsKey': bootDiskKmsKey!,
        if (diskSizeGb != null) 'diskSizeGb': diskSizeGb!,
        if (diskType != null) 'diskType': diskType!,
        if (gcfsConfig != null) 'gcfsConfig': gcfsConfig!,
        if (gvnic != null) 'gvnic': gvnic!,
        if (imageType != null) 'imageType': imageType!,
        if (kubeletConfig != null) 'kubeletConfig': kubeletConfig!,
        if (labels != null) 'labels': labels!,
        if (linuxNodeConfig != null) 'linuxNodeConfig': linuxNodeConfig!,
        if (localSsdCount != null) 'localSsdCount': localSsdCount!,
        if (machineType != null) 'machineType': machineType!,
        if (metadata != null) 'metadata': metadata!,
        if (minCpuPlatform != null) 'minCpuPlatform': minCpuPlatform!,
        if (nodeGroup != null) 'nodeGroup': nodeGroup!,
        if (oauthScopes != null) 'oauthScopes': oauthScopes!,
        if (preemptible != null) 'preemptible': preemptible!,
        if (reservationAffinity != null)
          'reservationAffinity': reservationAffinity!,
        if (sandboxConfig != null) 'sandboxConfig': sandboxConfig!,
        if (serviceAccount != null) 'serviceAccount': serviceAccount!,
        if (shieldedInstanceConfig != null)
          'shieldedInstanceConfig': shieldedInstanceConfig!,
        if (spot != null) 'spot': spot!,
        if (tags != null) 'tags': tags!,
        if (taints != null) 'taints': taints!,
        if (workloadMetadataConfig != null)
          'workloadMetadataConfig': workloadMetadataConfig!,
      };
}

/// Subset of NodeConfig message that has defaults.
class NodeConfigDefaults {
  /// GCFS (Google Container File System, a.k.a Riptide) options.
  GcfsConfig? gcfsConfig;

  NodeConfigDefaults({
    this.gcfsConfig,
  });

  NodeConfigDefaults.fromJson(core.Map _json)
      : this(
          gcfsConfig: _json.containsKey('gcfsConfig')
              ? GcfsConfig.fromJson(
                  _json['gcfsConfig'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (gcfsConfig != null) 'gcfsConfig': gcfsConfig!,
      };
}

/// Node kubelet configs.
class NodeKubeletConfig {
  /// Enable CPU CFS quota enforcement for containers that specify CPU limits.
  ///
  /// This option is enabled by default which makes kubelet use CFS quota
  /// (https://www.kernel.org/doc/Documentation/scheduler/sched-bwc.txt) to
  /// enforce container CPU limits. Otherwise, CPU limits will not be enforced
  /// at all. Disable this option to mitigate CPU throttling problems while
  /// still having your pods to be in Guaranteed QoS class by specifying the CPU
  /// limits. The default value is 'true' if unspecified.
  core.bool? cpuCfsQuota;

  /// Set the CPU CFS quota period value 'cpu.cfs_period_us'.
  ///
  /// The string must be a sequence of decimal numbers, each with optional
  /// fraction and a unit suffix, such as "300ms". Valid time units are "ns",
  /// "us" (or "µs"), "ms", "s", "m", "h". The value must be a positive
  /// duration.
  core.String? cpuCfsQuotaPeriod;

  /// Control the CPU management policy on the node.
  ///
  /// See
  /// https://kubernetes.io/docs/tasks/administer-cluster/cpu-management-policies/
  /// The following values are allowed. * "none": the default, which represents
  /// the existing scheduling behavior. * "static": allows pods with certain
  /// resource characteristics to be granted increased CPU affinity and
  /// exclusivity on the node. The default value is 'none' if unspecified.
  core.String? cpuManagerPolicy;

  NodeKubeletConfig({
    this.cpuCfsQuota,
    this.cpuCfsQuotaPeriod,
    this.cpuManagerPolicy,
  });

  NodeKubeletConfig.fromJson(core.Map _json)
      : this(
          cpuCfsQuota: _json.containsKey('cpuCfsQuota')
              ? _json['cpuCfsQuota'] as core.bool
              : null,
          cpuCfsQuotaPeriod: _json.containsKey('cpuCfsQuotaPeriod')
              ? _json['cpuCfsQuotaPeriod'] as core.String
              : null,
          cpuManagerPolicy: _json.containsKey('cpuManagerPolicy')
              ? _json['cpuManagerPolicy'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (cpuCfsQuota != null) 'cpuCfsQuota': cpuCfsQuota!,
        if (cpuCfsQuotaPeriod != null) 'cpuCfsQuotaPeriod': cpuCfsQuotaPeriod!,
        if (cpuManagerPolicy != null) 'cpuManagerPolicy': cpuManagerPolicy!,
      };
}

/// NodeManagement defines the set of node management services turned on for the
/// node pool.
class NodeManagement {
  /// A flag that specifies whether the node auto-repair is enabled for the node
  /// pool.
  ///
  /// If enabled, the nodes in this node pool will be monitored and, if they
  /// fail health checks too many times, an automatic repair action will be
  /// triggered.
  core.bool? autoRepair;

  /// A flag that specifies whether node auto-upgrade is enabled for the node
  /// pool.
  ///
  /// If enabled, node auto-upgrade helps keep the nodes in your node pool up to
  /// date with the latest release version of Kubernetes.
  core.bool? autoUpgrade;

  /// Specifies the Auto Upgrade knobs for the node pool.
  AutoUpgradeOptions? upgradeOptions;

  NodeManagement({
    this.autoRepair,
    this.autoUpgrade,
    this.upgradeOptions,
  });

  NodeManagement.fromJson(core.Map _json)
      : this(
          autoRepair: _json.containsKey('autoRepair')
              ? _json['autoRepair'] as core.bool
              : null,
          autoUpgrade: _json.containsKey('autoUpgrade')
              ? _json['autoUpgrade'] as core.bool
              : null,
          upgradeOptions: _json.containsKey('upgradeOptions')
              ? AutoUpgradeOptions.fromJson(_json['upgradeOptions']
                  as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (autoRepair != null) 'autoRepair': autoRepair!,
        if (autoUpgrade != null) 'autoUpgrade': autoUpgrade!,
        if (upgradeOptions != null) 'upgradeOptions': upgradeOptions!,
      };
}

/// Parameters for node pool-level network config.
class NodeNetworkConfig {
  /// Input only.
  ///
  /// Whether to create a new range for pod IPs in this node pool. Defaults are
  /// provided for `pod_range` and `pod_ipv4_cidr_block` if they are not
  /// specified. If neither `create_pod_range` or `pod_range` are specified, the
  /// cluster-level default (`ip_allocation_policy.cluster_ipv4_cidr_block`) is
  /// used. Only applicable if `ip_allocation_policy.use_ip_aliases` is true.
  /// This field cannot be changed after the node pool has been created.
  core.bool? createPodRange;

  /// The IP address range for pod IPs in this node pool.
  ///
  /// Only applicable if `create_pod_range` is true. Set to blank to have a
  /// range chosen with the default size. Set to /netmask (e.g. `/14`) to have a
  /// range chosen with a specific netmask. Set to a
  /// [CIDR](https://en.wikipedia.org/wiki/Classless_Inter-Domain_Routing)
  /// notation (e.g. `10.96.0.0/14`) to pick a specific range to use. Only
  /// applicable if `ip_allocation_policy.use_ip_aliases` is true. This field
  /// cannot be changed after the node pool has been created.
  core.String? podIpv4CidrBlock;

  /// The ID of the secondary range for pod IPs.
  ///
  /// If `create_pod_range` is true, this ID is used for the new range. If
  /// `create_pod_range` is false, uses an existing secondary range with this
  /// ID. Only applicable if `ip_allocation_policy.use_ip_aliases` is true. This
  /// field cannot be changed after the node pool has been created.
  core.String? podRange;

  NodeNetworkConfig({
    this.createPodRange,
    this.podIpv4CidrBlock,
    this.podRange,
  });

  NodeNetworkConfig.fromJson(core.Map _json)
      : this(
          createPodRange: _json.containsKey('createPodRange')
              ? _json['createPodRange'] as core.bool
              : null,
          podIpv4CidrBlock: _json.containsKey('podIpv4CidrBlock')
              ? _json['podIpv4CidrBlock'] as core.String
              : null,
          podRange: _json.containsKey('podRange')
              ? _json['podRange'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (createPodRange != null) 'createPodRange': createPodRange!,
        if (podIpv4CidrBlock != null) 'podIpv4CidrBlock': podIpv4CidrBlock!,
        if (podRange != null) 'podRange': podRange!,
      };
}

/// NodePool contains the name and configuration for a cluster's node pool.
///
/// Node pools are a set of nodes (i.e. VM's), with a common configuration and
/// specification, under the control of the cluster master. They may have a set
/// of Kubernetes labels applied to them, which may be used to reference them
/// during pod scheduling. They may also be resized up or down, to accommodate
/// the workload.
class NodePool {
  /// Autoscaler configuration for this NodePool.
  ///
  /// Autoscaler is enabled only if a valid configuration is present.
  NodePoolAutoscaling? autoscaling;

  /// Which conditions caused the current node pool state.
  core.List<StatusCondition>? conditions;

  /// The node configuration of the pool.
  NodeConfig? config;

  /// The initial node count for the pool.
  ///
  /// You must ensure that your Compute Engine
  /// [resource quota](https://cloud.google.com/compute/quotas) is sufficient
  /// for this number of instances. You must also have available firewall and
  /// routes quota.
  core.int? initialNodeCount;

  /// The resource URLs of the
  /// [managed instance groups](https://cloud.google.com/compute/docs/instance-groups/creating-groups-of-managed-instances)
  /// associated with this node pool.
  ///
  /// Output only.
  core.List<core.String>? instanceGroupUrls;

  /// The list of Google Compute Engine
  /// [zones](https://cloud.google.com/compute/docs/zones#available) in which
  /// the NodePool's nodes should be located.
  ///
  /// If this value is unspecified during node pool creation, the
  /// [Cluster.Locations](https://cloud.google.com/kubernetes-engine/docs/reference/rest/v1/projects.locations.clusters#Cluster.FIELDS.locations)
  /// value will be used, instead. Warning: changing node pool locations will
  /// result in nodes being added and/or removed.
  core.List<core.String>? locations;

  /// NodeManagement configuration for this NodePool.
  NodeManagement? management;

  /// The constraint on the maximum number of pods that can be run
  /// simultaneously on a node in the node pool.
  MaxPodsConstraint? maxPodsConstraint;

  /// The name of the node pool.
  core.String? name;

  /// Networking configuration for this NodePool.
  ///
  /// If specified, it overrides the cluster-level defaults.
  NodeNetworkConfig? networkConfig;

  /// The pod CIDR block size per node in this node pool.
  ///
  /// Output only.
  core.int? podIpv4CidrSize;

  /// Server-defined URL for the resource.
  ///
  /// Output only.
  core.String? selfLink;

  /// The status of the nodes in this pool instance.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "STATUS_UNSPECIFIED" : Not set.
  /// - "PROVISIONING" : The PROVISIONING state indicates the node pool is being
  /// created.
  /// - "RUNNING" : The RUNNING state indicates the node pool has been created
  /// and is fully usable.
  /// - "RUNNING_WITH_ERROR" : The RUNNING_WITH_ERROR state indicates the node
  /// pool has been created and is partially usable. Some error state has
  /// occurred and some functionality may be impaired. Customer may need to
  /// reissue a request or trigger a new update.
  /// - "RECONCILING" : The RECONCILING state indicates that some work is
  /// actively being done on the node pool, such as upgrading node software.
  /// Details can be found in the `statusMessage` field.
  /// - "STOPPING" : The STOPPING state indicates the node pool is being
  /// deleted.
  /// - "ERROR" : The ERROR state indicates the node pool may be unusable.
  /// Details can be found in the `statusMessage` field.
  core.String? status;

  /// Use conditions instead.
  ///
  /// Additional information about the current status of this node pool
  /// instance, if available.
  ///
  /// Output only. Deprecated.
  core.String? statusMessage;

  /// Upgrade settings control disruption and speed of the upgrade.
  UpgradeSettings? upgradeSettings;

  /// The version of the Kubernetes of this node.
  core.String? version;

  NodePool({
    this.autoscaling,
    this.conditions,
    this.config,
    this.initialNodeCount,
    this.instanceGroupUrls,
    this.locations,
    this.management,
    this.maxPodsConstraint,
    this.name,
    this.networkConfig,
    this.podIpv4CidrSize,
    this.selfLink,
    this.status,
    this.statusMessage,
    this.upgradeSettings,
    this.version,
  });

  NodePool.fromJson(core.Map _json)
      : this(
          autoscaling: _json.containsKey('autoscaling')
              ? NodePoolAutoscaling.fromJson(
                  _json['autoscaling'] as core.Map<core.String, core.dynamic>)
              : null,
          conditions: _json.containsKey('conditions')
              ? (_json['conditions'] as core.List)
                  .map((value) => StatusCondition.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          config: _json.containsKey('config')
              ? NodeConfig.fromJson(
                  _json['config'] as core.Map<core.String, core.dynamic>)
              : null,
          initialNodeCount: _json.containsKey('initialNodeCount')
              ? _json['initialNodeCount'] as core.int
              : null,
          instanceGroupUrls: _json.containsKey('instanceGroupUrls')
              ? (_json['instanceGroupUrls'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          locations: _json.containsKey('locations')
              ? (_json['locations'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          management: _json.containsKey('management')
              ? NodeManagement.fromJson(
                  _json['management'] as core.Map<core.String, core.dynamic>)
              : null,
          maxPodsConstraint: _json.containsKey('maxPodsConstraint')
              ? MaxPodsConstraint.fromJson(_json['maxPodsConstraint']
                  as core.Map<core.String, core.dynamic>)
              : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          networkConfig: _json.containsKey('networkConfig')
              ? NodeNetworkConfig.fromJson(
                  _json['networkConfig'] as core.Map<core.String, core.dynamic>)
              : null,
          podIpv4CidrSize: _json.containsKey('podIpv4CidrSize')
              ? _json['podIpv4CidrSize'] as core.int
              : null,
          selfLink: _json.containsKey('selfLink')
              ? _json['selfLink'] as core.String
              : null,
          status: _json.containsKey('status')
              ? _json['status'] as core.String
              : null,
          statusMessage: _json.containsKey('statusMessage')
              ? _json['statusMessage'] as core.String
              : null,
          upgradeSettings: _json.containsKey('upgradeSettings')
              ? UpgradeSettings.fromJson(_json['upgradeSettings']
                  as core.Map<core.String, core.dynamic>)
              : null,
          version: _json.containsKey('version')
              ? _json['version'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (autoscaling != null) 'autoscaling': autoscaling!,
        if (conditions != null) 'conditions': conditions!,
        if (config != null) 'config': config!,
        if (initialNodeCount != null) 'initialNodeCount': initialNodeCount!,
        if (instanceGroupUrls != null) 'instanceGroupUrls': instanceGroupUrls!,
        if (locations != null) 'locations': locations!,
        if (management != null) 'management': management!,
        if (maxPodsConstraint != null) 'maxPodsConstraint': maxPodsConstraint!,
        if (name != null) 'name': name!,
        if (networkConfig != null) 'networkConfig': networkConfig!,
        if (podIpv4CidrSize != null) 'podIpv4CidrSize': podIpv4CidrSize!,
        if (selfLink != null) 'selfLink': selfLink!,
        if (status != null) 'status': status!,
        if (statusMessage != null) 'statusMessage': statusMessage!,
        if (upgradeSettings != null) 'upgradeSettings': upgradeSettings!,
        if (version != null) 'version': version!,
      };
}

/// Node pool configs that apply to all auto-provisioned node pools in autopilot
/// clusters and node auto-provisioning enabled clusters.
class NodePoolAutoConfig {
  /// The list of instance tags applied to all nodes.
  ///
  /// Tags are used to identify valid sources or targets for network firewalls
  /// and are specified by the client during cluster creation. Each tag within
  /// the list must comply with RFC1035.
  NetworkTags? networkTags;

  NodePoolAutoConfig({
    this.networkTags,
  });

  NodePoolAutoConfig.fromJson(core.Map _json)
      : this(
          networkTags: _json.containsKey('networkTags')
              ? NetworkTags.fromJson(
                  _json['networkTags'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (networkTags != null) 'networkTags': networkTags!,
      };
}

/// NodePoolAutoscaling contains information required by cluster autoscaler to
/// adjust the size of the node pool to the current cluster usage.
class NodePoolAutoscaling {
  /// Can this node pool be deleted automatically.
  core.bool? autoprovisioned;

  /// Is autoscaling enabled for this node pool.
  core.bool? enabled;

  /// Maximum number of nodes for one location in the NodePool.
  ///
  /// Must be \>= min_node_count. There has to be enough quota to scale up the
  /// cluster.
  core.int? maxNodeCount;

  /// Minimum number of nodes for one location in the NodePool.
  ///
  /// Must be \>= 1 and \<= max_node_count.
  core.int? minNodeCount;

  NodePoolAutoscaling({
    this.autoprovisioned,
    this.enabled,
    this.maxNodeCount,
    this.minNodeCount,
  });

  NodePoolAutoscaling.fromJson(core.Map _json)
      : this(
          autoprovisioned: _json.containsKey('autoprovisioned')
              ? _json['autoprovisioned'] as core.bool
              : null,
          enabled: _json.containsKey('enabled')
              ? _json['enabled'] as core.bool
              : null,
          maxNodeCount: _json.containsKey('maxNodeCount')
              ? _json['maxNodeCount'] as core.int
              : null,
          minNodeCount: _json.containsKey('minNodeCount')
              ? _json['minNodeCount'] as core.int
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (autoprovisioned != null) 'autoprovisioned': autoprovisioned!,
        if (enabled != null) 'enabled': enabled!,
        if (maxNodeCount != null) 'maxNodeCount': maxNodeCount!,
        if (minNodeCount != null) 'minNodeCount': minNodeCount!,
      };
}

/// Subset of Nodepool message that has defaults.
class NodePoolDefaults {
  /// Subset of NodeConfig message that has defaults.
  NodeConfigDefaults? nodeConfigDefaults;

  NodePoolDefaults({
    this.nodeConfigDefaults,
  });

  NodePoolDefaults.fromJson(core.Map _json)
      : this(
          nodeConfigDefaults: _json.containsKey('nodeConfigDefaults')
              ? NodeConfigDefaults.fromJson(_json['nodeConfigDefaults']
                  as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (nodeConfigDefaults != null)
          'nodeConfigDefaults': nodeConfigDefaults!,
      };
}

/// Kubernetes taint is comprised of three fields: key, value, and effect.
///
/// Effect can only be one of three types: NoSchedule, PreferNoSchedule or
/// NoExecute. See
/// [here](https://kubernetes.io/docs/concepts/configuration/taint-and-toleration)
/// for more information, including usage and the valid values.
class NodeTaint {
  /// Effect for taint.
  /// Possible string values are:
  /// - "EFFECT_UNSPECIFIED" : Not set
  /// - "NO_SCHEDULE" : NoSchedule
  /// - "PREFER_NO_SCHEDULE" : PreferNoSchedule
  /// - "NO_EXECUTE" : NoExecute
  core.String? effect;

  /// Key for taint.
  core.String? key;

  /// Value for taint.
  core.String? value;

  NodeTaint({
    this.effect,
    this.key,
    this.value,
  });

  NodeTaint.fromJson(core.Map _json)
      : this(
          effect: _json.containsKey('effect')
              ? _json['effect'] as core.String
              : null,
          key: _json.containsKey('key') ? _json['key'] as core.String : null,
          value:
              _json.containsKey('value') ? _json['value'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (effect != null) 'effect': effect!,
        if (key != null) 'key': key!,
        if (value != null) 'value': value!,
      };
}

/// NotificationConfig is the configuration of notifications.
class NotificationConfig {
  /// Notification config for Pub/Sub.
  PubSub? pubsub;

  NotificationConfig({
    this.pubsub,
  });

  NotificationConfig.fromJson(core.Map _json)
      : this(
          pubsub: _json.containsKey('pubsub')
              ? PubSub.fromJson(
                  _json['pubsub'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (pubsub != null) 'pubsub': pubsub!,
      };
}

/// This operation resource represents operations that may have happened or are
/// happening on the cluster.
///
/// All fields are output only.
class Operation {
  /// Which conditions caused the current cluster state.
  ///
  /// Deprecated. Use field error instead.
  core.List<StatusCondition>? clusterConditions;

  /// Detailed operation progress, if available.
  core.String? detail;

  /// The time the operation completed, in
  /// [RFC3339](https://www.ietf.org/rfc/rfc3339.txt) text format.
  ///
  /// Output only.
  core.String? endTime;

  /// The error result of the operation in case of failure.
  Status? error;

  /// The name of the Google Compute Engine
  /// [zone](https://cloud.google.com/compute/docs/regions-zones/regions-zones#available)
  /// or
  /// [region](https://cloud.google.com/compute/docs/regions-zones/regions-zones#available)
  /// in which the cluster resides.
  ///
  /// Output only.
  core.String? location;

  /// The server-assigned ID for the operation.
  core.String? name;

  /// Which conditions caused the current node pool state.
  ///
  /// Deprecated. Use field error instead.
  core.List<StatusCondition>? nodepoolConditions;

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
  core.String? operationType;

  /// Progress information for an operation.
  ///
  /// Output only.
  OperationProgress? progress;

  /// Server-defined URL for the resource.
  core.String? selfLink;

  /// The time the operation started, in
  /// [RFC3339](https://www.ietf.org/rfc/rfc3339.txt) text format.
  ///
  /// Output only.
  core.String? startTime;

  /// The current status of the operation.
  /// Possible string values are:
  /// - "STATUS_UNSPECIFIED" : Not set.
  /// - "PENDING" : The operation has been created.
  /// - "RUNNING" : The operation is currently running.
  /// - "DONE" : The operation is done, either cancelled or completed.
  /// - "ABORTING" : The operation is aborting.
  core.String? status;

  /// If an error has occurred, a textual description of the error.
  ///
  /// Deprecated. Use the field error instead.
  ///
  /// Output only.
  core.String? statusMessage;

  /// Server-defined URL for the target of the operation.
  core.String? targetLink;

  /// The name of the Google Compute Engine
  /// [zone](https://cloud.google.com/compute/docs/zones#available) in which the
  /// operation is taking place.
  ///
  /// This field is deprecated, use location instead.
  core.String? zone;

  Operation({
    this.clusterConditions,
    this.detail,
    this.endTime,
    this.error,
    this.location,
    this.name,
    this.nodepoolConditions,
    this.operationType,
    this.progress,
    this.selfLink,
    this.startTime,
    this.status,
    this.statusMessage,
    this.targetLink,
    this.zone,
  });

  Operation.fromJson(core.Map _json)
      : this(
          clusterConditions: _json.containsKey('clusterConditions')
              ? (_json['clusterConditions'] as core.List)
                  .map((value) => StatusCondition.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          detail: _json.containsKey('detail')
              ? _json['detail'] as core.String
              : null,
          endTime: _json.containsKey('endTime')
              ? _json['endTime'] as core.String
              : null,
          error: _json.containsKey('error')
              ? Status.fromJson(
                  _json['error'] as core.Map<core.String, core.dynamic>)
              : null,
          location: _json.containsKey('location')
              ? _json['location'] as core.String
              : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          nodepoolConditions: _json.containsKey('nodepoolConditions')
              ? (_json['nodepoolConditions'] as core.List)
                  .map((value) => StatusCondition.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          operationType: _json.containsKey('operationType')
              ? _json['operationType'] as core.String
              : null,
          progress: _json.containsKey('progress')
              ? OperationProgress.fromJson(
                  _json['progress'] as core.Map<core.String, core.dynamic>)
              : null,
          selfLink: _json.containsKey('selfLink')
              ? _json['selfLink'] as core.String
              : null,
          startTime: _json.containsKey('startTime')
              ? _json['startTime'] as core.String
              : null,
          status: _json.containsKey('status')
              ? _json['status'] as core.String
              : null,
          statusMessage: _json.containsKey('statusMessage')
              ? _json['statusMessage'] as core.String
              : null,
          targetLink: _json.containsKey('targetLink')
              ? _json['targetLink'] as core.String
              : null,
          zone: _json.containsKey('zone') ? _json['zone'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (clusterConditions != null) 'clusterConditions': clusterConditions!,
        if (detail != null) 'detail': detail!,
        if (endTime != null) 'endTime': endTime!,
        if (error != null) 'error': error!,
        if (location != null) 'location': location!,
        if (name != null) 'name': name!,
        if (nodepoolConditions != null)
          'nodepoolConditions': nodepoolConditions!,
        if (operationType != null) 'operationType': operationType!,
        if (progress != null) 'progress': progress!,
        if (selfLink != null) 'selfLink': selfLink!,
        if (startTime != null) 'startTime': startTime!,
        if (status != null) 'status': status!,
        if (statusMessage != null) 'statusMessage': statusMessage!,
        if (targetLink != null) 'targetLink': targetLink!,
        if (zone != null) 'zone': zone!,
      };
}

/// Information about operation (or operation stage) progress.
class OperationProgress {
  /// Progress metric bundle, for example: metrics: \[{name: "nodes done",
  /// int_value: 15}, {name: "nodes total", int_value: 32}\] or metrics:
  /// \[{name: "progress", double_value: 0.56}, {name: "progress scale",
  /// double_value: 1.0}\]
  core.List<Metric>? metrics;

  /// A non-parameterized string describing an operation stage.
  ///
  /// Unset for single-stage operations.
  core.String? name;

  /// Substages of an operation or a stage.
  core.List<OperationProgress>? stages;

  /// Status of an operation stage.
  ///
  /// Unset for single-stage operations.
  /// Possible string values are:
  /// - "STATUS_UNSPECIFIED" : Not set.
  /// - "PENDING" : The operation has been created.
  /// - "RUNNING" : The operation is currently running.
  /// - "DONE" : The operation is done, either cancelled or completed.
  /// - "ABORTING" : The operation is aborting.
  core.String? status;

  OperationProgress({
    this.metrics,
    this.name,
    this.stages,
    this.status,
  });

  OperationProgress.fromJson(core.Map _json)
      : this(
          metrics: _json.containsKey('metrics')
              ? (_json['metrics'] as core.List)
                  .map((value) => Metric.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          stages: _json.containsKey('stages')
              ? (_json['stages'] as core.List)
                  .map((value) => OperationProgress.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          status: _json.containsKey('status')
              ? _json['status'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (metrics != null) 'metrics': metrics!,
        if (name != null) 'name': name!,
        if (stages != null) 'stages': stages!,
        if (status != null) 'status': status!,
      };
}

/// Configuration options for private clusters.
class PrivateClusterConfig {
  /// Whether the master's internal IP address is used as the cluster endpoint.
  core.bool? enablePrivateEndpoint;

  /// Whether nodes have internal IP addresses only.
  ///
  /// If enabled, all nodes are given only RFC 1918 private addresses and
  /// communicate with the master via private networking.
  core.bool? enablePrivateNodes;

  /// Controls master global access settings.
  PrivateClusterMasterGlobalAccessConfig? masterGlobalAccessConfig;

  /// The IP range in CIDR notation to use for the hosted master network.
  ///
  /// This range will be used for assigning internal IP addresses to the master
  /// or set of masters, as well as the ILB VIP. This range must not overlap
  /// with any other ranges in use within the cluster's network.
  core.String? masterIpv4CidrBlock;

  /// The peering name in the customer VPC used by this cluster.
  ///
  /// Output only.
  core.String? peeringName;

  /// The internal IP address of this cluster's master endpoint.
  ///
  /// Output only.
  core.String? privateEndpoint;

  /// The external IP address of this cluster's master endpoint.
  ///
  /// Output only.
  core.String? publicEndpoint;

  PrivateClusterConfig({
    this.enablePrivateEndpoint,
    this.enablePrivateNodes,
    this.masterGlobalAccessConfig,
    this.masterIpv4CidrBlock,
    this.peeringName,
    this.privateEndpoint,
    this.publicEndpoint,
  });

  PrivateClusterConfig.fromJson(core.Map _json)
      : this(
          enablePrivateEndpoint: _json.containsKey('enablePrivateEndpoint')
              ? _json['enablePrivateEndpoint'] as core.bool
              : null,
          enablePrivateNodes: _json.containsKey('enablePrivateNodes')
              ? _json['enablePrivateNodes'] as core.bool
              : null,
          masterGlobalAccessConfig:
              _json.containsKey('masterGlobalAccessConfig')
                  ? PrivateClusterMasterGlobalAccessConfig.fromJson(
                      _json['masterGlobalAccessConfig']
                          as core.Map<core.String, core.dynamic>)
                  : null,
          masterIpv4CidrBlock: _json.containsKey('masterIpv4CidrBlock')
              ? _json['masterIpv4CidrBlock'] as core.String
              : null,
          peeringName: _json.containsKey('peeringName')
              ? _json['peeringName'] as core.String
              : null,
          privateEndpoint: _json.containsKey('privateEndpoint')
              ? _json['privateEndpoint'] as core.String
              : null,
          publicEndpoint: _json.containsKey('publicEndpoint')
              ? _json['publicEndpoint'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (enablePrivateEndpoint != null)
          'enablePrivateEndpoint': enablePrivateEndpoint!,
        if (enablePrivateNodes != null)
          'enablePrivateNodes': enablePrivateNodes!,
        if (masterGlobalAccessConfig != null)
          'masterGlobalAccessConfig': masterGlobalAccessConfig!,
        if (masterIpv4CidrBlock != null)
          'masterIpv4CidrBlock': masterIpv4CidrBlock!,
        if (peeringName != null) 'peeringName': peeringName!,
        if (privateEndpoint != null) 'privateEndpoint': privateEndpoint!,
        if (publicEndpoint != null) 'publicEndpoint': publicEndpoint!,
      };
}

/// Configuration for controlling master global access settings.
class PrivateClusterMasterGlobalAccessConfig {
  /// Whenever master is accessible globally or not.
  core.bool? enabled;

  PrivateClusterMasterGlobalAccessConfig({
    this.enabled,
  });

  PrivateClusterMasterGlobalAccessConfig.fromJson(core.Map _json)
      : this(
          enabled: _json.containsKey('enabled')
              ? _json['enabled'] as core.bool
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (enabled != null) 'enabled': enabled!,
      };
}

/// Pub/Sub specific notification config.
class PubSub {
  /// Enable notifications for Pub/Sub.
  core.bool? enabled;

  /// Allows filtering to one or more specific event types.
  ///
  /// If no filter is specified, or if a filter is specified with no event
  /// types, all event types will be sent
  Filter? filter;

  /// The desired Pub/Sub topic to which notifications will be sent by GKE.
  ///
  /// Format is `projects/{project}/topics/{topic}`.
  core.String? topic;

  PubSub({
    this.enabled,
    this.filter,
    this.topic,
  });

  PubSub.fromJson(core.Map _json)
      : this(
          enabled: _json.containsKey('enabled')
              ? _json['enabled'] as core.bool
              : null,
          filter: _json.containsKey('filter')
              ? Filter.fromJson(
                  _json['filter'] as core.Map<core.String, core.dynamic>)
              : null,
          topic:
              _json.containsKey('topic') ? _json['topic'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (enabled != null) 'enabled': enabled!,
        if (filter != null) 'filter': filter!,
        if (topic != null) 'topic': topic!,
      };
}

/// Represents an arbitrary window of time that recurs.
class RecurringTimeWindow {
  /// An RRULE (https://tools.ietf.org/html/rfc5545#section-3.8.5.3) for how
  /// this window reccurs.
  ///
  /// They go on for the span of time between the start and end time. For
  /// example, to have something repeat every weekday, you'd use:
  /// `FREQ=WEEKLY;BYDAY=MO,TU,WE,TH,FR` To repeat some window daily (equivalent
  /// to the DailyMaintenanceWindow): `FREQ=DAILY` For the first weekend of
  /// every month: `FREQ=MONTHLY;BYSETPOS=1;BYDAY=SA,SU` This specifies how
  /// frequently the window starts. Eg, if you wanted to have a 9-5 UTC-4 window
  /// every weekday, you'd use something like: ``` start time =
  /// 2019-01-01T09:00:00-0400 end time = 2019-01-01T17:00:00-0400 recurrence =
  /// FREQ=WEEKLY;BYDAY=MO,TU,WE,TH,FR ``` Windows can span multiple days. Eg,
  /// to make the window encompass every weekend from midnight Saturday till the
  /// last minute of Sunday UTC: ``` start time = 2019-01-05T00:00:00Z end time
  /// = 2019-01-07T23:59:00Z recurrence = FREQ=WEEKLY;BYDAY=SA ``` Note the
  /// start and end time's specific dates are largely arbitrary except to
  /// specify duration of the window and when it first starts. The FREQ values
  /// of HOURLY, MINUTELY, and SECONDLY are not supported.
  core.String? recurrence;

  /// The window of the first recurrence.
  TimeWindow? window;

  RecurringTimeWindow({
    this.recurrence,
    this.window,
  });

  RecurringTimeWindow.fromJson(core.Map _json)
      : this(
          recurrence: _json.containsKey('recurrence')
              ? _json['recurrence'] as core.String
              : null,
          window: _json.containsKey('window')
              ? TimeWindow.fromJson(
                  _json['window'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (recurrence != null) 'recurrence': recurrence!,
        if (window != null) 'window': window!,
      };
}

/// ReleaseChannel indicates which release channel a cluster is subscribed to.
///
/// Release channels are arranged in order of risk. When a cluster is subscribed
/// to a release channel, Google maintains both the master version and the node
/// version. Node auto-upgrade defaults to true and cannot be disabled.
class ReleaseChannel {
  /// channel specifies which release channel the cluster is subscribed to.
  /// Possible string values are:
  /// - "UNSPECIFIED" : No channel specified.
  /// - "RAPID" : RAPID channel is offered on an early access basis for
  /// customers who want to test new releases. WARNING: Versions available in
  /// the RAPID Channel may be subject to unresolved issues with no known
  /// workaround and are not subject to any SLAs.
  /// - "REGULAR" : Clusters subscribed to REGULAR receive versions that are
  /// considered GA quality. REGULAR is intended for production users who want
  /// to take advantage of new features.
  /// - "STABLE" : Clusters subscribed to STABLE receive versions that are known
  /// to be stable and reliable in production.
  core.String? channel;

  ReleaseChannel({
    this.channel,
  });

  ReleaseChannel.fromJson(core.Map _json)
      : this(
          channel: _json.containsKey('channel')
              ? _json['channel'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (channel != null) 'channel': channel!,
      };
}

/// ReleaseChannelConfig exposes configuration for a release channel.
class ReleaseChannelConfig {
  /// The release channel this configuration applies to.
  /// Possible string values are:
  /// - "UNSPECIFIED" : No channel specified.
  /// - "RAPID" : RAPID channel is offered on an early access basis for
  /// customers who want to test new releases. WARNING: Versions available in
  /// the RAPID Channel may be subject to unresolved issues with no known
  /// workaround and are not subject to any SLAs.
  /// - "REGULAR" : Clusters subscribed to REGULAR receive versions that are
  /// considered GA quality. REGULAR is intended for production users who want
  /// to take advantage of new features.
  /// - "STABLE" : Clusters subscribed to STABLE receive versions that are known
  /// to be stable and reliable in production.
  core.String? channel;

  /// The default version for newly created clusters on the channel.
  core.String? defaultVersion;

  /// List of valid versions for the channel.
  core.List<core.String>? validVersions;

  ReleaseChannelConfig({
    this.channel,
    this.defaultVersion,
    this.validVersions,
  });

  ReleaseChannelConfig.fromJson(core.Map _json)
      : this(
          channel: _json.containsKey('channel')
              ? _json['channel'] as core.String
              : null,
          defaultVersion: _json.containsKey('defaultVersion')
              ? _json['defaultVersion'] as core.String
              : null,
          validVersions: _json.containsKey('validVersions')
              ? (_json['validVersions'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (channel != null) 'channel': channel!,
        if (defaultVersion != null) 'defaultVersion': defaultVersion!,
        if (validVersions != null) 'validVersions': validVersions!,
      };
}

/// [ReservationAffinity](https://cloud.google.com/compute/docs/instances/reserving-zonal-resources)
/// is the configuration of desired reservation which instances could take
/// capacity from.
class ReservationAffinity {
  /// Corresponds to the type of reservation consumption.
  /// Possible string values are:
  /// - "UNSPECIFIED" : Default value. This should not be used.
  /// - "NO_RESERVATION" : Do not consume from any reserved capacity.
  /// - "ANY_RESERVATION" : Consume any reservation available.
  /// - "SPECIFIC_RESERVATION" : Must consume from a specific reservation. Must
  /// specify key value fields for specifying the reservations.
  core.String? consumeReservationType;

  /// Corresponds to the label key of a reservation resource.
  ///
  /// To target a SPECIFIC_RESERVATION by name, specify
  /// "googleapis.com/reservation-name" as the key and specify the name of your
  /// reservation as its value.
  core.String? key;

  /// Corresponds to the label value(s) of reservation resource(s).
  core.List<core.String>? values;

  ReservationAffinity({
    this.consumeReservationType,
    this.key,
    this.values,
  });

  ReservationAffinity.fromJson(core.Map _json)
      : this(
          consumeReservationType: _json.containsKey('consumeReservationType')
              ? _json['consumeReservationType'] as core.String
              : null,
          key: _json.containsKey('key') ? _json['key'] as core.String : null,
          values: _json.containsKey('values')
              ? (_json['values'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (consumeReservationType != null)
          'consumeReservationType': consumeReservationType!,
        if (key != null) 'key': key!,
        if (values != null) 'values': values!,
      };
}

/// Contains information about amount of some resource in the cluster.
///
/// For memory, value should be in GB.
class ResourceLimit {
  /// Maximum amount of the resource in the cluster.
  core.String? maximum;

  /// Minimum amount of the resource in the cluster.
  core.String? minimum;

  /// Resource name "cpu", "memory" or gpu-specific string.
  core.String? resourceType;

  ResourceLimit({
    this.maximum,
    this.minimum,
    this.resourceType,
  });

  ResourceLimit.fromJson(core.Map _json)
      : this(
          maximum: _json.containsKey('maximum')
              ? _json['maximum'] as core.String
              : null,
          minimum: _json.containsKey('minimum')
              ? _json['minimum'] as core.String
              : null,
          resourceType: _json.containsKey('resourceType')
              ? _json['resourceType'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (maximum != null) 'maximum': maximum!,
        if (minimum != null) 'minimum': minimum!,
        if (resourceType != null) 'resourceType': resourceType!,
      };
}

/// Configuration for exporting cluster resource usages.
class ResourceUsageExportConfig {
  /// Configuration to use BigQuery as usage export destination.
  BigQueryDestination? bigqueryDestination;

  /// Configuration to enable resource consumption metering.
  ConsumptionMeteringConfig? consumptionMeteringConfig;

  /// Whether to enable network egress metering for this cluster.
  ///
  /// If enabled, a daemonset will be created in the cluster to meter network
  /// egress traffic.
  core.bool? enableNetworkEgressMetering;

  ResourceUsageExportConfig({
    this.bigqueryDestination,
    this.consumptionMeteringConfig,
    this.enableNetworkEgressMetering,
  });

  ResourceUsageExportConfig.fromJson(core.Map _json)
      : this(
          bigqueryDestination: _json.containsKey('bigqueryDestination')
              ? BigQueryDestination.fromJson(_json['bigqueryDestination']
                  as core.Map<core.String, core.dynamic>)
              : null,
          consumptionMeteringConfig:
              _json.containsKey('consumptionMeteringConfig')
                  ? ConsumptionMeteringConfig.fromJson(
                      _json['consumptionMeteringConfig']
                          as core.Map<core.String, core.dynamic>)
                  : null,
          enableNetworkEgressMetering:
              _json.containsKey('enableNetworkEgressMetering')
                  ? _json['enableNetworkEgressMetering'] as core.bool
                  : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (bigqueryDestination != null)
          'bigqueryDestination': bigqueryDestination!,
        if (consumptionMeteringConfig != null)
          'consumptionMeteringConfig': consumptionMeteringConfig!,
        if (enableNetworkEgressMetering != null)
          'enableNetworkEgressMetering': enableNetworkEgressMetering!,
      };
}

/// RollbackNodePoolUpgradeRequest rollbacks the previously Aborted or Failed
/// NodePool upgrade.
///
/// This will be an no-op if the last upgrade successfully completed.
class RollbackNodePoolUpgradeRequest {
  /// The name of the cluster to rollback.
  ///
  /// This field has been deprecated and replaced by the name field.
  ///
  /// Deprecated.
  core.String? clusterId;

  /// The name (project, location, cluster, node pool id) of the node poll to
  /// rollback upgrade.
  ///
  /// Specified in the format `projects / * /locations / * /clusters / *
  /// /nodePools / * `.
  core.String? name;

  /// The name of the node pool to rollback.
  ///
  /// This field has been deprecated and replaced by the name field.
  ///
  /// Deprecated.
  core.String? nodePoolId;

  /// The Google Developers Console
  /// [project ID or project number](https://support.google.com/cloud/answer/6158840).
  ///
  /// This field has been deprecated and replaced by the name field.
  ///
  /// Deprecated.
  core.String? projectId;

  /// The name of the Google Compute Engine
  /// [zone](https://cloud.google.com/compute/docs/zones#available) in which the
  /// cluster resides.
  ///
  /// This field has been deprecated and replaced by the name field.
  ///
  /// Deprecated.
  core.String? zone;

  RollbackNodePoolUpgradeRequest({
    this.clusterId,
    this.name,
    this.nodePoolId,
    this.projectId,
    this.zone,
  });

  RollbackNodePoolUpgradeRequest.fromJson(core.Map _json)
      : this(
          clusterId: _json.containsKey('clusterId')
              ? _json['clusterId'] as core.String
              : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          nodePoolId: _json.containsKey('nodePoolId')
              ? _json['nodePoolId'] as core.String
              : null,
          projectId: _json.containsKey('projectId')
              ? _json['projectId'] as core.String
              : null,
          zone: _json.containsKey('zone') ? _json['zone'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (clusterId != null) 'clusterId': clusterId!,
        if (name != null) 'name': name!,
        if (nodePoolId != null) 'nodePoolId': nodePoolId!,
        if (projectId != null) 'projectId': projectId!,
        if (zone != null) 'zone': zone!,
      };
}

/// SandboxConfig contains configurations of the sandbox to use for the node.
class SandboxConfig {
  /// Type of the sandbox to use for the node.
  /// Possible string values are:
  /// - "UNSPECIFIED" : Default value. This should not be used.
  /// - "GVISOR" : Run sandbox using gvisor.
  core.String? type;

  SandboxConfig({
    this.type,
  });

  SandboxConfig.fromJson(core.Map _json)
      : this(
          type: _json.containsKey('type') ? _json['type'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (type != null) 'type': type!,
      };
}

/// Kubernetes Engine service configuration.
class ServerConfig {
  /// List of release channel configurations.
  core.List<ReleaseChannelConfig>? channels;

  /// Version of Kubernetes the service deploys by default.
  core.String? defaultClusterVersion;

  /// Default image type.
  core.String? defaultImageType;

  /// List of valid image types.
  core.List<core.String>? validImageTypes;

  /// List of valid master versions, in descending order.
  core.List<core.String>? validMasterVersions;

  /// List of valid node upgrade target versions, in descending order.
  core.List<core.String>? validNodeVersions;

  ServerConfig({
    this.channels,
    this.defaultClusterVersion,
    this.defaultImageType,
    this.validImageTypes,
    this.validMasterVersions,
    this.validNodeVersions,
  });

  ServerConfig.fromJson(core.Map _json)
      : this(
          channels: _json.containsKey('channels')
              ? (_json['channels'] as core.List)
                  .map((value) => ReleaseChannelConfig.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          defaultClusterVersion: _json.containsKey('defaultClusterVersion')
              ? _json['defaultClusterVersion'] as core.String
              : null,
          defaultImageType: _json.containsKey('defaultImageType')
              ? _json['defaultImageType'] as core.String
              : null,
          validImageTypes: _json.containsKey('validImageTypes')
              ? (_json['validImageTypes'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          validMasterVersions: _json.containsKey('validMasterVersions')
              ? (_json['validMasterVersions'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          validNodeVersions: _json.containsKey('validNodeVersions')
              ? (_json['validNodeVersions'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (channels != null) 'channels': channels!,
        if (defaultClusterVersion != null)
          'defaultClusterVersion': defaultClusterVersion!,
        if (defaultImageType != null) 'defaultImageType': defaultImageType!,
        if (validImageTypes != null) 'validImageTypes': validImageTypes!,
        if (validMasterVersions != null)
          'validMasterVersions': validMasterVersions!,
        if (validNodeVersions != null) 'validNodeVersions': validNodeVersions!,
      };
}

/// Config to block services with externalIPs field.
class ServiceExternalIPsConfig {
  /// Whether Services with ExternalIPs field are allowed or not.
  core.bool? enabled;

  ServiceExternalIPsConfig({
    this.enabled,
  });

  ServiceExternalIPsConfig.fromJson(core.Map _json)
      : this(
          enabled: _json.containsKey('enabled')
              ? _json['enabled'] as core.bool
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (enabled != null) 'enabled': enabled!,
      };
}

/// SetAddonsConfigRequest sets the addons associated with the cluster.
class SetAddonsConfigRequest {
  /// The desired configurations for the various addons available to run in the
  /// cluster.
  ///
  /// Required.
  AddonsConfig? addonsConfig;

  /// The name of the cluster to upgrade.
  ///
  /// This field has been deprecated and replaced by the name field.
  ///
  /// Deprecated.
  core.String? clusterId;

  /// The name (project, location, cluster) of the cluster to set addons.
  ///
  /// Specified in the format `projects / * /locations / * /clusters / * `.
  core.String? name;

  /// The Google Developers Console
  /// [project ID or project number](https://support.google.com/cloud/answer/6158840).
  ///
  /// This field has been deprecated and replaced by the name field.
  ///
  /// Deprecated.
  core.String? projectId;

  /// The name of the Google Compute Engine
  /// [zone](https://cloud.google.com/compute/docs/zones#available) in which the
  /// cluster resides.
  ///
  /// This field has been deprecated and replaced by the name field.
  ///
  /// Deprecated.
  core.String? zone;

  SetAddonsConfigRequest({
    this.addonsConfig,
    this.clusterId,
    this.name,
    this.projectId,
    this.zone,
  });

  SetAddonsConfigRequest.fromJson(core.Map _json)
      : this(
          addonsConfig: _json.containsKey('addonsConfig')
              ? AddonsConfig.fromJson(
                  _json['addonsConfig'] as core.Map<core.String, core.dynamic>)
              : null,
          clusterId: _json.containsKey('clusterId')
              ? _json['clusterId'] as core.String
              : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          projectId: _json.containsKey('projectId')
              ? _json['projectId'] as core.String
              : null,
          zone: _json.containsKey('zone') ? _json['zone'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (addonsConfig != null) 'addonsConfig': addonsConfig!,
        if (clusterId != null) 'clusterId': clusterId!,
        if (name != null) 'name': name!,
        if (projectId != null) 'projectId': projectId!,
        if (zone != null) 'zone': zone!,
      };
}

/// SetLabelsRequest sets the Google Cloud Platform labels on a Google Container
/// Engine cluster, which will in turn set them for Google Compute Engine
/// resources used by that cluster
class SetLabelsRequest {
  /// The name of the cluster.
  ///
  /// This field has been deprecated and replaced by the name field.
  ///
  /// Deprecated.
  core.String? clusterId;

  /// The fingerprint of the previous set of labels for this resource, used to
  /// detect conflicts.
  ///
  /// The fingerprint is initially generated by Kubernetes Engine and changes
  /// after every request to modify or update labels. You must always provide an
  /// up-to-date fingerprint hash when updating or changing labels. Make a
  /// `get()` request to the resource to get the latest fingerprint.
  ///
  /// Required.
  core.String? labelFingerprint;

  /// The name (project, location, cluster name) of the cluster to set labels.
  ///
  /// Specified in the format `projects / * /locations / * /clusters / * `.
  core.String? name;

  /// The Google Developers Console
  /// [project ID or project number](https://developers.google.com/console/help/new/#projectnumber).
  ///
  /// This field has been deprecated and replaced by the name field.
  ///
  /// Deprecated.
  core.String? projectId;

  /// The labels to set for that cluster.
  ///
  /// Required.
  core.Map<core.String, core.String>? resourceLabels;

  /// The name of the Google Compute Engine
  /// [zone](https://cloud.google.com/compute/docs/zones#available) in which the
  /// cluster resides.
  ///
  /// This field has been deprecated and replaced by the name field.
  ///
  /// Deprecated.
  core.String? zone;

  SetLabelsRequest({
    this.clusterId,
    this.labelFingerprint,
    this.name,
    this.projectId,
    this.resourceLabels,
    this.zone,
  });

  SetLabelsRequest.fromJson(core.Map _json)
      : this(
          clusterId: _json.containsKey('clusterId')
              ? _json['clusterId'] as core.String
              : null,
          labelFingerprint: _json.containsKey('labelFingerprint')
              ? _json['labelFingerprint'] as core.String
              : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          projectId: _json.containsKey('projectId')
              ? _json['projectId'] as core.String
              : null,
          resourceLabels: _json.containsKey('resourceLabels')
              ? (_json['resourceLabels'] as core.Map<core.String, core.dynamic>)
                  .map(
                  (key, item) => core.MapEntry(
                    key,
                    item as core.String,
                  ),
                )
              : null,
          zone: _json.containsKey('zone') ? _json['zone'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (clusterId != null) 'clusterId': clusterId!,
        if (labelFingerprint != null) 'labelFingerprint': labelFingerprint!,
        if (name != null) 'name': name!,
        if (projectId != null) 'projectId': projectId!,
        if (resourceLabels != null) 'resourceLabels': resourceLabels!,
        if (zone != null) 'zone': zone!,
      };
}

/// SetLegacyAbacRequest enables or disables the ABAC authorization mechanism
/// for a cluster.
class SetLegacyAbacRequest {
  /// The name of the cluster to update.
  ///
  /// This field has been deprecated and replaced by the name field.
  ///
  /// Deprecated.
  core.String? clusterId;

  /// Whether ABAC authorization will be enabled in the cluster.
  ///
  /// Required.
  core.bool? enabled;

  /// The name (project, location, cluster name) of the cluster to set legacy
  /// abac.
  ///
  /// Specified in the format `projects / * /locations / * /clusters / * `.
  core.String? name;

  /// The Google Developers Console
  /// [project ID or project number](https://support.google.com/cloud/answer/6158840).
  ///
  /// This field has been deprecated and replaced by the name field.
  ///
  /// Deprecated.
  core.String? projectId;

  /// The name of the Google Compute Engine
  /// [zone](https://cloud.google.com/compute/docs/zones#available) in which the
  /// cluster resides.
  ///
  /// This field has been deprecated and replaced by the name field.
  ///
  /// Deprecated.
  core.String? zone;

  SetLegacyAbacRequest({
    this.clusterId,
    this.enabled,
    this.name,
    this.projectId,
    this.zone,
  });

  SetLegacyAbacRequest.fromJson(core.Map _json)
      : this(
          clusterId: _json.containsKey('clusterId')
              ? _json['clusterId'] as core.String
              : null,
          enabled: _json.containsKey('enabled')
              ? _json['enabled'] as core.bool
              : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          projectId: _json.containsKey('projectId')
              ? _json['projectId'] as core.String
              : null,
          zone: _json.containsKey('zone') ? _json['zone'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (clusterId != null) 'clusterId': clusterId!,
        if (enabled != null) 'enabled': enabled!,
        if (name != null) 'name': name!,
        if (projectId != null) 'projectId': projectId!,
        if (zone != null) 'zone': zone!,
      };
}

/// SetLocationsRequest sets the locations of the cluster.
class SetLocationsRequest {
  /// The name of the cluster to upgrade.
  ///
  /// This field has been deprecated and replaced by the name field.
  ///
  /// Deprecated.
  core.String? clusterId;

  /// The desired list of Google Compute Engine
  /// [zones](https://cloud.google.com/compute/docs/zones#available) in which
  /// the cluster's nodes should be located.
  ///
  /// Changing the locations a cluster is in will result in nodes being either
  /// created or removed from the cluster, depending on whether locations are
  /// being added or removed. This list must always include the cluster's
  /// primary zone.
  ///
  /// Required.
  core.List<core.String>? locations;

  /// The name (project, location, cluster) of the cluster to set locations.
  ///
  /// Specified in the format `projects / * /locations / * /clusters / * `.
  core.String? name;

  /// The Google Developers Console
  /// [project ID or project number](https://support.google.com/cloud/answer/6158840).
  ///
  /// This field has been deprecated and replaced by the name field.
  ///
  /// Deprecated.
  core.String? projectId;

  /// The name of the Google Compute Engine
  /// [zone](https://cloud.google.com/compute/docs/zones#available) in which the
  /// cluster resides.
  ///
  /// This field has been deprecated and replaced by the name field.
  ///
  /// Deprecated.
  core.String? zone;

  SetLocationsRequest({
    this.clusterId,
    this.locations,
    this.name,
    this.projectId,
    this.zone,
  });

  SetLocationsRequest.fromJson(core.Map _json)
      : this(
          clusterId: _json.containsKey('clusterId')
              ? _json['clusterId'] as core.String
              : null,
          locations: _json.containsKey('locations')
              ? (_json['locations'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          projectId: _json.containsKey('projectId')
              ? _json['projectId'] as core.String
              : null,
          zone: _json.containsKey('zone') ? _json['zone'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (clusterId != null) 'clusterId': clusterId!,
        if (locations != null) 'locations': locations!,
        if (name != null) 'name': name!,
        if (projectId != null) 'projectId': projectId!,
        if (zone != null) 'zone': zone!,
      };
}

/// SetLoggingServiceRequest sets the logging service of a cluster.
class SetLoggingServiceRequest {
  /// The name of the cluster to upgrade.
  ///
  /// This field has been deprecated and replaced by the name field.
  ///
  /// Deprecated.
  core.String? clusterId;

  /// The logging service the cluster should use to write logs.
  ///
  /// Currently available options: * `logging.googleapis.com/kubernetes` - The
  /// Cloud Logging service with a Kubernetes-native resource model *
  /// `logging.googleapis.com` - The legacy Cloud Logging service (no longer
  /// available as of GKE 1.15). * `none` - no logs will be exported from the
  /// cluster. If left as an empty string,`logging.googleapis.com/kubernetes`
  /// will be used for GKE 1.14+ or `logging.googleapis.com` for earlier
  /// versions.
  ///
  /// Required.
  core.String? loggingService;

  /// The name (project, location, cluster) of the cluster to set logging.
  ///
  /// Specified in the format `projects / * /locations / * /clusters / * `.
  core.String? name;

  /// The Google Developers Console
  /// [project ID or project number](https://support.google.com/cloud/answer/6158840).
  ///
  /// This field has been deprecated and replaced by the name field.
  ///
  /// Deprecated.
  core.String? projectId;

  /// The name of the Google Compute Engine
  /// [zone](https://cloud.google.com/compute/docs/zones#available) in which the
  /// cluster resides.
  ///
  /// This field has been deprecated and replaced by the name field.
  ///
  /// Deprecated.
  core.String? zone;

  SetLoggingServiceRequest({
    this.clusterId,
    this.loggingService,
    this.name,
    this.projectId,
    this.zone,
  });

  SetLoggingServiceRequest.fromJson(core.Map _json)
      : this(
          clusterId: _json.containsKey('clusterId')
              ? _json['clusterId'] as core.String
              : null,
          loggingService: _json.containsKey('loggingService')
              ? _json['loggingService'] as core.String
              : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          projectId: _json.containsKey('projectId')
              ? _json['projectId'] as core.String
              : null,
          zone: _json.containsKey('zone') ? _json['zone'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (clusterId != null) 'clusterId': clusterId!,
        if (loggingService != null) 'loggingService': loggingService!,
        if (name != null) 'name': name!,
        if (projectId != null) 'projectId': projectId!,
        if (zone != null) 'zone': zone!,
      };
}

/// SetMaintenancePolicyRequest sets the maintenance policy for a cluster.
class SetMaintenancePolicyRequest {
  /// The name of the cluster to update.
  ///
  /// Required.
  core.String? clusterId;

  /// The maintenance policy to be set for the cluster.
  ///
  /// An empty field clears the existing maintenance policy.
  ///
  /// Required.
  MaintenancePolicy? maintenancePolicy;

  /// The name (project, location, cluster name) of the cluster to set
  /// maintenance policy.
  ///
  /// Specified in the format `projects / * /locations / * /clusters / * `.
  core.String? name;

  /// The Google Developers Console
  /// [project ID or project number](https://support.google.com/cloud/answer/6158840).
  ///
  /// Required.
  core.String? projectId;

  /// The name of the Google Compute Engine
  /// [zone](https://cloud.google.com/compute/docs/zones#available) in which the
  /// cluster resides.
  ///
  /// Required.
  core.String? zone;

  SetMaintenancePolicyRequest({
    this.clusterId,
    this.maintenancePolicy,
    this.name,
    this.projectId,
    this.zone,
  });

  SetMaintenancePolicyRequest.fromJson(core.Map _json)
      : this(
          clusterId: _json.containsKey('clusterId')
              ? _json['clusterId'] as core.String
              : null,
          maintenancePolicy: _json.containsKey('maintenancePolicy')
              ? MaintenancePolicy.fromJson(_json['maintenancePolicy']
                  as core.Map<core.String, core.dynamic>)
              : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          projectId: _json.containsKey('projectId')
              ? _json['projectId'] as core.String
              : null,
          zone: _json.containsKey('zone') ? _json['zone'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (clusterId != null) 'clusterId': clusterId!,
        if (maintenancePolicy != null) 'maintenancePolicy': maintenancePolicy!,
        if (name != null) 'name': name!,
        if (projectId != null) 'projectId': projectId!,
        if (zone != null) 'zone': zone!,
      };
}

/// SetMasterAuthRequest updates the admin password of a cluster.
class SetMasterAuthRequest {
  /// The exact form of action to be taken on the master auth.
  ///
  /// Required.
  /// Possible string values are:
  /// - "UNKNOWN" : Operation is unknown and will error out.
  /// - "SET_PASSWORD" : Set the password to a user generated value.
  /// - "GENERATE_PASSWORD" : Generate a new password and set it to that.
  /// - "SET_USERNAME" : Set the username. If an empty username is provided,
  /// basic authentication is disabled for the cluster. If a non-empty username
  /// is provided, basic authentication is enabled, with either a provided
  /// password or a generated one.
  core.String? action;

  /// The name of the cluster to upgrade.
  ///
  /// This field has been deprecated and replaced by the name field.
  ///
  /// Deprecated.
  core.String? clusterId;

  /// The name (project, location, cluster) of the cluster to set auth.
  ///
  /// Specified in the format `projects / * /locations / * /clusters / * `.
  core.String? name;

  /// The Google Developers Console
  /// [project ID or project number](https://support.google.com/cloud/answer/6158840).
  ///
  /// This field has been deprecated and replaced by the name field.
  ///
  /// Deprecated.
  core.String? projectId;

  /// A description of the update.
  ///
  /// Required.
  MasterAuth? update;

  /// The name of the Google Compute Engine
  /// [zone](https://cloud.google.com/compute/docs/zones#available) in which the
  /// cluster resides.
  ///
  /// This field has been deprecated and replaced by the name field.
  ///
  /// Deprecated.
  core.String? zone;

  SetMasterAuthRequest({
    this.action,
    this.clusterId,
    this.name,
    this.projectId,
    this.update,
    this.zone,
  });

  SetMasterAuthRequest.fromJson(core.Map _json)
      : this(
          action: _json.containsKey('action')
              ? _json['action'] as core.String
              : null,
          clusterId: _json.containsKey('clusterId')
              ? _json['clusterId'] as core.String
              : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          projectId: _json.containsKey('projectId')
              ? _json['projectId'] as core.String
              : null,
          update: _json.containsKey('update')
              ? MasterAuth.fromJson(
                  _json['update'] as core.Map<core.String, core.dynamic>)
              : null,
          zone: _json.containsKey('zone') ? _json['zone'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (action != null) 'action': action!,
        if (clusterId != null) 'clusterId': clusterId!,
        if (name != null) 'name': name!,
        if (projectId != null) 'projectId': projectId!,
        if (update != null) 'update': update!,
        if (zone != null) 'zone': zone!,
      };
}

/// SetMonitoringServiceRequest sets the monitoring service of a cluster.
class SetMonitoringServiceRequest {
  /// The name of the cluster to upgrade.
  ///
  /// This field has been deprecated and replaced by the name field.
  ///
  /// Deprecated.
  core.String? clusterId;

  /// The monitoring service the cluster should use to write metrics.
  ///
  /// Currently available options: * "monitoring.googleapis.com/kubernetes" -
  /// The Cloud Monitoring service with a Kubernetes-native resource model *
  /// `monitoring.googleapis.com` - The legacy Cloud Monitoring service (no
  /// longer available as of GKE 1.15). * `none` - No metrics will be exported
  /// from the cluster. If left as an empty
  /// string,`monitoring.googleapis.com/kubernetes` will be used for GKE 1.14+
  /// or `monitoring.googleapis.com` for earlier versions.
  ///
  /// Required.
  core.String? monitoringService;

  /// The name (project, location, cluster) of the cluster to set monitoring.
  ///
  /// Specified in the format `projects / * /locations / * /clusters / * `.
  core.String? name;

  /// The Google Developers Console
  /// [project ID or project number](https://support.google.com/cloud/answer/6158840).
  ///
  /// This field has been deprecated and replaced by the name field.
  ///
  /// Deprecated.
  core.String? projectId;

  /// The name of the Google Compute Engine
  /// [zone](https://cloud.google.com/compute/docs/zones#available) in which the
  /// cluster resides.
  ///
  /// This field has been deprecated and replaced by the name field.
  ///
  /// Deprecated.
  core.String? zone;

  SetMonitoringServiceRequest({
    this.clusterId,
    this.monitoringService,
    this.name,
    this.projectId,
    this.zone,
  });

  SetMonitoringServiceRequest.fromJson(core.Map _json)
      : this(
          clusterId: _json.containsKey('clusterId')
              ? _json['clusterId'] as core.String
              : null,
          monitoringService: _json.containsKey('monitoringService')
              ? _json['monitoringService'] as core.String
              : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          projectId: _json.containsKey('projectId')
              ? _json['projectId'] as core.String
              : null,
          zone: _json.containsKey('zone') ? _json['zone'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (clusterId != null) 'clusterId': clusterId!,
        if (monitoringService != null) 'monitoringService': monitoringService!,
        if (name != null) 'name': name!,
        if (projectId != null) 'projectId': projectId!,
        if (zone != null) 'zone': zone!,
      };
}

/// SetNetworkPolicyRequest enables/disables network policy for a cluster.
class SetNetworkPolicyRequest {
  /// The name of the cluster.
  ///
  /// This field has been deprecated and replaced by the name field.
  ///
  /// Deprecated.
  core.String? clusterId;

  /// The name (project, location, cluster name) of the cluster to set
  /// networking policy.
  ///
  /// Specified in the format `projects / * /locations / * /clusters / * `.
  core.String? name;

  /// Configuration options for the NetworkPolicy feature.
  ///
  /// Required.
  NetworkPolicy? networkPolicy;

  /// The Google Developers Console
  /// [project ID or project number](https://developers.google.com/console/help/new/#projectnumber).
  ///
  /// This field has been deprecated and replaced by the name field.
  ///
  /// Deprecated.
  core.String? projectId;

  /// The name of the Google Compute Engine
  /// [zone](https://cloud.google.com/compute/docs/zones#available) in which the
  /// cluster resides.
  ///
  /// This field has been deprecated and replaced by the name field.
  ///
  /// Deprecated.
  core.String? zone;

  SetNetworkPolicyRequest({
    this.clusterId,
    this.name,
    this.networkPolicy,
    this.projectId,
    this.zone,
  });

  SetNetworkPolicyRequest.fromJson(core.Map _json)
      : this(
          clusterId: _json.containsKey('clusterId')
              ? _json['clusterId'] as core.String
              : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          networkPolicy: _json.containsKey('networkPolicy')
              ? NetworkPolicy.fromJson(
                  _json['networkPolicy'] as core.Map<core.String, core.dynamic>)
              : null,
          projectId: _json.containsKey('projectId')
              ? _json['projectId'] as core.String
              : null,
          zone: _json.containsKey('zone') ? _json['zone'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (clusterId != null) 'clusterId': clusterId!,
        if (name != null) 'name': name!,
        if (networkPolicy != null) 'networkPolicy': networkPolicy!,
        if (projectId != null) 'projectId': projectId!,
        if (zone != null) 'zone': zone!,
      };
}

/// SetNodePoolAutoscalingRequest sets the autoscaler settings of a node pool.
class SetNodePoolAutoscalingRequest {
  /// Autoscaling configuration for the node pool.
  ///
  /// Required.
  NodePoolAutoscaling? autoscaling;

  /// The name of the cluster to upgrade.
  ///
  /// This field has been deprecated and replaced by the name field.
  ///
  /// Deprecated.
  core.String? clusterId;

  /// The name (project, location, cluster, node pool) of the node pool to set
  /// autoscaler settings.
  ///
  /// Specified in the format `projects / * /locations / * /clusters / *
  /// /nodePools / * `.
  core.String? name;

  /// The name of the node pool to upgrade.
  ///
  /// This field has been deprecated and replaced by the name field.
  ///
  /// Deprecated.
  core.String? nodePoolId;

  /// The Google Developers Console
  /// [project ID or project number](https://support.google.com/cloud/answer/6158840).
  ///
  /// This field has been deprecated and replaced by the name field.
  ///
  /// Deprecated.
  core.String? projectId;

  /// The name of the Google Compute Engine
  /// [zone](https://cloud.google.com/compute/docs/zones#available) in which the
  /// cluster resides.
  ///
  /// This field has been deprecated and replaced by the name field.
  ///
  /// Deprecated.
  core.String? zone;

  SetNodePoolAutoscalingRequest({
    this.autoscaling,
    this.clusterId,
    this.name,
    this.nodePoolId,
    this.projectId,
    this.zone,
  });

  SetNodePoolAutoscalingRequest.fromJson(core.Map _json)
      : this(
          autoscaling: _json.containsKey('autoscaling')
              ? NodePoolAutoscaling.fromJson(
                  _json['autoscaling'] as core.Map<core.String, core.dynamic>)
              : null,
          clusterId: _json.containsKey('clusterId')
              ? _json['clusterId'] as core.String
              : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          nodePoolId: _json.containsKey('nodePoolId')
              ? _json['nodePoolId'] as core.String
              : null,
          projectId: _json.containsKey('projectId')
              ? _json['projectId'] as core.String
              : null,
          zone: _json.containsKey('zone') ? _json['zone'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (autoscaling != null) 'autoscaling': autoscaling!,
        if (clusterId != null) 'clusterId': clusterId!,
        if (name != null) 'name': name!,
        if (nodePoolId != null) 'nodePoolId': nodePoolId!,
        if (projectId != null) 'projectId': projectId!,
        if (zone != null) 'zone': zone!,
      };
}

/// SetNodePoolManagementRequest sets the node management properties of a node
/// pool.
class SetNodePoolManagementRequest {
  /// The name of the cluster to update.
  ///
  /// This field has been deprecated and replaced by the name field.
  ///
  /// Deprecated.
  core.String? clusterId;

  /// NodeManagement configuration for the node pool.
  ///
  /// Required.
  NodeManagement? management;

  /// The name (project, location, cluster, node pool id) of the node pool to
  /// set management properties.
  ///
  /// Specified in the format `projects / * /locations / * /clusters / *
  /// /nodePools / * `.
  core.String? name;

  /// The name of the node pool to update.
  ///
  /// This field has been deprecated and replaced by the name field.
  ///
  /// Deprecated.
  core.String? nodePoolId;

  /// The Google Developers Console
  /// [project ID or project number](https://support.google.com/cloud/answer/6158840).
  ///
  /// This field has been deprecated and replaced by the name field.
  ///
  /// Deprecated.
  core.String? projectId;

  /// The name of the Google Compute Engine
  /// [zone](https://cloud.google.com/compute/docs/zones#available) in which the
  /// cluster resides.
  ///
  /// This field has been deprecated and replaced by the name field.
  ///
  /// Deprecated.
  core.String? zone;

  SetNodePoolManagementRequest({
    this.clusterId,
    this.management,
    this.name,
    this.nodePoolId,
    this.projectId,
    this.zone,
  });

  SetNodePoolManagementRequest.fromJson(core.Map _json)
      : this(
          clusterId: _json.containsKey('clusterId')
              ? _json['clusterId'] as core.String
              : null,
          management: _json.containsKey('management')
              ? NodeManagement.fromJson(
                  _json['management'] as core.Map<core.String, core.dynamic>)
              : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          nodePoolId: _json.containsKey('nodePoolId')
              ? _json['nodePoolId'] as core.String
              : null,
          projectId: _json.containsKey('projectId')
              ? _json['projectId'] as core.String
              : null,
          zone: _json.containsKey('zone') ? _json['zone'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (clusterId != null) 'clusterId': clusterId!,
        if (management != null) 'management': management!,
        if (name != null) 'name': name!,
        if (nodePoolId != null) 'nodePoolId': nodePoolId!,
        if (projectId != null) 'projectId': projectId!,
        if (zone != null) 'zone': zone!,
      };
}

/// SetNodePoolSizeRequest sets the size of a node pool.
class SetNodePoolSizeRequest {
  /// The name of the cluster to update.
  ///
  /// This field has been deprecated and replaced by the name field.
  ///
  /// Deprecated.
  core.String? clusterId;

  /// The name (project, location, cluster, node pool id) of the node pool to
  /// set size.
  ///
  /// Specified in the format `projects / * /locations / * /clusters / *
  /// /nodePools / * `.
  core.String? name;

  /// The desired node count for the pool.
  ///
  /// Required.
  core.int? nodeCount;

  /// The name of the node pool to update.
  ///
  /// This field has been deprecated and replaced by the name field.
  ///
  /// Deprecated.
  core.String? nodePoolId;

  /// The Google Developers Console
  /// [project ID or project number](https://support.google.com/cloud/answer/6158840).
  ///
  /// This field has been deprecated and replaced by the name field.
  ///
  /// Deprecated.
  core.String? projectId;

  /// The name of the Google Compute Engine
  /// [zone](https://cloud.google.com/compute/docs/zones#available) in which the
  /// cluster resides.
  ///
  /// This field has been deprecated and replaced by the name field.
  ///
  /// Deprecated.
  core.String? zone;

  SetNodePoolSizeRequest({
    this.clusterId,
    this.name,
    this.nodeCount,
    this.nodePoolId,
    this.projectId,
    this.zone,
  });

  SetNodePoolSizeRequest.fromJson(core.Map _json)
      : this(
          clusterId: _json.containsKey('clusterId')
              ? _json['clusterId'] as core.String
              : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          nodeCount: _json.containsKey('nodeCount')
              ? _json['nodeCount'] as core.int
              : null,
          nodePoolId: _json.containsKey('nodePoolId')
              ? _json['nodePoolId'] as core.String
              : null,
          projectId: _json.containsKey('projectId')
              ? _json['projectId'] as core.String
              : null,
          zone: _json.containsKey('zone') ? _json['zone'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (clusterId != null) 'clusterId': clusterId!,
        if (name != null) 'name': name!,
        if (nodeCount != null) 'nodeCount': nodeCount!,
        if (nodePoolId != null) 'nodePoolId': nodePoolId!,
        if (projectId != null) 'projectId': projectId!,
        if (zone != null) 'zone': zone!,
      };
}

/// A set of Shielded Instance options.
class ShieldedInstanceConfig {
  /// Defines whether the instance has integrity monitoring enabled.
  ///
  /// Enables monitoring and attestation of the boot integrity of the instance.
  /// The attestation is performed against the integrity policy baseline. This
  /// baseline is initially derived from the implicitly trusted boot image when
  /// the instance is created.
  core.bool? enableIntegrityMonitoring;

  /// Defines whether the instance has Secure Boot enabled.
  ///
  /// Secure Boot helps ensure that the system only runs authentic software by
  /// verifying the digital signature of all boot components, and halting the
  /// boot process if signature verification fails.
  core.bool? enableSecureBoot;

  ShieldedInstanceConfig({
    this.enableIntegrityMonitoring,
    this.enableSecureBoot,
  });

  ShieldedInstanceConfig.fromJson(core.Map _json)
      : this(
          enableIntegrityMonitoring:
              _json.containsKey('enableIntegrityMonitoring')
                  ? _json['enableIntegrityMonitoring'] as core.bool
                  : null,
          enableSecureBoot: _json.containsKey('enableSecureBoot')
              ? _json['enableSecureBoot'] as core.bool
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (enableIntegrityMonitoring != null)
          'enableIntegrityMonitoring': enableIntegrityMonitoring!,
        if (enableSecureBoot != null) 'enableSecureBoot': enableSecureBoot!,
      };
}

/// Configuration of Shielded Nodes feature.
class ShieldedNodes {
  /// Whether Shielded Nodes features are enabled on all nodes in this cluster.
  core.bool? enabled;

  ShieldedNodes({
    this.enabled,
  });

  ShieldedNodes.fromJson(core.Map _json)
      : this(
          enabled: _json.containsKey('enabled')
              ? _json['enabled'] as core.bool
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (enabled != null) 'enabled': enabled!,
      };
}

/// StartIPRotationRequest creates a new IP for the cluster and then performs a
/// node upgrade on each node pool to point to the new IP.
class StartIPRotationRequest {
  /// The name of the cluster.
  ///
  /// This field has been deprecated and replaced by the name field.
  ///
  /// Deprecated.
  core.String? clusterId;

  /// The name (project, location, cluster name) of the cluster to start IP
  /// rotation.
  ///
  /// Specified in the format `projects / * /locations / * /clusters / * `.
  core.String? name;

  /// The Google Developers Console
  /// [project ID or project number](https://developers.google.com/console/help/new/#projectnumber).
  ///
  /// This field has been deprecated and replaced by the name field.
  ///
  /// Deprecated.
  core.String? projectId;

  /// Whether to rotate credentials during IP rotation.
  core.bool? rotateCredentials;

  /// The name of the Google Compute Engine
  /// [zone](https://cloud.google.com/compute/docs/zones#available) in which the
  /// cluster resides.
  ///
  /// This field has been deprecated and replaced by the name field.
  ///
  /// Deprecated.
  core.String? zone;

  StartIPRotationRequest({
    this.clusterId,
    this.name,
    this.projectId,
    this.rotateCredentials,
    this.zone,
  });

  StartIPRotationRequest.fromJson(core.Map _json)
      : this(
          clusterId: _json.containsKey('clusterId')
              ? _json['clusterId'] as core.String
              : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          projectId: _json.containsKey('projectId')
              ? _json['projectId'] as core.String
              : null,
          rotateCredentials: _json.containsKey('rotateCredentials')
              ? _json['rotateCredentials'] as core.bool
              : null,
          zone: _json.containsKey('zone') ? _json['zone'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (clusterId != null) 'clusterId': clusterId!,
        if (name != null) 'name': name!,
        if (projectId != null) 'projectId': projectId!,
        if (rotateCredentials != null) 'rotateCredentials': rotateCredentials!,
        if (zone != null) 'zone': zone!,
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

/// StatusCondition describes why a cluster or a node pool has a certain status
/// (e.g., ERROR or DEGRADED).
class StatusCondition {
  /// Canonical code of the condition.
  /// Possible string values are:
  /// - "OK" : Not an error; returned on success HTTP Mapping: 200 OK
  /// - "CANCELLED" : The operation was cancelled, typically by the caller. HTTP
  /// Mapping: 499 Client Closed Request
  /// - "UNKNOWN" : Unknown error. For example, this error may be returned when
  /// a `Status` value received from another address space belongs to an error
  /// space that is not known in this address space. Also errors raised by APIs
  /// that do not return enough error information may be converted to this
  /// error. HTTP Mapping: 500 Internal Server Error
  /// - "INVALID_ARGUMENT" : The client specified an invalid argument. Note that
  /// this differs from `FAILED_PRECONDITION`. `INVALID_ARGUMENT` indicates
  /// arguments that are problematic regardless of the state of the system
  /// (e.g., a malformed file name). HTTP Mapping: 400 Bad Request
  /// - "DEADLINE_EXCEEDED" : The deadline expired before the operation could
  /// complete. For operations that change the state of the system, this error
  /// may be returned even if the operation has completed successfully. For
  /// example, a successful response from a server could have been delayed long
  /// enough for the deadline to expire. HTTP Mapping: 504 Gateway Timeout
  /// - "NOT_FOUND" : Some requested entity (e.g., file or directory) was not
  /// found. Note to server developers: if a request is denied for an entire
  /// class of users, such as gradual feature rollout or undocumented allowlist,
  /// `NOT_FOUND` may be used. If a request is denied for some users within a
  /// class of users, such as user-based access control, `PERMISSION_DENIED`
  /// must be used. HTTP Mapping: 404 Not Found
  /// - "ALREADY_EXISTS" : The entity that a client attempted to create (e.g.,
  /// file or directory) already exists. HTTP Mapping: 409 Conflict
  /// - "PERMISSION_DENIED" : The caller does not have permission to execute the
  /// specified operation. `PERMISSION_DENIED` must not be used for rejections
  /// caused by exhausting some resource (use `RESOURCE_EXHAUSTED` instead for
  /// those errors). `PERMISSION_DENIED` must not be used if the caller can not
  /// be identified (use `UNAUTHENTICATED` instead for those errors). This error
  /// code does not imply the request is valid or the requested entity exists or
  /// satisfies other pre-conditions. HTTP Mapping: 403 Forbidden
  /// - "UNAUTHENTICATED" : The request does not have valid authentication
  /// credentials for the operation. HTTP Mapping: 401 Unauthorized
  /// - "RESOURCE_EXHAUSTED" : Some resource has been exhausted, perhaps a
  /// per-user quota, or perhaps the entire file system is out of space. HTTP
  /// Mapping: 429 Too Many Requests
  /// - "FAILED_PRECONDITION" : The operation was rejected because the system is
  /// not in a state required for the operation's execution. For example, the
  /// directory to be deleted is non-empty, an rmdir operation is applied to a
  /// non-directory, etc. Service implementors can use the following guidelines
  /// to decide between `FAILED_PRECONDITION`, `ABORTED`, and `UNAVAILABLE`: (a)
  /// Use `UNAVAILABLE` if the client can retry just the failing call. (b) Use
  /// `ABORTED` if the client should retry at a higher level. For example, when
  /// a client-specified test-and-set fails, indicating the client should
  /// restart a read-modify-write sequence. (c) Use `FAILED_PRECONDITION` if the
  /// client should not retry until the system state has been explicitly fixed.
  /// For example, if an "rmdir" fails because the directory is non-empty,
  /// `FAILED_PRECONDITION` should be returned since the client should not retry
  /// unless the files are deleted from the directory. HTTP Mapping: 400 Bad
  /// Request
  /// - "ABORTED" : The operation was aborted, typically due to a concurrency
  /// issue such as a sequencer check failure or transaction abort. See the
  /// guidelines above for deciding between `FAILED_PRECONDITION`, `ABORTED`,
  /// and `UNAVAILABLE`. HTTP Mapping: 409 Conflict
  /// - "OUT_OF_RANGE" : The operation was attempted past the valid range. E.g.,
  /// seeking or reading past end-of-file. Unlike `INVALID_ARGUMENT`, this error
  /// indicates a problem that may be fixed if the system state changes. For
  /// example, a 32-bit file system will generate `INVALID_ARGUMENT` if asked to
  /// read at an offset that is not in the range \[0,2^32-1\], but it will
  /// generate `OUT_OF_RANGE` if asked to read from an offset past the current
  /// file size. There is a fair bit of overlap between `FAILED_PRECONDITION`
  /// and `OUT_OF_RANGE`. We recommend using `OUT_OF_RANGE` (the more specific
  /// error) when it applies so that callers who are iterating through a space
  /// can easily look for an `OUT_OF_RANGE` error to detect when they are done.
  /// HTTP Mapping: 400 Bad Request
  /// - "UNIMPLEMENTED" : The operation is not implemented or is not
  /// supported/enabled in this service. HTTP Mapping: 501 Not Implemented
  /// - "INTERNAL" : Internal errors. This means that some invariants expected
  /// by the underlying system have been broken. This error code is reserved for
  /// serious errors. HTTP Mapping: 500 Internal Server Error
  /// - "UNAVAILABLE" : The service is currently unavailable. This is most
  /// likely a transient condition, which can be corrected by retrying with a
  /// backoff. Note that it is not always safe to retry non-idempotent
  /// operations. See the guidelines above for deciding between
  /// `FAILED_PRECONDITION`, `ABORTED`, and `UNAVAILABLE`. HTTP Mapping: 503
  /// Service Unavailable
  /// - "DATA_LOSS" : Unrecoverable data loss or corruption. HTTP Mapping: 500
  /// Internal Server Error
  core.String? canonicalCode;

  /// Machine-friendly representation of the condition Deprecated.
  ///
  /// Use canonical_code instead.
  /// Possible string values are:
  /// - "UNKNOWN" : UNKNOWN indicates a generic condition.
  /// - "GCE_STOCKOUT" : GCE_STOCKOUT indicates that Google Compute Engine
  /// resources are temporarily unavailable.
  /// - "GKE_SERVICE_ACCOUNT_DELETED" : GKE_SERVICE_ACCOUNT_DELETED indicates
  /// that the user deleted their robot service account.
  /// - "GCE_QUOTA_EXCEEDED" : Google Compute Engine quota was exceeded.
  /// - "SET_BY_OPERATOR" : Cluster state was manually changed by an SRE due to
  /// a system logic error.
  /// - "CLOUD_KMS_KEY_ERROR" : Unable to perform an encrypt operation against
  /// the CloudKMS key used for etcd level encryption.
  /// - "CA_EXPIRING" : Cluster CA is expiring soon.
  core.String? code;

  /// Human-friendly representation of the condition
  core.String? message;

  StatusCondition({
    this.canonicalCode,
    this.code,
    this.message,
  });

  StatusCondition.fromJson(core.Map _json)
      : this(
          canonicalCode: _json.containsKey('canonicalCode')
              ? _json['canonicalCode'] as core.String
              : null,
          code: _json.containsKey('code') ? _json['code'] as core.String : null,
          message: _json.containsKey('message')
              ? _json['message'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (canonicalCode != null) 'canonicalCode': canonicalCode!,
        if (code != null) 'code': code!,
        if (message != null) 'message': message!,
      };
}

/// Represents an arbitrary window of time.
class TimeWindow {
  /// The time that the window ends.
  ///
  /// The end time should take place after the start time.
  core.String? endTime;

  /// MaintenanceExclusionOptions provides maintenance exclusion related
  /// options.
  MaintenanceExclusionOptions? maintenanceExclusionOptions;

  /// The time that the window first starts.
  core.String? startTime;

  TimeWindow({
    this.endTime,
    this.maintenanceExclusionOptions,
    this.startTime,
  });

  TimeWindow.fromJson(core.Map _json)
      : this(
          endTime: _json.containsKey('endTime')
              ? _json['endTime'] as core.String
              : null,
          maintenanceExclusionOptions:
              _json.containsKey('maintenanceExclusionOptions')
                  ? MaintenanceExclusionOptions.fromJson(
                      _json['maintenanceExclusionOptions']
                          as core.Map<core.String, core.dynamic>)
                  : null,
          startTime: _json.containsKey('startTime')
              ? _json['startTime'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (endTime != null) 'endTime': endTime!,
        if (maintenanceExclusionOptions != null)
          'maintenanceExclusionOptions': maintenanceExclusionOptions!,
        if (startTime != null) 'startTime': startTime!,
      };
}

/// UpdateClusterRequest updates the settings of a cluster.
class UpdateClusterRequest {
  /// The name of the cluster to upgrade.
  ///
  /// This field has been deprecated and replaced by the name field.
  ///
  /// Deprecated.
  core.String? clusterId;

  /// The name (project, location, cluster) of the cluster to update.
  ///
  /// Specified in the format `projects / * /locations / * /clusters / * `.
  core.String? name;

  /// The Google Developers Console
  /// [project ID or project number](https://support.google.com/cloud/answer/6158840).
  ///
  /// This field has been deprecated and replaced by the name field.
  ///
  /// Deprecated.
  core.String? projectId;

  /// A description of the update.
  ///
  /// Required.
  ClusterUpdate? update;

  /// The name of the Google Compute Engine
  /// [zone](https://cloud.google.com/compute/docs/zones#available) in which the
  /// cluster resides.
  ///
  /// This field has been deprecated and replaced by the name field.
  ///
  /// Deprecated.
  core.String? zone;

  UpdateClusterRequest({
    this.clusterId,
    this.name,
    this.projectId,
    this.update,
    this.zone,
  });

  UpdateClusterRequest.fromJson(core.Map _json)
      : this(
          clusterId: _json.containsKey('clusterId')
              ? _json['clusterId'] as core.String
              : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          projectId: _json.containsKey('projectId')
              ? _json['projectId'] as core.String
              : null,
          update: _json.containsKey('update')
              ? ClusterUpdate.fromJson(
                  _json['update'] as core.Map<core.String, core.dynamic>)
              : null,
          zone: _json.containsKey('zone') ? _json['zone'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (clusterId != null) 'clusterId': clusterId!,
        if (name != null) 'name': name!,
        if (projectId != null) 'projectId': projectId!,
        if (update != null) 'update': update!,
        if (zone != null) 'zone': zone!,
      };
}

/// UpdateMasterRequest updates the master of the cluster.
class UpdateMasterRequest {
  /// The name of the cluster to upgrade.
  ///
  /// This field has been deprecated and replaced by the name field.
  ///
  /// Deprecated.
  core.String? clusterId;

  /// The Kubernetes version to change the master to.
  ///
  /// Users may specify either explicit versions offered by Kubernetes Engine or
  /// version aliases, which have the following behavior: - "latest": picks the
  /// highest valid Kubernetes version - "1.X": picks the highest valid
  /// patch+gke.N patch in the 1.X version - "1.X.Y": picks the highest valid
  /// gke.N patch in the 1.X.Y version - "1.X.Y-gke.N": picks an explicit
  /// Kubernetes version - "-": picks the default Kubernetes version
  ///
  /// Required.
  core.String? masterVersion;

  /// The name (project, location, cluster) of the cluster to update.
  ///
  /// Specified in the format `projects / * /locations / * /clusters / * `.
  core.String? name;

  /// The Google Developers Console
  /// [project ID or project number](https://support.google.com/cloud/answer/6158840).
  ///
  /// This field has been deprecated and replaced by the name field.
  ///
  /// Deprecated.
  core.String? projectId;

  /// The name of the Google Compute Engine
  /// [zone](https://cloud.google.com/compute/docs/zones#available) in which the
  /// cluster resides.
  ///
  /// This field has been deprecated and replaced by the name field.
  ///
  /// Deprecated.
  core.String? zone;

  UpdateMasterRequest({
    this.clusterId,
    this.masterVersion,
    this.name,
    this.projectId,
    this.zone,
  });

  UpdateMasterRequest.fromJson(core.Map _json)
      : this(
          clusterId: _json.containsKey('clusterId')
              ? _json['clusterId'] as core.String
              : null,
          masterVersion: _json.containsKey('masterVersion')
              ? _json['masterVersion'] as core.String
              : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          projectId: _json.containsKey('projectId')
              ? _json['projectId'] as core.String
              : null,
          zone: _json.containsKey('zone') ? _json['zone'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (clusterId != null) 'clusterId': clusterId!,
        if (masterVersion != null) 'masterVersion': masterVersion!,
        if (name != null) 'name': name!,
        if (projectId != null) 'projectId': projectId!,
        if (zone != null) 'zone': zone!,
      };
}

/// UpdateNodePoolRequests update a node pool's image and/or version.
class UpdateNodePoolRequest {
  /// The name of the cluster to upgrade.
  ///
  /// This field has been deprecated and replaced by the name field.
  ///
  /// Deprecated.
  core.String? clusterId;

  /// GCFS config.
  GcfsConfig? gcfsConfig;

  /// Enable or disable gvnic on the node pool.
  VirtualNIC? gvnic;

  /// The desired image type for the node pool.
  ///
  /// Required.
  core.String? imageType;

  /// Node kubelet configs.
  NodeKubeletConfig? kubeletConfig;

  /// Parameters that can be configured on Linux nodes.
  LinuxNodeConfig? linuxNodeConfig;

  /// The desired list of Google Compute Engine
  /// [zones](https://cloud.google.com/compute/docs/zones#available) in which
  /// the node pool's nodes should be located.
  ///
  /// Changing the locations for a node pool will result in nodes being either
  /// created or removed from the node pool, depending on whether locations are
  /// being added or removed.
  core.List<core.String>? locations;

  /// The name (project, location, cluster, node pool) of the node pool to
  /// update.
  ///
  /// Specified in the format `projects / * /locations / * /clusters / *
  /// /nodePools / * `.
  core.String? name;

  /// The name of the node pool to upgrade.
  ///
  /// This field has been deprecated and replaced by the name field.
  ///
  /// Deprecated.
  core.String? nodePoolId;

  /// The Kubernetes version to change the nodes to (typically an upgrade).
  ///
  /// Users may specify either explicit versions offered by Kubernetes Engine or
  /// version aliases, which have the following behavior: - "latest": picks the
  /// highest valid Kubernetes version - "1.X": picks the highest valid
  /// patch+gke.N patch in the 1.X version - "1.X.Y": picks the highest valid
  /// gke.N patch in the 1.X.Y version - "1.X.Y-gke.N": picks an explicit
  /// Kubernetes version - "-": picks the Kubernetes master version
  ///
  /// Required.
  core.String? nodeVersion;

  /// The Google Developers Console
  /// [project ID or project number](https://support.google.com/cloud/answer/6158840).
  ///
  /// This field has been deprecated and replaced by the name field.
  ///
  /// Deprecated.
  core.String? projectId;

  /// Upgrade settings control disruption and speed of the upgrade.
  UpgradeSettings? upgradeSettings;

  /// The desired workload metadata config for the node pool.
  WorkloadMetadataConfig? workloadMetadataConfig;

  /// The name of the Google Compute Engine
  /// [zone](https://cloud.google.com/compute/docs/zones#available) in which the
  /// cluster resides.
  ///
  /// This field has been deprecated and replaced by the name field.
  ///
  /// Deprecated.
  core.String? zone;

  UpdateNodePoolRequest({
    this.clusterId,
    this.gcfsConfig,
    this.gvnic,
    this.imageType,
    this.kubeletConfig,
    this.linuxNodeConfig,
    this.locations,
    this.name,
    this.nodePoolId,
    this.nodeVersion,
    this.projectId,
    this.upgradeSettings,
    this.workloadMetadataConfig,
    this.zone,
  });

  UpdateNodePoolRequest.fromJson(core.Map _json)
      : this(
          clusterId: _json.containsKey('clusterId')
              ? _json['clusterId'] as core.String
              : null,
          gcfsConfig: _json.containsKey('gcfsConfig')
              ? GcfsConfig.fromJson(
                  _json['gcfsConfig'] as core.Map<core.String, core.dynamic>)
              : null,
          gvnic: _json.containsKey('gvnic')
              ? VirtualNIC.fromJson(
                  _json['gvnic'] as core.Map<core.String, core.dynamic>)
              : null,
          imageType: _json.containsKey('imageType')
              ? _json['imageType'] as core.String
              : null,
          kubeletConfig: _json.containsKey('kubeletConfig')
              ? NodeKubeletConfig.fromJson(
                  _json['kubeletConfig'] as core.Map<core.String, core.dynamic>)
              : null,
          linuxNodeConfig: _json.containsKey('linuxNodeConfig')
              ? LinuxNodeConfig.fromJson(_json['linuxNodeConfig']
                  as core.Map<core.String, core.dynamic>)
              : null,
          locations: _json.containsKey('locations')
              ? (_json['locations'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          nodePoolId: _json.containsKey('nodePoolId')
              ? _json['nodePoolId'] as core.String
              : null,
          nodeVersion: _json.containsKey('nodeVersion')
              ? _json['nodeVersion'] as core.String
              : null,
          projectId: _json.containsKey('projectId')
              ? _json['projectId'] as core.String
              : null,
          upgradeSettings: _json.containsKey('upgradeSettings')
              ? UpgradeSettings.fromJson(_json['upgradeSettings']
                  as core.Map<core.String, core.dynamic>)
              : null,
          workloadMetadataConfig: _json.containsKey('workloadMetadataConfig')
              ? WorkloadMetadataConfig.fromJson(_json['workloadMetadataConfig']
                  as core.Map<core.String, core.dynamic>)
              : null,
          zone: _json.containsKey('zone') ? _json['zone'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (clusterId != null) 'clusterId': clusterId!,
        if (gcfsConfig != null) 'gcfsConfig': gcfsConfig!,
        if (gvnic != null) 'gvnic': gvnic!,
        if (imageType != null) 'imageType': imageType!,
        if (kubeletConfig != null) 'kubeletConfig': kubeletConfig!,
        if (linuxNodeConfig != null) 'linuxNodeConfig': linuxNodeConfig!,
        if (locations != null) 'locations': locations!,
        if (name != null) 'name': name!,
        if (nodePoolId != null) 'nodePoolId': nodePoolId!,
        if (nodeVersion != null) 'nodeVersion': nodeVersion!,
        if (projectId != null) 'projectId': projectId!,
        if (upgradeSettings != null) 'upgradeSettings': upgradeSettings!,
        if (workloadMetadataConfig != null)
          'workloadMetadataConfig': workloadMetadataConfig!,
        if (zone != null) 'zone': zone!,
      };
}

/// These upgrade settings control the level of parallelism and the level of
/// disruption caused by an upgrade.
///
/// maxUnavailable controls the number of nodes that can be simultaneously
/// unavailable. maxSurge controls the number of additional nodes that can be
/// added to the node pool temporarily for the time of the upgrade to increase
/// the number of available nodes. (maxUnavailable + maxSurge) determines the
/// level of parallelism (how many nodes are being upgraded at the same time).
/// Note: upgrades inevitably introduce some disruption since workloads need to
/// be moved from old nodes to new, upgraded ones. Even if maxUnavailable=0,
/// this holds true. (Disruption stays within the limits of PodDisruptionBudget,
/// if it is configured.) Consider a hypothetical node pool with 5 nodes having
/// maxSurge=2, maxUnavailable=1. This means the upgrade process upgrades 3
/// nodes simultaneously. It creates 2 additional (upgraded) nodes, then it
/// brings down 3 old (not yet upgraded) nodes at the same time. This ensures
/// that there are always at least 4 nodes available.
class UpgradeSettings {
  /// The maximum number of nodes that can be created beyond the current size of
  /// the node pool during the upgrade process.
  core.int? maxSurge;

  /// The maximum number of nodes that can be simultaneously unavailable during
  /// the upgrade process.
  ///
  /// A node is considered available if its status is Ready.
  core.int? maxUnavailable;

  UpgradeSettings({
    this.maxSurge,
    this.maxUnavailable,
  });

  UpgradeSettings.fromJson(core.Map _json)
      : this(
          maxSurge: _json.containsKey('maxSurge')
              ? _json['maxSurge'] as core.int
              : null,
          maxUnavailable: _json.containsKey('maxUnavailable')
              ? _json['maxUnavailable'] as core.int
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (maxSurge != null) 'maxSurge': maxSurge!,
        if (maxUnavailable != null) 'maxUnavailable': maxUnavailable!,
      };
}

/// UsableSubnetwork resource returns the subnetwork name, its associated
/// network and the primary CIDR range.
class UsableSubnetwork {
  /// The range of internal addresses that are owned by this subnetwork.
  core.String? ipCidrRange;

  /// Network Name.
  ///
  /// Example: projects/my-project/global/networks/my-network
  core.String? network;

  /// Secondary IP ranges.
  core.List<UsableSubnetworkSecondaryRange>? secondaryIpRanges;

  /// A human readable status message representing the reasons for cases where
  /// the caller cannot use the secondary ranges under the subnet.
  ///
  /// For example if the secondary_ip_ranges is empty due to a permission issue,
  /// an insufficient permission message will be given by status_message.
  core.String? statusMessage;

  /// Subnetwork Name.
  ///
  /// Example: projects/my-project/regions/us-central1/subnetworks/my-subnet
  core.String? subnetwork;

  UsableSubnetwork({
    this.ipCidrRange,
    this.network,
    this.secondaryIpRanges,
    this.statusMessage,
    this.subnetwork,
  });

  UsableSubnetwork.fromJson(core.Map _json)
      : this(
          ipCidrRange: _json.containsKey('ipCidrRange')
              ? _json['ipCidrRange'] as core.String
              : null,
          network: _json.containsKey('network')
              ? _json['network'] as core.String
              : null,
          secondaryIpRanges: _json.containsKey('secondaryIpRanges')
              ? (_json['secondaryIpRanges'] as core.List)
                  .map((value) => UsableSubnetworkSecondaryRange.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          statusMessage: _json.containsKey('statusMessage')
              ? _json['statusMessage'] as core.String
              : null,
          subnetwork: _json.containsKey('subnetwork')
              ? _json['subnetwork'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (ipCidrRange != null) 'ipCidrRange': ipCidrRange!,
        if (network != null) 'network': network!,
        if (secondaryIpRanges != null) 'secondaryIpRanges': secondaryIpRanges!,
        if (statusMessage != null) 'statusMessage': statusMessage!,
        if (subnetwork != null) 'subnetwork': subnetwork!,
      };
}

/// Secondary IP range of a usable subnetwork.
class UsableSubnetworkSecondaryRange {
  /// The range of IP addresses belonging to this subnetwork secondary range.
  core.String? ipCidrRange;

  /// The name associated with this subnetwork secondary range, used when adding
  /// an alias IP range to a VM instance.
  core.String? rangeName;

  /// This field is to determine the status of the secondary range programmably.
  /// Possible string values are:
  /// - "UNKNOWN" : UNKNOWN is the zero value of the Status enum. It's not a
  /// valid status.
  /// - "UNUSED" : UNUSED denotes that this range is unclaimed by any cluster.
  /// - "IN_USE_SERVICE" : IN_USE_SERVICE denotes that this range is claimed by
  /// a cluster for services. It cannot be used for other clusters.
  /// - "IN_USE_SHAREABLE_POD" : IN_USE_SHAREABLE_POD denotes this range was
  /// created by the network admin and is currently claimed by a cluster for
  /// pods. It can only be used by other clusters as a pod range.
  /// - "IN_USE_MANAGED_POD" : IN_USE_MANAGED_POD denotes this range was created
  /// by GKE and is claimed for pods. It cannot be used for other clusters.
  core.String? status;

  UsableSubnetworkSecondaryRange({
    this.ipCidrRange,
    this.rangeName,
    this.status,
  });

  UsableSubnetworkSecondaryRange.fromJson(core.Map _json)
      : this(
          ipCidrRange: _json.containsKey('ipCidrRange')
              ? _json['ipCidrRange'] as core.String
              : null,
          rangeName: _json.containsKey('rangeName')
              ? _json['rangeName'] as core.String
              : null,
          status: _json.containsKey('status')
              ? _json['status'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (ipCidrRange != null) 'ipCidrRange': ipCidrRange!,
        if (rangeName != null) 'rangeName': rangeName!,
        if (status != null) 'status': status!,
      };
}

/// VerticalPodAutoscaling contains global, per-cluster information required by
/// Vertical Pod Autoscaler to automatically adjust the resources of pods
/// controlled by it.
class VerticalPodAutoscaling {
  /// Enables vertical pod autoscaling.
  core.bool? enabled;

  VerticalPodAutoscaling({
    this.enabled,
  });

  VerticalPodAutoscaling.fromJson(core.Map _json)
      : this(
          enabled: _json.containsKey('enabled')
              ? _json['enabled'] as core.bool
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (enabled != null) 'enabled': enabled!,
      };
}

/// Configuration of gVNIC feature.
class VirtualNIC {
  /// Whether gVNIC features are enabled in the node pool.
  core.bool? enabled;

  VirtualNIC({
    this.enabled,
  });

  VirtualNIC.fromJson(core.Map _json)
      : this(
          enabled: _json.containsKey('enabled')
              ? _json['enabled'] as core.bool
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (enabled != null) 'enabled': enabled!,
      };
}

/// Configuration for the use of Kubernetes Service Accounts in GCP IAM
/// policies.
class WorkloadIdentityConfig {
  /// The workload pool to attach all Kubernetes service accounts to.
  core.String? workloadPool;

  WorkloadIdentityConfig({
    this.workloadPool,
  });

  WorkloadIdentityConfig.fromJson(core.Map _json)
      : this(
          workloadPool: _json.containsKey('workloadPool')
              ? _json['workloadPool'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (workloadPool != null) 'workloadPool': workloadPool!,
      };
}

/// WorkloadMetadataConfig defines the metadata configuration to expose to
/// workloads on the node pool.
class WorkloadMetadataConfig {
  /// Mode is the configuration for how to expose metadata to workloads running
  /// on the node pool.
  /// Possible string values are:
  /// - "MODE_UNSPECIFIED" : Not set.
  /// - "GCE_METADATA" : Expose all Compute Engine metadata to pods.
  /// - "GKE_METADATA" : Run the GKE Metadata Server on this node. The GKE
  /// Metadata Server exposes a metadata API to workloads that is compatible
  /// with the V1 Compute Metadata APIs exposed by the Compute Engine and App
  /// Engine Metadata Servers. This feature can only be enabled if Workload
  /// Identity is enabled at the cluster level.
  core.String? mode;

  WorkloadMetadataConfig({
    this.mode,
  });

  WorkloadMetadataConfig.fromJson(core.Map _json)
      : this(
          mode: _json.containsKey('mode') ? _json['mode'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (mode != null) 'mode': mode!,
      };
}
