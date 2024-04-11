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

/// Anthos On-Prem API - v1
///
/// For more information, see
/// <https://cloud.google.com/anthos/clusters/docs/on-prem/>
///
/// Create an instance of [GKEOnPremApi] to access these resources:
///
/// - [ProjectsResource]
///   - [ProjectsLocationsResource]
///     - [ProjectsLocationsBareMetalAdminClustersResource]
///       - [ProjectsLocationsBareMetalAdminClustersOperationsResource]
///     - [ProjectsLocationsBareMetalClustersResource]
///       - [ProjectsLocationsBareMetalClustersBareMetalNodePoolsResource]
/// - [ProjectsLocationsBareMetalClustersBareMetalNodePoolsOperationsResource]
///       - [ProjectsLocationsBareMetalClustersOperationsResource]
///     - [ProjectsLocationsOperationsResource]
///     - [ProjectsLocationsVmwareAdminClustersResource]
///       - [ProjectsLocationsVmwareAdminClustersOperationsResource]
///     - [ProjectsLocationsVmwareClustersResource]
///       - [ProjectsLocationsVmwareClustersOperationsResource]
///       - [ProjectsLocationsVmwareClustersVmwareNodePoolsResource]
/// - [ProjectsLocationsVmwareClustersVmwareNodePoolsOperationsResource]
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

class GKEOnPremApi {
  /// See, edit, configure, and delete your Google Cloud data and see the email
  /// address for your Google Account.
  static const cloudPlatformScope =
      'https://www.googleapis.com/auth/cloud-platform';

  final commons.ApiRequester _requester;

  ProjectsResource get projects => ProjectsResource(_requester);

  GKEOnPremApi(http.Client client,
      {core.String rootUrl = 'https://gkeonprem.googleapis.com/',
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

  ProjectsLocationsBareMetalAdminClustersResource get bareMetalAdminClusters =>
      ProjectsLocationsBareMetalAdminClustersResource(_requester);
  ProjectsLocationsBareMetalClustersResource get bareMetalClusters =>
      ProjectsLocationsBareMetalClustersResource(_requester);
  ProjectsLocationsOperationsResource get operations =>
      ProjectsLocationsOperationsResource(_requester);
  ProjectsLocationsVmwareAdminClustersResource get vmwareAdminClusters =>
      ProjectsLocationsVmwareAdminClustersResource(_requester);
  ProjectsLocationsVmwareClustersResource get vmwareClusters =>
      ProjectsLocationsVmwareClustersResource(_requester);

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

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

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

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + '/locations';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListLocationsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsBareMetalAdminClustersResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsBareMetalAdminClustersOperationsResource get operations =>
      ProjectsLocationsBareMetalAdminClustersOperationsResource(_requester);

  ProjectsLocationsBareMetalAdminClustersResource(commons.ApiRequester client)
      : _requester = client;

  /// Creates a new bare metal admin cluster in a given project and location.
  ///
  /// The API needs to be combined with creating a bootstrap cluster to work.
  /// See:
  /// https://cloud.google.com/anthos/clusters/docs/bare-metal/latest/installing/creating-clusters/create-admin-cluster-api#prepare_bootstrap_environment
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent of the project and location where the
  /// cluster is created in. Format: "projects/{project}/locations/{location}"
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [bareMetalAdminClusterId] - Required. User provided identifier that is
  /// used as part of the resource name; must conform to RFC-1034 and
  /// additionally restrict to lower-cased letters. This comes out roughly to:
  /// /^a-z+\[a-z0-9\]$/
  ///
  /// [validateOnly] - Validate the request without actually doing any updates.
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
    BareMetalAdminCluster request,
    core.String parent, {
    core.String? bareMetalAdminClusterId,
    core.bool? validateOnly,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (bareMetalAdminClusterId != null)
        'bareMetalAdminClusterId': [bareMetalAdminClusterId],
      if (validateOnly != null) 'validateOnly': ['${validateOnly}'],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1/' + core.Uri.encodeFull('$parent') + '/bareMetalAdminClusters';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Enrolls an existing bare metal admin cluster to the Anthos On-Prem API
  /// within a given project and location.
  ///
  /// Through enrollment, an existing admin cluster will become Anthos On-Prem
  /// API managed. The corresponding GCP resources will be created and all
  /// future modifications to the cluster will be expected to be performed
  /// through the API.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent of the project and location where the
  /// cluster is enrolled in. Format: "projects/{project}/locations/{location}"
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
  async.Future<Operation> enroll(
    EnrollBareMetalAdminClusterRequest request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' +
        core.Uri.encodeFull('$parent') +
        '/bareMetalAdminClusters:enroll';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Gets details of a single bare metal admin cluster.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Name of the bare metal admin cluster to get. Format:
  /// "projects/{project}/locations/{location}/bareMetalAdminClusters/{bare_metal_admin_cluster}"
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/bareMetalAdminClusters/\[^/\]+$`.
  ///
  /// [view] - View for bare metal admin cluster. When \`BASIC\` is specified,
  /// only the cluster resource name and membership are returned. The
  /// default/unset value \`CLUSTER_VIEW_UNSPECIFIED\` is the same as \`FULL',
  /// which returns the complete cluster configuration details.
  /// Possible string values are:
  /// - "CLUSTER_VIEW_UNSPECIFIED" : If the value is not set, the default
  /// \`FULL\` view is used.
  /// - "BASIC" : Includes basic information of a cluster resource including
  /// cluster resource name and membership.
  /// - "FULL" : Includes the complete configuration for bare metal admin
  /// cluster resource. This is the default value for
  /// GetBareMetalAdminClusterRequest method.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [BareMetalAdminCluster].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<BareMetalAdminCluster> get(
    core.String name, {
    core.String? view,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (view != null) 'view': [view],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return BareMetalAdminCluster.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Gets the access control policy for a resource.
  ///
  /// Returns an empty policy if the resource exists and does not have a policy
  /// set.
  ///
  /// Request parameters:
  ///
  /// [resource] - REQUIRED: The resource for which the policy is being
  /// requested. See
  /// [Resource names](https://cloud.google.com/apis/design/resource_names) for
  /// the appropriate value for this field.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/bareMetalAdminClusters/\[^/\]+$`.
  ///
  /// [options_requestedPolicyVersion] - Optional. The maximum policy version
  /// that will be used to format the policy. Valid values are 0, 1, and 3.
  /// Requests specifying an invalid value will be rejected. Requests for
  /// policies with any conditional role bindings must specify version 3.
  /// Policies with no conditional role bindings may specify any valid value or
  /// leave the field unset. The policy in the response might use the policy
  /// version that you specified, or it might use a lower policy version. For
  /// example, if you specify version 3, but the policy has no conditional role
  /// bindings, the response uses version 1. To learn which resources support
  /// conditions in their IAM policies, see the
  /// [IAM documentation](https://cloud.google.com/iam/help/conditions/resource-policies).
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
    core.String resource, {
    core.int? options_requestedPolicyVersion,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (options_requestedPolicyVersion != null)
        'options.requestedPolicyVersion': ['${options_requestedPolicyVersion}'],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$resource') + ':getIamPolicy';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return Policy.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists bare metal admin clusters in a given project and location.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent of the project and location where the
  /// clusters are listed in. Format: "projects/{project}/locations/{location}"
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [pageSize] - Requested page size. Server may return fewer items than
  /// requested. If unspecified, at most 50 clusters will be returned. The
  /// maximum value is 1000; values above 1000 will be coerced to 1000.
  ///
  /// [pageToken] - A token identifying a page of results the server should
  /// return.
  ///
  /// [view] - View for bare metal admin clusters. When \`BASIC\` is specified,
  /// only the admin cluster resource name and membership are returned. The
  /// default/unset value \`CLUSTER_VIEW_UNSPECIFIED\` is the same as \`FULL',
  /// which returns the complete admin cluster configuration details.
  /// Possible string values are:
  /// - "CLUSTER_VIEW_UNSPECIFIED" : If the value is not set, the default
  /// \`FULL\` view is used.
  /// - "BASIC" : Includes basic information of a admin cluster resource
  /// including admin cluster resource name and membership.
  /// - "FULL" : Includes the complete configuration for bare metal admin
  /// cluster resource. This is the default value for
  /// ListBareMetalAdminClustersRequest method.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListBareMetalAdminClustersResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListBareMetalAdminClustersResponse> list(
    core.String parent, {
    core.int? pageSize,
    core.String? pageToken,
    core.String? view,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if (view != null) 'view': [view],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1/' + core.Uri.encodeFull('$parent') + '/bareMetalAdminClusters';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListBareMetalAdminClustersResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Updates the parameters of a single bare metal admin cluster.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Immutable. The bare metal admin cluster resource name.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/bareMetalAdminClusters/\[^/\]+$`.
  ///
  /// [updateMask] - Required. Field mask is used to specify the fields to be
  /// overwritten in the BareMetalAdminCluster resource by the update. The
  /// fields specified in the update_mask are relative to the resource, not the
  /// full request. A field will be overwritten if it is in the mask. If the
  /// user does not provide a mask then all populated fields in the
  /// BareMetalAdminCluster message will be updated. Empty fields will be
  /// ignored unless a field mask is used.
  ///
  /// [validateOnly] - Validate the request without actually doing any updates.
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
    BareMetalAdminCluster request,
    core.String name, {
    core.String? updateMask,
    core.bool? validateOnly,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (updateMask != null) 'updateMask': [updateMask],
      if (validateOnly != null) 'validateOnly': ['${validateOnly}'],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Queries the bare metal admin cluster version config.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent of the project and location to query for
  /// version config. Format: "projects/{project}/locations/{location}"
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [upgradeConfig_clusterName] - The admin cluster resource name. This is the
  /// full resource name of the admin cluster resource. Format:
  /// "projects/{project}/locations/{location}/bareMetalAdminClusters/{bare_metal_admin_cluster}"
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [QueryBareMetalAdminVersionConfigResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<QueryBareMetalAdminVersionConfigResponse> queryVersionConfig(
    core.String parent, {
    core.String? upgradeConfig_clusterName,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (upgradeConfig_clusterName != null)
        'upgradeConfig.clusterName': [upgradeConfig_clusterName],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' +
        core.Uri.encodeFull('$parent') +
        '/bareMetalAdminClusters:queryVersionConfig';

    final response_ = await _requester.request(
      url_,
      'POST',
      queryParams: queryParams_,
    );
    return QueryBareMetalAdminVersionConfigResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Sets the access control policy on the specified resource.
  ///
  /// Replaces any existing policy. Can return `NOT_FOUND`, `INVALID_ARGUMENT`,
  /// and `PERMISSION_DENIED` errors.
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
  /// `^projects/\[^/\]+/locations/\[^/\]+/bareMetalAdminClusters/\[^/\]+$`.
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

    final url_ = 'v1/' + core.Uri.encodeFull('$resource') + ':setIamPolicy';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Policy.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Returns permissions that a caller has on the specified resource.
  ///
  /// If the resource does not exist, this will return an empty set of
  /// permissions, not a `NOT_FOUND` error. Note: This operation is designed to
  /// be used for building permission-aware UIs and command-line tools, not for
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
  /// `^projects/\[^/\]+/locations/\[^/\]+/bareMetalAdminClusters/\[^/\]+$`.
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
        'v1/' + core.Uri.encodeFull('$resource') + ':testIamPermissions';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return TestIamPermissionsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Unenrolls an existing bare metal admin cluster from the Anthos On-Prem API
  /// within a given project and location.
  ///
  /// Unenrollment removes the Cloud reference to the cluster without modifying
  /// the underlying OnPrem Resources. Clusters will continue to run; however,
  /// they will no longer be accessible through the Anthos On-Prem API or its
  /// clients.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Name of the bare metal admin cluster to be unenrolled.
  /// Format:
  /// "projects/{project}/locations/{location}/bareMetalAdminClusters/{cluster}"
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/bareMetalAdminClusters/\[^/\]+$`.
  ///
  /// [allowMissing] - If set to true, and the bare metal admin cluster is not
  /// found, the request will succeed but no action will be taken on the server
  /// and return a completed LRO.
  ///
  /// [etag] - The current etag of the bare metal admin cluster. If an etag is
  /// provided and does not match the current etag of the cluster, deletion will
  /// be blocked and an ABORTED error will be returned.
  ///
  /// [ignoreErrors] - If set to true, the unenrollment of a bare metal admin
  /// cluster resource will succeed even if errors occur during unenrollment.
  /// This parameter can be used when you want to unenroll admin cluster
  /// resource and the on-prem admin cluster is disconnected / unreachable.
  /// WARNING: Using this parameter when your admin cluster still exists may
  /// result in a deleted GCP admin cluster but existing resourcelink in on-prem
  /// admin cluster and membership.
  ///
  /// [validateOnly] - Validate the request without actually doing any updates.
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
  async.Future<Operation> unenroll(
    core.String name, {
    core.bool? allowMissing,
    core.String? etag,
    core.bool? ignoreErrors,
    core.bool? validateOnly,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (allowMissing != null) 'allowMissing': ['${allowMissing}'],
      if (etag != null) 'etag': [etag],
      if (ignoreErrors != null) 'ignoreErrors': ['${ignoreErrors}'],
      if (validateOnly != null) 'validateOnly': ['${validateOnly}'],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':unenroll';

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsBareMetalAdminClustersOperationsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsBareMetalAdminClustersOperationsResource(
      commons.ApiRequester client)
      : _requester = client;

  /// Gets the latest state of a long-running operation.
  ///
  /// Clients can use this method to poll the operation result at intervals as
  /// recommended by the API service.
  ///
  /// Request parameters:
  ///
  /// [name] - The name of the operation resource.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/bareMetalAdminClusters/\[^/\]+/operations/\[^/\]+$`.
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
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
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

  /// Lists operations that match the specified filter in the request.
  ///
  /// If the server doesn't support this method, it returns `UNIMPLEMENTED`.
  ///
  /// Request parameters:
  ///
  /// [name] - The name of the operation's parent resource.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/bareMetalAdminClusters/\[^/\]+$`.
  ///
  /// [filter] - The standard list filter.
  ///
  /// [pageSize] - The standard list page size.
  ///
  /// [pageToken] - The standard list page token.
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

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + '/operations';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListOperationsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsBareMetalClustersResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsBareMetalClustersBareMetalNodePoolsResource
      get bareMetalNodePools =>
          ProjectsLocationsBareMetalClustersBareMetalNodePoolsResource(
              _requester);
  ProjectsLocationsBareMetalClustersOperationsResource get operations =>
      ProjectsLocationsBareMetalClustersOperationsResource(_requester);

  ProjectsLocationsBareMetalClustersResource(commons.ApiRequester client)
      : _requester = client;

  /// Creates a new bare metal cluster in a given project and location.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent of the project and location where the
  /// cluster is created in. Format: "projects/{project}/locations/{location}"
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [bareMetalClusterId] - Required. User provided identifier that is used as
  /// part of the resource name; must conform to RFC-1034 and additionally
  /// restrict to lower-cased letters. This comes out roughly to:
  /// /^a-z+\[a-z0-9\]$/
  ///
  /// [validateOnly] - Validate the request without actually doing any updates.
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
    BareMetalCluster request,
    core.String parent, {
    core.String? bareMetalClusterId,
    core.bool? validateOnly,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (bareMetalClusterId != null)
        'bareMetalClusterId': [bareMetalClusterId],
      if (validateOnly != null) 'validateOnly': ['${validateOnly}'],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/bareMetalClusters';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Deletes a single bare metal Cluster.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Name of the bare metal user cluster to be deleted.
  /// Format:
  /// "projects/{project}/locations/{location}/bareMetalClusters/{bare_metal_cluster}"
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/bareMetalClusters/\[^/\]+$`.
  ///
  /// [allowMissing] - If set to true, and the bare metal cluster is not found,
  /// the request will succeed but no action will be taken on the server and
  /// return a completed LRO.
  ///
  /// [etag] - The current etag of the bare metal Cluster. If an etag is
  /// provided and does not match the current etag of the cluster, deletion will
  /// be blocked and an ABORTED error will be returned.
  ///
  /// [force] - If set to true, any node pools from the cluster will also be
  /// deleted.
  ///
  /// [ignoreErrors] - If set to true, the deletion of a bare metal user cluster
  /// resource will succeed even if errors occur during deletion. This parameter
  /// can be used when you want to delete GCP's cluster resource and the on-prem
  /// admin cluster that hosts your user cluster is disconnected / unreachable
  /// or deleted. WARNING: Using this parameter when your user cluster still
  /// exists may result in a deleted GCP user cluster but an existing on-prem
  /// user cluster.
  ///
  /// [validateOnly] - Validate the request without actually doing any updates.
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
    core.bool? allowMissing,
    core.String? etag,
    core.bool? force,
    core.bool? ignoreErrors,
    core.bool? validateOnly,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (allowMissing != null) 'allowMissing': ['${allowMissing}'],
      if (etag != null) 'etag': [etag],
      if (force != null) 'force': ['${force}'],
      if (ignoreErrors != null) 'ignoreErrors': ['${ignoreErrors}'],
      if (validateOnly != null) 'validateOnly': ['${validateOnly}'],
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

  /// Enrolls an existing bare metal user cluster and its node pools to the
  /// Anthos On-Prem API within a given project and location.
  ///
  /// Through enrollment, an existing cluster will become Anthos On-Prem API
  /// managed. The corresponding GCP resources will be created and all future
  /// modifications to the cluster and/or its node pools will be expected to be
  /// performed through the API.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent of the project and location where the
  /// cluster is enrolled in. Format: "projects/{project}/locations/{location}"
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
  async.Future<Operation> enroll(
    EnrollBareMetalClusterRequest request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1/' + core.Uri.encodeFull('$parent') + '/bareMetalClusters:enroll';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Gets details of a single bare metal Cluster.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Name of the bare metal user cluster to get. Format:
  /// "projects/{project}/locations/{location}/bareMetalClusters/{bare_metal_cluster}"
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/bareMetalClusters/\[^/\]+$`.
  ///
  /// [view] - View for bare metal user cluster. When \`BASIC\` is specified,
  /// only the cluster resource name and admin cluster membership are returned.
  /// The default/unset value \`CLUSTER_VIEW_UNSPECIFIED\` is the same as
  /// \`FULL', which returns the complete cluster configuration details.
  /// Possible string values are:
  /// - "CLUSTER_VIEW_UNSPECIFIED" : If the value is not set, the default
  /// \`FULL\` view is used.
  /// - "BASIC" : Includes basic information of a cluster resource including
  /// cluster resource name and admin cluster membership.
  /// - "FULL" : Includes the complete configuration for bare metal cluster
  /// resource. This is the default value for GetBareMetalClusterRequest method.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [BareMetalCluster].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<BareMetalCluster> get(
    core.String name, {
    core.String? view,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (view != null) 'view': [view],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return BareMetalCluster.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Gets the access control policy for a resource.
  ///
  /// Returns an empty policy if the resource exists and does not have a policy
  /// set.
  ///
  /// Request parameters:
  ///
  /// [resource] - REQUIRED: The resource for which the policy is being
  /// requested. See
  /// [Resource names](https://cloud.google.com/apis/design/resource_names) for
  /// the appropriate value for this field.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/bareMetalClusters/\[^/\]+$`.
  ///
  /// [options_requestedPolicyVersion] - Optional. The maximum policy version
  /// that will be used to format the policy. Valid values are 0, 1, and 3.
  /// Requests specifying an invalid value will be rejected. Requests for
  /// policies with any conditional role bindings must specify version 3.
  /// Policies with no conditional role bindings may specify any valid value or
  /// leave the field unset. The policy in the response might use the policy
  /// version that you specified, or it might use a lower policy version. For
  /// example, if you specify version 3, but the policy has no conditional role
  /// bindings, the response uses version 1. To learn which resources support
  /// conditions in their IAM policies, see the
  /// [IAM documentation](https://cloud.google.com/iam/help/conditions/resource-policies).
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
    core.String resource, {
    core.int? options_requestedPolicyVersion,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (options_requestedPolicyVersion != null)
        'options.requestedPolicyVersion': ['${options_requestedPolicyVersion}'],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$resource') + ':getIamPolicy';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return Policy.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists bare metal clusters in a given project and location.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent of the project and location where the
  /// clusters are listed in. Format: "projects/{project}/locations/{location}"
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [filter] - A resource filtering expression following
  /// https://google.aip.dev/160. When non-empty, only resource's whose
  /// attributes field matches the filter are returned.
  ///
  /// [pageSize] - Requested page size. Server may return fewer items than
  /// requested. If unspecified, at most 50 clusters will be returned. The
  /// maximum value is 1000; values above 1000 will be coerced to 1000.
  ///
  /// [pageToken] - A token identifying a page of results the server should
  /// return.
  ///
  /// [view] - View for bare metal Clusters. When \`BASIC\` is specified, only
  /// the cluster resource name and admin cluster membership are returned. The
  /// default/unset value \`CLUSTER_VIEW_UNSPECIFIED\` is the same as \`FULL',
  /// which returns the complete cluster configuration details.
  /// Possible string values are:
  /// - "CLUSTER_VIEW_UNSPECIFIED" : If the value is not set, the default
  /// \`FULL\` view is used.
  /// - "BASIC" : Includes basic information of a cluster resource including
  /// cluster resource name and admin cluster membership.
  /// - "FULL" : Includes the complete configuration for bare metal cluster
  /// resource. This is the default value for ListBareMetalClustersRequest
  /// method.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListBareMetalClustersResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListBareMetalClustersResponse> list(
    core.String parent, {
    core.String? filter,
    core.int? pageSize,
    core.String? pageToken,
    core.String? view,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (filter != null) 'filter': [filter],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if (view != null) 'view': [view],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/bareMetalClusters';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListBareMetalClustersResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Updates the parameters of a single bare metal Cluster.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Immutable. The bare metal user cluster resource name.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/bareMetalClusters/\[^/\]+$`.
  ///
  /// [allowMissing] - If set to true, and the bare metal cluster is not found,
  /// the request will create a new bare metal cluster with the provided
  /// configuration. The user must have both create and update permission to
  /// call Update with allow_missing set to true.
  ///
  /// [updateMask] - Required. Field mask is used to specify the fields to be
  /// overwritten in the BareMetalCluster resource by the update. The fields
  /// specified in the update_mask are relative to the resource, not the full
  /// request. A field will be overwritten if it is in the mask. If the user
  /// does not provide a mask then all populated fields in the BareMetalCluster
  /// message will be updated. Empty fields will be ignored unless a field mask
  /// is used.
  ///
  /// [validateOnly] - Validate the request without actually doing any updates.
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
    BareMetalCluster request,
    core.String name, {
    core.bool? allowMissing,
    core.String? updateMask,
    core.bool? validateOnly,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (allowMissing != null) 'allowMissing': ['${allowMissing}'],
      if (updateMask != null) 'updateMask': [updateMask],
      if (validateOnly != null) 'validateOnly': ['${validateOnly}'],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Queries the bare metal user cluster version config.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent of the project and location to query for
  /// version config. Format: "projects/{project}/locations/{location}"
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [createConfig_adminClusterMembership] - The admin cluster membership. This
  /// is the full resource name of the admin cluster's fleet membership. Format:
  /// "projects/{project}/locations/{location}/memberships/{membership}"
  ///
  /// [createConfig_adminClusterName] - The admin cluster resource name. This is
  /// the full resource name of the admin cluster resource. Format:
  /// "projects/{project}/locations/{location}/bareMetalAdminClusters/{bare_metal_admin_cluster}"
  ///
  /// [upgradeConfig_clusterName] - The user cluster resource name. This is the
  /// full resource name of the user cluster resource. Format:
  /// "projects/{project}/locations/{location}/bareMetalClusters/{bare_metal_cluster}"
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [QueryBareMetalVersionConfigResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<QueryBareMetalVersionConfigResponse> queryVersionConfig(
    core.String parent, {
    core.String? createConfig_adminClusterMembership,
    core.String? createConfig_adminClusterName,
    core.String? upgradeConfig_clusterName,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (createConfig_adminClusterMembership != null)
        'createConfig.adminClusterMembership': [
          createConfig_adminClusterMembership
        ],
      if (createConfig_adminClusterName != null)
        'createConfig.adminClusterName': [createConfig_adminClusterName],
      if (upgradeConfig_clusterName != null)
        'upgradeConfig.clusterName': [upgradeConfig_clusterName],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' +
        core.Uri.encodeFull('$parent') +
        '/bareMetalClusters:queryVersionConfig';

    final response_ = await _requester.request(
      url_,
      'POST',
      queryParams: queryParams_,
    );
    return QueryBareMetalVersionConfigResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Sets the access control policy on the specified resource.
  ///
  /// Replaces any existing policy. Can return `NOT_FOUND`, `INVALID_ARGUMENT`,
  /// and `PERMISSION_DENIED` errors.
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
  /// `^projects/\[^/\]+/locations/\[^/\]+/bareMetalClusters/\[^/\]+$`.
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

    final url_ = 'v1/' + core.Uri.encodeFull('$resource') + ':setIamPolicy';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Policy.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Returns permissions that a caller has on the specified resource.
  ///
  /// If the resource does not exist, this will return an empty set of
  /// permissions, not a `NOT_FOUND` error. Note: This operation is designed to
  /// be used for building permission-aware UIs and command-line tools, not for
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
  /// `^projects/\[^/\]+/locations/\[^/\]+/bareMetalClusters/\[^/\]+$`.
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
        'v1/' + core.Uri.encodeFull('$resource') + ':testIamPermissions';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return TestIamPermissionsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Unenrolls an existing bare metal user cluster and its node pools from the
  /// Anthos On-Prem API within a given project and location.
  ///
  /// Unenrollment removes the Cloud reference to the cluster without modifying
  /// the underlying OnPrem Resources. Clusters and node pools will continue to
  /// run; however, they will no longer be accessible through the Anthos On-Prem
  /// API or its clients.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Name of the bare metal user cluster to be unenrolled.
  /// Format:
  /// "projects/{project}/locations/{location}/bareMetalClusters/{cluster}"
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/bareMetalClusters/\[^/\]+$`.
  ///
  /// [allowMissing] - If set to true, and the bare metal cluster is not found,
  /// the request will succeed but no action will be taken on the server and
  /// return a completed LRO.
  ///
  /// [etag] - The current etag of the bare metal Cluster. If an etag is
  /// provided and does not match the current etag of the cluster, deletion will
  /// be blocked and an ABORTED error will be returned.
  ///
  /// [force] - This is required if the cluster has any associated node pools.
  /// When set, any child node pools will also be unenrolled.
  ///
  /// [validateOnly] - Validate the request without actually doing any updates.
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
  async.Future<Operation> unenroll(
    core.String name, {
    core.bool? allowMissing,
    core.String? etag,
    core.bool? force,
    core.bool? validateOnly,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (allowMissing != null) 'allowMissing': ['${allowMissing}'],
      if (etag != null) 'etag': [etag],
      if (force != null) 'force': ['${force}'],
      if (validateOnly != null) 'validateOnly': ['${validateOnly}'],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':unenroll';

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsBareMetalClustersBareMetalNodePoolsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsBareMetalClustersBareMetalNodePoolsOperationsResource
      get operations =>
          ProjectsLocationsBareMetalClustersBareMetalNodePoolsOperationsResource(
              _requester);

  ProjectsLocationsBareMetalClustersBareMetalNodePoolsResource(
      commons.ApiRequester client)
      : _requester = client;

  /// Creates a new bare metal node pool in a given project, location and Bare
  /// Metal cluster.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent resource where this node pool will be
  /// created.
  /// projects/{project}/locations/{location}/bareMetalClusters/{cluster}
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/bareMetalClusters/\[^/\]+$`.
  ///
  /// [bareMetalNodePoolId] - The ID to use for the node pool, which will become
  /// the final component of the node pool's resource name. This value must be
  /// up to 63 characters, and valid characters are /a-z-/. The value must not
  /// be permitted to be a UUID (or UUID-like: anything matching
  /// /^\[0-9a-f\]{8}(-\[0-9a-f\]{4}){3}-\[0-9a-f\]{12}$/i).
  ///
  /// [validateOnly] - If set, only validate the request, but do not actually
  /// create the node pool.
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
    BareMetalNodePool request,
    core.String parent, {
    core.String? bareMetalNodePoolId,
    core.bool? validateOnly,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (bareMetalNodePoolId != null)
        'bareMetalNodePoolId': [bareMetalNodePoolId],
      if (validateOnly != null) 'validateOnly': ['${validateOnly}'],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/bareMetalNodePools';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Deletes a single bare metal node pool.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the node pool to delete. Format:
  /// projects/{project}/locations/{location}/bareMetalClusters/{cluster}/bareMetalNodePools/{nodepool}
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/bareMetalClusters/\[^/\]+/bareMetalNodePools/\[^/\]+$`.
  ///
  /// [allowMissing] - If set to true, and the bare metal node pool is not
  /// found, the request will succeed but no action will be taken on the server
  /// and return a completed LRO.
  ///
  /// [etag] - The current etag of the BareMetalNodePool. If an etag is provided
  /// and does not match the current etag of the node pool, deletion will be
  /// blocked and an ABORTED error will be returned.
  ///
  /// [ignoreErrors] - If set to true, the deletion of a bare metal node pool
  /// resource will succeed even if errors occur during deletion. This parameter
  /// can be used when you want to delete GCP's node pool resource and you've
  /// already deleted the on-prem admin cluster that hosted your node pool.
  /// WARNING: Using this parameter when your user cluster still exists may
  /// result in a deleted GCP node pool but an existing on-prem node pool.
  ///
  /// [validateOnly] - If set, only validate the request, but do not actually
  /// delete the node pool.
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
    core.bool? allowMissing,
    core.String? etag,
    core.bool? ignoreErrors,
    core.bool? validateOnly,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (allowMissing != null) 'allowMissing': ['${allowMissing}'],
      if (etag != null) 'etag': [etag],
      if (ignoreErrors != null) 'ignoreErrors': ['${ignoreErrors}'],
      if (validateOnly != null) 'validateOnly': ['${validateOnly}'],
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

  /// Enrolls an existing bare metal node pool to the Anthos On-Prem API within
  /// a given project and location.
  ///
  /// Through enrollment, an existing node pool will become Anthos On-Prem API
  /// managed. The corresponding GCP resources will be created.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent resource where this node pool will be
  /// created.
  /// projects/{project}/locations/{location}/bareMetalClusters/{cluster}
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/bareMetalClusters/\[^/\]+$`.
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
  async.Future<Operation> enroll(
    EnrollBareMetalNodePoolRequest request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1/' + core.Uri.encodeFull('$parent') + '/bareMetalNodePools:enroll';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Gets details of a single bare metal node pool.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the node pool to retrieve.
  /// projects/{project}/locations/{location}/bareMetalClusters/{cluster}/bareMetalNodePools/{nodepool}
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/bareMetalClusters/\[^/\]+/bareMetalNodePools/\[^/\]+$`.
  ///
  /// [view] - View for bare metal node pool. When \`BASIC\` is specified, only
  /// the node pool resource name is returned. The default/unset value
  /// \`NODE_POOL_VIEW_UNSPECIFIED\` is the same as \`FULL', which returns the
  /// complete node pool configuration details.
  /// Possible string values are:
  /// - "NODE_POOL_VIEW_UNSPECIFIED" : If the value is not set, the default
  /// \`FULL\` view is used.
  /// - "BASIC" : Includes basic information of a node pool resource including
  /// node pool resource name.
  /// - "FULL" : Includes the complete configuration for bare metal node pool
  /// resource. This is the default value for GetBareMetalNodePoolRequest
  /// method.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [BareMetalNodePool].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<BareMetalNodePool> get(
    core.String name, {
    core.String? view,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (view != null) 'view': [view],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return BareMetalNodePool.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Gets the access control policy for a resource.
  ///
  /// Returns an empty policy if the resource exists and does not have a policy
  /// set.
  ///
  /// Request parameters:
  ///
  /// [resource] - REQUIRED: The resource for which the policy is being
  /// requested. See
  /// [Resource names](https://cloud.google.com/apis/design/resource_names) for
  /// the appropriate value for this field.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/bareMetalClusters/\[^/\]+/bareMetalNodePools/\[^/\]+$`.
  ///
  /// [options_requestedPolicyVersion] - Optional. The maximum policy version
  /// that will be used to format the policy. Valid values are 0, 1, and 3.
  /// Requests specifying an invalid value will be rejected. Requests for
  /// policies with any conditional role bindings must specify version 3.
  /// Policies with no conditional role bindings may specify any valid value or
  /// leave the field unset. The policy in the response might use the policy
  /// version that you specified, or it might use a lower policy version. For
  /// example, if you specify version 3, but the policy has no conditional role
  /// bindings, the response uses version 1. To learn which resources support
  /// conditions in their IAM policies, see the
  /// [IAM documentation](https://cloud.google.com/iam/help/conditions/resource-policies).
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
    core.String resource, {
    core.int? options_requestedPolicyVersion,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (options_requestedPolicyVersion != null)
        'options.requestedPolicyVersion': ['${options_requestedPolicyVersion}'],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$resource') + ':getIamPolicy';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return Policy.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists bare metal node pools in a given project, location and bare metal
  /// cluster.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent, which owns this collection of node pools.
  /// Format:
  /// projects/{project}/locations/{location}/bareMetalClusters/{bareMetalCluster}
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/bareMetalClusters/\[^/\]+$`.
  ///
  /// [pageSize] - The maximum number of node pools to return. The service may
  /// return fewer than this value. If unspecified, at most 50 node pools will
  /// be returned. The maximum value is 1000; values above 1000 will be coerced
  /// to 1000.
  ///
  /// [pageToken] - A page token, received from a previous
  /// `ListBareMetalNodePools` call. Provide this to retrieve the subsequent
  /// page. When paginating, all other parameters provided to
  /// `ListBareMetalNodePools` must match the call that provided the page token.
  ///
  /// [view] - View for bare metal node pools. When \`BASIC\` is specified, only
  /// the node pool resource name is returned. The default/unset value
  /// \`NODE_POOL_VIEW_UNSPECIFIED\` is the same as \`FULL', which returns the
  /// complete node pool configuration details.
  /// Possible string values are:
  /// - "NODE_POOL_VIEW_UNSPECIFIED" : If the value is not set, the default
  /// \`FULL\` view is used.
  /// - "BASIC" : Includes basic information of a node pool resource including
  /// node pool resource name.
  /// - "FULL" : Includes the complete configuration for bare metal node pool
  /// resource. This is the default value for ListBareMetalNodePoolsRequest
  /// method.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListBareMetalNodePoolsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListBareMetalNodePoolsResponse> list(
    core.String parent, {
    core.int? pageSize,
    core.String? pageToken,
    core.String? view,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if (view != null) 'view': [view],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/bareMetalNodePools';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListBareMetalNodePoolsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Updates the parameters of a single bare metal node pool.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Immutable. The bare metal node pool resource name.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/bareMetalClusters/\[^/\]+/bareMetalNodePools/\[^/\]+$`.
  ///
  /// [allowMissing] - If set to true, and the bare metal node pool is not
  /// found, the request will create a new bare metal node pool with the
  /// provided configuration. The user must have both create and update
  /// permission to call Update with allow_missing set to true.
  ///
  /// [updateMask] - Required. Field mask is used to specify the fields to be
  /// overwritten in the BareMetalNodePool resource by the update. The fields
  /// specified in the update_mask are relative to the resource, not the full
  /// request. A field will be overwritten if it is in the mask. If the user
  /// does not provide a mask then all populated fields in the BareMetalNodePool
  /// message will be updated. Empty fields will be ignored unless a field mask
  /// is used.
  ///
  /// [validateOnly] - Validate the request without actually doing any updates.
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
    BareMetalNodePool request,
    core.String name, {
    core.bool? allowMissing,
    core.String? updateMask,
    core.bool? validateOnly,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (allowMissing != null) 'allowMissing': ['${allowMissing}'],
      if (updateMask != null) 'updateMask': [updateMask],
      if (validateOnly != null) 'validateOnly': ['${validateOnly}'],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Sets the access control policy on the specified resource.
  ///
  /// Replaces any existing policy. Can return `NOT_FOUND`, `INVALID_ARGUMENT`,
  /// and `PERMISSION_DENIED` errors.
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
  /// `^projects/\[^/\]+/locations/\[^/\]+/bareMetalClusters/\[^/\]+/bareMetalNodePools/\[^/\]+$`.
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

    final url_ = 'v1/' + core.Uri.encodeFull('$resource') + ':setIamPolicy';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Policy.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Returns permissions that a caller has on the specified resource.
  ///
  /// If the resource does not exist, this will return an empty set of
  /// permissions, not a `NOT_FOUND` error. Note: This operation is designed to
  /// be used for building permission-aware UIs and command-line tools, not for
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
  /// `^projects/\[^/\]+/locations/\[^/\]+/bareMetalClusters/\[^/\]+/bareMetalNodePools/\[^/\]+$`.
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
        'v1/' + core.Uri.encodeFull('$resource') + ':testIamPermissions';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return TestIamPermissionsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Unenrolls a bare metal node pool from Anthos On-Prem API.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the node pool to unenroll. Format:
  /// projects/{project}/locations/{location}/bareMetalClusters/{cluster}/bareMetalNodePools/{nodepool}
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/bareMetalClusters/\[^/\]+/bareMetalNodePools/\[^/\]+$`.
  ///
  /// [allowMissing] - If set to true, and the bare metal node pool is not
  /// found, the request will succeed but no action will be taken on the server
  /// and return a completed LRO.
  ///
  /// [etag] - The current etag of the bare metal node pool. If an etag is
  /// provided and does not match the current etag of node pool, deletion will
  /// be blocked and an ABORTED error will be returned.
  ///
  /// [validateOnly] - If set, only validate the request, but do not actually
  /// unenroll the node pool.
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
  async.Future<Operation> unenroll(
    core.String name, {
    core.bool? allowMissing,
    core.String? etag,
    core.bool? validateOnly,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (allowMissing != null) 'allowMissing': ['${allowMissing}'],
      if (etag != null) 'etag': [etag],
      if (validateOnly != null) 'validateOnly': ['${validateOnly}'],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':unenroll';

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsBareMetalClustersBareMetalNodePoolsOperationsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsBareMetalClustersBareMetalNodePoolsOperationsResource(
      commons.ApiRequester client)
      : _requester = client;

  /// Gets the latest state of a long-running operation.
  ///
  /// Clients can use this method to poll the operation result at intervals as
  /// recommended by the API service.
  ///
  /// Request parameters:
  ///
  /// [name] - The name of the operation resource.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/bareMetalClusters/\[^/\]+/bareMetalNodePools/\[^/\]+/operations/\[^/\]+$`.
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
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
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

  /// Lists operations that match the specified filter in the request.
  ///
  /// If the server doesn't support this method, it returns `UNIMPLEMENTED`.
  ///
  /// Request parameters:
  ///
  /// [name] - The name of the operation's parent resource.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/bareMetalClusters/\[^/\]+/bareMetalNodePools/\[^/\]+$`.
  ///
  /// [filter] - The standard list filter.
  ///
  /// [pageSize] - The standard list page size.
  ///
  /// [pageToken] - The standard list page token.
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

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + '/operations';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListOperationsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsBareMetalClustersOperationsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsBareMetalClustersOperationsResource(
      commons.ApiRequester client)
      : _requester = client;

  /// Gets the latest state of a long-running operation.
  ///
  /// Clients can use this method to poll the operation result at intervals as
  /// recommended by the API service.
  ///
  /// Request parameters:
  ///
  /// [name] - The name of the operation resource.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/bareMetalClusters/\[^/\]+/operations/\[^/\]+$`.
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
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
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

  /// Lists operations that match the specified filter in the request.
  ///
  /// If the server doesn't support this method, it returns `UNIMPLEMENTED`.
  ///
  /// Request parameters:
  ///
  /// [name] - The name of the operation's parent resource.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/bareMetalClusters/\[^/\]+$`.
  ///
  /// [filter] - The standard list filter.
  ///
  /// [pageSize] - The standard list page size.
  ///
  /// [pageToken] - The standard list page token.
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

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + '/operations';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListOperationsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsOperationsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsOperationsResource(commons.ApiRequester client)
      : _requester = client;

  /// Starts asynchronous cancellation on a long-running operation.
  ///
  /// The server makes a best effort to cancel the operation, but success is not
  /// guaranteed. If the server doesn't support this method, it returns
  /// `google.rpc.Code.UNIMPLEMENTED`. Clients can use Operations.GetOperation
  /// or other methods to check whether the cancellation succeeded or whether
  /// the operation completed despite cancellation. On successful cancellation,
  /// the operation is not deleted; instead, it becomes an operation with an
  /// Operation.error value with a google.rpc.Status.code of 1, corresponding to
  /// `Code.CANCELLED`.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - The name of the operation resource to be cancelled.
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

  /// Deletes a long-running operation.
  ///
  /// This method indicates that the client is no longer interested in the
  /// operation result. It does not cancel the operation. If the server doesn't
  /// support this method, it returns `google.rpc.Code.UNIMPLEMENTED`.
  ///
  /// Request parameters:
  ///
  /// [name] - The name of the operation resource to be deleted.
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
  async.Future<Empty> delete(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return Empty.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Gets the latest state of a long-running operation.
  ///
  /// Clients can use this method to poll the operation result at intervals as
  /// recommended by the API service.
  ///
  /// Request parameters:
  ///
  /// [name] - The name of the operation resource.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/operations/\[^/\]+$`.
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
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
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

  /// Lists operations that match the specified filter in the request.
  ///
  /// If the server doesn't support this method, it returns `UNIMPLEMENTED`.
  ///
  /// Request parameters:
  ///
  /// [name] - The name of the operation's parent resource.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [filter] - The standard list filter.
  ///
  /// [pageSize] - The standard list page size.
  ///
  /// [pageToken] - The standard list page token.
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

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + '/operations';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListOperationsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsVmwareAdminClustersResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsVmwareAdminClustersOperationsResource get operations =>
      ProjectsLocationsVmwareAdminClustersOperationsResource(_requester);

  ProjectsLocationsVmwareAdminClustersResource(commons.ApiRequester client)
      : _requester = client;

  /// Enrolls an existing VMware admin cluster to the Anthos On-Prem API within
  /// a given project and location.
  ///
  /// Through enrollment, an existing admin cluster will become Anthos On-Prem
  /// API managed. The corresponding GCP resources will be created and all
  /// future modifications to the cluster will be expected to be performed
  /// through the API.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent of the project and location where the
  /// cluster is enrolled in. Format: "projects/{project}/locations/{location}"
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
  async.Future<Operation> enroll(
    EnrollVmwareAdminClusterRequest request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1/' + core.Uri.encodeFull('$parent') + '/vmwareAdminClusters:enroll';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Gets details of a single VMware admin cluster.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Name of the VMware admin cluster to be returned.
  /// Format:
  /// "projects/{project}/locations/{location}/vmwareAdminClusters/{vmware_admin_cluster}"
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/vmwareAdminClusters/\[^/\]+$`.
  ///
  /// [view] - View for VMware admin cluster. When \`BASIC\` is specified, only
  /// the cluster resource name and membership are returned. The default/unset
  /// value \`CLUSTER_VIEW_UNSPECIFIED\` is the same as \`FULL', which returns
  /// the complete cluster configuration details.
  /// Possible string values are:
  /// - "CLUSTER_VIEW_UNSPECIFIED" : If the value is not set, the default
  /// \`FULL\` view is used.
  /// - "BASIC" : Includes basic information of a cluster resource including
  /// cluster resource name and membership.
  /// - "FULL" : Includes the complete configuration for VMware admin cluster
  /// resource. This is the default value for GetVmwareAdminClusterRequest
  /// method.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [VmwareAdminCluster].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<VmwareAdminCluster> get(
    core.String name, {
    core.String? view,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (view != null) 'view': [view],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return VmwareAdminCluster.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Gets the access control policy for a resource.
  ///
  /// Returns an empty policy if the resource exists and does not have a policy
  /// set.
  ///
  /// Request parameters:
  ///
  /// [resource] - REQUIRED: The resource for which the policy is being
  /// requested. See
  /// [Resource names](https://cloud.google.com/apis/design/resource_names) for
  /// the appropriate value for this field.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/vmwareAdminClusters/\[^/\]+$`.
  ///
  /// [options_requestedPolicyVersion] - Optional. The maximum policy version
  /// that will be used to format the policy. Valid values are 0, 1, and 3.
  /// Requests specifying an invalid value will be rejected. Requests for
  /// policies with any conditional role bindings must specify version 3.
  /// Policies with no conditional role bindings may specify any valid value or
  /// leave the field unset. The policy in the response might use the policy
  /// version that you specified, or it might use a lower policy version. For
  /// example, if you specify version 3, but the policy has no conditional role
  /// bindings, the response uses version 1. To learn which resources support
  /// conditions in their IAM policies, see the
  /// [IAM documentation](https://cloud.google.com/iam/help/conditions/resource-policies).
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
    core.String resource, {
    core.int? options_requestedPolicyVersion,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (options_requestedPolicyVersion != null)
        'options.requestedPolicyVersion': ['${options_requestedPolicyVersion}'],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$resource') + ':getIamPolicy';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return Policy.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists VMware admin clusters in a given project and location.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent of the project and location where the
  /// clusters are listed in. Format: "projects/{project}/locations/{location}"
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [pageSize] - Requested page size. Server may return fewer items than
  /// requested. If unspecified, at most 50 clusters will be returned. The
  /// maximum value is 1000; values above 1000 will be coerced to 1000.
  ///
  /// [pageToken] - A token identifying a page of results the server should
  /// return.
  ///
  /// [view] - View for VMware admin clusters. When \`BASIC\` is specified, only
  /// the admin cluster resource name and membership are returned. The
  /// default/unset value \`CLUSTER_VIEW_UNSPECIFIED\` is the same as \`FULL',
  /// which returns the complete admin cluster configuration details.
  /// Possible string values are:
  /// - "CLUSTER_VIEW_UNSPECIFIED" : If the value is not set, the default
  /// \`FULL\` view is used.
  /// - "BASIC" : Includes basic information of a admin cluster resource
  /// including admin cluster resource name and membership.
  /// - "FULL" : Includes the complete configuration for bare metal admin
  /// cluster resource. This is the default value for
  /// ListVmwareAdminClustersRequest method.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListVmwareAdminClustersResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListVmwareAdminClustersResponse> list(
    core.String parent, {
    core.int? pageSize,
    core.String? pageToken,
    core.String? view,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if (view != null) 'view': [view],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1/' + core.Uri.encodeFull('$parent') + '/vmwareAdminClusters';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListVmwareAdminClustersResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Updates the parameters of a single VMware admin cluster.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Immutable. The VMware admin cluster resource name.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/vmwareAdminClusters/\[^/\]+$`.
  ///
  /// [updateMask] - Required. Field mask is used to specify the fields to be
  /// overwritten in the VMwareAdminCluster resource by the update. The fields
  /// specified in the update_mask are relative to the resource, not the full
  /// request. A field will be overwritten if it is in the mask. If the user
  /// does not provide a mask then all populated fields in the
  /// VmwareAdminCluster message will be updated. Empty fields will be ignored
  /// unless a field mask is used.
  ///
  /// [validateOnly] - Validate the request without actually doing any updates.
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
    VmwareAdminCluster request,
    core.String name, {
    core.String? updateMask,
    core.bool? validateOnly,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (updateMask != null) 'updateMask': [updateMask],
      if (validateOnly != null) 'validateOnly': ['${validateOnly}'],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Sets the access control policy on the specified resource.
  ///
  /// Replaces any existing policy. Can return `NOT_FOUND`, `INVALID_ARGUMENT`,
  /// and `PERMISSION_DENIED` errors.
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
  /// `^projects/\[^/\]+/locations/\[^/\]+/vmwareAdminClusters/\[^/\]+$`.
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

    final url_ = 'v1/' + core.Uri.encodeFull('$resource') + ':setIamPolicy';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Policy.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Returns permissions that a caller has on the specified resource.
  ///
  /// If the resource does not exist, this will return an empty set of
  /// permissions, not a `NOT_FOUND` error. Note: This operation is designed to
  /// be used for building permission-aware UIs and command-line tools, not for
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
  /// `^projects/\[^/\]+/locations/\[^/\]+/vmwareAdminClusters/\[^/\]+$`.
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
        'v1/' + core.Uri.encodeFull('$resource') + ':testIamPermissions';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return TestIamPermissionsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Unenrolls an existing VMware admin cluster from the Anthos On-Prem API
  /// within a given project and location.
  ///
  /// Unenrollment removes the Cloud reference to the cluster without modifying
  /// the underlying OnPrem Resources. Clusters will continue to run; however,
  /// they will no longer be accessible through the Anthos On-Prem API or its
  /// clients.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Name of the VMware admin cluster to be unenrolled.
  /// Format:
  /// "projects/{project}/locations/{location}/vmwareAdminClusters/{cluster}"
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/vmwareAdminClusters/\[^/\]+$`.
  ///
  /// [allowMissing] - If set to true, and the VMware admin cluster is not
  /// found, the request will succeed but no action will be taken on the server
  /// and return a completed LRO.
  ///
  /// [etag] - The current etag of the VMware admin cluster. If an etag is
  /// provided and does not match the current etag of the cluster, deletion will
  /// be blocked and an ABORTED error will be returned.
  ///
  /// [validateOnly] - Validate the request without actually doing any updates.
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
  async.Future<Operation> unenroll(
    core.String name, {
    core.bool? allowMissing,
    core.String? etag,
    core.bool? validateOnly,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (allowMissing != null) 'allowMissing': ['${allowMissing}'],
      if (etag != null) 'etag': [etag],
      if (validateOnly != null) 'validateOnly': ['${validateOnly}'],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':unenroll';

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsVmwareAdminClustersOperationsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsVmwareAdminClustersOperationsResource(
      commons.ApiRequester client)
      : _requester = client;

  /// Gets the latest state of a long-running operation.
  ///
  /// Clients can use this method to poll the operation result at intervals as
  /// recommended by the API service.
  ///
  /// Request parameters:
  ///
  /// [name] - The name of the operation resource.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/vmwareAdminClusters/\[^/\]+/operations/\[^/\]+$`.
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
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
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

  /// Lists operations that match the specified filter in the request.
  ///
  /// If the server doesn't support this method, it returns `UNIMPLEMENTED`.
  ///
  /// Request parameters:
  ///
  /// [name] - The name of the operation's parent resource.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/vmwareAdminClusters/\[^/\]+$`.
  ///
  /// [filter] - The standard list filter.
  ///
  /// [pageSize] - The standard list page size.
  ///
  /// [pageToken] - The standard list page token.
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

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + '/operations';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListOperationsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsVmwareClustersResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsVmwareClustersOperationsResource get operations =>
      ProjectsLocationsVmwareClustersOperationsResource(_requester);
  ProjectsLocationsVmwareClustersVmwareNodePoolsResource get vmwareNodePools =>
      ProjectsLocationsVmwareClustersVmwareNodePoolsResource(_requester);

  ProjectsLocationsVmwareClustersResource(commons.ApiRequester client)
      : _requester = client;

  /// Creates a new VMware user cluster in a given project and location.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent of the project and location where this
  /// cluster is created in. Format: "projects/{project}/locations/{location}"
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [validateOnly] - Validate the request without actually doing any updates.
  ///
  /// [vmwareClusterId] - User provided identifier that is used as part of the
  /// resource name; This value must be up to 40 characters and follow RFC-1123
  /// (https://tools.ietf.org/html/rfc1123) format.
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
    VmwareCluster request,
    core.String parent, {
    core.bool? validateOnly,
    core.String? vmwareClusterId,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (validateOnly != null) 'validateOnly': ['${validateOnly}'],
      if (vmwareClusterId != null) 'vmwareClusterId': [vmwareClusterId],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/vmwareClusters';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Deletes a single VMware Cluster.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Name of the VMware user cluster to be deleted. Format:
  /// "projects/{project}/locations/{location}/vmwareClusters/{vmware_cluster}"
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/vmwareClusters/\[^/\]+$`.
  ///
  /// [allowMissing] - If set to true, and the VMware cluster is not found, the
  /// request will succeed but no action will be taken on the server and return
  /// a completed LRO.
  ///
  /// [etag] - The current etag of the VMware cluster. If an etag is provided
  /// and does not match the current etag of the cluster, deletion will be
  /// blocked and an ABORTED error will be returned.
  ///
  /// [force] - If set to true, any node pools from the cluster will also be
  /// deleted.
  ///
  /// [ignoreErrors] - If set to true, the deletion of a VMware user cluster
  /// resource will succeed even if errors occur during deletion. This parameter
  /// can be used when you want to delete GCP's cluster resource and the on-prem
  /// admin cluster that hosts your user cluster is disconnected / unreachable
  /// or deleted. WARNING: Using this parameter when your user cluster still
  /// exists may result in a deleted GCP user cluster but an existing on-prem
  /// user cluster.
  ///
  /// [validateOnly] - Validate the request without actually doing any updates.
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
    core.bool? allowMissing,
    core.String? etag,
    core.bool? force,
    core.bool? ignoreErrors,
    core.bool? validateOnly,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (allowMissing != null) 'allowMissing': ['${allowMissing}'],
      if (etag != null) 'etag': [etag],
      if (force != null) 'force': ['${force}'],
      if (ignoreErrors != null) 'ignoreErrors': ['${ignoreErrors}'],
      if (validateOnly != null) 'validateOnly': ['${validateOnly}'],
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

  /// Enrolls an existing VMware user cluster and its node pools to the Anthos
  /// On-Prem API within a given project and location.
  ///
  /// Through enrollment, an existing cluster will become Anthos On-Prem API
  /// managed. The corresponding GCP resources will be created and all future
  /// modifications to the cluster and/or its node pools will be expected to be
  /// performed through the API.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent of the project and location where the
  /// cluster is Enrolled in. Format: "projects/{project}/locations/{location}"
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
  async.Future<Operation> enroll(
    EnrollVmwareClusterRequest request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1/' + core.Uri.encodeFull('$parent') + '/vmwareClusters:enroll';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Gets details of a single VMware Cluster.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Name of the VMware user cluster to be returned. Format:
  /// "projects/{project}/locations/{location}/vmwareClusters/{vmware_cluster}"
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/vmwareClusters/\[^/\]+$`.
  ///
  /// [view] - View for VMware user cluster. When \`BASIC\` is specified, only
  /// the cluster resource name and admin cluster membership are returned. The
  /// default/unset value \`CLUSTER_VIEW_UNSPECIFIED\` is the same as \`FULL',
  /// which returns the complete cluster configuration details.
  /// Possible string values are:
  /// - "CLUSTER_VIEW_UNSPECIFIED" : If the value is not set, the default
  /// \`FULL\` view is used.
  /// - "BASIC" : Includes basic information of a cluster resource including
  /// cluster resource name and admin cluster membership.
  /// - "FULL" : Includes the complete configuration for VMware cluster
  /// resource. This is the default value for GetVmwareClusterRequest method.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [VmwareCluster].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<VmwareCluster> get(
    core.String name, {
    core.String? view,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (view != null) 'view': [view],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return VmwareCluster.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Gets the access control policy for a resource.
  ///
  /// Returns an empty policy if the resource exists and does not have a policy
  /// set.
  ///
  /// Request parameters:
  ///
  /// [resource] - REQUIRED: The resource for which the policy is being
  /// requested. See
  /// [Resource names](https://cloud.google.com/apis/design/resource_names) for
  /// the appropriate value for this field.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/vmwareClusters/\[^/\]+$`.
  ///
  /// [options_requestedPolicyVersion] - Optional. The maximum policy version
  /// that will be used to format the policy. Valid values are 0, 1, and 3.
  /// Requests specifying an invalid value will be rejected. Requests for
  /// policies with any conditional role bindings must specify version 3.
  /// Policies with no conditional role bindings may specify any valid value or
  /// leave the field unset. The policy in the response might use the policy
  /// version that you specified, or it might use a lower policy version. For
  /// example, if you specify version 3, but the policy has no conditional role
  /// bindings, the response uses version 1. To learn which resources support
  /// conditions in their IAM policies, see the
  /// [IAM documentation](https://cloud.google.com/iam/help/conditions/resource-policies).
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
    core.String resource, {
    core.int? options_requestedPolicyVersion,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (options_requestedPolicyVersion != null)
        'options.requestedPolicyVersion': ['${options_requestedPolicyVersion}'],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$resource') + ':getIamPolicy';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return Policy.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists VMware Clusters in a given project and location.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent of the project and location where the
  /// clusters are listed in. Format: "projects/{project}/locations/{location}"
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [filter] - A resource filtering expression following
  /// https://google.aip.dev/160. When non-empty, only resource's whose
  /// attributes field matches the filter are returned.
  ///
  /// [pageSize] - Requested page size. Server may return fewer items than
  /// requested. If unspecified, at most 50 clusters will be returned. The
  /// maximum value is 1000; values above 1000 will be coerced to 1000.
  ///
  /// [pageToken] - A token identifying a page of results the server should
  /// return.
  ///
  /// [view] - View for VMware clusters. When \`BASIC\` is specified, only the
  /// cluster resource name and admin cluster membership are returned. The
  /// default/unset value \`CLUSTER_VIEW_UNSPECIFIED\` is the same as \`FULL',
  /// which returns the complete cluster configuration details.
  /// Possible string values are:
  /// - "CLUSTER_VIEW_UNSPECIFIED" : If the value is not set, the default
  /// \`FULL\` view is used.
  /// - "BASIC" : Includes basic information of a cluster resource including
  /// cluster resource name and admin cluster membership.
  /// - "FULL" : Includes the complete configuration for VMware cluster
  /// resource. This is the default value for ListVmwareClustersRequest method.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListVmwareClustersResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListVmwareClustersResponse> list(
    core.String parent, {
    core.String? filter,
    core.int? pageSize,
    core.String? pageToken,
    core.String? view,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (filter != null) 'filter': [filter],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if (view != null) 'view': [view],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/vmwareClusters';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListVmwareClustersResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Updates the parameters of a single VMware cluster.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Immutable. The VMware user cluster resource name.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/vmwareClusters/\[^/\]+$`.
  ///
  /// [updateMask] - Required. Field mask is used to specify the fields to be
  /// overwritten in the VMwareCluster resource by the update. The fields
  /// specified in the update_mask are relative to the resource, not the full
  /// request. A field will be overwritten if it is in the mask. If the user
  /// does not provide a mask then all populated fields in the VmwareCluster
  /// message will be updated. Empty fields will be ignored unless a field mask
  /// is used.
  ///
  /// [validateOnly] - Validate the request without actually doing any updates.
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
    VmwareCluster request,
    core.String name, {
    core.String? updateMask,
    core.bool? validateOnly,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (updateMask != null) 'updateMask': [updateMask],
      if (validateOnly != null) 'validateOnly': ['${validateOnly}'],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Queries the VMware user cluster version config.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent of the project and location to query for
  /// version config. Format: "projects/{project}/locations/{location}"
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [createConfig_adminClusterMembership] - The admin cluster membership. This
  /// is the full resource name of the admin cluster's fleet membership. Format:
  /// "projects/{project}/locations/{location}/memberships/{membership}"
  ///
  /// [createConfig_adminClusterName] - The admin cluster resource name. This is
  /// the full resource name of the admin cluster resource. Format:
  /// "projects/{project}/locations/{location}/vmwareAdminClusters/{vmware_admin_cluster}"
  ///
  /// [upgradeConfig_clusterName] - The user cluster resource name. This is the
  /// full resource name of the user cluster resource. Format:
  /// "projects/{project}/locations/{location}/vmwareClusters/{vmware_cluster}"
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [QueryVmwareVersionConfigResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<QueryVmwareVersionConfigResponse> queryVersionConfig(
    core.String parent, {
    core.String? createConfig_adminClusterMembership,
    core.String? createConfig_adminClusterName,
    core.String? upgradeConfig_clusterName,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (createConfig_adminClusterMembership != null)
        'createConfig.adminClusterMembership': [
          createConfig_adminClusterMembership
        ],
      if (createConfig_adminClusterName != null)
        'createConfig.adminClusterName': [createConfig_adminClusterName],
      if (upgradeConfig_clusterName != null)
        'upgradeConfig.clusterName': [upgradeConfig_clusterName],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' +
        core.Uri.encodeFull('$parent') +
        '/vmwareClusters:queryVersionConfig';

    final response_ = await _requester.request(
      url_,
      'POST',
      queryParams: queryParams_,
    );
    return QueryVmwareVersionConfigResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Sets the access control policy on the specified resource.
  ///
  /// Replaces any existing policy. Can return `NOT_FOUND`, `INVALID_ARGUMENT`,
  /// and `PERMISSION_DENIED` errors.
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
  /// `^projects/\[^/\]+/locations/\[^/\]+/vmwareClusters/\[^/\]+$`.
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

    final url_ = 'v1/' + core.Uri.encodeFull('$resource') + ':setIamPolicy';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Policy.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Returns permissions that a caller has on the specified resource.
  ///
  /// If the resource does not exist, this will return an empty set of
  /// permissions, not a `NOT_FOUND` error. Note: This operation is designed to
  /// be used for building permission-aware UIs and command-line tools, not for
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
  /// `^projects/\[^/\]+/locations/\[^/\]+/vmwareClusters/\[^/\]+$`.
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
        'v1/' + core.Uri.encodeFull('$resource') + ':testIamPermissions';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return TestIamPermissionsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Unenrolls an existing VMware user cluster and its node pools from the
  /// Anthos On-Prem API within a given project and location.
  ///
  /// Unenrollment removes the Cloud reference to the cluster without modifying
  /// the underlying OnPrem Resources. Clusters and node pools will continue to
  /// run; however, they will no longer be accessible through the Anthos On-Prem
  /// API or UI.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Name of the VMware user cluster to be unenrolled.
  /// Format:
  /// "projects/{project}/locations/{location}/vmwareClusters/{vmware_cluster}"
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/vmwareClusters/\[^/\]+$`.
  ///
  /// [allowMissing] - If set to true, and the VMware cluster is not found, the
  /// request will succeed but no action will be taken on the server and return
  /// a completed LRO.
  ///
  /// [etag] - The current etag of the VMware Cluster. If an etag is provided
  /// and does not match the current etag of the cluster, deletion will be
  /// blocked and an ABORTED error will be returned.
  ///
  /// [force] - This is required if the cluster has any associated node pools.
  /// When set, any child node pools will also be unenrolled.
  ///
  /// [validateOnly] - Validate the request without actually doing any updates.
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
  async.Future<Operation> unenroll(
    core.String name, {
    core.bool? allowMissing,
    core.String? etag,
    core.bool? force,
    core.bool? validateOnly,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (allowMissing != null) 'allowMissing': ['${allowMissing}'],
      if (etag != null) 'etag': [etag],
      if (force != null) 'force': ['${force}'],
      if (validateOnly != null) 'validateOnly': ['${validateOnly}'],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':unenroll';

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsVmwareClustersOperationsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsVmwareClustersOperationsResource(commons.ApiRequester client)
      : _requester = client;

  /// Gets the latest state of a long-running operation.
  ///
  /// Clients can use this method to poll the operation result at intervals as
  /// recommended by the API service.
  ///
  /// Request parameters:
  ///
  /// [name] - The name of the operation resource.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/vmwareClusters/\[^/\]+/operations/\[^/\]+$`.
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
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
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

  /// Lists operations that match the specified filter in the request.
  ///
  /// If the server doesn't support this method, it returns `UNIMPLEMENTED`.
  ///
  /// Request parameters:
  ///
  /// [name] - The name of the operation's parent resource.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/vmwareClusters/\[^/\]+$`.
  ///
  /// [filter] - The standard list filter.
  ///
  /// [pageSize] - The standard list page size.
  ///
  /// [pageToken] - The standard list page token.
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

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + '/operations';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListOperationsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsVmwareClustersVmwareNodePoolsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsVmwareClustersVmwareNodePoolsOperationsResource
      get operations =>
          ProjectsLocationsVmwareClustersVmwareNodePoolsOperationsResource(
              _requester);

  ProjectsLocationsVmwareClustersVmwareNodePoolsResource(
      commons.ApiRequester client)
      : _requester = client;

  /// Creates a new VMware node pool in a given project, location and VMWare
  /// cluster.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent resource where this node pool will be
  /// created. projects/{project}/locations/{location}/vmwareClusters/{cluster}
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/vmwareClusters/\[^/\]+$`.
  ///
  /// [validateOnly] - If set, only validate the request, but do not actually
  /// create the node pool.
  ///
  /// [vmwareNodePoolId] - The ID to use for the node pool, which will become
  /// the final component of the node pool's resource name. This value must be
  /// up to 40 characters and follow RFC-1123
  /// (https://tools.ietf.org/html/rfc1123) format. The value must not be
  /// permitted to be a UUID (or UUID-like: anything matching
  /// /^\[0-9a-f\]{8}(-\[0-9a-f\]{4}){3}-\[0-9a-f\]{12}$/i).
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
    VmwareNodePool request,
    core.String parent, {
    core.bool? validateOnly,
    core.String? vmwareNodePoolId,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (validateOnly != null) 'validateOnly': ['${validateOnly}'],
      if (vmwareNodePoolId != null) 'vmwareNodePoolId': [vmwareNodePoolId],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/vmwareNodePools';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Deletes a single VMware node pool.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the node pool to delete. Format:
  /// projects/{project}/locations/{location}/vmwareClusters/{cluster}/vmwareNodePools/{nodepool}
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/vmwareClusters/\[^/\]+/vmwareNodePools/\[^/\]+$`.
  ///
  /// [allowMissing] - If set to true, and the VMware node pool is not found,
  /// the request will succeed but no action will be taken on the server and
  /// return a completed LRO.
  ///
  /// [etag] - The current etag of the VmwareNodePool. If an etag is provided
  /// and does not match the current etag of the node pool, deletion will be
  /// blocked and an ABORTED error will be returned.
  ///
  /// [ignoreErrors] - If set to true, the deletion of a VMware node pool
  /// resource will succeed even if errors occur during deletion. This parameter
  /// can be used when you want to delete GCP's node pool resource and you've
  /// already deleted the on-prem admin cluster that hosted your node pool.
  /// WARNING: Using this parameter when your user cluster still exists may
  /// result in a deleted GCP node pool but an existing on-prem node pool.
  ///
  /// [validateOnly] - If set, only validate the request, but do not actually
  /// delete the node pool.
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
    core.bool? allowMissing,
    core.String? etag,
    core.bool? ignoreErrors,
    core.bool? validateOnly,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (allowMissing != null) 'allowMissing': ['${allowMissing}'],
      if (etag != null) 'etag': [etag],
      if (ignoreErrors != null) 'ignoreErrors': ['${ignoreErrors}'],
      if (validateOnly != null) 'validateOnly': ['${validateOnly}'],
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

  /// Enrolls a VMware node pool to Anthos On-Prem API
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent resource where the node pool is enrolled
  /// in.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/vmwareClusters/\[^/\]+$`.
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
  async.Future<Operation> enroll(
    EnrollVmwareNodePoolRequest request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1/' + core.Uri.encodeFull('$parent') + '/vmwareNodePools:enroll';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Gets details of a single VMware node pool.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the node pool to retrieve.
  /// projects/{project}/locations/{location}/vmwareClusters/{cluster}/vmwareNodePools/{nodepool}
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/vmwareClusters/\[^/\]+/vmwareNodePools/\[^/\]+$`.
  ///
  /// [view] - View for VMware node pool. When \`BASIC\` is specified, only the
  /// node pool resource name is returned. The default/unset value
  /// \`NODE_POOL_VIEW_UNSPECIFIED\` is the same as \`FULL', which returns the
  /// complete node pool configuration details.
  /// Possible string values are:
  /// - "NODE_POOL_VIEW_UNSPECIFIED" : If the value is not set, the default
  /// \`FULL\` view is used.
  /// - "BASIC" : Includes basic information of a node pool resource including
  /// node pool resource name.
  /// - "FULL" : Includes the complete configuration for VMware node pool
  /// resource. This is the default value for GetVmwareNodePoolRequest method.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [VmwareNodePool].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<VmwareNodePool> get(
    core.String name, {
    core.String? view,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (view != null) 'view': [view],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return VmwareNodePool.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Gets the access control policy for a resource.
  ///
  /// Returns an empty policy if the resource exists and does not have a policy
  /// set.
  ///
  /// Request parameters:
  ///
  /// [resource] - REQUIRED: The resource for which the policy is being
  /// requested. See
  /// [Resource names](https://cloud.google.com/apis/design/resource_names) for
  /// the appropriate value for this field.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/vmwareClusters/\[^/\]+/vmwareNodePools/\[^/\]+$`.
  ///
  /// [options_requestedPolicyVersion] - Optional. The maximum policy version
  /// that will be used to format the policy. Valid values are 0, 1, and 3.
  /// Requests specifying an invalid value will be rejected. Requests for
  /// policies with any conditional role bindings must specify version 3.
  /// Policies with no conditional role bindings may specify any valid value or
  /// leave the field unset. The policy in the response might use the policy
  /// version that you specified, or it might use a lower policy version. For
  /// example, if you specify version 3, but the policy has no conditional role
  /// bindings, the response uses version 1. To learn which resources support
  /// conditions in their IAM policies, see the
  /// [IAM documentation](https://cloud.google.com/iam/help/conditions/resource-policies).
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
    core.String resource, {
    core.int? options_requestedPolicyVersion,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (options_requestedPolicyVersion != null)
        'options.requestedPolicyVersion': ['${options_requestedPolicyVersion}'],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$resource') + ':getIamPolicy';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return Policy.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists VMware node pools in a given project, location and VMWare cluster.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent, which owns this collection of node pools.
  /// Format:
  /// projects/{project}/locations/{location}/vmwareClusters/{vmwareCluster}
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/vmwareClusters/\[^/\]+$`.
  ///
  /// [pageSize] - The maximum number of node pools to return. The service may
  /// return fewer than this value. If unspecified, at most 50 node pools will
  /// be returned. The maximum value is 1000; values above 1000 will be coerced
  /// to 1000.
  ///
  /// [pageToken] - A page token, received from a previous `ListVmwareNodePools`
  /// call. Provide this to retrieve the subsequent page. When paginating, all
  /// other parameters provided to `ListVmwareNodePools` must match the call
  /// that provided the page token.
  ///
  /// [view] - View for VMware node pools. When \`BASIC\` is specified, only the
  /// node pool resource name is returned. The default/unset value
  /// \`NODE_POOL_VIEW_UNSPECIFIED\` is the same as \`FULL', which returns the
  /// complete node pool configuration details.
  /// Possible string values are:
  /// - "NODE_POOL_VIEW_UNSPECIFIED" : If the value is not set, the default
  /// \`FULL\` view is used.
  /// - "BASIC" : Includes basic information of a node pool resource including
  /// node pool resource name.
  /// - "FULL" : Includes the complete configuration for VMware node pool
  /// resource. This is the default value for ListVmwareNodePoolsRequest method.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListVmwareNodePoolsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListVmwareNodePoolsResponse> list(
    core.String parent, {
    core.int? pageSize,
    core.String? pageToken,
    core.String? view,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if (view != null) 'view': [view],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/vmwareNodePools';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListVmwareNodePoolsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Updates the parameters of a single VMware node pool.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Immutable. The resource name of this node pool.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/vmwareClusters/\[^/\]+/vmwareNodePools/\[^/\]+$`.
  ///
  /// [updateMask] - Required. Field mask is used to specify the fields to be
  /// overwritten in the VMwareNodePool resource by the update. The fields
  /// specified in the update_mask are relative to the resource, not the full
  /// request. A field will be overwritten if it is in the mask. If the user
  /// does not provide a mask then all populated fields in the VMwareNodePool
  /// message will be updated. Empty fields will be ignored unless a field mask
  /// is used.
  ///
  /// [validateOnly] - Validate the request without actually doing any updates.
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
    VmwareNodePool request,
    core.String name, {
    core.String? updateMask,
    core.bool? validateOnly,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (updateMask != null) 'updateMask': [updateMask],
      if (validateOnly != null) 'validateOnly': ['${validateOnly}'],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Sets the access control policy on the specified resource.
  ///
  /// Replaces any existing policy. Can return `NOT_FOUND`, `INVALID_ARGUMENT`,
  /// and `PERMISSION_DENIED` errors.
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
  /// `^projects/\[^/\]+/locations/\[^/\]+/vmwareClusters/\[^/\]+/vmwareNodePools/\[^/\]+$`.
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

    final url_ = 'v1/' + core.Uri.encodeFull('$resource') + ':setIamPolicy';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Policy.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Returns permissions that a caller has on the specified resource.
  ///
  /// If the resource does not exist, this will return an empty set of
  /// permissions, not a `NOT_FOUND` error. Note: This operation is designed to
  /// be used for building permission-aware UIs and command-line tools, not for
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
  /// `^projects/\[^/\]+/locations/\[^/\]+/vmwareClusters/\[^/\]+/vmwareNodePools/\[^/\]+$`.
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
        'v1/' + core.Uri.encodeFull('$resource') + ':testIamPermissions';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return TestIamPermissionsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Unenrolls a VMware node pool to Anthos On-Prem API
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the node pool to unenroll. Format:
  /// projects/{project}/locations/{location}/vmwareClusters/{cluster}/vmwareNodePools/{nodepool}
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/vmwareClusters/\[^/\]+/vmwareNodePools/\[^/\]+$`.
  ///
  /// [allowMissing] - If set to true, and the VMware node pool is not found,
  /// the request will succeed but no action will be taken on the server and
  /// return a completed LRO.
  ///
  /// [etag] - The current etag of the VMware node pool. If an etag is provided
  /// and does not match the current etag of node pool, deletion will be blocked
  /// and an ABORTED error will be returned.
  ///
  /// [validateOnly] - If set, only validate the request, but do not actually
  /// unenroll the node pool.
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
  async.Future<Operation> unenroll(
    core.String name, {
    core.bool? allowMissing,
    core.String? etag,
    core.bool? validateOnly,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (allowMissing != null) 'allowMissing': ['${allowMissing}'],
      if (etag != null) 'etag': [etag],
      if (validateOnly != null) 'validateOnly': ['${validateOnly}'],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':unenroll';

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsVmwareClustersVmwareNodePoolsOperationsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsVmwareClustersVmwareNodePoolsOperationsResource(
      commons.ApiRequester client)
      : _requester = client;

  /// Gets the latest state of a long-running operation.
  ///
  /// Clients can use this method to poll the operation result at intervals as
  /// recommended by the API service.
  ///
  /// Request parameters:
  ///
  /// [name] - The name of the operation resource.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/vmwareClusters/\[^/\]+/vmwareNodePools/\[^/\]+/operations/\[^/\]+$`.
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
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
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

  /// Lists operations that match the specified filter in the request.
  ///
  /// If the server doesn't support this method, it returns `UNIMPLEMENTED`.
  ///
  /// Request parameters:
  ///
  /// [name] - The name of the operation's parent resource.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/vmwareClusters/\[^/\]+/vmwareNodePools/\[^/\]+$`.
  ///
  /// [filter] - The standard list filter.
  ///
  /// [pageSize] - The standard list page size.
  ///
  /// [pageToken] - The standard list page token.
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

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + '/operations';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListOperationsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

/// Authorization defines the On-Prem cluster authorization configuration to
/// bootstrap onto the admin cluster.
class Authorization {
  /// For VMware and bare metal user clusters, users will be granted the
  /// cluster-admin role on the cluster, which provides full administrative
  /// access to the cluster.
  ///
  /// For bare metal admin clusters, users will be granted the cluster-view
  /// role, which limits users to read-only access.
  core.List<ClusterUser>? adminUsers;

  Authorization({
    this.adminUsers,
  });

  Authorization.fromJson(core.Map json_)
      : this(
          adminUsers: json_.containsKey('adminUsers')
              ? (json_['adminUsers'] as core.List)
                  .map((value) => ClusterUser.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (adminUsers != null) 'adminUsers': adminUsers!,
      };
}

/// BareMetalAdminApiServerArgument represents an arg name-\>value pair.
///
/// Only a subset of customized flags are supported. Please refer to the API
/// server documentation below to know the exact format:
/// https://kubernetes.io/docs/reference/command-line-tools-reference/kube-apiserver/
class BareMetalAdminApiServerArgument {
  /// The argument name as it appears on the API Server command line please make
  /// sure to remove the leading dashes.
  ///
  /// Required.
  core.String? argument;

  /// The value of the arg as it will be passed to the API Server command line.
  ///
  /// Required.
  core.String? value;

  BareMetalAdminApiServerArgument({
    this.argument,
    this.value,
  });

  BareMetalAdminApiServerArgument.fromJson(core.Map json_)
      : this(
          argument: json_.containsKey('argument')
              ? json_['argument'] as core.String
              : null,
          value:
              json_.containsKey('value') ? json_['value'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (argument != null) 'argument': argument!,
        if (value != null) 'value': value!,
      };
}

/// Resource that represents a bare metal admin cluster.
class BareMetalAdminCluster {
  /// Annotations on the bare metal admin cluster.
  ///
  /// This field has the same restrictions as Kubernetes annotations. The total
  /// size of all keys and values combined is limited to 256k. Key can have 2
  /// segments: prefix (optional) and name (required), separated by a slash (/).
  /// Prefix must be a DNS subdomain. Name must be 63 characters or less, begin
  /// and end with alphanumerics, with dashes (-), underscores (_), dots (.),
  /// and alphanumerics between.
  core.Map<core.String, core.String>? annotations;

  /// The Anthos clusters on bare metal version for the bare metal admin
  /// cluster.
  core.String? bareMetalVersion;

  /// Binary Authorization related configurations.
  BinaryAuthorization? binaryAuthorization;

  /// Cluster operations configuration.
  BareMetalAdminClusterOperationsConfig? clusterOperations;

  /// Control plane configuration.
  BareMetalAdminControlPlaneConfig? controlPlane;

  /// The time at which this bare metal admin cluster was created.
  ///
  /// Output only.
  core.String? createTime;

  /// The time at which this bare metal admin cluster was deleted.
  ///
  /// If the resource is not deleted, this must be empty
  ///
  /// Output only.
  core.String? deleteTime;

  /// A human readable description of this bare metal admin cluster.
  core.String? description;

  /// The IP address name of bare metal admin cluster's API server.
  ///
  /// Output only.
  core.String? endpoint;

  /// This checksum is computed by the server based on the value of other
  /// fields, and may be sent on update and delete requests to ensure the client
  /// has an up-to-date value before proceeding.
  ///
  /// Allows clients to perform consistent read-modify-writes through optimistic
  /// concurrency control.
  core.String? etag;

  /// Fleet configuration for the cluster.
  ///
  /// Output only.
  Fleet? fleet;

  /// Load balancer configuration.
  BareMetalAdminLoadBalancerConfig? loadBalancer;

  /// The object name of the bare metal cluster custom resource.
  ///
  /// This field is used to support conflicting names when enrolling existing
  /// clusters to the API. When used as a part of cluster enrollment, this field
  /// will differ from the ID in the resource name. For new clusters, this field
  /// will match the user provided cluster name and be visible in the last
  /// component of the resource name. It is not modifiable. All users should use
  /// this name to access their cluster using gkectl or kubectl and should
  /// expect to see the local name when viewing admin cluster controller logs.
  ///
  /// Output only.
  core.String? localName;

  /// Maintenance configuration.
  BareMetalAdminMaintenanceConfig? maintenanceConfig;

  /// MaintenanceStatus representing state of maintenance.
  ///
  /// Output only.
  BareMetalAdminMaintenanceStatus? maintenanceStatus;

  /// The bare metal admin cluster resource name.
  ///
  /// Immutable.
  core.String? name;

  /// Network configuration.
  BareMetalAdminNetworkConfig? networkConfig;

  /// Node access related configurations.
  BareMetalAdminNodeAccessConfig? nodeAccessConfig;

  /// Workload node configuration.
  BareMetalAdminWorkloadNodeConfig? nodeConfig;

  /// OS environment related configurations.
  BareMetalAdminOsEnvironmentConfig? osEnvironmentConfig;

  /// Proxy configuration.
  BareMetalAdminProxyConfig? proxy;

  /// If set, there are currently changes in flight to the bare metal Admin
  /// Cluster.
  ///
  /// Output only.
  core.bool? reconciling;

  /// Security related configuration.
  BareMetalAdminSecurityConfig? securityConfig;

  /// The current state of the bare metal admin cluster.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : Not set.
  /// - "PROVISIONING" : The PROVISIONING state indicates the cluster is being
  /// created.
  /// - "RUNNING" : The RUNNING state indicates the cluster has been created and
  /// is fully usable.
  /// - "RECONCILING" : The RECONCILING state indicates that the cluster is
  /// being updated. It remains available, but potentially with degraded
  /// performance.
  /// - "STOPPING" : The STOPPING state indicates the cluster is being deleted.
  /// - "ERROR" : The ERROR state indicates the cluster is in a broken
  /// unrecoverable state.
  /// - "DEGRADED" : The DEGRADED state indicates the cluster requires user
  /// action to restore full functionality.
  core.String? state;

  /// ResourceStatus representing detailed cluster status.
  ///
  /// Output only.
  ResourceStatus? status;

  /// Storage configuration.
  BareMetalAdminStorageConfig? storage;

  /// The unique identifier of the bare metal admin cluster.
  ///
  /// Output only.
  core.String? uid;

  /// The time at which this bare metal admin cluster was last updated.
  ///
  /// Output only.
  core.String? updateTime;

  /// ValidationCheck representing the result of the preflight check.
  ///
  /// Output only.
  ValidationCheck? validationCheck;

  BareMetalAdminCluster({
    this.annotations,
    this.bareMetalVersion,
    this.binaryAuthorization,
    this.clusterOperations,
    this.controlPlane,
    this.createTime,
    this.deleteTime,
    this.description,
    this.endpoint,
    this.etag,
    this.fleet,
    this.loadBalancer,
    this.localName,
    this.maintenanceConfig,
    this.maintenanceStatus,
    this.name,
    this.networkConfig,
    this.nodeAccessConfig,
    this.nodeConfig,
    this.osEnvironmentConfig,
    this.proxy,
    this.reconciling,
    this.securityConfig,
    this.state,
    this.status,
    this.storage,
    this.uid,
    this.updateTime,
    this.validationCheck,
  });

  BareMetalAdminCluster.fromJson(core.Map json_)
      : this(
          annotations: json_.containsKey('annotations')
              ? (json_['annotations'] as core.Map<core.String, core.dynamic>)
                  .map(
                  (key, value) => core.MapEntry(
                    key,
                    value as core.String,
                  ),
                )
              : null,
          bareMetalVersion: json_.containsKey('bareMetalVersion')
              ? json_['bareMetalVersion'] as core.String
              : null,
          binaryAuthorization: json_.containsKey('binaryAuthorization')
              ? BinaryAuthorization.fromJson(json_['binaryAuthorization']
                  as core.Map<core.String, core.dynamic>)
              : null,
          clusterOperations: json_.containsKey('clusterOperations')
              ? BareMetalAdminClusterOperationsConfig.fromJson(
                  json_['clusterOperations']
                      as core.Map<core.String, core.dynamic>)
              : null,
          controlPlane: json_.containsKey('controlPlane')
              ? BareMetalAdminControlPlaneConfig.fromJson(
                  json_['controlPlane'] as core.Map<core.String, core.dynamic>)
              : null,
          createTime: json_.containsKey('createTime')
              ? json_['createTime'] as core.String
              : null,
          deleteTime: json_.containsKey('deleteTime')
              ? json_['deleteTime'] as core.String
              : null,
          description: json_.containsKey('description')
              ? json_['description'] as core.String
              : null,
          endpoint: json_.containsKey('endpoint')
              ? json_['endpoint'] as core.String
              : null,
          etag: json_.containsKey('etag') ? json_['etag'] as core.String : null,
          fleet: json_.containsKey('fleet')
              ? Fleet.fromJson(
                  json_['fleet'] as core.Map<core.String, core.dynamic>)
              : null,
          loadBalancer: json_.containsKey('loadBalancer')
              ? BareMetalAdminLoadBalancerConfig.fromJson(
                  json_['loadBalancer'] as core.Map<core.String, core.dynamic>)
              : null,
          localName: json_.containsKey('localName')
              ? json_['localName'] as core.String
              : null,
          maintenanceConfig: json_.containsKey('maintenanceConfig')
              ? BareMetalAdminMaintenanceConfig.fromJson(
                  json_['maintenanceConfig']
                      as core.Map<core.String, core.dynamic>)
              : null,
          maintenanceStatus: json_.containsKey('maintenanceStatus')
              ? BareMetalAdminMaintenanceStatus.fromJson(
                  json_['maintenanceStatus']
                      as core.Map<core.String, core.dynamic>)
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          networkConfig: json_.containsKey('networkConfig')
              ? BareMetalAdminNetworkConfig.fromJson(
                  json_['networkConfig'] as core.Map<core.String, core.dynamic>)
              : null,
          nodeAccessConfig: json_.containsKey('nodeAccessConfig')
              ? BareMetalAdminNodeAccessConfig.fromJson(
                  json_['nodeAccessConfig']
                      as core.Map<core.String, core.dynamic>)
              : null,
          nodeConfig: json_.containsKey('nodeConfig')
              ? BareMetalAdminWorkloadNodeConfig.fromJson(
                  json_['nodeConfig'] as core.Map<core.String, core.dynamic>)
              : null,
          osEnvironmentConfig: json_.containsKey('osEnvironmentConfig')
              ? BareMetalAdminOsEnvironmentConfig.fromJson(
                  json_['osEnvironmentConfig']
                      as core.Map<core.String, core.dynamic>)
              : null,
          proxy: json_.containsKey('proxy')
              ? BareMetalAdminProxyConfig.fromJson(
                  json_['proxy'] as core.Map<core.String, core.dynamic>)
              : null,
          reconciling: json_.containsKey('reconciling')
              ? json_['reconciling'] as core.bool
              : null,
          securityConfig: json_.containsKey('securityConfig')
              ? BareMetalAdminSecurityConfig.fromJson(json_['securityConfig']
                  as core.Map<core.String, core.dynamic>)
              : null,
          state:
              json_.containsKey('state') ? json_['state'] as core.String : null,
          status: json_.containsKey('status')
              ? ResourceStatus.fromJson(
                  json_['status'] as core.Map<core.String, core.dynamic>)
              : null,
          storage: json_.containsKey('storage')
              ? BareMetalAdminStorageConfig.fromJson(
                  json_['storage'] as core.Map<core.String, core.dynamic>)
              : null,
          uid: json_.containsKey('uid') ? json_['uid'] as core.String : null,
          updateTime: json_.containsKey('updateTime')
              ? json_['updateTime'] as core.String
              : null,
          validationCheck: json_.containsKey('validationCheck')
              ? ValidationCheck.fromJson(json_['validationCheck']
                  as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (annotations != null) 'annotations': annotations!,
        if (bareMetalVersion != null) 'bareMetalVersion': bareMetalVersion!,
        if (binaryAuthorization != null)
          'binaryAuthorization': binaryAuthorization!,
        if (clusterOperations != null) 'clusterOperations': clusterOperations!,
        if (controlPlane != null) 'controlPlane': controlPlane!,
        if (createTime != null) 'createTime': createTime!,
        if (deleteTime != null) 'deleteTime': deleteTime!,
        if (description != null) 'description': description!,
        if (endpoint != null) 'endpoint': endpoint!,
        if (etag != null) 'etag': etag!,
        if (fleet != null) 'fleet': fleet!,
        if (loadBalancer != null) 'loadBalancer': loadBalancer!,
        if (localName != null) 'localName': localName!,
        if (maintenanceConfig != null) 'maintenanceConfig': maintenanceConfig!,
        if (maintenanceStatus != null) 'maintenanceStatus': maintenanceStatus!,
        if (name != null) 'name': name!,
        if (networkConfig != null) 'networkConfig': networkConfig!,
        if (nodeAccessConfig != null) 'nodeAccessConfig': nodeAccessConfig!,
        if (nodeConfig != null) 'nodeConfig': nodeConfig!,
        if (osEnvironmentConfig != null)
          'osEnvironmentConfig': osEnvironmentConfig!,
        if (proxy != null) 'proxy': proxy!,
        if (reconciling != null) 'reconciling': reconciling!,
        if (securityConfig != null) 'securityConfig': securityConfig!,
        if (state != null) 'state': state!,
        if (status != null) 'status': status!,
        if (storage != null) 'storage': storage!,
        if (uid != null) 'uid': uid!,
        if (updateTime != null) 'updateTime': updateTime!,
        if (validationCheck != null) 'validationCheck': validationCheck!,
      };
}

/// BareMetalAdminClusterOperationsConfig specifies the admin cluster's
/// observability infrastructure.
typedef BareMetalAdminClusterOperationsConfig = $ClusterOperationsConfig;

/// BareMetalAdminControlPlaneConfig specifies the control plane configuration.
class BareMetalAdminControlPlaneConfig {
  /// Customizes the default API server args.
  ///
  /// Only a subset of customized flags are supported. Please refer to the API
  /// server documentation below to know the exact format:
  /// https://kubernetes.io/docs/reference/command-line-tools-reference/kube-apiserver/
  core.List<BareMetalAdminApiServerArgument>? apiServerArgs;

  /// Configures the node pool running the control plane.
  ///
  /// If specified the corresponding NodePool will be created for the cluster's
  /// control plane. The NodePool will have the same name and namespace as the
  /// cluster.
  ///
  /// Required.
  BareMetalAdminControlPlaneNodePoolConfig? controlPlaneNodePoolConfig;

  BareMetalAdminControlPlaneConfig({
    this.apiServerArgs,
    this.controlPlaneNodePoolConfig,
  });

  BareMetalAdminControlPlaneConfig.fromJson(core.Map json_)
      : this(
          apiServerArgs: json_.containsKey('apiServerArgs')
              ? (json_['apiServerArgs'] as core.List)
                  .map((value) => BareMetalAdminApiServerArgument.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          controlPlaneNodePoolConfig:
              json_.containsKey('controlPlaneNodePoolConfig')
                  ? BareMetalAdminControlPlaneNodePoolConfig.fromJson(
                      json_['controlPlaneNodePoolConfig']
                          as core.Map<core.String, core.dynamic>)
                  : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (apiServerArgs != null) 'apiServerArgs': apiServerArgs!,
        if (controlPlaneNodePoolConfig != null)
          'controlPlaneNodePoolConfig': controlPlaneNodePoolConfig!,
      };
}

/// BareMetalAdminControlPlaneNodePoolConfig specifies the control plane node
/// pool configuration.
///
/// We have a control plane specific node pool config so that we can flexible
/// about supporting control plane specific fields in the future.
class BareMetalAdminControlPlaneNodePoolConfig {
  /// The generic configuration for a node pool running the control plane.
  ///
  /// Required.
  BareMetalNodePoolConfig? nodePoolConfig;

  BareMetalAdminControlPlaneNodePoolConfig({
    this.nodePoolConfig,
  });

  BareMetalAdminControlPlaneNodePoolConfig.fromJson(core.Map json_)
      : this(
          nodePoolConfig: json_.containsKey('nodePoolConfig')
              ? BareMetalNodePoolConfig.fromJson(json_['nodePoolConfig']
                  as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (nodePoolConfig != null) 'nodePoolConfig': nodePoolConfig!,
      };
}

/// BareMetalAdminDrainedMachine represents the machines that are drained.
typedef BareMetalAdminDrainedMachine = $DrainedMachine;

/// BareMetalAdminDrainingMachine represents the machines that are currently
/// draining.
typedef BareMetalAdminDrainingMachine = $DrainingMachine;

/// BareMetalAdminIslandModeCidrConfig specifies the cluster CIDR configuration
/// while running in island mode.
class BareMetalAdminIslandModeCidrConfig {
  /// All pods in the cluster are assigned an RFC1918 IPv4 address from these
  /// ranges.
  ///
  /// This field cannot be changed after creation.
  ///
  /// Required.
  core.List<core.String>? podAddressCidrBlocks;

  /// All services in the cluster are assigned an RFC1918 IPv4 address from
  /// these ranges.
  ///
  /// This field cannot be changed after creation.
  ///
  /// Required.
  core.List<core.String>? serviceAddressCidrBlocks;

  BareMetalAdminIslandModeCidrConfig({
    this.podAddressCidrBlocks,
    this.serviceAddressCidrBlocks,
  });

  BareMetalAdminIslandModeCidrConfig.fromJson(core.Map json_)
      : this(
          podAddressCidrBlocks: json_.containsKey('podAddressCidrBlocks')
              ? (json_['podAddressCidrBlocks'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          serviceAddressCidrBlocks:
              json_.containsKey('serviceAddressCidrBlocks')
                  ? (json_['serviceAddressCidrBlocks'] as core.List)
                      .map((value) => value as core.String)
                      .toList()
                  : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (podAddressCidrBlocks != null)
          'podAddressCidrBlocks': podAddressCidrBlocks!,
        if (serviceAddressCidrBlocks != null)
          'serviceAddressCidrBlocks': serviceAddressCidrBlocks!,
      };
}

/// BareMetalAdminLoadBalancerConfig specifies the load balancer configuration.
class BareMetalAdminLoadBalancerConfig {
  /// Manually configured load balancers.
  BareMetalAdminManualLbConfig? manualLbConfig;

  /// Configures the ports that the load balancer will listen on.
  BareMetalAdminPortConfig? portConfig;

  /// The VIPs used by the load balancer.
  BareMetalAdminVipConfig? vipConfig;

  BareMetalAdminLoadBalancerConfig({
    this.manualLbConfig,
    this.portConfig,
    this.vipConfig,
  });

  BareMetalAdminLoadBalancerConfig.fromJson(core.Map json_)
      : this(
          manualLbConfig: json_.containsKey('manualLbConfig')
              ? BareMetalAdminManualLbConfig.fromJson(json_['manualLbConfig']
                  as core.Map<core.String, core.dynamic>)
              : null,
          portConfig: json_.containsKey('portConfig')
              ? BareMetalAdminPortConfig.fromJson(
                  json_['portConfig'] as core.Map<core.String, core.dynamic>)
              : null,
          vipConfig: json_.containsKey('vipConfig')
              ? BareMetalAdminVipConfig.fromJson(
                  json_['vipConfig'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (manualLbConfig != null) 'manualLbConfig': manualLbConfig!,
        if (portConfig != null) 'portConfig': portConfig!,
        if (vipConfig != null) 'vipConfig': vipConfig!,
      };
}

/// BareMetalAdminMachineDrainStatus represents the status of bare metal node
/// machines that are undergoing drain operations.
class BareMetalAdminMachineDrainStatus {
  /// The list of drained machines.
  core.List<BareMetalAdminDrainedMachine>? drainedMachines;

  /// The list of draning machines.
  core.List<BareMetalAdminDrainingMachine>? drainingMachines;

  BareMetalAdminMachineDrainStatus({
    this.drainedMachines,
    this.drainingMachines,
  });

  BareMetalAdminMachineDrainStatus.fromJson(core.Map json_)
      : this(
          drainedMachines: json_.containsKey('drainedMachines')
              ? (json_['drainedMachines'] as core.List)
                  .map((value) => BareMetalAdminDrainedMachine.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          drainingMachines: json_.containsKey('drainingMachines')
              ? (json_['drainingMachines'] as core.List)
                  .map((value) => BareMetalAdminDrainingMachine.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (drainedMachines != null) 'drainedMachines': drainedMachines!,
        if (drainingMachines != null) 'drainingMachines': drainingMachines!,
      };
}

/// BareMetalAdminMaintenanceConfig specifies configurations to put bare metal
/// Admin cluster CRs nodes in and out of maintenance.
typedef BareMetalAdminMaintenanceConfig = $MaintenanceConfig;

/// BareMetalAdminMaintenanceStatus represents the maintenance status for bare
/// metal Admin cluster CR's nodes.
class BareMetalAdminMaintenanceStatus {
  /// Represents the status of draining and drained machine nodes.
  ///
  /// This is used to show the progress of cluster upgrade.
  BareMetalAdminMachineDrainStatus? machineDrainStatus;

  BareMetalAdminMaintenanceStatus({
    this.machineDrainStatus,
  });

  BareMetalAdminMaintenanceStatus.fromJson(core.Map json_)
      : this(
          machineDrainStatus: json_.containsKey('machineDrainStatus')
              ? BareMetalAdminMachineDrainStatus.fromJson(
                  json_['machineDrainStatus']
                      as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (machineDrainStatus != null)
          'machineDrainStatus': machineDrainStatus!,
      };
}

/// BareMetalAdminManualLbConfig represents configuration parameters for a
/// manual load balancer.
typedef BareMetalAdminManualLbConfig = $ManualLbConfig;

/// BareMetalAdminNetworkConfig specifies the cluster network configuration.
class BareMetalAdminNetworkConfig {
  /// Configuration for Island mode CIDR.
  BareMetalAdminIslandModeCidrConfig? islandModeCidr;

  BareMetalAdminNetworkConfig({
    this.islandModeCidr,
  });

  BareMetalAdminNetworkConfig.fromJson(core.Map json_)
      : this(
          islandModeCidr: json_.containsKey('islandModeCidr')
              ? BareMetalAdminIslandModeCidrConfig.fromJson(
                  json_['islandModeCidr']
                      as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (islandModeCidr != null) 'islandModeCidr': islandModeCidr!,
      };
}

/// Specifies the node access related settings for the bare metal admin cluster.
class BareMetalAdminNodeAccessConfig {
  /// LoginUser is the user name used to access node machines.
  ///
  /// It defaults to "root" if not set.
  ///
  /// Required.
  core.String? loginUser;

  BareMetalAdminNodeAccessConfig({
    this.loginUser,
  });

  BareMetalAdminNodeAccessConfig.fromJson(core.Map json_)
      : this(
          loginUser: json_.containsKey('loginUser')
              ? json_['loginUser'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (loginUser != null) 'loginUser': loginUser!,
      };
}

/// Specifies operating system operation settings for cluster provisioning.
class BareMetalAdminOsEnvironmentConfig {
  /// Whether the package repo should be added when initializing bare metal
  /// machines.
  core.bool? packageRepoExcluded;

  BareMetalAdminOsEnvironmentConfig({
    this.packageRepoExcluded,
  });

  BareMetalAdminOsEnvironmentConfig.fromJson(core.Map json_)
      : this(
          packageRepoExcluded: json_.containsKey('packageRepoExcluded')
              ? json_['packageRepoExcluded'] as core.bool
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (packageRepoExcluded != null)
          'packageRepoExcluded': packageRepoExcluded!,
      };
}

/// BareMetalAdminPortConfig is the specification of load balancer ports.
typedef BareMetalAdminPortConfig = $PortConfig;

/// BareMetalAdminProxyConfig specifies the cluster proxy configuration.
class BareMetalAdminProxyConfig {
  /// A list of IPs, hostnames, and domains that should skip the proxy.
  ///
  /// Examples: \["127.0.0.1", "example.com", ".corp", "localhost"\].
  core.List<core.String>? noProxy;

  /// Specifies the address of your proxy server.
  ///
  /// Examples: `http://domain` WARNING: Do not provide credentials in the
  /// format `http://(username:password@)domain` these will be rejected by the
  /// server.
  ///
  /// Required.
  core.String? uri;

  BareMetalAdminProxyConfig({
    this.noProxy,
    this.uri,
  });

  BareMetalAdminProxyConfig.fromJson(core.Map json_)
      : this(
          noProxy: json_.containsKey('noProxy')
              ? (json_['noProxy'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          uri: json_.containsKey('uri') ? json_['uri'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (noProxy != null) 'noProxy': noProxy!,
        if (uri != null) 'uri': uri!,
      };
}

/// Specifies the security related settings for the bare metal admin cluster.
class BareMetalAdminSecurityConfig {
  /// Configures user access to the admin cluster.
  Authorization? authorization;

  BareMetalAdminSecurityConfig({
    this.authorization,
  });

  BareMetalAdminSecurityConfig.fromJson(core.Map json_)
      : this(
          authorization: json_.containsKey('authorization')
              ? Authorization.fromJson(
                  json_['authorization'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (authorization != null) 'authorization': authorization!,
      };
}

/// BareMetalAdminStorageConfig specifies the cluster storage configuration.
class BareMetalAdminStorageConfig {
  /// Specifies the config for local PersistentVolumes backed by mounted node
  /// disks.
  ///
  /// These disks need to be formatted and mounted by the user, which can be
  /// done before or after cluster creation.
  ///
  /// Required.
  BareMetalLvpConfig? lvpNodeMountsConfig;

  /// Specifies the config for local PersistentVolumes backed by subdirectories
  /// in a shared filesystem.
  ///
  /// These subdirectores are automatically created during cluster creation.
  ///
  /// Required.
  BareMetalLvpShareConfig? lvpShareConfig;

  BareMetalAdminStorageConfig({
    this.lvpNodeMountsConfig,
    this.lvpShareConfig,
  });

  BareMetalAdminStorageConfig.fromJson(core.Map json_)
      : this(
          lvpNodeMountsConfig: json_.containsKey('lvpNodeMountsConfig')
              ? BareMetalLvpConfig.fromJson(json_['lvpNodeMountsConfig']
                  as core.Map<core.String, core.dynamic>)
              : null,
          lvpShareConfig: json_.containsKey('lvpShareConfig')
              ? BareMetalLvpShareConfig.fromJson(json_['lvpShareConfig']
                  as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (lvpNodeMountsConfig != null)
          'lvpNodeMountsConfig': lvpNodeMountsConfig!,
        if (lvpShareConfig != null) 'lvpShareConfig': lvpShareConfig!,
      };
}

/// BareMetalAdminVipConfig for bare metal load balancer configurations.
class BareMetalAdminVipConfig {
  /// The VIP which you previously set aside for the Kubernetes API of this bare
  /// metal admin cluster.
  core.String? controlPlaneVip;

  BareMetalAdminVipConfig({
    this.controlPlaneVip,
  });

  BareMetalAdminVipConfig.fromJson(core.Map json_)
      : this(
          controlPlaneVip: json_.containsKey('controlPlaneVip')
              ? json_['controlPlaneVip'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (controlPlaneVip != null) 'controlPlaneVip': controlPlaneVip!,
      };
}

/// BareMetalAdminWorkloadNodeConfig specifies the workload node configurations.
class BareMetalAdminWorkloadNodeConfig {
  /// The maximum number of pods a node can run.
  ///
  /// The size of the CIDR range assigned to the node will be derived from this
  /// parameter. By default 110 Pods are created per Node. Upper bound is 250
  /// for both HA and non-HA admin cluster. Lower bound is 64 for non-HA admin
  /// cluster and 32 for HA admin cluster.
  core.String? maxPodsPerNode;

  BareMetalAdminWorkloadNodeConfig({
    this.maxPodsPerNode,
  });

  BareMetalAdminWorkloadNodeConfig.fromJson(core.Map json_)
      : this(
          maxPodsPerNode: json_.containsKey('maxPodsPerNode')
              ? json_['maxPodsPerNode'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (maxPodsPerNode != null) 'maxPodsPerNode': maxPodsPerNode!,
      };
}

/// Represents an arg name-\>value pair.
///
/// Only a subset of customized flags are supported. For the exact format, refer
/// to the
/// [API server documentation](https://kubernetes.io/docs/reference/command-line-tools-reference/kube-apiserver/).
class BareMetalApiServerArgument {
  /// The argument name as it appears on the API Server command line, make sure
  /// to remove the leading dashes.
  ///
  /// Required.
  core.String? argument;

  /// The value of the arg as it will be passed to the API Server command line.
  ///
  /// Required.
  core.String? value;

  BareMetalApiServerArgument({
    this.argument,
    this.value,
  });

  BareMetalApiServerArgument.fromJson(core.Map json_)
      : this(
          argument: json_.containsKey('argument')
              ? json_['argument'] as core.String
              : null,
          value:
              json_.containsKey('value') ? json_['value'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (argument != null) 'argument': argument!,
        if (value != null) 'value': value!,
      };
}

/// BareMetalBgpLbConfig represents configuration parameters for a Border
/// Gateway Protocol (BGP) load balancer.
class BareMetalBgpLbConfig {
  /// AddressPools is a list of non-overlapping IP pools used by load balancer
  /// typed services.
  ///
  /// All addresses must be routable to load balancer nodes. IngressVIP must be
  /// included in the pools.
  ///
  /// Required.
  core.List<BareMetalLoadBalancerAddressPool>? addressPools;

  /// BGP autonomous system number (ASN) of the cluster.
  ///
  /// This field can be updated after cluster creation.
  ///
  /// Required.
  core.String? asn;

  /// The list of BGP peers that the cluster will connect to.
  ///
  /// At least one peer must be configured for each control plane node. Control
  /// plane nodes will connect to these peers to advertise the control plane
  /// VIP. The Services load balancer also uses these peers by default. This
  /// field can be updated after cluster creation.
  ///
  /// Required.
  core.List<BareMetalBgpPeerConfig>? bgpPeerConfigs;

  /// Specifies the node pool running data plane load balancing.
  ///
  /// L2 connectivity is required among nodes in this pool. If missing, the
  /// control plane node pool is used for data plane load balancing.
  BareMetalLoadBalancerNodePoolConfig? loadBalancerNodePoolConfig;

  BareMetalBgpLbConfig({
    this.addressPools,
    this.asn,
    this.bgpPeerConfigs,
    this.loadBalancerNodePoolConfig,
  });

  BareMetalBgpLbConfig.fromJson(core.Map json_)
      : this(
          addressPools: json_.containsKey('addressPools')
              ? (json_['addressPools'] as core.List)
                  .map((value) => BareMetalLoadBalancerAddressPool.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          asn: json_.containsKey('asn') ? json_['asn'] as core.String : null,
          bgpPeerConfigs: json_.containsKey('bgpPeerConfigs')
              ? (json_['bgpPeerConfigs'] as core.List)
                  .map((value) => BareMetalBgpPeerConfig.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          loadBalancerNodePoolConfig:
              json_.containsKey('loadBalancerNodePoolConfig')
                  ? BareMetalLoadBalancerNodePoolConfig.fromJson(
                      json_['loadBalancerNodePoolConfig']
                          as core.Map<core.String, core.dynamic>)
                  : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (addressPools != null) 'addressPools': addressPools!,
        if (asn != null) 'asn': asn!,
        if (bgpPeerConfigs != null) 'bgpPeerConfigs': bgpPeerConfigs!,
        if (loadBalancerNodePoolConfig != null)
          'loadBalancerNodePoolConfig': loadBalancerNodePoolConfig!,
      };
}

/// BareMetalBgpPeerConfig represents configuration parameters for a Border
/// Gateway Protocol (BGP) peer.
class BareMetalBgpPeerConfig {
  /// BGP autonomous system number (ASN) for the network that contains the
  /// external peer device.
  ///
  /// Required.
  core.String? asn;

  /// The IP address of the control plane node that connects to the external
  /// peer.
  ///
  /// If you don't specify any control plane nodes, all control plane nodes can
  /// connect to the external peer. If you specify one or more IP addresses,
  /// only the nodes specified participate in peering sessions.
  core.List<core.String>? controlPlaneNodes;

  /// The IP address of the external peer device.
  ///
  /// Required.
  core.String? ipAddress;

  BareMetalBgpPeerConfig({
    this.asn,
    this.controlPlaneNodes,
    this.ipAddress,
  });

  BareMetalBgpPeerConfig.fromJson(core.Map json_)
      : this(
          asn: json_.containsKey('asn') ? json_['asn'] as core.String : null,
          controlPlaneNodes: json_.containsKey('controlPlaneNodes')
              ? (json_['controlPlaneNodes'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          ipAddress: json_.containsKey('ipAddress')
              ? json_['ipAddress'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (asn != null) 'asn': asn!,
        if (controlPlaneNodes != null) 'controlPlaneNodes': controlPlaneNodes!,
        if (ipAddress != null) 'ipAddress': ipAddress!,
      };
}

/// Resource that represents a bare metal user cluster.
class BareMetalCluster {
  /// The admin cluster this bare metal user cluster belongs to.
  ///
  /// This is the full resource name of the admin cluster's fleet membership.
  ///
  /// Required.
  core.String? adminClusterMembership;

  /// The resource name of the bare metal admin cluster managing this user
  /// cluster.
  ///
  /// Output only.
  core.String? adminClusterName;

  /// Annotations on the bare metal user cluster.
  ///
  /// This field has the same restrictions as Kubernetes annotations. The total
  /// size of all keys and values combined is limited to 256k. Key can have 2
  /// segments: prefix (optional) and name (required), separated by a slash (/).
  /// Prefix must be a DNS subdomain. Name must be 63 characters or less, begin
  /// and end with alphanumerics, with dashes (-), underscores (_), dots (.),
  /// and alphanumerics between.
  core.Map<core.String, core.String>? annotations;

  /// The Anthos clusters on bare metal version for your user cluster.
  ///
  /// Required.
  core.String? bareMetalVersion;

  /// Binary Authorization related configurations.
  BinaryAuthorization? binaryAuthorization;

  /// Cluster operations configuration.
  BareMetalClusterOperationsConfig? clusterOperations;

  /// Control plane configuration.
  ///
  /// Required.
  BareMetalControlPlaneConfig? controlPlane;

  /// The time when the bare metal user cluster was created.
  ///
  /// Output only.
  core.String? createTime;

  /// The time when the bare metal user cluster was deleted.
  ///
  /// If the resource is not deleted, this must be empty
  ///
  /// Output only.
  core.String? deleteTime;

  /// A human readable description of this bare metal user cluster.
  core.String? description;

  /// The IP address of the bare metal user cluster's API server.
  ///
  /// Output only.
  core.String? endpoint;

  /// This checksum is computed by the server based on the value of other
  /// fields, and may be sent on update and delete requests to ensure the client
  /// has an up-to-date value before proceeding.
  ///
  /// Allows clients to perform consistent read-modify-writes through optimistic
  /// concurrency control.
  ///
  /// Output only.
  core.String? etag;

  /// Fleet configuration for the cluster.
  ///
  /// Output only.
  Fleet? fleet;

  /// Load balancer configuration.
  ///
  /// Required.
  BareMetalLoadBalancerConfig? loadBalancer;

  /// The object name of the bare metal user cluster custom resource on the
  /// associated admin cluster.
  ///
  /// This field is used to support conflicting names when enrolling existing
  /// clusters to the API. When used as a part of cluster enrollment, this field
  /// will differ from the name in the resource name. For new clusters, this
  /// field will match the user provided cluster name and be visible in the last
  /// component of the resource name. It is not modifiable. When the local name
  /// and cluster name differ, the local name is used in the admin cluster
  /// controller logs. You use the cluster name when accessing the cluster using
  /// bmctl and kubectl.
  ///
  /// Output only.
  core.String? localName;

  /// Maintenance configuration.
  BareMetalMaintenanceConfig? maintenanceConfig;

  /// Status of on-going maintenance tasks.
  ///
  /// Output only.
  BareMetalMaintenanceStatus? maintenanceStatus;

  /// The bare metal user cluster resource name.
  ///
  /// Immutable.
  core.String? name;

  /// Network configuration.
  ///
  /// Required.
  BareMetalNetworkConfig? networkConfig;

  /// Node access related configurations.
  BareMetalNodeAccessConfig? nodeAccessConfig;

  /// Workload node configuration.
  BareMetalWorkloadNodeConfig? nodeConfig;

  /// OS environment related configurations.
  BareMetalOsEnvironmentConfig? osEnvironmentConfig;

  /// Proxy configuration.
  BareMetalProxyConfig? proxy;

  /// If set, there are currently changes in flight to the bare metal user
  /// cluster.
  ///
  /// Output only.
  core.bool? reconciling;

  /// Security related setting configuration.
  BareMetalSecurityConfig? securityConfig;

  /// The current state of the bare metal user cluster.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : Not set.
  /// - "PROVISIONING" : The PROVISIONING state indicates the cluster is being
  /// created.
  /// - "RUNNING" : The RUNNING state indicates the cluster has been created and
  /// is fully usable.
  /// - "RECONCILING" : The RECONCILING state indicates that the cluster is
  /// being updated. It remains available, but potentially with degraded
  /// performance.
  /// - "STOPPING" : The STOPPING state indicates the cluster is being deleted.
  /// - "ERROR" : The ERROR state indicates the cluster is in a broken
  /// unrecoverable state.
  /// - "DEGRADED" : The DEGRADED state indicates the cluster requires user
  /// action to restore full functionality.
  core.String? state;

  /// Detailed cluster status.
  ///
  /// Output only.
  ResourceStatus? status;

  /// Storage configuration.
  ///
  /// Required.
  BareMetalStorageConfig? storage;

  /// The unique identifier of the bare metal user cluster.
  ///
  /// Output only.
  core.String? uid;

  /// The time when the bare metal user cluster was last updated.
  ///
  /// Output only.
  core.String? updateTime;

  /// The cluster upgrade policy.
  BareMetalClusterUpgradePolicy? upgradePolicy;

  /// The result of the preflight check.
  ///
  /// Output only.
  ValidationCheck? validationCheck;

  BareMetalCluster({
    this.adminClusterMembership,
    this.adminClusterName,
    this.annotations,
    this.bareMetalVersion,
    this.binaryAuthorization,
    this.clusterOperations,
    this.controlPlane,
    this.createTime,
    this.deleteTime,
    this.description,
    this.endpoint,
    this.etag,
    this.fleet,
    this.loadBalancer,
    this.localName,
    this.maintenanceConfig,
    this.maintenanceStatus,
    this.name,
    this.networkConfig,
    this.nodeAccessConfig,
    this.nodeConfig,
    this.osEnvironmentConfig,
    this.proxy,
    this.reconciling,
    this.securityConfig,
    this.state,
    this.status,
    this.storage,
    this.uid,
    this.updateTime,
    this.upgradePolicy,
    this.validationCheck,
  });

  BareMetalCluster.fromJson(core.Map json_)
      : this(
          adminClusterMembership: json_.containsKey('adminClusterMembership')
              ? json_['adminClusterMembership'] as core.String
              : null,
          adminClusterName: json_.containsKey('adminClusterName')
              ? json_['adminClusterName'] as core.String
              : null,
          annotations: json_.containsKey('annotations')
              ? (json_['annotations'] as core.Map<core.String, core.dynamic>)
                  .map(
                  (key, value) => core.MapEntry(
                    key,
                    value as core.String,
                  ),
                )
              : null,
          bareMetalVersion: json_.containsKey('bareMetalVersion')
              ? json_['bareMetalVersion'] as core.String
              : null,
          binaryAuthorization: json_.containsKey('binaryAuthorization')
              ? BinaryAuthorization.fromJson(json_['binaryAuthorization']
                  as core.Map<core.String, core.dynamic>)
              : null,
          clusterOperations: json_.containsKey('clusterOperations')
              ? BareMetalClusterOperationsConfig.fromJson(
                  json_['clusterOperations']
                      as core.Map<core.String, core.dynamic>)
              : null,
          controlPlane: json_.containsKey('controlPlane')
              ? BareMetalControlPlaneConfig.fromJson(
                  json_['controlPlane'] as core.Map<core.String, core.dynamic>)
              : null,
          createTime: json_.containsKey('createTime')
              ? json_['createTime'] as core.String
              : null,
          deleteTime: json_.containsKey('deleteTime')
              ? json_['deleteTime'] as core.String
              : null,
          description: json_.containsKey('description')
              ? json_['description'] as core.String
              : null,
          endpoint: json_.containsKey('endpoint')
              ? json_['endpoint'] as core.String
              : null,
          etag: json_.containsKey('etag') ? json_['etag'] as core.String : null,
          fleet: json_.containsKey('fleet')
              ? Fleet.fromJson(
                  json_['fleet'] as core.Map<core.String, core.dynamic>)
              : null,
          loadBalancer: json_.containsKey('loadBalancer')
              ? BareMetalLoadBalancerConfig.fromJson(
                  json_['loadBalancer'] as core.Map<core.String, core.dynamic>)
              : null,
          localName: json_.containsKey('localName')
              ? json_['localName'] as core.String
              : null,
          maintenanceConfig: json_.containsKey('maintenanceConfig')
              ? BareMetalMaintenanceConfig.fromJson(json_['maintenanceConfig']
                  as core.Map<core.String, core.dynamic>)
              : null,
          maintenanceStatus: json_.containsKey('maintenanceStatus')
              ? BareMetalMaintenanceStatus.fromJson(json_['maintenanceStatus']
                  as core.Map<core.String, core.dynamic>)
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          networkConfig: json_.containsKey('networkConfig')
              ? BareMetalNetworkConfig.fromJson(
                  json_['networkConfig'] as core.Map<core.String, core.dynamic>)
              : null,
          nodeAccessConfig: json_.containsKey('nodeAccessConfig')
              ? BareMetalNodeAccessConfig.fromJson(json_['nodeAccessConfig']
                  as core.Map<core.String, core.dynamic>)
              : null,
          nodeConfig: json_.containsKey('nodeConfig')
              ? BareMetalWorkloadNodeConfig.fromJson(
                  json_['nodeConfig'] as core.Map<core.String, core.dynamic>)
              : null,
          osEnvironmentConfig: json_.containsKey('osEnvironmentConfig')
              ? BareMetalOsEnvironmentConfig.fromJson(
                  json_['osEnvironmentConfig']
                      as core.Map<core.String, core.dynamic>)
              : null,
          proxy: json_.containsKey('proxy')
              ? BareMetalProxyConfig.fromJson(
                  json_['proxy'] as core.Map<core.String, core.dynamic>)
              : null,
          reconciling: json_.containsKey('reconciling')
              ? json_['reconciling'] as core.bool
              : null,
          securityConfig: json_.containsKey('securityConfig')
              ? BareMetalSecurityConfig.fromJson(json_['securityConfig']
                  as core.Map<core.String, core.dynamic>)
              : null,
          state:
              json_.containsKey('state') ? json_['state'] as core.String : null,
          status: json_.containsKey('status')
              ? ResourceStatus.fromJson(
                  json_['status'] as core.Map<core.String, core.dynamic>)
              : null,
          storage: json_.containsKey('storage')
              ? BareMetalStorageConfig.fromJson(
                  json_['storage'] as core.Map<core.String, core.dynamic>)
              : null,
          uid: json_.containsKey('uid') ? json_['uid'] as core.String : null,
          updateTime: json_.containsKey('updateTime')
              ? json_['updateTime'] as core.String
              : null,
          upgradePolicy: json_.containsKey('upgradePolicy')
              ? BareMetalClusterUpgradePolicy.fromJson(
                  json_['upgradePolicy'] as core.Map<core.String, core.dynamic>)
              : null,
          validationCheck: json_.containsKey('validationCheck')
              ? ValidationCheck.fromJson(json_['validationCheck']
                  as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (adminClusterMembership != null)
          'adminClusterMembership': adminClusterMembership!,
        if (adminClusterName != null) 'adminClusterName': adminClusterName!,
        if (annotations != null) 'annotations': annotations!,
        if (bareMetalVersion != null) 'bareMetalVersion': bareMetalVersion!,
        if (binaryAuthorization != null)
          'binaryAuthorization': binaryAuthorization!,
        if (clusterOperations != null) 'clusterOperations': clusterOperations!,
        if (controlPlane != null) 'controlPlane': controlPlane!,
        if (createTime != null) 'createTime': createTime!,
        if (deleteTime != null) 'deleteTime': deleteTime!,
        if (description != null) 'description': description!,
        if (endpoint != null) 'endpoint': endpoint!,
        if (etag != null) 'etag': etag!,
        if (fleet != null) 'fleet': fleet!,
        if (loadBalancer != null) 'loadBalancer': loadBalancer!,
        if (localName != null) 'localName': localName!,
        if (maintenanceConfig != null) 'maintenanceConfig': maintenanceConfig!,
        if (maintenanceStatus != null) 'maintenanceStatus': maintenanceStatus!,
        if (name != null) 'name': name!,
        if (networkConfig != null) 'networkConfig': networkConfig!,
        if (nodeAccessConfig != null) 'nodeAccessConfig': nodeAccessConfig!,
        if (nodeConfig != null) 'nodeConfig': nodeConfig!,
        if (osEnvironmentConfig != null)
          'osEnvironmentConfig': osEnvironmentConfig!,
        if (proxy != null) 'proxy': proxy!,
        if (reconciling != null) 'reconciling': reconciling!,
        if (securityConfig != null) 'securityConfig': securityConfig!,
        if (state != null) 'state': state!,
        if (status != null) 'status': status!,
        if (storage != null) 'storage': storage!,
        if (uid != null) 'uid': uid!,
        if (updateTime != null) 'updateTime': updateTime!,
        if (upgradePolicy != null) 'upgradePolicy': upgradePolicy!,
        if (validationCheck != null) 'validationCheck': validationCheck!,
      };
}

/// Specifies the bare metal user cluster's observability infrastructure.
typedef BareMetalClusterOperationsConfig = $ClusterOperationsConfig;

/// BareMetalClusterUpgradePolicy defines the cluster upgrade policy.
class BareMetalClusterUpgradePolicy {
  /// Specifies which upgrade policy to use.
  /// Possible string values are:
  /// - "NODE_POOL_POLICY_UNSPECIFIED" : No upgrade policy selected.
  /// - "SERIAL" : Upgrade worker node pools sequentially.
  /// - "CONCURRENT" : Upgrade all worker node pools in parallel.
  core.String? policy;

  BareMetalClusterUpgradePolicy({
    this.policy,
  });

  BareMetalClusterUpgradePolicy.fromJson(core.Map json_)
      : this(
          policy: json_.containsKey('policy')
              ? json_['policy'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (policy != null) 'policy': policy!,
      };
}

/// Specifies the control plane configuration.
class BareMetalControlPlaneConfig {
  /// Customizes the default API server args.
  ///
  /// Only a subset of customized flags are supported. For the exact format,
  /// refer to the
  /// [API server documentation](https://kubernetes.io/docs/reference/command-line-tools-reference/kube-apiserver/).
  core.List<BareMetalApiServerArgument>? apiServerArgs;

  /// Configures the node pool running the control plane.
  ///
  /// Required.
  BareMetalControlPlaneNodePoolConfig? controlPlaneNodePoolConfig;

  BareMetalControlPlaneConfig({
    this.apiServerArgs,
    this.controlPlaneNodePoolConfig,
  });

  BareMetalControlPlaneConfig.fromJson(core.Map json_)
      : this(
          apiServerArgs: json_.containsKey('apiServerArgs')
              ? (json_['apiServerArgs'] as core.List)
                  .map((value) => BareMetalApiServerArgument.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          controlPlaneNodePoolConfig:
              json_.containsKey('controlPlaneNodePoolConfig')
                  ? BareMetalControlPlaneNodePoolConfig.fromJson(
                      json_['controlPlaneNodePoolConfig']
                          as core.Map<core.String, core.dynamic>)
                  : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (apiServerArgs != null) 'apiServerArgs': apiServerArgs!,
        if (controlPlaneNodePoolConfig != null)
          'controlPlaneNodePoolConfig': controlPlaneNodePoolConfig!,
      };
}

/// Specifies the control plane node pool configuration.
class BareMetalControlPlaneNodePoolConfig {
  /// The generic configuration for a node pool running the control plane.
  ///
  /// Required.
  BareMetalNodePoolConfig? nodePoolConfig;

  BareMetalControlPlaneNodePoolConfig({
    this.nodePoolConfig,
  });

  BareMetalControlPlaneNodePoolConfig.fromJson(core.Map json_)
      : this(
          nodePoolConfig: json_.containsKey('nodePoolConfig')
              ? BareMetalNodePoolConfig.fromJson(json_['nodePoolConfig']
                  as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (nodePoolConfig != null) 'nodePoolConfig': nodePoolConfig!,
      };
}

/// Represents a machine that is currently drained.
typedef BareMetalDrainedMachine = $DrainedMachine;

/// Represents a machine that is currently draining.
typedef BareMetalDrainingMachine = $DrainingMachine;

/// Specifies the cluster CIDR configuration while running in island mode.
class BareMetalIslandModeCidrConfig {
  /// All pods in the cluster are assigned an RFC1918 IPv4 address from these
  /// ranges.
  ///
  /// This field cannot be changed after creation.
  ///
  /// Required.
  core.List<core.String>? podAddressCidrBlocks;

  /// All services in the cluster are assigned an RFC1918 IPv4 address from
  /// these ranges.
  ///
  /// This field is mutable after creation starting with version 1.15.
  ///
  /// Required.
  core.List<core.String>? serviceAddressCidrBlocks;

  BareMetalIslandModeCidrConfig({
    this.podAddressCidrBlocks,
    this.serviceAddressCidrBlocks,
  });

  BareMetalIslandModeCidrConfig.fromJson(core.Map json_)
      : this(
          podAddressCidrBlocks: json_.containsKey('podAddressCidrBlocks')
              ? (json_['podAddressCidrBlocks'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          serviceAddressCidrBlocks:
              json_.containsKey('serviceAddressCidrBlocks')
                  ? (json_['serviceAddressCidrBlocks'] as core.List)
                      .map((value) => value as core.String)
                      .toList()
                  : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (podAddressCidrBlocks != null)
          'podAddressCidrBlocks': podAddressCidrBlocks!,
        if (serviceAddressCidrBlocks != null)
          'serviceAddressCidrBlocks': serviceAddressCidrBlocks!,
      };
}

/// KubeletConfig defines the modifiable kubelet configurations for bare metal
/// machines.
///
/// Note: this list includes fields supported in GKE (see
/// https://cloud.google.com/kubernetes-engine/docs/how-to/node-system-config#kubelet-options).
class BareMetalKubeletConfig {
  /// The maximum size of bursty pulls, temporarily allows pulls to burst to
  /// this number, while still not exceeding registry_pull_qps.
  ///
  /// The value must not be a negative number. Updating this field may impact
  /// scalability by changing the amount of traffic produced by image pulls.
  /// Defaults to 10.
  core.int? registryBurst;

  /// The limit of registry pulls per second.
  ///
  /// Setting this value to 0 means no limit. Updating this field may impact
  /// scalability by changing the amount of traffic produced by image pulls.
  /// Defaults to 5.
  core.int? registryPullQps;

  /// Prevents the Kubelet from pulling multiple images at a time.
  ///
  /// We recommend *not* changing the default value on nodes that run docker
  /// daemon with version \< 1.9 or an Another Union File System (Aufs) storage
  /// backend. Issue https://github.com/kubernetes/kubernetes/issues/10959 has
  /// more details.
  core.bool? serializeImagePullsDisabled;

  BareMetalKubeletConfig({
    this.registryBurst,
    this.registryPullQps,
    this.serializeImagePullsDisabled,
  });

  BareMetalKubeletConfig.fromJson(core.Map json_)
      : this(
          registryBurst: json_.containsKey('registryBurst')
              ? json_['registryBurst'] as core.int
              : null,
          registryPullQps: json_.containsKey('registryPullQps')
              ? json_['registryPullQps'] as core.int
              : null,
          serializeImagePullsDisabled:
              json_.containsKey('serializeImagePullsDisabled')
                  ? json_['serializeImagePullsDisabled'] as core.bool
                  : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (registryBurst != null) 'registryBurst': registryBurst!,
        if (registryPullQps != null) 'registryPullQps': registryPullQps!,
        if (serializeImagePullsDisabled != null)
          'serializeImagePullsDisabled': serializeImagePullsDisabled!,
      };
}

/// Represents an IP pool used by the load balancer.
typedef BareMetalLoadBalancerAddressPool = $AddressPool;

/// Specifies the load balancer configuration.
class BareMetalLoadBalancerConfig {
  /// Configuration for BGP typed load balancers.
  ///
  /// When set network_config.advanced_networking is automatically set to true.
  BareMetalBgpLbConfig? bgpLbConfig;

  /// Manually configured load balancers.
  BareMetalManualLbConfig? manualLbConfig;

  /// Configuration for MetalLB load balancers.
  BareMetalMetalLbConfig? metalLbConfig;

  /// Configures the ports that the load balancer will listen on.
  BareMetalPortConfig? portConfig;

  /// The VIPs used by the load balancer.
  BareMetalVipConfig? vipConfig;

  BareMetalLoadBalancerConfig({
    this.bgpLbConfig,
    this.manualLbConfig,
    this.metalLbConfig,
    this.portConfig,
    this.vipConfig,
  });

  BareMetalLoadBalancerConfig.fromJson(core.Map json_)
      : this(
          bgpLbConfig: json_.containsKey('bgpLbConfig')
              ? BareMetalBgpLbConfig.fromJson(
                  json_['bgpLbConfig'] as core.Map<core.String, core.dynamic>)
              : null,
          manualLbConfig: json_.containsKey('manualLbConfig')
              ? BareMetalManualLbConfig.fromJson(json_['manualLbConfig']
                  as core.Map<core.String, core.dynamic>)
              : null,
          metalLbConfig: json_.containsKey('metalLbConfig')
              ? BareMetalMetalLbConfig.fromJson(
                  json_['metalLbConfig'] as core.Map<core.String, core.dynamic>)
              : null,
          portConfig: json_.containsKey('portConfig')
              ? BareMetalPortConfig.fromJson(
                  json_['portConfig'] as core.Map<core.String, core.dynamic>)
              : null,
          vipConfig: json_.containsKey('vipConfig')
              ? BareMetalVipConfig.fromJson(
                  json_['vipConfig'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (bgpLbConfig != null) 'bgpLbConfig': bgpLbConfig!,
        if (manualLbConfig != null) 'manualLbConfig': manualLbConfig!,
        if (metalLbConfig != null) 'metalLbConfig': metalLbConfig!,
        if (portConfig != null) 'portConfig': portConfig!,
        if (vipConfig != null) 'vipConfig': vipConfig!,
      };
}

/// Specifies the load balancer's node pool configuration.
class BareMetalLoadBalancerNodePoolConfig {
  /// The generic configuration for a node pool running a load balancer.
  BareMetalNodePoolConfig? nodePoolConfig;

  BareMetalLoadBalancerNodePoolConfig({
    this.nodePoolConfig,
  });

  BareMetalLoadBalancerNodePoolConfig.fromJson(core.Map json_)
      : this(
          nodePoolConfig: json_.containsKey('nodePoolConfig')
              ? BareMetalNodePoolConfig.fromJson(json_['nodePoolConfig']
                  as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (nodePoolConfig != null) 'nodePoolConfig': nodePoolConfig!,
      };
}

/// Specifies the configs for local persistent volumes (PVs).
class BareMetalLvpConfig {
  /// The host machine path.
  ///
  /// Required.
  core.String? path;

  /// The StorageClass name that PVs will be created with.
  ///
  /// Required.
  core.String? storageClass;

  BareMetalLvpConfig({
    this.path,
    this.storageClass,
  });

  BareMetalLvpConfig.fromJson(core.Map json_)
      : this(
          path: json_.containsKey('path') ? json_['path'] as core.String : null,
          storageClass: json_.containsKey('storageClass')
              ? json_['storageClass'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (path != null) 'path': path!,
        if (storageClass != null) 'storageClass': storageClass!,
      };
}

/// Specifies the configs for local persistent volumes under a shared file
/// system.
class BareMetalLvpShareConfig {
  /// Defines the machine path and storage class for the LVP Share.
  ///
  /// Required.
  BareMetalLvpConfig? lvpConfig;

  /// The number of subdirectories to create under path.
  core.int? sharedPathPvCount;

  BareMetalLvpShareConfig({
    this.lvpConfig,
    this.sharedPathPvCount,
  });

  BareMetalLvpShareConfig.fromJson(core.Map json_)
      : this(
          lvpConfig: json_.containsKey('lvpConfig')
              ? BareMetalLvpConfig.fromJson(
                  json_['lvpConfig'] as core.Map<core.String, core.dynamic>)
              : null,
          sharedPathPvCount: json_.containsKey('sharedPathPvCount')
              ? json_['sharedPathPvCount'] as core.int
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (lvpConfig != null) 'lvpConfig': lvpConfig!,
        if (sharedPathPvCount != null) 'sharedPathPvCount': sharedPathPvCount!,
      };
}

/// Represents the status of node machines that are undergoing drain operations.
class BareMetalMachineDrainStatus {
  /// The list of drained machines.
  core.List<BareMetalDrainedMachine>? drainedMachines;

  /// The list of draning machines.
  core.List<BareMetalDrainingMachine>? drainingMachines;

  BareMetalMachineDrainStatus({
    this.drainedMachines,
    this.drainingMachines,
  });

  BareMetalMachineDrainStatus.fromJson(core.Map json_)
      : this(
          drainedMachines: json_.containsKey('drainedMachines')
              ? (json_['drainedMachines'] as core.List)
                  .map((value) => BareMetalDrainedMachine.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          drainingMachines: json_.containsKey('drainingMachines')
              ? (json_['drainingMachines'] as core.List)
                  .map((value) => BareMetalDrainingMachine.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (drainedMachines != null) 'drainedMachines': drainedMachines!,
        if (drainingMachines != null) 'drainingMachines': drainingMachines!,
      };
}

/// Specifies configurations to put bare metal nodes in and out of maintenance.
typedef BareMetalMaintenanceConfig = $MaintenanceConfig;

/// Represents the maintenance status of the bare metal user cluster.
class BareMetalMaintenanceStatus {
  /// The maintenance status of node machines.
  BareMetalMachineDrainStatus? machineDrainStatus;

  BareMetalMaintenanceStatus({
    this.machineDrainStatus,
  });

  BareMetalMaintenanceStatus.fromJson(core.Map json_)
      : this(
          machineDrainStatus: json_.containsKey('machineDrainStatus')
              ? BareMetalMachineDrainStatus.fromJson(json_['machineDrainStatus']
                  as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (machineDrainStatus != null)
          'machineDrainStatus': machineDrainStatus!,
      };
}

/// Represents configuration parameters for a manual load balancer.
typedef BareMetalManualLbConfig = $ManualLbConfig;

/// Represents configuration parameters for a MetalLB load balancer.
class BareMetalMetalLbConfig {
  /// AddressPools is a list of non-overlapping IP pools used by load balancer
  /// typed services.
  ///
  /// All addresses must be routable to load balancer nodes. IngressVIP must be
  /// included in the pools.
  ///
  /// Required.
  core.List<BareMetalLoadBalancerAddressPool>? addressPools;

  /// Specifies the node pool running the load balancer.
  ///
  /// L2 connectivity is required among nodes in this pool. If missing, the
  /// control plane node pool is used as the load balancer pool.
  BareMetalLoadBalancerNodePoolConfig? loadBalancerNodePoolConfig;

  BareMetalMetalLbConfig({
    this.addressPools,
    this.loadBalancerNodePoolConfig,
  });

  BareMetalMetalLbConfig.fromJson(core.Map json_)
      : this(
          addressPools: json_.containsKey('addressPools')
              ? (json_['addressPools'] as core.List)
                  .map((value) => BareMetalLoadBalancerAddressPool.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          loadBalancerNodePoolConfig:
              json_.containsKey('loadBalancerNodePoolConfig')
                  ? BareMetalLoadBalancerNodePoolConfig.fromJson(
                      json_['loadBalancerNodePoolConfig']
                          as core.Map<core.String, core.dynamic>)
                  : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (addressPools != null) 'addressPools': addressPools!,
        if (loadBalancerNodePoolConfig != null)
          'loadBalancerNodePoolConfig': loadBalancerNodePoolConfig!,
      };
}

/// Specifies the multiple networking interfaces cluster configuration.
class BareMetalMultipleNetworkInterfacesConfig {
  /// Whether to enable multiple network interfaces for your pods.
  ///
  /// When set network_config.advanced_networking is automatically set to true.
  core.bool? enabled;

  BareMetalMultipleNetworkInterfacesConfig({
    this.enabled,
  });

  BareMetalMultipleNetworkInterfacesConfig.fromJson(core.Map json_)
      : this(
          enabled: json_.containsKey('enabled')
              ? json_['enabled'] as core.bool
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (enabled != null) 'enabled': enabled!,
      };
}

/// Specifies the cluster network configuration.
class BareMetalNetworkConfig {
  /// Enables the use of advanced Anthos networking features, such as Bundled
  /// Load Balancing with BGP or the egress NAT gateway.
  ///
  /// Setting configuration for advanced networking features will automatically
  /// set this flag.
  core.bool? advancedNetworking;

  /// Configuration for island mode CIDR.
  ///
  /// In an island-mode network, nodes have unique IP addresses, but pods don't
  /// have unique addresses across clusters. This doesn't cause problems because
  /// pods in one cluster never directly communicate with pods in another
  /// cluster. Instead, there are gateways that mediate between a pod in one
  /// cluster and a pod in another cluster.
  BareMetalIslandModeCidrConfig? islandModeCidr;

  /// Configuration for multiple network interfaces.
  BareMetalMultipleNetworkInterfacesConfig? multipleNetworkInterfacesConfig;

  /// Configuration for SR-IOV.
  BareMetalSrIovConfig? srIovConfig;

  BareMetalNetworkConfig({
    this.advancedNetworking,
    this.islandModeCidr,
    this.multipleNetworkInterfacesConfig,
    this.srIovConfig,
  });

  BareMetalNetworkConfig.fromJson(core.Map json_)
      : this(
          advancedNetworking: json_.containsKey('advancedNetworking')
              ? json_['advancedNetworking'] as core.bool
              : null,
          islandModeCidr: json_.containsKey('islandModeCidr')
              ? BareMetalIslandModeCidrConfig.fromJson(json_['islandModeCidr']
                  as core.Map<core.String, core.dynamic>)
              : null,
          multipleNetworkInterfacesConfig:
              json_.containsKey('multipleNetworkInterfacesConfig')
                  ? BareMetalMultipleNetworkInterfacesConfig.fromJson(
                      json_['multipleNetworkInterfacesConfig']
                          as core.Map<core.String, core.dynamic>)
                  : null,
          srIovConfig: json_.containsKey('srIovConfig')
              ? BareMetalSrIovConfig.fromJson(
                  json_['srIovConfig'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (advancedNetworking != null)
          'advancedNetworking': advancedNetworking!,
        if (islandModeCidr != null) 'islandModeCidr': islandModeCidr!,
        if (multipleNetworkInterfacesConfig != null)
          'multipleNetworkInterfacesConfig': multipleNetworkInterfacesConfig!,
        if (srIovConfig != null) 'srIovConfig': srIovConfig!,
      };
}

/// Specifies the node access related settings for the bare metal user cluster.
class BareMetalNodeAccessConfig {
  /// LoginUser is the user name used to access node machines.
  ///
  /// It defaults to "root" if not set.
  core.String? loginUser;

  BareMetalNodeAccessConfig({
    this.loginUser,
  });

  BareMetalNodeAccessConfig.fromJson(core.Map json_)
      : this(
          loginUser: json_.containsKey('loginUser')
              ? json_['loginUser'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (loginUser != null) 'loginUser': loginUser!,
      };
}

/// BareMetalNodeConfig lists machine addresses to access Nodes.
class BareMetalNodeConfig {
  /// The labels assigned to this node.
  ///
  /// An object containing a list of key/value pairs. The labels here, unioned
  /// with the labels set on BareMetalNodePoolConfig are the set of labels that
  /// will be applied to the node. If there are any conflicts, the
  /// BareMetalNodeConfig labels take precedence. Example: { "name": "wrench",
  /// "mass": "1.3kg", "count": "3" }.
  core.Map<core.String, core.String>? labels;

  /// The default IPv4 address for SSH access and Kubernetes node.
  ///
  /// Example: 192.168.0.1
  core.String? nodeIp;

  BareMetalNodeConfig({
    this.labels,
    this.nodeIp,
  });

  BareMetalNodeConfig.fromJson(core.Map json_)
      : this(
          labels: json_.containsKey('labels')
              ? (json_['labels'] as core.Map<core.String, core.dynamic>).map(
                  (key, value) => core.MapEntry(
                    key,
                    value as core.String,
                  ),
                )
              : null,
          nodeIp: json_.containsKey('nodeIp')
              ? json_['nodeIp'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (labels != null) 'labels': labels!,
        if (nodeIp != null) 'nodeIp': nodeIp!,
      };
}

/// Resource that represents a bare metal node pool.
class BareMetalNodePool {
  /// Annotations on the bare metal node pool.
  ///
  /// This field has the same restrictions as Kubernetes annotations. The total
  /// size of all keys and values combined is limited to 256k. Key can have 2
  /// segments: prefix (optional) and name (required), separated by a slash (/).
  /// Prefix must be a DNS subdomain. Name must be 63 characters or less, begin
  /// and end with alphanumerics, with dashes (-), underscores (_), dots (.),
  /// and alphanumerics between.
  core.Map<core.String, core.String>? annotations;

  /// The time at which this bare metal node pool was created.
  ///
  /// Output only.
  core.String? createTime;

  /// The time at which this bare metal node pool was deleted.
  ///
  /// If the resource is not deleted, this must be empty
  ///
  /// Output only.
  core.String? deleteTime;

  /// The display name for the bare metal node pool.
  core.String? displayName;

  /// This checksum is computed by the server based on the value of other
  /// fields, and may be sent on update and delete requests to ensure the client
  /// has an up-to-date value before proceeding.
  ///
  /// Allows clients to perform consistent read-modify-writes through optimistic
  /// concurrency control.
  core.String? etag;

  /// The bare metal node pool resource name.
  ///
  /// Immutable.
  core.String? name;

  /// Node pool configuration.
  ///
  /// Required.
  BareMetalNodePoolConfig? nodePoolConfig;

  /// If set, there are currently changes in flight to the bare metal node pool.
  ///
  /// Output only.
  core.bool? reconciling;

  /// The current state of the bare metal node pool.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : Not set.
  /// - "PROVISIONING" : The PROVISIONING state indicates the bare metal node
  /// pool is being created.
  /// - "RUNNING" : The RUNNING state indicates the bare metal node pool has
  /// been created and is fully usable.
  /// - "RECONCILING" : The RECONCILING state indicates that the bare metal node
  /// pool is being updated. It remains available, but potentially with degraded
  /// performance.
  /// - "STOPPING" : The STOPPING state indicates the bare metal node pool is
  /// being deleted.
  /// - "ERROR" : The ERROR state indicates the bare metal node pool is in a
  /// broken unrecoverable state.
  /// - "DEGRADED" : The DEGRADED state indicates the bare metal node pool
  /// requires user action to restore full functionality.
  core.String? state;

  /// ResourceStatus representing the detailed node pool status.
  ///
  /// Output only.
  ResourceStatus? status;

  /// The unique identifier of the bare metal node pool.
  ///
  /// Output only.
  core.String? uid;

  /// The time at which this bare metal node pool was last updated.
  ///
  /// Output only.
  core.String? updateTime;

  /// The worker node pool upgrade policy.
  BareMetalNodePoolUpgradePolicy? upgradePolicy;

  BareMetalNodePool({
    this.annotations,
    this.createTime,
    this.deleteTime,
    this.displayName,
    this.etag,
    this.name,
    this.nodePoolConfig,
    this.reconciling,
    this.state,
    this.status,
    this.uid,
    this.updateTime,
    this.upgradePolicy,
  });

  BareMetalNodePool.fromJson(core.Map json_)
      : this(
          annotations: json_.containsKey('annotations')
              ? (json_['annotations'] as core.Map<core.String, core.dynamic>)
                  .map(
                  (key, value) => core.MapEntry(
                    key,
                    value as core.String,
                  ),
                )
              : null,
          createTime: json_.containsKey('createTime')
              ? json_['createTime'] as core.String
              : null,
          deleteTime: json_.containsKey('deleteTime')
              ? json_['deleteTime'] as core.String
              : null,
          displayName: json_.containsKey('displayName')
              ? json_['displayName'] as core.String
              : null,
          etag: json_.containsKey('etag') ? json_['etag'] as core.String : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          nodePoolConfig: json_.containsKey('nodePoolConfig')
              ? BareMetalNodePoolConfig.fromJson(json_['nodePoolConfig']
                  as core.Map<core.String, core.dynamic>)
              : null,
          reconciling: json_.containsKey('reconciling')
              ? json_['reconciling'] as core.bool
              : null,
          state:
              json_.containsKey('state') ? json_['state'] as core.String : null,
          status: json_.containsKey('status')
              ? ResourceStatus.fromJson(
                  json_['status'] as core.Map<core.String, core.dynamic>)
              : null,
          uid: json_.containsKey('uid') ? json_['uid'] as core.String : null,
          updateTime: json_.containsKey('updateTime')
              ? json_['updateTime'] as core.String
              : null,
          upgradePolicy: json_.containsKey('upgradePolicy')
              ? BareMetalNodePoolUpgradePolicy.fromJson(
                  json_['upgradePolicy'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (annotations != null) 'annotations': annotations!,
        if (createTime != null) 'createTime': createTime!,
        if (deleteTime != null) 'deleteTime': deleteTime!,
        if (displayName != null) 'displayName': displayName!,
        if (etag != null) 'etag': etag!,
        if (name != null) 'name': name!,
        if (nodePoolConfig != null) 'nodePoolConfig': nodePoolConfig!,
        if (reconciling != null) 'reconciling': reconciling!,
        if (state != null) 'state': state!,
        if (status != null) 'status': status!,
        if (uid != null) 'uid': uid!,
        if (updateTime != null) 'updateTime': updateTime!,
        if (upgradePolicy != null) 'upgradePolicy': upgradePolicy!,
      };
}

/// BareMetalNodePoolConfig describes the configuration of all nodes within a
/// given bare metal node pool.
class BareMetalNodePoolConfig {
  /// The modifiable kubelet configurations for the bare metal machines.
  BareMetalKubeletConfig? kubeletConfig;

  /// The labels assigned to nodes of this node pool.
  ///
  /// An object containing a list of key/value pairs. Example: { "name":
  /// "wrench", "mass": "1.3kg", "count": "3" }.
  core.Map<core.String, core.String>? labels;

  /// The list of machine addresses in the bare metal node pool.
  ///
  /// Required.
  core.List<BareMetalNodeConfig>? nodeConfigs;

  /// Specifies the nodes operating system (default: LINUX).
  /// Possible string values are:
  /// - "OPERATING_SYSTEM_UNSPECIFIED" : No operating system runtime selected.
  /// - "LINUX" : Linux operating system.
  core.String? operatingSystem;

  /// The initial taints assigned to nodes of this node pool.
  core.List<NodeTaint>? taints;

  BareMetalNodePoolConfig({
    this.kubeletConfig,
    this.labels,
    this.nodeConfigs,
    this.operatingSystem,
    this.taints,
  });

  BareMetalNodePoolConfig.fromJson(core.Map json_)
      : this(
          kubeletConfig: json_.containsKey('kubeletConfig')
              ? BareMetalKubeletConfig.fromJson(
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
          nodeConfigs: json_.containsKey('nodeConfigs')
              ? (json_['nodeConfigs'] as core.List)
                  .map((value) => BareMetalNodeConfig.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          operatingSystem: json_.containsKey('operatingSystem')
              ? json_['operatingSystem'] as core.String
              : null,
          taints: json_.containsKey('taints')
              ? (json_['taints'] as core.List)
                  .map((value) => NodeTaint.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (kubeletConfig != null) 'kubeletConfig': kubeletConfig!,
        if (labels != null) 'labels': labels!,
        if (nodeConfigs != null) 'nodeConfigs': nodeConfigs!,
        if (operatingSystem != null) 'operatingSystem': operatingSystem!,
        if (taints != null) 'taints': taints!,
      };
}

/// BareMetalNodePoolUpgradePolicy defines the node pool upgrade policy.
class BareMetalNodePoolUpgradePolicy {
  /// The parallel upgrade settings for worker node pools.
  BareMetalParallelUpgradeConfig? parallelUpgradeConfig;

  BareMetalNodePoolUpgradePolicy({
    this.parallelUpgradeConfig,
  });

  BareMetalNodePoolUpgradePolicy.fromJson(core.Map json_)
      : this(
          parallelUpgradeConfig: json_.containsKey('parallelUpgradeConfig')
              ? BareMetalParallelUpgradeConfig.fromJson(
                  json_['parallelUpgradeConfig']
                      as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (parallelUpgradeConfig != null)
          'parallelUpgradeConfig': parallelUpgradeConfig!,
      };
}

/// Specifies operating system settings for cluster provisioning.
class BareMetalOsEnvironmentConfig {
  /// Whether the package repo should not be included when initializing bare
  /// metal machines.
  core.bool? packageRepoExcluded;

  BareMetalOsEnvironmentConfig({
    this.packageRepoExcluded,
  });

  BareMetalOsEnvironmentConfig.fromJson(core.Map json_)
      : this(
          packageRepoExcluded: json_.containsKey('packageRepoExcluded')
              ? json_['packageRepoExcluded'] as core.bool
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (packageRepoExcluded != null)
          'packageRepoExcluded': packageRepoExcluded!,
      };
}

/// BareMetalParallelUpgradeConfig defines the parallel upgrade settings for
/// worker node pools.
class BareMetalParallelUpgradeConfig {
  /// The maximum number of nodes that can be upgraded at once.
  core.int? concurrentNodes;

  /// The minimum number of nodes that should be healthy and available during an
  /// upgrade.
  ///
  /// If set to the default value of 0, it is possible that none of the nodes
  /// will be available during an upgrade.
  core.int? minimumAvailableNodes;

  BareMetalParallelUpgradeConfig({
    this.concurrentNodes,
    this.minimumAvailableNodes,
  });

  BareMetalParallelUpgradeConfig.fromJson(core.Map json_)
      : this(
          concurrentNodes: json_.containsKey('concurrentNodes')
              ? json_['concurrentNodes'] as core.int
              : null,
          minimumAvailableNodes: json_.containsKey('minimumAvailableNodes')
              ? json_['minimumAvailableNodes'] as core.int
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (concurrentNodes != null) 'concurrentNodes': concurrentNodes!,
        if (minimumAvailableNodes != null)
          'minimumAvailableNodes': minimumAvailableNodes!,
      };
}

/// Specifies load balancer ports for the bare metal user cluster.
typedef BareMetalPortConfig = $PortConfig;

/// Specifies the cluster proxy configuration.
class BareMetalProxyConfig {
  /// A list of IPs, hostnames, and domains that should skip the proxy.
  ///
  /// Examples: \["127.0.0.1", "example.com", ".corp", "localhost"\].
  core.List<core.String>? noProxy;

  /// Specifies the address of your proxy server.
  ///
  /// Examples: `http://domain` Do not provide credentials in the format
  /// `http://(username:password@)domain` these will be rejected by the server.
  ///
  /// Required.
  core.String? uri;

  BareMetalProxyConfig({
    this.noProxy,
    this.uri,
  });

  BareMetalProxyConfig.fromJson(core.Map json_)
      : this(
          noProxy: json_.containsKey('noProxy')
              ? (json_['noProxy'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          uri: json_.containsKey('uri') ? json_['uri'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (noProxy != null) 'noProxy': noProxy!,
        if (uri != null) 'uri': uri!,
      };
}

/// Specifies the security related settings for the bare metal user cluster.
class BareMetalSecurityConfig {
  /// Configures user access to the user cluster.
  Authorization? authorization;

  BareMetalSecurityConfig({
    this.authorization,
  });

  BareMetalSecurityConfig.fromJson(core.Map json_)
      : this(
          authorization: json_.containsKey('authorization')
              ? Authorization.fromJson(
                  json_['authorization'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (authorization != null) 'authorization': authorization!,
      };
}

/// Specifies the SR-IOV networking operator config.
class BareMetalSrIovConfig {
  /// Whether to install the SR-IOV operator.
  core.bool? enabled;

  BareMetalSrIovConfig({
    this.enabled,
  });

  BareMetalSrIovConfig.fromJson(core.Map json_)
      : this(
          enabled: json_.containsKey('enabled')
              ? json_['enabled'] as core.bool
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (enabled != null) 'enabled': enabled!,
      };
}

/// BareMetalStorageConfig specifies the cluster storage configuration.
class BareMetalStorageConfig {
  /// Specifies the config for local PersistentVolumes backed by mounted node
  /// disks.
  ///
  /// These disks need to be formatted and mounted by the user, which can be
  /// done before or after cluster creation.
  ///
  /// Required.
  BareMetalLvpConfig? lvpNodeMountsConfig;

  /// Specifies the config for local PersistentVolumes backed by subdirectories
  /// in a shared filesystem.
  ///
  /// These subdirectores are automatically created during cluster creation.
  ///
  /// Required.
  BareMetalLvpShareConfig? lvpShareConfig;

  BareMetalStorageConfig({
    this.lvpNodeMountsConfig,
    this.lvpShareConfig,
  });

  BareMetalStorageConfig.fromJson(core.Map json_)
      : this(
          lvpNodeMountsConfig: json_.containsKey('lvpNodeMountsConfig')
              ? BareMetalLvpConfig.fromJson(json_['lvpNodeMountsConfig']
                  as core.Map<core.String, core.dynamic>)
              : null,
          lvpShareConfig: json_.containsKey('lvpShareConfig')
              ? BareMetalLvpShareConfig.fromJson(json_['lvpShareConfig']
                  as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (lvpNodeMountsConfig != null)
          'lvpNodeMountsConfig': lvpNodeMountsConfig!,
        if (lvpShareConfig != null) 'lvpShareConfig': lvpShareConfig!,
      };
}

/// Contains information about a specific Anthos on bare metal version.
class BareMetalVersionInfo {
  /// The list of upgrade dependencies for this version.
  core.List<UpgradeDependency>? dependencies;

  /// If set, the cluster dependencies (e.g. the admin cluster, other user
  /// clusters managed by the same admin cluster, version skew policy, etc) must
  /// be upgraded before this version can be installed or upgraded to.
  core.bool? hasDependencies;

  /// Version number e.g. 1.13.1.
  core.String? version;

  BareMetalVersionInfo({
    this.dependencies,
    this.hasDependencies,
    this.version,
  });

  BareMetalVersionInfo.fromJson(core.Map json_)
      : this(
          dependencies: json_.containsKey('dependencies')
              ? (json_['dependencies'] as core.List)
                  .map((value) => UpgradeDependency.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          hasDependencies: json_.containsKey('hasDependencies')
              ? json_['hasDependencies'] as core.bool
              : null,
          version: json_.containsKey('version')
              ? json_['version'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (dependencies != null) 'dependencies': dependencies!,
        if (hasDependencies != null) 'hasDependencies': hasDependencies!,
        if (version != null) 'version': version!,
      };
}

/// Specifies the VIP config for the bare metal load balancer.
class BareMetalVipConfig {
  /// The VIP which you previously set aside for the Kubernetes API of this bare
  /// metal user cluster.
  core.String? controlPlaneVip;

  /// The VIP which you previously set aside for ingress traffic into this bare
  /// metal user cluster.
  core.String? ingressVip;

  BareMetalVipConfig({
    this.controlPlaneVip,
    this.ingressVip,
  });

  BareMetalVipConfig.fromJson(core.Map json_)
      : this(
          controlPlaneVip: json_.containsKey('controlPlaneVip')
              ? json_['controlPlaneVip'] as core.String
              : null,
          ingressVip: json_.containsKey('ingressVip')
              ? json_['ingressVip'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (controlPlaneVip != null) 'controlPlaneVip': controlPlaneVip!,
        if (ingressVip != null) 'ingressVip': ingressVip!,
      };
}

/// Specifies the workload node configurations.
class BareMetalWorkloadNodeConfig {
  /// Specifies which container runtime will be used.
  /// Possible string values are:
  /// - "CONTAINER_RUNTIME_UNSPECIFIED" : No container runtime selected.
  /// - "CONTAINERD" : Containerd runtime.
  core.String? containerRuntime;

  /// The maximum number of pods a node can run.
  ///
  /// The size of the CIDR range assigned to the node will be derived from this
  /// parameter.
  core.String? maxPodsPerNode;

  BareMetalWorkloadNodeConfig({
    this.containerRuntime,
    this.maxPodsPerNode,
  });

  BareMetalWorkloadNodeConfig.fromJson(core.Map json_)
      : this(
          containerRuntime: json_.containsKey('containerRuntime')
              ? json_['containerRuntime'] as core.String
              : null,
          maxPodsPerNode: json_.containsKey('maxPodsPerNode')
              ? json_['maxPodsPerNode'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (containerRuntime != null) 'containerRuntime': containerRuntime!,
        if (maxPodsPerNode != null) 'maxPodsPerNode': maxPodsPerNode!,
      };
}

/// Configuration for Binary Authorization.
class BinaryAuthorization {
  /// Mode of operation for binauthz policy evaluation.
  ///
  /// If unspecified, defaults to DISABLED.
  /// Possible string values are:
  /// - "EVALUATION_MODE_UNSPECIFIED" : Default value
  /// - "DISABLED" : Disable BinaryAuthorization
  /// - "PROJECT_SINGLETON_POLICY_ENFORCE" : Enforce Kubernetes admission
  /// requests with BinaryAuthorization using the project's singleton policy.
  core.String? evaluationMode;

  BinaryAuthorization({
    this.evaluationMode,
  });

  BinaryAuthorization.fromJson(core.Map json_)
      : this(
          evaluationMode: json_.containsKey('evaluationMode')
              ? json_['evaluationMode'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (evaluationMode != null) 'evaluationMode': evaluationMode!,
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
  /// example, `admins@example.com`. * `domain:{domain}`: The G Suite domain
  /// (primary) that represents all the users of that domain. For example,
  /// `google.com` or `example.com`. *
  /// `principal://iam.googleapis.com/locations/global/workforcePools/{pool_id}/subject/{subject_attribute_value}`:
  /// A single identity in a workforce identity pool. *
  /// `principalSet://iam.googleapis.com/locations/global/workforcePools/{pool_id}/group/{group_id}`:
  /// All workforce identities in a group. *
  /// `principalSet://iam.googleapis.com/locations/global/workforcePools/{pool_id}/attribute.{attribute_name}/{attribute_value}`:
  /// All workforce identities with a specific attribute value. *
  /// `principalSet://iam.googleapis.com/locations/global/workforcePools/{pool_id}
  /// / * `: All identities in a workforce identity pool. *
  /// `principal://iam.googleapis.com/projects/{project_number}/locations/global/workloadIdentityPools/{pool_id}/subject/{subject_attribute_value}`:
  /// A single identity in a workload identity pool. *
  /// `principalSet://iam.googleapis.com/projects/{project_number}/locations/global/workloadIdentityPools/{pool_id}/group/{group_id}`:
  /// A workload identity pool group. *
  /// `principalSet://iam.googleapis.com/projects/{project_number}/locations/global/workloadIdentityPools/{pool_id}/attribute.{attribute_name}/{attribute_value}`:
  /// All identities in a workload identity pool with a certain attribute. *
  /// `principalSet://iam.googleapis.com/projects/{project_number}/locations/global/workloadIdentityPools/{pool_id}
  /// / * `: All identities in a workload identity pool. *
  /// `deleted:user:{emailid}?uid={uniqueid}`: An email address (plus unique
  /// identifier) representing a user that has been recently deleted. For
  /// example, `alice@example.com?uid=123456789012345678901`. If the user is
  /// recovered, this value reverts to `user:{emailid}` and the recovered user
  /// retains the role in the binding. *
  /// `deleted:serviceAccount:{emailid}?uid={uniqueid}`: An email address (plus
  /// unique identifier) representing a service account that has been recently
  /// deleted. For example,
  /// `my-other-app@appspot.gserviceaccount.com?uid=123456789012345678901`. If
  /// the service account is undeleted, this value reverts to
  /// `serviceAccount:{emailid}` and the undeleted service account retains the
  /// role in the binding. * `deleted:group:{emailid}?uid={uniqueid}`: An email
  /// address (plus unique identifier) representing a Google group that has been
  /// recently deleted. For example,
  /// `admins@example.com?uid=123456789012345678901`. If the group is recovered,
  /// this value reverts to `group:{emailid}` and the recovered group retains
  /// the role in the binding. *
  /// `deleted:principal://iam.googleapis.com/locations/global/workforcePools/{pool_id}/subject/{subject_attribute_value}`:
  /// Deleted single identity in a workforce identity pool. For example,
  /// `deleted:principal://iam.googleapis.com/locations/global/workforcePools/my-pool-id/subject/my-subject-attribute-value`.
  core.List<core.String>? members;

  /// Role that is assigned to the list of `members`, or principals.
  ///
  /// For example, `roles/viewer`, `roles/editor`, or `roles/owner`. For an
  /// overview of the IAM roles and permissions, see the
  /// [IAM documentation](https://cloud.google.com/iam/docs/roles-overview). For
  /// a list of the available pre-defined roles, see
  /// [here](https://cloud.google.com/iam/docs/understanding-roles).
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

/// The request message for Operations.CancelOperation.
typedef CancelOperationRequest = $Empty;

/// ClusterUser configures user principals for an RBAC policy.
class ClusterUser {
  /// The name of the user, e.g. `my-gcp-id@gmail.com`.
  ///
  /// Required.
  core.String? username;

  ClusterUser({
    this.username,
  });

  ClusterUser.fromJson(core.Map json_)
      : this(
          username: json_.containsKey('username')
              ? json_['username'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (username != null) 'username': username!,
      };
}

/// A generic empty message that you can re-use to avoid defining duplicated
/// empty messages in your APIs.
///
/// A typical example is to use it as the request or the response type of an API
/// method. For instance: service Foo { rpc Bar(google.protobuf.Empty) returns
/// (google.protobuf.Empty); }
typedef Empty = $Empty;

/// Message for enrolling an existing bare metal admin cluster to the GKE
/// on-prem API.
class EnrollBareMetalAdminClusterRequest {
  /// User provided OnePlatform identifier that is used as part of the resource
  /// name.
  ///
  /// This must be unique among all GKE on-prem clusters within a project and
  /// location and will return a 409 if the cluster already exists.
  /// (https://tools.ietf.org/html/rfc1123) format.
  core.String? bareMetalAdminClusterId;

  /// This is the full resource name of this admin cluster's fleet membership.
  ///
  /// Required.
  core.String? membership;

  EnrollBareMetalAdminClusterRequest({
    this.bareMetalAdminClusterId,
    this.membership,
  });

  EnrollBareMetalAdminClusterRequest.fromJson(core.Map json_)
      : this(
          bareMetalAdminClusterId: json_.containsKey('bareMetalAdminClusterId')
              ? json_['bareMetalAdminClusterId'] as core.String
              : null,
          membership: json_.containsKey('membership')
              ? json_['membership'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (bareMetalAdminClusterId != null)
          'bareMetalAdminClusterId': bareMetalAdminClusterId!,
        if (membership != null) 'membership': membership!,
      };
}

/// Message for enrolling an existing bare metal cluster to the Anthos On-Prem
/// API.
class EnrollBareMetalClusterRequest {
  /// The admin cluster this bare metal user cluster belongs to.
  ///
  /// This is the full resource name of the admin cluster's fleet membership. In
  /// the future, references to other resource types might be allowed if admin
  /// clusters are modeled as their own resources.
  ///
  /// Required.
  core.String? adminClusterMembership;

  /// User provided OnePlatform identifier that is used as part of the resource
  /// name.
  ///
  /// This must be unique among all bare metal clusters within a project and
  /// location and will return a 409 if the cluster already exists.
  /// (https://tools.ietf.org/html/rfc1123) format.
  core.String? bareMetalClusterId;

  /// The object name of the bare metal cluster custom resource on the
  /// associated admin cluster.
  ///
  /// This field is used to support conflicting resource names when enrolling
  /// existing clusters to the API. When not provided, this field will resolve
  /// to the bare_metal_cluster_id. Otherwise, it must match the object name of
  /// the bare metal cluster custom resource. It is not modifiable outside /
  /// beyond the enrollment operation.
  ///
  /// Optional.
  core.String? localName;

  EnrollBareMetalClusterRequest({
    this.adminClusterMembership,
    this.bareMetalClusterId,
    this.localName,
  });

  EnrollBareMetalClusterRequest.fromJson(core.Map json_)
      : this(
          adminClusterMembership: json_.containsKey('adminClusterMembership')
              ? json_['adminClusterMembership'] as core.String
              : null,
          bareMetalClusterId: json_.containsKey('bareMetalClusterId')
              ? json_['bareMetalClusterId'] as core.String
              : null,
          localName: json_.containsKey('localName')
              ? json_['localName'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (adminClusterMembership != null)
          'adminClusterMembership': adminClusterMembership!,
        if (bareMetalClusterId != null)
          'bareMetalClusterId': bareMetalClusterId!,
        if (localName != null) 'localName': localName!,
      };
}

/// Message for enrolling an existing bare metal node pool to the GKE on-prem
/// API.
class EnrollBareMetalNodePoolRequest {
  /// User provided OnePlatform identifier that is used as part of the resource
  /// name.
  ///
  /// (https://tools.ietf.org/html/rfc1123) format.
  core.String? bareMetalNodePoolId;

  /// If set, only validate the request, but do not actually enroll the node
  /// pool.
  core.bool? validateOnly;

  EnrollBareMetalNodePoolRequest({
    this.bareMetalNodePoolId,
    this.validateOnly,
  });

  EnrollBareMetalNodePoolRequest.fromJson(core.Map json_)
      : this(
          bareMetalNodePoolId: json_.containsKey('bareMetalNodePoolId')
              ? json_['bareMetalNodePoolId'] as core.String
              : null,
          validateOnly: json_.containsKey('validateOnly')
              ? json_['validateOnly'] as core.bool
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (bareMetalNodePoolId != null)
          'bareMetalNodePoolId': bareMetalNodePoolId!,
        if (validateOnly != null) 'validateOnly': validateOnly!,
      };
}

/// Message for enrolling an existing VMware admin cluster to the GKE on-prem
/// API.
class EnrollVmwareAdminClusterRequest {
  /// This is the full resource name of this admin cluster's fleet membership.
  ///
  /// Required.
  core.String? membership;

  /// User provided OnePlatform identifier that is used as part of the resource
  /// name.
  ///
  /// This must be unique among all GKE on-prem clusters within a project and
  /// location and will return a 409 if the cluster already exists.
  /// (https://tools.ietf.org/html/rfc1123) format.
  core.String? vmwareAdminClusterId;

  EnrollVmwareAdminClusterRequest({
    this.membership,
    this.vmwareAdminClusterId,
  });

  EnrollVmwareAdminClusterRequest.fromJson(core.Map json_)
      : this(
          membership: json_.containsKey('membership')
              ? json_['membership'] as core.String
              : null,
          vmwareAdminClusterId: json_.containsKey('vmwareAdminClusterId')
              ? json_['vmwareAdminClusterId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (membership != null) 'membership': membership!,
        if (vmwareAdminClusterId != null)
          'vmwareAdminClusterId': vmwareAdminClusterId!,
      };
}

/// Message for enrolling an existing VMware cluster to the Anthos On-Prem API.
class EnrollVmwareClusterRequest {
  /// The admin cluster this VMware user cluster belongs to.
  ///
  /// This is the full resource name of the admin cluster's fleet membership. In
  /// the future, references to other resource types might be allowed if admin
  /// clusters are modeled as their own resources.
  ///
  /// Required.
  core.String? adminClusterMembership;

  /// The object name of the VMware OnPremUserCluster custom resource on the
  /// associated admin cluster.
  ///
  /// This field is used to support conflicting resource names when enrolling
  /// existing clusters to the API. When not provided, this field will resolve
  /// to the vmware_cluster_id. Otherwise, it must match the object name of the
  /// VMware OnPremUserCluster custom resource. It is not modifiable outside /
  /// beyond the enrollment operation.
  ///
  /// Optional.
  core.String? localName;

  /// Validate the request without actually doing any updates.
  core.bool? validateOnly;

  /// User provided OnePlatform identifier that is used as part of the resource
  /// name.
  ///
  /// This must be unique among all GKE on-prem clusters within a project and
  /// location and will return a 409 if the cluster already exists.
  /// (https://tools.ietf.org/html/rfc1123) format.
  core.String? vmwareClusterId;

  EnrollVmwareClusterRequest({
    this.adminClusterMembership,
    this.localName,
    this.validateOnly,
    this.vmwareClusterId,
  });

  EnrollVmwareClusterRequest.fromJson(core.Map json_)
      : this(
          adminClusterMembership: json_.containsKey('adminClusterMembership')
              ? json_['adminClusterMembership'] as core.String
              : null,
          localName: json_.containsKey('localName')
              ? json_['localName'] as core.String
              : null,
          validateOnly: json_.containsKey('validateOnly')
              ? json_['validateOnly'] as core.bool
              : null,
          vmwareClusterId: json_.containsKey('vmwareClusterId')
              ? json_['vmwareClusterId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (adminClusterMembership != null)
          'adminClusterMembership': adminClusterMembership!,
        if (localName != null) 'localName': localName!,
        if (validateOnly != null) 'validateOnly': validateOnly!,
        if (vmwareClusterId != null) 'vmwareClusterId': vmwareClusterId!,
      };
}

/// Message for enrolling a VMware node pool.
class EnrollVmwareNodePoolRequest {
  /// The target node pool id to be enrolled.
  core.String? vmwareNodePoolId;

  EnrollVmwareNodePoolRequest({
    this.vmwareNodePoolId,
  });

  EnrollVmwareNodePoolRequest.fromJson(core.Map json_)
      : this(
          vmwareNodePoolId: json_.containsKey('vmwareNodePoolId')
              ? json_['vmwareNodePoolId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (vmwareNodePoolId != null) 'vmwareNodePoolId': vmwareNodePoolId!,
      };
}

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

/// Fleet related configuration.
///
/// Fleets are a Google Cloud concept for logically organizing clusters, letting
/// you use and manage multi-cluster capabilities and apply consistent policies
/// across your systems. See \[Anthos
/// Fleets\](`https://cloud.google.com/anthos/multicluster-management/fleets`)
/// for more details on Anthos multi-cluster capabilities using Fleets. ##
class Fleet {
  /// The name of the managed fleet Membership resource associated to this
  /// cluster.
  ///
  /// Membership names are formatted as `projects//locations//memberships/`.
  ///
  /// Output only.
  core.String? membership;

  Fleet({
    this.membership,
  });

  Fleet.fromJson(core.Map json_)
      : this(
          membership: json_.containsKey('membership')
              ? json_['membership'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (membership != null) 'membership': membership!,
      };
}

/// Response message for listing bare metal admin clusters.
class ListBareMetalAdminClustersResponse {
  /// The list of bare metal admin cluster.
  core.List<BareMetalAdminCluster>? bareMetalAdminClusters;

  /// A token identifying a page of results the server should return.
  ///
  /// If the token is not empty this means that more results are available and
  /// should be retrieved by repeating the request with the provided page token.
  core.String? nextPageToken;

  /// Locations that could not be reached.
  core.List<core.String>? unreachable;

  ListBareMetalAdminClustersResponse({
    this.bareMetalAdminClusters,
    this.nextPageToken,
    this.unreachable,
  });

  ListBareMetalAdminClustersResponse.fromJson(core.Map json_)
      : this(
          bareMetalAdminClusters: json_.containsKey('bareMetalAdminClusters')
              ? (json_['bareMetalAdminClusters'] as core.List)
                  .map((value) => BareMetalAdminCluster.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
          unreachable: json_.containsKey('unreachable')
              ? (json_['unreachable'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (bareMetalAdminClusters != null)
          'bareMetalAdminClusters': bareMetalAdminClusters!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (unreachable != null) 'unreachable': unreachable!,
      };
}

/// Response message for listing bare metal Clusters.
class ListBareMetalClustersResponse {
  /// The list of bare metal Clusters.
  core.List<BareMetalCluster>? bareMetalClusters;

  /// A token identifying a page of results the server should return.
  ///
  /// If the token is not empty this means that more results are available and
  /// should be retrieved by repeating the request with the provided page token.
  core.String? nextPageToken;

  /// Locations that could not be reached.
  core.List<core.String>? unreachable;

  ListBareMetalClustersResponse({
    this.bareMetalClusters,
    this.nextPageToken,
    this.unreachable,
  });

  ListBareMetalClustersResponse.fromJson(core.Map json_)
      : this(
          bareMetalClusters: json_.containsKey('bareMetalClusters')
              ? (json_['bareMetalClusters'] as core.List)
                  .map((value) => BareMetalCluster.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
          unreachable: json_.containsKey('unreachable')
              ? (json_['unreachable'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (bareMetalClusters != null) 'bareMetalClusters': bareMetalClusters!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (unreachable != null) 'unreachable': unreachable!,
      };
}

/// Response message for listing bare metal node pools.
class ListBareMetalNodePoolsResponse {
  /// The node pools from the specified parent resource.
  core.List<BareMetalNodePool>? bareMetalNodePools;

  /// A token, which can be sent as `page_token` to retrieve the next page.
  ///
  /// If this field is omitted, there are no subsequent pages.
  core.String? nextPageToken;

  /// Locations that could not be reached.
  core.List<core.String>? unreachable;

  ListBareMetalNodePoolsResponse({
    this.bareMetalNodePools,
    this.nextPageToken,
    this.unreachable,
  });

  ListBareMetalNodePoolsResponse.fromJson(core.Map json_)
      : this(
          bareMetalNodePools: json_.containsKey('bareMetalNodePools')
              ? (json_['bareMetalNodePools'] as core.List)
                  .map((value) => BareMetalNodePool.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
          unreachable: json_.containsKey('unreachable')
              ? (json_['unreachable'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (bareMetalNodePools != null)
          'bareMetalNodePools': bareMetalNodePools!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (unreachable != null) 'unreachable': unreachable!,
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

/// The response message for Operations.ListOperations.
class ListOperationsResponse {
  /// The standard List next-page token.
  core.String? nextPageToken;

  /// A list of operations that matches the specified filter in the request.
  core.List<Operation>? operations;

  ListOperationsResponse({
    this.nextPageToken,
    this.operations,
  });

  ListOperationsResponse.fromJson(core.Map json_)
      : this(
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
          operations: json_.containsKey('operations')
              ? (json_['operations'] as core.List)
                  .map((value) => Operation.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (operations != null) 'operations': operations!,
      };
}

/// Response message for listing VMware admin clusters.
class ListVmwareAdminClustersResponse {
  /// A token identifying a page of results the server should return.
  ///
  /// If the token is not empty this means that more results are available and
  /// should be retrieved by repeating the request with the provided page token.
  core.String? nextPageToken;

  /// Locations that could not be reached.
  core.List<core.String>? unreachable;

  /// The list of VMware admin cluster.
  core.List<VmwareAdminCluster>? vmwareAdminClusters;

  ListVmwareAdminClustersResponse({
    this.nextPageToken,
    this.unreachable,
    this.vmwareAdminClusters,
  });

  ListVmwareAdminClustersResponse.fromJson(core.Map json_)
      : this(
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
          unreachable: json_.containsKey('unreachable')
              ? (json_['unreachable'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          vmwareAdminClusters: json_.containsKey('vmwareAdminClusters')
              ? (json_['vmwareAdminClusters'] as core.List)
                  .map((value) => VmwareAdminCluster.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (unreachable != null) 'unreachable': unreachable!,
        if (vmwareAdminClusters != null)
          'vmwareAdminClusters': vmwareAdminClusters!,
      };
}

/// Response message for listing VMware Clusters.
class ListVmwareClustersResponse {
  /// A token identifying a page of results the server should return.
  ///
  /// If the token is not empty this means that more results are available and
  /// should be retrieved by repeating the request with the provided page token.
  core.String? nextPageToken;

  /// Locations that could not be reached.
  core.List<core.String>? unreachable;

  /// The list of VMware Cluster.
  core.List<VmwareCluster>? vmwareClusters;

  ListVmwareClustersResponse({
    this.nextPageToken,
    this.unreachable,
    this.vmwareClusters,
  });

  ListVmwareClustersResponse.fromJson(core.Map json_)
      : this(
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
          unreachable: json_.containsKey('unreachable')
              ? (json_['unreachable'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          vmwareClusters: json_.containsKey('vmwareClusters')
              ? (json_['vmwareClusters'] as core.List)
                  .map((value) => VmwareCluster.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (unreachable != null) 'unreachable': unreachable!,
        if (vmwareClusters != null) 'vmwareClusters': vmwareClusters!,
      };
}

/// Response message for listing VMware node pools.
class ListVmwareNodePoolsResponse {
  /// A token, which can be sent as `page_token` to retrieve the next page.
  ///
  /// If this field is omitted, there are no subsequent pages.
  core.String? nextPageToken;

  /// Locations that could not be reached.
  core.List<core.String>? unreachable;

  /// The node pools from the specified parent resource.
  core.List<VmwareNodePool>? vmwareNodePools;

  ListVmwareNodePoolsResponse({
    this.nextPageToken,
    this.unreachable,
    this.vmwareNodePools,
  });

  ListVmwareNodePoolsResponse.fromJson(core.Map json_)
      : this(
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
          unreachable: json_.containsKey('unreachable')
              ? (json_['unreachable'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          vmwareNodePools: json_.containsKey('vmwareNodePools')
              ? (json_['vmwareNodePools'] as core.List)
                  .map((value) => VmwareNodePool.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (unreachable != null) 'unreachable': unreachable!,
        if (vmwareNodePools != null) 'vmwareNodePools': vmwareNodePools!,
      };
}

/// A resource that represents a Google Cloud location.
typedef Location = $Location00;

/// NodeTaint applied to every Kubernetes node in a node pool.
///
/// Kubernetes taints can be used together with tolerations to control how
/// workloads are scheduled to your nodes. Node taints are permanent.
class NodeTaint {
  /// The taint effect.
  /// Possible string values are:
  /// - "EFFECT_UNSPECIFIED" : Not set.
  /// - "NO_SCHEDULE" : Do not allow new pods to schedule onto the node unless
  /// they tolerate the taint, but allow all pods submitted to Kubelet without
  /// going through the scheduler to start, and allow all already-running pods
  /// to continue running. Enforced by the scheduler.
  /// - "PREFER_NO_SCHEDULE" : Like TaintEffectNoSchedule, but the scheduler
  /// tries not to schedule new pods onto the node, rather than prohibiting new
  /// pods from scheduling onto the node entirely. Enforced by the scheduler.
  /// - "NO_EXECUTE" : Evict any already-running pods that do not tolerate the
  /// taint. Currently enforced by NodeController.
  core.String? effect;

  /// Key associated with the effect.
  core.String? key;

  /// Value associated with the effect.
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

/// This resource represents a long-running operation that is the result of a
/// network API call.
class Operation {
  /// If the value is `false`, it means the operation is still in progress.
  ///
  /// If `true`, the operation is completed, and either `error` or `response` is
  /// available.
  core.bool? done;

  /// The error result of the operation in case of failure or cancellation.
  Status? error;

  /// Service-specific metadata associated with the operation.
  ///
  /// It typically contains progress information and common metadata such as
  /// create time. Some services might not provide such metadata. Any method
  /// that returns a long-running operation should document the metadata type,
  /// if any.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object?>? metadata;

  /// The server-assigned name, which is only unique within the same service
  /// that originally returns it.
  ///
  /// If you use the default HTTP mapping, the `name` should be a resource name
  /// ending with `operations/{unique_id}`.
  core.String? name;

  /// The normal, successful response of the operation.
  ///
  /// If the original method returns no data on success, such as `Delete`, the
  /// response is `google.protobuf.Empty`. If the original method is standard
  /// `Get`/`Create`/`Update`, the response should be the resource. For other
  /// methods, the response should have the type `XxxResponse`, where `Xxx` is
  /// the original method name. For example, if the original method name is
  /// `TakeSnapshot()`, the inferred response type is `TakeSnapshotResponse`.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object?>? response;

  Operation({
    this.done,
    this.error,
    this.metadata,
    this.name,
    this.response,
  });

  Operation.fromJson(core.Map json_)
      : this(
          done: json_.containsKey('done') ? json_['done'] as core.bool : null,
          error: json_.containsKey('error')
              ? Status.fromJson(
                  json_['error'] as core.Map<core.String, core.dynamic>)
              : null,
          metadata: json_.containsKey('metadata')
              ? json_['metadata'] as core.Map<core.String, core.dynamic>
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          response: json_.containsKey('response')
              ? json_['response'] as core.Map<core.String, core.dynamic>
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (done != null) 'done': done!,
        if (error != null) 'error': error!,
        if (metadata != null) 'metadata': metadata!,
        if (name != null) 'name': name!,
        if (response != null) 'response': response!,
      };
}

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
/// **JSON example:** ``` { "bindings": [ { "role":
/// "roles/resourcemanager.organizationAdmin", "members": [
/// "user:mike@example.com", "group:admins@example.com", "domain:google.com",
/// "serviceAccount:my-project-id@appspot.gserviceaccount.com" ] }, { "role":
/// "roles/resourcemanager.organizationViewer", "members": [
/// "user:eve@example.com" ], "condition": { "title": "expirable access",
/// "description": "Does not grant access after Sep 2020", "expression":
/// "request.time < timestamp('2020-10-01T00:00:00.000Z')", } } ], "etag":
/// "BwWWja0YfJA=", "version": 3 } ``` **YAML example:** ``` bindings: -
/// members: - user:mike@example.com - group:admins@example.com -
/// domain:google.com - serviceAccount:my-project-id@appspot.gserviceaccount.com
/// role: roles/resourcemanager.organizationAdmin - members: -
/// user:eve@example.com role: roles/resourcemanager.organizationViewer
/// condition: title: expirable access description: Does not grant access after
/// Sep 2020 expression: request.time < timestamp('2020-10-01T00:00:00.000Z')
/// etag: BwWWja0YfJA= version: 3 ``` For a description of IAM and its features,
/// see the [IAM documentation](https://cloud.google.com/iam/docs/).
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

/// Response message for querying bare metal admin cluster version config.
class QueryBareMetalAdminVersionConfigResponse {
  /// List of available versions to install or to upgrade to.
  core.List<BareMetalVersionInfo>? versions;

  QueryBareMetalAdminVersionConfigResponse({
    this.versions,
  });

  QueryBareMetalAdminVersionConfigResponse.fromJson(core.Map json_)
      : this(
          versions: json_.containsKey('versions')
              ? (json_['versions'] as core.List)
                  .map((value) => BareMetalVersionInfo.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (versions != null) 'versions': versions!,
      };
}

/// Response message for querying bare metal admin cluster version config.
class QueryBareMetalVersionConfigResponse {
  /// List of available versions to install or to upgrade to.
  core.List<BareMetalVersionInfo>? versions;

  QueryBareMetalVersionConfigResponse({
    this.versions,
  });

  QueryBareMetalVersionConfigResponse.fromJson(core.Map json_)
      : this(
          versions: json_.containsKey('versions')
              ? (json_['versions'] as core.List)
                  .map((value) => BareMetalVersionInfo.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (versions != null) 'versions': versions!,
      };
}

/// Response message for querying VMware user cluster version config.
class QueryVmwareVersionConfigResponse {
  /// List of available versions to install or to upgrade to.
  core.List<VmwareVersionInfo>? versions;

  QueryVmwareVersionConfigResponse({
    this.versions,
  });

  QueryVmwareVersionConfigResponse.fromJson(core.Map json_)
      : this(
          versions: json_.containsKey('versions')
              ? (json_['versions'] as core.List)
                  .map((value) => VmwareVersionInfo.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (versions != null) 'versions': versions!,
      };
}

/// ResourceCondition provides a standard mechanism for higher-level status
/// reporting from controller.
class ResourceCondition {
  /// Last time the condition transit from one status to another.
  core.String? lastTransitionTime;

  /// Human-readable message indicating details about last transition.
  core.String? message;

  /// Machine-readable message indicating details about last transition.
  core.String? reason;

  /// state of the condition.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : Not set.
  /// - "STATE_TRUE" : Resource is in the condition.
  /// - "STATE_FALSE" : Resource is not in the condition.
  /// - "STATE_UNKNOWN" : Kubernetes controller can't decide if the resource is
  /// in the condition or not.
  core.String? state;

  /// Type of the condition.
  ///
  /// (e.g., ClusterRunning, NodePoolRunning or ServerSidePreflightReady)
  core.String? type;

  ResourceCondition({
    this.lastTransitionTime,
    this.message,
    this.reason,
    this.state,
    this.type,
  });

  ResourceCondition.fromJson(core.Map json_)
      : this(
          lastTransitionTime: json_.containsKey('lastTransitionTime')
              ? json_['lastTransitionTime'] as core.String
              : null,
          message: json_.containsKey('message')
              ? json_['message'] as core.String
              : null,
          reason: json_.containsKey('reason')
              ? json_['reason'] as core.String
              : null,
          state:
              json_.containsKey('state') ? json_['state'] as core.String : null,
          type: json_.containsKey('type') ? json_['type'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (lastTransitionTime != null)
          'lastTransitionTime': lastTransitionTime!,
        if (message != null) 'message': message!,
        if (reason != null) 'reason': reason!,
        if (state != null) 'state': state!,
        if (type != null) 'type': type!,
      };
}

/// ResourceStatus describes why a cluster or node pool has a certain status.
///
/// (e.g., ERROR or DEGRADED).
class ResourceStatus {
  /// ResourceCondition provide a standard mechanism for higher-level status
  /// reporting from controller.
  core.List<ResourceCondition>? conditions;

  /// Human-friendly representation of the error message from controller.
  ///
  /// The error message can be temporary as the controller controller creates a
  /// cluster or node pool. If the error message persists for a longer period of
  /// time, it can be used to surface error message to indicate real problems
  /// requiring user intervention.
  core.String? errorMessage;

  ResourceStatus({
    this.conditions,
    this.errorMessage,
  });

  ResourceStatus.fromJson(core.Map json_)
      : this(
          conditions: json_.containsKey('conditions')
              ? (json_['conditions'] as core.List)
                  .map((value) => ResourceCondition.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          errorMessage: json_.containsKey('errorMessage')
              ? json_['errorMessage'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (conditions != null) 'conditions': conditions!,
        if (errorMessage != null) 'errorMessage': errorMessage!,
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

/// The `Status` type defines a logical error model that is suitable for
/// different programming environments, including REST APIs and RPC APIs.
///
/// It is used by [gRPC](https://github.com/grpc). Each `Status` message
/// contains three pieces of data: error code, error message, and error details.
/// You can find out more about this error model and how to work with it in the
/// [API Design Guide](https://cloud.google.com/apis/design/errors).
typedef Status = $Status;

/// Request message for `TestIamPermissions` method.
typedef TestIamPermissionsRequest = $TestIamPermissionsRequest00;

/// Response message for `TestIamPermissions` method.
typedef TestIamPermissionsResponse = $PermissionsResponse;

/// UpgradeDependency represents a dependency when upgrading a resource.
class UpgradeDependency {
  /// Current version of the dependency e.g. 1.15.0.
  core.String? currentVersion;

  /// Membership names are formatted as `projects//locations//memberships/`.
  core.String? membership;

  /// Resource name of the dependency.
  core.String? resourceName;

  /// Target version of the dependency e.g. 1.16.1.
  ///
  /// This is the version the dependency needs to be upgraded to before a
  /// resource can be upgraded.
  core.String? targetVersion;

  UpgradeDependency({
    this.currentVersion,
    this.membership,
    this.resourceName,
    this.targetVersion,
  });

  UpgradeDependency.fromJson(core.Map json_)
      : this(
          currentVersion: json_.containsKey('currentVersion')
              ? json_['currentVersion'] as core.String
              : null,
          membership: json_.containsKey('membership')
              ? json_['membership'] as core.String
              : null,
          resourceName: json_.containsKey('resourceName')
              ? json_['resourceName'] as core.String
              : null,
          targetVersion: json_.containsKey('targetVersion')
              ? json_['targetVersion'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (currentVersion != null) 'currentVersion': currentVersion!,
        if (membership != null) 'membership': membership!,
        if (resourceName != null) 'resourceName': resourceName!,
        if (targetVersion != null) 'targetVersion': targetVersion!,
      };
}

/// ValidationCheck represents the result of preflight check.
class ValidationCheck {
  /// Options used for the validation check
  /// Possible string values are:
  /// - "OPTIONS_UNSPECIFIED" : Default value. Standard preflight validation
  /// check will be used.
  /// - "SKIP_VALIDATION_CHECK_BLOCKING" : Prevent failed preflight checks from
  /// failing.
  /// - "SKIP_VALIDATION_ALL" : Skip all preflight check validations.
  core.String? option;

  /// The scenario when the preflight checks were run.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "SCENARIO_UNSPECIFIED" : Default value. This value is unused.
  /// - "CREATE" : The validation check occurred during a create flow.
  /// - "UPDATE" : The validation check occurred during an update flow.
  core.String? scenario;

  /// The detailed validation check status.
  ///
  /// Output only.
  ValidationCheckStatus? status;

  ValidationCheck({
    this.option,
    this.scenario,
    this.status,
  });

  ValidationCheck.fromJson(core.Map json_)
      : this(
          option: json_.containsKey('option')
              ? json_['option'] as core.String
              : null,
          scenario: json_.containsKey('scenario')
              ? json_['scenario'] as core.String
              : null,
          status: json_.containsKey('status')
              ? ValidationCheckStatus.fromJson(
                  json_['status'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (option != null) 'option': option!,
        if (scenario != null) 'scenario': scenario!,
        if (status != null) 'status': status!,
      };
}

/// ValidationCheckResult defines the details about the validation check.
class ValidationCheckResult {
  /// The category of the validation.
  core.String? category;

  /// The description of the validation check.
  core.String? description;

  /// Detailed failure information, which might be unformatted.
  core.String? details;

  /// A human-readable message of the check failure.
  core.String? reason;

  /// The validation check state.
  /// Possible string values are:
  /// - "STATE_UNKNOWN" : The default value. The check result is unknown.
  /// - "STATE_FAILURE" : The check failed.
  /// - "STATE_SKIPPED" : The check was skipped.
  /// - "STATE_FATAL" : The check itself failed to complete.
  /// - "STATE_WARNING" : The check encountered a warning.
  core.String? state;

  ValidationCheckResult({
    this.category,
    this.description,
    this.details,
    this.reason,
    this.state,
  });

  ValidationCheckResult.fromJson(core.Map json_)
      : this(
          category: json_.containsKey('category')
              ? json_['category'] as core.String
              : null,
          description: json_.containsKey('description')
              ? json_['description'] as core.String
              : null,
          details: json_.containsKey('details')
              ? json_['details'] as core.String
              : null,
          reason: json_.containsKey('reason')
              ? json_['reason'] as core.String
              : null,
          state:
              json_.containsKey('state') ? json_['state'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (category != null) 'category': category!,
        if (description != null) 'description': description!,
        if (details != null) 'details': details!,
        if (reason != null) 'reason': reason!,
        if (state != null) 'state': state!,
      };
}

/// ValidationCheckStatus defines the detailed validation check status.
class ValidationCheckStatus {
  /// Individual checks which failed as part of the Preflight check execution.
  core.List<ValidationCheckResult>? result;

  ValidationCheckStatus({
    this.result,
  });

  ValidationCheckStatus.fromJson(core.Map json_)
      : this(
          result: json_.containsKey('result')
              ? (json_['result'] as core.List)
                  .map((value) => ValidationCheckResult.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (result != null) 'result': result!,
      };
}

/// Specifies anti affinity group config for the VMware user cluster.
class VmwareAAGConfig {
  /// Spread nodes across at least three physical hosts (requires at least three
  /// hosts).
  ///
  /// Enabled by default.
  core.bool? aagConfigDisabled;

  VmwareAAGConfig({
    this.aagConfigDisabled,
  });

  VmwareAAGConfig.fromJson(core.Map json_)
      : this(
          aagConfigDisabled: json_.containsKey('aagConfigDisabled')
              ? json_['aagConfigDisabled'] as core.bool
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (aagConfigDisabled != null) 'aagConfigDisabled': aagConfigDisabled!,
      };
}

/// Represents an IP pool used by the load balancer.
typedef VmwareAddressPool = $AddressPool;

/// VmwareAdminAddonNodeConfig contains add-on node configurations for VMware
/// admin cluster.
class VmwareAdminAddonNodeConfig {
  /// VmwareAutoResizeConfig config specifies auto resize config.
  VmwareAutoResizeConfig? autoResizeConfig;

  VmwareAdminAddonNodeConfig({
    this.autoResizeConfig,
  });

  VmwareAdminAddonNodeConfig.fromJson(core.Map json_)
      : this(
          autoResizeConfig: json_.containsKey('autoResizeConfig')
              ? VmwareAutoResizeConfig.fromJson(json_['autoResizeConfig']
                  as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (autoResizeConfig != null) 'autoResizeConfig': autoResizeConfig!,
      };
}

/// VmwareAdminAuthorizationConfig represents configuration for admin cluster
/// authorization.
class VmwareAdminAuthorizationConfig {
  /// For VMware admin clusters, users will be granted the cluster-viewer role
  /// on the cluster.
  core.List<ClusterUser>? viewerUsers;

  VmwareAdminAuthorizationConfig({
    this.viewerUsers,
  });

  VmwareAdminAuthorizationConfig.fromJson(core.Map json_)
      : this(
          viewerUsers: json_.containsKey('viewerUsers')
              ? (json_['viewerUsers'] as core.List)
                  .map((value) => ClusterUser.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (viewerUsers != null) 'viewerUsers': viewerUsers!,
      };
}

/// Resource that represents a VMware admin cluster.
class VmwareAdminCluster {
  /// The VMware admin cluster addon node configuration.
  VmwareAdminAddonNodeConfig? addonNode;

  /// Annotations on the VMware admin cluster.
  ///
  /// This field has the same restrictions as Kubernetes annotations. The total
  /// size of all keys and values combined is limited to 256k. Key can have 2
  /// segments: prefix (optional) and name (required), separated by a slash (/).
  /// Prefix must be a DNS subdomain. Name must be 63 characters or less, begin
  /// and end with alphanumerics, with dashes (-), underscores (_), dots (.),
  /// and alphanumerics between.
  core.Map<core.String, core.String>? annotations;

  /// The VMware admin cluster anti affinity group configuration.
  VmwareAAGConfig? antiAffinityGroups;

  /// The VMware admin cluster authorization configuration.
  VmwareAdminAuthorizationConfig? authorization;

  /// The VMware admin cluster auto repair configuration.
  VmwareAutoRepairConfig? autoRepairConfig;

  /// The bootstrap cluster this VMware admin cluster belongs to.
  core.String? bootstrapClusterMembership;

  /// The VMware admin cluster control plane node configuration.
  VmwareAdminControlPlaneNodeConfig? controlPlaneNode;

  /// The time at which VMware admin cluster was created.
  ///
  /// Output only.
  core.String? createTime;

  /// A human readable description of this VMware admin cluster.
  core.String? description;

  /// The DNS name of VMware admin cluster's API server.
  ///
  /// Output only.
  core.String? endpoint;

  /// This checksum is computed by the server based on the value of other
  /// fields, and may be sent on update and delete requests to ensure the client
  /// has an up-to-date value before proceeding.
  ///
  /// Allows clients to perform consistent read-modify-writes through optimistic
  /// concurrency control.
  core.String? etag;

  /// Fleet configuration for the cluster.
  ///
  /// Output only.
  Fleet? fleet;

  /// The OS image type for the VMware admin cluster.
  core.String? imageType;

  /// The VMware admin cluster load balancer configuration.
  VmwareAdminLoadBalancerConfig? loadBalancer;

  /// The object name of the VMware OnPremAdminCluster custom resource.
  ///
  /// This field is used to support conflicting names when enrolling existing
  /// clusters to the API. When used as a part of cluster enrollment, this field
  /// will differ from the ID in the resource name. For new clusters, this field
  /// will match the user provided cluster name and be visible in the last
  /// component of the resource name. It is not modifiable. All users should use
  /// this name to access their cluster using gkectl or kubectl and should
  /// expect to see the local name when viewing admin cluster controller logs.
  ///
  /// Output only.
  core.String? localName;

  /// The VMware admin cluster resource name.
  ///
  /// Immutable.
  core.String? name;

  /// The VMware admin cluster network configuration.
  VmwareAdminNetworkConfig? networkConfig;

  /// The Anthos clusters on the VMware version for the admin cluster.
  core.String? onPremVersion;

  /// The VMware platform configuration.
  VmwarePlatformConfig? platformConfig;

  /// The VMware admin cluster prepared secrets configuration.
  ///
  /// It should always be enabled by the Central API, instead of letting users
  /// set it.
  ///
  /// Output only.
  VmwareAdminPreparedSecretsConfig? preparedSecrets;

  /// If set, there are currently changes in flight to the VMware admin cluster.
  ///
  /// Output only.
  core.bool? reconciling;

  /// The current state of VMware admin cluster.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : Not set.
  /// - "PROVISIONING" : The PROVISIONING state indicates the cluster is being
  /// created.
  /// - "RUNNING" : The RUNNING state indicates the cluster has been created and
  /// is fully usable.
  /// - "RECONCILING" : The RECONCILING state indicates that the cluster is
  /// being updated. It remains available, but potentially with degraded
  /// performance.
  /// - "STOPPING" : The STOPPING state indicates the cluster is being deleted.
  /// - "ERROR" : The ERROR state indicates the cluster is in a broken
  /// unrecoverable state.
  /// - "DEGRADED" : The DEGRADED state indicates the cluster requires user
  /// action to restore full functionality.
  core.String? state;

  /// ResourceStatus representing detailed cluster state.
  ///
  /// Output only.
  ResourceStatus? status;

  /// The unique identifier of the VMware admin cluster.
  ///
  /// Output only.
  core.String? uid;

  /// The time at which VMware admin cluster was last updated.
  ///
  /// Output only.
  core.String? updateTime;

  /// The VMware admin cluster VCenter configuration.
  VmwareAdminVCenterConfig? vcenter;

  VmwareAdminCluster({
    this.addonNode,
    this.annotations,
    this.antiAffinityGroups,
    this.authorization,
    this.autoRepairConfig,
    this.bootstrapClusterMembership,
    this.controlPlaneNode,
    this.createTime,
    this.description,
    this.endpoint,
    this.etag,
    this.fleet,
    this.imageType,
    this.loadBalancer,
    this.localName,
    this.name,
    this.networkConfig,
    this.onPremVersion,
    this.platformConfig,
    this.preparedSecrets,
    this.reconciling,
    this.state,
    this.status,
    this.uid,
    this.updateTime,
    this.vcenter,
  });

  VmwareAdminCluster.fromJson(core.Map json_)
      : this(
          addonNode: json_.containsKey('addonNode')
              ? VmwareAdminAddonNodeConfig.fromJson(
                  json_['addonNode'] as core.Map<core.String, core.dynamic>)
              : null,
          annotations: json_.containsKey('annotations')
              ? (json_['annotations'] as core.Map<core.String, core.dynamic>)
                  .map(
                  (key, value) => core.MapEntry(
                    key,
                    value as core.String,
                  ),
                )
              : null,
          antiAffinityGroups: json_.containsKey('antiAffinityGroups')
              ? VmwareAAGConfig.fromJson(json_['antiAffinityGroups']
                  as core.Map<core.String, core.dynamic>)
              : null,
          authorization: json_.containsKey('authorization')
              ? VmwareAdminAuthorizationConfig.fromJson(
                  json_['authorization'] as core.Map<core.String, core.dynamic>)
              : null,
          autoRepairConfig: json_.containsKey('autoRepairConfig')
              ? VmwareAutoRepairConfig.fromJson(json_['autoRepairConfig']
                  as core.Map<core.String, core.dynamic>)
              : null,
          bootstrapClusterMembership:
              json_.containsKey('bootstrapClusterMembership')
                  ? json_['bootstrapClusterMembership'] as core.String
                  : null,
          controlPlaneNode: json_.containsKey('controlPlaneNode')
              ? VmwareAdminControlPlaneNodeConfig.fromJson(
                  json_['controlPlaneNode']
                      as core.Map<core.String, core.dynamic>)
              : null,
          createTime: json_.containsKey('createTime')
              ? json_['createTime'] as core.String
              : null,
          description: json_.containsKey('description')
              ? json_['description'] as core.String
              : null,
          endpoint: json_.containsKey('endpoint')
              ? json_['endpoint'] as core.String
              : null,
          etag: json_.containsKey('etag') ? json_['etag'] as core.String : null,
          fleet: json_.containsKey('fleet')
              ? Fleet.fromJson(
                  json_['fleet'] as core.Map<core.String, core.dynamic>)
              : null,
          imageType: json_.containsKey('imageType')
              ? json_['imageType'] as core.String
              : null,
          loadBalancer: json_.containsKey('loadBalancer')
              ? VmwareAdminLoadBalancerConfig.fromJson(
                  json_['loadBalancer'] as core.Map<core.String, core.dynamic>)
              : null,
          localName: json_.containsKey('localName')
              ? json_['localName'] as core.String
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          networkConfig: json_.containsKey('networkConfig')
              ? VmwareAdminNetworkConfig.fromJson(
                  json_['networkConfig'] as core.Map<core.String, core.dynamic>)
              : null,
          onPremVersion: json_.containsKey('onPremVersion')
              ? json_['onPremVersion'] as core.String
              : null,
          platformConfig: json_.containsKey('platformConfig')
              ? VmwarePlatformConfig.fromJson(json_['platformConfig']
                  as core.Map<core.String, core.dynamic>)
              : null,
          preparedSecrets: json_.containsKey('preparedSecrets')
              ? VmwareAdminPreparedSecretsConfig.fromJson(
                  json_['preparedSecrets']
                      as core.Map<core.String, core.dynamic>)
              : null,
          reconciling: json_.containsKey('reconciling')
              ? json_['reconciling'] as core.bool
              : null,
          state:
              json_.containsKey('state') ? json_['state'] as core.String : null,
          status: json_.containsKey('status')
              ? ResourceStatus.fromJson(
                  json_['status'] as core.Map<core.String, core.dynamic>)
              : null,
          uid: json_.containsKey('uid') ? json_['uid'] as core.String : null,
          updateTime: json_.containsKey('updateTime')
              ? json_['updateTime'] as core.String
              : null,
          vcenter: json_.containsKey('vcenter')
              ? VmwareAdminVCenterConfig.fromJson(
                  json_['vcenter'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (addonNode != null) 'addonNode': addonNode!,
        if (annotations != null) 'annotations': annotations!,
        if (antiAffinityGroups != null)
          'antiAffinityGroups': antiAffinityGroups!,
        if (authorization != null) 'authorization': authorization!,
        if (autoRepairConfig != null) 'autoRepairConfig': autoRepairConfig!,
        if (bootstrapClusterMembership != null)
          'bootstrapClusterMembership': bootstrapClusterMembership!,
        if (controlPlaneNode != null) 'controlPlaneNode': controlPlaneNode!,
        if (createTime != null) 'createTime': createTime!,
        if (description != null) 'description': description!,
        if (endpoint != null) 'endpoint': endpoint!,
        if (etag != null) 'etag': etag!,
        if (fleet != null) 'fleet': fleet!,
        if (imageType != null) 'imageType': imageType!,
        if (loadBalancer != null) 'loadBalancer': loadBalancer!,
        if (localName != null) 'localName': localName!,
        if (name != null) 'name': name!,
        if (networkConfig != null) 'networkConfig': networkConfig!,
        if (onPremVersion != null) 'onPremVersion': onPremVersion!,
        if (platformConfig != null) 'platformConfig': platformConfig!,
        if (preparedSecrets != null) 'preparedSecrets': preparedSecrets!,
        if (reconciling != null) 'reconciling': reconciling!,
        if (state != null) 'state': state!,
        if (status != null) 'status': status!,
        if (uid != null) 'uid': uid!,
        if (updateTime != null) 'updateTime': updateTime!,
        if (vcenter != null) 'vcenter': vcenter!,
      };
}

/// VmwareAdminControlPlaneNodeConfig contains control plane node configuration
/// for VMware admin cluster.
class VmwareAdminControlPlaneNodeConfig {
  /// The number of vCPUs for the control-plane node of the admin cluster.
  core.String? cpus;

  /// The number of mebibytes of memory for the control-plane node of the admin
  /// cluster.
  core.String? memory;

  /// The number of control plane nodes for this VMware admin cluster.
  ///
  /// (default: 1 replica).
  core.String? replicas;

  VmwareAdminControlPlaneNodeConfig({
    this.cpus,
    this.memory,
    this.replicas,
  });

  VmwareAdminControlPlaneNodeConfig.fromJson(core.Map json_)
      : this(
          cpus: json_.containsKey('cpus') ? json_['cpus'] as core.String : null,
          memory: json_.containsKey('memory')
              ? json_['memory'] as core.String
              : null,
          replicas: json_.containsKey('replicas')
              ? json_['replicas'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (cpus != null) 'cpus': cpus!,
        if (memory != null) 'memory': memory!,
        if (replicas != null) 'replicas': replicas!,
      };
}

/// VmwareAdminF5BigIpConfig represents configuration parameters for an F5
/// BIG-IP load balancer.
typedef VmwareAdminF5BigIpConfig = $F5BigIpConfig;

/// Specifies HA admin control plane config.
class VmwareAdminHAControlPlaneConfig {
  /// Static IP addresses for the admin control plane nodes.
  VmwareIpBlock? controlPlaneIpBlock;

  VmwareAdminHAControlPlaneConfig({
    this.controlPlaneIpBlock,
  });

  VmwareAdminHAControlPlaneConfig.fromJson(core.Map json_)
      : this(
          controlPlaneIpBlock: json_.containsKey('controlPlaneIpBlock')
              ? VmwareIpBlock.fromJson(json_['controlPlaneIpBlock']
                  as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (controlPlaneIpBlock != null)
          'controlPlaneIpBlock': controlPlaneIpBlock!,
      };
}

/// VmwareAdminLoadBalancerConfig contains load balancer configuration for
/// VMware admin cluster.
class VmwareAdminLoadBalancerConfig {
  /// Configuration for F5 Big IP typed load balancers.
  VmwareAdminF5BigIpConfig? f5Config;

  /// Manually configured load balancers.
  VmwareAdminManualLbConfig? manualLbConfig;

  /// MetalLB load balancers.
  VmwareAdminMetalLbConfig? metalLbConfig;

  /// Configuration for Seesaw typed load balancers.
  ///
  /// Output only.
  VmwareAdminSeesawConfig? seesawConfig;

  /// The VIPs used by the load balancer.
  VmwareAdminVipConfig? vipConfig;

  VmwareAdminLoadBalancerConfig({
    this.f5Config,
    this.manualLbConfig,
    this.metalLbConfig,
    this.seesawConfig,
    this.vipConfig,
  });

  VmwareAdminLoadBalancerConfig.fromJson(core.Map json_)
      : this(
          f5Config: json_.containsKey('f5Config')
              ? VmwareAdminF5BigIpConfig.fromJson(
                  json_['f5Config'] as core.Map<core.String, core.dynamic>)
              : null,
          manualLbConfig: json_.containsKey('manualLbConfig')
              ? VmwareAdminManualLbConfig.fromJson(json_['manualLbConfig']
                  as core.Map<core.String, core.dynamic>)
              : null,
          metalLbConfig: json_.containsKey('metalLbConfig')
              ? VmwareAdminMetalLbConfig.fromJson(
                  json_['metalLbConfig'] as core.Map<core.String, core.dynamic>)
              : null,
          seesawConfig: json_.containsKey('seesawConfig')
              ? VmwareAdminSeesawConfig.fromJson(
                  json_['seesawConfig'] as core.Map<core.String, core.dynamic>)
              : null,
          vipConfig: json_.containsKey('vipConfig')
              ? VmwareAdminVipConfig.fromJson(
                  json_['vipConfig'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (f5Config != null) 'f5Config': f5Config!,
        if (manualLbConfig != null) 'manualLbConfig': manualLbConfig!,
        if (metalLbConfig != null) 'metalLbConfig': metalLbConfig!,
        if (seesawConfig != null) 'seesawConfig': seesawConfig!,
        if (vipConfig != null) 'vipConfig': vipConfig!,
      };
}

class VmwareAdminManualLbConfig {
  /// NodePort for add-ons server in the admin cluster.
  core.int? addonsNodePort;

  /// NodePort for control plane service.
  ///
  /// The Kubernetes API server in the admin cluster is implemented as a Service
  /// of type NodePort (ex. 30968).
  core.int? controlPlaneNodePort;

  /// NodePort for ingress service's http.
  ///
  /// The ingress service in the admin cluster is implemented as a Service of
  /// type NodePort (ex. 32527).
  core.int? ingressHttpNodePort;

  /// NodePort for ingress service's https.
  ///
  /// The ingress service in the admin cluster is implemented as a Service of
  /// type NodePort (ex. 30139).
  core.int? ingressHttpsNodePort;

  /// NodePort for konnectivity server service running as a sidecar in each
  /// kube-apiserver pod (ex.
  ///
  /// 30564).
  core.int? konnectivityServerNodePort;

  VmwareAdminManualLbConfig({
    this.addonsNodePort,
    this.controlPlaneNodePort,
    this.ingressHttpNodePort,
    this.ingressHttpsNodePort,
    this.konnectivityServerNodePort,
  });

  VmwareAdminManualLbConfig.fromJson(core.Map json_)
      : this(
          addonsNodePort: json_.containsKey('addonsNodePort')
              ? json_['addonsNodePort'] as core.int
              : null,
          controlPlaneNodePort: json_.containsKey('controlPlaneNodePort')
              ? json_['controlPlaneNodePort'] as core.int
              : null,
          ingressHttpNodePort: json_.containsKey('ingressHttpNodePort')
              ? json_['ingressHttpNodePort'] as core.int
              : null,
          ingressHttpsNodePort: json_.containsKey('ingressHttpsNodePort')
              ? json_['ingressHttpsNodePort'] as core.int
              : null,
          konnectivityServerNodePort:
              json_.containsKey('konnectivityServerNodePort')
                  ? json_['konnectivityServerNodePort'] as core.int
                  : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (addonsNodePort != null) 'addonsNodePort': addonsNodePort!,
        if (controlPlaneNodePort != null)
          'controlPlaneNodePort': controlPlaneNodePort!,
        if (ingressHttpNodePort != null)
          'ingressHttpNodePort': ingressHttpNodePort!,
        if (ingressHttpsNodePort != null)
          'ingressHttpsNodePort': ingressHttpsNodePort!,
        if (konnectivityServerNodePort != null)
          'konnectivityServerNodePort': konnectivityServerNodePort!,
      };
}

/// VmwareAdminMetalLbConfig represents configuration parameters for a MetalLB
/// load balancer.
///
/// For admin clusters, currently no configurations is needed.
typedef VmwareAdminMetalLbConfig = $Empty;

/// VmwareAdminNetworkConfig contains network configuration for VMware admin
/// cluster.
class VmwareAdminNetworkConfig {
  /// Configuration settings for a DHCP IP configuration.
  VmwareDhcpIpConfig? dhcpIpConfig;

  /// Configuration for HA admin cluster control plane.
  VmwareAdminHAControlPlaneConfig? haControlPlaneConfig;

  /// Represents common network settings irrespective of the host's IP address.
  VmwareHostConfig? hostConfig;

  /// All pods in the cluster are assigned an RFC1918 IPv4 address from these
  /// ranges.
  ///
  /// Only a single range is supported. This field cannot be changed after
  /// creation.
  ///
  /// Required.
  core.List<core.String>? podAddressCidrBlocks;

  /// All services in the cluster are assigned an RFC1918 IPv4 address from
  /// these ranges.
  ///
  /// Only a single range is supported. This field cannot be changed after
  /// creation.
  ///
  /// Required.
  core.List<core.String>? serviceAddressCidrBlocks;

  /// Configuration settings for a static IP configuration.
  VmwareStaticIpConfig? staticIpConfig;

  /// vcenter_network specifies vCenter network name.
  core.String? vcenterNetwork;

  VmwareAdminNetworkConfig({
    this.dhcpIpConfig,
    this.haControlPlaneConfig,
    this.hostConfig,
    this.podAddressCidrBlocks,
    this.serviceAddressCidrBlocks,
    this.staticIpConfig,
    this.vcenterNetwork,
  });

  VmwareAdminNetworkConfig.fromJson(core.Map json_)
      : this(
          dhcpIpConfig: json_.containsKey('dhcpIpConfig')
              ? VmwareDhcpIpConfig.fromJson(
                  json_['dhcpIpConfig'] as core.Map<core.String, core.dynamic>)
              : null,
          haControlPlaneConfig: json_.containsKey('haControlPlaneConfig')
              ? VmwareAdminHAControlPlaneConfig.fromJson(
                  json_['haControlPlaneConfig']
                      as core.Map<core.String, core.dynamic>)
              : null,
          hostConfig: json_.containsKey('hostConfig')
              ? VmwareHostConfig.fromJson(
                  json_['hostConfig'] as core.Map<core.String, core.dynamic>)
              : null,
          podAddressCidrBlocks: json_.containsKey('podAddressCidrBlocks')
              ? (json_['podAddressCidrBlocks'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          serviceAddressCidrBlocks:
              json_.containsKey('serviceAddressCidrBlocks')
                  ? (json_['serviceAddressCidrBlocks'] as core.List)
                      .map((value) => value as core.String)
                      .toList()
                  : null,
          staticIpConfig: json_.containsKey('staticIpConfig')
              ? VmwareStaticIpConfig.fromJson(json_['staticIpConfig']
                  as core.Map<core.String, core.dynamic>)
              : null,
          vcenterNetwork: json_.containsKey('vcenterNetwork')
              ? json_['vcenterNetwork'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (dhcpIpConfig != null) 'dhcpIpConfig': dhcpIpConfig!,
        if (haControlPlaneConfig != null)
          'haControlPlaneConfig': haControlPlaneConfig!,
        if (hostConfig != null) 'hostConfig': hostConfig!,
        if (podAddressCidrBlocks != null)
          'podAddressCidrBlocks': podAddressCidrBlocks!,
        if (serviceAddressCidrBlocks != null)
          'serviceAddressCidrBlocks': serviceAddressCidrBlocks!,
        if (staticIpConfig != null) 'staticIpConfig': staticIpConfig!,
        if (vcenterNetwork != null) 'vcenterNetwork': vcenterNetwork!,
      };
}

/// VmwareAdminPreparedSecretsConfig represents configuration for admin cluster
/// prepared secrets.
class VmwareAdminPreparedSecretsConfig {
  /// Whether prepared secrets is enabled.
  core.bool? enabled;

  VmwareAdminPreparedSecretsConfig({
    this.enabled,
  });

  VmwareAdminPreparedSecretsConfig.fromJson(core.Map json_)
      : this(
          enabled: json_.containsKey('enabled')
              ? json_['enabled'] as core.bool
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (enabled != null) 'enabled': enabled!,
      };
}

/// VmwareSeesawConfig represents configuration parameters for an already
/// existing Seesaw load balancer.
///
/// IMPORTANT: Please note that the Anthos On-Prem API will not generate or
/// update Seesaw configurations it can only bind a pre-existing configuration
/// to a new user cluster. IMPORTANT: When attempting to create a user cluster
/// with a pre-existing Seesaw load balancer you will need to follow some
/// preparation steps before calling the 'CreateVmwareCluster' API method. First
/// you will need to create the user cluster's namespace via kubectl. The
/// namespace will need to use the following naming convention :
/// -gke-onprem-mgmt or -gke-onprem-mgmt depending on whether you used the
/// 'VmwareCluster.local_name' to disambiguate collisions; for more context see
/// the documentation of 'VmwareCluster.local_name'. Once the namespace is
/// created you will need to create a secret resource via kubectl. This secret
/// will contain copies of your Seesaw credentials. The Secret must be called
/// 'user-cluster-creds' and contain Seesaw's SSH and Cert credentials. The
/// credentials must be keyed with the following names:
/// 'seesaw-ssh-private-key', 'seesaw-ssh-public-key', 'seesaw-ssh-ca-key',
/// 'seesaw-ssh-ca-cert'.
class VmwareAdminSeesawConfig {
  /// Enable two load balancer VMs to achieve a highly-available Seesaw load
  /// balancer.
  core.bool? enableHa;

  /// In general the following format should be used for the Seesaw group name:
  /// seesaw-for-\[cluster_name\].
  core.String? group;

  /// The IP Blocks to be used by the Seesaw load balancer
  core.List<VmwareIpBlock>? ipBlocks;

  /// MasterIP is the IP announced by the master of Seesaw group.
  core.String? masterIp;

  /// Name to be used by Stackdriver.
  core.String? stackdriverName;

  /// Names of the VMs created for this Seesaw group.
  core.List<core.String>? vms;

  VmwareAdminSeesawConfig({
    this.enableHa,
    this.group,
    this.ipBlocks,
    this.masterIp,
    this.stackdriverName,
    this.vms,
  });

  VmwareAdminSeesawConfig.fromJson(core.Map json_)
      : this(
          enableHa: json_.containsKey('enableHa')
              ? json_['enableHa'] as core.bool
              : null,
          group:
              json_.containsKey('group') ? json_['group'] as core.String : null,
          ipBlocks: json_.containsKey('ipBlocks')
              ? (json_['ipBlocks'] as core.List)
                  .map((value) => VmwareIpBlock.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          masterIp: json_.containsKey('masterIp')
              ? json_['masterIp'] as core.String
              : null,
          stackdriverName: json_.containsKey('stackdriverName')
              ? json_['stackdriverName'] as core.String
              : null,
          vms: json_.containsKey('vms')
              ? (json_['vms'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (enableHa != null) 'enableHa': enableHa!,
        if (group != null) 'group': group!,
        if (ipBlocks != null) 'ipBlocks': ipBlocks!,
        if (masterIp != null) 'masterIp': masterIp!,
        if (stackdriverName != null) 'stackdriverName': stackdriverName!,
        if (vms != null) 'vms': vms!,
      };
}

/// VmwareAdminVCenterConfig contains VCenter configuration for VMware admin
/// cluster.
class VmwareAdminVCenterConfig {
  /// The vCenter IP address.
  core.String? address;

  /// Contains the vCenter CA certificate public key for SSL verification.
  core.String? caCertData;

  /// The name of the vCenter cluster for the admin cluster.
  core.String? cluster;

  /// The name of the virtual machine disk (VMDK) for the admin cluster.
  core.String? dataDisk;

  /// The name of the vCenter datacenter for the admin cluster.
  core.String? datacenter;

  /// The name of the vCenter datastore for the admin cluster.
  core.String? datastore;

  /// The name of the vCenter folder for the admin cluster.
  core.String? folder;

  /// The name of the vCenter resource pool for the admin cluster.
  core.String? resourcePool;

  /// The name of the vCenter storage policy for the user cluster.
  core.String? storagePolicyName;

  VmwareAdminVCenterConfig({
    this.address,
    this.caCertData,
    this.cluster,
    this.dataDisk,
    this.datacenter,
    this.datastore,
    this.folder,
    this.resourcePool,
    this.storagePolicyName,
  });

  VmwareAdminVCenterConfig.fromJson(core.Map json_)
      : this(
          address: json_.containsKey('address')
              ? json_['address'] as core.String
              : null,
          caCertData: json_.containsKey('caCertData')
              ? json_['caCertData'] as core.String
              : null,
          cluster: json_.containsKey('cluster')
              ? json_['cluster'] as core.String
              : null,
          dataDisk: json_.containsKey('dataDisk')
              ? json_['dataDisk'] as core.String
              : null,
          datacenter: json_.containsKey('datacenter')
              ? json_['datacenter'] as core.String
              : null,
          datastore: json_.containsKey('datastore')
              ? json_['datastore'] as core.String
              : null,
          folder: json_.containsKey('folder')
              ? json_['folder'] as core.String
              : null,
          resourcePool: json_.containsKey('resourcePool')
              ? json_['resourcePool'] as core.String
              : null,
          storagePolicyName: json_.containsKey('storagePolicyName')
              ? json_['storagePolicyName'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (address != null) 'address': address!,
        if (caCertData != null) 'caCertData': caCertData!,
        if (cluster != null) 'cluster': cluster!,
        if (dataDisk != null) 'dataDisk': dataDisk!,
        if (datacenter != null) 'datacenter': datacenter!,
        if (datastore != null) 'datastore': datastore!,
        if (folder != null) 'folder': folder!,
        if (resourcePool != null) 'resourcePool': resourcePool!,
        if (storagePolicyName != null) 'storagePolicyName': storagePolicyName!,
      };
}

/// VmwareAdminVipConfig for VMware load balancer configurations.
class VmwareAdminVipConfig {
  /// The VIP to configure the load balancer for add-ons.
  core.String? addonsVip;

  /// The VIP which you previously set aside for the Kubernetes API of the admin
  /// cluster.
  core.String? controlPlaneVip;

  VmwareAdminVipConfig({
    this.addonsVip,
    this.controlPlaneVip,
  });

  VmwareAdminVipConfig.fromJson(core.Map json_)
      : this(
          addonsVip: json_.containsKey('addonsVip')
              ? json_['addonsVip'] as core.String
              : null,
          controlPlaneVip: json_.containsKey('controlPlaneVip')
              ? json_['controlPlaneVip'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (addonsVip != null) 'addonsVip': addonsVip!,
        if (controlPlaneVip != null) 'controlPlaneVip': controlPlaneVip!,
      };
}

/// Specifies config to enable/disable auto repair.
///
/// The cluster-health-controller is deployed only if Enabled is true.
class VmwareAutoRepairConfig {
  /// Whether auto repair is enabled.
  core.bool? enabled;

  VmwareAutoRepairConfig({
    this.enabled,
  });

  VmwareAutoRepairConfig.fromJson(core.Map json_)
      : this(
          enabled: json_.containsKey('enabled')
              ? json_['enabled'] as core.bool
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (enabled != null) 'enabled': enabled!,
      };
}

/// Represents auto resizing configurations for the VMware user cluster.
class VmwareAutoResizeConfig {
  /// Whether to enable controle plane node auto resizing.
  core.bool? enabled;

  VmwareAutoResizeConfig({
    this.enabled,
  });

  VmwareAutoResizeConfig.fromJson(core.Map json_)
      : this(
          enabled: json_.containsKey('enabled')
              ? json_['enabled'] as core.bool
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (enabled != null) 'enabled': enabled!,
      };
}

/// VmwareBundleConfig represents configuration for the bundle.
class VmwareBundleConfig {
  /// Resource status for the bundle.
  ///
  /// Output only.
  ResourceStatus? status;

  /// The version of the bundle.
  core.String? version;

  VmwareBundleConfig({
    this.status,
    this.version,
  });

  VmwareBundleConfig.fromJson(core.Map json_)
      : this(
          status: json_.containsKey('status')
              ? ResourceStatus.fromJson(
                  json_['status'] as core.Map<core.String, core.dynamic>)
              : null,
          version: json_.containsKey('version')
              ? json_['version'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (status != null) 'status': status!,
        if (version != null) 'version': version!,
      };
}

/// Resource that represents a VMware user cluster.
///
/// ##
class VmwareCluster {
  /// The admin cluster this VMware user cluster belongs to.
  ///
  /// This is the full resource name of the admin cluster's fleet membership. In
  /// the future, references to other resource types might be allowed if admin
  /// clusters are modeled as their own resources.
  ///
  /// Required.
  core.String? adminClusterMembership;

  /// The resource name of the VMware admin cluster hosting this user cluster.
  ///
  /// Output only.
  core.String? adminClusterName;

  /// Annotations on the VMware user cluster.
  ///
  /// This field has the same restrictions as Kubernetes annotations. The total
  /// size of all keys and values combined is limited to 256k. Key can have 2
  /// segments: prefix (optional) and name (required), separated by a slash (/).
  /// Prefix must be a DNS subdomain. Name must be 63 characters or less, begin
  /// and end with alphanumerics, with dashes (-), underscores (_), dots (.),
  /// and alphanumerics between.
  core.Map<core.String, core.String>? annotations;

  /// AAGConfig specifies whether to spread VMware user cluster nodes across at
  /// least three physical hosts in the datacenter.
  VmwareAAGConfig? antiAffinityGroups;

  /// RBAC policy that will be applied and managed by the Anthos On-Prem API.
  Authorization? authorization;

  /// Configuration for auto repairing.
  VmwareAutoRepairConfig? autoRepairConfig;

  /// Binary Authorization related configurations.
  BinaryAuthorization? binaryAuthorization;

  /// VMware user cluster control plane nodes must have either 1 or 3 replicas.
  VmwareControlPlaneNodeConfig? controlPlaneNode;

  /// The time at which VMware user cluster was created.
  ///
  /// Output only.
  core.String? createTime;

  /// VmwareDataplaneV2Config specifies configuration for Dataplane V2.
  VmwareDataplaneV2Config? dataplaneV2;

  /// The time at which VMware user cluster was deleted.
  ///
  /// Output only.
  core.String? deleteTime;

  /// A human readable description of this VMware user cluster.
  core.String? description;

  /// Disable bundled ingress.
  core.bool? disableBundledIngress;

  /// Enable control plane V2.
  ///
  /// Default to false.
  core.bool? enableControlPlaneV2;

  /// The DNS name of VMware user cluster's API server.
  ///
  /// Output only.
  core.String? endpoint;

  /// This checksum is computed by the server based on the value of other
  /// fields, and may be sent on update and delete requests to ensure the client
  /// has an up-to-date value before proceeding.
  ///
  /// Allows clients to perform consistent read-modify-writes through optimistic
  /// concurrency control.
  core.String? etag;

  /// Fleet configuration for the cluster.
  ///
  /// Output only.
  Fleet? fleet;

  /// Load balancer configuration.
  VmwareLoadBalancerConfig? loadBalancer;

  /// The object name of the VMware OnPremUserCluster custom resource on the
  /// associated admin cluster.
  ///
  /// This field is used to support conflicting names when enrolling existing
  /// clusters to the API. When used as a part of cluster enrollment, this field
  /// will differ from the ID in the resource name. For new clusters, this field
  /// will match the user provided cluster name and be visible in the last
  /// component of the resource name. It is not modifiable. All users should use
  /// this name to access their cluster using gkectl or kubectl and should
  /// expect to see the local name when viewing admin cluster controller logs.
  ///
  /// Output only.
  core.String? localName;

  /// The VMware user cluster resource name.
  ///
  /// Immutable.
  core.String? name;

  /// The VMware user cluster network configuration.
  VmwareNetworkConfig? networkConfig;

  /// The Anthos clusters on the VMware version for your user cluster.
  ///
  /// Required.
  core.String? onPremVersion;

  /// If set, there are currently changes in flight to the VMware user cluster.
  ///
  /// Output only.
  core.bool? reconciling;

  /// The current state of VMware user cluster.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : Not set.
  /// - "PROVISIONING" : The PROVISIONING state indicates the cluster is being
  /// created.
  /// - "RUNNING" : The RUNNING state indicates the cluster has been created and
  /// is fully usable.
  /// - "RECONCILING" : The RECONCILING state indicates that the cluster is
  /// being updated. It remains available, but potentially with degraded
  /// performance.
  /// - "STOPPING" : The STOPPING state indicates the cluster is being deleted.
  /// - "ERROR" : The ERROR state indicates the cluster is in a broken
  /// unrecoverable state.
  /// - "DEGRADED" : The DEGRADED state indicates the cluster requires user
  /// action to restore full functionality.
  core.String? state;

  /// ResourceStatus representing detailed cluster state.
  ///
  /// Output only.
  ResourceStatus? status;

  /// Storage configuration.
  VmwareStorageConfig? storage;

  /// The unique identifier of the VMware user cluster.
  ///
  /// Output only.
  core.String? uid;

  /// The time at which VMware user cluster was last updated.
  ///
  /// Output only.
  core.String? updateTime;

  /// Specifies upgrade policy for the cluster.
  VmwareClusterUpgradePolicy? upgradePolicy;

  /// ValidationCheck represents the result of the preflight check job.
  ///
  /// Output only.
  ValidationCheck? validationCheck;

  /// VmwareVCenterConfig specifies vCenter config for the user cluster.
  ///
  /// If unspecified, it is inherited from the admin cluster.
  VmwareVCenterConfig? vcenter;

  /// Enable VM tracking.
  core.bool? vmTrackingEnabled;

  VmwareCluster({
    this.adminClusterMembership,
    this.adminClusterName,
    this.annotations,
    this.antiAffinityGroups,
    this.authorization,
    this.autoRepairConfig,
    this.binaryAuthorization,
    this.controlPlaneNode,
    this.createTime,
    this.dataplaneV2,
    this.deleteTime,
    this.description,
    this.disableBundledIngress,
    this.enableControlPlaneV2,
    this.endpoint,
    this.etag,
    this.fleet,
    this.loadBalancer,
    this.localName,
    this.name,
    this.networkConfig,
    this.onPremVersion,
    this.reconciling,
    this.state,
    this.status,
    this.storage,
    this.uid,
    this.updateTime,
    this.upgradePolicy,
    this.validationCheck,
    this.vcenter,
    this.vmTrackingEnabled,
  });

  VmwareCluster.fromJson(core.Map json_)
      : this(
          adminClusterMembership: json_.containsKey('adminClusterMembership')
              ? json_['adminClusterMembership'] as core.String
              : null,
          adminClusterName: json_.containsKey('adminClusterName')
              ? json_['adminClusterName'] as core.String
              : null,
          annotations: json_.containsKey('annotations')
              ? (json_['annotations'] as core.Map<core.String, core.dynamic>)
                  .map(
                  (key, value) => core.MapEntry(
                    key,
                    value as core.String,
                  ),
                )
              : null,
          antiAffinityGroups: json_.containsKey('antiAffinityGroups')
              ? VmwareAAGConfig.fromJson(json_['antiAffinityGroups']
                  as core.Map<core.String, core.dynamic>)
              : null,
          authorization: json_.containsKey('authorization')
              ? Authorization.fromJson(
                  json_['authorization'] as core.Map<core.String, core.dynamic>)
              : null,
          autoRepairConfig: json_.containsKey('autoRepairConfig')
              ? VmwareAutoRepairConfig.fromJson(json_['autoRepairConfig']
                  as core.Map<core.String, core.dynamic>)
              : null,
          binaryAuthorization: json_.containsKey('binaryAuthorization')
              ? BinaryAuthorization.fromJson(json_['binaryAuthorization']
                  as core.Map<core.String, core.dynamic>)
              : null,
          controlPlaneNode: json_.containsKey('controlPlaneNode')
              ? VmwareControlPlaneNodeConfig.fromJson(json_['controlPlaneNode']
                  as core.Map<core.String, core.dynamic>)
              : null,
          createTime: json_.containsKey('createTime')
              ? json_['createTime'] as core.String
              : null,
          dataplaneV2: json_.containsKey('dataplaneV2')
              ? VmwareDataplaneV2Config.fromJson(
                  json_['dataplaneV2'] as core.Map<core.String, core.dynamic>)
              : null,
          deleteTime: json_.containsKey('deleteTime')
              ? json_['deleteTime'] as core.String
              : null,
          description: json_.containsKey('description')
              ? json_['description'] as core.String
              : null,
          disableBundledIngress: json_.containsKey('disableBundledIngress')
              ? json_['disableBundledIngress'] as core.bool
              : null,
          enableControlPlaneV2: json_.containsKey('enableControlPlaneV2')
              ? json_['enableControlPlaneV2'] as core.bool
              : null,
          endpoint: json_.containsKey('endpoint')
              ? json_['endpoint'] as core.String
              : null,
          etag: json_.containsKey('etag') ? json_['etag'] as core.String : null,
          fleet: json_.containsKey('fleet')
              ? Fleet.fromJson(
                  json_['fleet'] as core.Map<core.String, core.dynamic>)
              : null,
          loadBalancer: json_.containsKey('loadBalancer')
              ? VmwareLoadBalancerConfig.fromJson(
                  json_['loadBalancer'] as core.Map<core.String, core.dynamic>)
              : null,
          localName: json_.containsKey('localName')
              ? json_['localName'] as core.String
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          networkConfig: json_.containsKey('networkConfig')
              ? VmwareNetworkConfig.fromJson(
                  json_['networkConfig'] as core.Map<core.String, core.dynamic>)
              : null,
          onPremVersion: json_.containsKey('onPremVersion')
              ? json_['onPremVersion'] as core.String
              : null,
          reconciling: json_.containsKey('reconciling')
              ? json_['reconciling'] as core.bool
              : null,
          state:
              json_.containsKey('state') ? json_['state'] as core.String : null,
          status: json_.containsKey('status')
              ? ResourceStatus.fromJson(
                  json_['status'] as core.Map<core.String, core.dynamic>)
              : null,
          storage: json_.containsKey('storage')
              ? VmwareStorageConfig.fromJson(
                  json_['storage'] as core.Map<core.String, core.dynamic>)
              : null,
          uid: json_.containsKey('uid') ? json_['uid'] as core.String : null,
          updateTime: json_.containsKey('updateTime')
              ? json_['updateTime'] as core.String
              : null,
          upgradePolicy: json_.containsKey('upgradePolicy')
              ? VmwareClusterUpgradePolicy.fromJson(
                  json_['upgradePolicy'] as core.Map<core.String, core.dynamic>)
              : null,
          validationCheck: json_.containsKey('validationCheck')
              ? ValidationCheck.fromJson(json_['validationCheck']
                  as core.Map<core.String, core.dynamic>)
              : null,
          vcenter: json_.containsKey('vcenter')
              ? VmwareVCenterConfig.fromJson(
                  json_['vcenter'] as core.Map<core.String, core.dynamic>)
              : null,
          vmTrackingEnabled: json_.containsKey('vmTrackingEnabled')
              ? json_['vmTrackingEnabled'] as core.bool
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (adminClusterMembership != null)
          'adminClusterMembership': adminClusterMembership!,
        if (adminClusterName != null) 'adminClusterName': adminClusterName!,
        if (annotations != null) 'annotations': annotations!,
        if (antiAffinityGroups != null)
          'antiAffinityGroups': antiAffinityGroups!,
        if (authorization != null) 'authorization': authorization!,
        if (autoRepairConfig != null) 'autoRepairConfig': autoRepairConfig!,
        if (binaryAuthorization != null)
          'binaryAuthorization': binaryAuthorization!,
        if (controlPlaneNode != null) 'controlPlaneNode': controlPlaneNode!,
        if (createTime != null) 'createTime': createTime!,
        if (dataplaneV2 != null) 'dataplaneV2': dataplaneV2!,
        if (deleteTime != null) 'deleteTime': deleteTime!,
        if (description != null) 'description': description!,
        if (disableBundledIngress != null)
          'disableBundledIngress': disableBundledIngress!,
        if (enableControlPlaneV2 != null)
          'enableControlPlaneV2': enableControlPlaneV2!,
        if (endpoint != null) 'endpoint': endpoint!,
        if (etag != null) 'etag': etag!,
        if (fleet != null) 'fleet': fleet!,
        if (loadBalancer != null) 'loadBalancer': loadBalancer!,
        if (localName != null) 'localName': localName!,
        if (name != null) 'name': name!,
        if (networkConfig != null) 'networkConfig': networkConfig!,
        if (onPremVersion != null) 'onPremVersion': onPremVersion!,
        if (reconciling != null) 'reconciling': reconciling!,
        if (state != null) 'state': state!,
        if (status != null) 'status': status!,
        if (storage != null) 'storage': storage!,
        if (uid != null) 'uid': uid!,
        if (updateTime != null) 'updateTime': updateTime!,
        if (upgradePolicy != null) 'upgradePolicy': upgradePolicy!,
        if (validationCheck != null) 'validationCheck': validationCheck!,
        if (vcenter != null) 'vcenter': vcenter!,
        if (vmTrackingEnabled != null) 'vmTrackingEnabled': vmTrackingEnabled!,
      };
}

/// VmwareClusterUpgradePolicy defines the cluster upgrade policy.
class VmwareClusterUpgradePolicy {
  /// Controls whether the upgrade applies to the control plane only.
  core.bool? controlPlaneOnly;

  VmwareClusterUpgradePolicy({
    this.controlPlaneOnly,
  });

  VmwareClusterUpgradePolicy.fromJson(core.Map json_)
      : this(
          controlPlaneOnly: json_.containsKey('controlPlaneOnly')
              ? json_['controlPlaneOnly'] as core.bool
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (controlPlaneOnly != null) 'controlPlaneOnly': controlPlaneOnly!,
      };
}

/// Specifies control plane node config for the VMware user cluster.
class VmwareControlPlaneNodeConfig {
  /// AutoResizeConfig provides auto resizing configurations.
  VmwareAutoResizeConfig? autoResizeConfig;

  /// The number of CPUs for each admin cluster node that serve as control
  /// planes for this VMware user cluster.
  ///
  /// (default: 4 CPUs)
  core.String? cpus;

  /// The megabytes of memory for each admin cluster node that serves as a
  /// control plane for this VMware user cluster (default: 8192 MB memory).
  core.String? memory;

  /// The number of control plane nodes for this VMware user cluster.
  ///
  /// (default: 1 replica).
  core.String? replicas;

  /// Vsphere-specific config.
  VmwareControlPlaneVsphereConfig? vsphereConfig;

  VmwareControlPlaneNodeConfig({
    this.autoResizeConfig,
    this.cpus,
    this.memory,
    this.replicas,
    this.vsphereConfig,
  });

  VmwareControlPlaneNodeConfig.fromJson(core.Map json_)
      : this(
          autoResizeConfig: json_.containsKey('autoResizeConfig')
              ? VmwareAutoResizeConfig.fromJson(json_['autoResizeConfig']
                  as core.Map<core.String, core.dynamic>)
              : null,
          cpus: json_.containsKey('cpus') ? json_['cpus'] as core.String : null,
          memory: json_.containsKey('memory')
              ? json_['memory'] as core.String
              : null,
          replicas: json_.containsKey('replicas')
              ? json_['replicas'] as core.String
              : null,
          vsphereConfig: json_.containsKey('vsphereConfig')
              ? VmwareControlPlaneVsphereConfig.fromJson(
                  json_['vsphereConfig'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (autoResizeConfig != null) 'autoResizeConfig': autoResizeConfig!,
        if (cpus != null) 'cpus': cpus!,
        if (memory != null) 'memory': memory!,
        if (replicas != null) 'replicas': replicas!,
        if (vsphereConfig != null) 'vsphereConfig': vsphereConfig!,
      };
}

/// Specifies control plane V2 config.
class VmwareControlPlaneV2Config {
  /// Static IP addresses for the control plane nodes.
  VmwareIpBlock? controlPlaneIpBlock;

  VmwareControlPlaneV2Config({
    this.controlPlaneIpBlock,
  });

  VmwareControlPlaneV2Config.fromJson(core.Map json_)
      : this(
          controlPlaneIpBlock: json_.containsKey('controlPlaneIpBlock')
              ? VmwareIpBlock.fromJson(json_['controlPlaneIpBlock']
                  as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (controlPlaneIpBlock != null)
          'controlPlaneIpBlock': controlPlaneIpBlock!,
      };
}

/// Specifies control plane node config.
class VmwareControlPlaneVsphereConfig {
  /// The Vsphere datastore used by the control plane Node.
  core.String? datastore;

  /// The Vsphere storage policy used by the control plane Node.
  core.String? storagePolicyName;

  VmwareControlPlaneVsphereConfig({
    this.datastore,
    this.storagePolicyName,
  });

  VmwareControlPlaneVsphereConfig.fromJson(core.Map json_)
      : this(
          datastore: json_.containsKey('datastore')
              ? json_['datastore'] as core.String
              : null,
          storagePolicyName: json_.containsKey('storagePolicyName')
              ? json_['storagePolicyName'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (datastore != null) 'datastore': datastore!,
        if (storagePolicyName != null) 'storagePolicyName': storagePolicyName!,
      };
}

/// Contains configurations for Dataplane V2, which is optimized dataplane for
/// Kubernetes networking.
///
/// For more information, see:
/// https://cloud.google.com/kubernetes-engine/docs/concepts/dataplane-v2
class VmwareDataplaneV2Config {
  /// Enable advanced networking which requires dataplane_v2_enabled to be set
  /// true.
  core.bool? advancedNetworking;

  /// Enables Dataplane V2.
  core.bool? dataplaneV2Enabled;

  /// Configure ForwardMode for Dataplane v2.
  core.String? forwardMode;

  /// Enable Dataplane V2 for clusters with Windows nodes.
  core.bool? windowsDataplaneV2Enabled;

  VmwareDataplaneV2Config({
    this.advancedNetworking,
    this.dataplaneV2Enabled,
    this.forwardMode,
    this.windowsDataplaneV2Enabled,
  });

  VmwareDataplaneV2Config.fromJson(core.Map json_)
      : this(
          advancedNetworking: json_.containsKey('advancedNetworking')
              ? json_['advancedNetworking'] as core.bool
              : null,
          dataplaneV2Enabled: json_.containsKey('dataplaneV2Enabled')
              ? json_['dataplaneV2Enabled'] as core.bool
              : null,
          forwardMode: json_.containsKey('forwardMode')
              ? json_['forwardMode'] as core.String
              : null,
          windowsDataplaneV2Enabled:
              json_.containsKey('windowsDataplaneV2Enabled')
                  ? json_['windowsDataplaneV2Enabled'] as core.bool
                  : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (advancedNetworking != null)
          'advancedNetworking': advancedNetworking!,
        if (dataplaneV2Enabled != null)
          'dataplaneV2Enabled': dataplaneV2Enabled!,
        if (forwardMode != null) 'forwardMode': forwardMode!,
        if (windowsDataplaneV2Enabled != null)
          'windowsDataplaneV2Enabled': windowsDataplaneV2Enabled!,
      };
}

/// Represents the network configuration required for the VMware user clusters
/// with DHCP IP configurations.
class VmwareDhcpIpConfig {
  /// enabled is a flag to mark if DHCP IP allocation is used for VMware user
  /// clusters.
  core.bool? enabled;

  VmwareDhcpIpConfig({
    this.enabled,
  });

  VmwareDhcpIpConfig.fromJson(core.Map json_)
      : this(
          enabled: json_.containsKey('enabled')
              ? json_['enabled'] as core.bool
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (enabled != null) 'enabled': enabled!,
      };
}

/// Represents configuration parameters for an F5 BIG-IP load balancer.
typedef VmwareF5BigIpConfig = $F5BigIpConfig;

/// Represents the common parameters for all the hosts irrespective of their IP
/// address.
class VmwareHostConfig {
  /// DNS search domains.
  core.List<core.String>? dnsSearchDomains;

  /// DNS servers.
  core.List<core.String>? dnsServers;

  /// NTP servers.
  core.List<core.String>? ntpServers;

  VmwareHostConfig({
    this.dnsSearchDomains,
    this.dnsServers,
    this.ntpServers,
  });

  VmwareHostConfig.fromJson(core.Map json_)
      : this(
          dnsSearchDomains: json_.containsKey('dnsSearchDomains')
              ? (json_['dnsSearchDomains'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          dnsServers: json_.containsKey('dnsServers')
              ? (json_['dnsServers'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          ntpServers: json_.containsKey('ntpServers')
              ? (json_['ntpServers'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (dnsSearchDomains != null) 'dnsSearchDomains': dnsSearchDomains!,
        if (dnsServers != null) 'dnsServers': dnsServers!,
        if (ntpServers != null) 'ntpServers': ntpServers!,
      };
}

/// Represents VMware user cluster node's network configuration.
class VmwareHostIp {
  /// Hostname of the machine.
  ///
  /// VM's name will be used if this field is empty.
  core.String? hostname;

  /// IP could be an IP address (like 1.2.3.4) or a CIDR (like 1.2.3.0/24).
  core.String? ip;

  VmwareHostIp({
    this.hostname,
    this.ip,
  });

  VmwareHostIp.fromJson(core.Map json_)
      : this(
          hostname: json_.containsKey('hostname')
              ? json_['hostname'] as core.String
              : null,
          ip: json_.containsKey('ip') ? json_['ip'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (hostname != null) 'hostname': hostname!,
        if (ip != null) 'ip': ip!,
      };
}

/// Represents a collection of IP addresses to assign to nodes.
class VmwareIpBlock {
  /// The network gateway used by the VMware user cluster.
  core.String? gateway;

  /// The node's network configurations used by the VMware user cluster.
  core.List<VmwareHostIp>? ips;

  /// The netmask used by the VMware user cluster.
  core.String? netmask;

  VmwareIpBlock({
    this.gateway,
    this.ips,
    this.netmask,
  });

  VmwareIpBlock.fromJson(core.Map json_)
      : this(
          gateway: json_.containsKey('gateway')
              ? json_['gateway'] as core.String
              : null,
          ips: json_.containsKey('ips')
              ? (json_['ips'] as core.List)
                  .map((value) => VmwareHostIp.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          netmask: json_.containsKey('netmask')
              ? json_['netmask'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (gateway != null) 'gateway': gateway!,
        if (ips != null) 'ips': ips!,
        if (netmask != null) 'netmask': netmask!,
      };
}

/// Specifies the locad balancer config for the VMware user cluster.
class VmwareLoadBalancerConfig {
  /// Configuration for F5 Big IP typed load balancers.
  VmwareF5BigIpConfig? f5Config;

  /// Manually configured load balancers.
  VmwareManualLbConfig? manualLbConfig;

  /// Configuration for MetalLB typed load balancers.
  VmwareMetalLbConfig? metalLbConfig;

  /// Configuration for Seesaw typed load balancers.
  ///
  /// Output only.
  VmwareSeesawConfig? seesawConfig;

  /// The VIPs used by the load balancer.
  VmwareVipConfig? vipConfig;

  VmwareLoadBalancerConfig({
    this.f5Config,
    this.manualLbConfig,
    this.metalLbConfig,
    this.seesawConfig,
    this.vipConfig,
  });

  VmwareLoadBalancerConfig.fromJson(core.Map json_)
      : this(
          f5Config: json_.containsKey('f5Config')
              ? VmwareF5BigIpConfig.fromJson(
                  json_['f5Config'] as core.Map<core.String, core.dynamic>)
              : null,
          manualLbConfig: json_.containsKey('manualLbConfig')
              ? VmwareManualLbConfig.fromJson(json_['manualLbConfig']
                  as core.Map<core.String, core.dynamic>)
              : null,
          metalLbConfig: json_.containsKey('metalLbConfig')
              ? VmwareMetalLbConfig.fromJson(
                  json_['metalLbConfig'] as core.Map<core.String, core.dynamic>)
              : null,
          seesawConfig: json_.containsKey('seesawConfig')
              ? VmwareSeesawConfig.fromJson(
                  json_['seesawConfig'] as core.Map<core.String, core.dynamic>)
              : null,
          vipConfig: json_.containsKey('vipConfig')
              ? VmwareVipConfig.fromJson(
                  json_['vipConfig'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (f5Config != null) 'f5Config': f5Config!,
        if (manualLbConfig != null) 'manualLbConfig': manualLbConfig!,
        if (metalLbConfig != null) 'metalLbConfig': metalLbConfig!,
        if (seesawConfig != null) 'seesawConfig': seesawConfig!,
        if (vipConfig != null) 'vipConfig': vipConfig!,
      };
}

/// Represents configuration parameters for an already existing manual load
/// balancer.
///
/// Given the nature of manual load balancers it is expected that said load
/// balancer will be fully managed by users. IMPORTANT: Please note that the
/// Anthos On-Prem API will not generate or update ManualLB configurations it
/// can only bind a pre-existing configuration to a new VMware user cluster.
class VmwareManualLbConfig {
  /// NodePort for control plane service.
  ///
  /// The Kubernetes API server in the admin cluster is implemented as a Service
  /// of type NodePort (ex. 30968).
  core.int? controlPlaneNodePort;

  /// NodePort for ingress service's http.
  ///
  /// The ingress service in the admin cluster is implemented as a Service of
  /// type NodePort (ex. 32527).
  core.int? ingressHttpNodePort;

  /// NodePort for ingress service's https.
  ///
  /// The ingress service in the admin cluster is implemented as a Service of
  /// type NodePort (ex. 30139).
  core.int? ingressHttpsNodePort;

  /// NodePort for konnectivity server service running as a sidecar in each
  /// kube-apiserver pod (ex.
  ///
  /// 30564).
  core.int? konnectivityServerNodePort;

  VmwareManualLbConfig({
    this.controlPlaneNodePort,
    this.ingressHttpNodePort,
    this.ingressHttpsNodePort,
    this.konnectivityServerNodePort,
  });

  VmwareManualLbConfig.fromJson(core.Map json_)
      : this(
          controlPlaneNodePort: json_.containsKey('controlPlaneNodePort')
              ? json_['controlPlaneNodePort'] as core.int
              : null,
          ingressHttpNodePort: json_.containsKey('ingressHttpNodePort')
              ? json_['ingressHttpNodePort'] as core.int
              : null,
          ingressHttpsNodePort: json_.containsKey('ingressHttpsNodePort')
              ? json_['ingressHttpsNodePort'] as core.int
              : null,
          konnectivityServerNodePort:
              json_.containsKey('konnectivityServerNodePort')
                  ? json_['konnectivityServerNodePort'] as core.int
                  : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (controlPlaneNodePort != null)
          'controlPlaneNodePort': controlPlaneNodePort!,
        if (ingressHttpNodePort != null)
          'ingressHttpNodePort': ingressHttpNodePort!,
        if (ingressHttpsNodePort != null)
          'ingressHttpsNodePort': ingressHttpsNodePort!,
        if (konnectivityServerNodePort != null)
          'konnectivityServerNodePort': konnectivityServerNodePort!,
      };
}

/// Represents configuration parameters for the MetalLB load balancer.
class VmwareMetalLbConfig {
  /// AddressPools is a list of non-overlapping IP pools used by load balancer
  /// typed services.
  ///
  /// All addresses must be routable to load balancer nodes. IngressVIP must be
  /// included in the pools.
  ///
  /// Required.
  core.List<VmwareAddressPool>? addressPools;

  VmwareMetalLbConfig({
    this.addressPools,
  });

  VmwareMetalLbConfig.fromJson(core.Map json_)
      : this(
          addressPools: json_.containsKey('addressPools')
              ? (json_['addressPools'] as core.List)
                  .map((value) => VmwareAddressPool.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (addressPools != null) 'addressPools': addressPools!,
      };
}

/// Specifies network config for the VMware user cluster.
class VmwareNetworkConfig {
  /// Configuration for control plane V2 mode.
  VmwareControlPlaneV2Config? controlPlaneV2Config;

  /// Configuration settings for a DHCP IP configuration.
  VmwareDhcpIpConfig? dhcpIpConfig;

  /// Represents common network settings irrespective of the host's IP address.
  VmwareHostConfig? hostConfig;

  /// All pods in the cluster are assigned an RFC1918 IPv4 address from these
  /// ranges.
  ///
  /// Only a single range is supported. This field cannot be changed after
  /// creation.
  ///
  /// Required.
  core.List<core.String>? podAddressCidrBlocks;

  /// All services in the cluster are assigned an RFC1918 IPv4 address from
  /// these ranges.
  ///
  /// Only a single range is supported. This field cannot be changed after
  /// creation.
  ///
  /// Required.
  core.List<core.String>? serviceAddressCidrBlocks;

  /// Configuration settings for a static IP configuration.
  VmwareStaticIpConfig? staticIpConfig;

  /// vcenter_network specifies vCenter network name.
  ///
  /// Inherited from the admin cluster.
  core.String? vcenterNetwork;

  VmwareNetworkConfig({
    this.controlPlaneV2Config,
    this.dhcpIpConfig,
    this.hostConfig,
    this.podAddressCidrBlocks,
    this.serviceAddressCidrBlocks,
    this.staticIpConfig,
    this.vcenterNetwork,
  });

  VmwareNetworkConfig.fromJson(core.Map json_)
      : this(
          controlPlaneV2Config: json_.containsKey('controlPlaneV2Config')
              ? VmwareControlPlaneV2Config.fromJson(
                  json_['controlPlaneV2Config']
                      as core.Map<core.String, core.dynamic>)
              : null,
          dhcpIpConfig: json_.containsKey('dhcpIpConfig')
              ? VmwareDhcpIpConfig.fromJson(
                  json_['dhcpIpConfig'] as core.Map<core.String, core.dynamic>)
              : null,
          hostConfig: json_.containsKey('hostConfig')
              ? VmwareHostConfig.fromJson(
                  json_['hostConfig'] as core.Map<core.String, core.dynamic>)
              : null,
          podAddressCidrBlocks: json_.containsKey('podAddressCidrBlocks')
              ? (json_['podAddressCidrBlocks'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          serviceAddressCidrBlocks:
              json_.containsKey('serviceAddressCidrBlocks')
                  ? (json_['serviceAddressCidrBlocks'] as core.List)
                      .map((value) => value as core.String)
                      .toList()
                  : null,
          staticIpConfig: json_.containsKey('staticIpConfig')
              ? VmwareStaticIpConfig.fromJson(json_['staticIpConfig']
                  as core.Map<core.String, core.dynamic>)
              : null,
          vcenterNetwork: json_.containsKey('vcenterNetwork')
              ? json_['vcenterNetwork'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (controlPlaneV2Config != null)
          'controlPlaneV2Config': controlPlaneV2Config!,
        if (dhcpIpConfig != null) 'dhcpIpConfig': dhcpIpConfig!,
        if (hostConfig != null) 'hostConfig': hostConfig!,
        if (podAddressCidrBlocks != null)
          'podAddressCidrBlocks': podAddressCidrBlocks!,
        if (serviceAddressCidrBlocks != null)
          'serviceAddressCidrBlocks': serviceAddressCidrBlocks!,
        if (staticIpConfig != null) 'staticIpConfig': staticIpConfig!,
        if (vcenterNetwork != null) 'vcenterNetwork': vcenterNetwork!,
      };
}

/// Parameters that describe the configuration of all nodes within a given node
/// pool.
class VmwareNodeConfig {
  /// VMware disk size to be used during creation.
  core.String? bootDiskSizeGb;

  /// The number of CPUs for each node in the node pool.
  core.String? cpus;

  /// Allow node pool traffic to be load balanced.
  ///
  /// Only works for clusters with MetalLB load balancers.
  core.bool? enableLoadBalancer;

  /// The OS image name in vCenter, only valid when using Windows.
  core.String? image;

  /// The OS image to be used for each node in a node pool.
  ///
  /// Currently `cos`, `cos_cgv2`, `ubuntu`, `ubuntu_cgv2`, `ubuntu_containerd`
  /// and `windows` are supported.
  ///
  /// Required.
  core.String? imageType;

  /// The map of Kubernetes labels (key/value pairs) to be applied to each node.
  ///
  /// These will added in addition to any default label(s) that Kubernetes may
  /// apply to the node. In case of conflict in label keys, the applied set may
  /// differ depending on the Kubernetes version -- it's best to assume the
  /// behavior is undefined and conflicts should be avoided. For more
  /// information, including usage and the valid values, see:
  /// https://kubernetes.io/docs/concepts/overview/working-with-objects/labels/
  core.Map<core.String, core.String>? labels;

  /// The megabytes of memory for each node in the node pool.
  core.String? memoryMb;

  /// The number of nodes in the node pool.
  core.String? replicas;

  /// The initial taints assigned to nodes of this node pool.
  core.List<NodeTaint>? taints;

  /// Specifies the vSphere config for node pool.
  VmwareVsphereConfig? vsphereConfig;

  VmwareNodeConfig({
    this.bootDiskSizeGb,
    this.cpus,
    this.enableLoadBalancer,
    this.image,
    this.imageType,
    this.labels,
    this.memoryMb,
    this.replicas,
    this.taints,
    this.vsphereConfig,
  });

  VmwareNodeConfig.fromJson(core.Map json_)
      : this(
          bootDiskSizeGb: json_.containsKey('bootDiskSizeGb')
              ? json_['bootDiskSizeGb'] as core.String
              : null,
          cpus: json_.containsKey('cpus') ? json_['cpus'] as core.String : null,
          enableLoadBalancer: json_.containsKey('enableLoadBalancer')
              ? json_['enableLoadBalancer'] as core.bool
              : null,
          image:
              json_.containsKey('image') ? json_['image'] as core.String : null,
          imageType: json_.containsKey('imageType')
              ? json_['imageType'] as core.String
              : null,
          labels: json_.containsKey('labels')
              ? (json_['labels'] as core.Map<core.String, core.dynamic>).map(
                  (key, value) => core.MapEntry(
                    key,
                    value as core.String,
                  ),
                )
              : null,
          memoryMb: json_.containsKey('memoryMb')
              ? json_['memoryMb'] as core.String
              : null,
          replicas: json_.containsKey('replicas')
              ? json_['replicas'] as core.String
              : null,
          taints: json_.containsKey('taints')
              ? (json_['taints'] as core.List)
                  .map((value) => NodeTaint.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          vsphereConfig: json_.containsKey('vsphereConfig')
              ? VmwareVsphereConfig.fromJson(
                  json_['vsphereConfig'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (bootDiskSizeGb != null) 'bootDiskSizeGb': bootDiskSizeGb!,
        if (cpus != null) 'cpus': cpus!,
        if (enableLoadBalancer != null)
          'enableLoadBalancer': enableLoadBalancer!,
        if (image != null) 'image': image!,
        if (imageType != null) 'imageType': imageType!,
        if (labels != null) 'labels': labels!,
        if (memoryMb != null) 'memoryMb': memoryMb!,
        if (replicas != null) 'replicas': replicas!,
        if (taints != null) 'taints': taints!,
        if (vsphereConfig != null) 'vsphereConfig': vsphereConfig!,
      };
}

/// Resource VmwareNodePool represents a VMware node pool.
///
/// ##
class VmwareNodePool {
  /// Annotations on the node pool.
  ///
  /// This field has the same restrictions as Kubernetes annotations. The total
  /// size of all keys and values combined is limited to 256k. Key can have 2
  /// segments: prefix (optional) and name (required), separated by a slash (/).
  /// Prefix must be a DNS subdomain. Name must be 63 characters or less, begin
  /// and end with alphanumerics, with dashes (-), underscores (_), dots (.),
  /// and alphanumerics between.
  core.Map<core.String, core.String>? annotations;

  /// The node configuration of the node pool.
  ///
  /// Required.
  VmwareNodeConfig? config;

  /// The time at which this node pool was created.
  ///
  /// Output only.
  core.String? createTime;

  /// The time at which this node pool was deleted.
  ///
  /// If the resource is not deleted, this must be empty
  ///
  /// Output only.
  core.String? deleteTime;

  /// The display name for the node pool.
  core.String? displayName;

  /// This checksum is computed by the server based on the value of other
  /// fields, and may be sent on update and delete requests to ensure the client
  /// has an up-to-date value before proceeding.
  ///
  /// Allows clients to perform consistent read-modify-writes through optimistic
  /// concurrency control.
  core.String? etag;

  /// The resource name of this node pool.
  ///
  /// Immutable.
  core.String? name;

  /// Node pool autoscaling config for the node pool.
  VmwareNodePoolAutoscalingConfig? nodePoolAutoscaling;

  /// Anthos version for the node pool.
  ///
  /// Defaults to the user cluster version.
  core.String? onPremVersion;

  /// If set, there are currently changes in flight to the node pool.
  ///
  /// Output only.
  core.bool? reconciling;

  /// The current state of the node pool.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : Not set.
  /// - "PROVISIONING" : The PROVISIONING state indicates the node pool is being
  /// created.
  /// - "RUNNING" : The RUNNING state indicates the node pool has been created
  /// and is fully usable.
  /// - "RECONCILING" : The RECONCILING state indicates that the node pool is
  /// being updated. It remains available, but potentially with degraded
  /// performance.
  /// - "STOPPING" : The STOPPING state indicates the cluster is being deleted
  /// - "ERROR" : The ERROR state indicates the node pool is in a broken
  /// unrecoverable state.
  /// - "DEGRADED" : The DEGRADED state indicates the node pool requires user
  /// action to restore full functionality.
  core.String? state;

  /// ResourceStatus representing the detailed VMware node pool state.
  ///
  /// Output only.
  ResourceStatus? status;

  /// The unique identifier of the node pool.
  ///
  /// Output only.
  core.String? uid;

  /// The time at which this node pool was last updated.
  ///
  /// Output only.
  core.String? updateTime;

  VmwareNodePool({
    this.annotations,
    this.config,
    this.createTime,
    this.deleteTime,
    this.displayName,
    this.etag,
    this.name,
    this.nodePoolAutoscaling,
    this.onPremVersion,
    this.reconciling,
    this.state,
    this.status,
    this.uid,
    this.updateTime,
  });

  VmwareNodePool.fromJson(core.Map json_)
      : this(
          annotations: json_.containsKey('annotations')
              ? (json_['annotations'] as core.Map<core.String, core.dynamic>)
                  .map(
                  (key, value) => core.MapEntry(
                    key,
                    value as core.String,
                  ),
                )
              : null,
          config: json_.containsKey('config')
              ? VmwareNodeConfig.fromJson(
                  json_['config'] as core.Map<core.String, core.dynamic>)
              : null,
          createTime: json_.containsKey('createTime')
              ? json_['createTime'] as core.String
              : null,
          deleteTime: json_.containsKey('deleteTime')
              ? json_['deleteTime'] as core.String
              : null,
          displayName: json_.containsKey('displayName')
              ? json_['displayName'] as core.String
              : null,
          etag: json_.containsKey('etag') ? json_['etag'] as core.String : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          nodePoolAutoscaling: json_.containsKey('nodePoolAutoscaling')
              ? VmwareNodePoolAutoscalingConfig.fromJson(
                  json_['nodePoolAutoscaling']
                      as core.Map<core.String, core.dynamic>)
              : null,
          onPremVersion: json_.containsKey('onPremVersion')
              ? json_['onPremVersion'] as core.String
              : null,
          reconciling: json_.containsKey('reconciling')
              ? json_['reconciling'] as core.bool
              : null,
          state:
              json_.containsKey('state') ? json_['state'] as core.String : null,
          status: json_.containsKey('status')
              ? ResourceStatus.fromJson(
                  json_['status'] as core.Map<core.String, core.dynamic>)
              : null,
          uid: json_.containsKey('uid') ? json_['uid'] as core.String : null,
          updateTime: json_.containsKey('updateTime')
              ? json_['updateTime'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (annotations != null) 'annotations': annotations!,
        if (config != null) 'config': config!,
        if (createTime != null) 'createTime': createTime!,
        if (deleteTime != null) 'deleteTime': deleteTime!,
        if (displayName != null) 'displayName': displayName!,
        if (etag != null) 'etag': etag!,
        if (name != null) 'name': name!,
        if (nodePoolAutoscaling != null)
          'nodePoolAutoscaling': nodePoolAutoscaling!,
        if (onPremVersion != null) 'onPremVersion': onPremVersion!,
        if (reconciling != null) 'reconciling': reconciling!,
        if (state != null) 'state': state!,
        if (status != null) 'status': status!,
        if (uid != null) 'uid': uid!,
        if (updateTime != null) 'updateTime': updateTime!,
      };
}

/// NodePoolAutoscaling config for the NodePool to allow for the kubernetes to
/// scale NodePool.
class VmwareNodePoolAutoscalingConfig {
  /// Maximum number of replicas in the NodePool.
  core.int? maxReplicas;

  /// Minimum number of replicas in the NodePool.
  core.int? minReplicas;

  VmwareNodePoolAutoscalingConfig({
    this.maxReplicas,
    this.minReplicas,
  });

  VmwareNodePoolAutoscalingConfig.fromJson(core.Map json_)
      : this(
          maxReplicas: json_.containsKey('maxReplicas')
              ? json_['maxReplicas'] as core.int
              : null,
          minReplicas: json_.containsKey('minReplicas')
              ? json_['minReplicas'] as core.int
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (maxReplicas != null) 'maxReplicas': maxReplicas!,
        if (minReplicas != null) 'minReplicas': minReplicas!,
      };
}

/// VmwarePlatformConfig represents configuration for the VMware platform.
class VmwarePlatformConfig {
  /// The list of bundles installed in the admin cluster.
  ///
  /// Output only.
  core.List<VmwareBundleConfig>? bundles;

  /// The platform version e.g. 1.13.2.
  ///
  /// Output only.
  core.String? platformVersion;

  /// Input only.
  ///
  /// The required platform version e.g. 1.13.1. If the current platform version
  /// is lower than the target version, the platform version will be updated to
  /// the target version. If the target version is not installed in the platform
  /// (bundle versions), download the target version bundle.
  core.String? requiredPlatformVersion;

  /// Resource status for the platform.
  ///
  /// Output only.
  ResourceStatus? status;

  VmwarePlatformConfig({
    this.bundles,
    this.platformVersion,
    this.requiredPlatformVersion,
    this.status,
  });

  VmwarePlatformConfig.fromJson(core.Map json_)
      : this(
          bundles: json_.containsKey('bundles')
              ? (json_['bundles'] as core.List)
                  .map((value) => VmwareBundleConfig.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          platformVersion: json_.containsKey('platformVersion')
              ? json_['platformVersion'] as core.String
              : null,
          requiredPlatformVersion: json_.containsKey('requiredPlatformVersion')
              ? json_['requiredPlatformVersion'] as core.String
              : null,
          status: json_.containsKey('status')
              ? ResourceStatus.fromJson(
                  json_['status'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (bundles != null) 'bundles': bundles!,
        if (platformVersion != null) 'platformVersion': platformVersion!,
        if (requiredPlatformVersion != null)
          'requiredPlatformVersion': requiredPlatformVersion!,
        if (status != null) 'status': status!,
      };
}

/// VmwareSeesawConfig represents configuration parameters for an already
/// existing Seesaw load balancer.
///
/// IMPORTANT: Please note that the Anthos On-Prem API will not generate or
/// update Seesaw configurations it can only bind a pre-existing configuration
/// to a new user cluster. IMPORTANT: When attempting to create a user cluster
/// with a pre-existing Seesaw load balancer you will need to follow some
/// preparation steps before calling the 'CreateVmwareCluster' API method. First
/// you will need to create the user cluster's namespace via kubectl. The
/// namespace will need to use the following naming convention :
/// -gke-onprem-mgmt or -gke-onprem-mgmt depending on whether you used the
/// 'VmwareCluster.local_name' to disambiguate collisions; for more context see
/// the documentation of 'VmwareCluster.local_name'. Once the namespace is
/// created you will need to create a secret resource via kubectl. This secret
/// will contain copies of your Seesaw credentials. The Secret must be called
/// 'user-cluster-creds' and contain Seesaw's SSH and Cert credentials. The
/// credentials must be keyed with the following names:
/// 'seesaw-ssh-private-key', 'seesaw-ssh-public-key', 'seesaw-ssh-ca-key',
/// 'seesaw-ssh-ca-cert'.
class VmwareSeesawConfig {
  /// Enable two load balancer VMs to achieve a highly-available Seesaw load
  /// balancer.
  core.bool? enableHa;

  /// In general the following format should be used for the Seesaw group name:
  /// seesaw-for-\[cluster_name\].
  ///
  /// Required.
  core.String? group;

  /// The IP Blocks to be used by the Seesaw load balancer
  ///
  /// Required.
  core.List<VmwareIpBlock>? ipBlocks;

  /// MasterIP is the IP announced by the master of Seesaw group.
  ///
  /// Required.
  core.String? masterIp;

  /// Name to be used by Stackdriver.
  core.String? stackdriverName;

  /// Names of the VMs created for this Seesaw group.
  core.List<core.String>? vms;

  VmwareSeesawConfig({
    this.enableHa,
    this.group,
    this.ipBlocks,
    this.masterIp,
    this.stackdriverName,
    this.vms,
  });

  VmwareSeesawConfig.fromJson(core.Map json_)
      : this(
          enableHa: json_.containsKey('enableHa')
              ? json_['enableHa'] as core.bool
              : null,
          group:
              json_.containsKey('group') ? json_['group'] as core.String : null,
          ipBlocks: json_.containsKey('ipBlocks')
              ? (json_['ipBlocks'] as core.List)
                  .map((value) => VmwareIpBlock.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          masterIp: json_.containsKey('masterIp')
              ? json_['masterIp'] as core.String
              : null,
          stackdriverName: json_.containsKey('stackdriverName')
              ? json_['stackdriverName'] as core.String
              : null,
          vms: json_.containsKey('vms')
              ? (json_['vms'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (enableHa != null) 'enableHa': enableHa!,
        if (group != null) 'group': group!,
        if (ipBlocks != null) 'ipBlocks': ipBlocks!,
        if (masterIp != null) 'masterIp': masterIp!,
        if (stackdriverName != null) 'stackdriverName': stackdriverName!,
        if (vms != null) 'vms': vms!,
      };
}

/// Represents the network configuration required for the VMware user clusters
/// with Static IP configurations.
class VmwareStaticIpConfig {
  /// Represents the configuration values for static IP allocation to nodes.
  core.List<VmwareIpBlock>? ipBlocks;

  VmwareStaticIpConfig({
    this.ipBlocks,
  });

  VmwareStaticIpConfig.fromJson(core.Map json_)
      : this(
          ipBlocks: json_.containsKey('ipBlocks')
              ? (json_['ipBlocks'] as core.List)
                  .map((value) => VmwareIpBlock.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (ipBlocks != null) 'ipBlocks': ipBlocks!,
      };
}

/// Specifies vSphere CSI components deployment config in the VMware user
/// cluster.
class VmwareStorageConfig {
  /// Whether or not to deploy vSphere CSI components in the VMware user
  /// cluster.
  ///
  /// Enabled by default.
  core.bool? vsphereCsiDisabled;

  VmwareStorageConfig({
    this.vsphereCsiDisabled,
  });

  VmwareStorageConfig.fromJson(core.Map json_)
      : this(
          vsphereCsiDisabled: json_.containsKey('vsphereCsiDisabled')
              ? json_['vsphereCsiDisabled'] as core.bool
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (vsphereCsiDisabled != null)
          'vsphereCsiDisabled': vsphereCsiDisabled!,
      };
}

/// Represents configuration for the VMware VCenter for the user cluster.
class VmwareVCenterConfig {
  /// The vCenter IP address.
  ///
  /// Output only.
  core.String? address;

  /// Contains the vCenter CA certificate public key for SSL verification.
  core.String? caCertData;

  /// The name of the vCenter cluster for the user cluster.
  core.String? cluster;

  /// The name of the vCenter datacenter for the user cluster.
  core.String? datacenter;

  /// The name of the vCenter datastore for the user cluster.
  core.String? datastore;

  /// The name of the vCenter folder for the user cluster.
  core.String? folder;

  /// The name of the vCenter resource pool for the user cluster.
  core.String? resourcePool;

  /// The name of the vCenter storage policy for the user cluster.
  core.String? storagePolicyName;

  VmwareVCenterConfig({
    this.address,
    this.caCertData,
    this.cluster,
    this.datacenter,
    this.datastore,
    this.folder,
    this.resourcePool,
    this.storagePolicyName,
  });

  VmwareVCenterConfig.fromJson(core.Map json_)
      : this(
          address: json_.containsKey('address')
              ? json_['address'] as core.String
              : null,
          caCertData: json_.containsKey('caCertData')
              ? json_['caCertData'] as core.String
              : null,
          cluster: json_.containsKey('cluster')
              ? json_['cluster'] as core.String
              : null,
          datacenter: json_.containsKey('datacenter')
              ? json_['datacenter'] as core.String
              : null,
          datastore: json_.containsKey('datastore')
              ? json_['datastore'] as core.String
              : null,
          folder: json_.containsKey('folder')
              ? json_['folder'] as core.String
              : null,
          resourcePool: json_.containsKey('resourcePool')
              ? json_['resourcePool'] as core.String
              : null,
          storagePolicyName: json_.containsKey('storagePolicyName')
              ? json_['storagePolicyName'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (address != null) 'address': address!,
        if (caCertData != null) 'caCertData': caCertData!,
        if (cluster != null) 'cluster': cluster!,
        if (datacenter != null) 'datacenter': datacenter!,
        if (datastore != null) 'datastore': datastore!,
        if (folder != null) 'folder': folder!,
        if (resourcePool != null) 'resourcePool': resourcePool!,
        if (storagePolicyName != null) 'storagePolicyName': storagePolicyName!,
      };
}

/// Contains information about a specific Anthos on VMware version.
class VmwareVersionInfo {
  /// The list of upgrade dependencies for this version.
  core.List<UpgradeDependency>? dependencies;

  /// If set, the cluster dependencies (e.g. the admin cluster, other user
  /// clusters managed by the same admin cluster) must be upgraded before this
  /// version can be installed or upgraded to.
  core.bool? hasDependencies;

  /// If set, the version is installed in the admin cluster.
  ///
  /// Otherwise, the version bundle must be downloaded and installed before a
  /// user cluster can be created at or upgraded to this version.
  core.bool? isInstalled;

  /// Version number e.g. 1.13.1-gke.1000.
  core.String? version;

  VmwareVersionInfo({
    this.dependencies,
    this.hasDependencies,
    this.isInstalled,
    this.version,
  });

  VmwareVersionInfo.fromJson(core.Map json_)
      : this(
          dependencies: json_.containsKey('dependencies')
              ? (json_['dependencies'] as core.List)
                  .map((value) => UpgradeDependency.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          hasDependencies: json_.containsKey('hasDependencies')
              ? json_['hasDependencies'] as core.bool
              : null,
          isInstalled: json_.containsKey('isInstalled')
              ? json_['isInstalled'] as core.bool
              : null,
          version: json_.containsKey('version')
              ? json_['version'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (dependencies != null) 'dependencies': dependencies!,
        if (hasDependencies != null) 'hasDependencies': hasDependencies!,
        if (isInstalled != null) 'isInstalled': isInstalled!,
        if (version != null) 'version': version!,
      };
}

/// Specifies the VIP config for the VMware user cluster load balancer.
class VmwareVipConfig {
  /// The VIP which you previously set aside for the Kubernetes API of this
  /// cluster.
  core.String? controlPlaneVip;

  /// The VIP which you previously set aside for ingress traffic into this
  /// cluster.
  core.String? ingressVip;

  VmwareVipConfig({
    this.controlPlaneVip,
    this.ingressVip,
  });

  VmwareVipConfig.fromJson(core.Map json_)
      : this(
          controlPlaneVip: json_.containsKey('controlPlaneVip')
              ? json_['controlPlaneVip'] as core.String
              : null,
          ingressVip: json_.containsKey('ingressVip')
              ? json_['ingressVip'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (controlPlaneVip != null) 'controlPlaneVip': controlPlaneVip!,
        if (ingressVip != null) 'ingressVip': ingressVip!,
      };
}

/// VmwareVsphereConfig represents configuration for the VMware VCenter for node
/// pool.
class VmwareVsphereConfig {
  /// The name of the vCenter datastore.
  ///
  /// Inherited from the user cluster.
  core.String? datastore;

  /// Vsphere host groups to apply to all VMs in the node pool
  core.List<core.String>? hostGroups;

  /// Tags to apply to VMs.
  core.List<VmwareVsphereTag>? tags;

  VmwareVsphereConfig({
    this.datastore,
    this.hostGroups,
    this.tags,
  });

  VmwareVsphereConfig.fromJson(core.Map json_)
      : this(
          datastore: json_.containsKey('datastore')
              ? json_['datastore'] as core.String
              : null,
          hostGroups: json_.containsKey('hostGroups')
              ? (json_['hostGroups'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          tags: json_.containsKey('tags')
              ? (json_['tags'] as core.List)
                  .map((value) => VmwareVsphereTag.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (datastore != null) 'datastore': datastore!,
        if (hostGroups != null) 'hostGroups': hostGroups!,
        if (tags != null) 'tags': tags!,
      };
}

/// VmwareVsphereTag describes a vSphere tag to be placed on VMs in the node
/// pool.
///
/// For more information, see
/// https://docs.vmware.com/en/VMware-vSphere/7.0/com.vmware.vsphere.vcenterhost.doc/GUID-E8E854DD-AA97-4E0C-8419-CE84F93C4058.html
class VmwareVsphereTag {
  /// The Vsphere tag category.
  core.String? category;

  /// The Vsphere tag name.
  core.String? tag;

  VmwareVsphereTag({
    this.category,
    this.tag,
  });

  VmwareVsphereTag.fromJson(core.Map json_)
      : this(
          category: json_.containsKey('category')
              ? json_['category'] as core.String
              : null,
          tag: json_.containsKey('tag') ? json_['tag'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (category != null) 'category': category!,
        if (tag != null) 'tag': tag!,
      };
}
