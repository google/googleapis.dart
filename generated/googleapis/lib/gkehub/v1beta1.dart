// This is a generated file (see the discoveryapis_generator project).

// ignore_for_file: camel_case_types
// ignore_for_file: comment_references
// ignore_for_file: deprecated_member_use_from_same_package
// ignore_for_file: doc_directive_unknown
// ignore_for_file: lines_longer_than_80_chars
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: prefer_interpolation_to_compose_strings
// ignore_for_file: unintended_html_in_doc_comment
// ignore_for_file: unnecessary_brace_in_string_interps
// ignore_for_file: unnecessary_lambdas
// ignore_for_file: unnecessary_string_interpolations

/// GKE Hub API - v1beta1
///
/// For more information, see
/// <https://cloud.google.com/anthos/multicluster-management/connect/registering-a-cluster>
///
/// Create an instance of [GKEHubApi] to access these resources:
///
/// - [ProjectsResource]
///   - [ProjectsLocationsResource]
///     - [ProjectsLocationsMembershipsResource]
///     - [ProjectsLocationsOperationsResource]
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

class GKEHubApi {
  /// See, edit, configure, and delete your Google Cloud data and see the email
  /// address for your Google Account.
  static const cloudPlatformScope =
      'https://www.googleapis.com/auth/cloud-platform';

  final commons.ApiRequester _requester;

  ProjectsResource get projects => ProjectsResource(_requester);

  GKEHubApi(
    http.Client client, {
    core.String rootUrl = 'https://gkehub.googleapis.com/',
    core.String servicePath = '',
  }) : _requester = commons.ApiRequester(
         client,
         rootUrl,
         servicePath,
         requestHeaders,
       );
}

class ProjectsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsResource get locations =>
      ProjectsLocationsResource(_requester);

  ProjectsResource(commons.ApiRequester client) : _requester = client;
}

class ProjectsLocationsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsMembershipsResource get memberships =>
      ProjectsLocationsMembershipsResource(_requester);
  ProjectsLocationsOperationsResource get operations =>
      ProjectsLocationsOperationsResource(_requester);

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
  async.Future<Location> get(core.String name, {core.String? $fields}) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1beta1/' + core.Uri.encodeFull('$name');

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
  /// [extraLocationTypes] - Optional. A list of extra location types that
  /// should be used as conditions for controlling the visibility of the
  /// locations.
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
    core.List<core.String>? extraLocationTypes,
    core.String? filter,
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (extraLocationTypes != null) 'extraLocationTypes': extraLocationTypes,
      if (filter != null) 'filter': [filter],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1beta1/' + core.Uri.encodeFull('$name') + '/locations';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListLocationsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class ProjectsLocationsMembershipsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsMembershipsResource(commons.ApiRequester client)
    : _requester = client;

  /// Creates a new Membership.
  ///
  /// **This is currently only supported for GKE clusters on Google Cloud**. To
  /// register other clusters, follow the instructions at
  /// https://cloud.google.com/anthos/multicluster-management/connect/registering-a-cluster.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent (project and location) where the
  /// Memberships will be created. Specified in the format `projects / *
  /// /locations / * `.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [membershipId] - Required. Client chosen ID for the membership.
  /// `membership_id` must be a valid RFC 1123 compliant DNS label: 1. At most
  /// 63 characters in length 2. It must consist of lower case alphanumeric
  /// characters or `-` 3. It must start and end with an alphanumeric character
  /// Which can be expressed as the regex: `[a-z0-9]([-a-z0-9]*[a-z0-9])?`, with
  /// a maximum length of 63 characters.
  ///
  /// [requestId] - Optional. A request ID to identify requests. Specify a
  /// unique request ID so that if you must retry your request, the server will
  /// know to ignore the request if it has already been completed. The server
  /// will guarantee that for at least 60 minutes after the first request. For
  /// example, consider a situation where you make an initial request and the
  /// request times out. If you make the request again with the same request ID,
  /// the server can check if original operation with the same request ID was
  /// received, and if so, will ignore the second request. This prevents clients
  /// from accidentally creating duplicate commitments. The request ID must be a
  /// valid UUID with the exception that zero UUID is not supported
  /// (00000000-0000-0000-0000-000000000000).
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
    Membership request,
    core.String parent, {
    core.String? membershipId,
    core.String? requestId,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (membershipId != null) 'membershipId': [membershipId],
      if (requestId != null) 'requestId': [requestId],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1beta1/' + core.Uri.encodeFull('$parent') + '/memberships';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Removes a Membership.
  ///
  /// **This is currently only supported for GKE clusters on Google Cloud**. To
  /// unregister other clusters, follow the instructions at
  /// https://cloud.google.com/anthos/multicluster-management/connect/unregistering-a-cluster.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The Membership resource name in the format `projects /
  /// * /locations / * /memberships / * `.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/memberships/\[^/\]+$`.
  ///
  /// [force] - Optional. If set to true, any subresource from this Membership
  /// will also be deleted. Otherwise, the request will only work if the
  /// Membership has no subresource.
  ///
  /// [requestId] - Optional. A request ID to identify requests. Specify a
  /// unique request ID so that if you must retry your request, the server will
  /// know to ignore the request if it has already been completed. The server
  /// will guarantee that for at least 60 minutes after the first request. For
  /// example, consider a situation where you make an initial request and the
  /// request times out. If you make the request again with the same request ID,
  /// the server can check if original operation with the same request ID was
  /// received, and if so, will ignore the second request. This prevents clients
  /// from accidentally creating duplicate commitments. The request ID must be a
  /// valid UUID with the exception that zero UUID is not supported
  /// (00000000-0000-0000-0000-000000000000).
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
    core.bool? force,
    core.String? requestId,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (force != null) 'force': ['${force}'],
      if (requestId != null) 'requestId': [requestId],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1beta1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Generates the manifest for deployment of the GKE connect agent.
  ///
  /// **This method is used internally by Google-provided libraries.** Most
  /// clients should not need to call this method directly.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The Membership resource name the Agent will associate
  /// with, in the format `projects / * /locations / * /memberships / * `.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/memberships/\[^/\]+$`.
  ///
  /// [connectAgent_name] - Do not set.
  ///
  /// [connectAgent_namespace] - Optional. Namespace for GKE Connect agent
  /// resources. Defaults to `gke-connect`. The Connect Agent is authorized
  /// automatically when run in the default namespace. Otherwise, explicit
  /// authorization must be granted with an additional IAM binding.
  ///
  /// [connectAgent_proxy] - Optional. URI of a proxy if connectivity from the
  /// agent to gkeconnect.googleapis.com requires the use of a proxy. Format
  /// must be in the form `http(s)://{proxy_address}`, depending on the
  /// HTTP/HTTPS protocol supported by the proxy. This will direct the connect
  /// agent's outbound traffic through a HTTP(S) proxy.
  ///
  /// [imagePullSecretContent] - Optional. The image pull secret content for the
  /// registry, if not public.
  ///
  /// [isUpgrade] - Optional. If true, generate the resources for upgrade only.
  /// Some resources generated only for installation (e.g. secrets) will be
  /// excluded.
  ///
  /// [registry] - Optional. The registry to fetch the connect agent image from.
  /// Defaults to gcr.io/gkeconnect.
  ///
  /// [version] - Optional. The Connect agent version to use. Defaults to the
  /// most current version.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GenerateConnectManifestResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GenerateConnectManifestResponse> generateConnectManifest(
    core.String name, {
    core.String? connectAgent_name,
    core.String? connectAgent_namespace,
    core.String? connectAgent_proxy,
    core.String? imagePullSecretContent,
    core.bool? isUpgrade,
    core.String? registry,
    core.String? version,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (connectAgent_name != null) 'connectAgent.name': [connectAgent_name],
      if (connectAgent_namespace != null)
        'connectAgent.namespace': [connectAgent_namespace],
      if (connectAgent_proxy != null)
        'connectAgent.proxy': [connectAgent_proxy],
      if (imagePullSecretContent != null)
        'imagePullSecretContent': [imagePullSecretContent],
      if (isUpgrade != null) 'isUpgrade': ['${isUpgrade}'],
      if (registry != null) 'registry': [registry],
      if (version != null) 'version': [version],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1beta1/' + core.Uri.encodeFull('$name') + ':generateConnectManifest';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GenerateConnectManifestResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// GenerateExclusivityManifest generates the manifests to update the
  /// exclusivity artifacts in the cluster if needed.
  ///
  /// Exclusivity artifacts include the Membership custom resource definition
  /// (CRD) and the singleton Membership custom resource (CR). Combined with
  /// ValidateExclusivity, exclusivity artifacts guarantee that a Kubernetes
  /// cluster is only registered to a single GKE Hub. The Membership CRD is
  /// versioned, and may require conversion when the GKE Hub API server begins
  /// serving a newer version of the CRD and corresponding CR. The response will
  /// be the converted CRD and CR if there are any differences between the
  /// versions.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The Membership resource name in the format `projects /
  /// * /locations / * /memberships / * `.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/memberships/\[^/\]+$`.
  ///
  /// [crManifest] - Optional. The YAML manifest of the membership CR retrieved
  /// by `kubectl get memberships membership`. Leave empty if the resource does
  /// not exist.
  ///
  /// [crdManifest] - Optional. The YAML manifest of the membership CRD
  /// retrieved by `kubectl get customresourcedefinitions membership`. Leave
  /// empty if the resource does not exist.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GenerateExclusivityManifestResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GenerateExclusivityManifestResponse> generateExclusivityManifest(
    core.String name, {
    core.String? crManifest,
    core.String? crdManifest,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (crManifest != null) 'crManifest': [crManifest],
      if (crdManifest != null) 'crdManifest': [crdManifest],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1beta1/' +
        core.Uri.encodeFull('$name') +
        ':generateExclusivityManifest';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GenerateExclusivityManifestResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Gets the details of a Membership.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The Membership resource name in the format `projects /
  /// * /locations / * /memberships / * `.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/memberships/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Membership].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Membership> get(core.String name, {core.String? $fields}) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1beta1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return Membership.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
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
  /// `^projects/\[^/\]+/locations/\[^/\]+/memberships/\[^/\]+$`.
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

    final url_ =
        'v1beta1/' + core.Uri.encodeFull('$resource') + ':getIamPolicy';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return Policy.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists Memberships in a given project and location.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent (project and location) where the
  /// Memberships will be listed. Specified in the format `projects / *
  /// /locations / * `. `projects / * /locations/-` list memberships in all the
  /// regions.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [filter] - Optional. Lists Memberships that match the filter expression,
  /// following the syntax outlined in https://google.aip.dev/160. Examples: -
  /// Name is `bar` in project `foo-proj` and location `global`: name =
  /// "projects/foo-proj/locations/global/membership/bar" - Memberships that
  /// have a label called `foo`: labels.foo:* - Memberships that have a label
  /// called `foo` whose value is `bar`: labels.foo = bar - Memberships in the
  /// CREATING state: state = CREATING
  ///
  /// [orderBy] - Optional. One or more fields to compare and use to sort the
  /// output. See https://google.aip.dev/132#ordering.
  ///
  /// [pageSize] - Optional. When requesting a 'page' of resources, `page_size`
  /// specifies number of resources to return. If unspecified or set to 0, all
  /// resources will be returned.
  ///
  /// [pageToken] - Optional. Token returned by previous call to
  /// `ListMemberships` which specifies the position in the list from where to
  /// continue listing the resources.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListMembershipsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListMembershipsResponse> list(
    core.String parent, {
    core.String? filter,
    core.String? orderBy,
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (filter != null) 'filter': [filter],
      if (orderBy != null) 'orderBy': [orderBy],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1beta1/' + core.Uri.encodeFull('$parent') + '/memberships';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListMembershipsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Updates an existing Membership.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The membership resource name in the format:
  /// `projects/[project_id]/locations/global/memberships/[membership_id]`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/memberships/\[^/\]+$`.
  ///
  /// [requestId] - Optional. A request ID to identify requests. Specify a
  /// unique request ID so that if you must retry your request, the server will
  /// know to ignore the request if it has already been completed. The server
  /// will guarantee that for at least 60 minutes after the first request. For
  /// example, consider a situation where you make an initial request and the
  /// request times out. If you make the request again with the same request ID,
  /// the server can check if original operation with the same request ID was
  /// received, and if so, will ignore the second request. This prevents clients
  /// from accidentally creating duplicate commitments. The request ID must be a
  /// valid UUID with the exception that zero UUID is not supported
  /// (00000000-0000-0000-0000-000000000000).
  ///
  /// [updateMask] - Required. Mask of fields to update. At least one field path
  /// must be specified in this mask.
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
    Membership request,
    core.String name, {
    core.String? requestId,
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (requestId != null) 'requestId': [requestId],
      if (updateMask != null) 'updateMask': [updateMask],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1beta1/' + core.Uri.encodeFull('$name');

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
  /// `^projects/\[^/\]+/locations/\[^/\]+/memberships/\[^/\]+$`.
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

    final url_ =
        'v1beta1/' + core.Uri.encodeFull('$resource') + ':setIamPolicy';

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
  /// `^projects/\[^/\]+/locations/\[^/\]+/memberships/\[^/\]+$`.
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
        'v1beta1/' + core.Uri.encodeFull('$resource') + ':testIamPermissions';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return TestIamPermissionsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// ValidateExclusivity validates the state of exclusivity in the cluster.
  ///
  /// The validation does not depend on an existing Hub membership resource.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent (project and location) where the
  /// Memberships will be created. Specified in the format `projects / *
  /// /locations / * `.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [crManifest] - Optional. The YAML of the membership CR in the cluster.
  /// Empty if the membership CR does not exist.
  ///
  /// [intendedMembership] - Required. The intended membership name under the
  /// `parent`. This method only does validation in anticipation of a
  /// CreateMembership call with the same name.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ValidateExclusivityResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ValidateExclusivityResponse> validateExclusivity(
    core.String parent, {
    core.String? crManifest,
    core.String? intendedMembership,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (crManifest != null) 'crManifest': [crManifest],
      if (intendedMembership != null)
        'intendedMembership': [intendedMembership],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1beta1/' +
        core.Uri.encodeFull('$parent') +
        '/memberships:validateExclusivity';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ValidateExclusivityResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
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
  /// Operation.error value with a google.rpc.Status.code of `1`, corresponding
  /// to `Code.CANCELLED`.
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

    final url_ = 'v1beta1/' + core.Uri.encodeFull('$name') + ':cancel';

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
  async.Future<Empty> delete(core.String name, {core.String? $fields}) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1beta1/' + core.Uri.encodeFull('$name');

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
  async.Future<Operation> get(core.String name, {core.String? $fields}) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1beta1/' + core.Uri.encodeFull('$name');

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

    final url_ = 'v1beta1/' + core.Uri.encodeFull('$name') + '/operations';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListOperationsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

/// ApplianceCluster contains information specific to GDC Edge Appliance
/// Clusters.
class ApplianceCluster {
  /// Self-link of the GCP resource for the Appliance Cluster.
  ///
  /// For example:
  /// //transferappliance.googleapis.com/projects/my-project/locations/us-west1-a/appliances/my-appliance
  ///
  /// Immutable.
  core.String? resourceLink;

  ApplianceCluster({this.resourceLink});

  ApplianceCluster.fromJson(core.Map json_)
    : this(resourceLink: json_['resourceLink'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() => {
    if (resourceLink != null) 'resourceLink': resourceLink!,
  };
}

/// Specifies the audit configuration for a service.
///
/// The configuration determines which permission types are logged, and what
/// identities, if any, are exempted from logging. An AuditConfig must have one
/// or more AuditLogConfigs. If there are AuditConfigs for both `allServices`
/// and a specific service, the union of the two AuditConfigs is used for that
/// service: the log_types specified in each AuditConfig are enabled, and the
/// exempted_members in each AuditLogConfig are exempted. Example Policy with
/// multiple AuditConfigs: { "audit_configs": \[ { "service": "allServices",
/// "audit_log_configs": \[ { "log_type": "DATA_READ", "exempted_members": \[
/// "user:jose@example.com" \] }, { "log_type": "DATA_WRITE" }, { "log_type":
/// "ADMIN_READ" } \] }, { "service": "sampleservice.googleapis.com",
/// "audit_log_configs": \[ { "log_type": "DATA_READ" }, { "log_type":
/// "DATA_WRITE", "exempted_members": \[ "user:aliya@example.com" \] } \] } \] }
/// For sampleservice, this policy enables DATA_READ, DATA_WRITE and ADMIN_READ
/// logging. It also exempts `jose@example.com` from DATA_READ logging, and
/// `aliya@example.com` from DATA_WRITE logging.
class AuditConfig {
  /// The configuration for logging of each type of permission.
  core.List<AuditLogConfig>? auditLogConfigs;

  /// Specifies a service that will be enabled for audit logging.
  ///
  /// For example, `storage.googleapis.com`, `cloudsql.googleapis.com`.
  /// `allServices` is a special value that covers all services.
  core.String? service;

  AuditConfig({this.auditLogConfigs, this.service});

  AuditConfig.fromJson(core.Map json_)
    : this(
        auditLogConfigs:
            (json_['auditLogConfigs'] as core.List?)
                ?.map(
                  (value) => AuditLogConfig.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        service: json_['service'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (auditLogConfigs != null) 'auditLogConfigs': auditLogConfigs!,
    if (service != null) 'service': service!,
  };
}

/// Provides the configuration for logging a type of permissions.
///
/// Example: { "audit_log_configs": \[ { "log_type": "DATA_READ",
/// "exempted_members": \[ "user:jose@example.com" \] }, { "log_type":
/// "DATA_WRITE" } \] } This enables 'DATA_READ' and 'DATA_WRITE' logging, while
/// exempting jose@example.com from DATA_READ logging.
typedef AuditLogConfig = $AuditLogConfig00;

/// Authority encodes how Google will recognize identities from this Membership.
///
/// See the workload identity documentation for more details:
/// https://cloud.google.com/kubernetes-engine/docs/how-to/workload-identity
class Authority {
  /// An identity provider that reflects the `issuer` in the workload identity
  /// pool.
  ///
  /// Output only.
  core.String? identityProvider;

  /// A JSON Web Token (JWT) issuer URI.
  ///
  /// `issuer` must start with `https://` and be a valid URL with length \<2000
  /// characters. If set, then Google will allow valid OIDC tokens from this
  /// issuer to authenticate within the workload_identity_pool. OIDC discovery
  /// will be performed on this URI to validate tokens from the issuer. Clearing
  /// `issuer` disables Workload Identity. `issuer` cannot be directly modified;
  /// it must be cleared (and Workload Identity disabled) before using a new
  /// issuer (and re-enabling Workload Identity).
  ///
  /// Optional.
  core.String? issuer;

  /// OIDC verification keys for this Membership in JWKS format (RFC 7517).
  ///
  /// When this field is set, OIDC discovery will NOT be performed on `issuer`,
  /// and instead OIDC tokens will be validated using this field.
  ///
  /// Optional.
  core.String? oidcJwks;
  core.List<core.int> get oidcJwksAsBytes => convert.base64.decode(oidcJwks!);

  set oidcJwksAsBytes(core.List<core.int> bytes_) {
    oidcJwks = convert.base64
        .encode(bytes_)
        .replaceAll('/', '_')
        .replaceAll('+', '-');
  }

  /// The identity provider for the scope-tenancy workload identity pool.
  ///
  /// Optional. Output only.
  core.String? scopeTenancyIdentityProvider;

  /// The name of the scope-tenancy workload identity pool.
  ///
  /// This pool is set in the fleet-level feature.
  ///
  /// Optional. Output only.
  core.String? scopeTenancyWorkloadIdentityPool;

  /// The name of the workload identity pool in which `issuer` will be
  /// recognized.
  ///
  /// There is a single Workload Identity Pool per Hub that is shared between
  /// all Memberships that belong to that Hub. For a Hub hosted in {PROJECT_ID},
  /// the workload pool format is `{PROJECT_ID}.hub.id.goog`, although this is
  /// subject to change in newer versions of this API.
  ///
  /// Output only.
  core.String? workloadIdentityPool;

  Authority({
    this.identityProvider,
    this.issuer,
    this.oidcJwks,
    this.scopeTenancyIdentityProvider,
    this.scopeTenancyWorkloadIdentityPool,
    this.workloadIdentityPool,
  });

  Authority.fromJson(core.Map json_)
    : this(
        identityProvider: json_['identityProvider'] as core.String?,
        issuer: json_['issuer'] as core.String?,
        oidcJwks: json_['oidcJwks'] as core.String?,
        scopeTenancyIdentityProvider:
            json_['scopeTenancyIdentityProvider'] as core.String?,
        scopeTenancyWorkloadIdentityPool:
            json_['scopeTenancyWorkloadIdentityPool'] as core.String?,
        workloadIdentityPool: json_['workloadIdentityPool'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (identityProvider != null) 'identityProvider': identityProvider!,
    if (issuer != null) 'issuer': issuer!,
    if (oidcJwks != null) 'oidcJwks': oidcJwks!,
    if (scopeTenancyIdentityProvider != null)
      'scopeTenancyIdentityProvider': scopeTenancyIdentityProvider!,
    if (scopeTenancyWorkloadIdentityPool != null)
      'scopeTenancyWorkloadIdentityPool': scopeTenancyWorkloadIdentityPool!,
    if (workloadIdentityPool != null)
      'workloadIdentityPool': workloadIdentityPool!,
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

  Binding({this.condition, this.members, this.role});

  Binding.fromJson(core.Map json_)
    : this(
        condition:
            json_.containsKey('condition')
                ? Expr.fromJson(
                  json_['condition'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        members:
            (json_['members'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        role: json_['role'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (condition != null) 'condition': condition!,
    if (members != null) 'members': members!,
    if (role != null) 'role': role!,
  };
}

/// The request message for Operations.CancelOperation.
typedef CancelOperationRequest = $Empty;

/// ConnectAgentResource represents a Kubernetes resource manifest for Connect
/// Agent deployment.
class ConnectAgentResource {
  /// YAML manifest of the resource.
  core.String? manifest;

  /// Kubernetes type of the resource.
  TypeMeta? type;

  ConnectAgentResource({this.manifest, this.type});

  ConnectAgentResource.fromJson(core.Map json_)
    : this(
        manifest: json_['manifest'] as core.String?,
        type:
            json_.containsKey('type')
                ? TypeMeta.fromJson(
                  json_['type'] as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (manifest != null) 'manifest': manifest!,
    if (type != null) 'type': type!,
  };
}

/// EdgeCluster contains information specific to Google Edge Clusters.
class EdgeCluster {
  /// Self-link of the GCP resource for the Edge Cluster.
  ///
  /// For example:
  /// //edgecontainer.googleapis.com/projects/my-project/locations/us-west1-a/clusters/my-cluster
  ///
  /// Immutable.
  core.String? resourceLink;

  EdgeCluster({this.resourceLink});

  EdgeCluster.fromJson(core.Map json_)
    : this(resourceLink: json_['resourceLink'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() => {
    if (resourceLink != null) 'resourceLink': resourceLink!,
  };
}

/// A generic empty message that you can re-use to avoid defining duplicated
/// empty messages in your APIs.
///
/// A typical example is to use it as the request or the response type of an API
/// method. For instance: service Foo { rpc Bar(google.protobuf.Empty) returns
/// (google.protobuf.Empty); }
typedef Empty = $Empty;

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

/// GenerateConnectManifestResponse contains manifest information for
/// installing/upgrading a Connect agent.
class GenerateConnectManifestResponse {
  /// The ordered list of Kubernetes resources that need to be applied to the
  /// cluster for GKE Connect agent installation/upgrade.
  core.List<ConnectAgentResource>? manifest;

  GenerateConnectManifestResponse({this.manifest});

  GenerateConnectManifestResponse.fromJson(core.Map json_)
    : this(
        manifest:
            (json_['manifest'] as core.List?)
                ?.map(
                  (value) => ConnectAgentResource.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (manifest != null) 'manifest': manifest!,
  };
}

/// The response of the exclusivity artifacts manifests for the client to apply.
typedef GenerateExclusivityManifestResponse =
    $GenerateExclusivityManifestResponse;

/// GkeCluster contains information specific to GKE clusters.
class GkeCluster {
  /// If cluster_missing is set then it denotes that the GKE cluster no longer
  /// exists in the GKE Control Plane.
  ///
  /// Output only.
  core.bool? clusterMissing;

  /// Self-link of the GCP resource for the GKE cluster.
  ///
  /// For example:
  /// //container.googleapis.com/projects/my-project/locations/us-west1-a/clusters/my-cluster
  /// Zonal clusters are also supported.
  ///
  /// Immutable.
  core.String? resourceLink;

  GkeCluster({this.clusterMissing, this.resourceLink});

  GkeCluster.fromJson(core.Map json_)
    : this(
        clusterMissing: json_['clusterMissing'] as core.bool?,
        resourceLink: json_['resourceLink'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (clusterMissing != null) 'clusterMissing': clusterMissing!,
    if (resourceLink != null) 'resourceLink': resourceLink!,
  };
}

/// The `Status` type defines a logical error model that is suitable for
/// different programming environments, including REST APIs and RPC APIs.
///
/// It is used by [gRPC](https://github.com/grpc). Each `Status` message
/// contains three pieces of data: error code, error message, and error details.
/// You can find out more about this error model and how to work with it in the
/// [API Design Guide](https://cloud.google.com/apis/design/errors).
typedef GoogleRpcStatus = $Status00;

/// KubernetesMetadata provides informational metadata for Memberships
/// representing Kubernetes clusters.
class KubernetesMetadata {
  /// Kubernetes API server version string as reported by '/version'.
  ///
  /// Output only.
  core.String? kubernetesApiServerVersion;

  /// The total memory capacity as reported by the sum of all Kubernetes nodes
  /// resources, defined in MB.
  ///
  /// Output only.
  core.int? memoryMb;

  /// Node count as reported by Kubernetes nodes resources.
  ///
  /// Output only.
  core.int? nodeCount;

  /// Node providerID as reported by the first node in the list of nodes on the
  /// Kubernetes endpoint.
  ///
  /// On Kubernetes platforms that support zero-node clusters (like GKE-on-GCP),
  /// the node_count will be zero and the node_provider_id will be empty.
  ///
  /// Output only.
  core.String? nodeProviderId;

  /// The time at which these details were last updated.
  ///
  /// This update_time is different from the Membership-level update_time since
  /// EndpointDetails are updated internally for API consumers.
  ///
  /// Output only.
  core.String? updateTime;

  /// vCPU count as reported by Kubernetes nodes resources.
  ///
  /// Output only.
  core.int? vcpuCount;

  KubernetesMetadata({
    this.kubernetesApiServerVersion,
    this.memoryMb,
    this.nodeCount,
    this.nodeProviderId,
    this.updateTime,
    this.vcpuCount,
  });

  KubernetesMetadata.fromJson(core.Map json_)
    : this(
        kubernetesApiServerVersion:
            json_['kubernetesApiServerVersion'] as core.String?,
        memoryMb: json_['memoryMb'] as core.int?,
        nodeCount: json_['nodeCount'] as core.int?,
        nodeProviderId: json_['nodeProviderId'] as core.String?,
        updateTime: json_['updateTime'] as core.String?,
        vcpuCount: json_['vcpuCount'] as core.int?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (kubernetesApiServerVersion != null)
      'kubernetesApiServerVersion': kubernetesApiServerVersion!,
    if (memoryMb != null) 'memoryMb': memoryMb!,
    if (nodeCount != null) 'nodeCount': nodeCount!,
    if (nodeProviderId != null) 'nodeProviderId': nodeProviderId!,
    if (updateTime != null) 'updateTime': updateTime!,
    if (vcpuCount != null) 'vcpuCount': vcpuCount!,
  };
}

/// KubernetesResource contains the YAML manifests and configuration for
/// Membership Kubernetes resources in the cluster.
///
/// After CreateMembership or UpdateMembership, these resources should be
/// re-applied in the cluster.
class KubernetesResource {
  /// The Kubernetes resources for installing the GKE Connect agent This field
  /// is only populated in the Membership returned from a successful
  /// long-running operation from CreateMembership or UpdateMembership.
  ///
  /// It is not populated during normal GetMembership or ListMemberships
  /// requests. To get the resource manifest after the initial registration, the
  /// caller should make a UpdateMembership call with an empty field mask.
  ///
  /// Output only.
  core.List<ResourceManifest>? connectResources;

  /// Input only.
  ///
  /// The YAML representation of the Membership CR. This field is ignored for
  /// GKE clusters where Hub can read the CR directly. Callers should provide
  /// the CR that is currently present in the cluster during CreateMembership or
  /// UpdateMembership, or leave this field empty if none exists. The CR
  /// manifest is used to validate the cluster has not been registered with
  /// another Membership.
  core.String? membershipCrManifest;

  /// Additional Kubernetes resources that need to be applied to the cluster
  /// after Membership creation, and after every update.
  ///
  /// This field is only populated in the Membership returned from a successful
  /// long-running operation from CreateMembership or UpdateMembership. It is
  /// not populated during normal GetMembership or ListMemberships requests. To
  /// get the resource manifest after the initial registration, the caller
  /// should make a UpdateMembership call with an empty field mask.
  ///
  /// Output only.
  core.List<ResourceManifest>? membershipResources;

  /// Options for Kubernetes resource generation.
  ///
  /// Optional.
  ResourceOptions? resourceOptions;

  KubernetesResource({
    this.connectResources,
    this.membershipCrManifest,
    this.membershipResources,
    this.resourceOptions,
  });

  KubernetesResource.fromJson(core.Map json_)
    : this(
        connectResources:
            (json_['connectResources'] as core.List?)
                ?.map(
                  (value) => ResourceManifest.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        membershipCrManifest: json_['membershipCrManifest'] as core.String?,
        membershipResources:
            (json_['membershipResources'] as core.List?)
                ?.map(
                  (value) => ResourceManifest.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        resourceOptions:
            json_.containsKey('resourceOptions')
                ? ResourceOptions.fromJson(
                  json_['resourceOptions']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (connectResources != null) 'connectResources': connectResources!,
    if (membershipCrManifest != null)
      'membershipCrManifest': membershipCrManifest!,
    if (membershipResources != null)
      'membershipResources': membershipResources!,
    if (resourceOptions != null) 'resourceOptions': resourceOptions!,
  };
}

/// The response message for Locations.ListLocations.
class ListLocationsResponse {
  /// A list of locations that matches the specified filter in the request.
  core.List<Location>? locations;

  /// The standard List next-page token.
  core.String? nextPageToken;

  ListLocationsResponse({this.locations, this.nextPageToken});

  ListLocationsResponse.fromJson(core.Map json_)
    : this(
        locations:
            (json_['locations'] as core.List?)
                ?.map(
                  (value) => Location.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        nextPageToken: json_['nextPageToken'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (locations != null) 'locations': locations!,
    if (nextPageToken != null) 'nextPageToken': nextPageToken!,
  };
}

/// Response message for the `GkeHubMembershipService.ListMemberships` method.
class ListMembershipsResponse {
  /// A token to request the next page of resources from the `ListMemberships`
  /// method.
  ///
  /// The value of an empty string means that there are no more resources to
  /// return.
  core.String? nextPageToken;

  /// The list of matching Memberships.
  core.List<Membership>? resources;

  /// List of locations that could not be reached while fetching this list.
  core.List<core.String>? unreachable;

  ListMembershipsResponse({
    this.nextPageToken,
    this.resources,
    this.unreachable,
  });

  ListMembershipsResponse.fromJson(core.Map json_)
    : this(
        nextPageToken: json_['nextPageToken'] as core.String?,
        resources:
            (json_['resources'] as core.List?)
                ?.map(
                  (value) => Membership.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        unreachable:
            (json_['unreachable'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (nextPageToken != null) 'nextPageToken': nextPageToken!,
    if (resources != null) 'resources': resources!,
    if (unreachable != null) 'unreachable': unreachable!,
  };
}

/// The response message for Operations.ListOperations.
class ListOperationsResponse {
  /// The standard List next-page token.
  core.String? nextPageToken;

  /// A list of operations that matches the specified filter in the request.
  core.List<Operation>? operations;

  ListOperationsResponse({this.nextPageToken, this.operations});

  ListOperationsResponse.fromJson(core.Map json_)
    : this(
        nextPageToken: json_['nextPageToken'] as core.String?,
        operations:
            (json_['operations'] as core.List?)
                ?.map(
                  (value) => Operation.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (nextPageToken != null) 'nextPageToken': nextPageToken!,
    if (operations != null) 'operations': operations!,
  };
}

/// A resource that represents a Google Cloud location.
typedef Location = $Location00;

/// Membership contains information about a member cluster.
class Membership {
  /// How to identify workloads from this Membership.
  ///
  /// See the documentation on Workload Identity for more details:
  /// https://cloud.google.com/kubernetes-engine/docs/how-to/workload-identity
  ///
  /// Optional.
  Authority? authority;

  /// When the Membership was created.
  ///
  /// Output only.
  core.String? createTime;

  /// When the Membership was deleted.
  ///
  /// Output only.
  core.String? deleteTime;

  /// Description of this membership, limited to 63 characters.
  ///
  /// Must match the regex: `a-zA-Z0-9*`
  ///
  /// Optional.
  core.String? description;

  /// Endpoint information to reach this member.
  ///
  /// Optional.
  MembershipEndpoint? endpoint;

  /// An externally-generated and managed ID for this Membership.
  ///
  /// This ID may be modified after creation, but this is not recommended. For
  /// GKE clusters, external_id is managed by the Hub API and updates will be
  /// ignored. The ID must match the regex: `a-zA-Z0-9*` If this Membership
  /// represents a Kubernetes cluster, this value should be set to the UID of
  /// the `kube-system` namespace object.
  ///
  /// Optional.
  core.String? externalId;

  /// The infrastructure type this Membership is running on.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "INFRASTRUCTURE_TYPE_UNSPECIFIED" : No type was specified. Some Hub
  /// functionality may require a type be specified, and will not support
  /// Memberships with this value.
  /// - "ON_PREM" : Private infrastructure that is owned or operated by
  /// customer. This includes GKE distributions such as GKE-OnPrem and
  /// GKE-OnBareMetal.
  /// - "MULTI_CLOUD" : Public cloud infrastructure.
  core.String? infrastructureType;

  /// GCP labels for this membership.
  ///
  /// These labels are not leveraged by multi-cluster features, instead, we
  /// prefer cluster labels, which can be set on GKE cluster or other cluster
  /// types.
  ///
  /// Optional.
  core.Map<core.String, core.String>? labels;

  /// For clusters using Connect, the timestamp of the most recent connection
  /// established with Google Cloud.
  ///
  /// This time is updated every several minutes, not continuously. For clusters
  /// that do not use GKE Connect, or that have never connected successfully,
  /// this field will be unset.
  ///
  /// Output only.
  core.String? lastConnectionTime;

  /// The type of the membership.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "MEMBERSHIP_TYPE_UNSPECIFIED" : The MembershipType is not set.
  /// - "LIGHTWEIGHT" : The membership supports only lightweight compatible
  /// features.
  core.String? membershipType;

  /// The monitoring config information for this membership.
  ///
  /// Optional.
  MonitoringConfig? monitoringConfig;

  /// The full, unique name of this Membership resource in the format `projects
  /// / * /locations / * /memberships/{membership_id}`, set during creation.
  ///
  /// `membership_id` must be a valid RFC 1123 compliant DNS label: 1. At most
  /// 63 characters in length 2. It must consist of lower case alphanumeric
  /// characters or `-` 3. It must start and end with an alphanumeric character
  /// Which can be expressed as the regex: `[a-z0-9]([-a-z0-9]*[a-z0-9])?`, with
  /// a maximum length of 63 characters.
  ///
  /// Output only.
  core.String? name;

  /// State of the Membership resource.
  ///
  /// Output only.
  MembershipState? state;

  /// Google-generated UUID for this resource.
  ///
  /// This is unique across all Membership resources. If a Membership resource
  /// is deleted and another resource with the same name is created, it gets a
  /// different unique_id.
  ///
  /// Output only.
  core.String? uniqueId;

  /// When the Membership was last updated.
  ///
  /// Output only.
  core.String? updateTime;

  Membership({
    this.authority,
    this.createTime,
    this.deleteTime,
    this.description,
    this.endpoint,
    this.externalId,
    this.infrastructureType,
    this.labels,
    this.lastConnectionTime,
    this.membershipType,
    this.monitoringConfig,
    this.name,
    this.state,
    this.uniqueId,
    this.updateTime,
  });

  Membership.fromJson(core.Map json_)
    : this(
        authority:
            json_.containsKey('authority')
                ? Authority.fromJson(
                  json_['authority'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        createTime: json_['createTime'] as core.String?,
        deleteTime: json_['deleteTime'] as core.String?,
        description: json_['description'] as core.String?,
        endpoint:
            json_.containsKey('endpoint')
                ? MembershipEndpoint.fromJson(
                  json_['endpoint'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        externalId: json_['externalId'] as core.String?,
        infrastructureType: json_['infrastructureType'] as core.String?,
        labels: (json_['labels'] as core.Map<core.String, core.dynamic>?)?.map(
          (key, value) => core.MapEntry(key, value as core.String),
        ),
        lastConnectionTime: json_['lastConnectionTime'] as core.String?,
        membershipType: json_['membershipType'] as core.String?,
        monitoringConfig:
            json_.containsKey('monitoringConfig')
                ? MonitoringConfig.fromJson(
                  json_['monitoringConfig']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        name: json_['name'] as core.String?,
        state:
            json_.containsKey('state')
                ? MembershipState.fromJson(
                  json_['state'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        uniqueId: json_['uniqueId'] as core.String?,
        updateTime: json_['updateTime'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (authority != null) 'authority': authority!,
    if (createTime != null) 'createTime': createTime!,
    if (deleteTime != null) 'deleteTime': deleteTime!,
    if (description != null) 'description': description!,
    if (endpoint != null) 'endpoint': endpoint!,
    if (externalId != null) 'externalId': externalId!,
    if (infrastructureType != null) 'infrastructureType': infrastructureType!,
    if (labels != null) 'labels': labels!,
    if (lastConnectionTime != null) 'lastConnectionTime': lastConnectionTime!,
    if (membershipType != null) 'membershipType': membershipType!,
    if (monitoringConfig != null) 'monitoringConfig': monitoringConfig!,
    if (name != null) 'name': name!,
    if (state != null) 'state': state!,
    if (uniqueId != null) 'uniqueId': uniqueId!,
    if (updateTime != null) 'updateTime': updateTime!,
  };
}

/// MembershipEndpoint contains information needed to contact a Kubernetes API,
/// endpoint and any additional Kubernetes metadata.
class MembershipEndpoint {
  /// Specific information for a GDC Edge Appliance cluster.
  ///
  /// Optional.
  ApplianceCluster? applianceCluster;

  /// Specific information for a Google Edge cluster.
  ///
  /// Optional.
  EdgeCluster? edgeCluster;

  /// Specific information for a GKE-on-GCP cluster.
  ///
  /// Optional.
  GkeCluster? gkeCluster;

  /// Useful Kubernetes-specific metadata.
  ///
  /// Output only.
  KubernetesMetadata? kubernetesMetadata;

  /// The in-cluster Kubernetes Resources that should be applied for a correctly
  /// registered cluster, in the steady state.
  ///
  /// These resources: * Ensure that the cluster is exclusively registered to
  /// one and only one Hub Membership. * Propagate Workload Pool Information
  /// available in the Membership Authority field. * Ensure proper initial
  /// configuration of default Hub Features.
  ///
  /// Optional.
  KubernetesResource? kubernetesResource;

  /// Specific information for a GKE Multi-Cloud cluster.
  ///
  /// Optional.
  MultiCloudCluster? multiCloudCluster;

  /// Specific information for a GKE On-Prem cluster.
  ///
  /// An onprem user-cluster who has no resourceLink is not allowed to use this
  /// field, it should have a nil "type" instead.
  ///
  /// Optional.
  OnPremCluster? onPremCluster;

  MembershipEndpoint({
    this.applianceCluster,
    this.edgeCluster,
    this.gkeCluster,
    this.kubernetesMetadata,
    this.kubernetesResource,
    this.multiCloudCluster,
    this.onPremCluster,
  });

  MembershipEndpoint.fromJson(core.Map json_)
    : this(
        applianceCluster:
            json_.containsKey('applianceCluster')
                ? ApplianceCluster.fromJson(
                  json_['applianceCluster']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        edgeCluster:
            json_.containsKey('edgeCluster')
                ? EdgeCluster.fromJson(
                  json_['edgeCluster'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        gkeCluster:
            json_.containsKey('gkeCluster')
                ? GkeCluster.fromJson(
                  json_['gkeCluster'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        kubernetesMetadata:
            json_.containsKey('kubernetesMetadata')
                ? KubernetesMetadata.fromJson(
                  json_['kubernetesMetadata']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        kubernetesResource:
            json_.containsKey('kubernetesResource')
                ? KubernetesResource.fromJson(
                  json_['kubernetesResource']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        multiCloudCluster:
            json_.containsKey('multiCloudCluster')
                ? MultiCloudCluster.fromJson(
                  json_['multiCloudCluster']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        onPremCluster:
            json_.containsKey('onPremCluster')
                ? OnPremCluster.fromJson(
                  json_['onPremCluster'] as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (applianceCluster != null) 'applianceCluster': applianceCluster!,
    if (edgeCluster != null) 'edgeCluster': edgeCluster!,
    if (gkeCluster != null) 'gkeCluster': gkeCluster!,
    if (kubernetesMetadata != null) 'kubernetesMetadata': kubernetesMetadata!,
    if (kubernetesResource != null) 'kubernetesResource': kubernetesResource!,
    if (multiCloudCluster != null) 'multiCloudCluster': multiCloudCluster!,
    if (onPremCluster != null) 'onPremCluster': onPremCluster!,
  };
}

/// State of the Membership resource.
class MembershipState {
  /// The current state of the Membership resource.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "CODE_UNSPECIFIED" : The code is not set.
  /// - "CREATING" : The cluster is being registered.
  /// - "READY" : The cluster is registered.
  /// - "DELETING" : The cluster is being unregistered.
  /// - "UPDATING" : The Membership is being updated.
  /// - "SERVICE_UPDATING" : The Membership is being updated by the Hub Service.
  core.String? code;

  /// This field is never set by the Hub Service.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  core.String? description;

  /// This field is never set by the Hub Service.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  core.String? updateTime;

  MembershipState({this.code, this.description, this.updateTime});

  MembershipState.fromJson(core.Map json_)
    : this(
        code: json_['code'] as core.String?,
        description: json_['description'] as core.String?,
        updateTime: json_['updateTime'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (code != null) 'code': code!,
    if (description != null) 'description': description!,
    if (updateTime != null) 'updateTime': updateTime!,
  };
}

/// MonitoringConfig informs Fleet-based applications/services/UIs how the
/// metrics for the underlying cluster is reported to cloud monitoring services.
///
/// It can be set from empty to non-empty, but can't be mutated directly to
/// prevent accidentally breaking the constinousty of metrics.
typedef MonitoringConfig = $MonitoringConfig;

/// MultiCloudCluster contains information specific to GKE Multi-Cloud clusters.
class MultiCloudCluster {
  /// If cluster_missing is set then it denotes that
  /// API(gkemulticloud.googleapis.com) resource for this GKE Multi-Cloud
  /// cluster no longer exists.
  ///
  /// Output only.
  core.bool? clusterMissing;

  /// Self-link of the GCP resource for the GKE Multi-Cloud cluster.
  ///
  /// For example:
  /// //gkemulticloud.googleapis.com/projects/my-project/locations/us-west1-a/awsClusters/my-cluster
  /// //gkemulticloud.googleapis.com/projects/my-project/locations/us-west1-a/azureClusters/my-cluster
  /// //gkemulticloud.googleapis.com/projects/my-project/locations/us-west1-a/attachedClusters/my-cluster
  ///
  /// Immutable.
  core.String? resourceLink;

  MultiCloudCluster({this.clusterMissing, this.resourceLink});

  MultiCloudCluster.fromJson(core.Map json_)
    : this(
        clusterMissing: json_['clusterMissing'] as core.bool?,
        resourceLink: json_['resourceLink'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (clusterMissing != null) 'clusterMissing': clusterMissing!,
    if (resourceLink != null) 'resourceLink': resourceLink!,
  };
}

/// OnPremCluster contains information specific to GKE On-Prem clusters.
class OnPremCluster {
  /// Whether the cluster is an admin cluster.
  ///
  /// Immutable.
  core.bool? adminCluster;

  /// If cluster_missing is set then it denotes that
  /// API(gkeonprem.googleapis.com) resource for this GKE On-Prem cluster no
  /// longer exists.
  ///
  /// Output only.
  core.bool? clusterMissing;

  /// The on prem cluster's type.
  ///
  /// Immutable.
  /// Possible string values are:
  /// - "CLUSTERTYPE_UNSPECIFIED" : The ClusterType is not set.
  /// - "BOOTSTRAP" : The ClusterType is bootstrap cluster.
  /// - "HYBRID" : The ClusterType is baremetal hybrid cluster.
  /// - "STANDALONE" : The ClusterType is baremetal standalone cluster.
  /// - "USER" : The ClusterType is user cluster.
  core.String? clusterType;

  /// Self-link of the GCP resource for the GKE On-Prem cluster.
  ///
  /// For example:
  /// //gkeonprem.googleapis.com/projects/my-project/locations/us-west1-a/vmwareClusters/my-cluster
  /// //gkeonprem.googleapis.com/projects/my-project/locations/us-west1-a/bareMetalClusters/my-cluster
  ///
  /// Immutable.
  core.String? resourceLink;

  OnPremCluster({
    this.adminCluster,
    this.clusterMissing,
    this.clusterType,
    this.resourceLink,
  });

  OnPremCluster.fromJson(core.Map json_)
    : this(
        adminCluster: json_['adminCluster'] as core.bool?,
        clusterMissing: json_['clusterMissing'] as core.bool?,
        clusterType: json_['clusterType'] as core.String?,
        resourceLink: json_['resourceLink'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (adminCluster != null) 'adminCluster': adminCluster!,
    if (clusterMissing != null) 'clusterMissing': clusterMissing!,
    if (clusterType != null) 'clusterType': clusterType!,
    if (resourceLink != null) 'resourceLink': resourceLink!,
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
  GoogleRpcStatus? error;

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

  Operation({this.done, this.error, this.metadata, this.name, this.response});

  Operation.fromJson(core.Map json_)
    : this(
        done: json_['done'] as core.bool?,
        error:
            json_.containsKey('error')
                ? GoogleRpcStatus.fromJson(
                  json_['error'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        metadata:
            json_.containsKey('metadata')
                ? json_['metadata'] as core.Map<core.String, core.dynamic>
                : null,
        name: json_['name'] as core.String?,
        response:
            json_.containsKey('response')
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
  /// Specifies cloud audit logging configuration for this policy.
  core.List<AuditConfig>? auditConfigs;

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
    etag = convert.base64
        .encode(bytes_)
        .replaceAll('/', '_')
        .replaceAll('+', '-');
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

  Policy({this.auditConfigs, this.bindings, this.etag, this.version});

  Policy.fromJson(core.Map json_)
    : this(
        auditConfigs:
            (json_['auditConfigs'] as core.List?)
                ?.map(
                  (value) => AuditConfig.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        bindings:
            (json_['bindings'] as core.List?)
                ?.map(
                  (value) => Binding.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        etag: json_['etag'] as core.String?,
        version: json_['version'] as core.int?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (auditConfigs != null) 'auditConfigs': auditConfigs!,
    if (bindings != null) 'bindings': bindings!,
    if (etag != null) 'etag': etag!,
    if (version != null) 'version': version!,
  };
}

/// ResourceManifest represents a single Kubernetes resource to be applied to
/// the cluster.
class ResourceManifest {
  /// Whether the resource provided in the manifest is `cluster_scoped`.
  ///
  /// If unset, the manifest is assumed to be namespace scoped. This field is
  /// used for REST mapping when applying the resource in a cluster.
  core.bool? clusterScoped;

  /// YAML manifest of the resource.
  core.String? manifest;

  ResourceManifest({this.clusterScoped, this.manifest});

  ResourceManifest.fromJson(core.Map json_)
    : this(
        clusterScoped: json_['clusterScoped'] as core.bool?,
        manifest: json_['manifest'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (clusterScoped != null) 'clusterScoped': clusterScoped!,
    if (manifest != null) 'manifest': manifest!,
  };
}

/// ResourceOptions represent options for Kubernetes resource generation.
typedef ResourceOptions = $ResourceOptions;

/// Request message for `SetIamPolicy` method.
class SetIamPolicyRequest {
  /// REQUIRED: The complete policy to be applied to the `resource`.
  ///
  /// The size of the policy is limited to a few 10s of KB. An empty policy is a
  /// valid policy but certain Google Cloud services (such as Projects) might
  /// reject them.
  Policy? policy;

  /// OPTIONAL: A FieldMask specifying which fields of the policy to modify.
  ///
  /// Only the fields in the mask will be modified. If no mask is provided, the
  /// following default mask is used: `paths: "bindings, etag"`
  core.String? updateMask;

  SetIamPolicyRequest({this.policy, this.updateMask});

  SetIamPolicyRequest.fromJson(core.Map json_)
    : this(
        policy:
            json_.containsKey('policy')
                ? Policy.fromJson(
                  json_['policy'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        updateMask: json_['updateMask'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (policy != null) 'policy': policy!,
    if (updateMask != null) 'updateMask': updateMask!,
  };
}

/// Request message for `TestIamPermissions` method.
typedef TestIamPermissionsRequest = $TestIamPermissionsRequest00;

/// Response message for `TestIamPermissions` method.
typedef TestIamPermissionsResponse = $PermissionsResponse;

/// TypeMeta is the type information needed for content unmarshalling of
/// Kubernetes resources in the manifest.
typedef TypeMeta = $TypeMeta;

/// The response of exclusivity artifacts validation result status.
class ValidateExclusivityResponse {
  /// The validation result.
  ///
  /// * `OK` means that exclusivity is validated, assuming the manifest produced
  /// by GenerateExclusivityManifest is successfully applied. * `ALREADY_EXISTS`
  /// means that the Membership CRD is already owned by another Hub. See
  /// `status.message` for more information.
  GoogleRpcStatus? status;

  ValidateExclusivityResponse({this.status});

  ValidateExclusivityResponse.fromJson(core.Map json_)
    : this(
        status:
            json_.containsKey('status')
                ? GoogleRpcStatus.fromJson(
                  json_['status'] as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (status != null) 'status': status!,
  };
}
