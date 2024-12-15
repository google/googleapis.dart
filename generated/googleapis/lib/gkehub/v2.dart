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

/// GKE Hub API - v2
///
/// For more information, see
/// <https://cloud.google.com/anthos/multicluster-management/connect/registering-a-cluster>
///
/// Create an instance of [GKEHubApi] to access these resources:
///
/// - [ProjectsResource]
///   - [ProjectsLocationsResource]
///     - [ProjectsLocationsMembershipsResource]
///       - [ProjectsLocationsMembershipsFeaturesResource]
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

  GKEHubApi(http.Client client,
      {core.String rootUrl = 'https://gkehub.googleapis.com/',
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
  async.Future<Location> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$name');

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

    final url_ = 'v2/' + core.Uri.encodeFull('$name') + '/locations';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListLocationsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsMembershipsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsMembershipsFeaturesResource get features =>
      ProjectsLocationsMembershipsFeaturesResource(_requester);

  ProjectsLocationsMembershipsResource(commons.ApiRequester client)
      : _requester = client;
}

class ProjectsLocationsMembershipsFeaturesResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsMembershipsFeaturesResource(commons.ApiRequester client)
      : _requester = client;

  /// Creates membershipFeature under a given parent.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The name of parent where the MembershipFeature will
  /// be created. Specified in the format `projects / * /locations / *
  /// /memberships / * `.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/memberships/\[^/\]+$`.
  ///
  /// [featureId] - Required. The ID of the membership_feature to create.
  ///
  /// [requestId] - Idempotent request UUID.
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
    MembershipFeature request,
    core.String parent, {
    core.String? featureId,
    core.String? requestId,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (featureId != null) 'featureId': [featureId],
      if (requestId != null) 'requestId': [requestId],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$parent') + '/features';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Removes a membershipFeature.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the membershipFeature to be deleted.
  /// Specified in the format `projects / * /locations / * /memberships / *
  /// /features / * `.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/memberships/\[^/\]+/features/\[^/\]+$`.
  ///
  /// [requestId] - Idempotent request UUID.
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
    core.String? requestId,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (requestId != null) 'requestId': [requestId],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// ========= MembershipFeature Services ========= Gets details of a
  /// membershipFeature.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The MembershipFeature resource name in the format
  /// `projects / * /locations / * /memberships / * /features / * `.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/memberships/\[^/\]+/features/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [MembershipFeature].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<MembershipFeature> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return MembershipFeature.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists MembershipFeatures in a given project and location.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent where the MembershipFeature will be
  /// listed. In the format: `projects / * /locations / * /memberships / * `.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/memberships/\[^/\]+$`.
  ///
  /// [filter] - Lists MembershipFeatures that match the filter expression,
  /// following the syntax outlined in https://google.aip.dev/160. Examples: -
  /// Feature with the name "helloworld" in project "foo-proj" and membership
  /// "member-bar": name =
  /// "projects/foo-proj/locations/global/memberships/member-bar/features/helloworld"
  /// - Features that have a label called `foo`: labels.foo:* - Features that
  /// have a label called `foo` whose value is `bar`: labels.foo = bar
  ///
  /// [orderBy] - One or more fields to compare and use to sort the output. See
  /// https://google.aip.dev/132#ordering.
  ///
  /// [pageSize] - When requesting a 'page' of resources, `page_size` specifies
  /// number of resources to return. If unspecified or set to 0, all resources
  /// will be returned.
  ///
  /// [pageToken] - Token returned by previous call to `ListFeatures` which
  /// specifies the position in the list from where to continue listing the
  /// resources.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListMembershipFeaturesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListMembershipFeaturesResponse> list(
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

    final url_ = 'v2/' + core.Uri.encodeFull('$parent') + '/features';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListMembershipFeaturesResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Updates an existing MembershipFeature.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Output only. The resource name of the membershipFeature, in the
  /// format:
  /// `projects/{project}/locations/{location}/memberships/{membership}/features/{feature}`.
  /// Note that `membershipFeatures` is shortened to `features` in the resource
  /// name. (see http://go/aip/122#collection-identifiers)
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/memberships/\[^/\]+/features/\[^/\]+$`.
  ///
  /// [allowMissing] - Optional. If set to true, and the MembershipFeature is
  /// not found, a new MembershipFeature will be created. In this situation,
  /// `update_mask` is ignored.
  ///
  /// [requestId] - Idempotent request UUID.
  ///
  /// [updateMask] - Required. Mask of fields to update.
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
    MembershipFeature request,
    core.String name, {
    core.bool? allowMissing,
    core.String? requestId,
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (allowMissing != null) 'allowMissing': ['${allowMissing}'],
      if (requestId != null) 'requestId': [requestId],
      if (updateMask != null) 'updateMask': [updateMask],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
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

    final url_ = 'v2/' + core.Uri.encodeFull('$name') + ':cancel';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
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

    final url_ = 'v2/' + core.Uri.encodeFull('$name');

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

    final url_ = 'v2/' + core.Uri.encodeFull('$name') + '/operations';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListOperationsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

/// State for App Dev Exp Feature.
class AppDevExperienceState {
  /// Status of subcomponent that detects configured Service Mesh resources.
  AppDevExperienceStatus? networkingInstallSucceeded;

  AppDevExperienceState({
    this.networkingInstallSucceeded,
  });

  AppDevExperienceState.fromJson(core.Map json_)
      : this(
          networkingInstallSucceeded:
              json_.containsKey('networkingInstallSucceeded')
                  ? AppDevExperienceStatus.fromJson(
                      json_['networkingInstallSucceeded']
                          as core.Map<core.String, core.dynamic>)
                  : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (networkingInstallSucceeded != null)
          'networkingInstallSucceeded': networkingInstallSucceeded!,
      };
}

/// Status specifies state for the subcomponent.
typedef AppDevExperienceStatus = $Status01;

/// The request message for Operations.CancelOperation.
typedef CancelOperationRequest = $Empty;

/// **Cloud Build**: Configurations for each Cloud Build enabled cluster.
class CloudBuildSpec {
  /// Whether it is allowed to run the privileged builds on the cluster or not.
  /// Possible string values are:
  /// - "SECURITY_POLICY_UNSPECIFIED" : Unspecified policy
  /// - "NON_PRIVILEGED" : Privileged build pods are disallowed
  /// - "PRIVILEGED" : Privileged build pods are allowed
  core.String? securityPolicy;

  /// Version of the cloud build software on the cluster.
  core.String? version;

  CloudBuildSpec({
    this.securityPolicy,
    this.version,
  });

  CloudBuildSpec.fromJson(core.Map json_)
      : this(
          securityPolicy: json_['securityPolicy'] as core.String?,
          version: json_['version'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (securityPolicy != null) 'securityPolicy': securityPolicy!,
        if (version != null) 'version': version!,
      };
}

/// GKEUpgrade represents a GKE provided upgrade, e.g., control plane upgrade.
class ClusterUpgradeGKEUpgrade {
  /// Name of the upgrade, e.g., "k8s_control_plane".
  core.String? name;

  /// Version of the upgrade, e.g., "1.22.1-gke.100".
  core.String? version;

  ClusterUpgradeGKEUpgrade({
    this.name,
    this.version,
  });

  ClusterUpgradeGKEUpgrade.fromJson(core.Map json_)
      : this(
          name: json_['name'] as core.String?,
          version: json_['version'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (name != null) 'name': name!,
        if (version != null) 'version': version!,
      };
}

/// IgnoredMembership represents a membership ignored by the feature.
///
/// A membership can be ignored because it was manually upgraded to a newer
/// version than RC default.
typedef ClusterUpgradeIgnoredMembership = $ClusterUpgradeIgnoredMembership;

/// MembershipGKEUpgradeState is a GKEUpgrade and its state per-membership.
class ClusterUpgradeMembershipGKEUpgradeState {
  /// Status of the upgrade.
  ClusterUpgradeUpgradeStatus? status;

  /// Which upgrade to track the state.
  ClusterUpgradeGKEUpgrade? upgrade;

  ClusterUpgradeMembershipGKEUpgradeState({
    this.status,
    this.upgrade,
  });

  ClusterUpgradeMembershipGKEUpgradeState.fromJson(core.Map json_)
      : this(
          status: json_.containsKey('status')
              ? ClusterUpgradeUpgradeStatus.fromJson(
                  json_['status'] as core.Map<core.String, core.dynamic>)
              : null,
          upgrade: json_.containsKey('upgrade')
              ? ClusterUpgradeGKEUpgrade.fromJson(
                  json_['upgrade'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (status != null) 'status': status!,
        if (upgrade != null) 'upgrade': upgrade!,
      };
}

/// Per-membership state for this feature.
class ClusterUpgradeState {
  /// Whether this membership is ignored by the feature.
  ///
  /// For example, manually upgraded clusters can be ignored if they are newer
  /// than the default versions of its release channel.
  ClusterUpgradeIgnoredMembership? ignored;

  /// Actual upgrade state against desired.
  core.List<ClusterUpgradeMembershipGKEUpgradeState>? upgrades;

  ClusterUpgradeState({
    this.ignored,
    this.upgrades,
  });

  ClusterUpgradeState.fromJson(core.Map json_)
      : this(
          ignored: json_.containsKey('ignored')
              ? ClusterUpgradeIgnoredMembership.fromJson(
                  json_['ignored'] as core.Map<core.String, core.dynamic>)
              : null,
          upgrades: (json_['upgrades'] as core.List?)
              ?.map((value) => ClusterUpgradeMembershipGKEUpgradeState.fromJson(
                  value as core.Map<core.String, core.dynamic>))
              .toList(),
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (ignored != null) 'ignored': ignored!,
        if (upgrades != null) 'upgrades': upgrades!,
      };
}

/// UpgradeStatus provides status information for each upgrade.
typedef ClusterUpgradeUpgradeStatus = $ClusterUpgradeUpgradeStatus;

/// Configuration for Binauthz.
class ConfigManagementBinauthzConfig {
  /// Whether binauthz is enabled in this cluster.
  core.bool? enabled;

  ConfigManagementBinauthzConfig({
    this.enabled,
  });

  ConfigManagementBinauthzConfig.fromJson(core.Map json_)
      : this(
          enabled: json_['enabled'] as core.bool?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (enabled != null) 'enabled': enabled!,
      };
}

/// State for Binauthz.
class ConfigManagementBinauthzState {
  /// The version of binauthz that is installed.
  ConfigManagementBinauthzVersion? version;

  /// The state of the binauthz webhook.
  /// Possible string values are:
  /// - "DEPLOYMENT_STATE_UNSPECIFIED" : Deployment's state cannot be
  /// determined.
  /// - "NOT_INSTALLED" : Deployment is not installed.
  /// - "INSTALLED" : Deployment is installed.
  /// - "ERROR" : Deployment was attempted to be installed, but has errors.
  /// - "PENDING" : Deployment is installing or terminating
  core.String? webhook;

  ConfigManagementBinauthzState({
    this.version,
    this.webhook,
  });

  ConfigManagementBinauthzState.fromJson(core.Map json_)
      : this(
          version: json_.containsKey('version')
              ? ConfigManagementBinauthzVersion.fromJson(
                  json_['version'] as core.Map<core.String, core.dynamic>)
              : null,
          webhook: json_['webhook'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (version != null) 'version': version!,
        if (webhook != null) 'webhook': webhook!,
      };
}

/// The version of binauthz.
class ConfigManagementBinauthzVersion {
  /// The version of the binauthz webhook.
  core.String? webhookVersion;

  ConfigManagementBinauthzVersion({
    this.webhookVersion,
  });

  ConfigManagementBinauthzVersion.fromJson(core.Map json_)
      : this(
          webhookVersion: json_['webhookVersion'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (webhookVersion != null) 'webhookVersion': webhookVersion!,
      };
}

/// Configuration for Config Sync
class ConfigManagementConfigSync {
  /// Set to true to allow the vertical scaling.
  ///
  /// Defaults to false which disallows vertical scaling. This field is
  /// deprecated.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  core.bool? allowVerticalScale;

  /// Enables the installation of ConfigSync.
  ///
  /// If set to true, ConfigSync resources will be created and the other
  /// ConfigSync fields will be applied if exist. If set to false, all other
  /// ConfigSync fields will be ignored, ConfigSync resources will be deleted.
  /// If omitted, ConfigSync resources will be managed depends on the presence
  /// of the git or oci field.
  core.bool? enabled;

  /// Git repo configuration for the cluster.
  ConfigManagementGitConfig? git;

  /// The Email of the Google Cloud Service Account (GSA) used for exporting
  /// Config Sync metrics to Cloud Monitoring and Cloud Monarch when Workload
  /// Identity is enabled.
  ///
  /// The GSA should have the Monitoring Metric Writer
  /// (roles/monitoring.metricWriter) IAM role. The Kubernetes ServiceAccount
  /// `default` in the namespace `config-management-monitoring` should be bound
  /// to the GSA. Deprecated: If Workload Identity Federation for GKE is
  /// enabled, Google Cloud Service Account is no longer needed for exporting
  /// Config Sync metrics:
  /// https://cloud.google.com/kubernetes-engine/enterprise/config-sync/docs/how-to/monitor-config-sync-cloud-monitoring#custom-monitoring.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  core.String? metricsGcpServiceAccountEmail;

  /// OCI repo configuration for the cluster.
  ConfigManagementOciConfig? oci;

  /// Set to true to enable the Config Sync admission webhook to prevent drifts.
  ///
  /// If set to `false`, disables the Config Sync admission webhook and does not
  /// prevent drifts.
  core.bool? preventDrift;

  /// Specifies whether the Config Sync Repo is in "hierarchical" or
  /// "unstructured" mode.
  core.String? sourceFormat;

  /// Set to true to stop syncing configs for a single cluster.
  ///
  /// Default to false.
  core.bool? stopSyncing;

  ConfigManagementConfigSync({
    this.allowVerticalScale,
    this.enabled,
    this.git,
    this.metricsGcpServiceAccountEmail,
    this.oci,
    this.preventDrift,
    this.sourceFormat,
    this.stopSyncing,
  });

  ConfigManagementConfigSync.fromJson(core.Map json_)
      : this(
          allowVerticalScale: json_['allowVerticalScale'] as core.bool?,
          enabled: json_['enabled'] as core.bool?,
          git: json_.containsKey('git')
              ? ConfigManagementGitConfig.fromJson(
                  json_['git'] as core.Map<core.String, core.dynamic>)
              : null,
          metricsGcpServiceAccountEmail:
              json_['metricsGcpServiceAccountEmail'] as core.String?,
          oci: json_.containsKey('oci')
              ? ConfigManagementOciConfig.fromJson(
                  json_['oci'] as core.Map<core.String, core.dynamic>)
              : null,
          preventDrift: json_['preventDrift'] as core.bool?,
          sourceFormat: json_['sourceFormat'] as core.String?,
          stopSyncing: json_['stopSyncing'] as core.bool?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (allowVerticalScale != null)
          'allowVerticalScale': allowVerticalScale!,
        if (enabled != null) 'enabled': enabled!,
        if (git != null) 'git': git!,
        if (metricsGcpServiceAccountEmail != null)
          'metricsGcpServiceAccountEmail': metricsGcpServiceAccountEmail!,
        if (oci != null) 'oci': oci!,
        if (preventDrift != null) 'preventDrift': preventDrift!,
        if (sourceFormat != null) 'sourceFormat': sourceFormat!,
        if (stopSyncing != null) 'stopSyncing': stopSyncing!,
      };
}

/// The state of ConfigSync's deployment on a cluster.
class ConfigManagementConfigSyncDeploymentState {
  /// Deployment state of admission-webhook.
  /// Possible string values are:
  /// - "DEPLOYMENT_STATE_UNSPECIFIED" : Deployment's state cannot be
  /// determined.
  /// - "NOT_INSTALLED" : Deployment is not installed.
  /// - "INSTALLED" : Deployment is installed.
  /// - "ERROR" : Deployment was attempted to be installed, but has errors.
  /// - "PENDING" : Deployment is installing or terminating
  core.String? admissionWebhook;

  /// Deployment state of the git-sync pod.
  /// Possible string values are:
  /// - "DEPLOYMENT_STATE_UNSPECIFIED" : Deployment's state cannot be
  /// determined.
  /// - "NOT_INSTALLED" : Deployment is not installed.
  /// - "INSTALLED" : Deployment is installed.
  /// - "ERROR" : Deployment was attempted to be installed, but has errors.
  /// - "PENDING" : Deployment is installing or terminating
  core.String? gitSync;

  /// Deployment state of the importer pod.
  /// Possible string values are:
  /// - "DEPLOYMENT_STATE_UNSPECIFIED" : Deployment's state cannot be
  /// determined.
  /// - "NOT_INSTALLED" : Deployment is not installed.
  /// - "INSTALLED" : Deployment is installed.
  /// - "ERROR" : Deployment was attempted to be installed, but has errors.
  /// - "PENDING" : Deployment is installing or terminating
  core.String? importer;

  /// Deployment state of the monitor pod.
  /// Possible string values are:
  /// - "DEPLOYMENT_STATE_UNSPECIFIED" : Deployment's state cannot be
  /// determined.
  /// - "NOT_INSTALLED" : Deployment is not installed.
  /// - "INSTALLED" : Deployment is installed.
  /// - "ERROR" : Deployment was attempted to be installed, but has errors.
  /// - "PENDING" : Deployment is installing or terminating
  core.String? monitor;

  /// Deployment state of otel-collector
  /// Possible string values are:
  /// - "DEPLOYMENT_STATE_UNSPECIFIED" : Deployment's state cannot be
  /// determined.
  /// - "NOT_INSTALLED" : Deployment is not installed.
  /// - "INSTALLED" : Deployment is installed.
  /// - "ERROR" : Deployment was attempted to be installed, but has errors.
  /// - "PENDING" : Deployment is installing or terminating
  core.String? otelCollector;

  /// Deployment state of reconciler-manager pod.
  /// Possible string values are:
  /// - "DEPLOYMENT_STATE_UNSPECIFIED" : Deployment's state cannot be
  /// determined.
  /// - "NOT_INSTALLED" : Deployment is not installed.
  /// - "INSTALLED" : Deployment is installed.
  /// - "ERROR" : Deployment was attempted to be installed, but has errors.
  /// - "PENDING" : Deployment is installing or terminating
  core.String? reconcilerManager;

  /// Deployment state of resource-group-controller-manager
  /// Possible string values are:
  /// - "DEPLOYMENT_STATE_UNSPECIFIED" : Deployment's state cannot be
  /// determined.
  /// - "NOT_INSTALLED" : Deployment is not installed.
  /// - "INSTALLED" : Deployment is installed.
  /// - "ERROR" : Deployment was attempted to be installed, but has errors.
  /// - "PENDING" : Deployment is installing or terminating
  core.String? resourceGroupControllerManager;

  /// Deployment state of root-reconciler.
  /// Possible string values are:
  /// - "DEPLOYMENT_STATE_UNSPECIFIED" : Deployment's state cannot be
  /// determined.
  /// - "NOT_INSTALLED" : Deployment is not installed.
  /// - "INSTALLED" : Deployment is installed.
  /// - "ERROR" : Deployment was attempted to be installed, but has errors.
  /// - "PENDING" : Deployment is installing or terminating
  core.String? rootReconciler;

  /// Deployment state of the syncer pod.
  /// Possible string values are:
  /// - "DEPLOYMENT_STATE_UNSPECIFIED" : Deployment's state cannot be
  /// determined.
  /// - "NOT_INSTALLED" : Deployment is not installed.
  /// - "INSTALLED" : Deployment is installed.
  /// - "ERROR" : Deployment was attempted to be installed, but has errors.
  /// - "PENDING" : Deployment is installing or terminating
  core.String? syncer;

  ConfigManagementConfigSyncDeploymentState({
    this.admissionWebhook,
    this.gitSync,
    this.importer,
    this.monitor,
    this.otelCollector,
    this.reconcilerManager,
    this.resourceGroupControllerManager,
    this.rootReconciler,
    this.syncer,
  });

  ConfigManagementConfigSyncDeploymentState.fromJson(core.Map json_)
      : this(
          admissionWebhook: json_['admissionWebhook'] as core.String?,
          gitSync: json_['gitSync'] as core.String?,
          importer: json_['importer'] as core.String?,
          monitor: json_['monitor'] as core.String?,
          otelCollector: json_['otelCollector'] as core.String?,
          reconcilerManager: json_['reconcilerManager'] as core.String?,
          resourceGroupControllerManager:
              json_['resourceGroupControllerManager'] as core.String?,
          rootReconciler: json_['rootReconciler'] as core.String?,
          syncer: json_['syncer'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (admissionWebhook != null) 'admissionWebhook': admissionWebhook!,
        if (gitSync != null) 'gitSync': gitSync!,
        if (importer != null) 'importer': importer!,
        if (monitor != null) 'monitor': monitor!,
        if (otelCollector != null) 'otelCollector': otelCollector!,
        if (reconcilerManager != null) 'reconcilerManager': reconcilerManager!,
        if (resourceGroupControllerManager != null)
          'resourceGroupControllerManager': resourceGroupControllerManager!,
        if (rootReconciler != null) 'rootReconciler': rootReconciler!,
        if (syncer != null) 'syncer': syncer!,
      };
}

/// Errors pertaining to the installation of Config Sync
typedef ConfigManagementConfigSyncError = $Error;

/// State information for ConfigSync.
class ConfigManagementConfigSyncState {
  /// Whether syncing resources to the cluster is stopped at the cluster level.
  /// Possible string values are:
  /// - "STOP_SYNCING_STATE_UNSPECIFIED" : State cannot be determined
  /// - "NOT_STOPPED" : Syncing resources to the cluster is not stopped at the
  /// cluster level.
  /// - "PENDING" : Some reconcilers stop syncing resources to the cluster,
  /// while others are still syncing.
  /// - "STOPPED" : Syncing resources to the cluster is stopped at the cluster
  /// level.
  core.String? clusterLevelStopSyncingState;

  /// The number of RootSync and RepoSync CRs in the cluster.
  ///
  /// Output only.
  core.int? crCount;

  /// Information about the deployment of ConfigSync, including the version.
  ///
  /// of the various Pods deployed
  ConfigManagementConfigSyncDeploymentState? deploymentState;

  /// Errors pertaining to the installation of Config Sync.
  core.List<ConfigManagementConfigSyncError>? errors;

  /// The state of the Reposync CRD
  /// Possible string values are:
  /// - "CRD_STATE_UNSPECIFIED" : CRD's state cannot be determined
  /// - "NOT_INSTALLED" : CRD is not installed
  /// - "INSTALLED" : CRD is installed
  /// - "TERMINATING" : CRD is terminating (i.e., it has been deleted and is
  /// cleaning up)
  /// - "INSTALLING" : CRD is installing
  core.String? reposyncCrd;

  /// The state of the RootSync CRD
  /// Possible string values are:
  /// - "CRD_STATE_UNSPECIFIED" : CRD's state cannot be determined
  /// - "NOT_INSTALLED" : CRD is not installed
  /// - "INSTALLED" : CRD is installed
  /// - "TERMINATING" : CRD is terminating (i.e., it has been deleted and is
  /// cleaning up)
  /// - "INSTALLING" : CRD is installing
  core.String? rootsyncCrd;

  /// The state of CS This field summarizes the other fields in this message.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : CS's state cannot be determined.
  /// - "CONFIG_SYNC_NOT_INSTALLED" : CS is not installed.
  /// - "CONFIG_SYNC_INSTALLED" : The expected CS version is installed
  /// successfully.
  /// - "CONFIG_SYNC_ERROR" : CS encounters errors.
  /// - "CONFIG_SYNC_PENDING" : CS is installing or terminating.
  core.String? state;

  /// The state of ConfigSync's process to sync configs to a cluster.
  ConfigManagementSyncState? syncState;

  /// The version of ConfigSync deployed.
  ConfigManagementConfigSyncVersion? version;

  ConfigManagementConfigSyncState({
    this.clusterLevelStopSyncingState,
    this.crCount,
    this.deploymentState,
    this.errors,
    this.reposyncCrd,
    this.rootsyncCrd,
    this.state,
    this.syncState,
    this.version,
  });

  ConfigManagementConfigSyncState.fromJson(core.Map json_)
      : this(
          clusterLevelStopSyncingState:
              json_['clusterLevelStopSyncingState'] as core.String?,
          crCount: json_['crCount'] as core.int?,
          deploymentState: json_.containsKey('deploymentState')
              ? ConfigManagementConfigSyncDeploymentState.fromJson(
                  json_['deploymentState']
                      as core.Map<core.String, core.dynamic>)
              : null,
          errors: (json_['errors'] as core.List?)
              ?.map((value) => ConfigManagementConfigSyncError.fromJson(
                  value as core.Map<core.String, core.dynamic>))
              .toList(),
          reposyncCrd: json_['reposyncCrd'] as core.String?,
          rootsyncCrd: json_['rootsyncCrd'] as core.String?,
          state: json_['state'] as core.String?,
          syncState: json_.containsKey('syncState')
              ? ConfigManagementSyncState.fromJson(
                  json_['syncState'] as core.Map<core.String, core.dynamic>)
              : null,
          version: json_.containsKey('version')
              ? ConfigManagementConfigSyncVersion.fromJson(
                  json_['version'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (clusterLevelStopSyncingState != null)
          'clusterLevelStopSyncingState': clusterLevelStopSyncingState!,
        if (crCount != null) 'crCount': crCount!,
        if (deploymentState != null) 'deploymentState': deploymentState!,
        if (errors != null) 'errors': errors!,
        if (reposyncCrd != null) 'reposyncCrd': reposyncCrd!,
        if (rootsyncCrd != null) 'rootsyncCrd': rootsyncCrd!,
        if (state != null) 'state': state!,
        if (syncState != null) 'syncState': syncState!,
        if (version != null) 'version': version!,
      };
}

/// Specific versioning information pertaining to ConfigSync's Pods.
class ConfigManagementConfigSyncVersion {
  /// Version of the deployed admission-webhook pod.
  core.String? admissionWebhook;

  /// Version of the deployed git-sync pod.
  core.String? gitSync;

  /// Version of the deployed importer pod.
  core.String? importer;

  /// Version of the deployed monitor pod.
  core.String? monitor;

  /// Version of the deployed otel-collector pod
  core.String? otelCollector;

  /// Version of the deployed reconciler-manager pod.
  core.String? reconcilerManager;

  /// Version of the deployed resource-group-controller-manager pod
  core.String? resourceGroupControllerManager;

  /// Version of the deployed reconciler container in root-reconciler pod.
  core.String? rootReconciler;

  /// Version of the deployed syncer pod.
  core.String? syncer;

  ConfigManagementConfigSyncVersion({
    this.admissionWebhook,
    this.gitSync,
    this.importer,
    this.monitor,
    this.otelCollector,
    this.reconcilerManager,
    this.resourceGroupControllerManager,
    this.rootReconciler,
    this.syncer,
  });

  ConfigManagementConfigSyncVersion.fromJson(core.Map json_)
      : this(
          admissionWebhook: json_['admissionWebhook'] as core.String?,
          gitSync: json_['gitSync'] as core.String?,
          importer: json_['importer'] as core.String?,
          monitor: json_['monitor'] as core.String?,
          otelCollector: json_['otelCollector'] as core.String?,
          reconcilerManager: json_['reconcilerManager'] as core.String?,
          resourceGroupControllerManager:
              json_['resourceGroupControllerManager'] as core.String?,
          rootReconciler: json_['rootReconciler'] as core.String?,
          syncer: json_['syncer'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (admissionWebhook != null) 'admissionWebhook': admissionWebhook!,
        if (gitSync != null) 'gitSync': gitSync!,
        if (importer != null) 'importer': importer!,
        if (monitor != null) 'monitor': monitor!,
        if (otelCollector != null) 'otelCollector': otelCollector!,
        if (reconcilerManager != null) 'reconcilerManager': reconcilerManager!,
        if (resourceGroupControllerManager != null)
          'resourceGroupControllerManager': resourceGroupControllerManager!,
        if (rootReconciler != null) 'rootReconciler': rootReconciler!,
        if (syncer != null) 'syncer': syncer!,
      };
}

/// Model for a config file in the git repo with an associated Sync error.
class ConfigManagementErrorResource {
  /// Group/version/kind of the resource that is causing an error
  ConfigManagementGroupVersionKind? resourceGvk;

  /// Metadata name of the resource that is causing an error
  core.String? resourceName;

  /// Namespace of the resource that is causing an error
  core.String? resourceNamespace;

  /// Path in the git repo of the erroneous config
  core.String? sourcePath;

  ConfigManagementErrorResource({
    this.resourceGvk,
    this.resourceName,
    this.resourceNamespace,
    this.sourcePath,
  });

  ConfigManagementErrorResource.fromJson(core.Map json_)
      : this(
          resourceGvk: json_.containsKey('resourceGvk')
              ? ConfigManagementGroupVersionKind.fromJson(
                  json_['resourceGvk'] as core.Map<core.String, core.dynamic>)
              : null,
          resourceName: json_['resourceName'] as core.String?,
          resourceNamespace: json_['resourceNamespace'] as core.String?,
          sourcePath: json_['sourcePath'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (resourceGvk != null) 'resourceGvk': resourceGvk!,
        if (resourceName != null) 'resourceName': resourceName!,
        if (resourceNamespace != null) 'resourceNamespace': resourceNamespace!,
        if (sourcePath != null) 'sourcePath': sourcePath!,
      };
}

/// State of Policy Controller installation.
class ConfigManagementGatekeeperDeploymentState {
  /// Status of gatekeeper-audit deployment.
  /// Possible string values are:
  /// - "DEPLOYMENT_STATE_UNSPECIFIED" : Deployment's state cannot be
  /// determined.
  /// - "NOT_INSTALLED" : Deployment is not installed.
  /// - "INSTALLED" : Deployment is installed.
  /// - "ERROR" : Deployment was attempted to be installed, but has errors.
  /// - "PENDING" : Deployment is installing or terminating
  core.String? gatekeeperAudit;

  /// Status of gatekeeper-controller-manager pod.
  /// Possible string values are:
  /// - "DEPLOYMENT_STATE_UNSPECIFIED" : Deployment's state cannot be
  /// determined.
  /// - "NOT_INSTALLED" : Deployment is not installed.
  /// - "INSTALLED" : Deployment is installed.
  /// - "ERROR" : Deployment was attempted to be installed, but has errors.
  /// - "PENDING" : Deployment is installing or terminating
  core.String? gatekeeperControllerManagerState;

  /// Status of the pod serving the mutation webhook.
  /// Possible string values are:
  /// - "DEPLOYMENT_STATE_UNSPECIFIED" : Deployment's state cannot be
  /// determined.
  /// - "NOT_INSTALLED" : Deployment is not installed.
  /// - "INSTALLED" : Deployment is installed.
  /// - "ERROR" : Deployment was attempted to be installed, but has errors.
  /// - "PENDING" : Deployment is installing or terminating
  core.String? gatekeeperMutation;

  ConfigManagementGatekeeperDeploymentState({
    this.gatekeeperAudit,
    this.gatekeeperControllerManagerState,
    this.gatekeeperMutation,
  });

  ConfigManagementGatekeeperDeploymentState.fromJson(core.Map json_)
      : this(
          gatekeeperAudit: json_['gatekeeperAudit'] as core.String?,
          gatekeeperControllerManagerState:
              json_['gatekeeperControllerManagerState'] as core.String?,
          gatekeeperMutation: json_['gatekeeperMutation'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (gatekeeperAudit != null) 'gatekeeperAudit': gatekeeperAudit!,
        if (gatekeeperControllerManagerState != null)
          'gatekeeperControllerManagerState': gatekeeperControllerManagerState!,
        if (gatekeeperMutation != null)
          'gatekeeperMutation': gatekeeperMutation!,
      };
}

/// Git repo configuration for a single cluster.
typedef ConfigManagementGitConfig = $ConfigManagementGitConfig;

/// A Kubernetes object's GVK.
typedef ConfigManagementGroupVersionKind = $ConfigManagementGroupVersionKind;

/// Configuration for Hierarchy Controller.
typedef ConfigManagementHierarchyControllerConfig
    = $ConfigManagementHierarchyControllerConfig;

/// Deployment state for Hierarchy Controller
class ConfigManagementHierarchyControllerDeploymentState {
  /// The deployment state for Hierarchy Controller extension (e.g.
  /// v0.7.0-hc.1).
  /// Possible string values are:
  /// - "DEPLOYMENT_STATE_UNSPECIFIED" : Deployment's state cannot be
  /// determined.
  /// - "NOT_INSTALLED" : Deployment is not installed.
  /// - "INSTALLED" : Deployment is installed.
  /// - "ERROR" : Deployment was attempted to be installed, but has errors.
  /// - "PENDING" : Deployment is installing or terminating
  core.String? extension;

  /// The deployment state for open source HNC (e.g. v0.7.0-hc.0).
  /// Possible string values are:
  /// - "DEPLOYMENT_STATE_UNSPECIFIED" : Deployment's state cannot be
  /// determined.
  /// - "NOT_INSTALLED" : Deployment is not installed.
  /// - "INSTALLED" : Deployment is installed.
  /// - "ERROR" : Deployment was attempted to be installed, but has errors.
  /// - "PENDING" : Deployment is installing or terminating
  core.String? hnc;

  ConfigManagementHierarchyControllerDeploymentState({
    this.extension,
    this.hnc,
  });

  ConfigManagementHierarchyControllerDeploymentState.fromJson(core.Map json_)
      : this(
          extension: json_['extension'] as core.String?,
          hnc: json_['hnc'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (extension != null) 'extension': extension!,
        if (hnc != null) 'hnc': hnc!,
      };
}

/// State for Hierarchy Controller.
class ConfigManagementHierarchyControllerState {
  /// The deployment state for Hierarchy Controller.
  ConfigManagementHierarchyControllerDeploymentState? state;

  /// The version for Hierarchy Controller.
  ConfigManagementHierarchyControllerVersion? version;

  ConfigManagementHierarchyControllerState({
    this.state,
    this.version,
  });

  ConfigManagementHierarchyControllerState.fromJson(core.Map json_)
      : this(
          state: json_.containsKey('state')
              ? ConfigManagementHierarchyControllerDeploymentState.fromJson(
                  json_['state'] as core.Map<core.String, core.dynamic>)
              : null,
          version: json_.containsKey('version')
              ? ConfigManagementHierarchyControllerVersion.fromJson(
                  json_['version'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (state != null) 'state': state!,
        if (version != null) 'version': version!,
      };
}

/// Version for Hierarchy Controller.
class ConfigManagementHierarchyControllerVersion {
  /// Version for Hierarchy Controller extension.
  core.String? extension;

  /// Version for open source HNC.
  core.String? hnc;

  ConfigManagementHierarchyControllerVersion({
    this.extension,
    this.hnc,
  });

  ConfigManagementHierarchyControllerVersion.fromJson(core.Map json_)
      : this(
          extension: json_['extension'] as core.String?,
          hnc: json_['hnc'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (extension != null) 'extension': extension!,
        if (hnc != null) 'hnc': hnc!,
      };
}

/// Errors pertaining to the installation of ACM.
class ConfigManagementInstallError {
  /// A string representing the user facing error message.
  core.String? errorMessage;

  ConfigManagementInstallError({
    this.errorMessage,
  });

  ConfigManagementInstallError.fromJson(core.Map json_)
      : this(
          errorMessage: json_['errorMessage'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (errorMessage != null) 'errorMessage': errorMessage!,
      };
}

/// OCI repo configuration for a single cluster.
typedef ConfigManagementOciConfig = $ConfigManagementOciConfig;

/// State information for an ACM's Operator.
class ConfigManagementOperatorState {
  /// The state of the Operator's deployment.
  /// Possible string values are:
  /// - "DEPLOYMENT_STATE_UNSPECIFIED" : Deployment's state cannot be
  /// determined.
  /// - "NOT_INSTALLED" : Deployment is not installed.
  /// - "INSTALLED" : Deployment is installed.
  /// - "ERROR" : Deployment was attempted to be installed, but has errors.
  /// - "PENDING" : Deployment is installing or terminating
  core.String? deploymentState;

  /// Install errors.
  core.List<ConfigManagementInstallError>? errors;

  /// The semenatic version number of the operator.
  core.String? version;

  ConfigManagementOperatorState({
    this.deploymentState,
    this.errors,
    this.version,
  });

  ConfigManagementOperatorState.fromJson(core.Map json_)
      : this(
          deploymentState: json_['deploymentState'] as core.String?,
          errors: (json_['errors'] as core.List?)
              ?.map((value) => ConfigManagementInstallError.fromJson(
                  value as core.Map<core.String, core.dynamic>))
              .toList(),
          version: json_['version'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (deploymentState != null) 'deploymentState': deploymentState!,
        if (errors != null) 'errors': errors!,
        if (version != null) 'version': version!,
      };
}

/// Configuration for Policy Controller
class ConfigManagementPolicyController {
  /// Sets the interval for Policy Controller Audit Scans (in seconds).
  ///
  /// When set to 0, this disables audit functionality altogether.
  core.String? auditIntervalSeconds;

  /// Enables the installation of Policy Controller.
  ///
  /// If false, the rest of PolicyController fields take no effect.
  core.bool? enabled;

  /// The set of namespaces that are excluded from Policy Controller checks.
  ///
  /// Namespaces do not need to currently exist on the cluster.
  core.List<core.String>? exemptableNamespaces;

  /// Logs all denies and dry run failures.
  core.bool? logDeniesEnabled;

  /// Monitoring specifies the configuration of monitoring.
  ConfigManagementPolicyControllerMonitoring? monitoring;

  /// Enable or disable mutation in policy controller.
  ///
  /// If true, mutation CRDs, webhook and controller deployment will be deployed
  /// to the cluster.
  core.bool? mutationEnabled;

  /// Enables the ability to use Constraint Templates that reference to objects
  /// other than the object currently being evaluated.
  core.bool? referentialRulesEnabled;

  /// Installs the default template library along with Policy Controller.
  core.bool? templateLibraryInstalled;

  /// Last time this membership spec was updated.
  ///
  /// Output only.
  core.String? updateTime;

  ConfigManagementPolicyController({
    this.auditIntervalSeconds,
    this.enabled,
    this.exemptableNamespaces,
    this.logDeniesEnabled,
    this.monitoring,
    this.mutationEnabled,
    this.referentialRulesEnabled,
    this.templateLibraryInstalled,
    this.updateTime,
  });

  ConfigManagementPolicyController.fromJson(core.Map json_)
      : this(
          auditIntervalSeconds: json_['auditIntervalSeconds'] as core.String?,
          enabled: json_['enabled'] as core.bool?,
          exemptableNamespaces: (json_['exemptableNamespaces'] as core.List?)
              ?.map((value) => value as core.String)
              .toList(),
          logDeniesEnabled: json_['logDeniesEnabled'] as core.bool?,
          monitoring: json_.containsKey('monitoring')
              ? ConfigManagementPolicyControllerMonitoring.fromJson(
                  json_['monitoring'] as core.Map<core.String, core.dynamic>)
              : null,
          mutationEnabled: json_['mutationEnabled'] as core.bool?,
          referentialRulesEnabled:
              json_['referentialRulesEnabled'] as core.bool?,
          templateLibraryInstalled:
              json_['templateLibraryInstalled'] as core.bool?,
          updateTime: json_['updateTime'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (auditIntervalSeconds != null)
          'auditIntervalSeconds': auditIntervalSeconds!,
        if (enabled != null) 'enabled': enabled!,
        if (exemptableNamespaces != null)
          'exemptableNamespaces': exemptableNamespaces!,
        if (logDeniesEnabled != null) 'logDeniesEnabled': logDeniesEnabled!,
        if (monitoring != null) 'monitoring': monitoring!,
        if (mutationEnabled != null) 'mutationEnabled': mutationEnabled!,
        if (referentialRulesEnabled != null)
          'referentialRulesEnabled': referentialRulesEnabled!,
        if (templateLibraryInstalled != null)
          'templateLibraryInstalled': templateLibraryInstalled!,
        if (updateTime != null) 'updateTime': updateTime!,
      };
}

/// State for the migration of PolicyController from ACM -\> PoCo Hub.
typedef ConfigManagementPolicyControllerMigration
    = $ConfigManagementPolicyControllerMigration;

/// PolicyControllerMonitoring specifies the backends Policy Controller should
/// export metrics to.
///
/// For example, to specify metrics should be exported to Cloud Monitoring and
/// Prometheus, specify backends: \["cloudmonitoring", "prometheus"\]
typedef ConfigManagementPolicyControllerMonitoring = $Shared02;

/// State for PolicyControllerState.
class ConfigManagementPolicyControllerState {
  /// The state about the policy controller installation.
  ConfigManagementGatekeeperDeploymentState? deploymentState;

  /// Record state of ACM -\> PoCo Hub migration for this feature.
  ConfigManagementPolicyControllerMigration? migration;

  /// The version of Gatekeeper Policy Controller deployed.
  ConfigManagementPolicyControllerVersion? version;

  ConfigManagementPolicyControllerState({
    this.deploymentState,
    this.migration,
    this.version,
  });

  ConfigManagementPolicyControllerState.fromJson(core.Map json_)
      : this(
          deploymentState: json_.containsKey('deploymentState')
              ? ConfigManagementGatekeeperDeploymentState.fromJson(
                  json_['deploymentState']
                      as core.Map<core.String, core.dynamic>)
              : null,
          migration: json_.containsKey('migration')
              ? ConfigManagementPolicyControllerMigration.fromJson(
                  json_['migration'] as core.Map<core.String, core.dynamic>)
              : null,
          version: json_.containsKey('version')
              ? ConfigManagementPolicyControllerVersion.fromJson(
                  json_['version'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (deploymentState != null) 'deploymentState': deploymentState!,
        if (migration != null) 'migration': migration!,
        if (version != null) 'version': version!,
      };
}

/// The build version of Gatekeeper Policy Controller is using.
typedef ConfigManagementPolicyControllerVersion
    = $ConfigManagementPolicyControllerVersion;

/// **Anthos Config Management**: Configuration for a single cluster.
///
/// Intended to parallel the ConfigManagement CR.
class ConfigManagementSpec {
  /// Binauthz conifguration for the cluster.
  ///
  /// Deprecated: This field will be ignored and should not be set.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  ConfigManagementBinauthzConfig? binauthz;

  /// The user-specified cluster name used by Config Sync cluster-name-selector
  /// annotation or ClusterSelector, for applying configs to only a subset of
  /// clusters.
  ///
  /// Omit this field if the cluster's fleet membership name is used by Config
  /// Sync cluster-name-selector annotation or ClusterSelector. Set this field
  /// if a name different from the cluster's fleet membership name is used by
  /// Config Sync cluster-name-selector annotation or ClusterSelector.
  core.String? cluster;

  /// Config Sync configuration for the cluster.
  ConfigManagementConfigSync? configSync;

  /// Hierarchy Controller configuration for the cluster.
  ///
  /// Deprecated: Configuring Hierarchy Controller through the configmanagement
  /// feature is no longer recommended. Use
  /// https://github.com/kubernetes-sigs/hierarchical-namespaces instead.
  ConfigManagementHierarchyControllerConfig? hierarchyController;

  /// Enables automatic Feature management.
  /// Possible string values are:
  /// - "MANAGEMENT_UNSPECIFIED" : Unspecified
  /// - "MANAGEMENT_AUTOMATIC" : Google will manage the Feature for the cluster.
  /// - "MANAGEMENT_MANUAL" : User will manually manage the Feature for the
  /// cluster.
  core.String? management;

  /// Policy Controller configuration for the cluster.
  ///
  /// Deprecated: Configuring Policy Controller through the configmanagement
  /// feature is no longer recommended. Use the policycontroller feature
  /// instead.
  ConfigManagementPolicyController? policyController;

  /// Version of ACM installed.
  core.String? version;

  ConfigManagementSpec({
    this.binauthz,
    this.cluster,
    this.configSync,
    this.hierarchyController,
    this.management,
    this.policyController,
    this.version,
  });

  ConfigManagementSpec.fromJson(core.Map json_)
      : this(
          binauthz: json_.containsKey('binauthz')
              ? ConfigManagementBinauthzConfig.fromJson(
                  json_['binauthz'] as core.Map<core.String, core.dynamic>)
              : null,
          cluster: json_['cluster'] as core.String?,
          configSync: json_.containsKey('configSync')
              ? ConfigManagementConfigSync.fromJson(
                  json_['configSync'] as core.Map<core.String, core.dynamic>)
              : null,
          hierarchyController: json_.containsKey('hierarchyController')
              ? ConfigManagementHierarchyControllerConfig.fromJson(
                  json_['hierarchyController']
                      as core.Map<core.String, core.dynamic>)
              : null,
          management: json_['management'] as core.String?,
          policyController: json_.containsKey('policyController')
              ? ConfigManagementPolicyController.fromJson(
                  json_['policyController']
                      as core.Map<core.String, core.dynamic>)
              : null,
          version: json_['version'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (binauthz != null) 'binauthz': binauthz!,
        if (cluster != null) 'cluster': cluster!,
        if (configSync != null) 'configSync': configSync!,
        if (hierarchyController != null)
          'hierarchyController': hierarchyController!,
        if (management != null) 'management': management!,
        if (policyController != null) 'policyController': policyController!,
        if (version != null) 'version': version!,
      };
}

/// **Anthos Config Management**: State for a single cluster.
class ConfigManagementState {
  /// Binauthz status.
  ConfigManagementBinauthzState? binauthzState;

  /// This field is set to the `cluster_name` field of the Membership Spec if it
  /// is not empty.
  ///
  /// Otherwise, it is set to the cluster's fleet membership name.
  core.String? clusterName;

  /// Current sync status.
  ConfigManagementConfigSyncState? configSyncState;

  /// Hierarchy Controller status.
  ConfigManagementHierarchyControllerState? hierarchyControllerState;

  /// Membership configuration in the cluster.
  ///
  /// This represents the actual state in the cluster, while the MembershipSpec
  /// in the FeatureSpec represents the intended state.
  ConfigManagementSpec? membershipSpec;

  /// Current install status of ACM's Operator.
  ConfigManagementOperatorState? operatorState;

  /// PolicyController status.
  ConfigManagementPolicyControllerState? policyControllerState;

  ConfigManagementState({
    this.binauthzState,
    this.clusterName,
    this.configSyncState,
    this.hierarchyControllerState,
    this.membershipSpec,
    this.operatorState,
    this.policyControllerState,
  });

  ConfigManagementState.fromJson(core.Map json_)
      : this(
          binauthzState: json_.containsKey('binauthzState')
              ? ConfigManagementBinauthzState.fromJson(
                  json_['binauthzState'] as core.Map<core.String, core.dynamic>)
              : null,
          clusterName: json_['clusterName'] as core.String?,
          configSyncState: json_.containsKey('configSyncState')
              ? ConfigManagementConfigSyncState.fromJson(
                  json_['configSyncState']
                      as core.Map<core.String, core.dynamic>)
              : null,
          hierarchyControllerState:
              json_.containsKey('hierarchyControllerState')
                  ? ConfigManagementHierarchyControllerState.fromJson(
                      json_['hierarchyControllerState']
                          as core.Map<core.String, core.dynamic>)
                  : null,
          membershipSpec: json_.containsKey('membershipSpec')
              ? ConfigManagementSpec.fromJson(json_['membershipSpec']
                  as core.Map<core.String, core.dynamic>)
              : null,
          operatorState: json_.containsKey('operatorState')
              ? ConfigManagementOperatorState.fromJson(
                  json_['operatorState'] as core.Map<core.String, core.dynamic>)
              : null,
          policyControllerState: json_.containsKey('policyControllerState')
              ? ConfigManagementPolicyControllerState.fromJson(
                  json_['policyControllerState']
                      as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (binauthzState != null) 'binauthzState': binauthzState!,
        if (clusterName != null) 'clusterName': clusterName!,
        if (configSyncState != null) 'configSyncState': configSyncState!,
        if (hierarchyControllerState != null)
          'hierarchyControllerState': hierarchyControllerState!,
        if (membershipSpec != null) 'membershipSpec': membershipSpec!,
        if (operatorState != null) 'operatorState': operatorState!,
        if (policyControllerState != null)
          'policyControllerState': policyControllerState!,
      };
}

/// An ACM created error representing a problem syncing configurations.
class ConfigManagementSyncError {
  /// An ACM defined error code
  core.String? code;

  /// A description of the error
  core.String? errorMessage;

  /// A list of config(s) associated with the error, if any
  core.List<ConfigManagementErrorResource>? errorResources;

  ConfigManagementSyncError({
    this.code,
    this.errorMessage,
    this.errorResources,
  });

  ConfigManagementSyncError.fromJson(core.Map json_)
      : this(
          code: json_['code'] as core.String?,
          errorMessage: json_['errorMessage'] as core.String?,
          errorResources: (json_['errorResources'] as core.List?)
              ?.map((value) => ConfigManagementErrorResource.fromJson(
                  value as core.Map<core.String, core.dynamic>))
              .toList(),
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (code != null) 'code': code!,
        if (errorMessage != null) 'errorMessage': errorMessage!,
        if (errorResources != null) 'errorResources': errorResources!,
      };
}

/// State indicating an ACM's progress syncing configurations to a cluster.
class ConfigManagementSyncState {
  /// Sync status code.
  /// Possible string values are:
  /// - "SYNC_CODE_UNSPECIFIED" : Config Sync cannot determine a sync code
  /// - "SYNCED" : Config Sync successfully synced the git Repo with the cluster
  /// - "PENDING" : Config Sync is in the progress of syncing a new change
  /// - "ERROR" : Indicates an error configuring Config Sync, and user action is
  /// required
  /// - "NOT_CONFIGURED" : Config Sync has been installed but not configured
  /// - "NOT_INSTALLED" : Config Sync has not been installed
  /// - "UNAUTHORIZED" : Error authorizing with the cluster
  /// - "UNREACHABLE" : Cluster could not be reached
  core.String? code;

  /// A list of errors resulting from problematic configs.
  ///
  /// This list will be truncated after 100 errors, although it is unlikely for
  /// that many errors to simultaneously exist.
  core.List<ConfigManagementSyncError>? errors;

  /// Token indicating the state of the importer.
  core.String? importToken;

  /// Deprecated: use last_sync_time instead.
  ///
  /// Timestamp of when ACM last successfully synced the repo. The time format
  /// is specified in https://golang.org/pkg/time/#Time.String
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  core.String? lastSync;

  /// Timestamp type of when ACM last successfully synced the repo.
  core.String? lastSyncTime;

  /// Token indicating the state of the repo.
  core.String? sourceToken;

  /// Token indicating the state of the syncer.
  core.String? syncToken;

  ConfigManagementSyncState({
    this.code,
    this.errors,
    this.importToken,
    this.lastSync,
    this.lastSyncTime,
    this.sourceToken,
    this.syncToken,
  });

  ConfigManagementSyncState.fromJson(core.Map json_)
      : this(
          code: json_['code'] as core.String?,
          errors: (json_['errors'] as core.List?)
              ?.map((value) => ConfigManagementSyncError.fromJson(
                  value as core.Map<core.String, core.dynamic>))
              .toList(),
          importToken: json_['importToken'] as core.String?,
          lastSync: json_['lastSync'] as core.String?,
          lastSyncTime: json_['lastSyncTime'] as core.String?,
          sourceToken: json_['sourceToken'] as core.String?,
          syncToken: json_['syncToken'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (code != null) 'code': code!,
        if (errors != null) 'errors': errors!,
        if (importToken != null) 'importToken': importToken!,
        if (lastSync != null) 'lastSync': lastSync!,
        if (lastSyncTime != null) 'lastSyncTime': lastSyncTime!,
        if (sourceToken != null) 'sourceToken': sourceToken!,
        if (syncToken != null) 'syncToken': syncToken!,
      };
}

/// A generic empty message that you can re-use to avoid defining duplicated
/// empty messages in your APIs.
///
/// A typical example is to use it as the request or the response type of an API
/// method. For instance: service Foo { rpc Bar(google.protobuf.Empty) returns
/// (google.protobuf.Empty); }
typedef Empty = $Empty;

/// FeatureSpec contains user input per-feature spec information.
class FeatureSpec {
  /// Cloudbuild-specific FeatureSpec.
  CloudBuildSpec? cloudbuild;

  /// Config Management FeatureSpec.
  ConfigManagementSpec? configmanagement;

  /// IdentityService FeatureSpec.
  IdentityServiceSpec? identityservice;

  /// Whether this per-Feature spec was inherited from a fleet-level default.
  ///
  /// This field can be updated by users by either overriding a Feature config
  /// (updated to USER implicitly) or setting to FLEET explicitly.
  Origin? origin;

  /// Policycontroller-specific FeatureSpec.
  PolicyControllerSpec? policycontroller;

  /// ServiceMesh Feature Spec.
  ServiceMeshSpec? servicemesh;

  /// Workloadcertificate-specific FeatureSpec.
  WorkloadCertificateSpec? workloadcertificate;

  FeatureSpec({
    this.cloudbuild,
    this.configmanagement,
    this.identityservice,
    this.origin,
    this.policycontroller,
    this.servicemesh,
    this.workloadcertificate,
  });

  FeatureSpec.fromJson(core.Map json_)
      : this(
          cloudbuild: json_.containsKey('cloudbuild')
              ? CloudBuildSpec.fromJson(
                  json_['cloudbuild'] as core.Map<core.String, core.dynamic>)
              : null,
          configmanagement: json_.containsKey('configmanagement')
              ? ConfigManagementSpec.fromJson(json_['configmanagement']
                  as core.Map<core.String, core.dynamic>)
              : null,
          identityservice: json_.containsKey('identityservice')
              ? IdentityServiceSpec.fromJson(json_['identityservice']
                  as core.Map<core.String, core.dynamic>)
              : null,
          origin: json_.containsKey('origin')
              ? Origin.fromJson(
                  json_['origin'] as core.Map<core.String, core.dynamic>)
              : null,
          policycontroller: json_.containsKey('policycontroller')
              ? PolicyControllerSpec.fromJson(json_['policycontroller']
                  as core.Map<core.String, core.dynamic>)
              : null,
          servicemesh: json_.containsKey('servicemesh')
              ? ServiceMeshSpec.fromJson(
                  json_['servicemesh'] as core.Map<core.String, core.dynamic>)
              : null,
          workloadcertificate: json_.containsKey('workloadcertificate')
              ? WorkloadCertificateSpec.fromJson(json_['workloadcertificate']
                  as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (cloudbuild != null) 'cloudbuild': cloudbuild!,
        if (configmanagement != null) 'configmanagement': configmanagement!,
        if (identityservice != null) 'identityservice': identityservice!,
        if (origin != null) 'origin': origin!,
        if (policycontroller != null) 'policycontroller': policycontroller!,
        if (servicemesh != null) 'servicemesh': servicemesh!,
        if (workloadcertificate != null)
          'workloadcertificate': workloadcertificate!,
      };
}

/// FeatureState contains high-level state information and per-feature state
/// information for this MembershipFeature.
class FeatureState {
  /// Appdevexperience specific state.
  AppDevExperienceState? appdevexperience;

  /// Cluster upgrade state.
  ClusterUpgradeState? clusterupgrade;

  /// Config Management state
  ConfigManagementState? configmanagement;

  /// Identity service state
  IdentityServiceState? identityservice;

  /// Metering state
  MeteringState? metering;

  /// Policy Controller state
  PolicyControllerState? policycontroller;

  /// Service mesh state
  ServiceMeshState? servicemesh;

  /// The high-level state of this MembershipFeature.
  State? state;

  FeatureState({
    this.appdevexperience,
    this.clusterupgrade,
    this.configmanagement,
    this.identityservice,
    this.metering,
    this.policycontroller,
    this.servicemesh,
    this.state,
  });

  FeatureState.fromJson(core.Map json_)
      : this(
          appdevexperience: json_.containsKey('appdevexperience')
              ? AppDevExperienceState.fromJson(json_['appdevexperience']
                  as core.Map<core.String, core.dynamic>)
              : null,
          clusterupgrade: json_.containsKey('clusterupgrade')
              ? ClusterUpgradeState.fromJson(json_['clusterupgrade']
                  as core.Map<core.String, core.dynamic>)
              : null,
          configmanagement: json_.containsKey('configmanagement')
              ? ConfigManagementState.fromJson(json_['configmanagement']
                  as core.Map<core.String, core.dynamic>)
              : null,
          identityservice: json_.containsKey('identityservice')
              ? IdentityServiceState.fromJson(json_['identityservice']
                  as core.Map<core.String, core.dynamic>)
              : null,
          metering: json_.containsKey('metering')
              ? MeteringState.fromJson(
                  json_['metering'] as core.Map<core.String, core.dynamic>)
              : null,
          policycontroller: json_.containsKey('policycontroller')
              ? PolicyControllerState.fromJson(json_['policycontroller']
                  as core.Map<core.String, core.dynamic>)
              : null,
          servicemesh: json_.containsKey('servicemesh')
              ? ServiceMeshState.fromJson(
                  json_['servicemesh'] as core.Map<core.String, core.dynamic>)
              : null,
          state: json_.containsKey('state')
              ? State.fromJson(
                  json_['state'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (appdevexperience != null) 'appdevexperience': appdevexperience!,
        if (clusterupgrade != null) 'clusterupgrade': clusterupgrade!,
        if (configmanagement != null) 'configmanagement': configmanagement!,
        if (identityservice != null) 'identityservice': identityservice!,
        if (metering != null) 'metering': metering!,
        if (policycontroller != null) 'policycontroller': policycontroller!,
        if (servicemesh != null) 'servicemesh': servicemesh!,
        if (state != null) 'state': state!,
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

/// Configuration of an auth method for a member/cluster.
///
/// Only one authentication method (e.g., OIDC and LDAP) can be set per
/// AuthMethod.
class IdentityServiceAuthMethod {
  /// AzureAD specific Configuration.
  IdentityServiceAzureADConfig? azureadConfig;

  /// GoogleConfig specific configuration
  IdentityServiceGoogleConfig? googleConfig;

  /// LDAP specific configuration.
  IdentityServiceLdapConfig? ldapConfig;

  /// Identifier for auth config.
  core.String? name;

  /// OIDC specific configuration.
  IdentityServiceOidcConfig? oidcConfig;

  /// Proxy server address to use for auth method.
  core.String? proxy;

  /// SAML specific configuration.
  IdentityServiceSamlConfig? samlConfig;

  IdentityServiceAuthMethod({
    this.azureadConfig,
    this.googleConfig,
    this.ldapConfig,
    this.name,
    this.oidcConfig,
    this.proxy,
    this.samlConfig,
  });

  IdentityServiceAuthMethod.fromJson(core.Map json_)
      : this(
          azureadConfig: json_.containsKey('azureadConfig')
              ? IdentityServiceAzureADConfig.fromJson(
                  json_['azureadConfig'] as core.Map<core.String, core.dynamic>)
              : null,
          googleConfig: json_.containsKey('googleConfig')
              ? IdentityServiceGoogleConfig.fromJson(
                  json_['googleConfig'] as core.Map<core.String, core.dynamic>)
              : null,
          ldapConfig: json_.containsKey('ldapConfig')
              ? IdentityServiceLdapConfig.fromJson(
                  json_['ldapConfig'] as core.Map<core.String, core.dynamic>)
              : null,
          name: json_['name'] as core.String?,
          oidcConfig: json_.containsKey('oidcConfig')
              ? IdentityServiceOidcConfig.fromJson(
                  json_['oidcConfig'] as core.Map<core.String, core.dynamic>)
              : null,
          proxy: json_['proxy'] as core.String?,
          samlConfig: json_.containsKey('samlConfig')
              ? IdentityServiceSamlConfig.fromJson(
                  json_['samlConfig'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (azureadConfig != null) 'azureadConfig': azureadConfig!,
        if (googleConfig != null) 'googleConfig': googleConfig!,
        if (ldapConfig != null) 'ldapConfig': ldapConfig!,
        if (name != null) 'name': name!,
        if (oidcConfig != null) 'oidcConfig': oidcConfig!,
        if (proxy != null) 'proxy': proxy!,
        if (samlConfig != null) 'samlConfig': samlConfig!,
      };
}

/// Configuration for the AzureAD Auth flow.
typedef IdentityServiceAzureADConfig = $IdentityServiceAzureADConfig;

/// Configuration options for the AIS diagnostic interface.
typedef IdentityServiceDiagnosticInterface
    = $IdentityServiceDiagnosticInterface;

/// Configuration for the Google Plugin Auth flow.
typedef IdentityServiceGoogleConfig = $IdentityServiceGoogleConfig;

/// Contains the properties for locating and authenticating groups in the
/// directory.
typedef IdentityServiceGroupConfig = $IdentityServiceGroupConfig;

/// Holds non-protocol-related configuration options.
class IdentityServiceIdentityServiceOptions {
  /// Configuration options for the AIS diagnostic interface.
  IdentityServiceDiagnosticInterface? diagnosticInterface;

  /// Determines the lifespan of STS tokens issued by Anthos Identity Service.
  core.String? sessionDuration;

  IdentityServiceIdentityServiceOptions({
    this.diagnosticInterface,
    this.sessionDuration,
  });

  IdentityServiceIdentityServiceOptions.fromJson(core.Map json_)
      : this(
          diagnosticInterface: json_.containsKey('diagnosticInterface')
              ? IdentityServiceDiagnosticInterface.fromJson(
                  json_['diagnosticInterface']
                      as core.Map<core.String, core.dynamic>)
              : null,
          sessionDuration: json_['sessionDuration'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (diagnosticInterface != null)
          'diagnosticInterface': diagnosticInterface!,
        if (sessionDuration != null) 'sessionDuration': sessionDuration!,
      };
}

/// Configuration for the LDAP Auth flow.
class IdentityServiceLdapConfig {
  /// Contains the properties for locating and authenticating groups in the
  /// directory.
  ///
  /// Optional.
  IdentityServiceGroupConfig? group;

  /// Server settings for the external LDAP server.
  ///
  /// Required.
  IdentityServiceServerConfig? server;

  /// Contains the credentials of the service account which is authorized to
  /// perform the LDAP search in the directory.
  ///
  /// The credentials can be supplied by the combination of the DN and password
  /// or the client certificate.
  ///
  /// Required.
  IdentityServiceServiceAccountConfig? serviceAccount;

  /// Defines where users exist in the LDAP directory.
  ///
  /// Required.
  IdentityServiceUserConfig? user;

  IdentityServiceLdapConfig({
    this.group,
    this.server,
    this.serviceAccount,
    this.user,
  });

  IdentityServiceLdapConfig.fromJson(core.Map json_)
      : this(
          group: json_.containsKey('group')
              ? IdentityServiceGroupConfig.fromJson(
                  json_['group'] as core.Map<core.String, core.dynamic>)
              : null,
          server: json_.containsKey('server')
              ? IdentityServiceServerConfig.fromJson(
                  json_['server'] as core.Map<core.String, core.dynamic>)
              : null,
          serviceAccount: json_.containsKey('serviceAccount')
              ? IdentityServiceServiceAccountConfig.fromJson(
                  json_['serviceAccount']
                      as core.Map<core.String, core.dynamic>)
              : null,
          user: json_.containsKey('user')
              ? IdentityServiceUserConfig.fromJson(
                  json_['user'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (group != null) 'group': group!,
        if (server != null) 'server': server!,
        if (serviceAccount != null) 'serviceAccount': serviceAccount!,
        if (user != null) 'user': user!,
      };
}

/// Configuration for OIDC Auth flow.
typedef IdentityServiceOidcConfig = $IdentityServiceOidcConfig;

/// Configuration for the SAML Auth flow.
typedef IdentityServiceSamlConfig = $IdentityServiceSamlConfig;

/// Server settings for the external LDAP server.
typedef IdentityServiceServerConfig = $IdentityServiceServerConfig;

/// Contains the credentials of the service account which is authorized to
/// perform the LDAP search in the directory.
///
/// The credentials can be supplied by the combination of the DN and password or
/// the client certificate.
class IdentityServiceServiceAccountConfig {
  /// Credentials for basic auth.
  IdentityServiceSimpleBindCredentials? simpleBindCredentials;

  IdentityServiceServiceAccountConfig({
    this.simpleBindCredentials,
  });

  IdentityServiceServiceAccountConfig.fromJson(core.Map json_)
      : this(
          simpleBindCredentials: json_.containsKey('simpleBindCredentials')
              ? IdentityServiceSimpleBindCredentials.fromJson(
                  json_['simpleBindCredentials']
                      as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (simpleBindCredentials != null)
          'simpleBindCredentials': simpleBindCredentials!,
      };
}

/// The structure holds the LDAP simple binding credential.
typedef IdentityServiceSimpleBindCredentials
    = $IdentityServiceSimpleBindCredentials;

/// **IdentityService**: Configuration for a single membership.
class IdentityServiceSpec {
  /// A member may support multiple auth methods.
  core.List<IdentityServiceAuthMethod>? authMethods;

  /// non-protocol-related configuration options.
  ///
  /// Optional.
  IdentityServiceIdentityServiceOptions? identityServiceOptions;

  IdentityServiceSpec({
    this.authMethods,
    this.identityServiceOptions,
  });

  IdentityServiceSpec.fromJson(core.Map json_)
      : this(
          authMethods: (json_['authMethods'] as core.List?)
              ?.map((value) => IdentityServiceAuthMethod.fromJson(
                  value as core.Map<core.String, core.dynamic>))
              .toList(),
          identityServiceOptions: json_.containsKey('identityServiceOptions')
              ? IdentityServiceIdentityServiceOptions.fromJson(
                  json_['identityServiceOptions']
                      as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (authMethods != null) 'authMethods': authMethods!,
        if (identityServiceOptions != null)
          'identityServiceOptions': identityServiceOptions!,
      };
}

/// **IdentityService**: State for a single membership, analyzed and reported by
/// feature controller.
class IdentityServiceState {
  /// The reason of the failure.
  core.String? failureReason;

  /// Installed AIS version.
  ///
  /// This is the AIS version installed on this member. The values makes sense
  /// iff state is OK.
  core.String? installedVersion;

  /// Last reconciled membership configuration
  IdentityServiceSpec? memberConfig;

  /// Deployment state on this member
  /// Possible string values are:
  /// - "DEPLOYMENT_STATE_UNSPECIFIED" : Unspecified state
  /// - "OK" : deployment succeeds
  /// - "ERROR" : Failure with error.
  core.String? state;

  IdentityServiceState({
    this.failureReason,
    this.installedVersion,
    this.memberConfig,
    this.state,
  });

  IdentityServiceState.fromJson(core.Map json_)
      : this(
          failureReason: json_['failureReason'] as core.String?,
          installedVersion: json_['installedVersion'] as core.String?,
          memberConfig: json_.containsKey('memberConfig')
              ? IdentityServiceSpec.fromJson(
                  json_['memberConfig'] as core.Map<core.String, core.dynamic>)
              : null,
          state: json_['state'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (failureReason != null) 'failureReason': failureReason!,
        if (installedVersion != null) 'installedVersion': installedVersion!,
        if (memberConfig != null) 'memberConfig': memberConfig!,
        if (state != null) 'state': state!,
      };
}

/// Defines where users exist in the LDAP directory.
typedef IdentityServiceUserConfig = $IdentityServiceUserConfig;

/// LifecycleState describes the state of a MembershipFeature *resource* in the
/// GkeHub API.
///
/// See `FeatureState` for the "running state" of the MembershipFeature.
class LifecycleState {
  /// The current state of the Feature resource in the Hub API.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : State is unknown or not set.
  /// - "ENABLING" : The MembershipFeature is being enabled, and the
  /// MembershipFeature resource is being created. Once complete, the
  /// corresponding MembershipFeature will be enabled in this Hub.
  /// - "ACTIVE" : The MembershipFeature is enabled in this Hub, and the
  /// MembershipFeature resource is fully available.
  /// - "DISABLING" : The MembershipFeature is being disabled in this Hub, and
  /// the MembershipFeature resource is being deleted.
  /// - "UPDATING" : The MembershipFeature resource is being updated.
  /// - "SERVICE_UPDATING" : The MembershipFeature resource is being updated by
  /// the Hub Service.
  core.String? state;

  LifecycleState({
    this.state,
  });

  LifecycleState.fromJson(core.Map json_)
      : this(
          state: json_['state'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (state != null) 'state': state!,
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
          locations: (json_['locations'] as core.List?)
              ?.map((value) => Location.fromJson(
                  value as core.Map<core.String, core.dynamic>))
              .toList(),
          nextPageToken: json_['nextPageToken'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (locations != null) 'locations': locations!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
      };
}

/// Response message for the `GkeHubFeature.ListMembershipFeatures` method.
class ListMembershipFeaturesResponse {
  /// The list of matching MembershipFeatures.
  core.List<MembershipFeature>? membershipFeatures;

  /// A token to request the next page of resources from the
  /// `ListMembershipFeatures` method.
  ///
  /// The value of an empty string means that there are no more resources to
  /// return.
  core.String? nextPageToken;

  /// List of locations that could not be reached while fetching this list.
  core.List<core.String>? unreachable;

  ListMembershipFeaturesResponse({
    this.membershipFeatures,
    this.nextPageToken,
    this.unreachable,
  });

  ListMembershipFeaturesResponse.fromJson(core.Map json_)
      : this(
          membershipFeatures: (json_['membershipFeatures'] as core.List?)
              ?.map((value) => MembershipFeature.fromJson(
                  value as core.Map<core.String, core.dynamic>))
              .toList(),
          nextPageToken: json_['nextPageToken'] as core.String?,
          unreachable: (json_['unreachable'] as core.List?)
              ?.map((value) => value as core.String)
              .toList(),
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (membershipFeatures != null)
          'membershipFeatures': membershipFeatures!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (unreachable != null) 'unreachable': unreachable!,
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
          nextPageToken: json_['nextPageToken'] as core.String?,
          operations: (json_['operations'] as core.List?)
              ?.map((value) => Operation.fromJson(
                  value as core.Map<core.String, core.dynamic>))
              .toList(),
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (operations != null) 'operations': operations!,
      };
}

/// A resource that represents a Google Cloud location.
typedef Location = $Location00;

/// MembershipFeature represents the settings and status of a Fleet Feature
/// enabled on a single Fleet Membership.
class MembershipFeature {
  /// When the MembershipFeature resource was created.
  ///
  /// Output only.
  core.String? createTime;

  /// When the MembershipFeature resource was deleted.
  ///
  /// Output only.
  core.String? deleteTime;

  /// GCP labels for this MembershipFeature.
  core.Map<core.String, core.String>? labels;

  /// Lifecycle information of the resource itself.
  ///
  /// Output only.
  LifecycleState? lifecycleState;

  /// The resource name of the membershipFeature, in the format:
  /// `projects/{project}/locations/{location}/memberships/{membership}/features/{feature}`.
  ///
  /// Note that `membershipFeatures` is shortened to `features` in the resource
  /// name. (see http://go/aip/122#collection-identifiers)
  ///
  /// Output only.
  core.String? name;

  /// Spec of this membershipFeature.
  ///
  /// Optional.
  FeatureSpec? spec;

  /// State of the this membershipFeature.
  ///
  /// Output only.
  FeatureState? state;

  /// When the MembershipFeature resource was last updated.
  ///
  /// Output only.
  core.String? updateTime;

  MembershipFeature({
    this.createTime,
    this.deleteTime,
    this.labels,
    this.lifecycleState,
    this.name,
    this.spec,
    this.state,
    this.updateTime,
  });

  MembershipFeature.fromJson(core.Map json_)
      : this(
          createTime: json_['createTime'] as core.String?,
          deleteTime: json_['deleteTime'] as core.String?,
          labels:
              (json_['labels'] as core.Map<core.String, core.dynamic>?)?.map(
            (key, value) => core.MapEntry(
              key,
              value as core.String,
            ),
          ),
          lifecycleState: json_.containsKey('lifecycleState')
              ? LifecycleState.fromJson(json_['lifecycleState']
                  as core.Map<core.String, core.dynamic>)
              : null,
          name: json_['name'] as core.String?,
          spec: json_.containsKey('spec')
              ? FeatureSpec.fromJson(
                  json_['spec'] as core.Map<core.String, core.dynamic>)
              : null,
          state: json_.containsKey('state')
              ? FeatureState.fromJson(
                  json_['state'] as core.Map<core.String, core.dynamic>)
              : null,
          updateTime: json_['updateTime'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (createTime != null) 'createTime': createTime!,
        if (deleteTime != null) 'deleteTime': deleteTime!,
        if (labels != null) 'labels': labels!,
        if (lifecycleState != null) 'lifecycleState': lifecycleState!,
        if (name != null) 'name': name!,
        if (spec != null) 'spec': spec!,
        if (state != null) 'state': state!,
        if (updateTime != null) 'updateTime': updateTime!,
      };
}

/// **Metering**: State for a single membership, analyzed and reported by
/// feature controller.
class MeteringState {
  /// The time stamp of the most recent measurement of the number of vCPUs in
  /// the cluster.
  core.String? lastMeasurementTime;

  /// The vCPUs capacity in the cluster according to the most recent measurement
  /// (1/1000 precision).
  core.double? preciseLastMeasuredClusterVcpuCapacity;

  MeteringState({
    this.lastMeasurementTime,
    this.preciseLastMeasuredClusterVcpuCapacity,
  });

  MeteringState.fromJson(core.Map json_)
      : this(
          lastMeasurementTime: json_['lastMeasurementTime'] as core.String?,
          preciseLastMeasuredClusterVcpuCapacity:
              (json_['preciseLastMeasuredClusterVcpuCapacity'] as core.num?)
                  ?.toDouble(),
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (lastMeasurementTime != null)
          'lastMeasurementTime': lastMeasurementTime!,
        if (preciseLastMeasuredClusterVcpuCapacity != null)
          'preciseLastMeasuredClusterVcpuCapacity':
              preciseLastMeasuredClusterVcpuCapacity!,
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

  Operation({
    this.done,
    this.error,
    this.metadata,
    this.name,
    this.response,
  });

  Operation.fromJson(core.Map json_)
      : this(
          done: json_['done'] as core.bool?,
          error: json_.containsKey('error')
              ? GoogleRpcStatus.fromJson(
                  json_['error'] as core.Map<core.String, core.dynamic>)
              : null,
          metadata: json_.containsKey('metadata')
              ? json_['metadata'] as core.Map<core.String, core.dynamic>
              : null,
          name: json_['name'] as core.String?,
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

/// Origin defines where this FeatureSpec originated from.
class Origin {
  /// Type specifies which type of origin is set.
  /// Possible string values are:
  /// - "TYPE_UNSPECIFIED" : Type is unknown or not set.
  /// - "FLEET" : Per-Feature spec was inherited from the fleet-level default.
  /// - "FLEET_OUT_OF_SYNC" : Per-Feature spec was inherited from the
  /// fleet-level default but is now out of sync with the current default.
  /// - "USER" : Per-Feature spec was inherited from a user specification.
  core.String? type;

  Origin({
    this.type,
  });

  Origin.fromJson(core.Map json_)
      : this(
          type: json_['type'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (type != null) 'type': type!,
      };
}

/// BundleInstallSpec is the specification configuration for a single managed
/// bundle.
class PolicyControllerBundleInstallSpec {
  /// the set of namespaces to be exempted from the bundle
  core.List<core.String>? exemptedNamespaces;

  PolicyControllerBundleInstallSpec({
    this.exemptedNamespaces,
  });

  PolicyControllerBundleInstallSpec.fromJson(core.Map json_)
      : this(
          exemptedNamespaces: (json_['exemptedNamespaces'] as core.List?)
              ?.map((value) => value as core.String)
              .toList(),
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (exemptedNamespaces != null)
          'exemptedNamespaces': exemptedNamespaces!,
      };
}

/// Configuration for Policy Controller
class PolicyControllerHubConfig {
  /// Sets the interval for Policy Controller Audit Scans (in seconds).
  ///
  /// When set to 0, this disables audit functionality altogether.
  core.String? auditIntervalSeconds;

  /// The maximum number of audit violations to be stored in a constraint.
  ///
  /// If not set, the internal default (currently 20) will be used.
  core.String? constraintViolationLimit;

  /// Map of deployment configs to deployments (“admission”, “audit”,
  /// “mutation”).
  core.Map<core.String, PolicyControllerPolicyControllerDeploymentConfig>?
      deploymentConfigs;

  /// The set of namespaces that are excluded from Policy Controller checks.
  ///
  /// Namespaces do not need to currently exist on the cluster.
  core.List<core.String>? exemptableNamespaces;

  /// The install_spec represents the intended state specified by the latest
  /// request that mutated install_spec in the feature spec, not the lifecycle
  /// state of the feature observed by the Hub feature controller that is
  /// reported in the feature state.
  /// Possible string values are:
  /// - "INSTALL_SPEC_UNSPECIFIED" : Spec is unknown.
  /// - "INSTALL_SPEC_NOT_INSTALLED" : Request to uninstall Policy Controller.
  /// - "INSTALL_SPEC_ENABLED" : Request to install and enable Policy
  /// Controller.
  /// - "INSTALL_SPEC_SUSPENDED" : Request to suspend Policy Controller i.e. its
  /// webhooks. If Policy Controller is not installed, it will be installed but
  /// suspended.
  /// - "INSTALL_SPEC_DETACHED" : Request to stop all reconciliation actions by
  /// PoCo Hub controller. This is a breakglass mechanism to stop PoCo Hub from
  /// affecting cluster resources.
  core.String? installSpec;

  /// Logs all denies and dry run failures.
  core.bool? logDeniesEnabled;

  /// Monitoring specifies the configuration of monitoring.
  PolicyControllerMonitoringConfig? monitoring;

  /// Enables the ability to mutate resources using Policy Controller.
  core.bool? mutationEnabled;

  /// Specifies the desired policy content on the cluster
  PolicyControllerPolicyContentSpec? policyContent;

  /// Enables the ability to use Constraint Templates that reference to objects
  /// other than the object currently being evaluated.
  core.bool? referentialRulesEnabled;

  PolicyControllerHubConfig({
    this.auditIntervalSeconds,
    this.constraintViolationLimit,
    this.deploymentConfigs,
    this.exemptableNamespaces,
    this.installSpec,
    this.logDeniesEnabled,
    this.monitoring,
    this.mutationEnabled,
    this.policyContent,
    this.referentialRulesEnabled,
  });

  PolicyControllerHubConfig.fromJson(core.Map json_)
      : this(
          auditIntervalSeconds: json_['auditIntervalSeconds'] as core.String?,
          constraintViolationLimit:
              json_['constraintViolationLimit'] as core.String?,
          deploymentConfigs: (json_['deploymentConfigs']
                  as core.Map<core.String, core.dynamic>?)
              ?.map(
            (key, value) => core.MapEntry(
              key,
              PolicyControllerPolicyControllerDeploymentConfig.fromJson(
                  value as core.Map<core.String, core.dynamic>),
            ),
          ),
          exemptableNamespaces: (json_['exemptableNamespaces'] as core.List?)
              ?.map((value) => value as core.String)
              .toList(),
          installSpec: json_['installSpec'] as core.String?,
          logDeniesEnabled: json_['logDeniesEnabled'] as core.bool?,
          monitoring: json_.containsKey('monitoring')
              ? PolicyControllerMonitoringConfig.fromJson(
                  json_['monitoring'] as core.Map<core.String, core.dynamic>)
              : null,
          mutationEnabled: json_['mutationEnabled'] as core.bool?,
          policyContent: json_.containsKey('policyContent')
              ? PolicyControllerPolicyContentSpec.fromJson(
                  json_['policyContent'] as core.Map<core.String, core.dynamic>)
              : null,
          referentialRulesEnabled:
              json_['referentialRulesEnabled'] as core.bool?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (auditIntervalSeconds != null)
          'auditIntervalSeconds': auditIntervalSeconds!,
        if (constraintViolationLimit != null)
          'constraintViolationLimit': constraintViolationLimit!,
        if (deploymentConfigs != null) 'deploymentConfigs': deploymentConfigs!,
        if (exemptableNamespaces != null)
          'exemptableNamespaces': exemptableNamespaces!,
        if (installSpec != null) 'installSpec': installSpec!,
        if (logDeniesEnabled != null) 'logDeniesEnabled': logDeniesEnabled!,
        if (monitoring != null) 'monitoring': monitoring!,
        if (mutationEnabled != null) 'mutationEnabled': mutationEnabled!,
        if (policyContent != null) 'policyContent': policyContent!,
        if (referentialRulesEnabled != null)
          'referentialRulesEnabled': referentialRulesEnabled!,
      };
}

/// MonitoringConfig specifies the backends Policy Controller should export
/// metrics to.
///
/// For example, to specify metrics should be exported to Cloud Monitoring and
/// Prometheus, specify backends: \["cloudmonitoring", "prometheus"\]
typedef PolicyControllerMonitoringConfig = $Shared02;

/// OnClusterState represents the state of a sub-component of Policy Controller.
class PolicyControllerOnClusterState {
  /// Surface potential errors or information logs.
  core.String? details;

  /// The lifecycle state of this component.
  /// Possible string values are:
  /// - "LIFECYCLE_STATE_UNSPECIFIED" : The lifecycle state is unspecified.
  /// - "NOT_INSTALLED" : The PC does not exist on the given cluster, and no k8s
  /// resources of any type that are associated with the PC should exist there.
  /// The cluster does not possess a membership with the PCH.
  /// - "INSTALLING" : The PCH possesses a Membership, however the PC is not
  /// fully installed on the cluster. In this state the hub can be expected to
  /// be taking actions to install the PC on the cluster.
  /// - "ACTIVE" : The PC is fully installed on the cluster and in an
  /// operational mode. In this state PCH will be reconciling state with the PC,
  /// and the PC will be performing it's operational tasks per that software.
  /// Entering a READY state requires that the hub has confirmed the PC is
  /// installed and its pods are operational with the version of the PC the PCH
  /// expects.
  /// - "UPDATING" : The PC is fully installed, but in the process of changing
  /// the configuration (including changing the version of PC either up and
  /// down, or modifying the manifests of PC) of the resources running on the
  /// cluster. The PCH has a Membership, is aware of the version the cluster
  /// should be running in, but has not confirmed for itself that the PC is
  /// running with that version.
  /// - "DECOMMISSIONING" : The PC may have resources on the cluster, but the
  /// PCH wishes to remove the Membership. The Membership still exists.
  /// - "CLUSTER_ERROR" : The PC is not operational, and the PCH is unable to
  /// act to make it operational. Entering a CLUSTER_ERROR state happens
  /// automatically when the PCH determines that a PC installed on the cluster
  /// is non-operative or that the cluster does not meet requirements set for
  /// the PCH to administer the cluster but has nevertheless been given an
  /// instruction to do so (such as ‘install').
  /// - "HUB_ERROR" : In this state, the PC may still be operational, and only
  /// the PCH is unable to act. The hub should not issue instructions to change
  /// the PC state, or otherwise interfere with the on-cluster resources.
  /// Entering a HUB_ERROR state happens automatically when the PCH determines
  /// the hub is in an unhealthy state and it wishes to ‘take hands off' to
  /// avoid corrupting the PC or other data.
  /// - "SUSPENDED" : Policy Controller (PC) is installed but suspended. This
  /// means that the policies are not enforced, but violations are still
  /// recorded (through audit).
  /// - "DETACHED" : PoCo Hub is not taking any action to reconcile cluster
  /// objects. Changes to those objects will not be overwritten by PoCo Hub.
  core.String? state;

  PolicyControllerOnClusterState({
    this.details,
    this.state,
  });

  PolicyControllerOnClusterState.fromJson(core.Map json_)
      : this(
          details: json_['details'] as core.String?,
          state: json_['state'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (details != null) 'details': details!,
        if (state != null) 'state': state!,
      };
}

/// PolicyContentSpec defines the user's desired content configuration on the
/// cluster.
class PolicyControllerPolicyContentSpec {
  /// map of bundle name to BundleInstallSpec.
  ///
  /// The bundle name maps to the `bundleName` key in the
  /// `policycontroller.gke.io/constraintData` annotation on a constraint.
  core.Map<core.String, PolicyControllerBundleInstallSpec>? bundles;

  /// Configures the installation of the Template Library.
  PolicyControllerTemplateLibraryConfig? templateLibrary;

  PolicyControllerPolicyContentSpec({
    this.bundles,
    this.templateLibrary,
  });

  PolicyControllerPolicyContentSpec.fromJson(core.Map json_)
      : this(
          bundles:
              (json_['bundles'] as core.Map<core.String, core.dynamic>?)?.map(
            (key, value) => core.MapEntry(
              key,
              PolicyControllerBundleInstallSpec.fromJson(
                  value as core.Map<core.String, core.dynamic>),
            ),
          ),
          templateLibrary: json_.containsKey('templateLibrary')
              ? PolicyControllerTemplateLibraryConfig.fromJson(
                  json_['templateLibrary']
                      as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (bundles != null) 'bundles': bundles!,
        if (templateLibrary != null) 'templateLibrary': templateLibrary!,
      };
}

/// The state of the policy controller policy content
class PolicyControllerPolicyContentState {
  /// The state of the any bundles included in the chosen version of the
  /// manifest
  core.Map<core.String, PolicyControllerOnClusterState>? bundleStates;

  /// The state of the referential data sync configuration.
  ///
  /// This could represent the state of either the syncSet object(s) or the
  /// config object, depending on the version of PoCo configured by the user.
  PolicyControllerOnClusterState? referentialSyncConfigState;

  /// The state of the template library
  PolicyControllerOnClusterState? templateLibraryState;

  PolicyControllerPolicyContentState({
    this.bundleStates,
    this.referentialSyncConfigState,
    this.templateLibraryState,
  });

  PolicyControllerPolicyContentState.fromJson(core.Map json_)
      : this(
          bundleStates:
              (json_['bundleStates'] as core.Map<core.String, core.dynamic>?)
                  ?.map(
            (key, value) => core.MapEntry(
              key,
              PolicyControllerOnClusterState.fromJson(
                  value as core.Map<core.String, core.dynamic>),
            ),
          ),
          referentialSyncConfigState:
              json_.containsKey('referentialSyncConfigState')
                  ? PolicyControllerOnClusterState.fromJson(
                      json_['referentialSyncConfigState']
                          as core.Map<core.String, core.dynamic>)
                  : null,
          templateLibraryState: json_.containsKey('templateLibraryState')
              ? PolicyControllerOnClusterState.fromJson(
                  json_['templateLibraryState']
                      as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (bundleStates != null) 'bundleStates': bundleStates!,
        if (referentialSyncConfigState != null)
          'referentialSyncConfigState': referentialSyncConfigState!,
        if (templateLibraryState != null)
          'templateLibraryState': templateLibraryState!,
      };
}

/// Deployment-specific configuration.
class PolicyControllerPolicyControllerDeploymentConfig {
  /// Container resource requirements.
  PolicyControllerResourceRequirements? containerResources;

  /// Pod affinity configuration.
  /// Possible string values are:
  /// - "AFFINITY_UNSPECIFIED" : No affinity configuration has been specified.
  /// - "NO_AFFINITY" : Affinity configurations will be removed from the
  /// deployment.
  /// - "ANTI_AFFINITY" : Anti-affinity configuration will be applied to this
  /// deployment. Default for admissions deployment.
  core.String? podAffinity;

  /// Pod anti-affinity enablement.
  ///
  /// Deprecated: use `pod_affinity` instead.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  core.bool? podAntiAffinity;

  /// Pod tolerations of node taints.
  core.List<PolicyControllerToleration>? podTolerations;

  /// Pod replica count.
  core.String? replicaCount;

  PolicyControllerPolicyControllerDeploymentConfig({
    this.containerResources,
    this.podAffinity,
    this.podAntiAffinity,
    this.podTolerations,
    this.replicaCount,
  });

  PolicyControllerPolicyControllerDeploymentConfig.fromJson(core.Map json_)
      : this(
          containerResources: json_.containsKey('containerResources')
              ? PolicyControllerResourceRequirements.fromJson(
                  json_['containerResources']
                      as core.Map<core.String, core.dynamic>)
              : null,
          podAffinity: json_['podAffinity'] as core.String?,
          podAntiAffinity: json_['podAntiAffinity'] as core.bool?,
          podTolerations: (json_['podTolerations'] as core.List?)
              ?.map((value) => PolicyControllerToleration.fromJson(
                  value as core.Map<core.String, core.dynamic>))
              .toList(),
          replicaCount: json_['replicaCount'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (containerResources != null)
          'containerResources': containerResources!,
        if (podAffinity != null) 'podAffinity': podAffinity!,
        if (podAntiAffinity != null) 'podAntiAffinity': podAntiAffinity!,
        if (podTolerations != null) 'podTolerations': podTolerations!,
        if (replicaCount != null) 'replicaCount': replicaCount!,
      };
}

/// ResourceList contains container resource requirements.
typedef PolicyControllerResourceList = $PolicyControllerResourceList;

/// ResourceRequirements describes the compute resource requirements.
class PolicyControllerResourceRequirements {
  /// Limits describes the maximum amount of compute resources allowed for use
  /// by the running container.
  PolicyControllerResourceList? limits;

  /// Requests describes the amount of compute resources reserved for the
  /// container by the kube-scheduler.
  PolicyControllerResourceList? requests;

  PolicyControllerResourceRequirements({
    this.limits,
    this.requests,
  });

  PolicyControllerResourceRequirements.fromJson(core.Map json_)
      : this(
          limits: json_.containsKey('limits')
              ? PolicyControllerResourceList.fromJson(
                  json_['limits'] as core.Map<core.String, core.dynamic>)
              : null,
          requests: json_.containsKey('requests')
              ? PolicyControllerResourceList.fromJson(
                  json_['requests'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (limits != null) 'limits': limits!,
        if (requests != null) 'requests': requests!,
      };
}

/// **Policy Controller**: Configuration for a single cluster.
///
/// Intended to parallel the PolicyController CR.
class PolicyControllerSpec {
  /// Policy Controller configuration for the cluster.
  PolicyControllerHubConfig? policyControllerHubConfig;

  /// Version of Policy Controller installed.
  core.String? version;

  PolicyControllerSpec({
    this.policyControllerHubConfig,
    this.version,
  });

  PolicyControllerSpec.fromJson(core.Map json_)
      : this(
          policyControllerHubConfig:
              json_.containsKey('policyControllerHubConfig')
                  ? PolicyControllerHubConfig.fromJson(
                      json_['policyControllerHubConfig']
                          as core.Map<core.String, core.dynamic>)
                  : null,
          version: json_['version'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (policyControllerHubConfig != null)
          'policyControllerHubConfig': policyControllerHubConfig!,
        if (version != null) 'version': version!,
      };
}

/// **Policy Controller**: State for a single cluster.
class PolicyControllerState {
  /// Currently these include (also serving as map keys): 1.
  ///
  /// "admission" 2. "audit" 3. "mutation"
  core.Map<core.String, PolicyControllerOnClusterState>? componentStates;

  /// The overall content state observed by the Hub Feature controller.
  PolicyControllerPolicyContentState? policyContentState;

  /// The overall Policy Controller lifecycle state observed by the Hub Feature
  /// controller.
  /// Possible string values are:
  /// - "LIFECYCLE_STATE_UNSPECIFIED" : The lifecycle state is unspecified.
  /// - "NOT_INSTALLED" : The PC does not exist on the given cluster, and no k8s
  /// resources of any type that are associated with the PC should exist there.
  /// The cluster does not possess a membership with the PCH.
  /// - "INSTALLING" : The PCH possesses a Membership, however the PC is not
  /// fully installed on the cluster. In this state the hub can be expected to
  /// be taking actions to install the PC on the cluster.
  /// - "ACTIVE" : The PC is fully installed on the cluster and in an
  /// operational mode. In this state PCH will be reconciling state with the PC,
  /// and the PC will be performing it's operational tasks per that software.
  /// Entering a READY state requires that the hub has confirmed the PC is
  /// installed and its pods are operational with the version of the PC the PCH
  /// expects.
  /// - "UPDATING" : The PC is fully installed, but in the process of changing
  /// the configuration (including changing the version of PC either up and
  /// down, or modifying the manifests of PC) of the resources running on the
  /// cluster. The PCH has a Membership, is aware of the version the cluster
  /// should be running in, but has not confirmed for itself that the PC is
  /// running with that version.
  /// - "DECOMMISSIONING" : The PC may have resources on the cluster, but the
  /// PCH wishes to remove the Membership. The Membership still exists.
  /// - "CLUSTER_ERROR" : The PC is not operational, and the PCH is unable to
  /// act to make it operational. Entering a CLUSTER_ERROR state happens
  /// automatically when the PCH determines that a PC installed on the cluster
  /// is non-operative or that the cluster does not meet requirements set for
  /// the PCH to administer the cluster but has nevertheless been given an
  /// instruction to do so (such as ‘install').
  /// - "HUB_ERROR" : In this state, the PC may still be operational, and only
  /// the PCH is unable to act. The hub should not issue instructions to change
  /// the PC state, or otherwise interfere with the on-cluster resources.
  /// Entering a HUB_ERROR state happens automatically when the PCH determines
  /// the hub is in an unhealthy state and it wishes to ‘take hands off' to
  /// avoid corrupting the PC or other data.
  /// - "SUSPENDED" : Policy Controller (PC) is installed but suspended. This
  /// means that the policies are not enforced, but violations are still
  /// recorded (through audit).
  /// - "DETACHED" : PoCo Hub is not taking any action to reconcile cluster
  /// objects. Changes to those objects will not be overwritten by PoCo Hub.
  core.String? state;

  PolicyControllerState({
    this.componentStates,
    this.policyContentState,
    this.state,
  });

  PolicyControllerState.fromJson(core.Map json_)
      : this(
          componentStates:
              (json_['componentStates'] as core.Map<core.String, core.dynamic>?)
                  ?.map(
            (key, value) => core.MapEntry(
              key,
              PolicyControllerOnClusterState.fromJson(
                  value as core.Map<core.String, core.dynamic>),
            ),
          ),
          policyContentState: json_.containsKey('policyContentState')
              ? PolicyControllerPolicyContentState.fromJson(
                  json_['policyContentState']
                      as core.Map<core.String, core.dynamic>)
              : null,
          state: json_['state'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (componentStates != null) 'componentStates': componentStates!,
        if (policyContentState != null)
          'policyContentState': policyContentState!,
        if (state != null) 'state': state!,
      };
}

/// The config specifying which default library templates to install.
typedef PolicyControllerTemplateLibraryConfig
    = $PolicyControllerTemplateLibraryConfig;

/// Toleration of a node taint.
typedef PolicyControllerToleration = $PolicyControllerToleration;

/// AnalysisMessage is a single message produced by an analyzer, and it used to
/// communicate to the end user about the state of their Service Mesh
/// configuration.
class ServiceMeshAnalysisMessage {
  /// A UI can combine these args with a template (based on message_base.type)
  /// to produce an internationalized message.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object?>? args;

  /// A human readable description of what the error means.
  ///
  /// It is suitable for non-internationalize display purposes.
  core.String? description;

  /// Details common to all types of Istio and ServiceMesh analysis messages.
  ServiceMeshAnalysisMessageBase? messageBase;

  /// A list of strings specifying the resource identifiers that were the cause
  /// of message generation.
  ///
  /// A "path" here may be: * MEMBERSHIP_ID if the cause is a specific member
  /// cluster * MEMBERSHIP_ID/(NAMESPACE\/)?RESOURCETYPE/NAME if the cause is a
  /// resource in a cluster
  core.List<core.String>? resourcePaths;

  ServiceMeshAnalysisMessage({
    this.args,
    this.description,
    this.messageBase,
    this.resourcePaths,
  });

  ServiceMeshAnalysisMessage.fromJson(core.Map json_)
      : this(
          args: json_.containsKey('args')
              ? json_['args'] as core.Map<core.String, core.dynamic>
              : null,
          description: json_['description'] as core.String?,
          messageBase: json_.containsKey('messageBase')
              ? ServiceMeshAnalysisMessageBase.fromJson(
                  json_['messageBase'] as core.Map<core.String, core.dynamic>)
              : null,
          resourcePaths: (json_['resourcePaths'] as core.List?)
              ?.map((value) => value as core.String)
              .toList(),
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (args != null) 'args': args!,
        if (description != null) 'description': description!,
        if (messageBase != null) 'messageBase': messageBase!,
        if (resourcePaths != null) 'resourcePaths': resourcePaths!,
      };
}

/// AnalysisMessageBase describes some common information that is needed for all
/// messages.
class ServiceMeshAnalysisMessageBase {
  /// A url pointing to the Service Mesh or Istio documentation for this
  /// specific error type.
  core.String? documentationUrl;

  /// Represents how severe a message is.
  /// Possible string values are:
  /// - "LEVEL_UNSPECIFIED" : Illegal. Same
  /// istio.analysis.v1alpha1.AnalysisMessageBase.Level.UNKNOWN.
  /// - "ERROR" : ERROR represents a misconfiguration that must be fixed.
  /// - "WARNING" : WARNING represents a misconfiguration that should be fixed.
  /// - "INFO" : INFO represents an informational finding.
  core.String? level;

  /// Represents the specific type of a message.
  ServiceMeshType? type;

  ServiceMeshAnalysisMessageBase({
    this.documentationUrl,
    this.level,
    this.type,
  });

  ServiceMeshAnalysisMessageBase.fromJson(core.Map json_)
      : this(
          documentationUrl: json_['documentationUrl'] as core.String?,
          level: json_['level'] as core.String?,
          type: json_.containsKey('type')
              ? ServiceMeshType.fromJson(
                  json_['type'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (documentationUrl != null) 'documentationUrl': documentationUrl!,
        if (level != null) 'level': level!,
        if (type != null) 'type': type!,
      };
}

/// Condition being reported.
typedef ServiceMeshCondition = $ServiceMeshCondition;

/// Status of control plane management.
class ServiceMeshControlPlaneManagement {
  /// Explanation of state.
  core.List<ServiceMeshStatusDetails>? details;

  /// Implementation of managed control plane.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "IMPLEMENTATION_UNSPECIFIED" : Unspecified
  /// - "ISTIOD" : A Google build of istiod is used for the managed control
  /// plane.
  /// - "TRAFFIC_DIRECTOR" : Traffic director is used for the managed control
  /// plane.
  /// - "UPDATING" : The control plane implementation is being updated.
  core.String? implementation;

  /// LifecycleState of control plane management.
  /// Possible string values are:
  /// - "LIFECYCLE_STATE_UNSPECIFIED" : Unspecified
  /// - "DISABLED" : DISABLED means that the component is not enabled.
  /// - "FAILED_PRECONDITION" : FAILED_PRECONDITION means that provisioning
  /// cannot proceed because of some characteristic of the member cluster.
  /// - "PROVISIONING" : PROVISIONING means that provisioning is in progress.
  /// - "ACTIVE" : ACTIVE means that the component is ready for use.
  /// - "STALLED" : STALLED means that provisioning could not be done.
  /// - "NEEDS_ATTENTION" : NEEDS_ATTENTION means that the component is ready,
  /// but some user intervention is required. (For example that the user should
  /// migrate workloads to a new control plane revision.)
  /// - "DEGRADED" : DEGRADED means that the component is ready, but operating
  /// in a degraded state.
  core.String? state;

  ServiceMeshControlPlaneManagement({
    this.details,
    this.implementation,
    this.state,
  });

  ServiceMeshControlPlaneManagement.fromJson(core.Map json_)
      : this(
          details: (json_['details'] as core.List?)
              ?.map((value) => ServiceMeshStatusDetails.fromJson(
                  value as core.Map<core.String, core.dynamic>))
              .toList(),
          implementation: json_['implementation'] as core.String?,
          state: json_['state'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (details != null) 'details': details!,
        if (implementation != null) 'implementation': implementation!,
        if (state != null) 'state': state!,
      };
}

/// Status of data plane management.
///
/// Only reported per-member.
class ServiceMeshDataPlaneManagement {
  /// Explanation of the status.
  core.List<ServiceMeshStatusDetails>? details;

  /// Lifecycle status of data plane management.
  /// Possible string values are:
  /// - "LIFECYCLE_STATE_UNSPECIFIED" : Unspecified
  /// - "DISABLED" : DISABLED means that the component is not enabled.
  /// - "FAILED_PRECONDITION" : FAILED_PRECONDITION means that provisioning
  /// cannot proceed because of some characteristic of the member cluster.
  /// - "PROVISIONING" : PROVISIONING means that provisioning is in progress.
  /// - "ACTIVE" : ACTIVE means that the component is ready for use.
  /// - "STALLED" : STALLED means that provisioning could not be done.
  /// - "NEEDS_ATTENTION" : NEEDS_ATTENTION means that the component is ready,
  /// but some user intervention is required. (For example that the user should
  /// migrate workloads to a new control plane revision.)
  /// - "DEGRADED" : DEGRADED means that the component is ready, but operating
  /// in a degraded state.
  core.String? state;

  ServiceMeshDataPlaneManagement({
    this.details,
    this.state,
  });

  ServiceMeshDataPlaneManagement.fromJson(core.Map json_)
      : this(
          details: (json_['details'] as core.List?)
              ?.map((value) => ServiceMeshStatusDetails.fromJson(
                  value as core.Map<core.String, core.dynamic>))
              .toList(),
          state: json_['state'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (details != null) 'details': details!,
        if (state != null) 'state': state!,
      };
}

/// **Service Mesh**: Spec for a single Membership for the servicemesh feature
class ServiceMeshSpec {
  /// Specifies the API that will be used for configuring the mesh workloads.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "CONFIG_API_UNSPECIFIED" : Unspecified
  /// - "CONFIG_API_ISTIO" : Use the Istio API for configuration.
  /// - "CONFIG_API_GATEWAY" : Use the K8s Gateway API for configuration.
  core.String? configApi;

  /// Deprecated: use `management` instead Enables automatic control plane
  /// management.
  /// Possible string values are:
  /// - "CONTROL_PLANE_MANAGEMENT_UNSPECIFIED" : Unspecified
  /// - "AUTOMATIC" : Google should provision a control plane revision and make
  /// it available in the cluster. Google will enroll this revision in a release
  /// channel and keep it up to date. The control plane revision may be a
  /// managed service, or a managed install.
  /// - "MANUAL" : User will manually configure the control plane (e.g. via CLI,
  /// or via the ControlPlaneRevision KRM API)
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  core.String? controlPlane;

  /// Determines which release channel to use for default injection and service
  /// mesh APIs.
  /// Possible string values are:
  /// - "CHANNEL_UNSPECIFIED" : Unspecified
  /// - "RAPID" : RAPID channel is offered on an early access basis for
  /// customers who want to test new releases.
  /// - "REGULAR" : REGULAR channel is intended for production users who want to
  /// take advantage of new features.
  /// - "STABLE" : STABLE channel includes versions that are known to be stable
  /// and reliable in production.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  core.String? defaultChannel;

  /// Enables automatic Service Mesh management.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "MANAGEMENT_UNSPECIFIED" : Unspecified
  /// - "MANAGEMENT_AUTOMATIC" : Google should manage my Service Mesh for the
  /// cluster.
  /// - "MANAGEMENT_MANUAL" : User will manually configure their service mesh
  /// components.
  core.String? management;

  ServiceMeshSpec({
    this.configApi,
    this.controlPlane,
    this.defaultChannel,
    this.management,
  });

  ServiceMeshSpec.fromJson(core.Map json_)
      : this(
          configApi: json_['configApi'] as core.String?,
          controlPlane: json_['controlPlane'] as core.String?,
          defaultChannel: json_['defaultChannel'] as core.String?,
          management: json_['management'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (configApi != null) 'configApi': configApi!,
        if (controlPlane != null) 'controlPlane': controlPlane!,
        if (defaultChannel != null) 'defaultChannel': defaultChannel!,
        if (management != null) 'management': management!,
      };
}

/// **Service Mesh**: State for a single Membership, as analyzed by the Service
/// Mesh Hub Controller.
class ServiceMeshState {
  /// Results of running Service Mesh analyzers.
  ///
  /// Output only.
  core.List<ServiceMeshAnalysisMessage>? analysisMessages;

  /// List of conditions reported for this membership.
  ///
  /// Output only.
  core.List<ServiceMeshCondition>? conditions;

  /// The API version (i.e. Istio CRD version) for configuring service mesh in
  /// this cluster.
  ///
  /// This version is influenced by the `default_channel` field.
  core.String? configApiVersion;

  /// Status of control plane management
  ///
  /// Output only.
  ServiceMeshControlPlaneManagement? controlPlaneManagement;

  /// Status of data plane management.
  ///
  /// Output only.
  ServiceMeshDataPlaneManagement? dataPlaneManagement;

  ServiceMeshState({
    this.analysisMessages,
    this.conditions,
    this.configApiVersion,
    this.controlPlaneManagement,
    this.dataPlaneManagement,
  });

  ServiceMeshState.fromJson(core.Map json_)
      : this(
          analysisMessages: (json_['analysisMessages'] as core.List?)
              ?.map((value) => ServiceMeshAnalysisMessage.fromJson(
                  value as core.Map<core.String, core.dynamic>))
              .toList(),
          conditions: (json_['conditions'] as core.List?)
              ?.map((value) => ServiceMeshCondition.fromJson(
                  value as core.Map<core.String, core.dynamic>))
              .toList(),
          configApiVersion: json_['configApiVersion'] as core.String?,
          controlPlaneManagement: json_.containsKey('controlPlaneManagement')
              ? ServiceMeshControlPlaneManagement.fromJson(
                  json_['controlPlaneManagement']
                      as core.Map<core.String, core.dynamic>)
              : null,
          dataPlaneManagement: json_.containsKey('dataPlaneManagement')
              ? ServiceMeshDataPlaneManagement.fromJson(
                  json_['dataPlaneManagement']
                      as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (analysisMessages != null) 'analysisMessages': analysisMessages!,
        if (conditions != null) 'conditions': conditions!,
        if (configApiVersion != null) 'configApiVersion': configApiVersion!,
        if (controlPlaneManagement != null)
          'controlPlaneManagement': controlPlaneManagement!,
        if (dataPlaneManagement != null)
          'dataPlaneManagement': dataPlaneManagement!,
      };
}

/// Structured and human-readable details for a status.
typedef ServiceMeshStatusDetails = $ServiceMeshStatusDetails;

/// A unique identifier for the type of message.
///
/// Display_name is intended to be human-readable, code is intended to be
/// machine readable. There should be a one-to-one mapping between display_name
/// and code. (i.e. do not re-use display_names or codes between message types.)
/// See istio.analysis.v1alpha1.AnalysisMessageBase.Type
class ServiceMeshType {
  /// A 7 character code matching `^IST[0-9]{4}$` or `^ASM[0-9]{4}$`, intended
  /// to uniquely identify the message type.
  ///
  /// (e.g. "IST0001" is mapped to the "InternalError" message type.)
  core.String? code;

  /// A human-readable name for the message type.
  ///
  /// e.g. "InternalError", "PodMissingProxy". This should be the same for all
  /// messages of the same type. (This corresponds to the `name` field in
  /// open-source Istio.)
  core.String? displayName;

  ServiceMeshType({
    this.code,
    this.displayName,
  });

  ServiceMeshType.fromJson(core.Map json_)
      : this(
          code: json_['code'] as core.String?,
          displayName: json_['displayName'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (code != null) 'code': code!,
        if (displayName != null) 'displayName': displayName!,
      };
}

/// High-level state of a MembershipFeature.
class State {
  /// The high-level, machine-readable status of this MembershipFeature.
  /// Possible string values are:
  /// - "CODE_UNSPECIFIED" : Unknown or not set.
  /// - "OK" : The MembershipFeature is operating normally.
  /// - "WARNING" : The MembershipFeature has encountered an issue, and is
  /// operating in a degraded state. The MembershipFeature may need intervention
  /// to return to normal operation. See the description and any associated
  /// MembershipFeature-specific details for more information.
  /// - "ERROR" : The MembershipFeature is not operating or is in a severely
  /// degraded state. The MembershipFeature may need intervention to return to
  /// normal operation. See the description and any associated
  /// MembershipFeature-specific details for more information.
  core.String? code;

  /// A human-readable description of the current status.
  core.String? description;

  /// The time this status and any related Feature-specific details were
  /// updated.
  core.String? updateTime;

  State({
    this.code,
    this.description,
    this.updateTime,
  });

  State.fromJson(core.Map json_)
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

/// **WorkloadCertificate**: The membership-specific input for
/// WorkloadCertificate feature.
class WorkloadCertificateSpec {
  /// CertificateManagement specifies workload certificate management.
  /// Possible string values are:
  /// - "CERTIFICATE_MANAGEMENT_UNSPECIFIED" : Disable workload certificate
  /// feature.
  /// - "DISABLED" : Disable workload certificate feature.
  /// - "ENABLED" : Enable workload certificate feature.
  core.String? certificateManagement;

  WorkloadCertificateSpec({
    this.certificateManagement,
  });

  WorkloadCertificateSpec.fromJson(core.Map json_)
      : this(
          certificateManagement: json_['certificateManagement'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (certificateManagement != null)
          'certificateManagement': certificateManagement!,
      };
}
