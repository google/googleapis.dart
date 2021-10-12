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

/// Policy Troubleshooter API - v1
///
/// For more information, see <https://cloud.google.com/iam/>
///
/// Create an instance of [PolicyTroubleshooterApi] to access these resources:
///
/// - [IamResource]
library policytroubleshooter.v1;

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

class PolicyTroubleshooterApi {
  /// See, edit, configure, and delete your Google Cloud data and see the email
  /// address for your Google Account.
  static const cloudPlatformScope =
      'https://www.googleapis.com/auth/cloud-platform';

  final commons.ApiRequester _requester;

  IamResource get iam => IamResource(_requester);

  PolicyTroubleshooterApi(http.Client client,
      {core.String rootUrl = 'https://policytroubleshooter.googleapis.com/',
      core.String servicePath = ''})
      : _requester =
            commons.ApiRequester(client, rootUrl, servicePath, requestHeaders);
}

class IamResource {
  final commons.ApiRequester _requester;

  IamResource(commons.ApiRequester client) : _requester = client;

  /// Checks whether a principal has a specific permission for a specific
  /// resource, and explains why the principal does or does not have that
  /// permission.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a
  /// [GoogleCloudPolicytroubleshooterV1TroubleshootIamPolicyResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudPolicytroubleshooterV1TroubleshootIamPolicyResponse>
      troubleshoot(
    GoogleCloudPolicytroubleshooterV1TroubleshootIamPolicyRequest request, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    const _url = 'v1/iam:troubleshoot';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return GoogleCloudPolicytroubleshooterV1TroubleshootIamPolicyResponse
        .fromJson(_response as core.Map<core.String, core.dynamic>);
  }
}

/// Information about the principal, resource, and permission to check.
typedef GoogleCloudPolicytroubleshooterV1AccessTuple = $V1AccessTuple;

/// Details about how a binding in a policy affects a principal's ability to use
/// a permission.
class GoogleCloudPolicytroubleshooterV1BindingExplanation {
  /// Indicates whether _this binding_ provides the specified permission to the
  /// specified principal for the specified resource.
  ///
  /// This field does _not_ indicate whether the principal actually has the
  /// permission for the resource. There might be another binding that overrides
  /// this binding. To determine whether the principal actually has the
  /// permission, use the `access` field in the TroubleshootIamPolicyResponse.
  ///
  /// Required.
  /// Possible string values are:
  /// - "ACCESS_STATE_UNSPECIFIED" : Default value. This value is unused.
  /// - "GRANTED" : The principal has the permission.
  /// - "NOT_GRANTED" : The principal does not have the permission.
  /// - "UNKNOWN_CONDITIONAL" : The principal has the permission only if a
  /// condition expression evaluates to `true`.
  /// - "UNKNOWN_INFO_DENIED" : The sender of the request does not have access
  /// to all of the policies that Policy Troubleshooter needs to evaluate.
  core.String? access;

  /// A condition expression that prevents this binding from granting access
  /// unless the expression evaluates to `true`.
  ///
  /// To learn about IAM Conditions, see
  /// https://cloud.google.com/iam/help/conditions/overview.
  GoogleTypeExpr? condition;

  /// Indicates whether each principal in the binding includes the principal
  /// specified in the request, either directly or indirectly.
  ///
  /// Each key identifies a principal in the binding, and each value indicates
  /// whether the principal in the binding includes the principal in the
  /// request. For example, suppose that a binding includes the following
  /// principals: * `user:alice@example.com` * `group:product-eng@example.com`
  /// You want to troubleshoot access for `user:bob@example.com`. This user is a
  /// principal of the group `group:product-eng@example.com`. For the first
  /// principal in the binding, the key is `user:alice@example.com`, and the
  /// `membership` field in the value is set to `MEMBERSHIP_NOT_INCLUDED`. For
  /// the second principal in the binding, the key is
  /// `group:product-eng@example.com`, and the `membership` field in the value
  /// is set to `MEMBERSHIP_INCLUDED`.
  core.Map<core.String,
          GoogleCloudPolicytroubleshooterV1BindingExplanationAnnotatedMembership>?
      memberships;

  /// The relevance of this binding to the overall determination for the entire
  /// policy.
  /// Possible string values are:
  /// - "HEURISTIC_RELEVANCE_UNSPECIFIED" : Default value. This value is unused.
  /// - "NORMAL" : The data point has a limited effect on the result. Changing
  /// the data point is unlikely to affect the overall determination.
  /// - "HIGH" : The data point has a strong effect on the result. Changing the
  /// data point is likely to affect the overall determination.
  core.String? relevance;

  /// The role that this binding grants.
  ///
  /// For example, `roles/compute.serviceAgent`. For a complete list of
  /// predefined IAM roles, as well as the permissions in each role, see
  /// https://cloud.google.com/iam/help/roles/reference.
  core.String? role;

  /// Indicates whether the role granted by this binding contains the specified
  /// permission.
  /// Possible string values are:
  /// - "ROLE_PERMISSION_UNSPECIFIED" : Default value. This value is unused.
  /// - "ROLE_PERMISSION_INCLUDED" : The permission is included in the role.
  /// - "ROLE_PERMISSION_NOT_INCLUDED" : The permission is not included in the
  /// role.
  /// - "ROLE_PERMISSION_UNKNOWN_INFO_DENIED" : The sender of the request is not
  /// allowed to access the binding.
  core.String? rolePermission;

  /// The relevance of the permission's existence, or nonexistence, in the role
  /// to the overall determination for the entire policy.
  /// Possible string values are:
  /// - "HEURISTIC_RELEVANCE_UNSPECIFIED" : Default value. This value is unused.
  /// - "NORMAL" : The data point has a limited effect on the result. Changing
  /// the data point is unlikely to affect the overall determination.
  /// - "HIGH" : The data point has a strong effect on the result. Changing the
  /// data point is likely to affect the overall determination.
  core.String? rolePermissionRelevance;

  GoogleCloudPolicytroubleshooterV1BindingExplanation({
    this.access,
    this.condition,
    this.memberships,
    this.relevance,
    this.role,
    this.rolePermission,
    this.rolePermissionRelevance,
  });

  GoogleCloudPolicytroubleshooterV1BindingExplanation.fromJson(core.Map _json)
      : this(
          access: _json.containsKey('access')
              ? _json['access'] as core.String
              : null,
          condition: _json.containsKey('condition')
              ? GoogleTypeExpr.fromJson(
                  _json['condition'] as core.Map<core.String, core.dynamic>)
              : null,
          memberships: _json.containsKey('memberships')
              ? (_json['memberships'] as core.Map<core.String, core.dynamic>)
                  .map(
                  (key, item) => core.MapEntry(
                    key,
                    GoogleCloudPolicytroubleshooterV1BindingExplanationAnnotatedMembership
                        .fromJson(item as core.Map<core.String, core.dynamic>),
                  ),
                )
              : null,
          relevance: _json.containsKey('relevance')
              ? _json['relevance'] as core.String
              : null,
          role: _json.containsKey('role') ? _json['role'] as core.String : null,
          rolePermission: _json.containsKey('rolePermission')
              ? _json['rolePermission'] as core.String
              : null,
          rolePermissionRelevance: _json.containsKey('rolePermissionRelevance')
              ? _json['rolePermissionRelevance'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (access != null) 'access': access!,
        if (condition != null) 'condition': condition!,
        if (memberships != null) 'memberships': memberships!,
        if (relevance != null) 'relevance': relevance!,
        if (role != null) 'role': role!,
        if (rolePermission != null) 'rolePermission': rolePermission!,
        if (rolePermissionRelevance != null)
          'rolePermissionRelevance': rolePermissionRelevance!,
      };
}

/// Details about whether the binding includes the principal.
class GoogleCloudPolicytroubleshooterV1BindingExplanationAnnotatedMembership {
  /// Indicates whether the binding includes the principal.
  /// Possible string values are:
  /// - "MEMBERSHIP_UNSPECIFIED" : Default value. This value is unused.
  /// - "MEMBERSHIP_INCLUDED" : The binding includes the principal. The
  /// principal can be included directly or indirectly. For example: * A
  /// principal is included directly if that principal is listed in the binding.
  /// * A principal is included indirectly if that principal is in a Google
  /// group or Google Workspace domain that is listed in the binding.
  /// - "MEMBERSHIP_NOT_INCLUDED" : The binding does not include the principal.
  /// - "MEMBERSHIP_UNKNOWN_INFO_DENIED" : The sender of the request is not
  /// allowed to access the binding.
  /// - "MEMBERSHIP_UNKNOWN_UNSUPPORTED" : The principal is an unsupported type.
  /// Only Google Accounts and service accounts are supported.
  core.String? membership;

  /// The relevance of the principal's status to the overall determination for
  /// the binding.
  /// Possible string values are:
  /// - "HEURISTIC_RELEVANCE_UNSPECIFIED" : Default value. This value is unused.
  /// - "NORMAL" : The data point has a limited effect on the result. Changing
  /// the data point is unlikely to affect the overall determination.
  /// - "HIGH" : The data point has a strong effect on the result. Changing the
  /// data point is likely to affect the overall determination.
  core.String? relevance;

  GoogleCloudPolicytroubleshooterV1BindingExplanationAnnotatedMembership({
    this.membership,
    this.relevance,
  });

  GoogleCloudPolicytroubleshooterV1BindingExplanationAnnotatedMembership.fromJson(
      core.Map _json)
      : this(
          membership: _json.containsKey('membership')
              ? _json['membership'] as core.String
              : null,
          relevance: _json.containsKey('relevance')
              ? _json['relevance'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (membership != null) 'membership': membership!,
        if (relevance != null) 'relevance': relevance!,
      };
}

/// Details about how a specific IAM Policy contributed to the access check.
class GoogleCloudPolicytroubleshooterV1ExplainedPolicy {
  /// Indicates whether _this policy_ provides the specified permission to the
  /// specified principal for the specified resource.
  ///
  /// This field does _not_ indicate whether the principal actually has the
  /// permission for the resource. There might be another policy that overrides
  /// this policy. To determine whether the principal actually has the
  /// permission, use the `access` field in the TroubleshootIamPolicyResponse.
  /// Possible string values are:
  /// - "ACCESS_STATE_UNSPECIFIED" : Default value. This value is unused.
  /// - "GRANTED" : The principal has the permission.
  /// - "NOT_GRANTED" : The principal does not have the permission.
  /// - "UNKNOWN_CONDITIONAL" : The principal has the permission only if a
  /// condition expression evaluates to `true`.
  /// - "UNKNOWN_INFO_DENIED" : The sender of the request does not have access
  /// to all of the policies that Policy Troubleshooter needs to evaluate.
  core.String? access;

  /// Details about how each binding in the policy affects the principal's
  /// ability, or inability, to use the permission for the resource.
  ///
  /// If the sender of the request does not have access to the policy, this
  /// field is omitted.
  core.List<GoogleCloudPolicytroubleshooterV1BindingExplanation>?
      bindingExplanations;

  /// The full resource name that identifies the resource.
  ///
  /// For example,
  /// `//compute.googleapis.com/projects/my-project/zones/us-central1-a/instances/my-instance`.
  /// If the sender of the request does not have access to the policy, this
  /// field is omitted. For examples of full resource names for Google Cloud
  /// services, see
  /// https://cloud.google.com/iam/help/troubleshooter/full-resource-names.
  core.String? fullResourceName;

  /// The IAM policy attached to the resource.
  ///
  /// If the sender of the request does not have access to the policy, this
  /// field is empty.
  GoogleIamV1Policy? policy;

  /// The relevance of this policy to the overall determination in the
  /// TroubleshootIamPolicyResponse.
  ///
  /// If the sender of the request does not have access to the policy, this
  /// field is omitted.
  /// Possible string values are:
  /// - "HEURISTIC_RELEVANCE_UNSPECIFIED" : Default value. This value is unused.
  /// - "NORMAL" : The data point has a limited effect on the result. Changing
  /// the data point is unlikely to affect the overall determination.
  /// - "HIGH" : The data point has a strong effect on the result. Changing the
  /// data point is likely to affect the overall determination.
  core.String? relevance;

  GoogleCloudPolicytroubleshooterV1ExplainedPolicy({
    this.access,
    this.bindingExplanations,
    this.fullResourceName,
    this.policy,
    this.relevance,
  });

  GoogleCloudPolicytroubleshooterV1ExplainedPolicy.fromJson(core.Map _json)
      : this(
          access: _json.containsKey('access')
              ? _json['access'] as core.String
              : null,
          bindingExplanations: _json.containsKey('bindingExplanations')
              ? (_json['bindingExplanations'] as core.List)
                  .map((value) =>
                      GoogleCloudPolicytroubleshooterV1BindingExplanation
                          .fromJson(
                              value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          fullResourceName: _json.containsKey('fullResourceName')
              ? _json['fullResourceName'] as core.String
              : null,
          policy: _json.containsKey('policy')
              ? GoogleIamV1Policy.fromJson(
                  _json['policy'] as core.Map<core.String, core.dynamic>)
              : null,
          relevance: _json.containsKey('relevance')
              ? _json['relevance'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (access != null) 'access': access!,
        if (bindingExplanations != null)
          'bindingExplanations': bindingExplanations!,
        if (fullResourceName != null) 'fullResourceName': fullResourceName!,
        if (policy != null) 'policy': policy!,
        if (relevance != null) 'relevance': relevance!,
      };
}

/// Request for TroubleshootIamPolicy.
class GoogleCloudPolicytroubleshooterV1TroubleshootIamPolicyRequest {
  /// The information to use for checking whether a principal has a permission
  /// for a resource.
  GoogleCloudPolicytroubleshooterV1AccessTuple? accessTuple;

  GoogleCloudPolicytroubleshooterV1TroubleshootIamPolicyRequest({
    this.accessTuple,
  });

  GoogleCloudPolicytroubleshooterV1TroubleshootIamPolicyRequest.fromJson(
      core.Map _json)
      : this(
          accessTuple: _json.containsKey('accessTuple')
              ? GoogleCloudPolicytroubleshooterV1AccessTuple.fromJson(
                  _json['accessTuple'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (accessTuple != null) 'accessTuple': accessTuple!,
      };
}

/// Response for TroubleshootIamPolicy.
class GoogleCloudPolicytroubleshooterV1TroubleshootIamPolicyResponse {
  /// Indicates whether the principal has the specified permission for the
  /// specified resource, based on evaluating all of the applicable IAM
  /// policies.
  /// Possible string values are:
  /// - "ACCESS_STATE_UNSPECIFIED" : Default value. This value is unused.
  /// - "GRANTED" : The principal has the permission.
  /// - "NOT_GRANTED" : The principal does not have the permission.
  /// - "UNKNOWN_CONDITIONAL" : The principal has the permission only if a
  /// condition expression evaluates to `true`.
  /// - "UNKNOWN_INFO_DENIED" : The sender of the request does not have access
  /// to all of the policies that Policy Troubleshooter needs to evaluate.
  core.String? access;

  /// List of IAM policies that were evaluated to check the principal's
  /// permissions, with annotations to indicate how each policy contributed to
  /// the final result.
  ///
  /// The list of policies can include the policy for the resource itself. It
  /// can also include policies that are inherited from higher levels of the
  /// resource hierarchy, including the organization, the folder, and the
  /// project. To learn more about the resource hierarchy, see
  /// https://cloud.google.com/iam/help/resource-hierarchy.
  core.List<GoogleCloudPolicytroubleshooterV1ExplainedPolicy>?
      explainedPolicies;

  GoogleCloudPolicytroubleshooterV1TroubleshootIamPolicyResponse({
    this.access,
    this.explainedPolicies,
  });

  GoogleCloudPolicytroubleshooterV1TroubleshootIamPolicyResponse.fromJson(
      core.Map _json)
      : this(
          access: _json.containsKey('access')
              ? _json['access'] as core.String
              : null,
          explainedPolicies: _json.containsKey('explainedPolicies')
              ? (_json['explainedPolicies'] as core.List)
                  .map((value) =>
                      GoogleCloudPolicytroubleshooterV1ExplainedPolicy.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (access != null) 'access': access!,
        if (explainedPolicies != null) 'explainedPolicies': explainedPolicies!,
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
/// logging. It also exempts jose@example.com from DATA_READ logging, and
/// aliya@example.com from DATA_WRITE logging.
class GoogleIamV1AuditConfig {
  /// The configuration for logging of each type of permission.
  core.List<GoogleIamV1AuditLogConfig>? auditLogConfigs;

  /// Specifies a service that will be enabled for audit logging.
  ///
  /// For example, `storage.googleapis.com`, `cloudsql.googleapis.com`.
  /// `allServices` is a special value that covers all services.
  core.String? service;

  GoogleIamV1AuditConfig({
    this.auditLogConfigs,
    this.service,
  });

  GoogleIamV1AuditConfig.fromJson(core.Map _json)
      : this(
          auditLogConfigs: _json.containsKey('auditLogConfigs')
              ? (_json['auditLogConfigs'] as core.List)
                  .map((value) => GoogleIamV1AuditLogConfig.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          service: _json.containsKey('service')
              ? _json['service'] as core.String
              : null,
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
typedef GoogleIamV1AuditLogConfig = $AuditLogConfig;

/// Associates `members`, or principals, with a `role`.
class GoogleIamV1Binding {
  /// The condition that is associated with this binding.
  ///
  /// If the condition evaluates to `true`, then this binding applies to the
  /// current request. If the condition evaluates to `false`, then this binding
  /// does not apply to the current request. However, a different role binding
  /// might grant the same role to one or more of the principals in this
  /// binding. To learn which resources support conditions in their IAM
  /// policies, see the
  /// [IAM documentation](https://cloud.google.com/iam/help/conditions/resource-policies).
  GoogleTypeExpr? condition;

  /// Specifies the principals requesting access for a Cloud Platform resource.
  ///
  /// `members` can have the following values: * `allUsers`: A special
  /// identifier that represents anyone who is on the internet; with or without
  /// a Google account. * `allAuthenticatedUsers`: A special identifier that
  /// represents anyone who is authenticated with a Google account or a service
  /// account. * `user:{emailid}`: An email address that represents a specific
  /// Google account. For example, `alice@example.com` . *
  /// `serviceAccount:{emailid}`: An email address that represents a service
  /// account. For example, `my-other-app@appspot.gserviceaccount.com`. *
  /// `group:{emailid}`: An email address that represents a Google group. For
  /// example, `admins@example.com`. * `deleted:user:{emailid}?uid={uniqueid}`:
  /// An email address (plus unique identifier) representing a user that has
  /// been recently deleted. For example,
  /// `alice@example.com?uid=123456789012345678901`. If the user is recovered,
  /// this value reverts to `user:{emailid}` and the recovered user retains the
  /// role in the binding. * `deleted:serviceAccount:{emailid}?uid={uniqueid}`:
  /// An email address (plus unique identifier) representing a service account
  /// that has been recently deleted. For example,
  /// `my-other-app@appspot.gserviceaccount.com?uid=123456789012345678901`. If
  /// the service account is undeleted, this value reverts to
  /// `serviceAccount:{emailid}` and the undeleted service account retains the
  /// role in the binding. * `deleted:group:{emailid}?uid={uniqueid}`: An email
  /// address (plus unique identifier) representing a Google group that has been
  /// recently deleted. For example,
  /// `admins@example.com?uid=123456789012345678901`. If the group is recovered,
  /// this value reverts to `group:{emailid}` and the recovered group retains
  /// the role in the binding. * `domain:{domain}`: The G Suite domain (primary)
  /// that represents all the users of that domain. For example, `google.com` or
  /// `example.com`.
  core.List<core.String>? members;

  /// Role that is assigned to the list of `members`, or principals.
  ///
  /// For example, `roles/viewer`, `roles/editor`, or `roles/owner`.
  core.String? role;

  GoogleIamV1Binding({
    this.condition,
    this.members,
    this.role,
  });

  GoogleIamV1Binding.fromJson(core.Map _json)
      : this(
          condition: _json.containsKey('condition')
              ? GoogleTypeExpr.fromJson(
                  _json['condition'] as core.Map<core.String, core.dynamic>)
              : null,
          members: _json.containsKey('members')
              ? (_json['members'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          role: _json.containsKey('role') ? _json['role'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (condition != null) 'condition': condition!,
        if (members != null) 'members': members!,
        if (role != null) 'role': role!,
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
/// **JSON example:** { "bindings": \[ { "role":
/// "roles/resourcemanager.organizationAdmin", "members": \[
/// "user:mike@example.com", "group:admins@example.com", "domain:google.com",
/// "serviceAccount:my-project-id@appspot.gserviceaccount.com" \] }, { "role":
/// "roles/resourcemanager.organizationViewer", "members": \[
/// "user:eve@example.com" \], "condition": { "title": "expirable access",
/// "description": "Does not grant access after Sep 2020", "expression":
/// "request.time < timestamp('2020-10-01T00:00:00.000Z')", } } \], "etag":
/// "BwWWja0YfJA=", "version": 3 } **YAML example:** bindings: - members: -
/// user:mike@example.com - group:admins@example.com - domain:google.com -
/// serviceAccount:my-project-id@appspot.gserviceaccount.com role:
/// roles/resourcemanager.organizationAdmin - members: - user:eve@example.com
/// role: roles/resourcemanager.organizationViewer condition: title: expirable
/// access description: Does not grant access after Sep 2020 expression:
/// request.time < timestamp('2020-10-01T00:00:00.000Z') etag: BwWWja0YfJA=
/// version: 3 For a description of IAM and its features, see the
/// [IAM documentation](https://cloud.google.com/iam/docs/).
class GoogleIamV1Policy {
  /// Specifies cloud audit logging configuration for this policy.
  core.List<GoogleIamV1AuditConfig>? auditConfigs;

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
  core.List<GoogleIamV1Binding>? bindings;

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

  set etagAsBytes(core.List<core.int> _bytes) {
    etag =
        convert.base64.encode(_bytes).replaceAll('/', '_').replaceAll('+', '-');
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

  GoogleIamV1Policy({
    this.auditConfigs,
    this.bindings,
    this.etag,
    this.version,
  });

  GoogleIamV1Policy.fromJson(core.Map _json)
      : this(
          auditConfigs: _json.containsKey('auditConfigs')
              ? (_json['auditConfigs'] as core.List)
                  .map((value) => GoogleIamV1AuditConfig.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          bindings: _json.containsKey('bindings')
              ? (_json['bindings'] as core.List)
                  .map((value) => GoogleIamV1Binding.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          etag: _json.containsKey('etag') ? _json['etag'] as core.String : null,
          version: _json.containsKey('version')
              ? _json['version'] as core.int
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (auditConfigs != null) 'auditConfigs': auditConfigs!,
        if (bindings != null) 'bindings': bindings!,
        if (etag != null) 'etag': etag!,
        if (version != null) 'version': version!,
      };
}

/// Represents a textual expression in the Common Expression Language (CEL)
/// syntax.
///
/// CEL is a C-like expression language. The syntax and semantics of CEL are
/// documented at https://github.com/google/cel-spec. Example (Comparison):
/// title: "Summary size limit" description: "Determines if a summary is less
/// than 100 chars" expression: "document.summary.size() < 100" Example
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
typedef GoogleTypeExpr = $Expr;
