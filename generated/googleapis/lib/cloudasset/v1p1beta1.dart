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

/// Cloud Asset API - v1p1beta1
///
/// The Cloud Asset API manages the history and inventory of Google Cloud
/// resources.
///
/// For more information, see
/// <https://cloud.google.com/asset-inventory/docs/quickstart>
///
/// Create an instance of [CloudAssetApi] to access these resources:
///
/// - [IamPoliciesResource]
/// - [ResourcesResource]
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

  IamPoliciesResource get iamPolicies => IamPoliciesResource(_requester);
  ResourcesResource get resources => ResourcesResource(_requester);

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

class IamPoliciesResource {
  final commons.ApiRequester _requester;

  IamPoliciesResource(commons.ApiRequester client) : _requester = client;

  /// Searches all the IAM policies within a given accessible Resource Manager
  /// scope (project/folder/organization).
  ///
  /// This RPC gives callers especially administrators the ability to search all
  /// the IAM policies within a scope, even if they don't have `.getIamPolicy`
  /// permission of all the IAM policies. Callers should have
  /// `cloudasset.assets.searchAllIamPolicies` permission on the requested
  /// scope, otherwise the request will be rejected.
  ///
  /// Request parameters:
  ///
  /// [scope] - Required. The relative name of an asset. The search is limited
  /// to the resources within the `scope`. The allowed value must be: *
  /// Organization number (such as "organizations/123") * Folder number (such as
  /// "folders/1234") * Project number (such as "projects/12345") * Project ID
  /// (such as "projects/abc")
  /// Value must have pattern `^\[^/\]+/\[^/\]+$`.
  ///
  /// [pageSize] - Optional. The page size for search result pagination. Page
  /// size is capped at 500 even if a larger value is given. If set to zero,
  /// server will pick an appropriate default. Returned results may be fewer
  /// than requested. When this happens, there could be more results as long as
  /// `next_page_token` is returned.
  ///
  /// [pageToken] - Optional. If present, retrieve the next batch of results
  /// from the preceding call to this method. `page_token` must be the value of
  /// `next_page_token` from the previous response. The values of all other
  /// method parameters must be identical to those in the previous call.
  ///
  /// [query] - Optional. The query statement. Examples: *
  /// "policy:myuser@mydomain.com" * "policy:(myuser@mydomain.com viewer)"
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [SearchAllIamPoliciesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<SearchAllIamPoliciesResponse> searchAll(
    core.String scope, {
    core.int? pageSize,
    core.String? pageToken,
    core.String? query,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if (query != null) 'query': [query],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1p1beta1/' + core.Uri.encodeFull('$scope') + '/iamPolicies:searchAll';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return SearchAllIamPoliciesResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class ResourcesResource {
  final commons.ApiRequester _requester;

  ResourcesResource(commons.ApiRequester client) : _requester = client;

  /// Searches all the resources within a given accessible Resource Manager
  /// scope (project/folder/organization).
  ///
  /// This RPC gives callers especially administrators the ability to search all
  /// the resources within a scope, even if they don't have `.get` permission of
  /// all the resources. Callers should have
  /// `cloudasset.assets.searchAllResources` permission on the requested scope,
  /// otherwise the request will be rejected.
  ///
  /// Request parameters:
  ///
  /// [scope] - Required. The relative name of an asset. The search is limited
  /// to the resources within the `scope`. The allowed value must be: *
  /// Organization number (such as "organizations/123") * Folder number (such as
  /// "folders/1234") * Project number (such as "projects/12345") * Project ID
  /// (such as "projects/abc")
  /// Value must have pattern `^\[^/\]+/\[^/\]+$`.
  ///
  /// [assetTypes] - Optional. A list of asset types that this request searches
  /// for. If empty, it will search all the supported asset types.
  ///
  /// [orderBy] - Optional. A comma separated list of fields specifying the
  /// sorting order of the results. The default order is ascending. Add ` DESC`
  /// after the field name to indicate descending order. Redundant space
  /// characters are ignored. For example, ` location DESC , name `.
  ///
  /// [pageSize] - Optional. The page size for search result pagination. Page
  /// size is capped at 500 even if a larger value is given. If set to zero,
  /// server will pick an appropriate default. Returned results may be fewer
  /// than requested. When this happens, there could be more results as long as
  /// `next_page_token` is returned.
  ///
  /// [pageToken] - Optional. If present, then retrieve the next batch of
  /// results from the preceding call to this method. `page_token` must be the
  /// value of `next_page_token` from the previous response. The values of all
  /// other method parameters, must be identical to those in the previous call.
  ///
  /// [query] - Optional. The query statement.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [SearchAllResourcesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<SearchAllResourcesResponse> searchAll(
    core.String scope, {
    core.List<core.String>? assetTypes,
    core.String? orderBy,
    core.int? pageSize,
    core.String? pageToken,
    core.String? query,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (assetTypes != null) 'assetTypes': assetTypes,
      if (orderBy != null) 'orderBy': [orderBy],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if (query != null) 'query': [query],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1p1beta1/' + core.Uri.encodeFull('$scope') + '/resources:searchAll';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return SearchAllResourcesResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
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

/// Explanation about the IAM policy search result.
class Explanation {
  /// The map from roles to their included permission matching the permission
  /// query (e.g. containing `policy.role.permissions:`).
  ///
  /// Example role string: "roles/compute.instanceAdmin". The roles can also be
  /// found in the returned `policy` bindings. Note that the map is populated
  /// only if requesting with a permission query.
  core.Map<core.String, Permissions>? matchedPermissions;

  Explanation({this.matchedPermissions});

  Explanation.fromJson(core.Map json_)
    : this(
        matchedPermissions: (json_['matchedPermissions']
                as core.Map<core.String, core.dynamic>?)
            ?.map(
              (key, value) => core.MapEntry(
                key,
                Permissions.fromJson(
                  value as core.Map<core.String, core.dynamic>,
                ),
              ),
            ),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (matchedPermissions != null) 'matchedPermissions': matchedPermissions!,
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

/// The result for an IAM policy search.
class IamPolicySearchResult {
  /// Explanation about the IAM policy search result.
  ///
  /// It contains additional information that explains why the search result
  /// matches the query.
  Explanation? explanation;

  /// The IAM policy attached to the specified resource.
  ///
  /// Note that the original IAM policy can contain multiple bindings. This only
  /// contains the bindings that match the given query. For queries that don't
  /// contain a constraint on policies (e.g. an empty query), this contains all
  /// the bindings.
  Policy? policy;

  /// The project that the associated Google Cloud resource belongs to, in the
  /// form of `projects/{project_number}`.
  ///
  /// If an IAM policy is set on a resource -- such as a Compute Engine instance
  /// or a Cloud Storage bucket -- the project field will indicate the project
  /// that contains the resource. If an IAM policy is set on a folder or
  /// organization, the project field will be empty.
  core.String? project;

  /// The
  /// [full resource name](https://cloud.google.com/apis/design/resource_names#full_resource_name)
  /// of the resource associated with this IAM policy.
  core.String? resource;

  IamPolicySearchResult({
    this.explanation,
    this.policy,
    this.project,
    this.resource,
  });

  IamPolicySearchResult.fromJson(core.Map json_)
    : this(
        explanation:
            json_.containsKey('explanation')
                ? Explanation.fromJson(
                  json_['explanation'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        policy:
            json_.containsKey('policy')
                ? Policy.fromJson(
                  json_['policy'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        project: json_['project'] as core.String?,
        resource: json_['resource'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (explanation != null) 'explanation': explanation!,
    if (policy != null) 'policy': policy!,
    if (project != null) 'project': project!,
    if (resource != null) 'resource': resource!,
  };
}

/// IAM permissions.
class Permissions {
  /// A list of permissions.
  ///
  /// Example permission string: "compute.disk.get".
  core.List<core.String>? permissions;

  Permissions({this.permissions});

  Permissions.fromJson(core.Map json_)
    : this(
        permissions:
            (json_['permissions'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (permissions != null) 'permissions': permissions!,
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

/// Search all IAM policies response.
class SearchAllIamPoliciesResponse {
  /// Set if there are more results than those appearing in this response; to
  /// get the next set of results, call this method again, using this value as
  /// the `page_token`.
  core.String? nextPageToken;

  /// A list of IAM policies that match the search query.
  ///
  /// Related information such as the associated resource is returned along with
  /// the policy.
  core.List<IamPolicySearchResult>? results;

  SearchAllIamPoliciesResponse({this.nextPageToken, this.results});

  SearchAllIamPoliciesResponse.fromJson(core.Map json_)
    : this(
        nextPageToken: json_['nextPageToken'] as core.String?,
        results:
            (json_['results'] as core.List?)
                ?.map(
                  (value) => IamPolicySearchResult.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (nextPageToken != null) 'nextPageToken': nextPageToken!,
    if (results != null) 'results': results!,
  };
}

/// Search all resources response.
class SearchAllResourcesResponse {
  /// If there are more results than those appearing in this response, then
  /// `next_page_token` is included.
  ///
  /// To get the next set of results, call this method again using the value of
  /// `next_page_token` as `page_token`.
  core.String? nextPageToken;

  /// A list of resource that match the search query.
  core.List<StandardResourceMetadata>? results;

  SearchAllResourcesResponse({this.nextPageToken, this.results});

  SearchAllResourcesResponse.fromJson(core.Map json_)
    : this(
        nextPageToken: json_['nextPageToken'] as core.String?,
        results:
            (json_['results'] as core.List?)
                ?.map(
                  (value) => StandardResourceMetadata.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (nextPageToken != null) 'nextPageToken': nextPageToken!,
    if (results != null) 'results': results!,
  };
}

/// The standard metadata of a cloud resource.
class StandardResourceMetadata {
  /// Additional searchable attributes of this resource.
  ///
  /// Informational only. The exact set of attributes is subject to change. For
  /// example: project id, DNS name etc.
  core.List<core.String>? additionalAttributes;

  /// The type of this resource.
  ///
  /// For example: "compute.googleapis.com/Disk".
  core.String? assetType;

  /// One or more paragraphs of text description of this resource.
  ///
  /// Maximum length could be up to 1M bytes.
  core.String? description;

  /// The display name of this resource.
  core.String? displayName;

  /// Labels associated with this resource.
  ///
  /// See
  /// [Labelling and grouping Google Cloud resources](https://cloud.google.com/blog/products/gcp/labelling-and-grouping-your-google-cloud-platform-resources)
  /// for more information.
  core.Map<core.String, core.String>? labels;

  /// Location can be "global", regional like "us-east1", or zonal like
  /// "us-west1-b".
  core.String? location;

  /// The full resource name.
  ///
  /// For example:
  /// `//compute.googleapis.com/projects/my_project_123/zones/zone1/instances/instance1`.
  /// See
  /// [Resource Names](https://cloud.google.com/apis/design/resource_names#full_resource_name)
  /// for more information.
  core.String? name;

  /// Network tags associated with this resource.
  ///
  /// Like labels, network tags are a type of annotations used to group Google
  /// Cloud resources. See \[Labelling Google Cloud
  /// resources\](lhttps://cloud.google.com/blog/products/gcp/labelling-and-grouping-your-google-cloud-platform-resources)
  /// for more information.
  core.List<core.String>? networkTags;

  /// The project that this resource belongs to, in the form of
  /// `projects/{project_number}`.
  core.String? project;

  StandardResourceMetadata({
    this.additionalAttributes,
    this.assetType,
    this.description,
    this.displayName,
    this.labels,
    this.location,
    this.name,
    this.networkTags,
    this.project,
  });

  StandardResourceMetadata.fromJson(core.Map json_)
    : this(
        additionalAttributes:
            (json_['additionalAttributes'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        assetType: json_['assetType'] as core.String?,
        description: json_['description'] as core.String?,
        displayName: json_['displayName'] as core.String?,
        labels: (json_['labels'] as core.Map<core.String, core.dynamic>?)?.map(
          (key, value) => core.MapEntry(key, value as core.String),
        ),
        location: json_['location'] as core.String?,
        name: json_['name'] as core.String?,
        networkTags:
            (json_['networkTags'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        project: json_['project'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (additionalAttributes != null)
      'additionalAttributes': additionalAttributes!,
    if (assetType != null) 'assetType': assetType!,
    if (description != null) 'description': description!,
    if (displayName != null) 'displayName': displayName!,
    if (labels != null) 'labels': labels!,
    if (location != null) 'location': location!,
    if (name != null) 'name': name!,
    if (networkTags != null) 'networkTags': networkTags!,
    if (project != null) 'project': project!,
  };
}
