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

/// Cloud Asset API - v1p5beta1
///
/// The Cloud Asset API manages the history and inventory of Google Cloud
/// resources.
///
/// For more information, see
/// <https://cloud.google.com/asset-inventory/docs/quickstart>
///
/// Create an instance of [CloudAssetApi] to access these resources:
///
/// - [AssetsResource]
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

/// The Cloud Asset API manages the history and inventory of Google Cloud
/// resources.
class CloudAssetApi {
  /// See, edit, configure, and delete your Google Cloud data and see the email
  /// address for your Google Account.
  static const cloudPlatformScope =
      'https://www.googleapis.com/auth/cloud-platform';

  final commons.ApiRequester _requester;

  AssetsResource get assets => AssetsResource(_requester);

  CloudAssetApi(
    http.Client client, {
    core.String rootUrl = 'https://cloudasset.googleapis.com/',
    core.String servicePath = '',
  }) : _requester = commons.ApiRequester(
         client,
         rootUrl,
         servicePath,
         requestHeaders,
       );
}

class AssetsResource {
  final commons.ApiRequester _requester;

  AssetsResource(commons.ApiRequester client) : _requester = client;

  /// Lists assets with time and resource types and returns paged results in
  /// response.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Name of the organization or project the assets belong
  /// to. Format: "organizations/\[organization-number\]" (such as
  /// "organizations/123"), "projects/\[project-id\]" (such as
  /// "projects/my-project-id"), or "projects/\[project-number\]" (such as
  /// "projects/12345").
  /// Value must have pattern `^\[^/\]+/\[^/\]+$`.
  ///
  /// [assetTypes] - A list of asset types to take a snapshot for. For example:
  /// "compute.googleapis.com/Disk". Regular expression is also supported. For
  /// example: * "compute.googleapis.com.*" snapshots resources whose asset type
  /// starts with "compute.googleapis.com". * ".*Instance" snapshots resources
  /// whose asset type ends with "Instance". * ".*Instance.*" snapshots
  /// resources whose asset type contains "Instance". See
  /// [RE2](https://github.com/google/re2/wiki/Syntax) for all supported regular
  /// expression syntax. If the regular expression does not match any supported
  /// asset type, an INVALID_ARGUMENT error will be returned. If specified, only
  /// matching assets will be returned, otherwise, it will snapshot all asset
  /// types. See
  /// [Introduction to Cloud Asset Inventory](https://cloud.google.com/asset-inventory/docs/overview)
  /// for all supported asset types.
  ///
  /// [contentType] - Asset content type. If not specified, no content but the
  /// asset name will be returned.
  /// Possible string values are:
  /// - "CONTENT_TYPE_UNSPECIFIED" : Unspecified content type.
  /// - "RESOURCE" : Resource metadata.
  /// - "IAM_POLICY" : The actual IAM policy set on a resource.
  /// - "ORG_POLICY" : The organization policy set on an asset.
  /// - "ACCESS_POLICY" : The Access Context Manager policy set on an asset.
  ///
  /// [pageSize] - The maximum number of assets to be returned in a single
  /// response. Default is 100, minimum is 1, and maximum is 1000.
  ///
  /// [pageToken] - The `next_page_token` returned from the previous
  /// `ListAssetsResponse`, or unspecified for the first `ListAssetsRequest`. It
  /// is a continuation of a prior `ListAssets` call, and the API should return
  /// the next page of assets.
  ///
  /// [readTime] - Timestamp to take an asset snapshot. This can only be set to
  /// a timestamp between the current time and the current time minus 35 days
  /// (inclusive). If not specified, the current time will be used. Due to
  /// delays in resource data collection and indexing, there is a volatile
  /// window during which running the same query may get different results.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListAssetsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListAssetsResponse> list(
    core.String parent, {
    core.List<core.String>? assetTypes,
    core.String? contentType,
    core.int? pageSize,
    core.String? pageToken,
    core.String? readTime,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (assetTypes != null) 'assetTypes': assetTypes,
      if (contentType != null) 'contentType': [contentType],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if (readTime != null) 'readTime': [readTime],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1p5beta1/' + core.Uri.encodeFull('$parent') + '/assets';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListAssetsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

/// An asset in Google Cloud.
///
/// An asset can be any resource in the Google Cloud
/// [resource hierarchy](https://cloud.google.com/resource-manager/docs/cloud-platform-resource-hierarchy),
/// a resource outside the Google Cloud resource hierarchy (such as Google
/// Kubernetes Engine clusters and objects), or a policy (e.g. IAM policy). See
/// [Supported asset types](https://cloud.google.com/asset-inventory/docs/supported-asset-types)
/// for more information.
class Asset {
  /// Please also refer to the
  /// [access level user guide](https://cloud.google.com/access-context-manager/docs/overview#access-levels).
  GoogleIdentityAccesscontextmanagerV1AccessLevel? accessLevel;

  /// Please also refer to the
  /// [access policy user guide](https://cloud.google.com/access-context-manager/docs/overview#access-policies).
  GoogleIdentityAccesscontextmanagerV1AccessPolicy? accessPolicy;

  /// The ancestry path of an asset in Google Cloud
  /// [resource hierarchy](https://cloud.google.com/resource-manager/docs/cloud-platform-resource-hierarchy),
  /// represented as a list of relative resource names.
  ///
  /// An ancestry path starts with the closest ancestor in the hierarchy and
  /// ends at root. If the asset is a project, folder, or organization, the
  /// ancestry path starts from the asset itself. Example:
  /// `["projects/123456789", "folders/5432", "organizations/1234"]`
  core.List<core.String>? ancestors;

  /// The type of the asset.
  ///
  /// Example: `compute.googleapis.com/Disk` See
  /// [Supported asset types](https://cloud.google.com/asset-inventory/docs/supported-asset-types)
  /// for more information.
  core.String? assetType;

  /// A representation of the IAM policy set on a Google Cloud resource.
  ///
  /// There can be a maximum of one IAM policy set on any given resource. In
  /// addition, IAM policies inherit their granted access scope from any
  /// policies set on parent resources in the resource hierarchy. Therefore, the
  /// effectively policy is the union of both the policy set on this resource
  /// and each policy set on all of the resource's ancestry resource levels in
  /// the hierarchy. See
  /// [this topic](https://cloud.google.com/iam/help/allow-policies/inheritance)
  /// for more information.
  Policy? iamPolicy;

  /// The full name of the asset.
  ///
  /// Example:
  /// `//compute.googleapis.com/projects/my_project_123/zones/zone1/instances/instance1`
  /// See
  /// [Resource names](https://cloud.google.com/apis/design/resource_names#full_resource_name)
  /// for more information.
  core.String? name;

  /// A representation of an
  /// [organization policy](https://cloud.google.com/resource-manager/docs/organization-policy/overview#organization_policy).
  ///
  /// There can be more than one organization policy with different constraints
  /// set on a given resource.
  core.List<GoogleCloudOrgpolicyV1Policy>? orgPolicy;

  /// A representation of the resource.
  Resource? resource;

  /// Please also refer to the
  /// [service perimeter user guide](https://cloud.google.com/vpc-service-controls/docs/overview).
  GoogleIdentityAccesscontextmanagerV1ServicePerimeter? servicePerimeter;

  Asset({
    this.accessLevel,
    this.accessPolicy,
    this.ancestors,
    this.assetType,
    this.iamPolicy,
    this.name,
    this.orgPolicy,
    this.resource,
    this.servicePerimeter,
  });

  Asset.fromJson(core.Map json_)
    : this(
        accessLevel:
            json_.containsKey('accessLevel')
                ? GoogleIdentityAccesscontextmanagerV1AccessLevel.fromJson(
                  json_['accessLevel'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        accessPolicy:
            json_.containsKey('accessPolicy')
                ? GoogleIdentityAccesscontextmanagerV1AccessPolicy.fromJson(
                  json_['accessPolicy'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        ancestors:
            (json_['ancestors'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        assetType: json_['assetType'] as core.String?,
        iamPolicy:
            json_.containsKey('iamPolicy')
                ? Policy.fromJson(
                  json_['iamPolicy'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        name: json_['name'] as core.String?,
        orgPolicy:
            (json_['orgPolicy'] as core.List?)
                ?.map(
                  (value) => GoogleCloudOrgpolicyV1Policy.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        resource:
            json_.containsKey('resource')
                ? Resource.fromJson(
                  json_['resource'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        servicePerimeter:
            json_.containsKey('servicePerimeter')
                ? GoogleIdentityAccesscontextmanagerV1ServicePerimeter.fromJson(
                  json_['servicePerimeter']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (accessLevel != null) 'accessLevel': accessLevel!,
    if (accessPolicy != null) 'accessPolicy': accessPolicy!,
    if (ancestors != null) 'ancestors': ancestors!,
    if (assetType != null) 'assetType': assetType!,
    if (iamPolicy != null) 'iamPolicy': iamPolicy!,
    if (name != null) 'name': name!,
    if (orgPolicy != null) 'orgPolicy': orgPolicy!,
    if (resource != null) 'resource': resource!,
    if (servicePerimeter != null) 'servicePerimeter': servicePerimeter!,
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

/// Used in `policy_type` to specify how `boolean_policy` will behave at this
/// resource.
typedef GoogleCloudOrgpolicyV1BooleanPolicy = $BooleanPolicy;

/// Used in `policy_type` to specify how `list_policy` behaves at this resource.
///
/// `ListPolicy` can define specific values and subtrees of Cloud Resource
/// Manager resource hierarchy (`Organizations`, `Folders`, `Projects`) that are
/// allowed or denied by setting the `allowed_values` and `denied_values`
/// fields. This is achieved by using the `under:` and optional `is:` prefixes.
/// The `under:` prefix is used to denote resource subtree values. The `is:`
/// prefix is used to denote specific values, and is required only if the value
/// contains a ":". Values prefixed with "is:" are treated the same as values
/// with no prefix. Ancestry subtrees must be in one of the following formats: -
/// "projects/", e.g. "projects/tokyo-rain-123" - "folders/", e.g.
/// "folders/1234" - "organizations/", e.g. "organizations/1234" The
/// `supports_under` field of the associated `Constraint` defines whether
/// ancestry prefixes can be used. You can set `allowed_values` and
/// `denied_values` in the same `Policy` if `all_values` is
/// `ALL_VALUES_UNSPECIFIED`. `ALLOW` or `DENY` are used to allow or deny all
/// values. If `all_values` is set to either `ALLOW` or `DENY`, `allowed_values`
/// and `denied_values` must be unset.
typedef GoogleCloudOrgpolicyV1ListPolicy = $ListPolicy;

/// Defines a Cloud Organization `Policy` which is used to specify `Constraints`
/// for configurations of Cloud Platform resources.
class GoogleCloudOrgpolicyV1Policy {
  /// For boolean `Constraints`, whether to enforce the `Constraint` or not.
  GoogleCloudOrgpolicyV1BooleanPolicy? booleanPolicy;

  /// The name of the `Constraint` the `Policy` is configuring, for example,
  /// `constraints/serviceuser.services`.
  ///
  /// A \[list of available
  /// constraints\](/resource-manager/docs/organization-policy/org-policy-constraints)
  /// is available. Immutable after creation.
  core.String? constraint;

  /// An opaque tag indicating the current version of the `Policy`, used for
  /// concurrency control.
  ///
  /// When the `Policy` is returned from either a `GetPolicy` or a
  /// `ListOrgPolicy` request, this `etag` indicates the version of the current
  /// `Policy` to use when executing a read-modify-write loop. When the `Policy`
  /// is returned from a `GetEffectivePolicy` request, the `etag` will be unset.
  /// When the `Policy` is used in a `SetOrgPolicy` method, use the `etag` value
  /// that was returned from a `GetOrgPolicy` request as part of a
  /// read-modify-write loop for concurrency control. Not setting the `etag`in a
  /// `SetOrgPolicy` request will result in an unconditional write of the
  /// `Policy`.
  core.String? etag;
  core.List<core.int> get etagAsBytes => convert.base64.decode(etag!);

  set etagAsBytes(core.List<core.int> bytes_) {
    etag = convert.base64
        .encode(bytes_)
        .replaceAll('/', '_')
        .replaceAll('+', '-');
  }

  /// List of values either allowed or disallowed.
  GoogleCloudOrgpolicyV1ListPolicy? listPolicy;

  /// Restores the default behavior of the constraint; independent of
  /// `Constraint` type.
  GoogleCloudOrgpolicyV1RestoreDefault? restoreDefault;

  /// The time stamp the `Policy` was previously updated.
  ///
  /// This is set by the server, not specified by the caller, and represents the
  /// last time a call to `SetOrgPolicy` was made for that `Policy`. Any value
  /// set by the client will be ignored.
  core.String? updateTime;

  /// Version of the `Policy`.
  ///
  /// Default version is 0;
  core.int? version;

  GoogleCloudOrgpolicyV1Policy({
    this.booleanPolicy,
    this.constraint,
    this.etag,
    this.listPolicy,
    this.restoreDefault,
    this.updateTime,
    this.version,
  });

  GoogleCloudOrgpolicyV1Policy.fromJson(core.Map json_)
    : this(
        booleanPolicy:
            json_.containsKey('booleanPolicy')
                ? GoogleCloudOrgpolicyV1BooleanPolicy.fromJson(
                  json_['booleanPolicy'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        constraint: json_['constraint'] as core.String?,
        etag: json_['etag'] as core.String?,
        listPolicy:
            json_.containsKey('listPolicy')
                ? GoogleCloudOrgpolicyV1ListPolicy.fromJson(
                  json_['listPolicy'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        restoreDefault:
            json_.containsKey('restoreDefault')
                ? GoogleCloudOrgpolicyV1RestoreDefault.fromJson(
                  json_['restoreDefault']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        updateTime: json_['updateTime'] as core.String?,
        version: json_['version'] as core.int?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (booleanPolicy != null) 'booleanPolicy': booleanPolicy!,
    if (constraint != null) 'constraint': constraint!,
    if (etag != null) 'etag': etag!,
    if (listPolicy != null) 'listPolicy': listPolicy!,
    if (restoreDefault != null) 'restoreDefault': restoreDefault!,
    if (updateTime != null) 'updateTime': updateTime!,
    if (version != null) 'version': version!,
  };
}

/// Ignores policies set above this resource and restores the
/// `constraint_default` enforcement behavior of the specific `Constraint` at
/// this resource.
///
/// Suppose that `constraint_default` is set to `ALLOW` for the `Constraint`
/// `constraints/serviceuser.services`. Suppose that organization foo.com sets a
/// `Policy` at their Organization resource node that restricts the allowed
/// service activations to deny all service activations. They could then set a
/// `Policy` with the `policy_type` `restore_default` on several experimental
/// projects, restoring the `constraint_default` enforcement of the `Constraint`
/// for only those projects, allowing those projects to have all services
/// activated.
typedef GoogleCloudOrgpolicyV1RestoreDefault = $Empty;

/// An `AccessLevel` is a label that can be applied to requests to Google Cloud
/// services, along with a list of requirements necessary for the label to be
/// applied.
class GoogleIdentityAccesscontextmanagerV1AccessLevel {
  /// A `BasicLevel` composed of `Conditions`.
  GoogleIdentityAccesscontextmanagerV1BasicLevel? basic;

  /// A `CustomLevel` written in the Common Expression Language.
  GoogleIdentityAccesscontextmanagerV1CustomLevel? custom;

  /// Description of the `AccessLevel` and its use.
  ///
  /// Does not affect behavior.
  core.String? description;

  /// Identifier.
  ///
  /// Resource name for the `AccessLevel`. Format:
  /// `accessPolicies/{access_policy}/accessLevels/{access_level}`. The
  /// `access_level` component must begin with a letter, followed by
  /// alphanumeric characters or `_`. Its maximum length is 50 characters. After
  /// you create an `AccessLevel`, you cannot change its `name`.
  core.String? name;

  /// Human readable title.
  ///
  /// Must be unique within the Policy.
  core.String? title;

  GoogleIdentityAccesscontextmanagerV1AccessLevel({
    this.basic,
    this.custom,
    this.description,
    this.name,
    this.title,
  });

  GoogleIdentityAccesscontextmanagerV1AccessLevel.fromJson(core.Map json_)
    : this(
        basic:
            json_.containsKey('basic')
                ? GoogleIdentityAccesscontextmanagerV1BasicLevel.fromJson(
                  json_['basic'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        custom:
            json_.containsKey('custom')
                ? GoogleIdentityAccesscontextmanagerV1CustomLevel.fromJson(
                  json_['custom'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        description: json_['description'] as core.String?,
        name: json_['name'] as core.String?,
        title: json_['title'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (basic != null) 'basic': basic!,
    if (custom != null) 'custom': custom!,
    if (description != null) 'description': description!,
    if (name != null) 'name': name!,
    if (title != null) 'title': title!,
  };
}

/// `AccessPolicy` is a container for `AccessLevels` (which define the necessary
/// attributes to use Google Cloud services) and `ServicePerimeters` (which
/// define regions of services able to freely pass data within a perimeter).
///
/// An access policy is globally visible within an organization, and the
/// restrictions it specifies apply to all projects within an organization.
typedef GoogleIdentityAccesscontextmanagerV1AccessPolicy = $AccessPolicy;

/// Identification for an API Operation.
class GoogleIdentityAccesscontextmanagerV1ApiOperation {
  /// API methods or permissions to allow.
  ///
  /// Method or permission must belong to the service specified by
  /// `service_name` field. A single MethodSelector entry with `*` specified for
  /// the `method` field will allow all methods AND permissions for the service
  /// specified in `service_name`.
  core.List<GoogleIdentityAccesscontextmanagerV1MethodSelector>?
  methodSelectors;

  /// The name of the API whose methods or permissions the IngressPolicy or
  /// EgressPolicy want to allow.
  ///
  /// A single ApiOperation with `service_name` field set to `*` will allow all
  /// methods AND permissions for all services.
  core.String? serviceName;

  GoogleIdentityAccesscontextmanagerV1ApiOperation({
    this.methodSelectors,
    this.serviceName,
  });

  GoogleIdentityAccesscontextmanagerV1ApiOperation.fromJson(core.Map json_)
    : this(
        methodSelectors:
            (json_['methodSelectors'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleIdentityAccesscontextmanagerV1MethodSelector.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
        serviceName: json_['serviceName'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (methodSelectors != null) 'methodSelectors': methodSelectors!,
    if (serviceName != null) 'serviceName': serviceName!,
  };
}

/// `BasicLevel` is an `AccessLevel` using a set of recommended features.
class GoogleIdentityAccesscontextmanagerV1BasicLevel {
  /// How the `conditions` list should be combined to determine if a request is
  /// granted this `AccessLevel`.
  ///
  /// If AND is used, each `Condition` in `conditions` must be satisfied for the
  /// `AccessLevel` to be applied. If OR is used, at least one `Condition` in
  /// `conditions` must be satisfied for the `AccessLevel` to be applied.
  /// Default behavior is AND.
  /// Possible string values are:
  /// - "AND" : All `Conditions` must be true for the `BasicLevel` to be true.
  /// - "OR" : If at least one `Condition` is true, then the `BasicLevel` is
  /// true.
  core.String? combiningFunction;

  /// A list of requirements for the `AccessLevel` to be granted.
  ///
  /// Required.
  core.List<GoogleIdentityAccesscontextmanagerV1Condition>? conditions;

  GoogleIdentityAccesscontextmanagerV1BasicLevel({
    this.combiningFunction,
    this.conditions,
  });

  GoogleIdentityAccesscontextmanagerV1BasicLevel.fromJson(core.Map json_)
    : this(
        combiningFunction: json_['combiningFunction'] as core.String?,
        conditions:
            (json_['conditions'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleIdentityAccesscontextmanagerV1Condition.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (combiningFunction != null) 'combiningFunction': combiningFunction!,
    if (conditions != null) 'conditions': conditions!,
  };
}

/// A condition necessary for an `AccessLevel` to be granted.
///
/// The Condition is an AND over its fields. So a Condition is true if: 1) the
/// request IP is from one of the listed subnetworks AND 2) the originating
/// device complies with the listed device policy AND 3) all listed access
/// levels are granted AND 4) the request was sent at a time allowed by the
/// DateTimeRestriction.
class GoogleIdentityAccesscontextmanagerV1Condition {
  /// Device specific restrictions, all restrictions must hold for the Condition
  /// to be true.
  ///
  /// If not specified, all devices are allowed.
  GoogleIdentityAccesscontextmanagerV1DevicePolicy? devicePolicy;

  /// CIDR block IP subnetwork specification.
  ///
  /// May be IPv4 or IPv6. Note that for a CIDR IP address block, the specified
  /// IP address portion must be properly truncated (i.e. all the host bits must
  /// be zero) or the input is considered malformed. For example, "192.0.2.0/24"
  /// is accepted but "192.0.2.1/24" is not. Similarly, for IPv6,
  /// "2001:db8::/32" is accepted whereas "2001:db8::1/32" is not. The
  /// originating IP of a request must be in one of the listed subnets in order
  /// for this Condition to be true. If empty, all IP addresses are allowed.
  core.List<core.String>? ipSubnetworks;

  /// The request must be made by one of the provided user or service accounts.
  ///
  /// Groups are not supported. Syntax: `user:{emailid}`
  /// `serviceAccount:{emailid}` If not specified, a request may come from any
  /// user.
  core.List<core.String>? members;

  /// Whether to negate the Condition.
  ///
  /// If true, the Condition becomes a NAND over its non-empty fields. Any
  /// non-empty field criteria evaluating to false will result in the Condition
  /// to be satisfied. Defaults to false.
  core.bool? negate;

  /// The request must originate from one of the provided countries/regions.
  ///
  /// Must be valid ISO 3166-1 alpha-2 codes.
  core.List<core.String>? regions;

  /// A list of other access levels defined in the same `Policy`, referenced by
  /// resource name.
  ///
  /// Referencing an `AccessLevel` which does not exist is an error. All access
  /// levels listed must be granted for the Condition to be true. Example:
  /// "`accessPolicies/MY_POLICY/accessLevels/LEVEL_NAME"`
  core.List<core.String>? requiredAccessLevels;

  /// The request must originate from one of the provided VPC networks in Google
  /// Cloud.
  ///
  /// Cannot specify this field together with `ip_subnetworks`.
  core.List<GoogleIdentityAccesscontextmanagerV1VpcNetworkSource>?
  vpcNetworkSources;

  GoogleIdentityAccesscontextmanagerV1Condition({
    this.devicePolicy,
    this.ipSubnetworks,
    this.members,
    this.negate,
    this.regions,
    this.requiredAccessLevels,
    this.vpcNetworkSources,
  });

  GoogleIdentityAccesscontextmanagerV1Condition.fromJson(core.Map json_)
    : this(
        devicePolicy:
            json_.containsKey('devicePolicy')
                ? GoogleIdentityAccesscontextmanagerV1DevicePolicy.fromJson(
                  json_['devicePolicy'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        ipSubnetworks:
            (json_['ipSubnetworks'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        members:
            (json_['members'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        negate: json_['negate'] as core.bool?,
        regions:
            (json_['regions'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        requiredAccessLevels:
            (json_['requiredAccessLevels'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        vpcNetworkSources:
            (json_['vpcNetworkSources'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleIdentityAccesscontextmanagerV1VpcNetworkSource.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (devicePolicy != null) 'devicePolicy': devicePolicy!,
    if (ipSubnetworks != null) 'ipSubnetworks': ipSubnetworks!,
    if (members != null) 'members': members!,
    if (negate != null) 'negate': negate!,
    if (regions != null) 'regions': regions!,
    if (requiredAccessLevels != null)
      'requiredAccessLevels': requiredAccessLevels!,
    if (vpcNetworkSources != null) 'vpcNetworkSources': vpcNetworkSources!,
  };
}

/// `CustomLevel` is an `AccessLevel` using the Cloud Common Expression Language
/// to represent the necessary conditions for the level to apply to a request.
///
/// See CEL spec at: https://github.com/google/cel-spec
class GoogleIdentityAccesscontextmanagerV1CustomLevel {
  /// A Cloud CEL expression evaluating to a boolean.
  ///
  /// Required.
  Expr? expr;

  GoogleIdentityAccesscontextmanagerV1CustomLevel({this.expr});

  GoogleIdentityAccesscontextmanagerV1CustomLevel.fromJson(core.Map json_)
    : this(
        expr:
            json_.containsKey('expr')
                ? Expr.fromJson(
                  json_['expr'] as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (expr != null) 'expr': expr!,
  };
}

/// `DevicePolicy` specifies device specific restrictions necessary to acquire a
/// given access level.
///
/// A `DevicePolicy` specifies requirements for requests from devices to be
/// granted access levels, it does not do any enforcement on the device.
/// `DevicePolicy` acts as an AND over all specified fields, and each repeated
/// field is an OR over its elements. Any unset fields are ignored. For example,
/// if the proto is { os_type : DESKTOP_WINDOWS, os_type : DESKTOP_LINUX,
/// encryption_status: ENCRYPTED}, then the DevicePolicy will be true for
/// requests originating from encrypted Linux desktops and encrypted Windows
/// desktops.
class GoogleIdentityAccesscontextmanagerV1DevicePolicy {
  /// Allowed device management levels, an empty list allows all management
  /// levels.
  core.List<core.String>? allowedDeviceManagementLevels;

  /// Allowed encryptions statuses, an empty list allows all statuses.
  core.List<core.String>? allowedEncryptionStatuses;

  /// Allowed OS versions, an empty list allows all types and all versions.
  core.List<GoogleIdentityAccesscontextmanagerV1OsConstraint>? osConstraints;

  /// Whether the device needs to be approved by the customer admin.
  core.bool? requireAdminApproval;

  /// Whether the device needs to be corp owned.
  core.bool? requireCorpOwned;

  /// Whether or not screenlock is required for the DevicePolicy to be true.
  ///
  /// Defaults to `false`.
  core.bool? requireScreenlock;

  GoogleIdentityAccesscontextmanagerV1DevicePolicy({
    this.allowedDeviceManagementLevels,
    this.allowedEncryptionStatuses,
    this.osConstraints,
    this.requireAdminApproval,
    this.requireCorpOwned,
    this.requireScreenlock,
  });

  GoogleIdentityAccesscontextmanagerV1DevicePolicy.fromJson(core.Map json_)
    : this(
        allowedDeviceManagementLevels:
            (json_['allowedDeviceManagementLevels'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        allowedEncryptionStatuses:
            (json_['allowedEncryptionStatuses'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        osConstraints:
            (json_['osConstraints'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleIdentityAccesscontextmanagerV1OsConstraint.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
        requireAdminApproval: json_['requireAdminApproval'] as core.bool?,
        requireCorpOwned: json_['requireCorpOwned'] as core.bool?,
        requireScreenlock: json_['requireScreenlock'] as core.bool?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (allowedDeviceManagementLevels != null)
      'allowedDeviceManagementLevels': allowedDeviceManagementLevels!,
    if (allowedEncryptionStatuses != null)
      'allowedEncryptionStatuses': allowedEncryptionStatuses!,
    if (osConstraints != null) 'osConstraints': osConstraints!,
    if (requireAdminApproval != null)
      'requireAdminApproval': requireAdminApproval!,
    if (requireCorpOwned != null) 'requireCorpOwned': requireCorpOwned!,
    if (requireScreenlock != null) 'requireScreenlock': requireScreenlock!,
  };
}

/// Defines the conditions under which an EgressPolicy matches a request.
///
/// Conditions based on information about the source of the request. Note that
/// if the destination of the request is also protected by a ServicePerimeter,
/// then that ServicePerimeter must have an IngressPolicy which allows access in
/// order for this request to succeed.
class GoogleIdentityAccesscontextmanagerV1EgressFrom {
  /// A list of identities that are allowed access through \[EgressPolicy\].
  ///
  /// Identities can be an individual user, service account, Google group, or
  /// third-party identity. For third-party identity, only single identities are
  /// supported and other identity types are not supported. The `v1` identities
  /// that have the prefix `user`, `group`, `serviceAccount`, and `principal` in
  /// https://cloud.google.com/iam/docs/principal-identifiers#v1 are supported.
  core.List<core.String>? identities;

  /// Specifies the type of identities that are allowed access to outside the
  /// perimeter.
  ///
  /// If left unspecified, then members of `identities` field will be allowed
  /// access.
  /// Possible string values are:
  /// - "IDENTITY_TYPE_UNSPECIFIED" : No blanket identity group specified.
  /// - "ANY_IDENTITY" : Authorize access from all identities outside the
  /// perimeter.
  /// - "ANY_USER_ACCOUNT" : Authorize access from all human users outside the
  /// perimeter.
  /// - "ANY_SERVICE_ACCOUNT" : Authorize access from all service accounts
  /// outside the perimeter.
  core.String? identityType;

  /// Whether to enforce traffic restrictions based on `sources` field.
  ///
  /// If the `sources` fields is non-empty, then this field must be set to
  /// `SOURCE_RESTRICTION_ENABLED`.
  /// Possible string values are:
  /// - "SOURCE_RESTRICTION_UNSPECIFIED" : Enforcement preference unspecified,
  /// will not enforce traffic restrictions based on `sources` in EgressFrom.
  /// - "SOURCE_RESTRICTION_ENABLED" : Enforcement preference enabled, traffic
  /// restrictions will be enforced based on `sources` in EgressFrom.
  /// - "SOURCE_RESTRICTION_DISABLED" : Enforcement preference disabled, will
  /// not enforce traffic restrictions based on `sources` in EgressFrom.
  core.String? sourceRestriction;

  /// Sources that this EgressPolicy authorizes access from.
  ///
  /// If this field is not empty, then `source_restriction` must be set to
  /// `SOURCE_RESTRICTION_ENABLED`.
  core.List<GoogleIdentityAccesscontextmanagerV1EgressSource>? sources;

  GoogleIdentityAccesscontextmanagerV1EgressFrom({
    this.identities,
    this.identityType,
    this.sourceRestriction,
    this.sources,
  });

  GoogleIdentityAccesscontextmanagerV1EgressFrom.fromJson(core.Map json_)
    : this(
        identities:
            (json_['identities'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        identityType: json_['identityType'] as core.String?,
        sourceRestriction: json_['sourceRestriction'] as core.String?,
        sources:
            (json_['sources'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleIdentityAccesscontextmanagerV1EgressSource.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (identities != null) 'identities': identities!,
    if (identityType != null) 'identityType': identityType!,
    if (sourceRestriction != null) 'sourceRestriction': sourceRestriction!,
    if (sources != null) 'sources': sources!,
  };
}

/// Policy for egress from perimeter.
///
/// EgressPolicies match requests based on `egress_from` and `egress_to`
/// stanzas. For an EgressPolicy to match, both `egress_from` and `egress_to`
/// stanzas must be matched. If an EgressPolicy matches a request, the request
/// is allowed to span the ServicePerimeter boundary. For example, an
/// EgressPolicy can be used to allow VMs on networks within the
/// ServicePerimeter to access a defined set of projects outside the perimeter
/// in certain contexts (e.g. to read data from a Cloud Storage bucket or query
/// against a BigQuery dataset). EgressPolicies are concerned with the
/// *resources* that a request relates as well as the API services and API
/// actions being used. They do not related to the direction of data movement.
/// More detailed documentation for this concept can be found in the
/// descriptions of EgressFrom and EgressTo.
class GoogleIdentityAccesscontextmanagerV1EgressPolicy {
  /// Defines conditions on the source of a request causing this EgressPolicy to
  /// apply.
  GoogleIdentityAccesscontextmanagerV1EgressFrom? egressFrom;

  /// Defines the conditions on the ApiOperation and destination resources that
  /// cause this EgressPolicy to apply.
  GoogleIdentityAccesscontextmanagerV1EgressTo? egressTo;

  /// Human-readable title for the egress rule.
  ///
  /// The title must be unique within the perimeter and can not exceed 100
  /// characters. Within the access policy, the combined length of all rule
  /// titles must not exceed 240,000 characters.
  ///
  /// Optional.
  core.String? title;

  GoogleIdentityAccesscontextmanagerV1EgressPolicy({
    this.egressFrom,
    this.egressTo,
    this.title,
  });

  GoogleIdentityAccesscontextmanagerV1EgressPolicy.fromJson(core.Map json_)
    : this(
        egressFrom:
            json_.containsKey('egressFrom')
                ? GoogleIdentityAccesscontextmanagerV1EgressFrom.fromJson(
                  json_['egressFrom'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        egressTo:
            json_.containsKey('egressTo')
                ? GoogleIdentityAccesscontextmanagerV1EgressTo.fromJson(
                  json_['egressTo'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        title: json_['title'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (egressFrom != null) 'egressFrom': egressFrom!,
    if (egressTo != null) 'egressTo': egressTo!,
    if (title != null) 'title': title!,
  };
}

/// The source that EgressPolicy authorizes access from inside the
/// ServicePerimeter to somewhere outside the ServicePerimeter boundaries.
typedef GoogleIdentityAccesscontextmanagerV1EgressSource = $EgressSource;

/// Defines the conditions under which an EgressPolicy matches a request.
///
/// Conditions are based on information about the ApiOperation intended to be
/// performed on the `resources` specified. Note that if the destination of the
/// request is also protected by a ServicePerimeter, then that ServicePerimeter
/// must have an IngressPolicy which allows access in order for this request to
/// succeed. The request must match `operations` AND `resources` fields in order
/// to be allowed egress out of the perimeter.
class GoogleIdentityAccesscontextmanagerV1EgressTo {
  /// A list of external resources that are allowed to be accessed.
  ///
  /// Only AWS and Azure resources are supported. For Amazon S3, the supported
  /// formats are s3://BUCKET_NAME, s3a://BUCKET_NAME, and s3n://BUCKET_NAME.
  /// For Azure Storage, the supported format is
  /// azure://myaccount.blob.core.windows.net/CONTAINER_NAME. A request matches
  /// if it contains an external resource in this list (Example:
  /// s3://bucket/path). Currently '*' is not allowed.
  core.List<core.String>? externalResources;

  /// A list of ApiOperations allowed to be performed by the sources specified
  /// in the corresponding EgressFrom.
  ///
  /// A request matches if it uses an operation/service in this list.
  core.List<GoogleIdentityAccesscontextmanagerV1ApiOperation>? operations;

  /// A list of resources, currently only projects in the form `projects/`, that
  /// are allowed to be accessed by sources defined in the corresponding
  /// EgressFrom.
  ///
  /// A request matches if it contains a resource in this list. If `*` is
  /// specified for `resources`, then this EgressTo rule will authorize access
  /// to all resources outside the perimeter.
  core.List<core.String>? resources;

  /// IAM roles that represent the set of operations that the sources specified
  /// in the corresponding EgressFrom.
  ///
  /// are allowed to perform in this ServicePerimeter.
  core.List<core.String>? roles;

  GoogleIdentityAccesscontextmanagerV1EgressTo({
    this.externalResources,
    this.operations,
    this.resources,
    this.roles,
  });

  GoogleIdentityAccesscontextmanagerV1EgressTo.fromJson(core.Map json_)
    : this(
        externalResources:
            (json_['externalResources'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        operations:
            (json_['operations'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleIdentityAccesscontextmanagerV1ApiOperation.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
        resources:
            (json_['resources'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        roles:
            (json_['roles'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (externalResources != null) 'externalResources': externalResources!,
    if (operations != null) 'operations': operations!,
    if (resources != null) 'resources': resources!,
    if (roles != null) 'roles': roles!,
  };
}

/// Defines the conditions under which an IngressPolicy matches a request.
///
/// Conditions are based on information about the source of the request. The
/// request must satisfy what is defined in `sources` AND identity related
/// fields in order to match.
class GoogleIdentityAccesscontextmanagerV1IngressFrom {
  /// A list of identities that are allowed access through \[IngressPolicy\].
  ///
  /// Identities can be an individual user, service account, Google group, or
  /// third-party identity. For third-party identity, only single identities are
  /// supported and other identity types are not supported. The `v1` identities
  /// that have the prefix `user`, `group`, `serviceAccount`, and `principal` in
  /// https://cloud.google.com/iam/docs/principal-identifiers#v1 are supported.
  core.List<core.String>? identities;

  /// Specifies the type of identities that are allowed access from outside the
  /// perimeter.
  ///
  /// If left unspecified, then members of `identities` field will be allowed
  /// access.
  /// Possible string values are:
  /// - "IDENTITY_TYPE_UNSPECIFIED" : No blanket identity group specified.
  /// - "ANY_IDENTITY" : Authorize access from all identities outside the
  /// perimeter.
  /// - "ANY_USER_ACCOUNT" : Authorize access from all human users outside the
  /// perimeter.
  /// - "ANY_SERVICE_ACCOUNT" : Authorize access from all service accounts
  /// outside the perimeter.
  core.String? identityType;

  /// Sources that this IngressPolicy authorizes access from.
  core.List<GoogleIdentityAccesscontextmanagerV1IngressSource>? sources;

  GoogleIdentityAccesscontextmanagerV1IngressFrom({
    this.identities,
    this.identityType,
    this.sources,
  });

  GoogleIdentityAccesscontextmanagerV1IngressFrom.fromJson(core.Map json_)
    : this(
        identities:
            (json_['identities'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        identityType: json_['identityType'] as core.String?,
        sources:
            (json_['sources'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleIdentityAccesscontextmanagerV1IngressSource.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (identities != null) 'identities': identities!,
    if (identityType != null) 'identityType': identityType!,
    if (sources != null) 'sources': sources!,
  };
}

/// Policy for ingress into ServicePerimeter.
///
/// IngressPolicies match requests based on `ingress_from` and `ingress_to`
/// stanzas. For an ingress policy to match, both the `ingress_from` and
/// `ingress_to` stanzas must be matched. If an IngressPolicy matches a request,
/// the request is allowed through the perimeter boundary from outside the
/// perimeter. For example, access from the internet can be allowed either based
/// on an AccessLevel or, for traffic hosted on Google Cloud, the project of the
/// source network. For access from private networks, using the project of the
/// hosting network is required. Individual ingress policies can be limited by
/// restricting which services and/or actions they match using the `ingress_to`
/// field.
class GoogleIdentityAccesscontextmanagerV1IngressPolicy {
  /// Defines the conditions on the source of a request causing this
  /// IngressPolicy to apply.
  GoogleIdentityAccesscontextmanagerV1IngressFrom? ingressFrom;

  /// Defines the conditions on the ApiOperation and request destination that
  /// cause this IngressPolicy to apply.
  GoogleIdentityAccesscontextmanagerV1IngressTo? ingressTo;

  /// Human-readable title for the ingress rule.
  ///
  /// The title must be unique within the perimeter and can not exceed 100
  /// characters. Within the access policy, the combined length of all rule
  /// titles must not exceed 240,000 characters.
  ///
  /// Optional.
  core.String? title;

  GoogleIdentityAccesscontextmanagerV1IngressPolicy({
    this.ingressFrom,
    this.ingressTo,
    this.title,
  });

  GoogleIdentityAccesscontextmanagerV1IngressPolicy.fromJson(core.Map json_)
    : this(
        ingressFrom:
            json_.containsKey('ingressFrom')
                ? GoogleIdentityAccesscontextmanagerV1IngressFrom.fromJson(
                  json_['ingressFrom'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        ingressTo:
            json_.containsKey('ingressTo')
                ? GoogleIdentityAccesscontextmanagerV1IngressTo.fromJson(
                  json_['ingressTo'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        title: json_['title'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (ingressFrom != null) 'ingressFrom': ingressFrom!,
    if (ingressTo != null) 'ingressTo': ingressTo!,
    if (title != null) 'title': title!,
  };
}

/// The source that IngressPolicy authorizes access from.
typedef GoogleIdentityAccesscontextmanagerV1IngressSource = $IngressSource;

/// Defines the conditions under which an IngressPolicy matches a request.
///
/// Conditions are based on information about the ApiOperation intended to be
/// performed on the target resource of the request. The request must satisfy
/// what is defined in `operations` AND `resources` in order to match.
class GoogleIdentityAccesscontextmanagerV1IngressTo {
  /// A list of ApiOperations allowed to be performed by the sources specified
  /// in corresponding IngressFrom in this ServicePerimeter.
  core.List<GoogleIdentityAccesscontextmanagerV1ApiOperation>? operations;

  /// A list of resources, currently only projects in the form `projects/`,
  /// protected by this ServicePerimeter that are allowed to be accessed by
  /// sources defined in the corresponding IngressFrom.
  ///
  /// If a single `*` is specified, then access to all resources inside the
  /// perimeter are allowed.
  core.List<core.String>? resources;

  /// IAM roles that represent the set of operations that the sources specified
  /// in the corresponding IngressFrom are allowed to perform in this
  /// ServicePerimeter.
  core.List<core.String>? roles;

  GoogleIdentityAccesscontextmanagerV1IngressTo({
    this.operations,
    this.resources,
    this.roles,
  });

  GoogleIdentityAccesscontextmanagerV1IngressTo.fromJson(core.Map json_)
    : this(
        operations:
            (json_['operations'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleIdentityAccesscontextmanagerV1ApiOperation.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
        resources:
            (json_['resources'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        roles:
            (json_['roles'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (operations != null) 'operations': operations!,
    if (resources != null) 'resources': resources!,
    if (roles != null) 'roles': roles!,
  };
}

/// An allowed method or permission of a service specified in ApiOperation.
typedef GoogleIdentityAccesscontextmanagerV1MethodSelector = $MethodSelector;

/// A restriction on the OS type and version of devices making requests.
typedef GoogleIdentityAccesscontextmanagerV1OsConstraint = $OsConstraint;

/// `ServicePerimeter` describes a set of Google Cloud resources which can
/// freely import and export data amongst themselves, but not export outside of
/// the `ServicePerimeter`.
///
/// If a request with a source within this `ServicePerimeter` has a target
/// outside of the `ServicePerimeter`, the request will be blocked. Otherwise
/// the request is allowed. There are two types of Service Perimeter - Regular
/// and Bridge. Regular Service Perimeters cannot overlap, a single Google Cloud
/// project or VPC network can only belong to a single regular Service
/// Perimeter. Service Perimeter Bridges can contain only Google Cloud projects
/// as members, a single Google Cloud project may belong to multiple Service
/// Perimeter Bridges.
class GoogleIdentityAccesscontextmanagerV1ServicePerimeter {
  /// Description of the `ServicePerimeter` and its use.
  ///
  /// Does not affect behavior.
  core.String? description;

  /// An opaque identifier for the current version of the `ServicePerimeter`.
  ///
  /// This identifier does not follow any specific format. If an etag is not
  /// provided, the operation will be performed as if a valid etag is provided.
  ///
  /// Optional.
  core.String? etag;

  /// Identifier.
  ///
  /// Resource name for the `ServicePerimeter`. Format:
  /// `accessPolicies/{access_policy}/servicePerimeters/{service_perimeter}`.
  /// The `service_perimeter` component must begin with a letter, followed by
  /// alphanumeric characters or `_`. After you create a `ServicePerimeter`, you
  /// cannot change its `name`.
  core.String? name;

  /// Perimeter type indicator.
  ///
  /// A single project or VPC network is allowed to be a member of single
  /// regular perimeter, but multiple service perimeter bridges. A project
  /// cannot be a included in a perimeter bridge without being included in
  /// regular perimeter. For perimeter bridges, the restricted service list as
  /// well as access level lists must be empty.
  /// Possible string values are:
  /// - "PERIMETER_TYPE_REGULAR" : Regular Perimeter. When no value is
  /// specified, the perimeter uses this type.
  /// - "PERIMETER_TYPE_BRIDGE" : Perimeter Bridge.
  core.String? perimeterType;

  /// Proposed (or dry run) ServicePerimeter configuration.
  ///
  /// This configuration allows to specify and test ServicePerimeter
  /// configuration without enforcing actual access restrictions. Only allowed
  /// to be set when the "use_explicit_dry_run_spec" flag is set.
  GoogleIdentityAccesscontextmanagerV1ServicePerimeterConfig? spec;

  /// Current ServicePerimeter configuration.
  ///
  /// Specifies sets of resources, restricted services and access levels that
  /// determine perimeter content and boundaries.
  GoogleIdentityAccesscontextmanagerV1ServicePerimeterConfig? status;

  /// Human readable title.
  ///
  /// Must be unique within the Policy.
  core.String? title;

  /// Use explicit dry run spec flag.
  ///
  /// Ordinarily, a dry-run spec implicitly exists for all Service Perimeters,
  /// and that spec is identical to the status for those Service Perimeters.
  /// When this flag is set, it inhibits the generation of the implicit spec,
  /// thereby allowing the user to explicitly provide a configuration ("spec")
  /// to use in a dry-run version of the Service Perimeter. This allows the user
  /// to test changes to the enforced config ("status") without actually
  /// enforcing them. This testing is done through analyzing the differences
  /// between currently enforced and suggested restrictions.
  /// use_explicit_dry_run_spec must bet set to True if any of the fields in the
  /// spec are set to non-default values.
  core.bool? useExplicitDryRunSpec;

  GoogleIdentityAccesscontextmanagerV1ServicePerimeter({
    this.description,
    this.etag,
    this.name,
    this.perimeterType,
    this.spec,
    this.status,
    this.title,
    this.useExplicitDryRunSpec,
  });

  GoogleIdentityAccesscontextmanagerV1ServicePerimeter.fromJson(core.Map json_)
    : this(
        description: json_['description'] as core.String?,
        etag: json_['etag'] as core.String?,
        name: json_['name'] as core.String?,
        perimeterType: json_['perimeterType'] as core.String?,
        spec:
            json_.containsKey('spec')
                ? GoogleIdentityAccesscontextmanagerV1ServicePerimeterConfig.fromJson(
                  json_['spec'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        status:
            json_.containsKey('status')
                ? GoogleIdentityAccesscontextmanagerV1ServicePerimeterConfig.fromJson(
                  json_['status'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        title: json_['title'] as core.String?,
        useExplicitDryRunSpec: json_['useExplicitDryRunSpec'] as core.bool?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (description != null) 'description': description!,
    if (etag != null) 'etag': etag!,
    if (name != null) 'name': name!,
    if (perimeterType != null) 'perimeterType': perimeterType!,
    if (spec != null) 'spec': spec!,
    if (status != null) 'status': status!,
    if (title != null) 'title': title!,
    if (useExplicitDryRunSpec != null)
      'useExplicitDryRunSpec': useExplicitDryRunSpec!,
  };
}

/// `ServicePerimeterConfig` specifies a set of Google Cloud resources that
/// describe specific Service Perimeter configuration.
class GoogleIdentityAccesscontextmanagerV1ServicePerimeterConfig {
  /// A list of `AccessLevel` resource names that allow resources within the
  /// `ServicePerimeter` to be accessed from the internet.
  ///
  /// `AccessLevels` listed must be in the same policy as this
  /// `ServicePerimeter`. Referencing a nonexistent `AccessLevel` is a syntax
  /// error. If no `AccessLevel` names are listed, resources within the
  /// perimeter can only be accessed via Google Cloud calls with request origins
  /// within the perimeter. Example:
  /// `"accessPolicies/MY_POLICY/accessLevels/MY_LEVEL"`. For Service Perimeter
  /// Bridge, must be empty.
  core.List<core.String>? accessLevels;

  /// List of EgressPolicies to apply to the perimeter.
  ///
  /// A perimeter may have multiple EgressPolicies, each of which is evaluated
  /// separately. Access is granted if any EgressPolicy grants it. Must be empty
  /// for a perimeter bridge.
  core.List<GoogleIdentityAccesscontextmanagerV1EgressPolicy>? egressPolicies;

  /// List of IngressPolicies to apply to the perimeter.
  ///
  /// A perimeter may have multiple IngressPolicies, each of which is evaluated
  /// separately. Access is granted if any Ingress Policy grants it. Must be
  /// empty for a perimeter bridge.
  core.List<GoogleIdentityAccesscontextmanagerV1IngressPolicy>? ingressPolicies;

  /// A list of Google Cloud resources that are inside of the service perimeter.
  ///
  /// Currently only projects and VPCs are allowed. Project format:
  /// `projects/{project_number}` VPC network format:
  /// `//compute.googleapis.com/projects/{PROJECT_ID}/global/networks/{NAME}`.
  core.List<core.String>? resources;

  /// Google Cloud services that are subject to the Service Perimeter
  /// restrictions.
  ///
  /// For example, if `storage.googleapis.com` is specified, access to the
  /// storage buckets inside the perimeter must meet the perimeter's access
  /// restrictions.
  core.List<core.String>? restrictedServices;

  /// Configuration for APIs allowed within Perimeter.
  GoogleIdentityAccesscontextmanagerV1VpcAccessibleServices?
  vpcAccessibleServices;

  GoogleIdentityAccesscontextmanagerV1ServicePerimeterConfig({
    this.accessLevels,
    this.egressPolicies,
    this.ingressPolicies,
    this.resources,
    this.restrictedServices,
    this.vpcAccessibleServices,
  });

  GoogleIdentityAccesscontextmanagerV1ServicePerimeterConfig.fromJson(
    core.Map json_,
  ) : this(
        accessLevels:
            (json_['accessLevels'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        egressPolicies:
            (json_['egressPolicies'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleIdentityAccesscontextmanagerV1EgressPolicy.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
        ingressPolicies:
            (json_['ingressPolicies'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleIdentityAccesscontextmanagerV1IngressPolicy.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
        resources:
            (json_['resources'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        restrictedServices:
            (json_['restrictedServices'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        vpcAccessibleServices:
            json_.containsKey('vpcAccessibleServices')
                ? GoogleIdentityAccesscontextmanagerV1VpcAccessibleServices.fromJson(
                  json_['vpcAccessibleServices']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (accessLevels != null) 'accessLevels': accessLevels!,
    if (egressPolicies != null) 'egressPolicies': egressPolicies!,
    if (ingressPolicies != null) 'ingressPolicies': ingressPolicies!,
    if (resources != null) 'resources': resources!,
    if (restrictedServices != null) 'restrictedServices': restrictedServices!,
    if (vpcAccessibleServices != null)
      'vpcAccessibleServices': vpcAccessibleServices!,
  };
}

/// Specifies how APIs are allowed to communicate within the Service Perimeter.
typedef GoogleIdentityAccesscontextmanagerV1VpcAccessibleServices =
    $VpcAccessibleServices;

/// The originating network source in Google Cloud.
class GoogleIdentityAccesscontextmanagerV1VpcNetworkSource {
  /// Sub-segment ranges of a VPC network.
  GoogleIdentityAccesscontextmanagerV1VpcSubNetwork? vpcSubnetwork;

  GoogleIdentityAccesscontextmanagerV1VpcNetworkSource({this.vpcSubnetwork});

  GoogleIdentityAccesscontextmanagerV1VpcNetworkSource.fromJson(core.Map json_)
    : this(
        vpcSubnetwork:
            json_.containsKey('vpcSubnetwork')
                ? GoogleIdentityAccesscontextmanagerV1VpcSubNetwork.fromJson(
                  json_['vpcSubnetwork'] as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (vpcSubnetwork != null) 'vpcSubnetwork': vpcSubnetwork!,
  };
}

/// Sub-segment ranges inside of a VPC Network.
typedef GoogleIdentityAccesscontextmanagerV1VpcSubNetwork = $VpcSubNetwork;

/// ListAssets response.
class ListAssetsResponse {
  /// Assets.
  core.List<Asset>? assets;

  /// Token to retrieve the next page of results.
  ///
  /// It expires 72 hours after the page token for the first page is generated.
  /// Set to empty if there are no remaining results.
  core.String? nextPageToken;

  /// Time the snapshot was taken.
  core.String? readTime;

  ListAssetsResponse({this.assets, this.nextPageToken, this.readTime});

  ListAssetsResponse.fromJson(core.Map json_)
    : this(
        assets:
            (json_['assets'] as core.List?)
                ?.map(
                  (value) => Asset.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        nextPageToken: json_['nextPageToken'] as core.String?,
        readTime: json_['readTime'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (assets != null) 'assets': assets!,
    if (nextPageToken != null) 'nextPageToken': nextPageToken!,
    if (readTime != null) 'readTime': readTime!,
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

/// A representation of a Google Cloud resource.
class Resource {
  /// The content of the resource, in which some sensitive fields are removed
  /// and may not be present.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object?>? data;

  /// The URL of the discovery document containing the resource's JSON schema.
  ///
  /// Example: `https://www.googleapis.com/discovery/v1/apis/compute/v1/rest`
  /// This value is unspecified for resources that do not have an API based on a
  /// discovery document, such as Cloud Bigtable.
  core.String? discoveryDocumentUri;

  /// The JSON schema name listed in the discovery document.
  ///
  /// Example: `Project` This value is unspecified for resources that do not
  /// have an API based on a discovery document, such as Cloud Bigtable.
  core.String? discoveryName;

  /// The full name of the immediate parent of this resource.
  ///
  /// See
  /// [Resource Names](https://cloud.google.com/apis/design/resource_names#full_resource_name)
  /// for more information. For Google Cloud assets, this value is the parent
  /// resource defined in the
  /// [IAM policy hierarchy](https://cloud.google.com/iam/docs/overview#policy_hierarchy).
  /// Example: `//cloudresourcemanager.googleapis.com/projects/my_project_123`
  /// For third-party assets, this field may be set differently.
  core.String? parent;

  /// The REST URL for accessing the resource.
  ///
  /// An HTTP `GET` request using this URL returns the resource itself. Example:
  /// `https://cloudresourcemanager.googleapis.com/v1/projects/my-project-123`
  /// This value is unspecified for resources without a REST API.
  core.String? resourceUrl;

  /// The API version.
  ///
  /// Example: "v1".
  core.String? version;

  Resource({
    this.data,
    this.discoveryDocumentUri,
    this.discoveryName,
    this.parent,
    this.resourceUrl,
    this.version,
  });

  Resource.fromJson(core.Map json_)
    : this(
        data:
            json_.containsKey('data')
                ? json_['data'] as core.Map<core.String, core.dynamic>
                : null,
        discoveryDocumentUri: json_['discoveryDocumentUri'] as core.String?,
        discoveryName: json_['discoveryName'] as core.String?,
        parent: json_['parent'] as core.String?,
        resourceUrl: json_['resourceUrl'] as core.String?,
        version: json_['version'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (data != null) 'data': data!,
    if (discoveryDocumentUri != null)
      'discoveryDocumentUri': discoveryDocumentUri!,
    if (discoveryName != null) 'discoveryName': discoveryName!,
    if (parent != null) 'parent': parent!,
    if (resourceUrl != null) 'resourceUrl': resourceUrl!,
    if (version != null) 'version': version!,
  };
}
