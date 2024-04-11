// This is a generated file (see the discoveryapis_generator project).

// ignore_for_file: camel_case_types
// ignore_for_file: comment_references
// ignore_for_file: deprecated_member_use_from_same_package
// ignore_for_file: lines_longer_than_80_chars
// ignore_for_file: non_constant_identifier_names
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
    final queryParams_ = <core.String, core.List<core.String>>{
      if (filter != null) 'filter': [filter],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' +
        core.Uri.encodeFull('$parent') +
        '/aggregated/usableSubnetworks';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListUsableSubnetworksResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
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
  /// [project ID or project number](https://cloud.google.com/resource-manager/docs/creating-managing-projects).
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
    final queryParams_ = <core.String, core.List<core.String>>{
      if (projectId != null) 'projectId': [projectId],
      if (zone != null) 'zone': [zone],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + '/serverConfig';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ServerConfig.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
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

  /// Checks the cluster compatibility with Autopilot mode, and returns a list
  /// of compatibility issues.
  ///
  /// Request parameters:
  ///
  /// [name] - The name (project, location, cluster) of the cluster to retrieve.
  /// Specified in the format `projects / * /locations / * /clusters / * `.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/clusters/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [CheckAutopilotCompatibilityResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<CheckAutopilotCompatibilityResponse> checkAutopilotCompatibility(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1/' + core.Uri.encodeFull('$name') + ':checkAutopilotCompatibility';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return CheckAutopilotCompatibilityResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

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
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':completeIpRotation';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
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
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/clusters';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
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
  /// [project ID or project number](https://cloud.google.com/resource-manager/docs/creating-managing-projects).
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
    final queryParams_ = <core.String, core.List<core.String>>{
      if (clusterId != null) 'clusterId': [clusterId],
      if (projectId != null) 'projectId': [projectId],
      if (zone != null) 'zone': [zone],
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
  /// [project ID or project number](https://cloud.google.com/resource-manager/docs/creating-managing-projects).
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
    final queryParams_ = <core.String, core.List<core.String>>{
      if (clusterId != null) 'clusterId': [clusterId],
      if (projectId != null) 'projectId': [projectId],
      if (zone != null) 'zone': [zone],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return Cluster.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Gets the public component of the cluster signing keys in JSON Web Key
  /// format.
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
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/jwks';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GetJSONWebKeysResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
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
  /// [project ID or project number](https://cloud.google.com/resource-manager/docs/creating-managing-projects).
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
    final queryParams_ = <core.String, core.List<core.String>>{
      if (projectId != null) 'projectId': [projectId],
      if (zone != null) 'zone': [zone],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/clusters';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListClustersResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
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
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':setAddons';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
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
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':setLegacyAbac';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
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
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  async.Future<Operation> setLocations(
    SetLocationsRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':setLocations';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
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
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':setLogging';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
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
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':setMaintenancePolicy';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
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
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':setMasterAuth';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
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
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':setMonitoring';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
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
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':setNetworkPolicy';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
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
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':setResourceLabels';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
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
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':startIpRotation';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
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
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PUT',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
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
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':updateMaster';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsClustersNodePoolsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsClustersNodePoolsResource(commons.ApiRequester client)
      : _requester = client;

  /// CompleteNodePoolUpgrade will signal an on-going node pool upgrade to
  /// complete.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - The name (project, location, cluster, node pool id) of the node
  /// pool to complete upgrade. Specified in the format `projects / * /locations
  /// / * /clusters / * /nodePools / * `.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/clusters/\[^/\]+/nodePools/\[^/\]+$`.
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
  async.Future<Empty> completeUpgrade(
    CompleteNodePoolUpgradeRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':completeUpgrade';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Empty.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

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
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/nodePools';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
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
  /// [project ID or project number](https://cloud.google.com/resource-manager/docs/creating-managing-projects).
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
    final queryParams_ = <core.String, core.List<core.String>>{
      if (clusterId != null) 'clusterId': [clusterId],
      if (nodePoolId != null) 'nodePoolId': [nodePoolId],
      if (projectId != null) 'projectId': [projectId],
      if (zone != null) 'zone': [zone],
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
  /// [project ID or project number](https://cloud.google.com/resource-manager/docs/creating-managing-projects).
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
    final queryParams_ = <core.String, core.List<core.String>>{
      if (clusterId != null) 'clusterId': [clusterId],
      if (nodePoolId != null) 'nodePoolId': [nodePoolId],
      if (projectId != null) 'projectId': [projectId],
      if (zone != null) 'zone': [zone],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return NodePool.fromJson(response_ as core.Map<core.String, core.dynamic>);
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
  /// [project ID or project number](https://cloud.google.com/resource-manager/docs/creating-managing-projects).
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
    final queryParams_ = <core.String, core.List<core.String>>{
      if (clusterId != null) 'clusterId': [clusterId],
      if (projectId != null) 'projectId': [projectId],
      if (zone != null) 'zone': [zone],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/nodePools';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListNodePoolsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
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
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':rollback';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
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
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':setAutoscaling';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
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
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':setManagement';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
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
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':setSize';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
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
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PUT',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
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
  /// for details.
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
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' +
        core.Uri.encodeFull('$parent') +
        '/.well-known/openid-configuration';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GetOpenIDConfigResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
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
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':cancel';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Empty.fromJson(response_ as core.Map<core.String, core.dynamic>);
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
  /// [project ID or project number](https://cloud.google.com/resource-manager/docs/creating-managing-projects).
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
    final queryParams_ = <core.String, core.List<core.String>>{
      if (operationId != null) 'operationId': [operationId],
      if (projectId != null) 'projectId': [projectId],
      if (zone != null) 'zone': [zone],
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
  /// [project ID or project number](https://cloud.google.com/resource-manager/docs/creating-managing-projects).
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
    final queryParams_ = <core.String, core.List<core.String>>{
      if (projectId != null) 'projectId': [projectId],
      if (zone != null) 'zone': [zone],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/operations';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListOperationsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
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
  /// [project ID or project number](https://cloud.google.com/resource-manager/docs/creating-managing-projects).
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
    final queryParams_ = <core.String, core.List<core.String>>{
      if (name != null) 'name': [name],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/projects/' +
        commons.escapeVariable('$projectId') +
        '/zones/' +
        commons.escapeVariable('$zone') +
        '/serverconfig';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ServerConfig.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
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
  /// [project ID or project number](https://cloud.google.com/resource-manager/docs/creating-managing-projects).
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
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/projects/' +
        commons.escapeVariable('$projectId') +
        '/zones/' +
        commons.escapeVariable('$zone') +
        '/clusters/' +
        commons.escapeVariable('$clusterId') +
        '/addons';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Completes master IP rotation.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [projectId] - Deprecated. The Google Developers Console
  /// [project ID or project number](https://cloud.google.com/resource-manager/docs/creating-managing-projects).
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
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/projects/' +
        commons.escapeVariable('$projectId') +
        '/zones/' +
        commons.escapeVariable('$zone') +
        '/clusters/' +
        commons.escapeVariable('$clusterId') +
        ':completeIpRotation';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
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
  /// [project ID or project number](https://cloud.google.com/resource-manager/docs/creating-managing-projects).
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
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/projects/' +
        commons.escapeVariable('$projectId') +
        '/zones/' +
        commons.escapeVariable('$zone') +
        '/clusters';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
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
  /// [project ID or project number](https://cloud.google.com/resource-manager/docs/creating-managing-projects).
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
    final queryParams_ = <core.String, core.List<core.String>>{
      if (name != null) 'name': [name],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/projects/' +
        commons.escapeVariable('$projectId') +
        '/zones/' +
        commons.escapeVariable('$zone') +
        '/clusters/' +
        commons.escapeVariable('$clusterId');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Gets the details of a specific cluster.
  ///
  /// Request parameters:
  ///
  /// [projectId] - Deprecated. The Google Developers Console
  /// [project ID or project number](https://cloud.google.com/resource-manager/docs/creating-managing-projects).
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
    final queryParams_ = <core.String, core.List<core.String>>{
      if (name != null) 'name': [name],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/projects/' +
        commons.escapeVariable('$projectId') +
        '/zones/' +
        commons.escapeVariable('$zone') +
        '/clusters/' +
        commons.escapeVariable('$clusterId');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return Cluster.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Enables or disables the ABAC authorization mechanism on a cluster.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [projectId] - Deprecated. The Google Developers Console
  /// [project ID or project number](https://cloud.google.com/resource-manager/docs/creating-managing-projects).
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
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/projects/' +
        commons.escapeVariable('$projectId') +
        '/zones/' +
        commons.escapeVariable('$zone') +
        '/clusters/' +
        commons.escapeVariable('$clusterId') +
        '/legacyAbac';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists all clusters owned by a project in either the specified zone or all
  /// zones.
  ///
  /// Request parameters:
  ///
  /// [projectId] - Deprecated. The Google Developers Console
  /// [project ID or project number](https://cloud.google.com/resource-manager/docs/creating-managing-projects).
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
    final queryParams_ = <core.String, core.List<core.String>>{
      if (parent != null) 'parent': [parent],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/projects/' +
        commons.escapeVariable('$projectId') +
        '/zones/' +
        commons.escapeVariable('$zone') +
        '/clusters';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListClustersResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
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
  /// [project ID or project number](https://cloud.google.com/resource-manager/docs/creating-managing-projects).
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
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  async.Future<Operation> locations(
    SetLocationsRequest request,
    core.String projectId,
    core.String zone,
    core.String clusterId, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/projects/' +
        commons.escapeVariable('$projectId') +
        '/zones/' +
        commons.escapeVariable('$zone') +
        '/clusters/' +
        commons.escapeVariable('$clusterId') +
        '/locations';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Sets the logging service for a specific cluster.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [projectId] - Deprecated. The Google Developers Console
  /// [project ID or project number](https://cloud.google.com/resource-manager/docs/creating-managing-projects).
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
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/projects/' +
        commons.escapeVariable('$projectId') +
        '/zones/' +
        commons.escapeVariable('$zone') +
        '/clusters/' +
        commons.escapeVariable('$clusterId') +
        '/logging';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Updates the master for a specific cluster.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [projectId] - Deprecated. The Google Developers Console
  /// [project ID or project number](https://cloud.google.com/resource-manager/docs/creating-managing-projects).
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
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/projects/' +
        commons.escapeVariable('$projectId') +
        '/zones/' +
        commons.escapeVariable('$zone') +
        '/clusters/' +
        commons.escapeVariable('$clusterId') +
        '/master';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Sets the monitoring service for a specific cluster.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [projectId] - Deprecated. The Google Developers Console
  /// [project ID or project number](https://cloud.google.com/resource-manager/docs/creating-managing-projects).
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
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/projects/' +
        commons.escapeVariable('$projectId') +
        '/zones/' +
        commons.escapeVariable('$zone') +
        '/clusters/' +
        commons.escapeVariable('$clusterId') +
        '/monitoring';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Sets labels on a cluster.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [projectId] - Deprecated. The Google Developers Console
  /// [project ID or project number](https://cloud.google.com/resource-manager/docs/creating-managing-projects).
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
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/projects/' +
        commons.escapeVariable('$projectId') +
        '/zones/' +
        commons.escapeVariable('$zone') +
        '/clusters/' +
        commons.escapeVariable('$clusterId') +
        '/resourceLabels';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Sets the maintenance policy for a cluster.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [projectId] - Required. The Google Developers Console
  /// [project ID or project number](https://cloud.google.com/resource-manager/docs/creating-managing-projects).
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
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/projects/' +
        commons.escapeVariable('$projectId') +
        '/zones/' +
        commons.escapeVariable('$zone') +
        '/clusters/' +
        commons.escapeVariable('$clusterId') +
        ':setMaintenancePolicy';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
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
  /// [project ID or project number](https://cloud.google.com/resource-manager/docs/creating-managing-projects).
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
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/projects/' +
        commons.escapeVariable('$projectId') +
        '/zones/' +
        commons.escapeVariable('$zone') +
        '/clusters/' +
        commons.escapeVariable('$clusterId') +
        ':setMasterAuth';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Enables or disables Network Policy for a cluster.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [projectId] - Deprecated. The Google Developers Console
  /// [project ID or project number](https://cloud.google.com/resource-manager/docs/creating-managing-projects).
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
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/projects/' +
        commons.escapeVariable('$projectId') +
        '/zones/' +
        commons.escapeVariable('$zone') +
        '/clusters/' +
        commons.escapeVariable('$clusterId') +
        ':setNetworkPolicy';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Starts master IP rotation.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [projectId] - Deprecated. The Google Developers Console
  /// [project ID or project number](https://cloud.google.com/resource-manager/docs/creating-managing-projects).
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
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/projects/' +
        commons.escapeVariable('$projectId') +
        '/zones/' +
        commons.escapeVariable('$zone') +
        '/clusters/' +
        commons.escapeVariable('$clusterId') +
        ':startIpRotation';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Updates the settings of a specific cluster.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [projectId] - Deprecated. The Google Developers Console
  /// [project ID or project number](https://cloud.google.com/resource-manager/docs/creating-managing-projects).
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
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/projects/' +
        commons.escapeVariable('$projectId') +
        '/zones/' +
        commons.escapeVariable('$zone') +
        '/clusters/' +
        commons.escapeVariable('$clusterId');

    final response_ = await _requester.request(
      url_,
      'PUT',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
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
  /// [project ID or project number](https://cloud.google.com/resource-manager/docs/creating-managing-projects).
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
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/projects/' +
        commons.escapeVariable('$projectId') +
        '/zones/' +
        commons.escapeVariable('$zone') +
        '/clusters/' +
        commons.escapeVariable('$clusterId') +
        '/nodePools/' +
        commons.escapeVariable('$nodePoolId') +
        '/autoscaling';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Creates a node pool for a cluster.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [projectId] - Deprecated. The Google Developers Console
  /// [project ID or project number](https://cloud.google.com/resource-manager/docs/creating-managing-projects).
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
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/projects/' +
        commons.escapeVariable('$projectId') +
        '/zones/' +
        commons.escapeVariable('$zone') +
        '/clusters/' +
        commons.escapeVariable('$clusterId') +
        '/nodePools';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Deletes a node pool from a cluster.
  ///
  /// Request parameters:
  ///
  /// [projectId] - Deprecated. The Google Developers Console
  /// [project ID or project number](https://cloud.google.com/resource-manager/docs/creating-managing-projects).
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
    final queryParams_ = <core.String, core.List<core.String>>{
      if (name != null) 'name': [name],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/projects/' +
        commons.escapeVariable('$projectId') +
        '/zones/' +
        commons.escapeVariable('$zone') +
        '/clusters/' +
        commons.escapeVariable('$clusterId') +
        '/nodePools/' +
        commons.escapeVariable('$nodePoolId');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Retrieves the requested node pool.
  ///
  /// Request parameters:
  ///
  /// [projectId] - Deprecated. The Google Developers Console
  /// [project ID or project number](https://cloud.google.com/resource-manager/docs/creating-managing-projects).
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
    final queryParams_ = <core.String, core.List<core.String>>{
      if (name != null) 'name': [name],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/projects/' +
        commons.escapeVariable('$projectId') +
        '/zones/' +
        commons.escapeVariable('$zone') +
        '/clusters/' +
        commons.escapeVariable('$clusterId') +
        '/nodePools/' +
        commons.escapeVariable('$nodePoolId');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return NodePool.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists the node pools for a cluster.
  ///
  /// Request parameters:
  ///
  /// [projectId] - Deprecated. The Google Developers Console
  /// [project ID or project number](https://cloud.google.com/resource-manager/docs/creating-managing-projects).
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
    final queryParams_ = <core.String, core.List<core.String>>{
      if (parent != null) 'parent': [parent],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/projects/' +
        commons.escapeVariable('$projectId') +
        '/zones/' +
        commons.escapeVariable('$zone') +
        '/clusters/' +
        commons.escapeVariable('$clusterId') +
        '/nodePools';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListNodePoolsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
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
  /// [project ID or project number](https://cloud.google.com/resource-manager/docs/creating-managing-projects).
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
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/projects/' +
        commons.escapeVariable('$projectId') +
        '/zones/' +
        commons.escapeVariable('$zone') +
        '/clusters/' +
        commons.escapeVariable('$clusterId') +
        '/nodePools/' +
        commons.escapeVariable('$nodePoolId') +
        ':rollback';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Sets the NodeManagement options for a node pool.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [projectId] - Deprecated. The Google Developers Console
  /// [project ID or project number](https://cloud.google.com/resource-manager/docs/creating-managing-projects).
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
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/projects/' +
        commons.escapeVariable('$projectId') +
        '/zones/' +
        commons.escapeVariable('$zone') +
        '/clusters/' +
        commons.escapeVariable('$clusterId') +
        '/nodePools/' +
        commons.escapeVariable('$nodePoolId') +
        '/setManagement';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
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
  /// [project ID or project number](https://cloud.google.com/resource-manager/docs/creating-managing-projects).
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
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/projects/' +
        commons.escapeVariable('$projectId') +
        '/zones/' +
        commons.escapeVariable('$zone') +
        '/clusters/' +
        commons.escapeVariable('$clusterId') +
        '/nodePools/' +
        commons.escapeVariable('$nodePoolId') +
        '/setSize';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Updates the version and/or image type for the specified node pool.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [projectId] - Deprecated. The Google Developers Console
  /// [project ID or project number](https://cloud.google.com/resource-manager/docs/creating-managing-projects).
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
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/projects/' +
        commons.escapeVariable('$projectId') +
        '/zones/' +
        commons.escapeVariable('$zone') +
        '/clusters/' +
        commons.escapeVariable('$clusterId') +
        '/nodePools/' +
        commons.escapeVariable('$nodePoolId') +
        '/update';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
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
  /// [project ID or project number](https://cloud.google.com/resource-manager/docs/creating-managing-projects).
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
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/projects/' +
        commons.escapeVariable('$projectId') +
        '/zones/' +
        commons.escapeVariable('$zone') +
        '/operations/' +
        commons.escapeVariable('$operationId') +
        ':cancel';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Empty.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Gets the specified operation.
  ///
  /// Request parameters:
  ///
  /// [projectId] - Deprecated. The Google Developers Console
  /// [project ID or project number](https://cloud.google.com/resource-manager/docs/creating-managing-projects).
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
    final queryParams_ = <core.String, core.List<core.String>>{
      if (name != null) 'name': [name],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/projects/' +
        commons.escapeVariable('$projectId') +
        '/zones/' +
        commons.escapeVariable('$zone') +
        '/operations/' +
        commons.escapeVariable('$operationId');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists all operations in a project in a specific zone or all zones.
  ///
  /// Request parameters:
  ///
  /// [projectId] - Deprecated. The Google Developers Console
  /// [project ID or project number](https://cloud.google.com/resource-manager/docs/creating-managing-projects).
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
    final queryParams_ = <core.String, core.List<core.String>>{
      if (parent != null) 'parent': [parent],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/projects/' +
        commons.escapeVariable('$projectId') +
        '/zones/' +
        commons.escapeVariable('$zone') +
        '/operations';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListOperationsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
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

  /// The configuration for auto installation of GPU driver.
  GPUDriverInstallationConfig? gpuDriverInstallationConfig;

  /// Size of partitions to create on the GPU.
  ///
  /// Valid values are described in the NVIDIA
  /// [mig user guide](https://docs.nvidia.com/datacenter/tesla/mig-user-guide/#partitioning).
  core.String? gpuPartitionSize;

  /// The configuration for GPU sharing options.
  GPUSharingConfig? gpuSharingConfig;

  AcceleratorConfig({
    this.acceleratorCount,
    this.acceleratorType,
    this.gpuDriverInstallationConfig,
    this.gpuPartitionSize,
    this.gpuSharingConfig,
  });

  AcceleratorConfig.fromJson(core.Map json_)
      : this(
          acceleratorCount: json_.containsKey('acceleratorCount')
              ? json_['acceleratorCount'] as core.String
              : null,
          acceleratorType: json_.containsKey('acceleratorType')
              ? json_['acceleratorType'] as core.String
              : null,
          gpuDriverInstallationConfig:
              json_.containsKey('gpuDriverInstallationConfig')
                  ? GPUDriverInstallationConfig.fromJson(
                      json_['gpuDriverInstallationConfig']
                          as core.Map<core.String, core.dynamic>)
                  : null,
          gpuPartitionSize: json_.containsKey('gpuPartitionSize')
              ? json_['gpuPartitionSize'] as core.String
              : null,
          gpuSharingConfig: json_.containsKey('gpuSharingConfig')
              ? GPUSharingConfig.fromJson(json_['gpuSharingConfig']
                  as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (acceleratorCount != null) 'acceleratorCount': acceleratorCount!,
        if (acceleratorType != null) 'acceleratorType': acceleratorType!,
        if (gpuDriverInstallationConfig != null)
          'gpuDriverInstallationConfig': gpuDriverInstallationConfig!,
        if (gpuPartitionSize != null) 'gpuPartitionSize': gpuPartitionSize!,
        if (gpuSharingConfig != null) 'gpuSharingConfig': gpuSharingConfig!,
      };
}

/// AdditionalNodeNetworkConfig is the configuration for additional node
/// networks within the NodeNetworkConfig message
class AdditionalNodeNetworkConfig {
  /// Name of the VPC where the additional interface belongs
  core.String? network;

  /// Name of the subnetwork where the additional interface belongs
  core.String? subnetwork;

  AdditionalNodeNetworkConfig({
    this.network,
    this.subnetwork,
  });

  AdditionalNodeNetworkConfig.fromJson(core.Map json_)
      : this(
          network: json_.containsKey('network')
              ? json_['network'] as core.String
              : null,
          subnetwork: json_.containsKey('subnetwork')
              ? json_['subnetwork'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (network != null) 'network': network!,
        if (subnetwork != null) 'subnetwork': subnetwork!,
      };
}

/// AdditionalPodNetworkConfig is the configuration for additional pod networks
/// within the NodeNetworkConfig message
class AdditionalPodNetworkConfig {
  /// The maximum number of pods per node which use this pod network
  MaxPodsConstraint? maxPodsPerNode;

  /// The name of the secondary range on the subnet which provides IP address
  /// for this pod range
  core.String? secondaryPodRange;

  /// Name of the subnetwork where the additional pod network belongs
  core.String? subnetwork;

  AdditionalPodNetworkConfig({
    this.maxPodsPerNode,
    this.secondaryPodRange,
    this.subnetwork,
  });

  AdditionalPodNetworkConfig.fromJson(core.Map json_)
      : this(
          maxPodsPerNode: json_.containsKey('maxPodsPerNode')
              ? MaxPodsConstraint.fromJson(json_['maxPodsPerNode']
                  as core.Map<core.String, core.dynamic>)
              : null,
          secondaryPodRange: json_.containsKey('secondaryPodRange')
              ? json_['secondaryPodRange'] as core.String
              : null,
          subnetwork: json_.containsKey('subnetwork')
              ? json_['subnetwork'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (maxPodsPerNode != null) 'maxPodsPerNode': maxPodsPerNode!,
        if (secondaryPodRange != null) 'secondaryPodRange': secondaryPodRange!,
        if (subnetwork != null) 'subnetwork': subnetwork!,
      };
}

/// AdditionalPodRangesConfig is the configuration for additional pod secondary
/// ranges supporting the ClusterUpdate message.
class AdditionalPodRangesConfig {
  /// Information for additional pod range.
  ///
  /// Output only.
  core.List<RangeInfo>? podRangeInfo;

  /// Name for pod secondary ipv4 range which has the actual range defined
  /// ahead.
  core.List<core.String>? podRangeNames;

  AdditionalPodRangesConfig({
    this.podRangeInfo,
    this.podRangeNames,
  });

  AdditionalPodRangesConfig.fromJson(core.Map json_)
      : this(
          podRangeInfo: json_.containsKey('podRangeInfo')
              ? (json_['podRangeInfo'] as core.List)
                  .map((value) => RangeInfo.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          podRangeNames: json_.containsKey('podRangeNames')
              ? (json_['podRangeNames'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (podRangeInfo != null) 'podRangeInfo': podRangeInfo!,
        if (podRangeNames != null) 'podRangeNames': podRangeNames!,
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

  /// Configuration for the Cloud Storage Fuse CSI driver.
  GcsFuseCsiDriverConfig? gcsFuseCsiDriverConfig;

  /// Configuration for the Backup for GKE agent addon.
  GkeBackupAgentConfig? gkeBackupAgentConfig;

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
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  KubernetesDashboard? kubernetesDashboard;

  /// Configuration for NetworkPolicy.
  ///
  /// This only tracks whether the addon is enabled or not on the Master, it
  /// does not track whether network policy is enabled for the nodes.
  NetworkPolicyConfig? networkPolicyConfig;

  /// Configuration for the StatefulHA add-on.
  ///
  /// Optional.
  StatefulHAConfig? statefulHaConfig;

  AddonsConfig({
    this.cloudRunConfig,
    this.configConnectorConfig,
    this.dnsCacheConfig,
    this.gcePersistentDiskCsiDriverConfig,
    this.gcpFilestoreCsiDriverConfig,
    this.gcsFuseCsiDriverConfig,
    this.gkeBackupAgentConfig,
    this.horizontalPodAutoscaling,
    this.httpLoadBalancing,
    this.kubernetesDashboard,
    this.networkPolicyConfig,
    this.statefulHaConfig,
  });

  AddonsConfig.fromJson(core.Map json_)
      : this(
          cloudRunConfig: json_.containsKey('cloudRunConfig')
              ? CloudRunConfig.fromJson(json_['cloudRunConfig']
                  as core.Map<core.String, core.dynamic>)
              : null,
          configConnectorConfig: json_.containsKey('configConnectorConfig')
              ? ConfigConnectorConfig.fromJson(json_['configConnectorConfig']
                  as core.Map<core.String, core.dynamic>)
              : null,
          dnsCacheConfig: json_.containsKey('dnsCacheConfig')
              ? DnsCacheConfig.fromJson(json_['dnsCacheConfig']
                  as core.Map<core.String, core.dynamic>)
              : null,
          gcePersistentDiskCsiDriverConfig:
              json_.containsKey('gcePersistentDiskCsiDriverConfig')
                  ? GcePersistentDiskCsiDriverConfig.fromJson(
                      json_['gcePersistentDiskCsiDriverConfig']
                          as core.Map<core.String, core.dynamic>)
                  : null,
          gcpFilestoreCsiDriverConfig:
              json_.containsKey('gcpFilestoreCsiDriverConfig')
                  ? GcpFilestoreCsiDriverConfig.fromJson(
                      json_['gcpFilestoreCsiDriverConfig']
                          as core.Map<core.String, core.dynamic>)
                  : null,
          gcsFuseCsiDriverConfig: json_.containsKey('gcsFuseCsiDriverConfig')
              ? GcsFuseCsiDriverConfig.fromJson(json_['gcsFuseCsiDriverConfig']
                  as core.Map<core.String, core.dynamic>)
              : null,
          gkeBackupAgentConfig: json_.containsKey('gkeBackupAgentConfig')
              ? GkeBackupAgentConfig.fromJson(json_['gkeBackupAgentConfig']
                  as core.Map<core.String, core.dynamic>)
              : null,
          horizontalPodAutoscaling:
              json_.containsKey('horizontalPodAutoscaling')
                  ? HorizontalPodAutoscaling.fromJson(
                      json_['horizontalPodAutoscaling']
                          as core.Map<core.String, core.dynamic>)
                  : null,
          httpLoadBalancing: json_.containsKey('httpLoadBalancing')
              ? HttpLoadBalancing.fromJson(json_['httpLoadBalancing']
                  as core.Map<core.String, core.dynamic>)
              : null,
          kubernetesDashboard: json_.containsKey('kubernetesDashboard')
              ? KubernetesDashboard.fromJson(json_['kubernetesDashboard']
                  as core.Map<core.String, core.dynamic>)
              : null,
          networkPolicyConfig: json_.containsKey('networkPolicyConfig')
              ? NetworkPolicyConfig.fromJson(json_['networkPolicyConfig']
                  as core.Map<core.String, core.dynamic>)
              : null,
          statefulHaConfig: json_.containsKey('statefulHaConfig')
              ? StatefulHAConfig.fromJson(json_['statefulHaConfig']
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
        if (gcsFuseCsiDriverConfig != null)
          'gcsFuseCsiDriverConfig': gcsFuseCsiDriverConfig!,
        if (gkeBackupAgentConfig != null)
          'gkeBackupAgentConfig': gkeBackupAgentConfig!,
        if (horizontalPodAutoscaling != null)
          'horizontalPodAutoscaling': horizontalPodAutoscaling!,
        if (httpLoadBalancing != null) 'httpLoadBalancing': httpLoadBalancing!,
        if (kubernetesDashboard != null)
          'kubernetesDashboard': kubernetesDashboard!,
        if (networkPolicyConfig != null)
          'networkPolicyConfig': networkPolicyConfig!,
        if (statefulHaConfig != null) 'statefulHaConfig': statefulHaConfig!,
      };
}

/// AdvancedDatapathObservabilityConfig specifies configuration of observability
/// features of advanced datapath.
class AdvancedDatapathObservabilityConfig {
  /// Expose flow metrics on nodes
  core.bool? enableMetrics;

  /// Enable Relay component
  core.bool? enableRelay;

  /// Method used to make Relay available
  /// Possible string values are:
  /// - "RELAY_MODE_UNSPECIFIED" : Default value. This shouldn't be used.
  /// - "DISABLED" : disabled
  /// - "INTERNAL_VPC_LB" : exposed via internal load balancer
  /// - "EXTERNAL_LB" : exposed via external load balancer
  core.String? relayMode;

  AdvancedDatapathObservabilityConfig({
    this.enableMetrics,
    this.enableRelay,
    this.relayMode,
  });

  AdvancedDatapathObservabilityConfig.fromJson(core.Map json_)
      : this(
          enableMetrics: json_.containsKey('enableMetrics')
              ? json_['enableMetrics'] as core.bool
              : null,
          enableRelay: json_.containsKey('enableRelay')
              ? json_['enableRelay'] as core.bool
              : null,
          relayMode: json_.containsKey('relayMode')
              ? json_['relayMode'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (enableMetrics != null) 'enableMetrics': enableMetrics!,
        if (enableRelay != null) 'enableRelay': enableRelay!,
        if (relayMode != null) 'relayMode': relayMode!,
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

  AdvancedMachineFeatures.fromJson(core.Map json_)
      : this(
          threadsPerCore: json_.containsKey('threadsPerCore')
              ? json_['threadsPerCore'] as core.String
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

  AuthenticatorGroupsConfig.fromJson(core.Map json_)
      : this(
          enabled: json_.containsKey('enabled')
              ? json_['enabled'] as core.bool
              : null,
          securityGroup: json_.containsKey('securityGroup')
              ? json_['securityGroup'] as core.String
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

  AutoUpgradeOptions.fromJson(core.Map json_)
      : this(
          autoUpgradeStartTime: json_.containsKey('autoUpgradeStartTime')
              ? json_['autoUpgradeStartTime'] as core.String
              : null,
          description: json_.containsKey('description')
              ? json_['description'] as core.String
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

  /// Workload policy configuration for Autopilot.
  WorkloadPolicyConfig? workloadPolicyConfig;

  Autopilot({
    this.enabled,
    this.workloadPolicyConfig,
  });

  Autopilot.fromJson(core.Map json_)
      : this(
          enabled: json_.containsKey('enabled')
              ? json_['enabled'] as core.bool
              : null,
          workloadPolicyConfig: json_.containsKey('workloadPolicyConfig')
              ? WorkloadPolicyConfig.fromJson(json_['workloadPolicyConfig']
                  as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (enabled != null) 'enabled': enabled!,
        if (workloadPolicyConfig != null)
          'workloadPolicyConfig': workloadPolicyConfig!,
      };
}

/// AutopilotCompatibilityIssue contains information about a specific
/// compatibility issue with Autopilot mode.
class AutopilotCompatibilityIssue {
  /// The constraint type of the issue.
  core.String? constraintType;

  /// The description of the issue.
  core.String? description;

  /// A URL to a public documnetation, which addresses resolving this issue.
  core.String? documentationUrl;

  /// The incompatibility type of this issue.
  /// Possible string values are:
  /// - "UNSPECIFIED" : Default value, should not be used.
  /// - "INCOMPATIBILITY" : Indicates that the issue is a known incompatibility
  /// between the cluster and Autopilot mode.
  /// - "ADDITIONAL_CONFIG_REQUIRED" : Indicates the issue is an incompatibility
  /// if customers take no further action to resolve.
  /// - "PASSED_WITH_OPTIONAL_CONFIG" : Indicates the issue is not an
  /// incompatibility, but depending on the workloads business logic, there is a
  /// potential that they won't work on Autopilot.
  core.String? incompatibilityType;

  /// The last time when this issue was observed.
  core.String? lastObservation;

  /// The name of the resources which are subject to this issue.
  core.List<core.String>? subjects;

  AutopilotCompatibilityIssue({
    this.constraintType,
    this.description,
    this.documentationUrl,
    this.incompatibilityType,
    this.lastObservation,
    this.subjects,
  });

  AutopilotCompatibilityIssue.fromJson(core.Map json_)
      : this(
          constraintType: json_.containsKey('constraintType')
              ? json_['constraintType'] as core.String
              : null,
          description: json_.containsKey('description')
              ? json_['description'] as core.String
              : null,
          documentationUrl: json_.containsKey('documentationUrl')
              ? json_['documentationUrl'] as core.String
              : null,
          incompatibilityType: json_.containsKey('incompatibilityType')
              ? json_['incompatibilityType'] as core.String
              : null,
          lastObservation: json_.containsKey('lastObservation')
              ? json_['lastObservation'] as core.String
              : null,
          subjects: json_.containsKey('subjects')
              ? (json_['subjects'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (constraintType != null) 'constraintType': constraintType!,
        if (description != null) 'description': description!,
        if (documentationUrl != null) 'documentationUrl': documentationUrl!,
        if (incompatibilityType != null)
          'incompatibilityType': incompatibilityType!,
        if (lastObservation != null) 'lastObservation': lastObservation!,
        if (subjects != null) 'subjects': subjects!,
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
  ///
  /// Please see
  /// https://cloud.google.com/kubernetes-engine/docs/concepts/node-images for
  /// available image types.
  core.String? imageType;

  /// Enable or disable Kubelet read only port.
  core.bool? insecureKubeletReadonlyPortEnabled;

  /// Specifies the node management options for NAP created node-pools.
  NodeManagement? management;

  /// Minimum CPU platform to be used for NAP created node pools.
  ///
  /// The instance may be scheduled on the specified or newer CPU platform.
  /// Applicable values are the friendly names of CPU platforms, such as
  /// minCpuPlatform: Intel Haswell or minCpuPlatform: Intel Sandy Bridge. For
  /// more information, read
  /// [how to specify min CPU platform](https://cloud.google.com/compute/docs/instances/specify-min-cpu-platform).
  /// This field is deprecated, min_cpu_platform should be specified using
  /// `cloud.google.com/requested-min-cpu-platform` label selector on the pod.
  /// To unset the min cpu platform field pass "automatic" as field value.
  ///
  /// Deprecated.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
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
    this.insecureKubeletReadonlyPortEnabled,
    this.management,
    this.minCpuPlatform,
    this.oauthScopes,
    this.serviceAccount,
    this.shieldedInstanceConfig,
    this.upgradeSettings,
  });

  AutoprovisioningNodePoolDefaults.fromJson(core.Map json_)
      : this(
          bootDiskKmsKey: json_.containsKey('bootDiskKmsKey')
              ? json_['bootDiskKmsKey'] as core.String
              : null,
          diskSizeGb: json_.containsKey('diskSizeGb')
              ? json_['diskSizeGb'] as core.int
              : null,
          diskType: json_.containsKey('diskType')
              ? json_['diskType'] as core.String
              : null,
          imageType: json_.containsKey('imageType')
              ? json_['imageType'] as core.String
              : null,
          insecureKubeletReadonlyPortEnabled:
              json_.containsKey('insecureKubeletReadonlyPortEnabled')
                  ? json_['insecureKubeletReadonlyPortEnabled'] as core.bool
                  : null,
          management: json_.containsKey('management')
              ? NodeManagement.fromJson(
                  json_['management'] as core.Map<core.String, core.dynamic>)
              : null,
          minCpuPlatform: json_.containsKey('minCpuPlatform')
              ? json_['minCpuPlatform'] as core.String
              : null,
          oauthScopes: json_.containsKey('oauthScopes')
              ? (json_['oauthScopes'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          serviceAccount: json_.containsKey('serviceAccount')
              ? json_['serviceAccount'] as core.String
              : null,
          shieldedInstanceConfig: json_.containsKey('shieldedInstanceConfig')
              ? ShieldedInstanceConfig.fromJson(json_['shieldedInstanceConfig']
                  as core.Map<core.String, core.dynamic>)
              : null,
          upgradeSettings: json_.containsKey('upgradeSettings')
              ? UpgradeSettings.fromJson(json_['upgradeSettings']
                  as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (bootDiskKmsKey != null) 'bootDiskKmsKey': bootDiskKmsKey!,
        if (diskSizeGb != null) 'diskSizeGb': diskSizeGb!,
        if (diskType != null) 'diskType': diskType!,
        if (imageType != null) 'imageType': imageType!,
        if (insecureKubeletReadonlyPortEnabled != null)
          'insecureKubeletReadonlyPortEnabled':
              insecureKubeletReadonlyPortEnabled!,
        if (management != null) 'management': management!,
        if (minCpuPlatform != null) 'minCpuPlatform': minCpuPlatform!,
        if (oauthScopes != null) 'oauthScopes': oauthScopes!,
        if (serviceAccount != null) 'serviceAccount': serviceAccount!,
        if (shieldedInstanceConfig != null)
          'shieldedInstanceConfig': shieldedInstanceConfig!,
        if (upgradeSettings != null) 'upgradeSettings': upgradeSettings!,
      };
}

/// Best effort provisioning.
class BestEffortProvisioning {
  /// When this is enabled, cluster/node pool creations will ignore non-fatal
  /// errors like stockout to best provision as many nodes as possible right now
  /// and eventually bring up all target number of nodes
  core.bool? enabled;

  /// Minimum number of nodes to be provisioned to be considered as succeeded,
  /// and the rest of nodes will be provisioned gradually and eventually when
  /// stockout issue has been resolved.
  core.int? minProvisionNodes;

  BestEffortProvisioning({
    this.enabled,
    this.minProvisionNodes,
  });

  BestEffortProvisioning.fromJson(core.Map json_)
      : this(
          enabled: json_.containsKey('enabled')
              ? json_['enabled'] as core.bool
              : null,
          minProvisionNodes: json_.containsKey('minProvisionNodes')
              ? json_['minProvisionNodes'] as core.int
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (enabled != null) 'enabled': enabled!,
        if (minProvisionNodes != null) 'minProvisionNodes': minProvisionNodes!,
      };
}

/// Parameters for using BigQuery as the destination of resource usage export.
class BigQueryDestination {
  /// The ID of a BigQuery Dataset.
  core.String? datasetId;

  BigQueryDestination({
    this.datasetId,
  });

  BigQueryDestination.fromJson(core.Map json_)
      : this(
          datasetId: json_.containsKey('datasetId')
              ? json_['datasetId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (datasetId != null) 'datasetId': datasetId!,
      };
}

/// Configuration for Binary Authorization.
class BinaryAuthorization {
  /// This field is deprecated.
  ///
  /// Leave this unset and instead configure BinaryAuthorization using
  /// evaluation_mode. If evaluation_mode is set to anything other than
  /// EVALUATION_MODE_UNSPECIFIED, this field is ignored.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  core.bool? enabled;

  /// Mode of operation for binauthz policy evaluation.
  ///
  /// If unspecified, defaults to DISABLED.
  /// Possible string values are:
  /// - "EVALUATION_MODE_UNSPECIFIED" : Default value
  /// - "DISABLED" : Disable BinaryAuthorization
  /// - "PROJECT_SINGLETON_POLICY_ENFORCE" : Enforce Kubernetes admission
  /// requests with BinaryAuthorization using the project's singleton policy.
  /// This is equivalent to setting the enabled boolean to true.
  core.String? evaluationMode;

  BinaryAuthorization({
    this.enabled,
    this.evaluationMode,
  });

  BinaryAuthorization.fromJson(core.Map json_)
      : this(
          enabled: json_.containsKey('enabled')
              ? json_['enabled'] as core.bool
              : null,
          evaluationMode: json_.containsKey('evaluationMode')
              ? json_['evaluationMode'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (enabled != null) 'enabled': enabled!,
        if (evaluationMode != null) 'evaluationMode': evaluationMode!,
      };
}

/// Information relevant to blue-green upgrade.
class BlueGreenInfo {
  /// The resource URLs of the \[managed instance groups\]
  /// (/compute/docs/instance-groups/creating-groups-of-managed-instances)
  /// associated with blue pool.
  core.List<core.String>? blueInstanceGroupUrls;

  /// Time to start deleting blue pool to complete blue-green upgrade, in
  /// [RFC3339](https://www.ietf.org/rfc/rfc3339.txt) text format.
  core.String? bluePoolDeletionStartTime;

  /// The resource URLs of the \[managed instance groups\]
  /// (/compute/docs/instance-groups/creating-groups-of-managed-instances)
  /// associated with green pool.
  core.List<core.String>? greenInstanceGroupUrls;

  /// Version of green pool.
  core.String? greenPoolVersion;

  /// Current blue-green upgrade phase.
  /// Possible string values are:
  /// - "PHASE_UNSPECIFIED" : Unspecified phase.
  /// - "UPDATE_STARTED" : blue-green upgrade has been initiated.
  /// - "CREATING_GREEN_POOL" : Start creating green pool nodes.
  /// - "CORDONING_BLUE_POOL" : Start cordoning blue pool nodes.
  /// - "DRAINING_BLUE_POOL" : Start draining blue pool nodes.
  /// - "NODE_POOL_SOAKING" : Start soaking time after draining entire blue
  /// pool.
  /// - "DELETING_BLUE_POOL" : Start deleting blue nodes.
  /// - "ROLLBACK_STARTED" : Rollback has been initiated.
  core.String? phase;

  BlueGreenInfo({
    this.blueInstanceGroupUrls,
    this.bluePoolDeletionStartTime,
    this.greenInstanceGroupUrls,
    this.greenPoolVersion,
    this.phase,
  });

  BlueGreenInfo.fromJson(core.Map json_)
      : this(
          blueInstanceGroupUrls: json_.containsKey('blueInstanceGroupUrls')
              ? (json_['blueInstanceGroupUrls'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          bluePoolDeletionStartTime:
              json_.containsKey('bluePoolDeletionStartTime')
                  ? json_['bluePoolDeletionStartTime'] as core.String
                  : null,
          greenInstanceGroupUrls: json_.containsKey('greenInstanceGroupUrls')
              ? (json_['greenInstanceGroupUrls'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          greenPoolVersion: json_.containsKey('greenPoolVersion')
              ? json_['greenPoolVersion'] as core.String
              : null,
          phase:
              json_.containsKey('phase') ? json_['phase'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (blueInstanceGroupUrls != null)
          'blueInstanceGroupUrls': blueInstanceGroupUrls!,
        if (bluePoolDeletionStartTime != null)
          'bluePoolDeletionStartTime': bluePoolDeletionStartTime!,
        if (greenInstanceGroupUrls != null)
          'greenInstanceGroupUrls': greenInstanceGroupUrls!,
        if (greenPoolVersion != null) 'greenPoolVersion': greenPoolVersion!,
        if (phase != null) 'phase': phase!,
      };
}

/// Settings for blue-green upgrade.
class BlueGreenSettings {
  /// Time needed after draining entire blue pool.
  ///
  /// After this period, blue pool will be cleaned up.
  core.String? nodePoolSoakDuration;

  /// Standard policy for the blue-green upgrade.
  StandardRolloutPolicy? standardRolloutPolicy;

  BlueGreenSettings({
    this.nodePoolSoakDuration,
    this.standardRolloutPolicy,
  });

  BlueGreenSettings.fromJson(core.Map json_)
      : this(
          nodePoolSoakDuration: json_.containsKey('nodePoolSoakDuration')
              ? json_['nodePoolSoakDuration'] as core.String
              : null,
          standardRolloutPolicy: json_.containsKey('standardRolloutPolicy')
              ? StandardRolloutPolicy.fromJson(json_['standardRolloutPolicy']
                  as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (nodePoolSoakDuration != null)
          'nodePoolSoakDuration': nodePoolSoakDuration!,
        if (standardRolloutPolicy != null)
          'standardRolloutPolicy': standardRolloutPolicy!,
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
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  core.String? operationId;

  /// The Google Developers Console
  /// [project ID or project number](https://cloud.google.com/resource-manager/docs/creating-managing-projects).
  ///
  /// This field has been deprecated and replaced by the name field.
  ///
  /// Deprecated.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  core.String? projectId;

  /// The name of the Google Compute Engine
  /// [zone](https://cloud.google.com/compute/docs/zones#available) in which the
  /// operation resides.
  ///
  /// This field has been deprecated and replaced by the name field.
  ///
  /// Deprecated.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  core.String? zone;

  CancelOperationRequest({
    this.name,
    this.operationId,
    this.projectId,
    this.zone,
  });

  CancelOperationRequest.fromJson(core.Map json_)
      : this(
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          operationId: json_.containsKey('operationId')
              ? json_['operationId'] as core.String
              : null,
          projectId: json_.containsKey('projectId')
              ? json_['projectId'] as core.String
              : null,
          zone: json_.containsKey('zone') ? json_['zone'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (name != null) 'name': name!,
        if (operationId != null) 'operationId': operationId!,
        if (projectId != null) 'projectId': projectId!,
        if (zone != null) 'zone': zone!,
      };
}

/// CertificateAuthorityDomainConfig configures one or more fully qualified
/// domain names (FQDN) to a specific certificate.
class CertificateAuthorityDomainConfig {
  /// List of fully qualified domain names (FQDN).
  ///
  /// Specifying port is supported. Wilcards are NOT supported. Examples: -
  /// my.customdomain.com - 10.0.1.2:5000
  core.List<core.String>? fqdns;

  /// Google Secret Manager (GCP) certificate configuration.
  GCPSecretManagerCertificateConfig? gcpSecretManagerCertificateConfig;

  CertificateAuthorityDomainConfig({
    this.fqdns,
    this.gcpSecretManagerCertificateConfig,
  });

  CertificateAuthorityDomainConfig.fromJson(core.Map json_)
      : this(
          fqdns: json_.containsKey('fqdns')
              ? (json_['fqdns'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          gcpSecretManagerCertificateConfig:
              json_.containsKey('gcpSecretManagerCertificateConfig')
                  ? GCPSecretManagerCertificateConfig.fromJson(
                      json_['gcpSecretManagerCertificateConfig']
                          as core.Map<core.String, core.dynamic>)
                  : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (fqdns != null) 'fqdns': fqdns!,
        if (gcpSecretManagerCertificateConfig != null)
          'gcpSecretManagerCertificateConfig':
              gcpSecretManagerCertificateConfig!,
      };
}

/// CheckAutopilotCompatibilityResponse has a list of compatibility issues.
class CheckAutopilotCompatibilityResponse {
  /// The list of issues for the given operation.
  core.List<AutopilotCompatibilityIssue>? issues;

  /// The summary of the autopilot compatibility response.
  core.String? summary;

  CheckAutopilotCompatibilityResponse({
    this.issues,
    this.summary,
  });

  CheckAutopilotCompatibilityResponse.fromJson(core.Map json_)
      : this(
          issues: json_.containsKey('issues')
              ? (json_['issues'] as core.List)
                  .map((value) => AutopilotCompatibilityIssue.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          summary: json_.containsKey('summary')
              ? json_['summary'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (issues != null) 'issues': issues!,
        if (summary != null) 'summary': summary!,
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

  CidrBlock.fromJson(core.Map json_)
      : this(
          cidrBlock: json_.containsKey('cidrBlock')
              ? json_['cidrBlock'] as core.String
              : null,
          displayName: json_.containsKey('displayName')
              ? json_['displayName'] as core.String
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

  ClientCertificateConfig.fromJson(core.Map json_)
      : this(
          issueClientCertificate: json_.containsKey('issueClientCertificate')
              ? json_['issueClientCertificate'] as core.bool
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

  CloudRunConfig.fromJson(core.Map json_)
      : this(
          disabled: json_.containsKey('disabled')
              ? json_['disabled'] as core.bool
              : null,
          loadBalancerType: json_.containsKey('loadBalancerType')
              ? json_['loadBalancerType'] as core.String
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

  /// Configuration for the fine-grained cost management feature.
  CostManagementConfig? costManagementConfig;

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
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
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
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
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

  /// Beta APIs Config
  K8sBetaAPIConfig? enableK8sBetaApis;

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

  /// GKE Enterprise Configuration.
  EnterpriseConfig? enterpriseConfig;

  /// This checksum is computed by the server based on the value of cluster
  /// fields, and may be sent on update requests to ensure the client has an
  /// up-to-date value before proceeding.
  core.String? etag;

  /// The time the cluster will be automatically deleted in
  /// [RFC3339](https://www.ietf.org/rfc/rfc3339.txt) text format.
  ///
  /// Output only.
  core.String? expireTime;

  /// Fleet information for the cluster.
  Fleet? fleet;

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
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  core.int? initialNodeCount;

  /// Use node_pools.instance_group_urls.
  ///
  /// Deprecated.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
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
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
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

  /// The configuration of the parent product of the cluster.
  ///
  /// This field is used by Google internal products that are built on top of
  /// the GKE cluster and take the ownership of the cluster.
  ParentProductConfig? parentProductConfig;

  /// Configuration for private cluster.
  PrivateClusterConfig? privateClusterConfig;

  /// Release channel configuration.
  ///
  /// If left unspecified on cluster creation and a version is specified, the
  /// cluster is enrolled in the most mature release channel where the version
  /// is available (first checking STABLE, then REGULAR, and finally RAPID).
  /// Otherwise, if no release channel configuration and no version is
  /// specified, the cluster is enrolled in the REGULAR channel with its default
  /// version.
  ReleaseChannel? releaseChannel;

  /// The resource labels for the cluster to use to annotate any related Google
  /// Compute Engine resources.
  core.Map<core.String, core.String>? resourceLabels;

  /// Configuration for exporting resource usages.
  ///
  /// Resource usage export is disabled when this config is unspecified.
  ResourceUsageExportConfig? resourceUsageExportConfig;

  /// Enable/Disable Security Posture API features for the cluster.
  SecurityPostureConfig? securityPostureConfig;

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
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
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
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
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
    this.costManagementConfig,
    this.createTime,
    this.currentMasterVersion,
    this.currentNodeCount,
    this.currentNodeVersion,
    this.databaseEncryption,
    this.defaultMaxPodsConstraint,
    this.description,
    this.enableK8sBetaApis,
    this.enableKubernetesAlpha,
    this.enableTpu,
    this.endpoint,
    this.enterpriseConfig,
    this.etag,
    this.expireTime,
    this.fleet,
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
    this.parentProductConfig,
    this.privateClusterConfig,
    this.releaseChannel,
    this.resourceLabels,
    this.resourceUsageExportConfig,
    this.securityPostureConfig,
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

  Cluster.fromJson(core.Map json_)
      : this(
          addonsConfig: json_.containsKey('addonsConfig')
              ? AddonsConfig.fromJson(
                  json_['addonsConfig'] as core.Map<core.String, core.dynamic>)
              : null,
          authenticatorGroupsConfig:
              json_.containsKey('authenticatorGroupsConfig')
                  ? AuthenticatorGroupsConfig.fromJson(
                      json_['authenticatorGroupsConfig']
                          as core.Map<core.String, core.dynamic>)
                  : null,
          autopilot: json_.containsKey('autopilot')
              ? Autopilot.fromJson(
                  json_['autopilot'] as core.Map<core.String, core.dynamic>)
              : null,
          autoscaling: json_.containsKey('autoscaling')
              ? ClusterAutoscaling.fromJson(
                  json_['autoscaling'] as core.Map<core.String, core.dynamic>)
              : null,
          binaryAuthorization: json_.containsKey('binaryAuthorization')
              ? BinaryAuthorization.fromJson(json_['binaryAuthorization']
                  as core.Map<core.String, core.dynamic>)
              : null,
          clusterIpv4Cidr: json_.containsKey('clusterIpv4Cidr')
              ? json_['clusterIpv4Cidr'] as core.String
              : null,
          conditions: json_.containsKey('conditions')
              ? (json_['conditions'] as core.List)
                  .map((value) => StatusCondition.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          confidentialNodes: json_.containsKey('confidentialNodes')
              ? ConfidentialNodes.fromJson(json_['confidentialNodes']
                  as core.Map<core.String, core.dynamic>)
              : null,
          costManagementConfig: json_.containsKey('costManagementConfig')
              ? CostManagementConfig.fromJson(json_['costManagementConfig']
                  as core.Map<core.String, core.dynamic>)
              : null,
          createTime: json_.containsKey('createTime')
              ? json_['createTime'] as core.String
              : null,
          currentMasterVersion: json_.containsKey('currentMasterVersion')
              ? json_['currentMasterVersion'] as core.String
              : null,
          currentNodeCount: json_.containsKey('currentNodeCount')
              ? json_['currentNodeCount'] as core.int
              : null,
          currentNodeVersion: json_.containsKey('currentNodeVersion')
              ? json_['currentNodeVersion'] as core.String
              : null,
          databaseEncryption: json_.containsKey('databaseEncryption')
              ? DatabaseEncryption.fromJson(json_['databaseEncryption']
                  as core.Map<core.String, core.dynamic>)
              : null,
          defaultMaxPodsConstraint:
              json_.containsKey('defaultMaxPodsConstraint')
                  ? MaxPodsConstraint.fromJson(json_['defaultMaxPodsConstraint']
                      as core.Map<core.String, core.dynamic>)
                  : null,
          description: json_.containsKey('description')
              ? json_['description'] as core.String
              : null,
          enableK8sBetaApis: json_.containsKey('enableK8sBetaApis')
              ? K8sBetaAPIConfig.fromJson(json_['enableK8sBetaApis']
                  as core.Map<core.String, core.dynamic>)
              : null,
          enableKubernetesAlpha: json_.containsKey('enableKubernetesAlpha')
              ? json_['enableKubernetesAlpha'] as core.bool
              : null,
          enableTpu: json_.containsKey('enableTpu')
              ? json_['enableTpu'] as core.bool
              : null,
          endpoint: json_.containsKey('endpoint')
              ? json_['endpoint'] as core.String
              : null,
          enterpriseConfig: json_.containsKey('enterpriseConfig')
              ? EnterpriseConfig.fromJson(json_['enterpriseConfig']
                  as core.Map<core.String, core.dynamic>)
              : null,
          etag: json_.containsKey('etag') ? json_['etag'] as core.String : null,
          expireTime: json_.containsKey('expireTime')
              ? json_['expireTime'] as core.String
              : null,
          fleet: json_.containsKey('fleet')
              ? Fleet.fromJson(
                  json_['fleet'] as core.Map<core.String, core.dynamic>)
              : null,
          id: json_.containsKey('id') ? json_['id'] as core.String : null,
          identityServiceConfig: json_.containsKey('identityServiceConfig')
              ? IdentityServiceConfig.fromJson(json_['identityServiceConfig']
                  as core.Map<core.String, core.dynamic>)
              : null,
          initialClusterVersion: json_.containsKey('initialClusterVersion')
              ? json_['initialClusterVersion'] as core.String
              : null,
          initialNodeCount: json_.containsKey('initialNodeCount')
              ? json_['initialNodeCount'] as core.int
              : null,
          instanceGroupUrls: json_.containsKey('instanceGroupUrls')
              ? (json_['instanceGroupUrls'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          ipAllocationPolicy: json_.containsKey('ipAllocationPolicy')
              ? IPAllocationPolicy.fromJson(json_['ipAllocationPolicy']
                  as core.Map<core.String, core.dynamic>)
              : null,
          labelFingerprint: json_.containsKey('labelFingerprint')
              ? json_['labelFingerprint'] as core.String
              : null,
          legacyAbac: json_.containsKey('legacyAbac')
              ? LegacyAbac.fromJson(
                  json_['legacyAbac'] as core.Map<core.String, core.dynamic>)
              : null,
          location: json_.containsKey('location')
              ? json_['location'] as core.String
              : null,
          locations: json_.containsKey('locations')
              ? (json_['locations'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          loggingConfig: json_.containsKey('loggingConfig')
              ? LoggingConfig.fromJson(
                  json_['loggingConfig'] as core.Map<core.String, core.dynamic>)
              : null,
          loggingService: json_.containsKey('loggingService')
              ? json_['loggingService'] as core.String
              : null,
          maintenancePolicy: json_.containsKey('maintenancePolicy')
              ? MaintenancePolicy.fromJson(json_['maintenancePolicy']
                  as core.Map<core.String, core.dynamic>)
              : null,
          masterAuth: json_.containsKey('masterAuth')
              ? MasterAuth.fromJson(
                  json_['masterAuth'] as core.Map<core.String, core.dynamic>)
              : null,
          masterAuthorizedNetworksConfig:
              json_.containsKey('masterAuthorizedNetworksConfig')
                  ? MasterAuthorizedNetworksConfig.fromJson(
                      json_['masterAuthorizedNetworksConfig']
                          as core.Map<core.String, core.dynamic>)
                  : null,
          meshCertificates: json_.containsKey('meshCertificates')
              ? MeshCertificates.fromJson(json_['meshCertificates']
                  as core.Map<core.String, core.dynamic>)
              : null,
          monitoringConfig: json_.containsKey('monitoringConfig')
              ? MonitoringConfig.fromJson(json_['monitoringConfig']
                  as core.Map<core.String, core.dynamic>)
              : null,
          monitoringService: json_.containsKey('monitoringService')
              ? json_['monitoringService'] as core.String
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          network: json_.containsKey('network')
              ? json_['network'] as core.String
              : null,
          networkConfig: json_.containsKey('networkConfig')
              ? NetworkConfig.fromJson(
                  json_['networkConfig'] as core.Map<core.String, core.dynamic>)
              : null,
          networkPolicy: json_.containsKey('networkPolicy')
              ? NetworkPolicy.fromJson(
                  json_['networkPolicy'] as core.Map<core.String, core.dynamic>)
              : null,
          nodeConfig: json_.containsKey('nodeConfig')
              ? NodeConfig.fromJson(
                  json_['nodeConfig'] as core.Map<core.String, core.dynamic>)
              : null,
          nodeIpv4CidrSize: json_.containsKey('nodeIpv4CidrSize')
              ? json_['nodeIpv4CidrSize'] as core.int
              : null,
          nodePoolAutoConfig: json_.containsKey('nodePoolAutoConfig')
              ? NodePoolAutoConfig.fromJson(json_['nodePoolAutoConfig']
                  as core.Map<core.String, core.dynamic>)
              : null,
          nodePoolDefaults: json_.containsKey('nodePoolDefaults')
              ? NodePoolDefaults.fromJson(json_['nodePoolDefaults']
                  as core.Map<core.String, core.dynamic>)
              : null,
          nodePools: json_.containsKey('nodePools')
              ? (json_['nodePools'] as core.List)
                  .map((value) => NodePool.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          notificationConfig: json_.containsKey('notificationConfig')
              ? NotificationConfig.fromJson(json_['notificationConfig']
                  as core.Map<core.String, core.dynamic>)
              : null,
          parentProductConfig: json_.containsKey('parentProductConfig')
              ? ParentProductConfig.fromJson(json_['parentProductConfig']
                  as core.Map<core.String, core.dynamic>)
              : null,
          privateClusterConfig: json_.containsKey('privateClusterConfig')
              ? PrivateClusterConfig.fromJson(json_['privateClusterConfig']
                  as core.Map<core.String, core.dynamic>)
              : null,
          releaseChannel: json_.containsKey('releaseChannel')
              ? ReleaseChannel.fromJson(json_['releaseChannel']
                  as core.Map<core.String, core.dynamic>)
              : null,
          resourceLabels: json_.containsKey('resourceLabels')
              ? (json_['resourceLabels'] as core.Map<core.String, core.dynamic>)
                  .map(
                  (key, value) => core.MapEntry(
                    key,
                    value as core.String,
                  ),
                )
              : null,
          resourceUsageExportConfig:
              json_.containsKey('resourceUsageExportConfig')
                  ? ResourceUsageExportConfig.fromJson(
                      json_['resourceUsageExportConfig']
                          as core.Map<core.String, core.dynamic>)
                  : null,
          securityPostureConfig: json_.containsKey('securityPostureConfig')
              ? SecurityPostureConfig.fromJson(json_['securityPostureConfig']
                  as core.Map<core.String, core.dynamic>)
              : null,
          selfLink: json_.containsKey('selfLink')
              ? json_['selfLink'] as core.String
              : null,
          servicesIpv4Cidr: json_.containsKey('servicesIpv4Cidr')
              ? json_['servicesIpv4Cidr'] as core.String
              : null,
          shieldedNodes: json_.containsKey('shieldedNodes')
              ? ShieldedNodes.fromJson(
                  json_['shieldedNodes'] as core.Map<core.String, core.dynamic>)
              : null,
          status: json_.containsKey('status')
              ? json_['status'] as core.String
              : null,
          statusMessage: json_.containsKey('statusMessage')
              ? json_['statusMessage'] as core.String
              : null,
          subnetwork: json_.containsKey('subnetwork')
              ? json_['subnetwork'] as core.String
              : null,
          tpuIpv4CidrBlock: json_.containsKey('tpuIpv4CidrBlock')
              ? json_['tpuIpv4CidrBlock'] as core.String
              : null,
          verticalPodAutoscaling: json_.containsKey('verticalPodAutoscaling')
              ? VerticalPodAutoscaling.fromJson(json_['verticalPodAutoscaling']
                  as core.Map<core.String, core.dynamic>)
              : null,
          workloadIdentityConfig: json_.containsKey('workloadIdentityConfig')
              ? WorkloadIdentityConfig.fromJson(json_['workloadIdentityConfig']
                  as core.Map<core.String, core.dynamic>)
              : null,
          zone: json_.containsKey('zone') ? json_['zone'] as core.String : null,
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
        if (costManagementConfig != null)
          'costManagementConfig': costManagementConfig!,
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
        if (enableK8sBetaApis != null) 'enableK8sBetaApis': enableK8sBetaApis!,
        if (enableKubernetesAlpha != null)
          'enableKubernetesAlpha': enableKubernetesAlpha!,
        if (enableTpu != null) 'enableTpu': enableTpu!,
        if (endpoint != null) 'endpoint': endpoint!,
        if (enterpriseConfig != null) 'enterpriseConfig': enterpriseConfig!,
        if (etag != null) 'etag': etag!,
        if (expireTime != null) 'expireTime': expireTime!,
        if (fleet != null) 'fleet': fleet!,
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
        if (parentProductConfig != null)
          'parentProductConfig': parentProductConfig!,
        if (privateClusterConfig != null)
          'privateClusterConfig': privateClusterConfig!,
        if (releaseChannel != null) 'releaseChannel': releaseChannel!,
        if (resourceLabels != null) 'resourceLabels': resourceLabels!,
        if (resourceUsageExportConfig != null)
          'resourceUsageExportConfig': resourceUsageExportConfig!,
        if (securityPostureConfig != null)
          'securityPostureConfig': securityPostureConfig!,
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

  ClusterAutoscaling.fromJson(core.Map json_)
      : this(
          autoprovisioningLocations:
              json_.containsKey('autoprovisioningLocations')
                  ? (json_['autoprovisioningLocations'] as core.List)
                      .map((value) => value as core.String)
                      .toList()
                  : null,
          autoprovisioningNodePoolDefaults:
              json_.containsKey('autoprovisioningNodePoolDefaults')
                  ? AutoprovisioningNodePoolDefaults.fromJson(
                      json_['autoprovisioningNodePoolDefaults']
                          as core.Map<core.String, core.dynamic>)
                  : null,
          autoscalingProfile: json_.containsKey('autoscalingProfile')
              ? json_['autoscalingProfile'] as core.String
              : null,
          enableNodeAutoprovisioning:
              json_.containsKey('enableNodeAutoprovisioning')
                  ? json_['enableNodeAutoprovisioning'] as core.bool
                  : null,
          resourceLimits: json_.containsKey('resourceLimits')
              ? (json_['resourceLimits'] as core.List)
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

/// Configuration of network bandwidth tiers
class ClusterNetworkPerformanceConfig {
  /// Specifies the total network bandwidth tier for NodePools in the cluster.
  /// Possible string values are:
  /// - "TIER_UNSPECIFIED" : Default value
  /// - "TIER_1" : Higher bandwidth, actual values based on VM size.
  core.String? totalEgressBandwidthTier;

  ClusterNetworkPerformanceConfig({
    this.totalEgressBandwidthTier,
  });

  ClusterNetworkPerformanceConfig.fromJson(core.Map json_)
      : this(
          totalEgressBandwidthTier:
              json_.containsKey('totalEgressBandwidthTier')
                  ? json_['totalEgressBandwidthTier'] as core.String
                  : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (totalEgressBandwidthTier != null)
          'totalEgressBandwidthTier': totalEgressBandwidthTier!,
      };
}

/// ClusterUpdate describes an update to the cluster.
///
/// Exactly one update can be applied to a cluster with each request, so at most
/// one field can be provided.
class ClusterUpdate {
  /// The additional pod ranges to be added to the cluster.
  ///
  /// These pod ranges can be used by node pools to allocate pod IPs.
  AdditionalPodRangesConfig? additionalPodRangesConfig;

  /// Configurations for the various addons available to run in the cluster.
  AddonsConfig? desiredAddonsConfig;

  /// The desired authenticator groups config for the cluster.
  AuthenticatorGroupsConfig? desiredAuthenticatorGroupsConfig;

  /// The desired workload policy configuration for the autopilot cluster.
  WorkloadPolicyConfig? desiredAutopilotWorkloadPolicyConfig;

  /// The desired configuration options for the Binary Authorization feature.
  BinaryAuthorization? desiredBinaryAuthorization;

  /// Cluster-level autoscaling configuration.
  ClusterAutoscaling? desiredClusterAutoscaling;

  /// The desired containerd config for the cluster.
  ContainerdConfig? desiredContainerdConfig;

  /// The desired configuration for the fine-grained cost management feature.
  CostManagementConfig? desiredCostManagementConfig;

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

  /// Enable/Disable Cilium Clusterwide Network Policy for the cluster.
  core.bool? desiredEnableCiliumClusterwideNetworkPolicy;

  /// Enable/Disable FQDN Network Policy for the cluster.
  core.bool? desiredEnableFqdnNetworkPolicy;

  /// Enable/Disable Multi-Networking for the cluster
  core.bool? desiredEnableMultiNetworking;

  /// Enable/Disable private endpoint for the cluster's master.
  core.bool? desiredEnablePrivateEndpoint;

  /// The desired fleet configuration for the cluster.
  Fleet? desiredFleet;

  /// The desired config of Gateway API on this cluster.
  GatewayAPIConfig? desiredGatewayApiConfig;

  /// The desired GCFS config for the cluster
  GcfsConfig? desiredGcfsConfig;

  /// The desired Identity Service component configuration.
  IdentityServiceConfig? desiredIdentityServiceConfig;

  /// The desired image type for the node pool.
  ///
  /// NOTE: Set the "desired_node_pool" field as well.
  core.String? desiredImageType;

  /// Specify the details of in-transit encryption.
  /// Possible string values are:
  /// - "IN_TRANSIT_ENCRYPTION_CONFIG_UNSPECIFIED" : Unspecified, will be
  /// inferred as default - IN_TRANSIT_ENCRYPTION_UNSPECIFIED.
  /// - "IN_TRANSIT_ENCRYPTION_DISABLED" : In-transit encryption is disabled.
  /// - "IN_TRANSIT_ENCRYPTION_INTER_NODE_TRANSPARENT" : Data in-transit is
  /// encrypted using inter-node transparent encryption.
  core.String? desiredInTransitEncryptionConfig;

  /// The desired config of Intra-node visibility.
  IntraNodeVisibilityConfig? desiredIntraNodeVisibilityConfig;

  /// Desired Beta APIs to be enabled for cluster.
  K8sBetaAPIConfig? desiredK8sBetaApis;

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

  /// The desired network performance config.
  ClusterNetworkPerformanceConfig? desiredNetworkPerformanceConfig;

  /// The desired network tags that apply to all auto-provisioned node pools in
  /// autopilot clusters and node auto-provisioning enabled clusters.
  NetworkTags? desiredNodePoolAutoConfigNetworkTags;

  /// The desired resource manager tags that apply to all auto-provisioned node
  /// pools in autopilot clusters and node auto-provisioning enabled clusters.
  ResourceManagerTags? desiredNodePoolAutoConfigResourceManagerTags;

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

  /// The desired node pool logging configuration defaults for the cluster.
  NodePoolLoggingConfig? desiredNodePoolLoggingConfig;

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

  /// The desired parent product config for the cluster.
  ParentProductConfig? desiredParentProductConfig;

  /// The desired private cluster configuration.
  ///
  /// master_global_access_config is the only field that can be changed via this
  /// field. See also ClusterUpdate.desired_enable_private_endpoint for
  /// modifying other fields within PrivateClusterConfig.
  PrivateClusterConfig? desiredPrivateClusterConfig;

  /// The desired state of IPv6 connectivity to Google Services.
  /// Possible string values are:
  /// - "PRIVATE_IPV6_GOOGLE_ACCESS_UNSPECIFIED" : Default value. Same as
  /// DISABLED
  /// - "PRIVATE_IPV6_GOOGLE_ACCESS_DISABLED" : No private access to or from
  /// Google Services
  /// - "PRIVATE_IPV6_GOOGLE_ACCESS_TO_GOOGLE" : Enables private IPv6 access to
  /// Google Services from GKE
  /// - "PRIVATE_IPV6_GOOGLE_ACCESS_BIDIRECTIONAL" : Enables private IPv6 access
  /// to and from Google Services
  core.String? desiredPrivateIpv6GoogleAccess;

  /// The desired release channel configuration.
  ReleaseChannel? desiredReleaseChannel;

  /// The desired configuration for exporting resource usage.
  ResourceUsageExportConfig? desiredResourceUsageExportConfig;

  /// Enable/Disable Security Posture API features for the cluster.
  SecurityPostureConfig? desiredSecurityPostureConfig;

  /// ServiceExternalIPsConfig specifies the config for the use of Services with
  /// ExternalIPs field.
  ServiceExternalIPsConfig? desiredServiceExternalIpsConfig;

  /// Configuration for Shielded Nodes.
  ShieldedNodes? desiredShieldedNodes;

  /// The desired stack type of the cluster.
  ///
  /// If a stack type is provided and does not match the current stack type of
  /// the cluster, update will attempt to change the stack type to the new type.
  /// Possible string values are:
  /// - "STACK_TYPE_UNSPECIFIED" : Default value, will be defaulted as IPV4 only
  /// - "IPV4" : Cluster is IPV4 only
  /// - "IPV4_IPV6" : Cluster can use both IPv4 and IPv6
  core.String? desiredStackType;

  /// Cluster-level Vertical Pod Autoscaling configuration.
  VerticalPodAutoscaling? desiredVerticalPodAutoscaling;

  /// Configuration for Workload Identity.
  WorkloadIdentityConfig? desiredWorkloadIdentityConfig;

  /// Kubernetes open source beta apis enabled on the cluster.
  ///
  /// Only beta apis
  K8sBetaAPIConfig? enableK8sBetaApis;

  /// The current etag of the cluster.
  ///
  /// If an etag is provided and does not match the current etag of the cluster,
  /// update will be blocked and an ABORTED error will be returned.
  core.String? etag;

  /// The additional pod ranges that are to be removed from the cluster.
  ///
  /// The pod ranges specified here must have been specified earlier in the
  /// 'additional_pod_ranges_config' argument.
  AdditionalPodRangesConfig? removedAdditionalPodRangesConfig;

  ClusterUpdate({
    this.additionalPodRangesConfig,
    this.desiredAddonsConfig,
    this.desiredAuthenticatorGroupsConfig,
    this.desiredAutopilotWorkloadPolicyConfig,
    this.desiredBinaryAuthorization,
    this.desiredClusterAutoscaling,
    this.desiredContainerdConfig,
    this.desiredCostManagementConfig,
    this.desiredDatabaseEncryption,
    this.desiredDatapathProvider,
    this.desiredDefaultSnatStatus,
    this.desiredDnsConfig,
    this.desiredEnableCiliumClusterwideNetworkPolicy,
    this.desiredEnableFqdnNetworkPolicy,
    this.desiredEnableMultiNetworking,
    this.desiredEnablePrivateEndpoint,
    this.desiredFleet,
    this.desiredGatewayApiConfig,
    this.desiredGcfsConfig,
    this.desiredIdentityServiceConfig,
    this.desiredImageType,
    this.desiredInTransitEncryptionConfig,
    this.desiredIntraNodeVisibilityConfig,
    this.desiredK8sBetaApis,
    this.desiredL4ilbSubsettingConfig,
    this.desiredLocations,
    this.desiredLoggingConfig,
    this.desiredLoggingService,
    this.desiredMasterAuthorizedNetworksConfig,
    this.desiredMasterVersion,
    this.desiredMeshCertificates,
    this.desiredMonitoringConfig,
    this.desiredMonitoringService,
    this.desiredNetworkPerformanceConfig,
    this.desiredNodePoolAutoConfigNetworkTags,
    this.desiredNodePoolAutoConfigResourceManagerTags,
    this.desiredNodePoolAutoscaling,
    this.desiredNodePoolId,
    this.desiredNodePoolLoggingConfig,
    this.desiredNodeVersion,
    this.desiredNotificationConfig,
    this.desiredParentProductConfig,
    this.desiredPrivateClusterConfig,
    this.desiredPrivateIpv6GoogleAccess,
    this.desiredReleaseChannel,
    this.desiredResourceUsageExportConfig,
    this.desiredSecurityPostureConfig,
    this.desiredServiceExternalIpsConfig,
    this.desiredShieldedNodes,
    this.desiredStackType,
    this.desiredVerticalPodAutoscaling,
    this.desiredWorkloadIdentityConfig,
    this.enableK8sBetaApis,
    this.etag,
    this.removedAdditionalPodRangesConfig,
  });

  ClusterUpdate.fromJson(core.Map json_)
      : this(
          additionalPodRangesConfig:
              json_.containsKey('additionalPodRangesConfig')
                  ? AdditionalPodRangesConfig.fromJson(
                      json_['additionalPodRangesConfig']
                          as core.Map<core.String, core.dynamic>)
                  : null,
          desiredAddonsConfig: json_.containsKey('desiredAddonsConfig')
              ? AddonsConfig.fromJson(json_['desiredAddonsConfig']
                  as core.Map<core.String, core.dynamic>)
              : null,
          desiredAuthenticatorGroupsConfig:
              json_.containsKey('desiredAuthenticatorGroupsConfig')
                  ? AuthenticatorGroupsConfig.fromJson(
                      json_['desiredAuthenticatorGroupsConfig']
                          as core.Map<core.String, core.dynamic>)
                  : null,
          desiredAutopilotWorkloadPolicyConfig:
              json_.containsKey('desiredAutopilotWorkloadPolicyConfig')
                  ? WorkloadPolicyConfig.fromJson(
                      json_['desiredAutopilotWorkloadPolicyConfig']
                          as core.Map<core.String, core.dynamic>)
                  : null,
          desiredBinaryAuthorization: json_
                  .containsKey('desiredBinaryAuthorization')
              ? BinaryAuthorization.fromJson(json_['desiredBinaryAuthorization']
                  as core.Map<core.String, core.dynamic>)
              : null,
          desiredClusterAutoscaling: json_
                  .containsKey('desiredClusterAutoscaling')
              ? ClusterAutoscaling.fromJson(json_['desiredClusterAutoscaling']
                  as core.Map<core.String, core.dynamic>)
              : null,
          desiredContainerdConfig: json_.containsKey('desiredContainerdConfig')
              ? ContainerdConfig.fromJson(json_['desiredContainerdConfig']
                  as core.Map<core.String, core.dynamic>)
              : null,
          desiredCostManagementConfig:
              json_.containsKey('desiredCostManagementConfig')
                  ? CostManagementConfig.fromJson(
                      json_['desiredCostManagementConfig']
                          as core.Map<core.String, core.dynamic>)
                  : null,
          desiredDatabaseEncryption: json_
                  .containsKey('desiredDatabaseEncryption')
              ? DatabaseEncryption.fromJson(json_['desiredDatabaseEncryption']
                  as core.Map<core.String, core.dynamic>)
              : null,
          desiredDatapathProvider: json_.containsKey('desiredDatapathProvider')
              ? json_['desiredDatapathProvider'] as core.String
              : null,
          desiredDefaultSnatStatus:
              json_.containsKey('desiredDefaultSnatStatus')
                  ? DefaultSnatStatus.fromJson(json_['desiredDefaultSnatStatus']
                      as core.Map<core.String, core.dynamic>)
                  : null,
          desiredDnsConfig: json_.containsKey('desiredDnsConfig')
              ? DNSConfig.fromJson(json_['desiredDnsConfig']
                  as core.Map<core.String, core.dynamic>)
              : null,
          desiredEnableCiliumClusterwideNetworkPolicy:
              json_.containsKey('desiredEnableCiliumClusterwideNetworkPolicy')
                  ? json_['desiredEnableCiliumClusterwideNetworkPolicy']
                      as core.bool
                  : null,
          desiredEnableFqdnNetworkPolicy:
              json_.containsKey('desiredEnableFqdnNetworkPolicy')
                  ? json_['desiredEnableFqdnNetworkPolicy'] as core.bool
                  : null,
          desiredEnableMultiNetworking:
              json_.containsKey('desiredEnableMultiNetworking')
                  ? json_['desiredEnableMultiNetworking'] as core.bool
                  : null,
          desiredEnablePrivateEndpoint:
              json_.containsKey('desiredEnablePrivateEndpoint')
                  ? json_['desiredEnablePrivateEndpoint'] as core.bool
                  : null,
          desiredFleet: json_.containsKey('desiredFleet')
              ? Fleet.fromJson(
                  json_['desiredFleet'] as core.Map<core.String, core.dynamic>)
              : null,
          desiredGatewayApiConfig: json_.containsKey('desiredGatewayApiConfig')
              ? GatewayAPIConfig.fromJson(json_['desiredGatewayApiConfig']
                  as core.Map<core.String, core.dynamic>)
              : null,
          desiredGcfsConfig: json_.containsKey('desiredGcfsConfig')
              ? GcfsConfig.fromJson(json_['desiredGcfsConfig']
                  as core.Map<core.String, core.dynamic>)
              : null,
          desiredIdentityServiceConfig:
              json_.containsKey('desiredIdentityServiceConfig')
                  ? IdentityServiceConfig.fromJson(
                      json_['desiredIdentityServiceConfig']
                          as core.Map<core.String, core.dynamic>)
                  : null,
          desiredImageType: json_.containsKey('desiredImageType')
              ? json_['desiredImageType'] as core.String
              : null,
          desiredInTransitEncryptionConfig:
              json_.containsKey('desiredInTransitEncryptionConfig')
                  ? json_['desiredInTransitEncryptionConfig'] as core.String
                  : null,
          desiredIntraNodeVisibilityConfig:
              json_.containsKey('desiredIntraNodeVisibilityConfig')
                  ? IntraNodeVisibilityConfig.fromJson(
                      json_['desiredIntraNodeVisibilityConfig']
                          as core.Map<core.String, core.dynamic>)
                  : null,
          desiredK8sBetaApis: json_.containsKey('desiredK8sBetaApis')
              ? K8sBetaAPIConfig.fromJson(json_['desiredK8sBetaApis']
                  as core.Map<core.String, core.dynamic>)
              : null,
          desiredL4ilbSubsettingConfig:
              json_.containsKey('desiredL4ilbSubsettingConfig')
                  ? ILBSubsettingConfig.fromJson(
                      json_['desiredL4ilbSubsettingConfig']
                          as core.Map<core.String, core.dynamic>)
                  : null,
          desiredLocations: json_.containsKey('desiredLocations')
              ? (json_['desiredLocations'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          desiredLoggingConfig: json_.containsKey('desiredLoggingConfig')
              ? LoggingConfig.fromJson(json_['desiredLoggingConfig']
                  as core.Map<core.String, core.dynamic>)
              : null,
          desiredLoggingService: json_.containsKey('desiredLoggingService')
              ? json_['desiredLoggingService'] as core.String
              : null,
          desiredMasterAuthorizedNetworksConfig:
              json_.containsKey('desiredMasterAuthorizedNetworksConfig')
                  ? MasterAuthorizedNetworksConfig.fromJson(
                      json_['desiredMasterAuthorizedNetworksConfig']
                          as core.Map<core.String, core.dynamic>)
                  : null,
          desiredMasterVersion: json_.containsKey('desiredMasterVersion')
              ? json_['desiredMasterVersion'] as core.String
              : null,
          desiredMeshCertificates: json_.containsKey('desiredMeshCertificates')
              ? MeshCertificates.fromJson(json_['desiredMeshCertificates']
                  as core.Map<core.String, core.dynamic>)
              : null,
          desiredMonitoringConfig: json_.containsKey('desiredMonitoringConfig')
              ? MonitoringConfig.fromJson(json_['desiredMonitoringConfig']
                  as core.Map<core.String, core.dynamic>)
              : null,
          desiredMonitoringService:
              json_.containsKey('desiredMonitoringService')
                  ? json_['desiredMonitoringService'] as core.String
                  : null,
          desiredNetworkPerformanceConfig:
              json_.containsKey('desiredNetworkPerformanceConfig')
                  ? ClusterNetworkPerformanceConfig.fromJson(
                      json_['desiredNetworkPerformanceConfig']
                          as core.Map<core.String, core.dynamic>)
                  : null,
          desiredNodePoolAutoConfigNetworkTags:
              json_.containsKey('desiredNodePoolAutoConfigNetworkTags')
                  ? NetworkTags.fromJson(
                      json_['desiredNodePoolAutoConfigNetworkTags']
                          as core.Map<core.String, core.dynamic>)
                  : null,
          desiredNodePoolAutoConfigResourceManagerTags:
              json_.containsKey('desiredNodePoolAutoConfigResourceManagerTags')
                  ? ResourceManagerTags.fromJson(
                      json_['desiredNodePoolAutoConfigResourceManagerTags']
                          as core.Map<core.String, core.dynamic>)
                  : null,
          desiredNodePoolAutoscaling: json_
                  .containsKey('desiredNodePoolAutoscaling')
              ? NodePoolAutoscaling.fromJson(json_['desiredNodePoolAutoscaling']
                  as core.Map<core.String, core.dynamic>)
              : null,
          desiredNodePoolId: json_.containsKey('desiredNodePoolId')
              ? json_['desiredNodePoolId'] as core.String
              : null,
          desiredNodePoolLoggingConfig:
              json_.containsKey('desiredNodePoolLoggingConfig')
                  ? NodePoolLoggingConfig.fromJson(
                      json_['desiredNodePoolLoggingConfig']
                          as core.Map<core.String, core.dynamic>)
                  : null,
          desiredNodeVersion: json_.containsKey('desiredNodeVersion')
              ? json_['desiredNodeVersion'] as core.String
              : null,
          desiredNotificationConfig: json_
                  .containsKey('desiredNotificationConfig')
              ? NotificationConfig.fromJson(json_['desiredNotificationConfig']
                  as core.Map<core.String, core.dynamic>)
              : null,
          desiredParentProductConfig: json_
                  .containsKey('desiredParentProductConfig')
              ? ParentProductConfig.fromJson(json_['desiredParentProductConfig']
                  as core.Map<core.String, core.dynamic>)
              : null,
          desiredPrivateClusterConfig:
              json_.containsKey('desiredPrivateClusterConfig')
                  ? PrivateClusterConfig.fromJson(
                      json_['desiredPrivateClusterConfig']
                          as core.Map<core.String, core.dynamic>)
                  : null,
          desiredPrivateIpv6GoogleAccess:
              json_.containsKey('desiredPrivateIpv6GoogleAccess')
                  ? json_['desiredPrivateIpv6GoogleAccess'] as core.String
                  : null,
          desiredReleaseChannel: json_.containsKey('desiredReleaseChannel')
              ? ReleaseChannel.fromJson(json_['desiredReleaseChannel']
                  as core.Map<core.String, core.dynamic>)
              : null,
          desiredResourceUsageExportConfig:
              json_.containsKey('desiredResourceUsageExportConfig')
                  ? ResourceUsageExportConfig.fromJson(
                      json_['desiredResourceUsageExportConfig']
                          as core.Map<core.String, core.dynamic>)
                  : null,
          desiredSecurityPostureConfig:
              json_.containsKey('desiredSecurityPostureConfig')
                  ? SecurityPostureConfig.fromJson(
                      json_['desiredSecurityPostureConfig']
                          as core.Map<core.String, core.dynamic>)
                  : null,
          desiredServiceExternalIpsConfig:
              json_.containsKey('desiredServiceExternalIpsConfig')
                  ? ServiceExternalIPsConfig.fromJson(
                      json_['desiredServiceExternalIpsConfig']
                          as core.Map<core.String, core.dynamic>)
                  : null,
          desiredShieldedNodes: json_.containsKey('desiredShieldedNodes')
              ? ShieldedNodes.fromJson(json_['desiredShieldedNodes']
                  as core.Map<core.String, core.dynamic>)
              : null,
          desiredStackType: json_.containsKey('desiredStackType')
              ? json_['desiredStackType'] as core.String
              : null,
          desiredVerticalPodAutoscaling:
              json_.containsKey('desiredVerticalPodAutoscaling')
                  ? VerticalPodAutoscaling.fromJson(
                      json_['desiredVerticalPodAutoscaling']
                          as core.Map<core.String, core.dynamic>)
                  : null,
          desiredWorkloadIdentityConfig:
              json_.containsKey('desiredWorkloadIdentityConfig')
                  ? WorkloadIdentityConfig.fromJson(
                      json_['desiredWorkloadIdentityConfig']
                          as core.Map<core.String, core.dynamic>)
                  : null,
          enableK8sBetaApis: json_.containsKey('enableK8sBetaApis')
              ? K8sBetaAPIConfig.fromJson(json_['enableK8sBetaApis']
                  as core.Map<core.String, core.dynamic>)
              : null,
          etag: json_.containsKey('etag') ? json_['etag'] as core.String : null,
          removedAdditionalPodRangesConfig:
              json_.containsKey('removedAdditionalPodRangesConfig')
                  ? AdditionalPodRangesConfig.fromJson(
                      json_['removedAdditionalPodRangesConfig']
                          as core.Map<core.String, core.dynamic>)
                  : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (additionalPodRangesConfig != null)
          'additionalPodRangesConfig': additionalPodRangesConfig!,
        if (desiredAddonsConfig != null)
          'desiredAddonsConfig': desiredAddonsConfig!,
        if (desiredAuthenticatorGroupsConfig != null)
          'desiredAuthenticatorGroupsConfig': desiredAuthenticatorGroupsConfig!,
        if (desiredAutopilotWorkloadPolicyConfig != null)
          'desiredAutopilotWorkloadPolicyConfig':
              desiredAutopilotWorkloadPolicyConfig!,
        if (desiredBinaryAuthorization != null)
          'desiredBinaryAuthorization': desiredBinaryAuthorization!,
        if (desiredClusterAutoscaling != null)
          'desiredClusterAutoscaling': desiredClusterAutoscaling!,
        if (desiredContainerdConfig != null)
          'desiredContainerdConfig': desiredContainerdConfig!,
        if (desiredCostManagementConfig != null)
          'desiredCostManagementConfig': desiredCostManagementConfig!,
        if (desiredDatabaseEncryption != null)
          'desiredDatabaseEncryption': desiredDatabaseEncryption!,
        if (desiredDatapathProvider != null)
          'desiredDatapathProvider': desiredDatapathProvider!,
        if (desiredDefaultSnatStatus != null)
          'desiredDefaultSnatStatus': desiredDefaultSnatStatus!,
        if (desiredDnsConfig != null) 'desiredDnsConfig': desiredDnsConfig!,
        if (desiredEnableCiliumClusterwideNetworkPolicy != null)
          'desiredEnableCiliumClusterwideNetworkPolicy':
              desiredEnableCiliumClusterwideNetworkPolicy!,
        if (desiredEnableFqdnNetworkPolicy != null)
          'desiredEnableFqdnNetworkPolicy': desiredEnableFqdnNetworkPolicy!,
        if (desiredEnableMultiNetworking != null)
          'desiredEnableMultiNetworking': desiredEnableMultiNetworking!,
        if (desiredEnablePrivateEndpoint != null)
          'desiredEnablePrivateEndpoint': desiredEnablePrivateEndpoint!,
        if (desiredFleet != null) 'desiredFleet': desiredFleet!,
        if (desiredGatewayApiConfig != null)
          'desiredGatewayApiConfig': desiredGatewayApiConfig!,
        if (desiredGcfsConfig != null) 'desiredGcfsConfig': desiredGcfsConfig!,
        if (desiredIdentityServiceConfig != null)
          'desiredIdentityServiceConfig': desiredIdentityServiceConfig!,
        if (desiredImageType != null) 'desiredImageType': desiredImageType!,
        if (desiredInTransitEncryptionConfig != null)
          'desiredInTransitEncryptionConfig': desiredInTransitEncryptionConfig!,
        if (desiredIntraNodeVisibilityConfig != null)
          'desiredIntraNodeVisibilityConfig': desiredIntraNodeVisibilityConfig!,
        if (desiredK8sBetaApis != null)
          'desiredK8sBetaApis': desiredK8sBetaApis!,
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
        if (desiredNetworkPerformanceConfig != null)
          'desiredNetworkPerformanceConfig': desiredNetworkPerformanceConfig!,
        if (desiredNodePoolAutoConfigNetworkTags != null)
          'desiredNodePoolAutoConfigNetworkTags':
              desiredNodePoolAutoConfigNetworkTags!,
        if (desiredNodePoolAutoConfigResourceManagerTags != null)
          'desiredNodePoolAutoConfigResourceManagerTags':
              desiredNodePoolAutoConfigResourceManagerTags!,
        if (desiredNodePoolAutoscaling != null)
          'desiredNodePoolAutoscaling': desiredNodePoolAutoscaling!,
        if (desiredNodePoolId != null) 'desiredNodePoolId': desiredNodePoolId!,
        if (desiredNodePoolLoggingConfig != null)
          'desiredNodePoolLoggingConfig': desiredNodePoolLoggingConfig!,
        if (desiredNodeVersion != null)
          'desiredNodeVersion': desiredNodeVersion!,
        if (desiredNotificationConfig != null)
          'desiredNotificationConfig': desiredNotificationConfig!,
        if (desiredParentProductConfig != null)
          'desiredParentProductConfig': desiredParentProductConfig!,
        if (desiredPrivateClusterConfig != null)
          'desiredPrivateClusterConfig': desiredPrivateClusterConfig!,
        if (desiredPrivateIpv6GoogleAccess != null)
          'desiredPrivateIpv6GoogleAccess': desiredPrivateIpv6GoogleAccess!,
        if (desiredReleaseChannel != null)
          'desiredReleaseChannel': desiredReleaseChannel!,
        if (desiredResourceUsageExportConfig != null)
          'desiredResourceUsageExportConfig': desiredResourceUsageExportConfig!,
        if (desiredSecurityPostureConfig != null)
          'desiredSecurityPostureConfig': desiredSecurityPostureConfig!,
        if (desiredServiceExternalIpsConfig != null)
          'desiredServiceExternalIpsConfig': desiredServiceExternalIpsConfig!,
        if (desiredShieldedNodes != null)
          'desiredShieldedNodes': desiredShieldedNodes!,
        if (desiredStackType != null) 'desiredStackType': desiredStackType!,
        if (desiredVerticalPodAutoscaling != null)
          'desiredVerticalPodAutoscaling': desiredVerticalPodAutoscaling!,
        if (desiredWorkloadIdentityConfig != null)
          'desiredWorkloadIdentityConfig': desiredWorkloadIdentityConfig!,
        if (enableK8sBetaApis != null) 'enableK8sBetaApis': enableK8sBetaApis!,
        if (etag != null) 'etag': etag!,
        if (removedAdditionalPodRangesConfig != null)
          'removedAdditionalPodRangesConfig': removedAdditionalPodRangesConfig!,
      };
}

/// CompleteIPRotationRequest moves the cluster master back into single-IP mode.
class CompleteIPRotationRequest {
  /// The name of the cluster.
  ///
  /// This field has been deprecated and replaced by the name field.
  ///
  /// Deprecated.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  core.String? clusterId;

  /// The name (project, location, cluster name) of the cluster to complete IP
  /// rotation.
  ///
  /// Specified in the format `projects / * /locations / * /clusters / * `.
  core.String? name;

  /// The Google Developers Console
  /// [project ID or project number](https://cloud.google.com/resource-manager/docs/creating-managing-projects).
  ///
  /// This field has been deprecated and replaced by the name field.
  ///
  /// Deprecated.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  core.String? projectId;

  /// The name of the Google Compute Engine
  /// [zone](https://cloud.google.com/compute/docs/zones#available) in which the
  /// cluster resides.
  ///
  /// This field has been deprecated and replaced by the name field.
  ///
  /// Deprecated.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  core.String? zone;

  CompleteIPRotationRequest({
    this.clusterId,
    this.name,
    this.projectId,
    this.zone,
  });

  CompleteIPRotationRequest.fromJson(core.Map json_)
      : this(
          clusterId: json_.containsKey('clusterId')
              ? json_['clusterId'] as core.String
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          projectId: json_.containsKey('projectId')
              ? json_['projectId'] as core.String
              : null,
          zone: json_.containsKey('zone') ? json_['zone'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (clusterId != null) 'clusterId': clusterId!,
        if (name != null) 'name': name!,
        if (projectId != null) 'projectId': projectId!,
        if (zone != null) 'zone': zone!,
      };
}

/// CompleteNodePoolUpgradeRequest sets the name of target node pool to complete
/// upgrade.
typedef CompleteNodePoolUpgradeRequest = $Empty;

/// ConfidentialNodes is configuration for the confidential nodes feature, which
/// makes nodes run on confidential VMs.
class ConfidentialNodes {
  /// Whether Confidential Nodes feature is enabled.
  core.bool? enabled;

  ConfidentialNodes({
    this.enabled,
  });

  ConfidentialNodes.fromJson(core.Map json_)
      : this(
          enabled: json_.containsKey('enabled')
              ? json_['enabled'] as core.bool
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

  ConfigConnectorConfig.fromJson(core.Map json_)
      : this(
          enabled: json_.containsKey('enabled')
              ? json_['enabled'] as core.bool
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

  ConsumptionMeteringConfig.fromJson(core.Map json_)
      : this(
          enabled: json_.containsKey('enabled')
              ? json_['enabled'] as core.bool
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (enabled != null) 'enabled': enabled!,
      };
}

/// ContainerdConfig contains configuration to customize containerd.
class ContainerdConfig {
  /// PrivateRegistryAccessConfig is used to configure access configuration for
  /// private container registries.
  PrivateRegistryAccessConfig? privateRegistryAccessConfig;

  ContainerdConfig({
    this.privateRegistryAccessConfig,
  });

  ContainerdConfig.fromJson(core.Map json_)
      : this(
          privateRegistryAccessConfig:
              json_.containsKey('privateRegistryAccessConfig')
                  ? PrivateRegistryAccessConfig.fromJson(
                      json_['privateRegistryAccessConfig']
                          as core.Map<core.String, core.dynamic>)
                  : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (privateRegistryAccessConfig != null)
          'privateRegistryAccessConfig': privateRegistryAccessConfig!,
      };
}

/// Configuration for fine-grained cost management feature.
class CostManagementConfig {
  /// Whether the feature is enabled or not.
  core.bool? enabled;

  CostManagementConfig({
    this.enabled,
  });

  CostManagementConfig.fromJson(core.Map json_)
      : this(
          enabled: json_.containsKey('enabled')
              ? json_['enabled'] as core.bool
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
  /// [project ID or project number](https://cloud.google.com/resource-manager/docs/creating-managing-projects).
  ///
  /// This field has been deprecated and replaced by the parent field.
  ///
  /// Deprecated.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  core.String? projectId;

  /// The name of the Google Compute Engine
  /// [zone](https://cloud.google.com/compute/docs/zones#available) in which the
  /// cluster resides.
  ///
  /// This field has been deprecated and replaced by the parent field.
  ///
  /// Deprecated.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  core.String? zone;

  CreateClusterRequest({
    this.cluster,
    this.parent,
    this.projectId,
    this.zone,
  });

  CreateClusterRequest.fromJson(core.Map json_)
      : this(
          cluster: json_.containsKey('cluster')
              ? Cluster.fromJson(
                  json_['cluster'] as core.Map<core.String, core.dynamic>)
              : null,
          parent: json_.containsKey('parent')
              ? json_['parent'] as core.String
              : null,
          projectId: json_.containsKey('projectId')
              ? json_['projectId'] as core.String
              : null,
          zone: json_.containsKey('zone') ? json_['zone'] as core.String : null,
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
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
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
  /// [project ID or project number](https://cloud.google.com/resource-manager/docs/creating-managing-projects).
  ///
  /// This field has been deprecated and replaced by the parent field.
  ///
  /// Deprecated.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  core.String? projectId;

  /// The name of the Google Compute Engine
  /// [zone](https://cloud.google.com/compute/docs/zones#available) in which the
  /// cluster resides.
  ///
  /// This field has been deprecated and replaced by the parent field.
  ///
  /// Deprecated.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  core.String? zone;

  CreateNodePoolRequest({
    this.clusterId,
    this.nodePool,
    this.parent,
    this.projectId,
    this.zone,
  });

  CreateNodePoolRequest.fromJson(core.Map json_)
      : this(
          clusterId: json_.containsKey('clusterId')
              ? json_['clusterId'] as core.String
              : null,
          nodePool: json_.containsKey('nodePool')
              ? NodePool.fromJson(
                  json_['nodePool'] as core.Map<core.String, core.dynamic>)
              : null,
          parent: json_.containsKey('parent')
              ? json_['parent'] as core.String
              : null,
          projectId: json_.containsKey('projectId')
              ? json_['projectId'] as core.String
              : null,
          zone: json_.containsKey('zone') ? json_['zone'] as core.String : null,
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
  /// The domain used in Additive VPC scope.
  ///
  /// Optional.
  core.String? additiveVpcScopeDnsDomain;

  /// cluster_dns indicates which in-cluster DNS provider should be used.
  /// Possible string values are:
  /// - "PROVIDER_UNSPECIFIED" : Default value
  /// - "PLATFORM_DEFAULT" : Use GKE default DNS provider(kube-dns) for DNS
  /// resolution.
  /// - "CLOUD_DNS" : Use CloudDNS for DNS resolution.
  /// - "KUBE_DNS" : Use KubeDNS for DNS resolution.
  core.String? clusterDns;

  /// cluster_dns_domain is the suffix used for all cluster service records.
  core.String? clusterDnsDomain;

  /// cluster_dns_scope indicates the scope of access to cluster DNS records.
  /// Possible string values are:
  /// - "DNS_SCOPE_UNSPECIFIED" : Default value, will be inferred as cluster
  /// scope.
  /// - "CLUSTER_SCOPE" : DNS records are accessible from within the cluster.
  /// - "VPC_SCOPE" : DNS records are accessible from within the VPC.
  core.String? clusterDnsScope;

  DNSConfig({
    this.additiveVpcScopeDnsDomain,
    this.clusterDns,
    this.clusterDnsDomain,
    this.clusterDnsScope,
  });

  DNSConfig.fromJson(core.Map json_)
      : this(
          additiveVpcScopeDnsDomain:
              json_.containsKey('additiveVpcScopeDnsDomain')
                  ? json_['additiveVpcScopeDnsDomain'] as core.String
                  : null,
          clusterDns: json_.containsKey('clusterDns')
              ? json_['clusterDns'] as core.String
              : null,
          clusterDnsDomain: json_.containsKey('clusterDnsDomain')
              ? json_['clusterDnsDomain'] as core.String
              : null,
          clusterDnsScope: json_.containsKey('clusterDnsScope')
              ? json_['clusterDnsScope'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (additiveVpcScopeDnsDomain != null)
          'additiveVpcScopeDnsDomain': additiveVpcScopeDnsDomain!,
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

  DailyMaintenanceWindow.fromJson(core.Map json_)
      : this(
          duration: json_.containsKey('duration')
              ? json_['duration'] as core.String
              : null,
          startTime: json_.containsKey('startTime')
              ? json_['startTime'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (duration != null) 'duration': duration!,
        if (startTime != null) 'startTime': startTime!,
      };
}

/// Configuration of etcd encryption.
class DatabaseEncryption {
  /// The current state of etcd encryption.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "CURRENT_STATE_UNSPECIFIED" : Should never be set
  /// - "CURRENT_STATE_ENCRYPTED" : Secrets in etcd are encrypted.
  /// - "CURRENT_STATE_DECRYPTED" : Secrets in etcd are stored in plain text (at
  /// etcd level) - this is unrelated to Compute Engine level full disk
  /// encryption.
  /// - "CURRENT_STATE_ENCRYPTION_PENDING" : Encryption (or re-encryption with a
  /// different CloudKMS key) of Secrets is in progress.
  /// - "CURRENT_STATE_ENCRYPTION_ERROR" : Encryption (or re-encryption with a
  /// different CloudKMS key) of Secrets in etcd encountered an error.
  /// - "CURRENT_STATE_DECRYPTION_PENDING" : De-crypting Secrets to plain text
  /// in etcd is in progress.
  /// - "CURRENT_STATE_DECRYPTION_ERROR" : De-crypting Secrets to plain text in
  /// etcd encountered an error.
  core.String? currentState;

  /// Keys in use by the cluster for decrypting existing objects, in addition to
  /// the key in `key_name`.
  ///
  /// Each item is a CloudKMS key resource.
  ///
  /// Output only.
  core.List<core.String>? decryptionKeys;

  /// Name of CloudKMS key to use for the encryption of secrets in etcd.
  ///
  /// Ex.
  /// projects/my-project/locations/global/keyRings/my-ring/cryptoKeys/my-key
  core.String? keyName;

  /// Records errors seen during DatabaseEncryption update operations.
  ///
  /// Output only.
  core.List<OperationError>? lastOperationErrors;

  /// The desired state of etcd encryption.
  /// Possible string values are:
  /// - "UNKNOWN" : Should never be set
  /// - "ENCRYPTED" : Secrets in etcd are encrypted.
  /// - "DECRYPTED" : Secrets in etcd are stored in plain text (at etcd level) -
  /// this is unrelated to Compute Engine level full disk encryption.
  core.String? state;

  DatabaseEncryption({
    this.currentState,
    this.decryptionKeys,
    this.keyName,
    this.lastOperationErrors,
    this.state,
  });

  DatabaseEncryption.fromJson(core.Map json_)
      : this(
          currentState: json_.containsKey('currentState')
              ? json_['currentState'] as core.String
              : null,
          decryptionKeys: json_.containsKey('decryptionKeys')
              ? (json_['decryptionKeys'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          keyName: json_.containsKey('keyName')
              ? json_['keyName'] as core.String
              : null,
          lastOperationErrors: json_.containsKey('lastOperationErrors')
              ? (json_['lastOperationErrors'] as core.List)
                  .map((value) => OperationError.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          state:
              json_.containsKey('state') ? json_['state'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (currentState != null) 'currentState': currentState!,
        if (decryptionKeys != null) 'decryptionKeys': decryptionKeys!,
        if (keyName != null) 'keyName': keyName!,
        if (lastOperationErrors != null)
          'lastOperationErrors': lastOperationErrors!,
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

  DefaultSnatStatus.fromJson(core.Map json_)
      : this(
          disabled: json_.containsKey('disabled')
              ? json_['disabled'] as core.bool
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

  DnsCacheConfig.fromJson(core.Map json_)
      : this(
          enabled: json_.containsKey('enabled')
              ? json_['enabled'] as core.bool
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
/// (google.protobuf.Empty); }
typedef Empty = $Empty;

/// EnterpriseConfig is the cluster enterprise configuration.
class EnterpriseConfig {
  /// cluster_tier specifies the premium tier of the cluster.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "CLUSTER_TIER_UNSPECIFIED" : CLUSTER_TIER_UNSPECIFIED is when
  /// cluster_tier is not set.
  /// - "STANDARD" : STANDARD indicates a standard GKE cluster.
  /// - "ENTERPRISE" : ENTERPRISE indicates a GKE Enterprise cluster.
  core.String? clusterTier;

  EnterpriseConfig({
    this.clusterTier,
  });

  EnterpriseConfig.fromJson(core.Map json_)
      : this(
          clusterTier: json_.containsKey('clusterTier')
              ? json_['clusterTier'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (clusterTier != null) 'clusterTier': clusterTier!,
      };
}

/// EphemeralStorageLocalSsdConfig contains configuration for the node ephemeral
/// storage using Local SSDs.
class EphemeralStorageLocalSsdConfig {
  /// Number of local SSDs to use to back ephemeral storage.
  ///
  /// Uses NVMe interfaces. A zero (or unset) value has different meanings
  /// depending on machine type being used: 1. For pre-Gen3 machines, which
  /// support flexible numbers of local ssds, zero (or unset) means to disable
  /// using local SSDs as ephemeral storage. The limit for this value is
  /// dependent upon the maximum number of disk available on a machine per zone.
  /// See: https://cloud.google.com/compute/docs/disks/local-ssd for more
  /// information. 2. For Gen3 machines which dictate a specific number of local
  /// ssds, zero (or unset) means to use the default number of local ssds that
  /// goes with that machine type. For example, for a c3-standard-8-lssd
  /// machine, 2 local ssds would be provisioned. For c3-standard-8 (which
  /// doesn't support local ssds), 0 will be provisioned. See
  /// https://cloud.google.com/compute/docs/disks/local-ssd#choose_number_local_ssds
  /// for more info.
  core.int? localSsdCount;

  EphemeralStorageLocalSsdConfig({
    this.localSsdCount,
  });

  EphemeralStorageLocalSsdConfig.fromJson(core.Map json_)
      : this(
          localSsdCount: json_.containsKey('localSsdCount')
              ? json_['localSsdCount'] as core.int
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (localSsdCount != null) 'localSsdCount': localSsdCount!,
      };
}

/// Configuration of Fast Socket feature.
class FastSocket {
  /// Whether Fast Socket features are enabled in the node pool.
  core.bool? enabled;

  FastSocket({
    this.enabled,
  });

  FastSocket.fromJson(core.Map json_)
      : this(
          enabled: json_.containsKey('enabled')
              ? json_['enabled'] as core.bool
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (enabled != null) 'enabled': enabled!,
      };
}

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

  Filter.fromJson(core.Map json_)
      : this(
          eventType: json_.containsKey('eventType')
              ? (json_['eventType'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (eventType != null) 'eventType': eventType!,
      };
}

/// Fleet is the fleet configuration for the cluster.
class Fleet {
  /// The full resource name of the registered fleet membership of the cluster,
  /// in the format `//gkehub.googleapis.com/projects / * /locations / *
  /// /memberships / * `.
  ///
  /// Output only.
  core.String? membership;

  /// Whether the cluster has been registered through the fleet API.
  ///
  /// Output only.
  core.bool? preRegistered;

  /// The Fleet host project(project ID or project number) where this cluster
  /// will be registered to.
  ///
  /// This field cannot be changed after the cluster has been registered.
  core.String? project;

  Fleet({
    this.membership,
    this.preRegistered,
    this.project,
  });

  Fleet.fromJson(core.Map json_)
      : this(
          membership: json_.containsKey('membership')
              ? json_['membership'] as core.String
              : null,
          preRegistered: json_.containsKey('preRegistered')
              ? json_['preRegistered'] as core.bool
              : null,
          project: json_.containsKey('project')
              ? json_['project'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (membership != null) 'membership': membership!,
        if (preRegistered != null) 'preRegistered': preRegistered!,
        if (project != null) 'project': project!,
      };
}

/// GCPSecretManagerCertificateConfig configures a secret from
/// [Google Secret Manager](https://cloud.google.com/secret-manager).
class GCPSecretManagerCertificateConfig {
  /// Secret URI, in the form
  /// "projects/$PROJECT_ID/secrets/$SECRET_NAME/versions/$VERSION".
  ///
  /// Version can be fixed (e.g. "2") or "latest"
  core.String? secretUri;

  GCPSecretManagerCertificateConfig({
    this.secretUri,
  });

  GCPSecretManagerCertificateConfig.fromJson(core.Map json_)
      : this(
          secretUri: json_.containsKey('secretUri')
              ? json_['secretUri'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (secretUri != null) 'secretUri': secretUri!,
      };
}

/// GPUDriverInstallationConfig specifies the version of GPU driver to be auto
/// installed.
class GPUDriverInstallationConfig {
  /// Mode for how the GPU driver is installed.
  /// Possible string values are:
  /// - "GPU_DRIVER_VERSION_UNSPECIFIED" : Default value is to not install any
  /// GPU driver.
  /// - "INSTALLATION_DISABLED" : Disable GPU driver auto installation and needs
  /// manual installation
  /// - "DEFAULT" : "Default" GPU driver in COS and Ubuntu.
  /// - "LATEST" : "Latest" GPU driver in COS.
  core.String? gpuDriverVersion;

  GPUDriverInstallationConfig({
    this.gpuDriverVersion,
  });

  GPUDriverInstallationConfig.fromJson(core.Map json_)
      : this(
          gpuDriverVersion: json_.containsKey('gpuDriverVersion')
              ? json_['gpuDriverVersion'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (gpuDriverVersion != null) 'gpuDriverVersion': gpuDriverVersion!,
      };
}

/// GPUSharingConfig represents the GPU sharing configuration for Hardware
/// Accelerators.
class GPUSharingConfig {
  /// The type of GPU sharing strategy to enable on the GPU node.
  /// Possible string values are:
  /// - "GPU_SHARING_STRATEGY_UNSPECIFIED" : Default value.
  /// - "TIME_SHARING" : GPUs are time-shared between containers.
  /// - "MPS" : GPUs are shared between containers with NVIDIA MPS.
  core.String? gpuSharingStrategy;

  /// The max number of containers that can share a physical GPU.
  core.String? maxSharedClientsPerGpu;

  GPUSharingConfig({
    this.gpuSharingStrategy,
    this.maxSharedClientsPerGpu,
  });

  GPUSharingConfig.fromJson(core.Map json_)
      : this(
          gpuSharingStrategy: json_.containsKey('gpuSharingStrategy')
              ? json_['gpuSharingStrategy'] as core.String
              : null,
          maxSharedClientsPerGpu: json_.containsKey('maxSharedClientsPerGpu')
              ? json_['maxSharedClientsPerGpu'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (gpuSharingStrategy != null)
          'gpuSharingStrategy': gpuSharingStrategy!,
        if (maxSharedClientsPerGpu != null)
          'maxSharedClientsPerGpu': maxSharedClientsPerGpu!,
      };
}

/// GatewayAPIConfig contains the desired config of Gateway API on this cluster.
class GatewayAPIConfig {
  /// The Gateway API release channel to use for Gateway API.
  /// Possible string values are:
  /// - "CHANNEL_UNSPECIFIED" : Default value.
  /// - "CHANNEL_DISABLED" : Gateway API support is disabled
  /// - "CHANNEL_EXPERIMENTAL" : Gateway API support is enabled, experimental
  /// CRDs are installed
  /// - "CHANNEL_STANDARD" : Gateway API support is enabled, standard CRDs are
  /// installed
  core.String? channel;

  GatewayAPIConfig({
    this.channel,
  });

  GatewayAPIConfig.fromJson(core.Map json_)
      : this(
          channel: json_.containsKey('channel')
              ? json_['channel'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (channel != null) 'channel': channel!,
      };
}

/// Configuration for the Compute Engine PD CSI driver.
class GcePersistentDiskCsiDriverConfig {
  /// Whether the Compute Engine PD CSI driver is enabled for this cluster.
  core.bool? enabled;

  GcePersistentDiskCsiDriverConfig({
    this.enabled,
  });

  GcePersistentDiskCsiDriverConfig.fromJson(core.Map json_)
      : this(
          enabled: json_.containsKey('enabled')
              ? json_['enabled'] as core.bool
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

  GcfsConfig.fromJson(core.Map json_)
      : this(
          enabled: json_.containsKey('enabled')
              ? json_['enabled'] as core.bool
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

  GcpFilestoreCsiDriverConfig.fromJson(core.Map json_)
      : this(
          enabled: json_.containsKey('enabled')
              ? json_['enabled'] as core.bool
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (enabled != null) 'enabled': enabled!,
      };
}

/// Configuration for the Cloud Storage Fuse CSI driver.
class GcsFuseCsiDriverConfig {
  /// Whether the Cloud Storage Fuse CSI driver is enabled for this cluster.
  core.bool? enabled;

  GcsFuseCsiDriverConfig({
    this.enabled,
  });

  GcsFuseCsiDriverConfig.fromJson(core.Map json_)
      : this(
          enabled: json_.containsKey('enabled')
              ? json_['enabled'] as core.bool
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

  GetJSONWebKeysResponse.fromJson(core.Map json_)
      : this(
          cacheHeader: json_.containsKey('cacheHeader')
              ? HttpCacheControlResponseHeader.fromJson(
                  json_['cacheHeader'] as core.Map<core.String, core.dynamic>)
              : null,
          keys: json_.containsKey('keys')
              ? (json_['keys'] as core.List)
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

  GetOpenIDConfigResponse.fromJson(core.Map json_)
      : this(
          cacheHeader: json_.containsKey('cacheHeader')
              ? HttpCacheControlResponseHeader.fromJson(
                  json_['cacheHeader'] as core.Map<core.String, core.dynamic>)
              : null,
          claimsSupported: json_.containsKey('claims_supported')
              ? (json_['claims_supported'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          grantTypes: json_.containsKey('grant_types')
              ? (json_['grant_types'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          idTokenSigningAlgValuesSupported: json_
                  .containsKey('id_token_signing_alg_values_supported')
              ? (json_['id_token_signing_alg_values_supported'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          issuer: json_.containsKey('issuer')
              ? json_['issuer'] as core.String
              : null,
          jwksUri: json_.containsKey('jwks_uri')
              ? json_['jwks_uri'] as core.String
              : null,
          responseTypesSupported: json_.containsKey('response_types_supported')
              ? (json_['response_types_supported'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          subjectTypesSupported: json_.containsKey('subject_types_supported')
              ? (json_['subject_types_supported'] as core.List)
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

/// Configuration for the Backup for GKE Agent.
class GkeBackupAgentConfig {
  /// Whether the Backup for GKE agent is enabled for this cluster.
  core.bool? enabled;

  GkeBackupAgentConfig({
    this.enabled,
  });

  GkeBackupAgentConfig.fromJson(core.Map json_)
      : this(
          enabled: json_.containsKey('enabled')
              ? json_['enabled'] as core.bool
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (enabled != null) 'enabled': enabled!,
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

  HorizontalPodAutoscaling.fromJson(core.Map json_)
      : this(
          disabled: json_.containsKey('disabled')
              ? json_['disabled'] as core.bool
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

  HttpCacheControlResponseHeader.fromJson(core.Map json_)
      : this(
          age: json_.containsKey('age') ? json_['age'] as core.String : null,
          directive: json_.containsKey('directive')
              ? json_['directive'] as core.String
              : null,
          expires: json_.containsKey('expires')
              ? json_['expires'] as core.String
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

  HttpLoadBalancing.fromJson(core.Map json_)
      : this(
          disabled: json_.containsKey('disabled')
              ? json_['disabled'] as core.bool
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (disabled != null) 'disabled': disabled!,
      };
}

/// Hugepages amount in both 2m and 1g size
class HugepagesConfig {
  /// Amount of 1G hugepages
  ///
  /// Optional.
  core.int? hugepageSize1g;

  /// Amount of 2M hugepages
  ///
  /// Optional.
  core.int? hugepageSize2m;

  HugepagesConfig({
    this.hugepageSize1g,
    this.hugepageSize2m,
  });

  HugepagesConfig.fromJson(core.Map json_)
      : this(
          hugepageSize1g: json_.containsKey('hugepageSize1g')
              ? json_['hugepageSize1g'] as core.int
              : null,
          hugepageSize2m: json_.containsKey('hugepageSize2m')
              ? json_['hugepageSize2m'] as core.int
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (hugepageSize1g != null) 'hugepageSize1g': hugepageSize1g!,
        if (hugepageSize2m != null) 'hugepageSize2m': hugepageSize2m!,
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

  ILBSubsettingConfig.fromJson(core.Map json_)
      : this(
          enabled: json_.containsKey('enabled')
              ? json_['enabled'] as core.bool
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (enabled != null) 'enabled': enabled!,
      };
}

/// Configuration for controlling how IPs are allocated in the cluster.
class IPAllocationPolicy {
  /// The additional pod ranges that are added to the cluster.
  ///
  /// These pod ranges can be used by new node pools to allocate pod IPs
  /// automatically. Once the range is removed it will not show up in
  /// IPAllocationPolicy.
  ///
  /// Output only.
  AdditionalPodRangesConfig? additionalPodRangesConfig;

  /// This field is deprecated, use cluster_ipv4_cidr_block.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
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

  /// The utilization of the cluster default IPv4 range for the pod.
  ///
  /// The ratio is Usage/\[Total number of IPs in the secondary range\],
  /// Usage=numNodes*numZones*podIPsPerNode.
  ///
  /// Output only.
  core.double? defaultPodIpv4RangeUtilization;

  /// The ipv6 access type (internal or external) when create_subnetwork is true
  /// Possible string values are:
  /// - "IPV6_ACCESS_TYPE_UNSPECIFIED" : Default value, will be defaulted as
  /// type external.
  /// - "INTERNAL" : Access type internal (all v6 addresses are internal IPs)
  /// - "EXTERNAL" : Access type external (all v6 addresses are external IPs)
  core.String? ipv6AccessType;

  /// This field is deprecated, use node_ipv4_cidr_block.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
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

  /// \[PRIVATE FIELD\] Pod CIDR size overprovisioning config for the cluster.
  ///
  /// Pod CIDR size per node depends on max_pods_per_node. By default, the value
  /// of max_pods_per_node is doubled and then rounded off to next power of 2 to
  /// get the size of pod CIDR block per node. Example: max_pods_per_node of 30
  /// would result in 64 IPs (/26). This config can disable the doubling of IPs
  /// (we still round off to next power of 2) Example: max_pods_per_node of 30
  /// will result in 32 IPs (/27) when overprovisioning is disabled.
  PodCIDROverprovisionConfig? podCidrOverprovisionConfig;

  /// This field is deprecated, use services_ipv4_cidr_block.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
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

  /// The services IPv6 CIDR block for the cluster.
  ///
  /// Output only.
  core.String? servicesIpv6CidrBlock;

  /// The name of the secondary range to be used as for the services CIDR block.
  ///
  /// The secondary range will be used for service ClusterIPs. This must be an
  /// existing secondary range associated with the cluster subnetwork. This
  /// field is only applicable with use_ip_aliases is true and create_subnetwork
  /// is false.
  core.String? servicesSecondaryRangeName;

  /// The IP stack type of the cluster
  /// Possible string values are:
  /// - "STACK_TYPE_UNSPECIFIED" : Default value, will be defaulted as IPV4 only
  /// - "IPV4" : Cluster is IPV4 only
  /// - "IPV4_IPV6" : Cluster can use both IPv4 and IPv6
  core.String? stackType;

  /// The subnet's IPv6 CIDR block used by nodes and pods.
  ///
  /// Output only.
  core.String? subnetIpv6CidrBlock;

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
    this.additionalPodRangesConfig,
    this.clusterIpv4Cidr,
    this.clusterIpv4CidrBlock,
    this.clusterSecondaryRangeName,
    this.createSubnetwork,
    this.defaultPodIpv4RangeUtilization,
    this.ipv6AccessType,
    this.nodeIpv4Cidr,
    this.nodeIpv4CidrBlock,
    this.podCidrOverprovisionConfig,
    this.servicesIpv4Cidr,
    this.servicesIpv4CidrBlock,
    this.servicesIpv6CidrBlock,
    this.servicesSecondaryRangeName,
    this.stackType,
    this.subnetIpv6CidrBlock,
    this.subnetworkName,
    this.tpuIpv4CidrBlock,
    this.useIpAliases,
    this.useRoutes,
  });

  IPAllocationPolicy.fromJson(core.Map json_)
      : this(
          additionalPodRangesConfig:
              json_.containsKey('additionalPodRangesConfig')
                  ? AdditionalPodRangesConfig.fromJson(
                      json_['additionalPodRangesConfig']
                          as core.Map<core.String, core.dynamic>)
                  : null,
          clusterIpv4Cidr: json_.containsKey('clusterIpv4Cidr')
              ? json_['clusterIpv4Cidr'] as core.String
              : null,
          clusterIpv4CidrBlock: json_.containsKey('clusterIpv4CidrBlock')
              ? json_['clusterIpv4CidrBlock'] as core.String
              : null,
          clusterSecondaryRangeName:
              json_.containsKey('clusterSecondaryRangeName')
                  ? json_['clusterSecondaryRangeName'] as core.String
                  : null,
          createSubnetwork: json_.containsKey('createSubnetwork')
              ? json_['createSubnetwork'] as core.bool
              : null,
          defaultPodIpv4RangeUtilization: json_
                  .containsKey('defaultPodIpv4RangeUtilization')
              ? (json_['defaultPodIpv4RangeUtilization'] as core.num).toDouble()
              : null,
          ipv6AccessType: json_.containsKey('ipv6AccessType')
              ? json_['ipv6AccessType'] as core.String
              : null,
          nodeIpv4Cidr: json_.containsKey('nodeIpv4Cidr')
              ? json_['nodeIpv4Cidr'] as core.String
              : null,
          nodeIpv4CidrBlock: json_.containsKey('nodeIpv4CidrBlock')
              ? json_['nodeIpv4CidrBlock'] as core.String
              : null,
          podCidrOverprovisionConfig:
              json_.containsKey('podCidrOverprovisionConfig')
                  ? PodCIDROverprovisionConfig.fromJson(
                      json_['podCidrOverprovisionConfig']
                          as core.Map<core.String, core.dynamic>)
                  : null,
          servicesIpv4Cidr: json_.containsKey('servicesIpv4Cidr')
              ? json_['servicesIpv4Cidr'] as core.String
              : null,
          servicesIpv4CidrBlock: json_.containsKey('servicesIpv4CidrBlock')
              ? json_['servicesIpv4CidrBlock'] as core.String
              : null,
          servicesIpv6CidrBlock: json_.containsKey('servicesIpv6CidrBlock')
              ? json_['servicesIpv6CidrBlock'] as core.String
              : null,
          servicesSecondaryRangeName:
              json_.containsKey('servicesSecondaryRangeName')
                  ? json_['servicesSecondaryRangeName'] as core.String
                  : null,
          stackType: json_.containsKey('stackType')
              ? json_['stackType'] as core.String
              : null,
          subnetIpv6CidrBlock: json_.containsKey('subnetIpv6CidrBlock')
              ? json_['subnetIpv6CidrBlock'] as core.String
              : null,
          subnetworkName: json_.containsKey('subnetworkName')
              ? json_['subnetworkName'] as core.String
              : null,
          tpuIpv4CidrBlock: json_.containsKey('tpuIpv4CidrBlock')
              ? json_['tpuIpv4CidrBlock'] as core.String
              : null,
          useIpAliases: json_.containsKey('useIpAliases')
              ? json_['useIpAliases'] as core.bool
              : null,
          useRoutes: json_.containsKey('useRoutes')
              ? json_['useRoutes'] as core.bool
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (additionalPodRangesConfig != null)
          'additionalPodRangesConfig': additionalPodRangesConfig!,
        if (clusterIpv4Cidr != null) 'clusterIpv4Cidr': clusterIpv4Cidr!,
        if (clusterIpv4CidrBlock != null)
          'clusterIpv4CidrBlock': clusterIpv4CidrBlock!,
        if (clusterSecondaryRangeName != null)
          'clusterSecondaryRangeName': clusterSecondaryRangeName!,
        if (createSubnetwork != null) 'createSubnetwork': createSubnetwork!,
        if (defaultPodIpv4RangeUtilization != null)
          'defaultPodIpv4RangeUtilization': defaultPodIpv4RangeUtilization!,
        if (ipv6AccessType != null) 'ipv6AccessType': ipv6AccessType!,
        if (nodeIpv4Cidr != null) 'nodeIpv4Cidr': nodeIpv4Cidr!,
        if (nodeIpv4CidrBlock != null) 'nodeIpv4CidrBlock': nodeIpv4CidrBlock!,
        if (podCidrOverprovisionConfig != null)
          'podCidrOverprovisionConfig': podCidrOverprovisionConfig!,
        if (servicesIpv4Cidr != null) 'servicesIpv4Cidr': servicesIpv4Cidr!,
        if (servicesIpv4CidrBlock != null)
          'servicesIpv4CidrBlock': servicesIpv4CidrBlock!,
        if (servicesIpv6CidrBlock != null)
          'servicesIpv6CidrBlock': servicesIpv6CidrBlock!,
        if (servicesSecondaryRangeName != null)
          'servicesSecondaryRangeName': servicesSecondaryRangeName!,
        if (stackType != null) 'stackType': stackType!,
        if (subnetIpv6CidrBlock != null)
          'subnetIpv6CidrBlock': subnetIpv6CidrBlock!,
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

  IdentityServiceConfig.fromJson(core.Map json_)
      : this(
          enabled: json_.containsKey('enabled')
              ? json_['enabled'] as core.bool
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

  IntraNodeVisibilityConfig.fromJson(core.Map json_)
      : this(
          enabled: json_.containsKey('enabled')
              ? json_['enabled'] as core.bool
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

  Jwk.fromJson(core.Map json_)
      : this(
          alg: json_.containsKey('alg') ? json_['alg'] as core.String : null,
          crv: json_.containsKey('crv') ? json_['crv'] as core.String : null,
          e: json_.containsKey('e') ? json_['e'] as core.String : null,
          kid: json_.containsKey('kid') ? json_['kid'] as core.String : null,
          kty: json_.containsKey('kty') ? json_['kty'] as core.String : null,
          n: json_.containsKey('n') ? json_['n'] as core.String : null,
          use: json_.containsKey('use') ? json_['use'] as core.String : null,
          x: json_.containsKey('x') ? json_['x'] as core.String : null,
          y: json_.containsKey('y') ? json_['y'] as core.String : null,
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

/// K8sBetaAPIConfig , configuration for beta APIs
class K8sBetaAPIConfig {
  /// Enabled k8s beta APIs.
  core.List<core.String>? enabledApis;

  K8sBetaAPIConfig({
    this.enabledApis,
  });

  K8sBetaAPIConfig.fromJson(core.Map json_)
      : this(
          enabledApis: json_.containsKey('enabledApis')
              ? (json_['enabledApis'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (enabledApis != null) 'enabledApis': enabledApis!,
      };
}

/// Configuration for the Kubernetes Dashboard.
class KubernetesDashboard {
  /// Whether the Kubernetes Dashboard is enabled for this cluster.
  core.bool? disabled;

  KubernetesDashboard({
    this.disabled,
  });

  KubernetesDashboard.fromJson(core.Map json_)
      : this(
          disabled: json_.containsKey('disabled')
              ? json_['disabled'] as core.bool
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

  LegacyAbac.fromJson(core.Map json_)
      : this(
          enabled: json_.containsKey('enabled')
              ? json_['enabled'] as core.bool
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (enabled != null) 'enabled': enabled!,
      };
}

/// Parameters that can be configured on Linux nodes.
class LinuxNodeConfig {
  /// cgroup_mode specifies the cgroup mode to be used on the node.
  /// Possible string values are:
  /// - "CGROUP_MODE_UNSPECIFIED" : CGROUP_MODE_UNSPECIFIED is when unspecified
  /// cgroup configuration is used. The default for the GKE node OS image will
  /// be used.
  /// - "CGROUP_MODE_V1" : CGROUP_MODE_V1 specifies to use cgroupv1 for the
  /// cgroup configuration on the node image.
  /// - "CGROUP_MODE_V2" : CGROUP_MODE_V2 specifies to use cgroupv2 for the
  /// cgroup configuration on the node image.
  core.String? cgroupMode;

  /// Amounts for 2M and 1G hugepages
  ///
  /// Optional.
  HugepagesConfig? hugepages;

  /// The Linux kernel parameters to be applied to the nodes and all pods
  /// running on the nodes.
  ///
  /// The following parameters are supported. net.core.busy_poll
  /// net.core.busy_read net.core.netdev_max_backlog net.core.rmem_max
  /// net.core.wmem_default net.core.wmem_max net.core.optmem_max
  /// net.core.somaxconn net.ipv4.tcp_rmem net.ipv4.tcp_wmem
  /// net.ipv4.tcp_tw_reuse
  core.Map<core.String, core.String>? sysctls;

  LinuxNodeConfig({
    this.cgroupMode,
    this.hugepages,
    this.sysctls,
  });

  LinuxNodeConfig.fromJson(core.Map json_)
      : this(
          cgroupMode: json_.containsKey('cgroupMode')
              ? json_['cgroupMode'] as core.String
              : null,
          hugepages: json_.containsKey('hugepages')
              ? HugepagesConfig.fromJson(
                  json_['hugepages'] as core.Map<core.String, core.dynamic>)
              : null,
          sysctls: json_.containsKey('sysctls')
              ? (json_['sysctls'] as core.Map<core.String, core.dynamic>).map(
                  (key, value) => core.MapEntry(
                    key,
                    value as core.String,
                  ),
                )
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (cgroupMode != null) 'cgroupMode': cgroupMode!,
        if (hugepages != null) 'hugepages': hugepages!,
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

  ListClustersResponse.fromJson(core.Map json_)
      : this(
          clusters: json_.containsKey('clusters')
              ? (json_['clusters'] as core.List)
                  .map((value) => Cluster.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          missingZones: json_.containsKey('missingZones')
              ? (json_['missingZones'] as core.List)
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

  ListNodePoolsResponse.fromJson(core.Map json_)
      : this(
          nodePools: json_.containsKey('nodePools')
              ? (json_['nodePools'] as core.List)
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

  ListOperationsResponse.fromJson(core.Map json_)
      : this(
          missingZones: json_.containsKey('missingZones')
              ? (json_['missingZones'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          operations: json_.containsKey('operations')
              ? (json_['operations'] as core.List)
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

  ListUsableSubnetworksResponse.fromJson(core.Map json_)
      : this(
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
          subnetworks: json_.containsKey('subnetworks')
              ? (json_['subnetworks'] as core.List)
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

/// LocalNvmeSsdBlockConfig contains configuration for using raw-block local
/// NVMe SSDs
class LocalNvmeSsdBlockConfig {
  /// Number of local NVMe SSDs to use.
  ///
  /// The limit for this value is dependent upon the maximum number of disk
  /// available on a machine per zone. See:
  /// https://cloud.google.com/compute/docs/disks/local-ssd for more
  /// information. A zero (or unset) value has different meanings depending on
  /// machine type being used: 1. For pre-Gen3 machines, which support flexible
  /// numbers of local ssds, zero (or unset) means to disable using local SSDs
  /// as ephemeral storage. 2. For Gen3 machines which dictate a specific number
  /// of local ssds, zero (or unset) means to use the default number of local
  /// ssds that goes with that machine type. For example, for a
  /// c3-standard-8-lssd machine, 2 local ssds would be provisioned. For
  /// c3-standard-8 (which doesn't support local ssds), 0 will be provisioned.
  /// See
  /// https://cloud.google.com/compute/docs/disks/local-ssd#choose_number_local_ssds
  /// for more info.
  core.int? localSsdCount;

  LocalNvmeSsdBlockConfig({
    this.localSsdCount,
  });

  LocalNvmeSsdBlockConfig.fromJson(core.Map json_)
      : this(
          localSsdCount: json_.containsKey('localSsdCount')
              ? json_['localSsdCount'] as core.int
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (localSsdCount != null) 'localSsdCount': localSsdCount!,
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

  LoggingComponentConfig.fromJson(core.Map json_)
      : this(
          enableComponents: json_.containsKey('enableComponents')
              ? (json_['enableComponents'] as core.List)
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

  LoggingConfig.fromJson(core.Map json_)
      : this(
          componentConfig: json_.containsKey('componentConfig')
              ? LoggingComponentConfig.fromJson(json_['componentConfig']
                  as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (componentConfig != null) 'componentConfig': componentConfig!,
      };
}

/// LoggingVariantConfig specifies the behaviour of the logging component.
class LoggingVariantConfig {
  /// Logging variant deployed on nodes.
  /// Possible string values are:
  /// - "VARIANT_UNSPECIFIED" : Default value. This shouldn't be used.
  /// - "DEFAULT" : default logging variant.
  /// - "MAX_THROUGHPUT" : maximum logging throughput variant.
  core.String? variant;

  LoggingVariantConfig({
    this.variant,
  });

  LoggingVariantConfig.fromJson(core.Map json_)
      : this(
          variant: json_.containsKey('variant')
              ? json_['variant'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (variant != null) 'variant': variant!,
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

  MaintenanceExclusionOptions.fromJson(core.Map json_)
      : this(
          scope:
              json_.containsKey('scope') ? json_['scope'] as core.String : null,
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

  MaintenancePolicy.fromJson(core.Map json_)
      : this(
          resourceVersion: json_.containsKey('resourceVersion')
              ? json_['resourceVersion'] as core.String
              : null,
          window: json_.containsKey('window')
              ? MaintenanceWindow.fromJson(
                  json_['window'] as core.Map<core.String, core.dynamic>)
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

  MaintenanceWindow.fromJson(core.Map json_)
      : this(
          dailyMaintenanceWindow: json_.containsKey('dailyMaintenanceWindow')
              ? DailyMaintenanceWindow.fromJson(json_['dailyMaintenanceWindow']
                  as core.Map<core.String, core.dynamic>)
              : null,
          maintenanceExclusions: json_.containsKey('maintenanceExclusions')
              ? (json_['maintenanceExclusions']
                      as core.Map<core.String, core.dynamic>)
                  .map(
                  (key, value) => core.MapEntry(
                    key,
                    TimeWindow.fromJson(
                        value as core.Map<core.String, core.dynamic>),
                  ),
                )
              : null,
          recurringWindow: json_.containsKey('recurringWindow')
              ? RecurringTimeWindow.fromJson(json_['recurringWindow']
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

/// ManagedPrometheusConfig defines the configuration for Google Cloud Managed
/// Service for Prometheus.
class ManagedPrometheusConfig {
  /// Enable Managed Collection.
  core.bool? enabled;

  ManagedPrometheusConfig({
    this.enabled,
  });

  ManagedPrometheusConfig.fromJson(core.Map json_)
      : this(
          enabled: json_.containsKey('enabled')
              ? json_['enabled'] as core.bool
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (enabled != null) 'enabled': enabled!,
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
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  core.String? password;

  /// The username to use for HTTP basic authentication to the master endpoint.
  ///
  /// For clusters v1.6.0 and later, basic authentication can be disabled by
  /// leaving username unspecified (or setting it to the empty string). Warning:
  /// basic authentication is deprecated, and will be removed in GKE control
  /// plane versions 1.19 and newer. For a list of recommended authentication
  /// methods, see:
  /// https://cloud.google.com/kubernetes-engine/docs/how-to/api-server-authentication
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  core.String? username;

  MasterAuth({
    this.clientCertificate,
    this.clientCertificateConfig,
    this.clientKey,
    this.clusterCaCertificate,
    this.password,
    this.username,
  });

  MasterAuth.fromJson(core.Map json_)
      : this(
          clientCertificate: json_.containsKey('clientCertificate')
              ? json_['clientCertificate'] as core.String
              : null,
          clientCertificateConfig: json_.containsKey('clientCertificateConfig')
              ? ClientCertificateConfig.fromJson(
                  json_['clientCertificateConfig']
                      as core.Map<core.String, core.dynamic>)
              : null,
          clientKey: json_.containsKey('clientKey')
              ? json_['clientKey'] as core.String
              : null,
          clusterCaCertificate: json_.containsKey('clusterCaCertificate')
              ? json_['clusterCaCertificate'] as core.String
              : null,
          password: json_.containsKey('password')
              ? json_['password'] as core.String
              : null,
          username: json_.containsKey('username')
              ? json_['username'] as core.String
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

  /// Whether master is accessbile via Google Compute Engine Public IP
  /// addresses.
  core.bool? gcpPublicCidrsAccessEnabled;

  MasterAuthorizedNetworksConfig({
    this.cidrBlocks,
    this.enabled,
    this.gcpPublicCidrsAccessEnabled,
  });

  MasterAuthorizedNetworksConfig.fromJson(core.Map json_)
      : this(
          cidrBlocks: json_.containsKey('cidrBlocks')
              ? (json_['cidrBlocks'] as core.List)
                  .map((value) => CidrBlock.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          enabled: json_.containsKey('enabled')
              ? json_['enabled'] as core.bool
              : null,
          gcpPublicCidrsAccessEnabled:
              json_.containsKey('gcpPublicCidrsAccessEnabled')
                  ? json_['gcpPublicCidrsAccessEnabled'] as core.bool
                  : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (cidrBlocks != null) 'cidrBlocks': cidrBlocks!,
        if (enabled != null) 'enabled': enabled!,
        if (gcpPublicCidrsAccessEnabled != null)
          'gcpPublicCidrsAccessEnabled': gcpPublicCidrsAccessEnabled!,
      };
}

/// Constraints applied to pods.
class MaxPodsConstraint {
  /// Constraint enforced on the max num of pods per node.
  core.String? maxPodsPerNode;

  MaxPodsConstraint({
    this.maxPodsPerNode,
  });

  MaxPodsConstraint.fromJson(core.Map json_)
      : this(
          maxPodsPerNode: json_.containsKey('maxPodsPerNode')
              ? json_['maxPodsPerNode'] as core.String
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

  MeshCertificates.fromJson(core.Map json_)
      : this(
          enableCertificates: json_.containsKey('enableCertificates')
              ? json_['enableCertificates'] as core.bool
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

  Metric.fromJson(core.Map json_)
      : this(
          doubleValue: json_.containsKey('doubleValue')
              ? (json_['doubleValue'] as core.num).toDouble()
              : null,
          intValue: json_.containsKey('intValue')
              ? json_['intValue'] as core.String
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          stringValue: json_.containsKey('stringValue')
              ? json_['stringValue'] as core.String
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

  MonitoringComponentConfig.fromJson(core.Map json_)
      : this(
          enableComponents: json_.containsKey('enableComponents')
              ? (json_['enableComponents'] as core.List)
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
  /// Configuration of Advanced Datapath Observability features.
  AdvancedDatapathObservabilityConfig? advancedDatapathObservabilityConfig;

  /// Monitoring components configuration
  MonitoringComponentConfig? componentConfig;

  /// Enable Google Cloud Managed Service for Prometheus in the cluster.
  ManagedPrometheusConfig? managedPrometheusConfig;

  MonitoringConfig({
    this.advancedDatapathObservabilityConfig,
    this.componentConfig,
    this.managedPrometheusConfig,
  });

  MonitoringConfig.fromJson(core.Map json_)
      : this(
          advancedDatapathObservabilityConfig:
              json_.containsKey('advancedDatapathObservabilityConfig')
                  ? AdvancedDatapathObservabilityConfig.fromJson(
                      json_['advancedDatapathObservabilityConfig']
                          as core.Map<core.String, core.dynamic>)
                  : null,
          componentConfig: json_.containsKey('componentConfig')
              ? MonitoringComponentConfig.fromJson(json_['componentConfig']
                  as core.Map<core.String, core.dynamic>)
              : null,
          managedPrometheusConfig: json_.containsKey('managedPrometheusConfig')
              ? ManagedPrometheusConfig.fromJson(
                  json_['managedPrometheusConfig']
                      as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (advancedDatapathObservabilityConfig != null)
          'advancedDatapathObservabilityConfig':
              advancedDatapathObservabilityConfig!,
        if (componentConfig != null) 'componentConfig': componentConfig!,
        if (managedPrometheusConfig != null)
          'managedPrometheusConfig': managedPrometheusConfig!,
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

  /// Whether CiliumClusterwideNetworkPolicy is enabled on this cluster.
  core.bool? enableCiliumClusterwideNetworkPolicy;

  /// Whether FQDN Network Policy is enabled on this cluster.
  core.bool? enableFqdnNetworkPolicy;

  /// Whether Intra-node visibility is enabled for this cluster.
  ///
  /// This makes same node pod to pod traffic visible for VPC network.
  core.bool? enableIntraNodeVisibility;

  /// Whether L4ILB Subsetting is enabled for this cluster.
  core.bool? enableL4ilbSubsetting;

  /// Whether multi-networking is enabled for this cluster.
  core.bool? enableMultiNetworking;

  /// GatewayAPIConfig contains the desired config of Gateway API on this
  /// cluster.
  GatewayAPIConfig? gatewayApiConfig;

  /// Specify the details of in-transit encryption.
  /// Possible string values are:
  /// - "IN_TRANSIT_ENCRYPTION_CONFIG_UNSPECIFIED" : Unspecified, will be
  /// inferred as default - IN_TRANSIT_ENCRYPTION_UNSPECIFIED.
  /// - "IN_TRANSIT_ENCRYPTION_DISABLED" : In-transit encryption is disabled.
  /// - "IN_TRANSIT_ENCRYPTION_INTER_NODE_TRANSPARENT" : Data in-transit is
  /// encrypted using inter-node transparent encryption.
  core.String? inTransitEncryptionConfig;

  /// The relative name of the Google Compute Engine
  /// network(https://cloud.google.com/compute/docs/networks-and-firewalls#networks)
  /// to which the cluster is connected.
  ///
  /// Example: projects/my-project/global/networks/my-network
  ///
  /// Output only.
  core.String? network;

  /// Network bandwidth tier configuration.
  ClusterNetworkPerformanceConfig? networkPerformanceConfig;

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
  /// - "PRIVATE_IPV6_GOOGLE_ACCESS_BIDIRECTIONAL" : Enables private IPv6 access
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
    this.enableCiliumClusterwideNetworkPolicy,
    this.enableFqdnNetworkPolicy,
    this.enableIntraNodeVisibility,
    this.enableL4ilbSubsetting,
    this.enableMultiNetworking,
    this.gatewayApiConfig,
    this.inTransitEncryptionConfig,
    this.network,
    this.networkPerformanceConfig,
    this.privateIpv6GoogleAccess,
    this.serviceExternalIpsConfig,
    this.subnetwork,
  });

  NetworkConfig.fromJson(core.Map json_)
      : this(
          datapathProvider: json_.containsKey('datapathProvider')
              ? json_['datapathProvider'] as core.String
              : null,
          defaultSnatStatus: json_.containsKey('defaultSnatStatus')
              ? DefaultSnatStatus.fromJson(json_['defaultSnatStatus']
                  as core.Map<core.String, core.dynamic>)
              : null,
          dnsConfig: json_.containsKey('dnsConfig')
              ? DNSConfig.fromJson(
                  json_['dnsConfig'] as core.Map<core.String, core.dynamic>)
              : null,
          enableCiliumClusterwideNetworkPolicy:
              json_.containsKey('enableCiliumClusterwideNetworkPolicy')
                  ? json_['enableCiliumClusterwideNetworkPolicy'] as core.bool
                  : null,
          enableFqdnNetworkPolicy: json_.containsKey('enableFqdnNetworkPolicy')
              ? json_['enableFqdnNetworkPolicy'] as core.bool
              : null,
          enableIntraNodeVisibility:
              json_.containsKey('enableIntraNodeVisibility')
                  ? json_['enableIntraNodeVisibility'] as core.bool
                  : null,
          enableL4ilbSubsetting: json_.containsKey('enableL4ilbSubsetting')
              ? json_['enableL4ilbSubsetting'] as core.bool
              : null,
          enableMultiNetworking: json_.containsKey('enableMultiNetworking')
              ? json_['enableMultiNetworking'] as core.bool
              : null,
          gatewayApiConfig: json_.containsKey('gatewayApiConfig')
              ? GatewayAPIConfig.fromJson(json_['gatewayApiConfig']
                  as core.Map<core.String, core.dynamic>)
              : null,
          inTransitEncryptionConfig:
              json_.containsKey('inTransitEncryptionConfig')
                  ? json_['inTransitEncryptionConfig'] as core.String
                  : null,
          network: json_.containsKey('network')
              ? json_['network'] as core.String
              : null,
          networkPerformanceConfig:
              json_.containsKey('networkPerformanceConfig')
                  ? ClusterNetworkPerformanceConfig.fromJson(
                      json_['networkPerformanceConfig']
                          as core.Map<core.String, core.dynamic>)
                  : null,
          privateIpv6GoogleAccess: json_.containsKey('privateIpv6GoogleAccess')
              ? json_['privateIpv6GoogleAccess'] as core.String
              : null,
          serviceExternalIpsConfig:
              json_.containsKey('serviceExternalIpsConfig')
                  ? ServiceExternalIPsConfig.fromJson(
                      json_['serviceExternalIpsConfig']
                          as core.Map<core.String, core.dynamic>)
                  : null,
          subnetwork: json_.containsKey('subnetwork')
              ? json_['subnetwork'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (datapathProvider != null) 'datapathProvider': datapathProvider!,
        if (defaultSnatStatus != null) 'defaultSnatStatus': defaultSnatStatus!,
        if (dnsConfig != null) 'dnsConfig': dnsConfig!,
        if (enableCiliumClusterwideNetworkPolicy != null)
          'enableCiliumClusterwideNetworkPolicy':
              enableCiliumClusterwideNetworkPolicy!,
        if (enableFqdnNetworkPolicy != null)
          'enableFqdnNetworkPolicy': enableFqdnNetworkPolicy!,
        if (enableIntraNodeVisibility != null)
          'enableIntraNodeVisibility': enableIntraNodeVisibility!,
        if (enableL4ilbSubsetting != null)
          'enableL4ilbSubsetting': enableL4ilbSubsetting!,
        if (enableMultiNetworking != null)
          'enableMultiNetworking': enableMultiNetworking!,
        if (gatewayApiConfig != null) 'gatewayApiConfig': gatewayApiConfig!,
        if (inTransitEncryptionConfig != null)
          'inTransitEncryptionConfig': inTransitEncryptionConfig!,
        if (network != null) 'network': network!,
        if (networkPerformanceConfig != null)
          'networkPerformanceConfig': networkPerformanceConfig!,
        if (privateIpv6GoogleAccess != null)
          'privateIpv6GoogleAccess': privateIpv6GoogleAccess!,
        if (serviceExternalIpsConfig != null)
          'serviceExternalIpsConfig': serviceExternalIpsConfig!,
        if (subnetwork != null) 'subnetwork': subnetwork!,
      };
}

/// Configuration of all network bandwidth tiers
class NetworkPerformanceConfig {
  /// Specifies the total network bandwidth tier for the NodePool.
  /// Possible string values are:
  /// - "TIER_UNSPECIFIED" : Default value
  /// - "TIER_1" : Higher bandwidth, actual values based on VM size.
  core.String? totalEgressBandwidthTier;

  NetworkPerformanceConfig({
    this.totalEgressBandwidthTier,
  });

  NetworkPerformanceConfig.fromJson(core.Map json_)
      : this(
          totalEgressBandwidthTier:
              json_.containsKey('totalEgressBandwidthTier')
                  ? json_['totalEgressBandwidthTier'] as core.String
                  : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (totalEgressBandwidthTier != null)
          'totalEgressBandwidthTier': totalEgressBandwidthTier!,
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

  NetworkPolicy.fromJson(core.Map json_)
      : this(
          enabled: json_.containsKey('enabled')
              ? json_['enabled'] as core.bool
              : null,
          provider: json_.containsKey('provider')
              ? json_['provider'] as core.String
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

  NetworkPolicyConfig.fromJson(core.Map json_)
      : this(
          disabled: json_.containsKey('disabled')
              ? json_['disabled'] as core.bool
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

  NetworkTags.fromJson(core.Map json_)
      : this(
          tags: json_.containsKey('tags')
              ? (json_['tags'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (tags != null) 'tags': tags!,
      };
}

/// Specifies the NodeAffinity key, values, and affinity operator according to
/// [shared sole tenant node group affinities](https://cloud.google.com/compute/docs/nodes/sole-tenant-nodes#node_affinity_and_anti-affinity).
class NodeAffinity {
  /// Key for NodeAffinity.
  core.String? key;

  /// Operator for NodeAffinity.
  /// Possible string values are:
  /// - "OPERATOR_UNSPECIFIED" : Invalid or unspecified affinity operator.
  /// - "IN" : Affinity operator.
  /// - "NOT_IN" : Anti-affinity operator.
  core.String? operator;

  /// Values for NodeAffinity.
  core.List<core.String>? values;

  NodeAffinity({
    this.key,
    this.operator,
    this.values,
  });

  NodeAffinity.fromJson(core.Map json_)
      : this(
          key: json_.containsKey('key') ? json_['key'] as core.String : null,
          operator: json_.containsKey('operator')
              ? json_['operator'] as core.String
              : null,
          values: json_.containsKey('values')
              ? (json_['values'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (key != null) 'key': key!,
        if (operator != null) 'operator': operator!,
        if (values != null) 'values': values!,
      };
}

/// Parameters that describe the nodes in a cluster.
///
/// GKE Autopilot clusters do not recognize parameters in `NodeConfig`. Use
/// AutoprovisioningNodePoolDefaults instead.
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

  /// Confidential nodes config.
  ///
  /// All the nodes in the node pool will be Confidential VM once enabled.
  ConfidentialNodes? confidentialNodes;

  /// Parameters for containerd customization.
  ContainerdConfig? containerdConfig;

  /// Size of the disk attached to each node, specified in GB.
  ///
  /// The smallest allowed disk size is 10GB. If unspecified, the default disk
  /// size is 100GB.
  core.int? diskSizeGb;

  /// Type of the disk attached to each node (e.g. 'pd-standard', 'pd-ssd' or
  /// 'pd-balanced') If unspecified, the default disk type is 'pd-standard'
  core.String? diskType;

  /// Reserved for future use.
  ///
  /// Optional.
  core.bool? enableConfidentialStorage;

  /// Parameters for the node ephemeral storage using Local SSDs.
  ///
  /// If unspecified, ephemeral storage is backed by the boot disk.
  EphemeralStorageLocalSsdConfig? ephemeralStorageLocalSsdConfig;

  /// Enable or disable NCCL fast socket for the node pool.
  FastSocket? fastSocket;

  /// Google Container File System (image streaming) configs.
  GcfsConfig? gcfsConfig;

  /// Enable or disable gvnic in the node pool.
  VirtualNIC? gvnic;

  /// The image type to use for this node.
  ///
  /// Note that for a given image type, the latest version of it will be used.
  /// Please see
  /// https://cloud.google.com/kubernetes-engine/docs/concepts/node-images for
  /// available image types.
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

  /// Parameters for using raw-block Local NVMe SSDs.
  LocalNvmeSsdBlockConfig? localNvmeSsdBlockConfig;

  /// The number of local SSD disks to be attached to the node.
  ///
  /// The limit for this value is dependent upon the maximum number of disks
  /// available on a machine per zone. See:
  /// https://cloud.google.com/compute/docs/disks/local-ssd for more
  /// information.
  core.int? localSsdCount;

  /// Logging configuration.
  NodePoolLoggingConfig? loggingConfig;

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

  /// The resource labels for the node pool to use to annotate any related
  /// Google Compute Engine resources.
  core.Map<core.String, core.String>? resourceLabels;

  /// A map of resource manager tag keys and values to be attached to the nodes.
  ResourceManagerTags? resourceManagerTags;

  /// Sandbox configuration for this node.
  SandboxConfig? sandboxConfig;

  /// Secondary boot disk update strategy.
  SecondaryBootDiskUpdateStrategy? secondaryBootDiskUpdateStrategy;

  /// List of secondary boot disks attached to the nodes.
  core.List<SecondaryBootDisk>? secondaryBootDisks;

  /// The Google Cloud Platform Service Account to be used by the node VMs.
  ///
  /// Specify the email address of the Service Account; otherwise, if no Service
  /// Account is specified, the "default" service account is used.
  core.String? serviceAccount;

  /// Shielded Instance options.
  ShieldedInstanceConfig? shieldedInstanceConfig;

  /// Parameters for node pools to be backed by shared sole tenant node groups.
  SoleTenantConfig? soleTenantConfig;

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

  /// Parameters that can be configured on Windows nodes.
  WindowsNodeConfig? windowsNodeConfig;

  /// The workload metadata configuration for this node.
  WorkloadMetadataConfig? workloadMetadataConfig;

  NodeConfig({
    this.accelerators,
    this.advancedMachineFeatures,
    this.bootDiskKmsKey,
    this.confidentialNodes,
    this.containerdConfig,
    this.diskSizeGb,
    this.diskType,
    this.enableConfidentialStorage,
    this.ephemeralStorageLocalSsdConfig,
    this.fastSocket,
    this.gcfsConfig,
    this.gvnic,
    this.imageType,
    this.kubeletConfig,
    this.labels,
    this.linuxNodeConfig,
    this.localNvmeSsdBlockConfig,
    this.localSsdCount,
    this.loggingConfig,
    this.machineType,
    this.metadata,
    this.minCpuPlatform,
    this.nodeGroup,
    this.oauthScopes,
    this.preemptible,
    this.reservationAffinity,
    this.resourceLabels,
    this.resourceManagerTags,
    this.sandboxConfig,
    this.secondaryBootDiskUpdateStrategy,
    this.secondaryBootDisks,
    this.serviceAccount,
    this.shieldedInstanceConfig,
    this.soleTenantConfig,
    this.spot,
    this.tags,
    this.taints,
    this.windowsNodeConfig,
    this.workloadMetadataConfig,
  });

  NodeConfig.fromJson(core.Map json_)
      : this(
          accelerators: json_.containsKey('accelerators')
              ? (json_['accelerators'] as core.List)
                  .map((value) => AcceleratorConfig.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          advancedMachineFeatures: json_.containsKey('advancedMachineFeatures')
              ? AdvancedMachineFeatures.fromJson(
                  json_['advancedMachineFeatures']
                      as core.Map<core.String, core.dynamic>)
              : null,
          bootDiskKmsKey: json_.containsKey('bootDiskKmsKey')
              ? json_['bootDiskKmsKey'] as core.String
              : null,
          confidentialNodes: json_.containsKey('confidentialNodes')
              ? ConfidentialNodes.fromJson(json_['confidentialNodes']
                  as core.Map<core.String, core.dynamic>)
              : null,
          containerdConfig: json_.containsKey('containerdConfig')
              ? ContainerdConfig.fromJson(json_['containerdConfig']
                  as core.Map<core.String, core.dynamic>)
              : null,
          diskSizeGb: json_.containsKey('diskSizeGb')
              ? json_['diskSizeGb'] as core.int
              : null,
          diskType: json_.containsKey('diskType')
              ? json_['diskType'] as core.String
              : null,
          enableConfidentialStorage:
              json_.containsKey('enableConfidentialStorage')
                  ? json_['enableConfidentialStorage'] as core.bool
                  : null,
          ephemeralStorageLocalSsdConfig:
              json_.containsKey('ephemeralStorageLocalSsdConfig')
                  ? EphemeralStorageLocalSsdConfig.fromJson(
                      json_['ephemeralStorageLocalSsdConfig']
                          as core.Map<core.String, core.dynamic>)
                  : null,
          fastSocket: json_.containsKey('fastSocket')
              ? FastSocket.fromJson(
                  json_['fastSocket'] as core.Map<core.String, core.dynamic>)
              : null,
          gcfsConfig: json_.containsKey('gcfsConfig')
              ? GcfsConfig.fromJson(
                  json_['gcfsConfig'] as core.Map<core.String, core.dynamic>)
              : null,
          gvnic: json_.containsKey('gvnic')
              ? VirtualNIC.fromJson(
                  json_['gvnic'] as core.Map<core.String, core.dynamic>)
              : null,
          imageType: json_.containsKey('imageType')
              ? json_['imageType'] as core.String
              : null,
          kubeletConfig: json_.containsKey('kubeletConfig')
              ? NodeKubeletConfig.fromJson(
                  json_['kubeletConfig'] as core.Map<core.String, core.dynamic>)
              : null,
          labels: json_.containsKey('labels')
              ? (json_['labels'] as core.Map<core.String, core.dynamic>).map(
                  (key, value) => core.MapEntry(
                    key,
                    value as core.String,
                  ),
                )
              : null,
          linuxNodeConfig: json_.containsKey('linuxNodeConfig')
              ? LinuxNodeConfig.fromJson(json_['linuxNodeConfig']
                  as core.Map<core.String, core.dynamic>)
              : null,
          localNvmeSsdBlockConfig: json_.containsKey('localNvmeSsdBlockConfig')
              ? LocalNvmeSsdBlockConfig.fromJson(
                  json_['localNvmeSsdBlockConfig']
                      as core.Map<core.String, core.dynamic>)
              : null,
          localSsdCount: json_.containsKey('localSsdCount')
              ? json_['localSsdCount'] as core.int
              : null,
          loggingConfig: json_.containsKey('loggingConfig')
              ? NodePoolLoggingConfig.fromJson(
                  json_['loggingConfig'] as core.Map<core.String, core.dynamic>)
              : null,
          machineType: json_.containsKey('machineType')
              ? json_['machineType'] as core.String
              : null,
          metadata: json_.containsKey('metadata')
              ? (json_['metadata'] as core.Map<core.String, core.dynamic>).map(
                  (key, value) => core.MapEntry(
                    key,
                    value as core.String,
                  ),
                )
              : null,
          minCpuPlatform: json_.containsKey('minCpuPlatform')
              ? json_['minCpuPlatform'] as core.String
              : null,
          nodeGroup: json_.containsKey('nodeGroup')
              ? json_['nodeGroup'] as core.String
              : null,
          oauthScopes: json_.containsKey('oauthScopes')
              ? (json_['oauthScopes'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          preemptible: json_.containsKey('preemptible')
              ? json_['preemptible'] as core.bool
              : null,
          reservationAffinity: json_.containsKey('reservationAffinity')
              ? ReservationAffinity.fromJson(json_['reservationAffinity']
                  as core.Map<core.String, core.dynamic>)
              : null,
          resourceLabels: json_.containsKey('resourceLabels')
              ? (json_['resourceLabels'] as core.Map<core.String, core.dynamic>)
                  .map(
                  (key, value) => core.MapEntry(
                    key,
                    value as core.String,
                  ),
                )
              : null,
          resourceManagerTags: json_.containsKey('resourceManagerTags')
              ? ResourceManagerTags.fromJson(json_['resourceManagerTags']
                  as core.Map<core.String, core.dynamic>)
              : null,
          sandboxConfig: json_.containsKey('sandboxConfig')
              ? SandboxConfig.fromJson(
                  json_['sandboxConfig'] as core.Map<core.String, core.dynamic>)
              : null,
          secondaryBootDiskUpdateStrategy:
              json_.containsKey('secondaryBootDiskUpdateStrategy')
                  ? SecondaryBootDiskUpdateStrategy.fromJson(
                      json_['secondaryBootDiskUpdateStrategy']
                          as core.Map<core.String, core.dynamic>)
                  : null,
          secondaryBootDisks: json_.containsKey('secondaryBootDisks')
              ? (json_['secondaryBootDisks'] as core.List)
                  .map((value) => SecondaryBootDisk.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          serviceAccount: json_.containsKey('serviceAccount')
              ? json_['serviceAccount'] as core.String
              : null,
          shieldedInstanceConfig: json_.containsKey('shieldedInstanceConfig')
              ? ShieldedInstanceConfig.fromJson(json_['shieldedInstanceConfig']
                  as core.Map<core.String, core.dynamic>)
              : null,
          soleTenantConfig: json_.containsKey('soleTenantConfig')
              ? SoleTenantConfig.fromJson(json_['soleTenantConfig']
                  as core.Map<core.String, core.dynamic>)
              : null,
          spot: json_.containsKey('spot') ? json_['spot'] as core.bool : null,
          tags: json_.containsKey('tags')
              ? (json_['tags'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          taints: json_.containsKey('taints')
              ? (json_['taints'] as core.List)
                  .map((value) => NodeTaint.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          windowsNodeConfig: json_.containsKey('windowsNodeConfig')
              ? WindowsNodeConfig.fromJson(json_['windowsNodeConfig']
                  as core.Map<core.String, core.dynamic>)
              : null,
          workloadMetadataConfig: json_.containsKey('workloadMetadataConfig')
              ? WorkloadMetadataConfig.fromJson(json_['workloadMetadataConfig']
                  as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (accelerators != null) 'accelerators': accelerators!,
        if (advancedMachineFeatures != null)
          'advancedMachineFeatures': advancedMachineFeatures!,
        if (bootDiskKmsKey != null) 'bootDiskKmsKey': bootDiskKmsKey!,
        if (confidentialNodes != null) 'confidentialNodes': confidentialNodes!,
        if (containerdConfig != null) 'containerdConfig': containerdConfig!,
        if (diskSizeGb != null) 'diskSizeGb': diskSizeGb!,
        if (diskType != null) 'diskType': diskType!,
        if (enableConfidentialStorage != null)
          'enableConfidentialStorage': enableConfidentialStorage!,
        if (ephemeralStorageLocalSsdConfig != null)
          'ephemeralStorageLocalSsdConfig': ephemeralStorageLocalSsdConfig!,
        if (fastSocket != null) 'fastSocket': fastSocket!,
        if (gcfsConfig != null) 'gcfsConfig': gcfsConfig!,
        if (gvnic != null) 'gvnic': gvnic!,
        if (imageType != null) 'imageType': imageType!,
        if (kubeletConfig != null) 'kubeletConfig': kubeletConfig!,
        if (labels != null) 'labels': labels!,
        if (linuxNodeConfig != null) 'linuxNodeConfig': linuxNodeConfig!,
        if (localNvmeSsdBlockConfig != null)
          'localNvmeSsdBlockConfig': localNvmeSsdBlockConfig!,
        if (localSsdCount != null) 'localSsdCount': localSsdCount!,
        if (loggingConfig != null) 'loggingConfig': loggingConfig!,
        if (machineType != null) 'machineType': machineType!,
        if (metadata != null) 'metadata': metadata!,
        if (minCpuPlatform != null) 'minCpuPlatform': minCpuPlatform!,
        if (nodeGroup != null) 'nodeGroup': nodeGroup!,
        if (oauthScopes != null) 'oauthScopes': oauthScopes!,
        if (preemptible != null) 'preemptible': preemptible!,
        if (reservationAffinity != null)
          'reservationAffinity': reservationAffinity!,
        if (resourceLabels != null) 'resourceLabels': resourceLabels!,
        if (resourceManagerTags != null)
          'resourceManagerTags': resourceManagerTags!,
        if (sandboxConfig != null) 'sandboxConfig': sandboxConfig!,
        if (secondaryBootDiskUpdateStrategy != null)
          'secondaryBootDiskUpdateStrategy': secondaryBootDiskUpdateStrategy!,
        if (secondaryBootDisks != null)
          'secondaryBootDisks': secondaryBootDisks!,
        if (serviceAccount != null) 'serviceAccount': serviceAccount!,
        if (shieldedInstanceConfig != null)
          'shieldedInstanceConfig': shieldedInstanceConfig!,
        if (soleTenantConfig != null) 'soleTenantConfig': soleTenantConfig!,
        if (spot != null) 'spot': spot!,
        if (tags != null) 'tags': tags!,
        if (taints != null) 'taints': taints!,
        if (windowsNodeConfig != null) 'windowsNodeConfig': windowsNodeConfig!,
        if (workloadMetadataConfig != null)
          'workloadMetadataConfig': workloadMetadataConfig!,
      };
}

/// Subset of NodeConfig message that has defaults.
class NodeConfigDefaults {
  /// Parameters for containerd customization.
  ContainerdConfig? containerdConfig;

  /// GCFS (Google Container File System, also known as Riptide) options.
  GcfsConfig? gcfsConfig;

  /// Logging configuration for node pools.
  NodePoolLoggingConfig? loggingConfig;

  NodeConfigDefaults({
    this.containerdConfig,
    this.gcfsConfig,
    this.loggingConfig,
  });

  NodeConfigDefaults.fromJson(core.Map json_)
      : this(
          containerdConfig: json_.containsKey('containerdConfig')
              ? ContainerdConfig.fromJson(json_['containerdConfig']
                  as core.Map<core.String, core.dynamic>)
              : null,
          gcfsConfig: json_.containsKey('gcfsConfig')
              ? GcfsConfig.fromJson(
                  json_['gcfsConfig'] as core.Map<core.String, core.dynamic>)
              : null,
          loggingConfig: json_.containsKey('loggingConfig')
              ? NodePoolLoggingConfig.fromJson(
                  json_['loggingConfig'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (containerdConfig != null) 'containerdConfig': containerdConfig!,
        if (gcfsConfig != null) 'gcfsConfig': gcfsConfig!,
        if (loggingConfig != null) 'loggingConfig': loggingConfig!,
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

  /// Enable or disable Kubelet read only port.
  core.bool? insecureKubeletReadonlyPortEnabled;

  /// Set the Pod PID limits.
  ///
  /// See
  /// https://kubernetes.io/docs/concepts/policy/pid-limiting/#pod-pid-limits
  /// Controls the maximum number of processes allowed to run in a pod. The
  /// value must be greater than or equal to 1024 and less than 4194304.
  core.String? podPidsLimit;

  NodeKubeletConfig({
    this.cpuCfsQuota,
    this.cpuCfsQuotaPeriod,
    this.cpuManagerPolicy,
    this.insecureKubeletReadonlyPortEnabled,
    this.podPidsLimit,
  });

  NodeKubeletConfig.fromJson(core.Map json_)
      : this(
          cpuCfsQuota: json_.containsKey('cpuCfsQuota')
              ? json_['cpuCfsQuota'] as core.bool
              : null,
          cpuCfsQuotaPeriod: json_.containsKey('cpuCfsQuotaPeriod')
              ? json_['cpuCfsQuotaPeriod'] as core.String
              : null,
          cpuManagerPolicy: json_.containsKey('cpuManagerPolicy')
              ? json_['cpuManagerPolicy'] as core.String
              : null,
          insecureKubeletReadonlyPortEnabled:
              json_.containsKey('insecureKubeletReadonlyPortEnabled')
                  ? json_['insecureKubeletReadonlyPortEnabled'] as core.bool
                  : null,
          podPidsLimit: json_.containsKey('podPidsLimit')
              ? json_['podPidsLimit'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (cpuCfsQuota != null) 'cpuCfsQuota': cpuCfsQuota!,
        if (cpuCfsQuotaPeriod != null) 'cpuCfsQuotaPeriod': cpuCfsQuotaPeriod!,
        if (cpuManagerPolicy != null) 'cpuManagerPolicy': cpuManagerPolicy!,
        if (insecureKubeletReadonlyPortEnabled != null)
          'insecureKubeletReadonlyPortEnabled':
              insecureKubeletReadonlyPortEnabled!,
        if (podPidsLimit != null) 'podPidsLimit': podPidsLimit!,
      };
}

/// Collection of node-level
/// [Kubernetes labels](https://kubernetes.io/docs/concepts/overview/working-with-objects/labels).
typedef NodeLabels = $Labels;

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

  NodeManagement.fromJson(core.Map json_)
      : this(
          autoRepair: json_.containsKey('autoRepair')
              ? json_['autoRepair'] as core.bool
              : null,
          autoUpgrade: json_.containsKey('autoUpgrade')
              ? json_['autoUpgrade'] as core.bool
              : null,
          upgradeOptions: json_.containsKey('upgradeOptions')
              ? AutoUpgradeOptions.fromJson(json_['upgradeOptions']
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
  /// We specify the additional node networks for this node pool using this
  /// list.
  ///
  /// Each node network corresponds to an additional interface
  core.List<AdditionalNodeNetworkConfig>? additionalNodeNetworkConfigs;

  /// We specify the additional pod networks for this node pool using this list.
  ///
  /// Each pod network corresponds to an additional alias IP range for the node
  core.List<AdditionalPodNetworkConfig>? additionalPodNetworkConfigs;

  /// Input only.
  ///
  /// Whether to create a new range for pod IPs in this node pool. Defaults are
  /// provided for `pod_range` and `pod_ipv4_cidr_block` if they are not
  /// specified. If neither `create_pod_range` or `pod_range` are specified, the
  /// cluster-level default (`ip_allocation_policy.cluster_ipv4_cidr_block`) is
  /// used. Only applicable if `ip_allocation_policy.use_ip_aliases` is true.
  /// This field cannot be changed after the node pool has been created.
  core.bool? createPodRange;

  /// Whether nodes have internal IP addresses only.
  ///
  /// If enable_private_nodes is not specified, then the value is derived from
  /// cluster.privateClusterConfig.enablePrivateNodes
  core.bool? enablePrivateNodes;

  /// Network bandwidth tier configuration.
  NetworkPerformanceConfig? networkPerformanceConfig;

  /// \[PRIVATE FIELD\] Pod CIDR size overprovisioning config for the nodepool.
  ///
  /// Pod CIDR size per node depends on max_pods_per_node. By default, the value
  /// of max_pods_per_node is rounded off to next power of 2 and we then double
  /// that to get the size of pod CIDR block per node. Example:
  /// max_pods_per_node of 30 would result in 64 IPs (/26). This config can
  /// disable the doubling of IPs (we still round off to next power of 2)
  /// Example: max_pods_per_node of 30 will result in 32 IPs (/27) when
  /// overprovisioning is disabled.
  PodCIDROverprovisionConfig? podCidrOverprovisionConfig;

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

  /// The utilization of the IPv4 range for the pod.
  ///
  /// The ratio is Usage/\[Total number of IPs in the secondary range\],
  /// Usage=numNodes*numZones*podIPsPerNode.
  ///
  /// Output only.
  core.double? podIpv4RangeUtilization;

  /// The ID of the secondary range for pod IPs.
  ///
  /// If `create_pod_range` is true, this ID is used for the new range. If
  /// `create_pod_range` is false, uses an existing secondary range with this
  /// ID. Only applicable if `ip_allocation_policy.use_ip_aliases` is true. This
  /// field cannot be changed after the node pool has been created.
  core.String? podRange;

  NodeNetworkConfig({
    this.additionalNodeNetworkConfigs,
    this.additionalPodNetworkConfigs,
    this.createPodRange,
    this.enablePrivateNodes,
    this.networkPerformanceConfig,
    this.podCidrOverprovisionConfig,
    this.podIpv4CidrBlock,
    this.podIpv4RangeUtilization,
    this.podRange,
  });

  NodeNetworkConfig.fromJson(core.Map json_)
      : this(
          additionalNodeNetworkConfigs:
              json_.containsKey('additionalNodeNetworkConfigs')
                  ? (json_['additionalNodeNetworkConfigs'] as core.List)
                      .map((value) => AdditionalNodeNetworkConfig.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                      .toList()
                  : null,
          additionalPodNetworkConfigs:
              json_.containsKey('additionalPodNetworkConfigs')
                  ? (json_['additionalPodNetworkConfigs'] as core.List)
                      .map((value) => AdditionalPodNetworkConfig.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                      .toList()
                  : null,
          createPodRange: json_.containsKey('createPodRange')
              ? json_['createPodRange'] as core.bool
              : null,
          enablePrivateNodes: json_.containsKey('enablePrivateNodes')
              ? json_['enablePrivateNodes'] as core.bool
              : null,
          networkPerformanceConfig:
              json_.containsKey('networkPerformanceConfig')
                  ? NetworkPerformanceConfig.fromJson(
                      json_['networkPerformanceConfig']
                          as core.Map<core.String, core.dynamic>)
                  : null,
          podCidrOverprovisionConfig:
              json_.containsKey('podCidrOverprovisionConfig')
                  ? PodCIDROverprovisionConfig.fromJson(
                      json_['podCidrOverprovisionConfig']
                          as core.Map<core.String, core.dynamic>)
                  : null,
          podIpv4CidrBlock: json_.containsKey('podIpv4CidrBlock')
              ? json_['podIpv4CidrBlock'] as core.String
              : null,
          podIpv4RangeUtilization: json_.containsKey('podIpv4RangeUtilization')
              ? (json_['podIpv4RangeUtilization'] as core.num).toDouble()
              : null,
          podRange: json_.containsKey('podRange')
              ? json_['podRange'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (additionalNodeNetworkConfigs != null)
          'additionalNodeNetworkConfigs': additionalNodeNetworkConfigs!,
        if (additionalPodNetworkConfigs != null)
          'additionalPodNetworkConfigs': additionalPodNetworkConfigs!,
        if (createPodRange != null) 'createPodRange': createPodRange!,
        if (enablePrivateNodes != null)
          'enablePrivateNodes': enablePrivateNodes!,
        if (networkPerformanceConfig != null)
          'networkPerformanceConfig': networkPerformanceConfig!,
        if (podCidrOverprovisionConfig != null)
          'podCidrOverprovisionConfig': podCidrOverprovisionConfig!,
        if (podIpv4CidrBlock != null) 'podIpv4CidrBlock': podIpv4CidrBlock!,
        if (podIpv4RangeUtilization != null)
          'podIpv4RangeUtilization': podIpv4RangeUtilization!,
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

  /// Enable best effort provisioning for nodes
  BestEffortProvisioning? bestEffortProvisioning;

  /// Which conditions caused the current node pool state.
  core.List<StatusCondition>? conditions;

  /// The node configuration of the pool.
  NodeConfig? config;

  /// This checksum is computed by the server based on the value of node pool
  /// fields, and may be sent on update requests to ensure the client has an
  /// up-to-date value before proceeding.
  core.String? etag;

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
  /// During the node pool blue-green upgrade operation, the URLs contain both
  /// blue and green resources.
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

  /// Specifies the node placement policy.
  PlacementPolicy? placementPolicy;

  /// The pod CIDR block size per node in this node pool.
  ///
  /// Output only.
  core.int? podIpv4CidrSize;

  /// Specifies the configuration of queued provisioning.
  QueuedProvisioning? queuedProvisioning;

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
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  core.String? statusMessage;

  /// Update info contains relevant information during a node pool update.
  ///
  /// Output only.
  UpdateInfo? updateInfo;

  /// Upgrade settings control disruption and speed of the upgrade.
  UpgradeSettings? upgradeSettings;

  /// The version of Kubernetes running on this NodePool's nodes.
  ///
  /// If unspecified, it defaults as described
  /// [here](https://cloud.google.com/kubernetes-engine/versioning#specifying_node_version).
  core.String? version;

  NodePool({
    this.autoscaling,
    this.bestEffortProvisioning,
    this.conditions,
    this.config,
    this.etag,
    this.initialNodeCount,
    this.instanceGroupUrls,
    this.locations,
    this.management,
    this.maxPodsConstraint,
    this.name,
    this.networkConfig,
    this.placementPolicy,
    this.podIpv4CidrSize,
    this.queuedProvisioning,
    this.selfLink,
    this.status,
    this.statusMessage,
    this.updateInfo,
    this.upgradeSettings,
    this.version,
  });

  NodePool.fromJson(core.Map json_)
      : this(
          autoscaling: json_.containsKey('autoscaling')
              ? NodePoolAutoscaling.fromJson(
                  json_['autoscaling'] as core.Map<core.String, core.dynamic>)
              : null,
          bestEffortProvisioning: json_.containsKey('bestEffortProvisioning')
              ? BestEffortProvisioning.fromJson(json_['bestEffortProvisioning']
                  as core.Map<core.String, core.dynamic>)
              : null,
          conditions: json_.containsKey('conditions')
              ? (json_['conditions'] as core.List)
                  .map((value) => StatusCondition.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          config: json_.containsKey('config')
              ? NodeConfig.fromJson(
                  json_['config'] as core.Map<core.String, core.dynamic>)
              : null,
          etag: json_.containsKey('etag') ? json_['etag'] as core.String : null,
          initialNodeCount: json_.containsKey('initialNodeCount')
              ? json_['initialNodeCount'] as core.int
              : null,
          instanceGroupUrls: json_.containsKey('instanceGroupUrls')
              ? (json_['instanceGroupUrls'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          locations: json_.containsKey('locations')
              ? (json_['locations'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          management: json_.containsKey('management')
              ? NodeManagement.fromJson(
                  json_['management'] as core.Map<core.String, core.dynamic>)
              : null,
          maxPodsConstraint: json_.containsKey('maxPodsConstraint')
              ? MaxPodsConstraint.fromJson(json_['maxPodsConstraint']
                  as core.Map<core.String, core.dynamic>)
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          networkConfig: json_.containsKey('networkConfig')
              ? NodeNetworkConfig.fromJson(
                  json_['networkConfig'] as core.Map<core.String, core.dynamic>)
              : null,
          placementPolicy: json_.containsKey('placementPolicy')
              ? PlacementPolicy.fromJson(json_['placementPolicy']
                  as core.Map<core.String, core.dynamic>)
              : null,
          podIpv4CidrSize: json_.containsKey('podIpv4CidrSize')
              ? json_['podIpv4CidrSize'] as core.int
              : null,
          queuedProvisioning: json_.containsKey('queuedProvisioning')
              ? QueuedProvisioning.fromJson(json_['queuedProvisioning']
                  as core.Map<core.String, core.dynamic>)
              : null,
          selfLink: json_.containsKey('selfLink')
              ? json_['selfLink'] as core.String
              : null,
          status: json_.containsKey('status')
              ? json_['status'] as core.String
              : null,
          statusMessage: json_.containsKey('statusMessage')
              ? json_['statusMessage'] as core.String
              : null,
          updateInfo: json_.containsKey('updateInfo')
              ? UpdateInfo.fromJson(
                  json_['updateInfo'] as core.Map<core.String, core.dynamic>)
              : null,
          upgradeSettings: json_.containsKey('upgradeSettings')
              ? UpgradeSettings.fromJson(json_['upgradeSettings']
                  as core.Map<core.String, core.dynamic>)
              : null,
          version: json_.containsKey('version')
              ? json_['version'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (autoscaling != null) 'autoscaling': autoscaling!,
        if (bestEffortProvisioning != null)
          'bestEffortProvisioning': bestEffortProvisioning!,
        if (conditions != null) 'conditions': conditions!,
        if (config != null) 'config': config!,
        if (etag != null) 'etag': etag!,
        if (initialNodeCount != null) 'initialNodeCount': initialNodeCount!,
        if (instanceGroupUrls != null) 'instanceGroupUrls': instanceGroupUrls!,
        if (locations != null) 'locations': locations!,
        if (management != null) 'management': management!,
        if (maxPodsConstraint != null) 'maxPodsConstraint': maxPodsConstraint!,
        if (name != null) 'name': name!,
        if (networkConfig != null) 'networkConfig': networkConfig!,
        if (placementPolicy != null) 'placementPolicy': placementPolicy!,
        if (podIpv4CidrSize != null) 'podIpv4CidrSize': podIpv4CidrSize!,
        if (queuedProvisioning != null)
          'queuedProvisioning': queuedProvisioning!,
        if (selfLink != null) 'selfLink': selfLink!,
        if (status != null) 'status': status!,
        if (statusMessage != null) 'statusMessage': statusMessage!,
        if (updateInfo != null) 'updateInfo': updateInfo!,
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

  /// Resource manager tag keys and values to be attached to the nodes for
  /// managing Compute Engine firewalls using Network Firewall Policies.
  ResourceManagerTags? resourceManagerTags;

  NodePoolAutoConfig({
    this.networkTags,
    this.resourceManagerTags,
  });

  NodePoolAutoConfig.fromJson(core.Map json_)
      : this(
          networkTags: json_.containsKey('networkTags')
              ? NetworkTags.fromJson(
                  json_['networkTags'] as core.Map<core.String, core.dynamic>)
              : null,
          resourceManagerTags: json_.containsKey('resourceManagerTags')
              ? ResourceManagerTags.fromJson(json_['resourceManagerTags']
                  as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (networkTags != null) 'networkTags': networkTags!,
        if (resourceManagerTags != null)
          'resourceManagerTags': resourceManagerTags!,
      };
}

/// NodePoolAutoscaling contains information required by cluster autoscaler to
/// adjust the size of the node pool to the current cluster usage.
class NodePoolAutoscaling {
  /// Can this node pool be deleted automatically.
  core.bool? autoprovisioned;

  /// Is autoscaling enabled for this node pool.
  core.bool? enabled;

  /// Location policy used when scaling up a nodepool.
  /// Possible string values are:
  /// - "LOCATION_POLICY_UNSPECIFIED" : Not set.
  /// - "BALANCED" : BALANCED is a best effort policy that aims to balance the
  /// sizes of different zones.
  /// - "ANY" : ANY policy picks zones that have the highest capacity available.
  core.String? locationPolicy;

  /// Maximum number of nodes for one location in the NodePool.
  ///
  /// Must be \>= min_node_count. There has to be enough quota to scale up the
  /// cluster.
  core.int? maxNodeCount;

  /// Minimum number of nodes for one location in the NodePool.
  ///
  /// Must be \>= 1 and \<= max_node_count.
  core.int? minNodeCount;

  /// Maximum number of nodes in the node pool.
  ///
  /// Must be greater than total_min_node_count. There has to be enough quota to
  /// scale up the cluster. The total_*_node_count fields are mutually exclusive
  /// with the *_node_count fields.
  core.int? totalMaxNodeCount;

  /// Minimum number of nodes in the node pool.
  ///
  /// Must be greater than 1 less than total_max_node_count. The
  /// total_*_node_count fields are mutually exclusive with the *_node_count
  /// fields.
  core.int? totalMinNodeCount;

  NodePoolAutoscaling({
    this.autoprovisioned,
    this.enabled,
    this.locationPolicy,
    this.maxNodeCount,
    this.minNodeCount,
    this.totalMaxNodeCount,
    this.totalMinNodeCount,
  });

  NodePoolAutoscaling.fromJson(core.Map json_)
      : this(
          autoprovisioned: json_.containsKey('autoprovisioned')
              ? json_['autoprovisioned'] as core.bool
              : null,
          enabled: json_.containsKey('enabled')
              ? json_['enabled'] as core.bool
              : null,
          locationPolicy: json_.containsKey('locationPolicy')
              ? json_['locationPolicy'] as core.String
              : null,
          maxNodeCount: json_.containsKey('maxNodeCount')
              ? json_['maxNodeCount'] as core.int
              : null,
          minNodeCount: json_.containsKey('minNodeCount')
              ? json_['minNodeCount'] as core.int
              : null,
          totalMaxNodeCount: json_.containsKey('totalMaxNodeCount')
              ? json_['totalMaxNodeCount'] as core.int
              : null,
          totalMinNodeCount: json_.containsKey('totalMinNodeCount')
              ? json_['totalMinNodeCount'] as core.int
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (autoprovisioned != null) 'autoprovisioned': autoprovisioned!,
        if (enabled != null) 'enabled': enabled!,
        if (locationPolicy != null) 'locationPolicy': locationPolicy!,
        if (maxNodeCount != null) 'maxNodeCount': maxNodeCount!,
        if (minNodeCount != null) 'minNodeCount': minNodeCount!,
        if (totalMaxNodeCount != null) 'totalMaxNodeCount': totalMaxNodeCount!,
        if (totalMinNodeCount != null) 'totalMinNodeCount': totalMinNodeCount!,
      };
}

/// Subset of Nodepool message that has defaults.
class NodePoolDefaults {
  /// Subset of NodeConfig message that has defaults.
  NodeConfigDefaults? nodeConfigDefaults;

  NodePoolDefaults({
    this.nodeConfigDefaults,
  });

  NodePoolDefaults.fromJson(core.Map json_)
      : this(
          nodeConfigDefaults: json_.containsKey('nodeConfigDefaults')
              ? NodeConfigDefaults.fromJson(json_['nodeConfigDefaults']
                  as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (nodeConfigDefaults != null)
          'nodeConfigDefaults': nodeConfigDefaults!,
      };
}

/// NodePoolLoggingConfig specifies logging configuration for nodepools.
class NodePoolLoggingConfig {
  /// Logging variant configuration.
  LoggingVariantConfig? variantConfig;

  NodePoolLoggingConfig({
    this.variantConfig,
  });

  NodePoolLoggingConfig.fromJson(core.Map json_)
      : this(
          variantConfig: json_.containsKey('variantConfig')
              ? LoggingVariantConfig.fromJson(
                  json_['variantConfig'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (variantConfig != null) 'variantConfig': variantConfig!,
      };
}

/// Kubernetes taint is composed of three fields: key, value, and effect.
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

  NodeTaint.fromJson(core.Map json_)
      : this(
          effect: json_.containsKey('effect')
              ? json_['effect'] as core.String
              : null,
          key: json_.containsKey('key') ? json_['key'] as core.String : null,
          value:
              json_.containsKey('value') ? json_['value'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (effect != null) 'effect': effect!,
        if (key != null) 'key': key!,
        if (value != null) 'value': value!,
      };
}

/// Collection of Kubernetes
/// [node taints](https://kubernetes.io/docs/concepts/configuration/taint-and-toleration).
class NodeTaints {
  /// List of node taints.
  core.List<NodeTaint>? taints;

  NodeTaints({
    this.taints,
  });

  NodeTaints.fromJson(core.Map json_)
      : this(
          taints: json_.containsKey('taints')
              ? (json_['taints'] as core.List)
                  .map((value) => NodeTaint.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (taints != null) 'taints': taints!,
      };
}

/// NotificationConfig is the configuration of notifications.
class NotificationConfig {
  /// Notification config for Pub/Sub.
  PubSub? pubsub;

  NotificationConfig({
    this.pubsub,
  });

  NotificationConfig.fromJson(core.Map json_)
      : this(
          pubsub: json_.containsKey('pubsub')
              ? PubSub.fromJson(
                  json_['pubsub'] as core.Map<core.String, core.dynamic>)
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
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
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
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  core.List<StatusCondition>? nodepoolConditions;

  /// The operation type.
  /// Possible string values are:
  /// - "TYPE_UNSPECIFIED" : Not set.
  /// - "CREATE_CLUSTER" : The cluster is being created. The cluster should be
  /// assumed to be unusable until the operation finishes. In the event of the
  /// operation failing, the cluster will enter the ERROR state and eventually
  /// be deleted.
  /// - "DELETE_CLUSTER" : The cluster is being deleted. The cluster should be
  /// assumed to be unusable as soon as this operation starts. In the event of
  /// the operation failing, the cluster will enter the ERROR state and the
  /// deletion will be automatically retried until completed.
  /// - "UPGRADE_MASTER" : The cluster version is being updated. Note that this
  /// includes "upgrades" to the same version, which are simply a recreation.
  /// This also includes
  /// \[auto-upgrades\](https://cloud.google.com/kubernetes-engine/docs/concepts/cluster-upgrades#upgrading_automatically).
  /// For more details, see
  /// [documentation on cluster upgrades](https://cloud.google.com/kubernetes-engine/docs/concepts/cluster-upgrades#cluster_upgrades).
  /// - "UPGRADE_NODES" : A node pool is being updated. Despite calling this an
  /// "upgrade", this includes most forms of updates to node pools. This also
  /// includes
  /// \[auto-upgrades\](https://cloud.google.com/kubernetes-engine/docs/how-to/node-auto-upgrades).
  /// This operation sets the progress field and may be canceled. The upgrade
  /// strategy depends on
  /// [node pool configuration](https://cloud.google.com/kubernetes-engine/docs/concepts/node-pool-upgrade-strategies).
  /// The nodes are generally still usable during this operation.
  /// - "REPAIR_CLUSTER" : A problem has been detected with the control plane
  /// and is being repaired. This operation type is initiated by GKE. For more
  /// details, see
  /// [documentation on repairs](https://cloud.google.com/kubernetes-engine/docs/concepts/maintenance-windows-and-exclusions#repairs).
  /// - "UPDATE_CLUSTER" : The cluster is being updated. This is a broad
  /// category of operations and includes operations that only change metadata
  /// as well as those that must recreate the entire cluster. If the control
  /// plane must be recreated, this will cause temporary downtime for zonal
  /// clusters. Some features require recreating the nodes as well. Those will
  /// be recreated as separate operations and the update may not be completely
  /// functional until the node pools recreations finish. Node recreations will
  /// generally follow
  /// [maintenance policies](https://cloud.google.com/kubernetes-engine/docs/concepts/maintenance-windows-and-exclusions).
  /// Some GKE-initiated operations use this type. This includes certain types
  /// of auto-upgrades and incident mitigations.
  /// - "CREATE_NODE_POOL" : A node pool is being created. The node pool should
  /// be assumed to be unusable until this operation finishes. In the event of
  /// an error, the node pool may be partially created. If enabled,
  /// [node autoprovisioning](https://cloud.google.com/kubernetes-engine/docs/how-to/node-auto-provisioning)
  /// may have automatically initiated such operations.
  /// - "DELETE_NODE_POOL" : The node pool is being deleted. The node pool
  /// should be assumed to be unusable as soon as this operation starts.
  /// - "SET_NODE_POOL_MANAGEMENT" : The node pool's manamagent field is being
  /// updated. These operations only update metadata and may be concurrent with
  /// most other operations.
  /// - "AUTO_REPAIR_NODES" : A problem has been detected with nodes and
  /// [they are being repaired](https://cloud.google.com/kubernetes-engine/docs/how-to/node-auto-repair).
  /// This operation type is initiated by GKE, typically automatically. This
  /// operation may be concurrent with other operations and there may be
  /// multiple repairs occurring on the same node pool.
  /// - "AUTO_UPGRADE_NODES" : Unused. Automatic node upgrade uses
  /// UPGRADE_NODES.
  /// - "SET_LABELS" : Unused. Updating labels uses UPDATE_CLUSTER.
  /// - "SET_MASTER_AUTH" : Unused. Updating master auth uses UPDATE_CLUSTER.
  /// - "SET_NODE_POOL_SIZE" : The node pool is being resized. With the
  /// exception of resizing to or from size zero, the node pool is generally
  /// usable during this operation.
  /// - "SET_NETWORK_POLICY" : Unused. Updating network policy uses
  /// UPDATE_CLUSTER.
  /// - "SET_MAINTENANCE_POLICY" : Unused. Updating maintenance policy uses
  /// UPDATE_CLUSTER.
  /// - "RESIZE_CLUSTER" : The control plane is being resized. This operation
  /// type is initiated by GKE. These operations are often performed
  /// preemptively to ensure that the control plane has sufficient resources and
  /// is not typically an indication of issues. For more details, see
  /// [documentation on resizes](https://cloud.google.com/kubernetes-engine/docs/concepts/maintenance-windows-and-exclusions#repairs).
  /// - "FLEET_FEATURE_UPGRADE" : Fleet features of GKE Enterprise are being
  /// upgraded. The cluster should be assumed to be blocked for other upgrades
  /// until the operation finishes.
  core.String? operationType;

  /// Progress information for an operation.
  ///
  /// Output only.
  OperationProgress? progress;

  /// Server-defined URI for the operation.
  ///
  /// Example:
  /// `https://container.googleapis.com/v1alpha1/projects/123/locations/us-central1/operations/operation-123`.
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
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  core.String? statusMessage;

  /// Server-defined URI for the target of the operation.
  ///
  /// The format of this is a URI to the resource being modified (such as a
  /// cluster, node pool, or node). For node pool repairs, there may be multiple
  /// nodes being repaired, but only one will be the target. Examples: - ##
  /// `https://container.googleapis.com/v1/projects/123/locations/us-central1/clusters/my-cluster`
  /// ##
  /// `https://container.googleapis.com/v1/projects/123/zones/us-central1-c/clusters/my-cluster/nodePools/my-np`
  /// `https://container.googleapis.com/v1/projects/123/zones/us-central1-c/clusters/my-cluster/nodePools/my-np/node/my-node`
  core.String? targetLink;

  /// The name of the Google Compute Engine
  /// [zone](https://cloud.google.com/compute/docs/zones#available) in which the
  /// operation is taking place.
  ///
  /// This field is deprecated, use location instead.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
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

  Operation.fromJson(core.Map json_)
      : this(
          clusterConditions: json_.containsKey('clusterConditions')
              ? (json_['clusterConditions'] as core.List)
                  .map((value) => StatusCondition.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          detail: json_.containsKey('detail')
              ? json_['detail'] as core.String
              : null,
          endTime: json_.containsKey('endTime')
              ? json_['endTime'] as core.String
              : null,
          error: json_.containsKey('error')
              ? Status.fromJson(
                  json_['error'] as core.Map<core.String, core.dynamic>)
              : null,
          location: json_.containsKey('location')
              ? json_['location'] as core.String
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          nodepoolConditions: json_.containsKey('nodepoolConditions')
              ? (json_['nodepoolConditions'] as core.List)
                  .map((value) => StatusCondition.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          operationType: json_.containsKey('operationType')
              ? json_['operationType'] as core.String
              : null,
          progress: json_.containsKey('progress')
              ? OperationProgress.fromJson(
                  json_['progress'] as core.Map<core.String, core.dynamic>)
              : null,
          selfLink: json_.containsKey('selfLink')
              ? json_['selfLink'] as core.String
              : null,
          startTime: json_.containsKey('startTime')
              ? json_['startTime'] as core.String
              : null,
          status: json_.containsKey('status')
              ? json_['status'] as core.String
              : null,
          statusMessage: json_.containsKey('statusMessage')
              ? json_['statusMessage'] as core.String
              : null,
          targetLink: json_.containsKey('targetLink')
              ? json_['targetLink'] as core.String
              : null,
          zone: json_.containsKey('zone') ? json_['zone'] as core.String : null,
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

/// OperationError records errors seen from CloudKMS keys encountered during
/// updates to DatabaseEncryption configuration.
class OperationError {
  /// Description of the error seen during the operation.
  core.String? errorMessage;

  /// CloudKMS key resource that had the error.
  core.String? keyName;

  /// Time when the CloudKMS error was seen.
  core.String? timestamp;

  OperationError({
    this.errorMessage,
    this.keyName,
    this.timestamp,
  });

  OperationError.fromJson(core.Map json_)
      : this(
          errorMessage: json_.containsKey('errorMessage')
              ? json_['errorMessage'] as core.String
              : null,
          keyName: json_.containsKey('keyName')
              ? json_['keyName'] as core.String
              : null,
          timestamp: json_.containsKey('timestamp')
              ? json_['timestamp'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (errorMessage != null) 'errorMessage': errorMessage!,
        if (keyName != null) 'keyName': keyName!,
        if (timestamp != null) 'timestamp': timestamp!,
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

  OperationProgress.fromJson(core.Map json_)
      : this(
          metrics: json_.containsKey('metrics')
              ? (json_['metrics'] as core.List)
                  .map((value) => Metric.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          stages: json_.containsKey('stages')
              ? (json_['stages'] as core.List)
                  .map((value) => OperationProgress.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          status: json_.containsKey('status')
              ? json_['status'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (metrics != null) 'metrics': metrics!,
        if (name != null) 'name': name!,
        if (stages != null) 'stages': stages!,
        if (status != null) 'status': status!,
      };
}

/// ParentProductConfig is the configuration of the parent product of the
/// cluster.
///
/// This field is used by Google internal products that are built on top of a
/// GKE cluster and take the ownership of the cluster.
class ParentProductConfig {
  /// Labels contain the configuration of the parent product.
  core.Map<core.String, core.String>? labels;

  /// Name of the parent product associated with the cluster.
  core.String? productName;

  ParentProductConfig({
    this.labels,
    this.productName,
  });

  ParentProductConfig.fromJson(core.Map json_)
      : this(
          labels: json_.containsKey('labels')
              ? (json_['labels'] as core.Map<core.String, core.dynamic>).map(
                  (key, value) => core.MapEntry(
                    key,
                    value as core.String,
                  ),
                )
              : null,
          productName: json_.containsKey('productName')
              ? json_['productName'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (labels != null) 'labels': labels!,
        if (productName != null) 'productName': productName!,
      };
}

/// PlacementPolicy defines the placement policy used by the node pool.
class PlacementPolicy {
  /// If set, refers to the name of a custom resource policy supplied by the
  /// user.
  ///
  /// The resource policy must be in the same project and region as the node
  /// pool. If not found, InvalidArgument error is returned.
  core.String? policyName;

  /// TPU placement topology for pod slice node pool.
  ///
  /// https://cloud.google.com/tpu/docs/types-topologies#tpu_topologies
  ///
  /// Optional.
  core.String? tpuTopology;

  /// The type of placement.
  /// Possible string values are:
  /// - "TYPE_UNSPECIFIED" : TYPE_UNSPECIFIED specifies no requirements on nodes
  /// placement.
  /// - "COMPACT" : COMPACT specifies node placement in the same availability
  /// domain to ensure low communication latency.
  core.String? type;

  PlacementPolicy({
    this.policyName,
    this.tpuTopology,
    this.type,
  });

  PlacementPolicy.fromJson(core.Map json_)
      : this(
          policyName: json_.containsKey('policyName')
              ? json_['policyName'] as core.String
              : null,
          tpuTopology: json_.containsKey('tpuTopology')
              ? json_['tpuTopology'] as core.String
              : null,
          type: json_.containsKey('type') ? json_['type'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (policyName != null) 'policyName': policyName!,
        if (tpuTopology != null) 'tpuTopology': tpuTopology!,
        if (type != null) 'type': type!,
      };
}

/// \[PRIVATE FIELD\] Config for pod CIDR size overprovisioning.
class PodCIDROverprovisionConfig {
  /// Whether Pod CIDR overprovisioning is disabled.
  ///
  /// Note: Pod CIDR overprovisioning is enabled by default.
  core.bool? disable;

  PodCIDROverprovisionConfig({
    this.disable,
  });

  PodCIDROverprovisionConfig.fromJson(core.Map json_)
      : this(
          disable: json_.containsKey('disable')
              ? json_['disable'] as core.bool
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (disable != null) 'disable': disable!,
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

  /// Subnet to provision the master's private endpoint during cluster creation.
  ///
  /// Specified in projects / * /regions / * /subnetworks / *  format.
  core.String? privateEndpointSubnetwork;

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
    this.privateEndpointSubnetwork,
    this.publicEndpoint,
  });

  PrivateClusterConfig.fromJson(core.Map json_)
      : this(
          enablePrivateEndpoint: json_.containsKey('enablePrivateEndpoint')
              ? json_['enablePrivateEndpoint'] as core.bool
              : null,
          enablePrivateNodes: json_.containsKey('enablePrivateNodes')
              ? json_['enablePrivateNodes'] as core.bool
              : null,
          masterGlobalAccessConfig:
              json_.containsKey('masterGlobalAccessConfig')
                  ? PrivateClusterMasterGlobalAccessConfig.fromJson(
                      json_['masterGlobalAccessConfig']
                          as core.Map<core.String, core.dynamic>)
                  : null,
          masterIpv4CidrBlock: json_.containsKey('masterIpv4CidrBlock')
              ? json_['masterIpv4CidrBlock'] as core.String
              : null,
          peeringName: json_.containsKey('peeringName')
              ? json_['peeringName'] as core.String
              : null,
          privateEndpoint: json_.containsKey('privateEndpoint')
              ? json_['privateEndpoint'] as core.String
              : null,
          privateEndpointSubnetwork:
              json_.containsKey('privateEndpointSubnetwork')
                  ? json_['privateEndpointSubnetwork'] as core.String
                  : null,
          publicEndpoint: json_.containsKey('publicEndpoint')
              ? json_['publicEndpoint'] as core.String
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
        if (privateEndpointSubnetwork != null)
          'privateEndpointSubnetwork': privateEndpointSubnetwork!,
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

  PrivateClusterMasterGlobalAccessConfig.fromJson(core.Map json_)
      : this(
          enabled: json_.containsKey('enabled')
              ? json_['enabled'] as core.bool
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (enabled != null) 'enabled': enabled!,
      };
}

/// PrivateRegistryAccessConfig contains access configuration for private
/// container registries.
class PrivateRegistryAccessConfig {
  /// Private registry access configuration.
  core.List<CertificateAuthorityDomainConfig>? certificateAuthorityDomainConfig;

  /// Private registry access is enabled.
  core.bool? enabled;

  PrivateRegistryAccessConfig({
    this.certificateAuthorityDomainConfig,
    this.enabled,
  });

  PrivateRegistryAccessConfig.fromJson(core.Map json_)
      : this(
          certificateAuthorityDomainConfig:
              json_.containsKey('certificateAuthorityDomainConfig')
                  ? (json_['certificateAuthorityDomainConfig'] as core.List)
                      .map((value) => CertificateAuthorityDomainConfig.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                      .toList()
                  : null,
          enabled: json_.containsKey('enabled')
              ? json_['enabled'] as core.bool
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (certificateAuthorityDomainConfig != null)
          'certificateAuthorityDomainConfig': certificateAuthorityDomainConfig!,
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

  PubSub.fromJson(core.Map json_)
      : this(
          enabled: json_.containsKey('enabled')
              ? json_['enabled'] as core.bool
              : null,
          filter: json_.containsKey('filter')
              ? Filter.fromJson(
                  json_['filter'] as core.Map<core.String, core.dynamic>)
              : null,
          topic:
              json_.containsKey('topic') ? json_['topic'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (enabled != null) 'enabled': enabled!,
        if (filter != null) 'filter': filter!,
        if (topic != null) 'topic': topic!,
      };
}

/// QueuedProvisioning defines the queued provisioning used by the node pool.
class QueuedProvisioning {
  /// Denotes that this nodepool is QRM specific, meaning nodes can be only
  /// obtained through queuing via the Cluster Autoscaler ProvisioningRequest
  /// API.
  core.bool? enabled;

  QueuedProvisioning({
    this.enabled,
  });

  QueuedProvisioning.fromJson(core.Map json_)
      : this(
          enabled: json_.containsKey('enabled')
              ? json_['enabled'] as core.bool
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (enabled != null) 'enabled': enabled!,
      };
}

/// RangeInfo contains the range name and the range utilization by this cluster.
class RangeInfo {
  /// Name of a range.
  ///
  /// Output only.
  core.String? rangeName;

  /// The utilization of the range.
  ///
  /// Output only.
  core.double? utilization;

  RangeInfo({
    this.rangeName,
    this.utilization,
  });

  RangeInfo.fromJson(core.Map json_)
      : this(
          rangeName: json_.containsKey('rangeName')
              ? json_['rangeName'] as core.String
              : null,
          utilization: json_.containsKey('utilization')
              ? (json_['utilization'] as core.num).toDouble()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (rangeName != null) 'rangeName': rangeName!,
        if (utilization != null) 'utilization': utilization!,
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

  RecurringTimeWindow.fromJson(core.Map json_)
      : this(
          recurrence: json_.containsKey('recurrence')
              ? json_['recurrence'] as core.String
              : null,
          window: json_.containsKey('window')
              ? TimeWindow.fromJson(
                  json_['window'] as core.Map<core.String, core.dynamic>)
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

  ReleaseChannel.fromJson(core.Map json_)
      : this(
          channel: json_.containsKey('channel')
              ? json_['channel'] as core.String
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

  ReleaseChannelConfig.fromJson(core.Map json_)
      : this(
          channel: json_.containsKey('channel')
              ? json_['channel'] as core.String
              : null,
          defaultVersion: json_.containsKey('defaultVersion')
              ? json_['defaultVersion'] as core.String
              : null,
          validVersions: json_.containsKey('validVersions')
              ? (json_['validVersions'] as core.List)
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
  /// "compute.googleapis.com/reservation-name" as the key and specify the name
  /// of your reservation as its value.
  core.String? key;

  /// Corresponds to the label value(s) of reservation resource(s).
  core.List<core.String>? values;

  ReservationAffinity({
    this.consumeReservationType,
    this.key,
    this.values,
  });

  ReservationAffinity.fromJson(core.Map json_)
      : this(
          consumeReservationType: json_.containsKey('consumeReservationType')
              ? json_['consumeReservationType'] as core.String
              : null,
          key: json_.containsKey('key') ? json_['key'] as core.String : null,
          values: json_.containsKey('values')
              ? (json_['values'] as core.List)
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

/// Collection of
/// [GCP labels](https://cloud.google.com/resource-manager/docs/creating-managing-labels).
typedef ResourceLabels = $Labels;

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

  ResourceLimit.fromJson(core.Map json_)
      : this(
          maximum: json_.containsKey('maximum')
              ? json_['maximum'] as core.String
              : null,
          minimum: json_.containsKey('minimum')
              ? json_['minimum'] as core.String
              : null,
          resourceType: json_.containsKey('resourceType')
              ? json_['resourceType'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (maximum != null) 'maximum': maximum!,
        if (minimum != null) 'minimum': minimum!,
        if (resourceType != null) 'resourceType': resourceType!,
      };
}

/// A map of resource manager tag keys and values to be attached to the nodes
/// for managing Compute Engine firewalls using Network Firewall Policies.
///
/// Tags must be according to specifications in
/// https://cloud.google.com/vpc/docs/tags-firewalls-overview#specifications. A
/// maximum of 5 tag key-value pairs can be specified. Existing tags will be
/// replaced with new values.
class ResourceManagerTags {
  /// TagKeyValue must be in one of the following formats (\[KEY\]=\[VALUE\]) 1.
  ///
  /// `tagKeys/{tag_key_id}=tagValues/{tag_value_id}` 2.
  /// `{org_id}/{tag_key_name}={tag_value_name}` 3.
  /// `{project_id}/{tag_key_name}={tag_value_name}`
  core.Map<core.String, core.String>? tags;

  ResourceManagerTags({
    this.tags,
  });

  ResourceManagerTags.fromJson(core.Map json_)
      : this(
          tags: json_.containsKey('tags')
              ? (json_['tags'] as core.Map<core.String, core.dynamic>).map(
                  (key, value) => core.MapEntry(
                    key,
                    value as core.String,
                  ),
                )
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (tags != null) 'tags': tags!,
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

  ResourceUsageExportConfig.fromJson(core.Map json_)
      : this(
          bigqueryDestination: json_.containsKey('bigqueryDestination')
              ? BigQueryDestination.fromJson(json_['bigqueryDestination']
                  as core.Map<core.String, core.dynamic>)
              : null,
          consumptionMeteringConfig:
              json_.containsKey('consumptionMeteringConfig')
                  ? ConsumptionMeteringConfig.fromJson(
                      json_['consumptionMeteringConfig']
                          as core.Map<core.String, core.dynamic>)
                  : null,
          enableNetworkEgressMetering:
              json_.containsKey('enableNetworkEgressMetering')
                  ? json_['enableNetworkEgressMetering'] as core.bool
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
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
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
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  core.String? nodePoolId;

  /// The Google Developers Console
  /// [project ID or project number](https://cloud.google.com/resource-manager/docs/creating-managing-projects).
  ///
  /// This field has been deprecated and replaced by the name field.
  ///
  /// Deprecated.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  core.String? projectId;

  /// Option for rollback to ignore the PodDisruptionBudget.
  ///
  /// Default value is false.
  core.bool? respectPdb;

  /// The name of the Google Compute Engine
  /// [zone](https://cloud.google.com/compute/docs/zones#available) in which the
  /// cluster resides.
  ///
  /// This field has been deprecated and replaced by the name field.
  ///
  /// Deprecated.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  core.String? zone;

  RollbackNodePoolUpgradeRequest({
    this.clusterId,
    this.name,
    this.nodePoolId,
    this.projectId,
    this.respectPdb,
    this.zone,
  });

  RollbackNodePoolUpgradeRequest.fromJson(core.Map json_)
      : this(
          clusterId: json_.containsKey('clusterId')
              ? json_['clusterId'] as core.String
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          nodePoolId: json_.containsKey('nodePoolId')
              ? json_['nodePoolId'] as core.String
              : null,
          projectId: json_.containsKey('projectId')
              ? json_['projectId'] as core.String
              : null,
          respectPdb: json_.containsKey('respectPdb')
              ? json_['respectPdb'] as core.bool
              : null,
          zone: json_.containsKey('zone') ? json_['zone'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (clusterId != null) 'clusterId': clusterId!,
        if (name != null) 'name': name!,
        if (nodePoolId != null) 'nodePoolId': nodePoolId!,
        if (projectId != null) 'projectId': projectId!,
        if (respectPdb != null) 'respectPdb': respectPdb!,
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

  SandboxConfig.fromJson(core.Map json_)
      : this(
          type: json_.containsKey('type') ? json_['type'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (type != null) 'type': type!,
      };
}

/// SecondaryBootDisk represents a persistent disk attached to a node with
/// special configurations based on its mode.
class SecondaryBootDisk {
  /// Fully-qualified resource ID for an existing disk image.
  core.String? diskImage;

  /// Disk mode (container image cache, etc.)
  /// Possible string values are:
  /// - "MODE_UNSPECIFIED" : MODE_UNSPECIFIED is when mode is not set.
  /// - "CONTAINER_IMAGE_CACHE" : CONTAINER_IMAGE_CACHE is for using the
  /// secondary boot disk as a container image cache.
  core.String? mode;

  SecondaryBootDisk({
    this.diskImage,
    this.mode,
  });

  SecondaryBootDisk.fromJson(core.Map json_)
      : this(
          diskImage: json_.containsKey('diskImage')
              ? json_['diskImage'] as core.String
              : null,
          mode: json_.containsKey('mode') ? json_['mode'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (diskImage != null) 'diskImage': diskImage!,
        if (mode != null) 'mode': mode!,
      };
}

/// SecondaryBootDiskUpdateStrategy is a placeholder which will be extended in
/// the future to define different options for updating secondary boot disks.
typedef SecondaryBootDiskUpdateStrategy = $Empty;

/// SecurityPostureConfig defines the flags needed to enable/disable features
/// for the Security Posture API.
typedef SecurityPostureConfig = $SecurityPostureConfig;

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

  ServerConfig.fromJson(core.Map json_)
      : this(
          channels: json_.containsKey('channels')
              ? (json_['channels'] as core.List)
                  .map((value) => ReleaseChannelConfig.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          defaultClusterVersion: json_.containsKey('defaultClusterVersion')
              ? json_['defaultClusterVersion'] as core.String
              : null,
          defaultImageType: json_.containsKey('defaultImageType')
              ? json_['defaultImageType'] as core.String
              : null,
          validImageTypes: json_.containsKey('validImageTypes')
              ? (json_['validImageTypes'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          validMasterVersions: json_.containsKey('validMasterVersions')
              ? (json_['validMasterVersions'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          validNodeVersions: json_.containsKey('validNodeVersions')
              ? (json_['validNodeVersions'] as core.List)
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

  ServiceExternalIPsConfig.fromJson(core.Map json_)
      : this(
          enabled: json_.containsKey('enabled')
              ? json_['enabled'] as core.bool
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
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  core.String? clusterId;

  /// The name (project, location, cluster) of the cluster to set addons.
  ///
  /// Specified in the format `projects / * /locations / * /clusters / * `.
  core.String? name;

  /// The Google Developers Console
  /// [project ID or project number](https://cloud.google.com/resource-manager/docs/creating-managing-projects).
  ///
  /// This field has been deprecated and replaced by the name field.
  ///
  /// Deprecated.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  core.String? projectId;

  /// The name of the Google Compute Engine
  /// [zone](https://cloud.google.com/compute/docs/zones#available) in which the
  /// cluster resides.
  ///
  /// This field has been deprecated and replaced by the name field.
  ///
  /// Deprecated.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  core.String? zone;

  SetAddonsConfigRequest({
    this.addonsConfig,
    this.clusterId,
    this.name,
    this.projectId,
    this.zone,
  });

  SetAddonsConfigRequest.fromJson(core.Map json_)
      : this(
          addonsConfig: json_.containsKey('addonsConfig')
              ? AddonsConfig.fromJson(
                  json_['addonsConfig'] as core.Map<core.String, core.dynamic>)
              : null,
          clusterId: json_.containsKey('clusterId')
              ? json_['clusterId'] as core.String
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          projectId: json_.containsKey('projectId')
              ? json_['projectId'] as core.String
              : null,
          zone: json_.containsKey('zone') ? json_['zone'] as core.String : null,
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
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
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
  /// [project ID or project number](https://cloud.google.com/resource-manager/docs/creating-managing-projects).
  ///
  /// This field has been deprecated and replaced by the name field.
  ///
  /// Deprecated.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
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
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  core.String? zone;

  SetLabelsRequest({
    this.clusterId,
    this.labelFingerprint,
    this.name,
    this.projectId,
    this.resourceLabels,
    this.zone,
  });

  SetLabelsRequest.fromJson(core.Map json_)
      : this(
          clusterId: json_.containsKey('clusterId')
              ? json_['clusterId'] as core.String
              : null,
          labelFingerprint: json_.containsKey('labelFingerprint')
              ? json_['labelFingerprint'] as core.String
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          projectId: json_.containsKey('projectId')
              ? json_['projectId'] as core.String
              : null,
          resourceLabels: json_.containsKey('resourceLabels')
              ? (json_['resourceLabels'] as core.Map<core.String, core.dynamic>)
                  .map(
                  (key, value) => core.MapEntry(
                    key,
                    value as core.String,
                  ),
                )
              : null,
          zone: json_.containsKey('zone') ? json_['zone'] as core.String : null,
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
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
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
  /// [project ID or project number](https://cloud.google.com/resource-manager/docs/creating-managing-projects).
  ///
  /// This field has been deprecated and replaced by the name field.
  ///
  /// Deprecated.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  core.String? projectId;

  /// The name of the Google Compute Engine
  /// [zone](https://cloud.google.com/compute/docs/zones#available) in which the
  /// cluster resides.
  ///
  /// This field has been deprecated and replaced by the name field.
  ///
  /// Deprecated.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  core.String? zone;

  SetLegacyAbacRequest({
    this.clusterId,
    this.enabled,
    this.name,
    this.projectId,
    this.zone,
  });

  SetLegacyAbacRequest.fromJson(core.Map json_)
      : this(
          clusterId: json_.containsKey('clusterId')
              ? json_['clusterId'] as core.String
              : null,
          enabled: json_.containsKey('enabled')
              ? json_['enabled'] as core.bool
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          projectId: json_.containsKey('projectId')
              ? json_['projectId'] as core.String
              : null,
          zone: json_.containsKey('zone') ? json_['zone'] as core.String : null,
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
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
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
  /// [project ID or project number](https://cloud.google.com/resource-manager/docs/creating-managing-projects).
  ///
  /// This field has been deprecated and replaced by the name field.
  ///
  /// Deprecated.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  core.String? projectId;

  /// The name of the Google Compute Engine
  /// [zone](https://cloud.google.com/compute/docs/zones#available) in which the
  /// cluster resides.
  ///
  /// This field has been deprecated and replaced by the name field.
  ///
  /// Deprecated.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  core.String? zone;

  SetLocationsRequest({
    this.clusterId,
    this.locations,
    this.name,
    this.projectId,
    this.zone,
  });

  SetLocationsRequest.fromJson(core.Map json_)
      : this(
          clusterId: json_.containsKey('clusterId')
              ? json_['clusterId'] as core.String
              : null,
          locations: json_.containsKey('locations')
              ? (json_['locations'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          projectId: json_.containsKey('projectId')
              ? json_['projectId'] as core.String
              : null,
          zone: json_.containsKey('zone') ? json_['zone'] as core.String : null,
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
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
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
  /// [project ID or project number](https://cloud.google.com/resource-manager/docs/creating-managing-projects).
  ///
  /// This field has been deprecated and replaced by the name field.
  ///
  /// Deprecated.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  core.String? projectId;

  /// The name of the Google Compute Engine
  /// [zone](https://cloud.google.com/compute/docs/zones#available) in which the
  /// cluster resides.
  ///
  /// This field has been deprecated and replaced by the name field.
  ///
  /// Deprecated.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  core.String? zone;

  SetLoggingServiceRequest({
    this.clusterId,
    this.loggingService,
    this.name,
    this.projectId,
    this.zone,
  });

  SetLoggingServiceRequest.fromJson(core.Map json_)
      : this(
          clusterId: json_.containsKey('clusterId')
              ? json_['clusterId'] as core.String
              : null,
          loggingService: json_.containsKey('loggingService')
              ? json_['loggingService'] as core.String
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          projectId: json_.containsKey('projectId')
              ? json_['projectId'] as core.String
              : null,
          zone: json_.containsKey('zone') ? json_['zone'] as core.String : null,
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
  /// [project ID or project number](https://cloud.google.com/resource-manager/docs/creating-managing-projects).
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

  SetMaintenancePolicyRequest.fromJson(core.Map json_)
      : this(
          clusterId: json_.containsKey('clusterId')
              ? json_['clusterId'] as core.String
              : null,
          maintenancePolicy: json_.containsKey('maintenancePolicy')
              ? MaintenancePolicy.fromJson(json_['maintenancePolicy']
                  as core.Map<core.String, core.dynamic>)
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          projectId: json_.containsKey('projectId')
              ? json_['projectId'] as core.String
              : null,
          zone: json_.containsKey('zone') ? json_['zone'] as core.String : null,
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
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  core.String? clusterId;

  /// The name (project, location, cluster) of the cluster to set auth.
  ///
  /// Specified in the format `projects / * /locations / * /clusters / * `.
  core.String? name;

  /// The Google Developers Console
  /// [project ID or project number](https://cloud.google.com/resource-manager/docs/creating-managing-projects).
  ///
  /// This field has been deprecated and replaced by the name field.
  ///
  /// Deprecated.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
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
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  core.String? zone;

  SetMasterAuthRequest({
    this.action,
    this.clusterId,
    this.name,
    this.projectId,
    this.update,
    this.zone,
  });

  SetMasterAuthRequest.fromJson(core.Map json_)
      : this(
          action: json_.containsKey('action')
              ? json_['action'] as core.String
              : null,
          clusterId: json_.containsKey('clusterId')
              ? json_['clusterId'] as core.String
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          projectId: json_.containsKey('projectId')
              ? json_['projectId'] as core.String
              : null,
          update: json_.containsKey('update')
              ? MasterAuth.fromJson(
                  json_['update'] as core.Map<core.String, core.dynamic>)
              : null,
          zone: json_.containsKey('zone') ? json_['zone'] as core.String : null,
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
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
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
  /// [project ID or project number](https://cloud.google.com/resource-manager/docs/creating-managing-projects).
  ///
  /// This field has been deprecated and replaced by the name field.
  ///
  /// Deprecated.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  core.String? projectId;

  /// The name of the Google Compute Engine
  /// [zone](https://cloud.google.com/compute/docs/zones#available) in which the
  /// cluster resides.
  ///
  /// This field has been deprecated and replaced by the name field.
  ///
  /// Deprecated.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  core.String? zone;

  SetMonitoringServiceRequest({
    this.clusterId,
    this.monitoringService,
    this.name,
    this.projectId,
    this.zone,
  });

  SetMonitoringServiceRequest.fromJson(core.Map json_)
      : this(
          clusterId: json_.containsKey('clusterId')
              ? json_['clusterId'] as core.String
              : null,
          monitoringService: json_.containsKey('monitoringService')
              ? json_['monitoringService'] as core.String
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          projectId: json_.containsKey('projectId')
              ? json_['projectId'] as core.String
              : null,
          zone: json_.containsKey('zone') ? json_['zone'] as core.String : null,
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
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
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
  /// [project ID or project number](https://cloud.google.com/resource-manager/docs/creating-managing-projects).
  ///
  /// This field has been deprecated and replaced by the name field.
  ///
  /// Deprecated.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  core.String? projectId;

  /// The name of the Google Compute Engine
  /// [zone](https://cloud.google.com/compute/docs/zones#available) in which the
  /// cluster resides.
  ///
  /// This field has been deprecated and replaced by the name field.
  ///
  /// Deprecated.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  core.String? zone;

  SetNetworkPolicyRequest({
    this.clusterId,
    this.name,
    this.networkPolicy,
    this.projectId,
    this.zone,
  });

  SetNetworkPolicyRequest.fromJson(core.Map json_)
      : this(
          clusterId: json_.containsKey('clusterId')
              ? json_['clusterId'] as core.String
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          networkPolicy: json_.containsKey('networkPolicy')
              ? NetworkPolicy.fromJson(
                  json_['networkPolicy'] as core.Map<core.String, core.dynamic>)
              : null,
          projectId: json_.containsKey('projectId')
              ? json_['projectId'] as core.String
              : null,
          zone: json_.containsKey('zone') ? json_['zone'] as core.String : null,
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
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
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
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  core.String? nodePoolId;

  /// The Google Developers Console
  /// [project ID or project number](https://cloud.google.com/resource-manager/docs/creating-managing-projects).
  ///
  /// This field has been deprecated and replaced by the name field.
  ///
  /// Deprecated.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  core.String? projectId;

  /// The name of the Google Compute Engine
  /// [zone](https://cloud.google.com/compute/docs/zones#available) in which the
  /// cluster resides.
  ///
  /// This field has been deprecated and replaced by the name field.
  ///
  /// Deprecated.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  core.String? zone;

  SetNodePoolAutoscalingRequest({
    this.autoscaling,
    this.clusterId,
    this.name,
    this.nodePoolId,
    this.projectId,
    this.zone,
  });

  SetNodePoolAutoscalingRequest.fromJson(core.Map json_)
      : this(
          autoscaling: json_.containsKey('autoscaling')
              ? NodePoolAutoscaling.fromJson(
                  json_['autoscaling'] as core.Map<core.String, core.dynamic>)
              : null,
          clusterId: json_.containsKey('clusterId')
              ? json_['clusterId'] as core.String
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          nodePoolId: json_.containsKey('nodePoolId')
              ? json_['nodePoolId'] as core.String
              : null,
          projectId: json_.containsKey('projectId')
              ? json_['projectId'] as core.String
              : null,
          zone: json_.containsKey('zone') ? json_['zone'] as core.String : null,
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
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
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
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  core.String? nodePoolId;

  /// The Google Developers Console
  /// [project ID or project number](https://cloud.google.com/resource-manager/docs/creating-managing-projects).
  ///
  /// This field has been deprecated and replaced by the name field.
  ///
  /// Deprecated.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  core.String? projectId;

  /// The name of the Google Compute Engine
  /// [zone](https://cloud.google.com/compute/docs/zones#available) in which the
  /// cluster resides.
  ///
  /// This field has been deprecated and replaced by the name field.
  ///
  /// Deprecated.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  core.String? zone;

  SetNodePoolManagementRequest({
    this.clusterId,
    this.management,
    this.name,
    this.nodePoolId,
    this.projectId,
    this.zone,
  });

  SetNodePoolManagementRequest.fromJson(core.Map json_)
      : this(
          clusterId: json_.containsKey('clusterId')
              ? json_['clusterId'] as core.String
              : null,
          management: json_.containsKey('management')
              ? NodeManagement.fromJson(
                  json_['management'] as core.Map<core.String, core.dynamic>)
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          nodePoolId: json_.containsKey('nodePoolId')
              ? json_['nodePoolId'] as core.String
              : null,
          projectId: json_.containsKey('projectId')
              ? json_['projectId'] as core.String
              : null,
          zone: json_.containsKey('zone') ? json_['zone'] as core.String : null,
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
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
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
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  core.String? nodePoolId;

  /// The Google Developers Console
  /// [project ID or project number](https://cloud.google.com/resource-manager/docs/creating-managing-projects).
  ///
  /// This field has been deprecated and replaced by the name field.
  ///
  /// Deprecated.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  core.String? projectId;

  /// The name of the Google Compute Engine
  /// [zone](https://cloud.google.com/compute/docs/zones#available) in which the
  /// cluster resides.
  ///
  /// This field has been deprecated and replaced by the name field.
  ///
  /// Deprecated.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  core.String? zone;

  SetNodePoolSizeRequest({
    this.clusterId,
    this.name,
    this.nodeCount,
    this.nodePoolId,
    this.projectId,
    this.zone,
  });

  SetNodePoolSizeRequest.fromJson(core.Map json_)
      : this(
          clusterId: json_.containsKey('clusterId')
              ? json_['clusterId'] as core.String
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          nodeCount: json_.containsKey('nodeCount')
              ? json_['nodeCount'] as core.int
              : null,
          nodePoolId: json_.containsKey('nodePoolId')
              ? json_['nodePoolId'] as core.String
              : null,
          projectId: json_.containsKey('projectId')
              ? json_['projectId'] as core.String
              : null,
          zone: json_.containsKey('zone') ? json_['zone'] as core.String : null,
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

  ShieldedInstanceConfig.fromJson(core.Map json_)
      : this(
          enableIntegrityMonitoring:
              json_.containsKey('enableIntegrityMonitoring')
                  ? json_['enableIntegrityMonitoring'] as core.bool
                  : null,
          enableSecureBoot: json_.containsKey('enableSecureBoot')
              ? json_['enableSecureBoot'] as core.bool
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

  ShieldedNodes.fromJson(core.Map json_)
      : this(
          enabled: json_.containsKey('enabled')
              ? json_['enabled'] as core.bool
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (enabled != null) 'enabled': enabled!,
      };
}

/// SoleTenantConfig contains the NodeAffinities to specify what shared sole
/// tenant node groups should back the node pool.
class SoleTenantConfig {
  /// NodeAffinities used to match to a shared sole tenant node group.
  core.List<NodeAffinity>? nodeAffinities;

  SoleTenantConfig({
    this.nodeAffinities,
  });

  SoleTenantConfig.fromJson(core.Map json_)
      : this(
          nodeAffinities: json_.containsKey('nodeAffinities')
              ? (json_['nodeAffinities'] as core.List)
                  .map((value) => NodeAffinity.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (nodeAffinities != null) 'nodeAffinities': nodeAffinities!,
      };
}

/// Standard rollout policy is the default policy for blue-green.
class StandardRolloutPolicy {
  /// Number of blue nodes to drain in a batch.
  core.int? batchNodeCount;

  /// Percentage of the blue pool nodes to drain in a batch.
  ///
  /// The range of this field should be (0.0, 1.0\].
  core.double? batchPercentage;

  /// Soak time after each batch gets drained.
  ///
  /// Default to zero.
  core.String? batchSoakDuration;

  StandardRolloutPolicy({
    this.batchNodeCount,
    this.batchPercentage,
    this.batchSoakDuration,
  });

  StandardRolloutPolicy.fromJson(core.Map json_)
      : this(
          batchNodeCount: json_.containsKey('batchNodeCount')
              ? json_['batchNodeCount'] as core.int
              : null,
          batchPercentage: json_.containsKey('batchPercentage')
              ? (json_['batchPercentage'] as core.num).toDouble()
              : null,
          batchSoakDuration: json_.containsKey('batchSoakDuration')
              ? json_['batchSoakDuration'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (batchNodeCount != null) 'batchNodeCount': batchNodeCount!,
        if (batchPercentage != null) 'batchPercentage': batchPercentage!,
        if (batchSoakDuration != null) 'batchSoakDuration': batchSoakDuration!,
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
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  core.String? clusterId;

  /// The name (project, location, cluster name) of the cluster to start IP
  /// rotation.
  ///
  /// Specified in the format `projects / * /locations / * /clusters / * `.
  core.String? name;

  /// The Google Developers Console
  /// [project ID or project number](https://cloud.google.com/resource-manager/docs/creating-managing-projects).
  ///
  /// This field has been deprecated and replaced by the name field.
  ///
  /// Deprecated.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
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
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  core.String? zone;

  StartIPRotationRequest({
    this.clusterId,
    this.name,
    this.projectId,
    this.rotateCredentials,
    this.zone,
  });

  StartIPRotationRequest.fromJson(core.Map json_)
      : this(
          clusterId: json_.containsKey('clusterId')
              ? json_['clusterId'] as core.String
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          projectId: json_.containsKey('projectId')
              ? json_['projectId'] as core.String
              : null,
          rotateCredentials: json_.containsKey('rotateCredentials')
              ? json_['rotateCredentials'] as core.bool
              : null,
          zone: json_.containsKey('zone') ? json_['zone'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (clusterId != null) 'clusterId': clusterId!,
        if (name != null) 'name': name!,
        if (projectId != null) 'projectId': projectId!,
        if (rotateCredentials != null) 'rotateCredentials': rotateCredentials!,
        if (zone != null) 'zone': zone!,
      };
}

/// Configuration for the Stateful HA add-on.
class StatefulHAConfig {
  /// Whether the Stateful HA add-on is enabled for this cluster.
  core.bool? enabled;

  StatefulHAConfig({
    this.enabled,
  });

  StatefulHAConfig.fromJson(core.Map json_)
      : this(
          enabled: json_.containsKey('enabled')
              ? json_['enabled'] as core.bool
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (enabled != null) 'enabled': enabled!,
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
  /// - "OK" : Not an error; returned on success. HTTP Mapping: 200 OK
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
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  core.String? code;

  /// Human-friendly representation of the condition
  core.String? message;

  StatusCondition({
    this.canonicalCode,
    this.code,
    this.message,
  });

  StatusCondition.fromJson(core.Map json_)
      : this(
          canonicalCode: json_.containsKey('canonicalCode')
              ? json_['canonicalCode'] as core.String
              : null,
          code: json_.containsKey('code') ? json_['code'] as core.String : null,
          message: json_.containsKey('message')
              ? json_['message'] as core.String
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

  TimeWindow.fromJson(core.Map json_)
      : this(
          endTime: json_.containsKey('endTime')
              ? json_['endTime'] as core.String
              : null,
          maintenanceExclusionOptions:
              json_.containsKey('maintenanceExclusionOptions')
                  ? MaintenanceExclusionOptions.fromJson(
                      json_['maintenanceExclusionOptions']
                          as core.Map<core.String, core.dynamic>)
                  : null,
          startTime: json_.containsKey('startTime')
              ? json_['startTime'] as core.String
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
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  core.String? clusterId;

  /// The name (project, location, cluster) of the cluster to update.
  ///
  /// Specified in the format `projects / * /locations / * /clusters / * `.
  core.String? name;

  /// The Google Developers Console
  /// [project ID or project number](https://cloud.google.com/resource-manager/docs/creating-managing-projects).
  ///
  /// This field has been deprecated and replaced by the name field.
  ///
  /// Deprecated.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
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
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  core.String? zone;

  UpdateClusterRequest({
    this.clusterId,
    this.name,
    this.projectId,
    this.update,
    this.zone,
  });

  UpdateClusterRequest.fromJson(core.Map json_)
      : this(
          clusterId: json_.containsKey('clusterId')
              ? json_['clusterId'] as core.String
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          projectId: json_.containsKey('projectId')
              ? json_['projectId'] as core.String
              : null,
          update: json_.containsKey('update')
              ? ClusterUpdate.fromJson(
                  json_['update'] as core.Map<core.String, core.dynamic>)
              : null,
          zone: json_.containsKey('zone') ? json_['zone'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (clusterId != null) 'clusterId': clusterId!,
        if (name != null) 'name': name!,
        if (projectId != null) 'projectId': projectId!,
        if (update != null) 'update': update!,
        if (zone != null) 'zone': zone!,
      };
}

/// UpdateInfo contains resource (instance groups, etc), status and other
/// intermediate information relevant to a node pool upgrade.
class UpdateInfo {
  /// Information of a blue-green upgrade.
  BlueGreenInfo? blueGreenInfo;

  UpdateInfo({
    this.blueGreenInfo,
  });

  UpdateInfo.fromJson(core.Map json_)
      : this(
          blueGreenInfo: json_.containsKey('blueGreenInfo')
              ? BlueGreenInfo.fromJson(
                  json_['blueGreenInfo'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (blueGreenInfo != null) 'blueGreenInfo': blueGreenInfo!,
      };
}

/// UpdateMasterRequest updates the master of the cluster.
class UpdateMasterRequest {
  /// The name of the cluster to upgrade.
  ///
  /// This field has been deprecated and replaced by the name field.
  ///
  /// Deprecated.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
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
  /// [project ID or project number](https://cloud.google.com/resource-manager/docs/creating-managing-projects).
  ///
  /// This field has been deprecated and replaced by the name field.
  ///
  /// Deprecated.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  core.String? projectId;

  /// The name of the Google Compute Engine
  /// [zone](https://cloud.google.com/compute/docs/zones#available) in which the
  /// cluster resides.
  ///
  /// This field has been deprecated and replaced by the name field.
  ///
  /// Deprecated.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  core.String? zone;

  UpdateMasterRequest({
    this.clusterId,
    this.masterVersion,
    this.name,
    this.projectId,
    this.zone,
  });

  UpdateMasterRequest.fromJson(core.Map json_)
      : this(
          clusterId: json_.containsKey('clusterId')
              ? json_['clusterId'] as core.String
              : null,
          masterVersion: json_.containsKey('masterVersion')
              ? json_['masterVersion'] as core.String
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          projectId: json_.containsKey('projectId')
              ? json_['projectId'] as core.String
              : null,
          zone: json_.containsKey('zone') ? json_['zone'] as core.String : null,
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
  /// A list of hardware accelerators to be attached to each node.
  ///
  /// See https://cloud.google.com/compute/docs/gpus for more information about
  /// support for GPUs.
  core.List<AcceleratorConfig>? accelerators;

  /// The name of the cluster to upgrade.
  ///
  /// This field has been deprecated and replaced by the name field.
  ///
  /// Deprecated.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  core.String? clusterId;

  /// Confidential nodes config.
  ///
  /// All the nodes in the node pool will be Confidential VM once enabled.
  ConfidentialNodes? confidentialNodes;

  /// The desired containerd config for nodes in the node pool.
  ///
  /// Initiates an upgrade operation that recreates the nodes with the new
  /// config.
  ContainerdConfig? containerdConfig;

  /// The desired disk size for nodes in the node pool specified in GB.
  ///
  /// The smallest allowed disk size is 10GB. Initiates an upgrade operation
  /// that migrates the nodes in the node pool to the specified disk size.
  ///
  /// Optional.
  core.String? diskSizeGb;

  /// The desired disk type (e.g. 'pd-standard', 'pd-ssd' or 'pd-balanced') for
  /// nodes in the node pool.
  ///
  /// Initiates an upgrade operation that migrates the nodes in the node pool to
  /// the specified disk type.
  ///
  /// Optional.
  core.String? diskType;

  /// The current etag of the node pool.
  ///
  /// If an etag is provided and does not match the current etag of the node
  /// pool, update will be blocked and an ABORTED error will be returned.
  core.String? etag;

  /// Enable or disable NCCL fast socket for the node pool.
  FastSocket? fastSocket;

  /// GCFS config.
  GcfsConfig? gcfsConfig;

  /// Enable or disable gvnic on the node pool.
  VirtualNIC? gvnic;

  /// The desired image type for the node pool.
  ///
  /// Please see
  /// https://cloud.google.com/kubernetes-engine/docs/concepts/node-images for
  /// available image types.
  ///
  /// Required.
  core.String? imageType;

  /// Node kubelet configs.
  NodeKubeletConfig? kubeletConfig;

  /// The desired node labels to be applied to all nodes in the node pool.
  ///
  /// If this field is not present, the labels will not be changed. Otherwise,
  /// the existing node labels will be *replaced* with the provided labels.
  NodeLabels? labels;

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

  /// Logging configuration.
  NodePoolLoggingConfig? loggingConfig;

  /// The desired
  /// [Google Compute Engine machine type](https://cloud.google.com/compute/docs/machine-types)
  /// for nodes in the node pool.
  ///
  /// Initiates an upgrade operation that migrates the nodes in the node pool to
  /// the specified machine type.
  ///
  /// Optional.
  core.String? machineType;

  /// The name (project, location, cluster, node pool) of the node pool to
  /// update.
  ///
  /// Specified in the format `projects / * /locations / * /clusters / *
  /// /nodePools / * `.
  core.String? name;

  /// Node network config.
  NodeNetworkConfig? nodeNetworkConfig;

  /// The name of the node pool to upgrade.
  ///
  /// This field has been deprecated and replaced by the name field.
  ///
  /// Deprecated.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
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
  /// [project ID or project number](https://cloud.google.com/resource-manager/docs/creating-managing-projects).
  ///
  /// This field has been deprecated and replaced by the name field.
  ///
  /// Deprecated.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  core.String? projectId;

  /// Specifies the configuration of queued provisioning.
  QueuedProvisioning? queuedProvisioning;

  /// The resource labels for the node pool to use to annotate any related
  /// Google Compute Engine resources.
  ResourceLabels? resourceLabels;

  /// Desired resource manager tag keys and values to be attached to the nodes
  /// for managing Compute Engine firewalls using Network Firewall Policies.
  ///
  /// Existing tags will be replaced with new values.
  ResourceManagerTags? resourceManagerTags;

  /// The desired network tags to be applied to all nodes in the node pool.
  ///
  /// If this field is not present, the tags will not be changed. Otherwise, the
  /// existing network tags will be *replaced* with the provided tags.
  NetworkTags? tags;

  /// The desired node taints to be applied to all nodes in the node pool.
  ///
  /// If this field is not present, the taints will not be changed. Otherwise,
  /// the existing node taints will be *replaced* with the provided taints.
  NodeTaints? taints;

  /// Upgrade settings control disruption and speed of the upgrade.
  UpgradeSettings? upgradeSettings;

  /// Parameters that can be configured on Windows nodes.
  WindowsNodeConfig? windowsNodeConfig;

  /// The desired workload metadata config for the node pool.
  WorkloadMetadataConfig? workloadMetadataConfig;

  /// The name of the Google Compute Engine
  /// [zone](https://cloud.google.com/compute/docs/zones#available) in which the
  /// cluster resides.
  ///
  /// This field has been deprecated and replaced by the name field.
  ///
  /// Deprecated.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  core.String? zone;

  UpdateNodePoolRequest({
    this.accelerators,
    this.clusterId,
    this.confidentialNodes,
    this.containerdConfig,
    this.diskSizeGb,
    this.diskType,
    this.etag,
    this.fastSocket,
    this.gcfsConfig,
    this.gvnic,
    this.imageType,
    this.kubeletConfig,
    this.labels,
    this.linuxNodeConfig,
    this.locations,
    this.loggingConfig,
    this.machineType,
    this.name,
    this.nodeNetworkConfig,
    this.nodePoolId,
    this.nodeVersion,
    this.projectId,
    this.queuedProvisioning,
    this.resourceLabels,
    this.resourceManagerTags,
    this.tags,
    this.taints,
    this.upgradeSettings,
    this.windowsNodeConfig,
    this.workloadMetadataConfig,
    this.zone,
  });

  UpdateNodePoolRequest.fromJson(core.Map json_)
      : this(
          accelerators: json_.containsKey('accelerators')
              ? (json_['accelerators'] as core.List)
                  .map((value) => AcceleratorConfig.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          clusterId: json_.containsKey('clusterId')
              ? json_['clusterId'] as core.String
              : null,
          confidentialNodes: json_.containsKey('confidentialNodes')
              ? ConfidentialNodes.fromJson(json_['confidentialNodes']
                  as core.Map<core.String, core.dynamic>)
              : null,
          containerdConfig: json_.containsKey('containerdConfig')
              ? ContainerdConfig.fromJson(json_['containerdConfig']
                  as core.Map<core.String, core.dynamic>)
              : null,
          diskSizeGb: json_.containsKey('diskSizeGb')
              ? json_['diskSizeGb'] as core.String
              : null,
          diskType: json_.containsKey('diskType')
              ? json_['diskType'] as core.String
              : null,
          etag: json_.containsKey('etag') ? json_['etag'] as core.String : null,
          fastSocket: json_.containsKey('fastSocket')
              ? FastSocket.fromJson(
                  json_['fastSocket'] as core.Map<core.String, core.dynamic>)
              : null,
          gcfsConfig: json_.containsKey('gcfsConfig')
              ? GcfsConfig.fromJson(
                  json_['gcfsConfig'] as core.Map<core.String, core.dynamic>)
              : null,
          gvnic: json_.containsKey('gvnic')
              ? VirtualNIC.fromJson(
                  json_['gvnic'] as core.Map<core.String, core.dynamic>)
              : null,
          imageType: json_.containsKey('imageType')
              ? json_['imageType'] as core.String
              : null,
          kubeletConfig: json_.containsKey('kubeletConfig')
              ? NodeKubeletConfig.fromJson(
                  json_['kubeletConfig'] as core.Map<core.String, core.dynamic>)
              : null,
          labels: json_.containsKey('labels')
              ? NodeLabels.fromJson(
                  json_['labels'] as core.Map<core.String, core.dynamic>)
              : null,
          linuxNodeConfig: json_.containsKey('linuxNodeConfig')
              ? LinuxNodeConfig.fromJson(json_['linuxNodeConfig']
                  as core.Map<core.String, core.dynamic>)
              : null,
          locations: json_.containsKey('locations')
              ? (json_['locations'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          loggingConfig: json_.containsKey('loggingConfig')
              ? NodePoolLoggingConfig.fromJson(
                  json_['loggingConfig'] as core.Map<core.String, core.dynamic>)
              : null,
          machineType: json_.containsKey('machineType')
              ? json_['machineType'] as core.String
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          nodeNetworkConfig: json_.containsKey('nodeNetworkConfig')
              ? NodeNetworkConfig.fromJson(json_['nodeNetworkConfig']
                  as core.Map<core.String, core.dynamic>)
              : null,
          nodePoolId: json_.containsKey('nodePoolId')
              ? json_['nodePoolId'] as core.String
              : null,
          nodeVersion: json_.containsKey('nodeVersion')
              ? json_['nodeVersion'] as core.String
              : null,
          projectId: json_.containsKey('projectId')
              ? json_['projectId'] as core.String
              : null,
          queuedProvisioning: json_.containsKey('queuedProvisioning')
              ? QueuedProvisioning.fromJson(json_['queuedProvisioning']
                  as core.Map<core.String, core.dynamic>)
              : null,
          resourceLabels: json_.containsKey('resourceLabels')
              ? ResourceLabels.fromJson(json_['resourceLabels']
                  as core.Map<core.String, core.dynamic>)
              : null,
          resourceManagerTags: json_.containsKey('resourceManagerTags')
              ? ResourceManagerTags.fromJson(json_['resourceManagerTags']
                  as core.Map<core.String, core.dynamic>)
              : null,
          tags: json_.containsKey('tags')
              ? NetworkTags.fromJson(
                  json_['tags'] as core.Map<core.String, core.dynamic>)
              : null,
          taints: json_.containsKey('taints')
              ? NodeTaints.fromJson(
                  json_['taints'] as core.Map<core.String, core.dynamic>)
              : null,
          upgradeSettings: json_.containsKey('upgradeSettings')
              ? UpgradeSettings.fromJson(json_['upgradeSettings']
                  as core.Map<core.String, core.dynamic>)
              : null,
          windowsNodeConfig: json_.containsKey('windowsNodeConfig')
              ? WindowsNodeConfig.fromJson(json_['windowsNodeConfig']
                  as core.Map<core.String, core.dynamic>)
              : null,
          workloadMetadataConfig: json_.containsKey('workloadMetadataConfig')
              ? WorkloadMetadataConfig.fromJson(json_['workloadMetadataConfig']
                  as core.Map<core.String, core.dynamic>)
              : null,
          zone: json_.containsKey('zone') ? json_['zone'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (accelerators != null) 'accelerators': accelerators!,
        if (clusterId != null) 'clusterId': clusterId!,
        if (confidentialNodes != null) 'confidentialNodes': confidentialNodes!,
        if (containerdConfig != null) 'containerdConfig': containerdConfig!,
        if (diskSizeGb != null) 'diskSizeGb': diskSizeGb!,
        if (diskType != null) 'diskType': diskType!,
        if (etag != null) 'etag': etag!,
        if (fastSocket != null) 'fastSocket': fastSocket!,
        if (gcfsConfig != null) 'gcfsConfig': gcfsConfig!,
        if (gvnic != null) 'gvnic': gvnic!,
        if (imageType != null) 'imageType': imageType!,
        if (kubeletConfig != null) 'kubeletConfig': kubeletConfig!,
        if (labels != null) 'labels': labels!,
        if (linuxNodeConfig != null) 'linuxNodeConfig': linuxNodeConfig!,
        if (locations != null) 'locations': locations!,
        if (loggingConfig != null) 'loggingConfig': loggingConfig!,
        if (machineType != null) 'machineType': machineType!,
        if (name != null) 'name': name!,
        if (nodeNetworkConfig != null) 'nodeNetworkConfig': nodeNetworkConfig!,
        if (nodePoolId != null) 'nodePoolId': nodePoolId!,
        if (nodeVersion != null) 'nodeVersion': nodeVersion!,
        if (projectId != null) 'projectId': projectId!,
        if (queuedProvisioning != null)
          'queuedProvisioning': queuedProvisioning!,
        if (resourceLabels != null) 'resourceLabels': resourceLabels!,
        if (resourceManagerTags != null)
          'resourceManagerTags': resourceManagerTags!,
        if (tags != null) 'tags': tags!,
        if (taints != null) 'taints': taints!,
        if (upgradeSettings != null) 'upgradeSettings': upgradeSettings!,
        if (windowsNodeConfig != null) 'windowsNodeConfig': windowsNodeConfig!,
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
/// that there are always at least 4 nodes available. These upgrade settings
/// configure the upgrade strategy for the node pool. Use strategy to switch
/// between the strategies applied to the node pool. If the strategy is ROLLING,
/// use max_surge and max_unavailable to control the level of parallelism and
/// the level of disruption caused by upgrade. 1. maxSurge controls the number
/// of additional nodes that can be added to the node pool temporarily for the
/// time of the upgrade to increase the number of available nodes. 2.
/// maxUnavailable controls the number of nodes that can be simultaneously
/// unavailable. 3. (maxUnavailable + maxSurge) determines the level of
/// parallelism (how many nodes are being upgraded at the same time). If the
/// strategy is BLUE_GREEN, use blue_green_settings to configure the blue-green
/// upgrade related settings. 1. standard_rollout_policy is the default policy.
/// The policy is used to control the way blue pool gets drained. The draining
/// is executed in the batch mode. The batch size could be specified as either
/// percentage of the node pool size or the number of nodes. batch_soak_duration
/// is the soak time after each batch gets drained. 2. node_pool_soak_duration
/// is the soak time after all blue nodes are drained. After this period, the
/// blue pool nodes will be deleted.
class UpgradeSettings {
  /// Settings for blue-green upgrade strategy.
  BlueGreenSettings? blueGreenSettings;

  /// The maximum number of nodes that can be created beyond the current size of
  /// the node pool during the upgrade process.
  core.int? maxSurge;

  /// The maximum number of nodes that can be simultaneously unavailable during
  /// the upgrade process.
  ///
  /// A node is considered available if its status is Ready.
  core.int? maxUnavailable;

  /// Update strategy of the node pool.
  /// Possible string values are:
  /// - "NODE_POOL_UPDATE_STRATEGY_UNSPECIFIED" : Default value if unset. GKE
  /// internally defaults the update strategy to SURGE for unspecified
  /// strategies.
  /// - "BLUE_GREEN" : blue-green upgrade.
  /// - "SURGE" : SURGE is the traditional way of upgrade a node pool. max_surge
  /// and max_unavailable determines the level of upgrade parallelism.
  core.String? strategy;

  UpgradeSettings({
    this.blueGreenSettings,
    this.maxSurge,
    this.maxUnavailable,
    this.strategy,
  });

  UpgradeSettings.fromJson(core.Map json_)
      : this(
          blueGreenSettings: json_.containsKey('blueGreenSettings')
              ? BlueGreenSettings.fromJson(json_['blueGreenSettings']
                  as core.Map<core.String, core.dynamic>)
              : null,
          maxSurge: json_.containsKey('maxSurge')
              ? json_['maxSurge'] as core.int
              : null,
          maxUnavailable: json_.containsKey('maxUnavailable')
              ? json_['maxUnavailable'] as core.int
              : null,
          strategy: json_.containsKey('strategy')
              ? json_['strategy'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (blueGreenSettings != null) 'blueGreenSettings': blueGreenSettings!,
        if (maxSurge != null) 'maxSurge': maxSurge!,
        if (maxUnavailable != null) 'maxUnavailable': maxUnavailable!,
        if (strategy != null) 'strategy': strategy!,
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

  UsableSubnetwork.fromJson(core.Map json_)
      : this(
          ipCidrRange: json_.containsKey('ipCidrRange')
              ? json_['ipCidrRange'] as core.String
              : null,
          network: json_.containsKey('network')
              ? json_['network'] as core.String
              : null,
          secondaryIpRanges: json_.containsKey('secondaryIpRanges')
              ? (json_['secondaryIpRanges'] as core.List)
                  .map((value) => UsableSubnetworkSecondaryRange.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          statusMessage: json_.containsKey('statusMessage')
              ? json_['statusMessage'] as core.String
              : null,
          subnetwork: json_.containsKey('subnetwork')
              ? json_['subnetwork'] as core.String
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
  /// cluster(s) for services. User-managed services range can be shared between
  /// clusters within the same subnetwork.
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

  UsableSubnetworkSecondaryRange.fromJson(core.Map json_)
      : this(
          ipCidrRange: json_.containsKey('ipCidrRange')
              ? json_['ipCidrRange'] as core.String
              : null,
          rangeName: json_.containsKey('rangeName')
              ? json_['rangeName'] as core.String
              : null,
          status: json_.containsKey('status')
              ? json_['status'] as core.String
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

  VerticalPodAutoscaling.fromJson(core.Map json_)
      : this(
          enabled: json_.containsKey('enabled')
              ? json_['enabled'] as core.bool
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

  VirtualNIC.fromJson(core.Map json_)
      : this(
          enabled: json_.containsKey('enabled')
              ? json_['enabled'] as core.bool
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (enabled != null) 'enabled': enabled!,
      };
}

/// Parameters that can be configured on Windows nodes.
///
/// Windows Node Config that define the parameters that will be used to
/// configure the Windows node pool settings
class WindowsNodeConfig {
  /// OSVersion specifies the Windows node config to be used on the node
  /// Possible string values are:
  /// - "OS_VERSION_UNSPECIFIED" : When OSVersion is not specified
  /// - "OS_VERSION_LTSC2019" : LTSC2019 specifies to use LTSC2019 as the
  /// Windows Servercore Base Image
  /// - "OS_VERSION_LTSC2022" : LTSC2022 specifies to use LTSC2022 as the
  /// Windows Servercore Base Image
  core.String? osVersion;

  WindowsNodeConfig({
    this.osVersion,
  });

  WindowsNodeConfig.fromJson(core.Map json_)
      : this(
          osVersion: json_.containsKey('osVersion')
              ? json_['osVersion'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (osVersion != null) 'osVersion': osVersion!,
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

  WorkloadIdentityConfig.fromJson(core.Map json_)
      : this(
          workloadPool: json_.containsKey('workloadPool')
              ? json_['workloadPool'] as core.String
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

  WorkloadMetadataConfig.fromJson(core.Map json_)
      : this(
          mode: json_.containsKey('mode') ? json_['mode'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (mode != null) 'mode': mode!,
      };
}

/// WorkloadPolicyConfig is the configuration of workload policy for autopilot
/// clusters.
class WorkloadPolicyConfig {
  /// If true, workloads can use NET_ADMIN capability.
  core.bool? allowNetAdmin;

  WorkloadPolicyConfig({
    this.allowNetAdmin,
  });

  WorkloadPolicyConfig.fromJson(core.Map json_)
      : this(
          allowNetAdmin: json_.containsKey('allowNetAdmin')
              ? json_['allowNetAdmin'] as core.bool
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (allowNetAdmin != null) 'allowNetAdmin': allowNetAdmin!,
      };
}
