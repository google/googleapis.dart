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

/// Policy Troubleshooter API - v3
///
/// For more information, see <https://cloud.google.com/iam/>
///
/// Create an instance of [PolicyTroubleshooterApi] to access these resources:
///
/// - [IamResource]
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

class PolicyTroubleshooterApi {
  /// See, edit, configure, and delete your Google Cloud data and see the email
  /// address for your Google Account.
  static const cloudPlatformScope =
      'https://www.googleapis.com/auth/cloud-platform';

  final commons.ApiRequester _requester;

  IamResource get iam => IamResource(_requester);

  PolicyTroubleshooterApi(
    http.Client client, {
    core.String rootUrl = 'https://policytroubleshooter.googleapis.com/',
    core.String servicePath = '',
  }) : _requester = commons.ApiRequester(
         client,
         rootUrl,
         servicePath,
         requestHeaders,
       );
}

class IamResource {
  final commons.ApiRequester _requester;

  IamResource(commons.ApiRequester client) : _requester = client;

  /// Checks whether a principal has a specific permission for a specific
  /// resource, and explains why the principal does or doesn't have that
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
  /// [GoogleCloudPolicytroubleshooterIamV3TroubleshootIamPolicyResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<
    GoogleCloudPolicytroubleshooterIamV3TroubleshootIamPolicyResponse
  >
  troubleshoot(
    GoogleCloudPolicytroubleshooterIamV3TroubleshootIamPolicyRequest request, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    const url_ = 'v3/iam:troubleshoot';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudPolicytroubleshooterIamV3TroubleshootIamPolicyResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

/// Information about the principal, resource, and permission to check.
class GoogleCloudPolicytroubleshooterIamV3AccessTuple {
  /// Additional context for the request, such as the request time or IP
  /// address.
  ///
  /// This context allows Policy Troubleshooter to troubleshoot conditional role
  /// bindings and deny rules.
  ///
  /// Optional.
  GoogleCloudPolicytroubleshooterIamV3ConditionContext? conditionContext;

  /// The full resource name that identifies the resource.
  ///
  /// For example,
  /// `//compute.googleapis.com/projects/my-project/zones/us-central1-a/instances/my-instance`.
  /// For examples of full resource names for Google Cloud services, see
  /// https://cloud.google.com/iam/help/troubleshooter/full-resource-names.
  ///
  /// Required.
  core.String? fullResourceName;

  /// The IAM permission to check for, either in the `v1` permission format or
  /// the `v2` permission format.
  ///
  /// For a complete list of IAM permissions in the `v1` format, see
  /// https://cloud.google.com/iam/help/permissions/reference. For a list of IAM
  /// permissions in the `v2` format, see
  /// https://cloud.google.com/iam/help/deny/supported-permissions. For a
  /// complete list of predefined IAM roles and the permissions in each role,
  /// see https://cloud.google.com/iam/help/roles/reference.
  ///
  /// Required.
  core.String? permission;

  /// The permission that Policy Troubleshooter checked for, in the `v2` format.
  ///
  /// Output only.
  core.String? permissionFqdn;

  /// The email address of the principal whose access you want to check.
  ///
  /// For example, `alice@example.com` or
  /// `my-service-account@my-project.iam.gserviceaccount.com`. The principal
  /// must be a Google Account or a service account. Other types of principals
  /// are not supported.
  ///
  /// Required.
  core.String? principal;

  GoogleCloudPolicytroubleshooterIamV3AccessTuple({
    this.conditionContext,
    this.fullResourceName,
    this.permission,
    this.permissionFqdn,
    this.principal,
  });

  GoogleCloudPolicytroubleshooterIamV3AccessTuple.fromJson(core.Map json_)
    : this(
        conditionContext: json_.containsKey('conditionContext')
            ? GoogleCloudPolicytroubleshooterIamV3ConditionContext.fromJson(
                json_['conditionContext']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        fullResourceName: json_['fullResourceName'] as core.String?,
        permission: json_['permission'] as core.String?,
        permissionFqdn: json_['permissionFqdn'] as core.String?,
        principal: json_['principal'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final conditionContext = this.conditionContext;
    final fullResourceName = this.fullResourceName;
    final permission = this.permission;
    final permissionFqdn = this.permissionFqdn;
    final principal = this.principal;
    return {
      'conditionContext': ?conditionContext,
      'fullResourceName': ?fullResourceName,
      'permission': ?permission,
      'permissionFqdn': ?permissionFqdn,
      'principal': ?principal,
    };
  }
}

/// Details about how a role binding in an allow policy affects a principal's
/// ability to use a permission.
class GoogleCloudPolicytroubleshooterIamV3AllowBindingExplanation {
  /// Indicates whether _this role binding_ gives the specified permission to
  /// the specified principal on the specified resource.
  ///
  /// This field does _not_ indicate whether the principal actually has the
  /// permission on the resource. There might be another role binding that
  /// overrides this role binding. To determine whether the principal actually
  /// has the permission, use the `overall_access_state` field in the
  /// TroubleshootIamPolicyResponse.
  ///
  /// Required.
  /// Possible string values are:
  /// - "ALLOW_ACCESS_STATE_UNSPECIFIED" : Not specified.
  /// - "ALLOW_ACCESS_STATE_GRANTED" : The allow policy gives the principal the
  /// permission.
  /// - "ALLOW_ACCESS_STATE_NOT_GRANTED" : The allow policy doesn't give the
  /// principal the permission.
  /// - "ALLOW_ACCESS_STATE_UNKNOWN_CONDITIONAL" : The allow policy gives the
  /// principal the permission if a condition expression evaluate to `true`.
  /// However, the sender of the request didn't provide enough context for
  /// Policy Troubleshooter to evaluate the condition expression.
  /// - "ALLOW_ACCESS_STATE_UNKNOWN_INFO" : The sender of the request doesn't
  /// have access to all of the allow policies that Policy Troubleshooter needs
  /// to evaluate the principal's access.
  core.String? allowAccessState;

  /// The combined result of all memberships.
  ///
  /// Indicates if the principal is included in any role binding, either
  /// directly or indirectly.
  GoogleCloudPolicytroubleshooterIamV3AllowBindingExplanationAnnotatedAllowMembership?
  combinedMembership;

  /// A condition expression that specifies when the role binding grants access.
  ///
  /// To learn about IAM Conditions, see
  /// https://cloud.google.com/iam/help/conditions/overview.
  GoogleTypeExpr? condition;

  /// Condition evaluation state for this role binding.
  GoogleCloudPolicytroubleshooterIamV3ConditionExplanation?
  conditionExplanation;

  /// Indicates whether each role binding includes the principal specified in
  /// the request, either directly or indirectly.
  ///
  /// Each key identifies a principal in the role binding, and each value
  /// indicates whether the principal in the role binding includes the principal
  /// in the request. For example, suppose that a role binding includes the
  /// following principals: * `user:alice@example.com` *
  /// `group:product-eng@example.com` You want to troubleshoot access for
  /// `user:bob@example.com`. This user is a member of the group
  /// `group:product-eng@example.com`. For the first principal in the role
  /// binding, the key is `user:alice@example.com`, and the `membership` field
  /// in the value is set to `NOT_INCLUDED`. For the second principal in the
  /// role binding, the key is `group:product-eng@example.com`, and the
  /// `membership` field in the value is set to `INCLUDED`.
  core.Map<
    core.String,
    GoogleCloudPolicytroubleshooterIamV3AllowBindingExplanationAnnotatedAllowMembership
  >?
  memberships;

  /// The relevance of this role binding to the overall determination for the
  /// entire policy.
  /// Possible string values are:
  /// - "HEURISTIC_RELEVANCE_UNSPECIFIED" : Not specified.
  /// - "HEURISTIC_RELEVANCE_NORMAL" : The data point has a limited effect on
  /// the result. Changing the data point is unlikely to affect the overall
  /// determination.
  /// - "HEURISTIC_RELEVANCE_HIGH" : The data point has a strong effect on the
  /// result. Changing the data point is likely to affect the overall
  /// determination.
  core.String? relevance;

  /// The role that this role binding grants.
  ///
  /// For example, `roles/compute.admin`. For a complete list of predefined IAM
  /// roles, as well as the permissions in each role, see
  /// https://cloud.google.com/iam/help/roles/reference.
  core.String? role;

  /// Indicates whether the role granted by this role binding contains the
  /// specified permission.
  /// Possible string values are:
  /// - "ROLE_PERMISSION_INCLUSION_STATE_UNSPECIFIED" : Not specified.
  /// - "ROLE_PERMISSION_INCLUDED" : The permission is included in the role.
  /// - "ROLE_PERMISSION_NOT_INCLUDED" : The permission is not included in the
  /// role.
  /// - "ROLE_PERMISSION_UNKNOWN_INFO" : The sender of the request is not
  /// allowed to access the role definition.
  core.String? rolePermission;

  /// The relevance of the permission's existence, or nonexistence, in the role
  /// to the overall determination for the entire policy.
  /// Possible string values are:
  /// - "HEURISTIC_RELEVANCE_UNSPECIFIED" : Not specified.
  /// - "HEURISTIC_RELEVANCE_NORMAL" : The data point has a limited effect on
  /// the result. Changing the data point is unlikely to affect the overall
  /// determination.
  /// - "HEURISTIC_RELEVANCE_HIGH" : The data point has a strong effect on the
  /// result. Changing the data point is likely to affect the overall
  /// determination.
  core.String? rolePermissionRelevance;

  GoogleCloudPolicytroubleshooterIamV3AllowBindingExplanation({
    this.allowAccessState,
    this.combinedMembership,
    this.condition,
    this.conditionExplanation,
    this.memberships,
    this.relevance,
    this.role,
    this.rolePermission,
    this.rolePermissionRelevance,
  });

  GoogleCloudPolicytroubleshooterIamV3AllowBindingExplanation.fromJson(
    core.Map json_,
  ) : this(
        allowAccessState: json_['allowAccessState'] as core.String?,
        combinedMembership: json_.containsKey('combinedMembership')
            ? GoogleCloudPolicytroubleshooterIamV3AllowBindingExplanationAnnotatedAllowMembership.fromJson(
                json_['combinedMembership']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        condition: json_.containsKey('condition')
            ? GoogleTypeExpr.fromJson(
                json_['condition'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        conditionExplanation: json_.containsKey('conditionExplanation')
            ? GoogleCloudPolicytroubleshooterIamV3ConditionExplanation.fromJson(
                json_['conditionExplanation']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        memberships:
            (json_['memberships'] as core.Map<core.String, core.dynamic>?)?.map(
              (key, value) => core.MapEntry(
                key,
                GoogleCloudPolicytroubleshooterIamV3AllowBindingExplanationAnnotatedAllowMembership.fromJson(
                  value as core.Map<core.String, core.dynamic>,
                ),
              ),
            ),
        relevance: json_['relevance'] as core.String?,
        role: json_['role'] as core.String?,
        rolePermission: json_['rolePermission'] as core.String?,
        rolePermissionRelevance:
            json_['rolePermissionRelevance'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final allowAccessState = this.allowAccessState;
    final combinedMembership = this.combinedMembership;
    final condition = this.condition;
    final conditionExplanation = this.conditionExplanation;
    final memberships = this.memberships;
    final relevance = this.relevance;
    final role = this.role;
    final rolePermission = this.rolePermission;
    final rolePermissionRelevance = this.rolePermissionRelevance;
    return {
      'allowAccessState': ?allowAccessState,
      'combinedMembership': ?combinedMembership,
      'condition': ?condition,
      'conditionExplanation': ?conditionExplanation,
      'memberships': ?memberships,
      'relevance': ?relevance,
      'role': ?role,
      'rolePermission': ?rolePermission,
      'rolePermissionRelevance': ?rolePermissionRelevance,
    };
  }
}

/// Details about whether the role binding includes the principal.
class GoogleCloudPolicytroubleshooterIamV3AllowBindingExplanationAnnotatedAllowMembership {
  /// Indicates whether the role binding includes the principal.
  /// Possible string values are:
  /// - "MEMBERSHIP_MATCHING_STATE_UNSPECIFIED" : Not specified.
  /// - "MEMBERSHIP_MATCHED" : The principal in the request matches the
  /// principal in the policy. The principal can be included directly or
  /// indirectly: * A principal is included directly if that principal is listed
  /// in the role binding. * A principal is included indirectly if that
  /// principal is in a Google group, Google Workspace account, or Cloud
  /// Identity domain that is listed in the policy.
  /// - "MEMBERSHIP_NOT_MATCHED" : The principal in the request doesn't match
  /// the principal in the policy.
  /// - "MEMBERSHIP_UNKNOWN_INFO" : The principal in the policy is a group or
  /// domain, and the sender of the request doesn't have permission to view
  /// whether the principal in the request is a member of the group or domain.
  /// - "MEMBERSHIP_UNKNOWN_UNSUPPORTED" : The principal is an unsupported type.
  core.String? membership;

  /// The relevance of the principal's status to the overall determination for
  /// the role binding.
  /// Possible string values are:
  /// - "HEURISTIC_RELEVANCE_UNSPECIFIED" : Not specified.
  /// - "HEURISTIC_RELEVANCE_NORMAL" : The data point has a limited effect on
  /// the result. Changing the data point is unlikely to affect the overall
  /// determination.
  /// - "HEURISTIC_RELEVANCE_HIGH" : The data point has a strong effect on the
  /// result. Changing the data point is likely to affect the overall
  /// determination.
  core.String? relevance;

  GoogleCloudPolicytroubleshooterIamV3AllowBindingExplanationAnnotatedAllowMembership({
    this.membership,
    this.relevance,
  });

  GoogleCloudPolicytroubleshooterIamV3AllowBindingExplanationAnnotatedAllowMembership.fromJson(
    core.Map json_,
  ) : this(
        membership: json_['membership'] as core.String?,
        relevance: json_['relevance'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final membership = this.membership;
    final relevance = this.relevance;
    return {'membership': ?membership, 'relevance': ?relevance};
  }
}

/// Details about how the relevant IAM allow policies affect the final access
/// state.
class GoogleCloudPolicytroubleshooterIamV3AllowPolicyExplanation {
  /// Indicates whether the principal has the specified permission for the
  /// specified resource, based on evaluating all applicable IAM allow policies.
  /// Possible string values are:
  /// - "ALLOW_ACCESS_STATE_UNSPECIFIED" : Not specified.
  /// - "ALLOW_ACCESS_STATE_GRANTED" : The allow policy gives the principal the
  /// permission.
  /// - "ALLOW_ACCESS_STATE_NOT_GRANTED" : The allow policy doesn't give the
  /// principal the permission.
  /// - "ALLOW_ACCESS_STATE_UNKNOWN_CONDITIONAL" : The allow policy gives the
  /// principal the permission if a condition expression evaluate to `true`.
  /// However, the sender of the request didn't provide enough context for
  /// Policy Troubleshooter to evaluate the condition expression.
  /// - "ALLOW_ACCESS_STATE_UNKNOWN_INFO" : The sender of the request doesn't
  /// have access to all of the allow policies that Policy Troubleshooter needs
  /// to evaluate the principal's access.
  core.String? allowAccessState;

  /// List of IAM allow policies that were evaluated to check the principal's
  /// permissions, with annotations to indicate how each policy contributed to
  /// the final result.
  ///
  /// The list of policies includes the policy for the resource itself, as well
  /// as allow policies that are inherited from higher levels of the resource
  /// hierarchy, including the organization, the folder, and the project. To
  /// learn more about the resource hierarchy, see
  /// https://cloud.google.com/iam/help/resource-hierarchy.
  core.List<GoogleCloudPolicytroubleshooterIamV3ExplainedAllowPolicy>?
  explainedPolicies;

  /// The relevance of the allow policy type to the overall access state.
  /// Possible string values are:
  /// - "HEURISTIC_RELEVANCE_UNSPECIFIED" : Not specified.
  /// - "HEURISTIC_RELEVANCE_NORMAL" : The data point has a limited effect on
  /// the result. Changing the data point is unlikely to affect the overall
  /// determination.
  /// - "HEURISTIC_RELEVANCE_HIGH" : The data point has a strong effect on the
  /// result. Changing the data point is likely to affect the overall
  /// determination.
  core.String? relevance;

  GoogleCloudPolicytroubleshooterIamV3AllowPolicyExplanation({
    this.allowAccessState,
    this.explainedPolicies,
    this.relevance,
  });

  GoogleCloudPolicytroubleshooterIamV3AllowPolicyExplanation.fromJson(
    core.Map json_,
  ) : this(
        allowAccessState: json_['allowAccessState'] as core.String?,
        explainedPolicies: (json_['explainedPolicies'] as core.List?)
            ?.map(
              (value) =>
                  GoogleCloudPolicytroubleshooterIamV3ExplainedAllowPolicy.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
            )
            .toList(),
        relevance: json_['relevance'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final allowAccessState = this.allowAccessState;
    final explainedPolicies = this.explainedPolicies;
    final relevance = this.relevance;
    return {
      'allowAccessState': ?allowAccessState,
      'explainedPolicies': ?explainedPolicies,
      'relevance': ?relevance,
    };
  }
}

/// Additional context for troubleshooting conditional role bindings and deny
/// rules.
class GoogleCloudPolicytroubleshooterIamV3ConditionContext {
  /// The destination of a network activity, such as accepting a TCP connection.
  ///
  /// In a multi-hop network activity, the destination represents the receiver
  /// of the last hop.
  GoogleCloudPolicytroubleshooterIamV3ConditionContextPeer? destination;

  /// The effective tags on the resource.
  ///
  /// The effective tags are fetched during troubleshooting.
  ///
  /// Output only.
  core.List<GoogleCloudPolicytroubleshooterIamV3ConditionContextEffectiveTag>?
  effectiveTags;

  /// Represents a network request, such as an HTTP request.
  GoogleCloudPolicytroubleshooterIamV3ConditionContextRequest? request;

  /// Represents a target resource that is involved with a network activity.
  ///
  /// If multiple resources are involved with an activity, this must be the
  /// primary one.
  GoogleCloudPolicytroubleshooterIamV3ConditionContextResource? resource;

  GoogleCloudPolicytroubleshooterIamV3ConditionContext({
    this.destination,
    this.effectiveTags,
    this.request,
    this.resource,
  });

  GoogleCloudPolicytroubleshooterIamV3ConditionContext.fromJson(core.Map json_)
    : this(
        destination: json_.containsKey('destination')
            ? GoogleCloudPolicytroubleshooterIamV3ConditionContextPeer.fromJson(
                json_['destination'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        effectiveTags: (json_['effectiveTags'] as core.List?)
            ?.map(
              (value) =>
                  GoogleCloudPolicytroubleshooterIamV3ConditionContextEffectiveTag.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
            )
            .toList(),
        request: json_.containsKey('request')
            ? GoogleCloudPolicytroubleshooterIamV3ConditionContextRequest.fromJson(
                json_['request'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        resource: json_.containsKey('resource')
            ? GoogleCloudPolicytroubleshooterIamV3ConditionContextResource.fromJson(
                json_['resource'] as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final destination = this.destination;
    final effectiveTags = this.effectiveTags;
    final request = this.request;
    final resource = this.resource;
    return {
      'destination': ?destination,
      'effectiveTags': ?effectiveTags,
      'request': ?request,
      'resource': ?resource,
    };
  }
}

/// A tag that applies to a resource during policy evaluation.
///
/// Tags can be either directly bound to a resource or inherited from its
/// ancestor. `EffectiveTag` contains the `name` and `namespaced_name` of the
/// tag value and tag key, with additional fields of `inherited` to indicate the
/// inheritance status of the effective tag.
class GoogleCloudPolicytroubleshooterIamV3ConditionContextEffectiveTag {
  /// Indicates the inheritance status of a tag value attached to the given
  /// resource.
  ///
  /// If the tag value is inherited from one of the resource's ancestors,
  /// inherited will be true. If false, then the tag value is directly attached
  /// to the resource, inherited will be false.
  ///
  /// Output only.
  core.bool? inherited;

  /// The namespaced name of the TagKey.
  ///
  /// Can be in the form `{organization_id}/{tag_key_short_name}` or
  /// `{project_id}/{tag_key_short_name}` or
  /// `{project_number}/{tag_key_short_name}`.
  ///
  /// Output only.
  core.String? namespacedTagKey;

  /// The namespaced name of the TagValue.
  ///
  /// Can be in the form
  /// `{organization_id}/{tag_key_short_name}/{tag_value_short_name}` or
  /// `{project_id}/{tag_key_short_name}/{tag_value_short_name}` or
  /// `{project_number}/{tag_key_short_name}/{tag_value_short_name}`.
  ///
  /// Output only.
  core.String? namespacedTagValue;

  /// The name of the TagKey, in the format `tagKeys/{id}`, such as
  /// `tagKeys/123`.
  ///
  /// Output only.
  core.String? tagKey;

  /// The parent name of the tag key.
  ///
  /// Must be in the format `organizations/{organization_id}` or
  /// `projects/{project_number}`
  core.String? tagKeyParentName;

  /// Resource name for TagValue in the format `tagValues/456`.
  ///
  /// Output only.
  core.String? tagValue;

  GoogleCloudPolicytroubleshooterIamV3ConditionContextEffectiveTag({
    this.inherited,
    this.namespacedTagKey,
    this.namespacedTagValue,
    this.tagKey,
    this.tagKeyParentName,
    this.tagValue,
  });

  GoogleCloudPolicytroubleshooterIamV3ConditionContextEffectiveTag.fromJson(
    core.Map json_,
  ) : this(
        inherited: json_['inherited'] as core.bool?,
        namespacedTagKey: json_['namespacedTagKey'] as core.String?,
        namespacedTagValue: json_['namespacedTagValue'] as core.String?,
        tagKey: json_['tagKey'] as core.String?,
        tagKeyParentName: json_['tagKeyParentName'] as core.String?,
        tagValue: json_['tagValue'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final inherited = this.inherited;
    final namespacedTagKey = this.namespacedTagKey;
    final namespacedTagValue = this.namespacedTagValue;
    final tagKey = this.tagKey;
    final tagKeyParentName = this.tagKeyParentName;
    final tagValue = this.tagValue;
    return {
      'inherited': ?inherited,
      'namespacedTagKey': ?namespacedTagKey,
      'namespacedTagValue': ?namespacedTagValue,
      'tagKey': ?tagKey,
      'tagKeyParentName': ?tagKeyParentName,
      'tagValue': ?tagValue,
    };
  }
}

/// This message defines attributes for a node that handles a network request.
///
/// The node can be either a service or an application that sends, forwards, or
/// receives the request. Service peers should fill in `principal` and `labels`
/// as appropriate.
class GoogleCloudPolicytroubleshooterIamV3ConditionContextPeer {
  /// The IPv4 or IPv6 address of the peer.
  core.String? ip;

  /// The network port of the peer.
  core.String? port;

  GoogleCloudPolicytroubleshooterIamV3ConditionContextPeer({
    this.ip,
    this.port,
  });

  GoogleCloudPolicytroubleshooterIamV3ConditionContextPeer.fromJson(
    core.Map json_,
  ) : this(
        ip: json_['ip'] as core.String?,
        port: json_['port'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final ip = this.ip;
    final port = this.port;
    return {'ip': ?ip, 'port': ?port};
  }
}

/// This message defines attributes for an HTTP request.
///
/// If the actual request is not an HTTP request, the runtime system should try
/// to map the actual request to an equivalent HTTP request.
class GoogleCloudPolicytroubleshooterIamV3ConditionContextRequest {
  /// The timestamp when the destination service receives the first byte of the
  /// request.
  ///
  /// Optional.
  core.String? receiveTime;

  GoogleCloudPolicytroubleshooterIamV3ConditionContextRequest({
    this.receiveTime,
  });

  GoogleCloudPolicytroubleshooterIamV3ConditionContextRequest.fromJson(
    core.Map json_,
  ) : this(receiveTime: json_['receiveTime'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() {
    final receiveTime = this.receiveTime;
    return {'receiveTime': ?receiveTime};
  }
}

/// Core attributes for a resource.
///
/// A resource is an addressable (named) entity provided by the destination
/// service. For example, a Compute Engine instance.
class GoogleCloudPolicytroubleshooterIamV3ConditionContextResource {
  /// The stable identifier (name) of a resource on the `service`.
  ///
  /// A resource can be logically identified as
  /// `//{resource.service}/{resource.name}`. Unlike the resource URI, the
  /// resource name doesn't contain any protocol and version information. For a
  /// list of full resource name formats, see
  /// https://cloud.google.com/iam/help/troubleshooter/full-resource-names
  core.String? name;

  /// The name of the service that this resource belongs to, such as
  /// `compute.googleapis.com`.
  ///
  /// The service name might not match the DNS hostname that actually serves the
  /// request. For a full list of resource service values, see
  /// https://cloud.google.com/iam/help/conditions/resource-services
  core.String? service;

  /// The type of the resource, in the format `{service}/{kind}`.
  ///
  /// For a full list of resource type values, see
  /// https://cloud.google.com/iam/help/conditions/resource-types
  core.String? type;

  GoogleCloudPolicytroubleshooterIamV3ConditionContextResource({
    this.name,
    this.service,
    this.type,
  });

  GoogleCloudPolicytroubleshooterIamV3ConditionContextResource.fromJson(
    core.Map json_,
  ) : this(
        name: json_['name'] as core.String?,
        service: json_['service'] as core.String?,
        type: json_['type'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final name = this.name;
    final service = this.service;
    final type = this.type;
    return {'name': ?name, 'service': ?service, 'type': ?type};
  }
}

/// Explanation for how a condition affects a principal's access
class GoogleCloudPolicytroubleshooterIamV3ConditionExplanation {
  /// Any errors that prevented complete evaluation of the condition expression.
  core.List<GoogleRpcStatus>? errors;

  /// The value of each statement of the condition expression.
  ///
  /// The value can be `true`, `false`, or `null`. The value is `null` if the
  /// statement can't be evaluated.
  core.List<
    GoogleCloudPolicytroubleshooterIamV3ConditionExplanationEvaluationState
  >?
  evaluationStates;

  /// Value of the condition.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Object? value;

  GoogleCloudPolicytroubleshooterIamV3ConditionExplanation({
    this.errors,
    this.evaluationStates,
    this.value,
  });

  GoogleCloudPolicytroubleshooterIamV3ConditionExplanation.fromJson(
    core.Map json_,
  ) : this(
        errors: (json_['errors'] as core.List?)
            ?.map(
              (value) => GoogleRpcStatus.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        evaluationStates: (json_['evaluationStates'] as core.List?)
            ?.map(
              (value) =>
                  GoogleCloudPolicytroubleshooterIamV3ConditionExplanationEvaluationState.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
            )
            .toList(),
        value: json_['value'],
      );

  core.Map<core.String, core.dynamic> toJson() {
    final errors = this.errors;
    final evaluationStates = this.evaluationStates;
    final value = this.value;
    return {
      'errors': ?errors,
      'evaluationStates': ?evaluationStates,
      'value': ?value,
    };
  }
}

/// Evaluated state of a condition expression.
class GoogleCloudPolicytroubleshooterIamV3ConditionExplanationEvaluationState {
  /// End position of an expression in the condition, by character, end
  /// included, for example: the end position of the first part of `a==b ||
  /// c==d` would be 4.
  core.int? end;

  /// Any errors that prevented complete evaluation of the condition expression.
  core.List<GoogleRpcStatus>? errors;

  /// Start position of an expression in the condition, by character.
  core.int? start;

  /// Value of this expression.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Object? value;

  GoogleCloudPolicytroubleshooterIamV3ConditionExplanationEvaluationState({
    this.end,
    this.errors,
    this.start,
    this.value,
  });

  GoogleCloudPolicytroubleshooterIamV3ConditionExplanationEvaluationState.fromJson(
    core.Map json_,
  ) : this(
        end: json_['end'] as core.int?,
        errors: (json_['errors'] as core.List?)
            ?.map(
              (value) => GoogleRpcStatus.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        start: json_['start'] as core.int?,
        value: json_['value'],
      );

  core.Map<core.String, core.dynamic> toJson() {
    final end = this.end;
    final errors = this.errors;
    final start = this.start;
    final value = this.value;
    return {'end': ?end, 'errors': ?errors, 'start': ?start, 'value': ?value};
  }
}

/// Details about how the relevant IAM deny policies affect the final access
/// state.
class GoogleCloudPolicytroubleshooterIamV3DenyPolicyExplanation {
  /// Indicates whether the principal is denied the specified permission for the
  /// specified resource, based on evaluating all applicable IAM deny policies.
  /// Possible string values are:
  /// - "DENY_ACCESS_STATE_UNSPECIFIED" : Not specified.
  /// - "DENY_ACCESS_STATE_DENIED" : The deny policy denies the principal the
  /// permission.
  /// - "DENY_ACCESS_STATE_NOT_DENIED" : The deny policy doesn't deny the
  /// principal the permission.
  /// - "DENY_ACCESS_STATE_UNKNOWN_CONDITIONAL" : The deny policy denies the
  /// principal the permission if a condition expression evaluates to `true`.
  /// However, the sender of the request didn't provide enough context for
  /// Policy Troubleshooter to evaluate the condition expression.
  /// - "DENY_ACCESS_STATE_UNKNOWN_INFO" : The sender of the request does not
  /// have access to all of the deny policies that Policy Troubleshooter needs
  /// to evaluate the principal's access.
  core.String? denyAccessState;

  /// List of resources with IAM deny policies that were evaluated to check the
  /// principal's denied permissions, with annotations to indicate how each
  /// policy contributed to the final result.
  ///
  /// The list of resources includes the policy for the resource itself, as well
  /// as policies that are inherited from higher levels of the resource
  /// hierarchy, including the organization, the folder, and the project. The
  /// order of the resources starts from the resource and climbs up the resource
  /// hierarchy. To learn more about the resource hierarchy, see
  /// https://cloud.google.com/iam/help/resource-hierarchy.
  core.List<GoogleCloudPolicytroubleshooterIamV3ExplainedDenyResource>?
  explainedResources;

  /// Indicates whether the permission to troubleshoot is supported in deny
  /// policies.
  core.bool? permissionDeniable;

  /// The relevance of the deny policy result to the overall access state.
  /// Possible string values are:
  /// - "HEURISTIC_RELEVANCE_UNSPECIFIED" : Not specified.
  /// - "HEURISTIC_RELEVANCE_NORMAL" : The data point has a limited effect on
  /// the result. Changing the data point is unlikely to affect the overall
  /// determination.
  /// - "HEURISTIC_RELEVANCE_HIGH" : The data point has a strong effect on the
  /// result. Changing the data point is likely to affect the overall
  /// determination.
  core.String? relevance;

  GoogleCloudPolicytroubleshooterIamV3DenyPolicyExplanation({
    this.denyAccessState,
    this.explainedResources,
    this.permissionDeniable,
    this.relevance,
  });

  GoogleCloudPolicytroubleshooterIamV3DenyPolicyExplanation.fromJson(
    core.Map json_,
  ) : this(
        denyAccessState: json_['denyAccessState'] as core.String?,
        explainedResources: (json_['explainedResources'] as core.List?)
            ?.map(
              (value) =>
                  GoogleCloudPolicytroubleshooterIamV3ExplainedDenyResource.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
            )
            .toList(),
        permissionDeniable: json_['permissionDeniable'] as core.bool?,
        relevance: json_['relevance'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final denyAccessState = this.denyAccessState;
    final explainedResources = this.explainedResources;
    final permissionDeniable = this.permissionDeniable;
    final relevance = this.relevance;
    return {
      'denyAccessState': ?denyAccessState,
      'explainedResources': ?explainedResources,
      'permissionDeniable': ?permissionDeniable,
      'relevance': ?relevance,
    };
  }
}

/// Details about how a deny rule in a deny policy affects a principal's ability
/// to use a permission.
class GoogleCloudPolicytroubleshooterIamV3DenyRuleExplanation {
  /// Indicates whether the permission in the request is listed as a denied
  /// permission in the deny rule.
  GoogleCloudPolicytroubleshooterIamV3DenyRuleExplanationAnnotatedPermissionMatching?
  combinedDeniedPermission;

  /// Indicates whether the principal is listed as a denied principal in the
  /// deny rule, either directly or through membership in a principal set.
  GoogleCloudPolicytroubleshooterIamV3DenyRuleExplanationAnnotatedDenyPrincipalMatching?
  combinedDeniedPrincipal;

  /// Indicates whether the permission in the request is listed as an exception
  /// permission in the deny rule.
  GoogleCloudPolicytroubleshooterIamV3DenyRuleExplanationAnnotatedPermissionMatching?
  combinedExceptionPermission;

  /// Indicates whether the principal is listed as an exception principal in the
  /// deny rule, either directly or through membership in a principal set.
  GoogleCloudPolicytroubleshooterIamV3DenyRuleExplanationAnnotatedDenyPrincipalMatching?
  combinedExceptionPrincipal;

  /// A condition expression that specifies when the deny rule denies the
  /// principal access.
  ///
  /// To learn about IAM Conditions, see
  /// https://cloud.google.com/iam/help/conditions/overview.
  GoogleTypeExpr? condition;

  /// Condition evaluation state for this role binding.
  GoogleCloudPolicytroubleshooterIamV3ConditionExplanation?
  conditionExplanation;

  /// Lists all denied permissions in the deny rule and indicates whether each
  /// permission matches the permission in the request.
  ///
  /// Each key identifies a denied permission in the rule, and each value
  /// indicates whether the denied permission matches the permission in the
  /// request.
  core.Map<
    core.String,
    GoogleCloudPolicytroubleshooterIamV3DenyRuleExplanationAnnotatedPermissionMatching
  >?
  deniedPermissions;

  /// Lists all denied principals in the deny rule and indicates whether each
  /// principal matches the principal in the request, either directly or through
  /// membership in a principal set.
  ///
  /// Each key identifies a denied principal in the rule, and each value
  /// indicates whether the denied principal matches the principal in the
  /// request.
  core.Map<
    core.String,
    GoogleCloudPolicytroubleshooterIamV3DenyRuleExplanationAnnotatedDenyPrincipalMatching
  >?
  deniedPrincipals;

  /// Indicates whether _this rule_ denies the specified permission to the
  /// specified principal for the specified resource.
  ///
  /// This field does _not_ indicate whether the principal is actually denied on
  /// the permission for the resource. There might be another rule that
  /// overrides this rule. To determine whether the principal actually has the
  /// permission, use the `overall_access_state` field in the
  /// TroubleshootIamPolicyResponse.
  ///
  /// Required.
  /// Possible string values are:
  /// - "DENY_ACCESS_STATE_UNSPECIFIED" : Not specified.
  /// - "DENY_ACCESS_STATE_DENIED" : The deny policy denies the principal the
  /// permission.
  /// - "DENY_ACCESS_STATE_NOT_DENIED" : The deny policy doesn't deny the
  /// principal the permission.
  /// - "DENY_ACCESS_STATE_UNKNOWN_CONDITIONAL" : The deny policy denies the
  /// principal the permission if a condition expression evaluates to `true`.
  /// However, the sender of the request didn't provide enough context for
  /// Policy Troubleshooter to evaluate the condition expression.
  /// - "DENY_ACCESS_STATE_UNKNOWN_INFO" : The sender of the request does not
  /// have access to all of the deny policies that Policy Troubleshooter needs
  /// to evaluate the principal's access.
  core.String? denyAccessState;

  /// Lists all exception permissions in the deny rule and indicates whether
  /// each permission matches the permission in the request.
  ///
  /// Each key identifies a exception permission in the rule, and each value
  /// indicates whether the exception permission matches the permission in the
  /// request.
  core.Map<
    core.String,
    GoogleCloudPolicytroubleshooterIamV3DenyRuleExplanationAnnotatedPermissionMatching
  >?
  exceptionPermissions;

  /// Lists all exception principals in the deny rule and indicates whether each
  /// principal matches the principal in the request, either directly or through
  /// membership in a principal set.
  ///
  /// Each key identifies a exception principal in the rule, and each value
  /// indicates whether the exception principal matches the principal in the
  /// request.
  core.Map<
    core.String,
    GoogleCloudPolicytroubleshooterIamV3DenyRuleExplanationAnnotatedDenyPrincipalMatching
  >?
  exceptionPrincipals;

  /// The relevance of this role binding to the overall determination for the
  /// entire policy.
  /// Possible string values are:
  /// - "HEURISTIC_RELEVANCE_UNSPECIFIED" : Not specified.
  /// - "HEURISTIC_RELEVANCE_NORMAL" : The data point has a limited effect on
  /// the result. Changing the data point is unlikely to affect the overall
  /// determination.
  /// - "HEURISTIC_RELEVANCE_HIGH" : The data point has a strong effect on the
  /// result. Changing the data point is likely to affect the overall
  /// determination.
  core.String? relevance;

  GoogleCloudPolicytroubleshooterIamV3DenyRuleExplanation({
    this.combinedDeniedPermission,
    this.combinedDeniedPrincipal,
    this.combinedExceptionPermission,
    this.combinedExceptionPrincipal,
    this.condition,
    this.conditionExplanation,
    this.deniedPermissions,
    this.deniedPrincipals,
    this.denyAccessState,
    this.exceptionPermissions,
    this.exceptionPrincipals,
    this.relevance,
  });

  GoogleCloudPolicytroubleshooterIamV3DenyRuleExplanation.fromJson(
    core.Map json_,
  ) : this(
        combinedDeniedPermission: json_.containsKey('combinedDeniedPermission')
            ? GoogleCloudPolicytroubleshooterIamV3DenyRuleExplanationAnnotatedPermissionMatching.fromJson(
                json_['combinedDeniedPermission']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        combinedDeniedPrincipal: json_.containsKey('combinedDeniedPrincipal')
            ? GoogleCloudPolicytroubleshooterIamV3DenyRuleExplanationAnnotatedDenyPrincipalMatching.fromJson(
                json_['combinedDeniedPrincipal']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        combinedExceptionPermission:
            json_.containsKey('combinedExceptionPermission')
            ? GoogleCloudPolicytroubleshooterIamV3DenyRuleExplanationAnnotatedPermissionMatching.fromJson(
                json_['combinedExceptionPermission']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        combinedExceptionPrincipal:
            json_.containsKey('combinedExceptionPrincipal')
            ? GoogleCloudPolicytroubleshooterIamV3DenyRuleExplanationAnnotatedDenyPrincipalMatching.fromJson(
                json_['combinedExceptionPrincipal']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        condition: json_.containsKey('condition')
            ? GoogleTypeExpr.fromJson(
                json_['condition'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        conditionExplanation: json_.containsKey('conditionExplanation')
            ? GoogleCloudPolicytroubleshooterIamV3ConditionExplanation.fromJson(
                json_['conditionExplanation']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        deniedPermissions:
            (json_['deniedPermissions'] as core.Map<core.String, core.dynamic>?)
                ?.map(
                  (key, value) => core.MapEntry(
                    key,
                    GoogleCloudPolicytroubleshooterIamV3DenyRuleExplanationAnnotatedPermissionMatching.fromJson(
                      value as core.Map<core.String, core.dynamic>,
                    ),
                  ),
                ),
        deniedPrincipals:
            (json_['deniedPrincipals'] as core.Map<core.String, core.dynamic>?)
                ?.map(
                  (key, value) => core.MapEntry(
                    key,
                    GoogleCloudPolicytroubleshooterIamV3DenyRuleExplanationAnnotatedDenyPrincipalMatching.fromJson(
                      value as core.Map<core.String, core.dynamic>,
                    ),
                  ),
                ),
        denyAccessState: json_['denyAccessState'] as core.String?,
        exceptionPermissions:
            (json_['exceptionPermissions']
                    as core.Map<core.String, core.dynamic>?)
                ?.map(
                  (key, value) => core.MapEntry(
                    key,
                    GoogleCloudPolicytroubleshooterIamV3DenyRuleExplanationAnnotatedPermissionMatching.fromJson(
                      value as core.Map<core.String, core.dynamic>,
                    ),
                  ),
                ),
        exceptionPrincipals:
            (json_['exceptionPrincipals']
                    as core.Map<core.String, core.dynamic>?)
                ?.map(
                  (key, value) => core.MapEntry(
                    key,
                    GoogleCloudPolicytroubleshooterIamV3DenyRuleExplanationAnnotatedDenyPrincipalMatching.fromJson(
                      value as core.Map<core.String, core.dynamic>,
                    ),
                  ),
                ),
        relevance: json_['relevance'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final combinedDeniedPermission = this.combinedDeniedPermission;
    final combinedDeniedPrincipal = this.combinedDeniedPrincipal;
    final combinedExceptionPermission = this.combinedExceptionPermission;
    final combinedExceptionPrincipal = this.combinedExceptionPrincipal;
    final condition = this.condition;
    final conditionExplanation = this.conditionExplanation;
    final deniedPermissions = this.deniedPermissions;
    final deniedPrincipals = this.deniedPrincipals;
    final denyAccessState = this.denyAccessState;
    final exceptionPermissions = this.exceptionPermissions;
    final exceptionPrincipals = this.exceptionPrincipals;
    final relevance = this.relevance;
    return {
      'combinedDeniedPermission': ?combinedDeniedPermission,
      'combinedDeniedPrincipal': ?combinedDeniedPrincipal,
      'combinedExceptionPermission': ?combinedExceptionPermission,
      'combinedExceptionPrincipal': ?combinedExceptionPrincipal,
      'condition': ?condition,
      'conditionExplanation': ?conditionExplanation,
      'deniedPermissions': ?deniedPermissions,
      'deniedPrincipals': ?deniedPrincipals,
      'denyAccessState': ?denyAccessState,
      'exceptionPermissions': ?exceptionPermissions,
      'exceptionPrincipals': ?exceptionPrincipals,
      'relevance': ?relevance,
    };
  }
}

/// Details about whether the principal in the request is listed as a denied
/// principal in the deny rule, either directly or through membership in a
/// principal set.
class GoogleCloudPolicytroubleshooterIamV3DenyRuleExplanationAnnotatedDenyPrincipalMatching {
  /// Indicates whether the principal is listed as a denied principal in the
  /// deny rule, either directly or through membership in a principal set.
  /// Possible string values are:
  /// - "MEMBERSHIP_MATCHING_STATE_UNSPECIFIED" : Not specified.
  /// - "MEMBERSHIP_MATCHED" : The principal in the request matches the
  /// principal in the policy. The principal can be included directly or
  /// indirectly: * A principal is included directly if that principal is listed
  /// in the role binding. * A principal is included indirectly if that
  /// principal is in a Google group, Google Workspace account, or Cloud
  /// Identity domain that is listed in the policy.
  /// - "MEMBERSHIP_NOT_MATCHED" : The principal in the request doesn't match
  /// the principal in the policy.
  /// - "MEMBERSHIP_UNKNOWN_INFO" : The principal in the policy is a group or
  /// domain, and the sender of the request doesn't have permission to view
  /// whether the principal in the request is a member of the group or domain.
  /// - "MEMBERSHIP_UNKNOWN_UNSUPPORTED" : The principal is an unsupported type.
  core.String? membership;

  /// The relevance of the principal's status to the overall determination for
  /// the role binding.
  /// Possible string values are:
  /// - "HEURISTIC_RELEVANCE_UNSPECIFIED" : Not specified.
  /// - "HEURISTIC_RELEVANCE_NORMAL" : The data point has a limited effect on
  /// the result. Changing the data point is unlikely to affect the overall
  /// determination.
  /// - "HEURISTIC_RELEVANCE_HIGH" : The data point has a strong effect on the
  /// result. Changing the data point is likely to affect the overall
  /// determination.
  core.String? relevance;

  GoogleCloudPolicytroubleshooterIamV3DenyRuleExplanationAnnotatedDenyPrincipalMatching({
    this.membership,
    this.relevance,
  });

  GoogleCloudPolicytroubleshooterIamV3DenyRuleExplanationAnnotatedDenyPrincipalMatching.fromJson(
    core.Map json_,
  ) : this(
        membership: json_['membership'] as core.String?,
        relevance: json_['relevance'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final membership = this.membership;
    final relevance = this.relevance;
    return {'membership': ?membership, 'relevance': ?relevance};
  }
}

/// Details about whether the permission in the request is denied by the deny
/// rule.
class GoogleCloudPolicytroubleshooterIamV3DenyRuleExplanationAnnotatedPermissionMatching {
  /// Indicates whether the permission in the request is denied by the deny
  /// rule.
  /// Possible string values are:
  /// - "PERMISSION_PATTERN_MATCHING_STATE_UNSPECIFIED" : Not specified.
  /// - "PERMISSION_PATTERN_MATCHED" : The permission in the request matches the
  /// permission in the policy.
  /// - "PERMISSION_PATTERN_NOT_MATCHED" : The permission in the request matches
  /// the permission in the policy.
  core.String? permissionMatchingState;

  /// The relevance of the permission status to the overall determination for
  /// the rule.
  /// Possible string values are:
  /// - "HEURISTIC_RELEVANCE_UNSPECIFIED" : Not specified.
  /// - "HEURISTIC_RELEVANCE_NORMAL" : The data point has a limited effect on
  /// the result. Changing the data point is unlikely to affect the overall
  /// determination.
  /// - "HEURISTIC_RELEVANCE_HIGH" : The data point has a strong effect on the
  /// result. Changing the data point is likely to affect the overall
  /// determination.
  core.String? relevance;

  GoogleCloudPolicytroubleshooterIamV3DenyRuleExplanationAnnotatedPermissionMatching({
    this.permissionMatchingState,
    this.relevance,
  });

  GoogleCloudPolicytroubleshooterIamV3DenyRuleExplanationAnnotatedPermissionMatching.fromJson(
    core.Map json_,
  ) : this(
        permissionMatchingState:
            json_['permissionMatchingState'] as core.String?,
        relevance: json_['relevance'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final permissionMatchingState = this.permissionMatchingState;
    final relevance = this.relevance;
    return {
      'permissionMatchingState': ?permissionMatchingState,
      'relevance': ?relevance,
    };
  }
}

/// Details about how a specific IAM allow policy contributed to the final
/// access state.
class GoogleCloudPolicytroubleshooterIamV3ExplainedAllowPolicy {
  /// Indicates whether _this policy_ provides the specified permission to the
  /// specified principal for the specified resource.
  ///
  /// This field does _not_ indicate whether the principal actually has the
  /// permission for the resource. There might be another policy that overrides
  /// this policy. To determine whether the principal actually has the
  /// permission, use the `overall_access_state` field in the
  /// TroubleshootIamPolicyResponse.
  ///
  /// Required.
  /// Possible string values are:
  /// - "ALLOW_ACCESS_STATE_UNSPECIFIED" : Not specified.
  /// - "ALLOW_ACCESS_STATE_GRANTED" : The allow policy gives the principal the
  /// permission.
  /// - "ALLOW_ACCESS_STATE_NOT_GRANTED" : The allow policy doesn't give the
  /// principal the permission.
  /// - "ALLOW_ACCESS_STATE_UNKNOWN_CONDITIONAL" : The allow policy gives the
  /// principal the permission if a condition expression evaluate to `true`.
  /// However, the sender of the request didn't provide enough context for
  /// Policy Troubleshooter to evaluate the condition expression.
  /// - "ALLOW_ACCESS_STATE_UNKNOWN_INFO" : The sender of the request doesn't
  /// have access to all of the allow policies that Policy Troubleshooter needs
  /// to evaluate the principal's access.
  core.String? allowAccessState;

  /// Details about how each role binding in the policy affects the principal's
  /// ability, or inability, to use the permission for the resource.
  ///
  /// The order of the role bindings matches the role binding order in the
  /// policy. If the sender of the request does not have access to the policy,
  /// this field is omitted.
  core.List<GoogleCloudPolicytroubleshooterIamV3AllowBindingExplanation>?
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

  /// The IAM allow policy attached to the resource.
  ///
  /// If the sender of the request does not have access to the policy, this
  /// field is empty.
  GoogleIamV1Policy? policy;

  /// The relevance of this policy to the overall access state in the
  /// TroubleshootIamPolicyResponse.
  ///
  /// If the sender of the request does not have access to the policy, this
  /// field is omitted.
  /// Possible string values are:
  /// - "HEURISTIC_RELEVANCE_UNSPECIFIED" : Not specified.
  /// - "HEURISTIC_RELEVANCE_NORMAL" : The data point has a limited effect on
  /// the result. Changing the data point is unlikely to affect the overall
  /// determination.
  /// - "HEURISTIC_RELEVANCE_HIGH" : The data point has a strong effect on the
  /// result. Changing the data point is likely to affect the overall
  /// determination.
  core.String? relevance;

  GoogleCloudPolicytroubleshooterIamV3ExplainedAllowPolicy({
    this.allowAccessState,
    this.bindingExplanations,
    this.fullResourceName,
    this.policy,
    this.relevance,
  });

  GoogleCloudPolicytroubleshooterIamV3ExplainedAllowPolicy.fromJson(
    core.Map json_,
  ) : this(
        allowAccessState: json_['allowAccessState'] as core.String?,
        bindingExplanations: (json_['bindingExplanations'] as core.List?)
            ?.map(
              (value) =>
                  GoogleCloudPolicytroubleshooterIamV3AllowBindingExplanation.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
            )
            .toList(),
        fullResourceName: json_['fullResourceName'] as core.String?,
        policy: json_.containsKey('policy')
            ? GoogleIamV1Policy.fromJson(
                json_['policy'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        relevance: json_['relevance'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final allowAccessState = this.allowAccessState;
    final bindingExplanations = this.bindingExplanations;
    final fullResourceName = this.fullResourceName;
    final policy = this.policy;
    final relevance = this.relevance;
    return {
      'allowAccessState': ?allowAccessState,
      'bindingExplanations': ?bindingExplanations,
      'fullResourceName': ?fullResourceName,
      'policy': ?policy,
      'relevance': ?relevance,
    };
  }
}

/// Details about how a specific IAM deny policy Policy contributed to the
/// access check.
class GoogleCloudPolicytroubleshooterIamV3ExplainedDenyPolicy {
  /// Indicates whether _this policy_ denies the specified permission to the
  /// specified principal for the specified resource.
  ///
  /// This field does _not_ indicate whether the principal actually has the
  /// permission for the resource. There might be another policy that overrides
  /// this policy. To determine whether the principal actually has the
  /// permission, use the `overall_access_state` field in the
  /// TroubleshootIamPolicyResponse.
  ///
  /// Required.
  /// Possible string values are:
  /// - "DENY_ACCESS_STATE_UNSPECIFIED" : Not specified.
  /// - "DENY_ACCESS_STATE_DENIED" : The deny policy denies the principal the
  /// permission.
  /// - "DENY_ACCESS_STATE_NOT_DENIED" : The deny policy doesn't deny the
  /// principal the permission.
  /// - "DENY_ACCESS_STATE_UNKNOWN_CONDITIONAL" : The deny policy denies the
  /// principal the permission if a condition expression evaluates to `true`.
  /// However, the sender of the request didn't provide enough context for
  /// Policy Troubleshooter to evaluate the condition expression.
  /// - "DENY_ACCESS_STATE_UNKNOWN_INFO" : The sender of the request does not
  /// have access to all of the deny policies that Policy Troubleshooter needs
  /// to evaluate the principal's access.
  core.String? denyAccessState;

  /// The IAM deny policy attached to the resource.
  ///
  /// If the sender of the request does not have access to the policy, this
  /// field is omitted.
  GoogleIamV2Policy? policy;

  /// The relevance of this policy to the overall access state in the
  /// TroubleshootIamPolicyResponse.
  ///
  /// If the sender of the request does not have access to the policy, this
  /// field is omitted.
  /// Possible string values are:
  /// - "HEURISTIC_RELEVANCE_UNSPECIFIED" : Not specified.
  /// - "HEURISTIC_RELEVANCE_NORMAL" : The data point has a limited effect on
  /// the result. Changing the data point is unlikely to affect the overall
  /// determination.
  /// - "HEURISTIC_RELEVANCE_HIGH" : The data point has a strong effect on the
  /// result. Changing the data point is likely to affect the overall
  /// determination.
  core.String? relevance;

  /// Details about how each rule in the policy affects the principal's
  /// inability to use the permission for the resource.
  ///
  /// The order of the deny rule matches the order of the rules in the deny
  /// policy. If the sender of the request does not have access to the policy,
  /// this field is omitted.
  core.List<GoogleCloudPolicytroubleshooterIamV3DenyRuleExplanation>?
  ruleExplanations;

  GoogleCloudPolicytroubleshooterIamV3ExplainedDenyPolicy({
    this.denyAccessState,
    this.policy,
    this.relevance,
    this.ruleExplanations,
  });

  GoogleCloudPolicytroubleshooterIamV3ExplainedDenyPolicy.fromJson(
    core.Map json_,
  ) : this(
        denyAccessState: json_['denyAccessState'] as core.String?,
        policy: json_.containsKey('policy')
            ? GoogleIamV2Policy.fromJson(
                json_['policy'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        relevance: json_['relevance'] as core.String?,
        ruleExplanations: (json_['ruleExplanations'] as core.List?)
            ?.map(
              (value) =>
                  GoogleCloudPolicytroubleshooterIamV3DenyRuleExplanation.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
            )
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final denyAccessState = this.denyAccessState;
    final policy = this.policy;
    final relevance = this.relevance;
    final ruleExplanations = this.ruleExplanations;
    return {
      'denyAccessState': ?denyAccessState,
      'policy': ?policy,
      'relevance': ?relevance,
      'ruleExplanations': ?ruleExplanations,
    };
  }
}

/// Details about how a specific resource contributed to the deny policy
/// evaluation.
class GoogleCloudPolicytroubleshooterIamV3ExplainedDenyResource {
  /// Indicates whether any policies attached to _this resource_ deny the
  /// specific permission to the specified principal for the specified resource.
  ///
  /// This field does _not_ indicate whether the principal actually has the
  /// permission for the resource. There might be another policy that overrides
  /// this policy. To determine whether the principal actually has the
  /// permission, use the `overall_access_state` field in the
  /// TroubleshootIamPolicyResponse.
  ///
  /// Required.
  /// Possible string values are:
  /// - "DENY_ACCESS_STATE_UNSPECIFIED" : Not specified.
  /// - "DENY_ACCESS_STATE_DENIED" : The deny policy denies the principal the
  /// permission.
  /// - "DENY_ACCESS_STATE_NOT_DENIED" : The deny policy doesn't deny the
  /// principal the permission.
  /// - "DENY_ACCESS_STATE_UNKNOWN_CONDITIONAL" : The deny policy denies the
  /// principal the permission if a condition expression evaluates to `true`.
  /// However, the sender of the request didn't provide enough context for
  /// Policy Troubleshooter to evaluate the condition expression.
  /// - "DENY_ACCESS_STATE_UNKNOWN_INFO" : The sender of the request does not
  /// have access to all of the deny policies that Policy Troubleshooter needs
  /// to evaluate the principal's access.
  core.String? denyAccessState;

  /// List of IAM deny policies that were evaluated to check the principal's
  /// denied permissions, with annotations to indicate how each policy
  /// contributed to the final result.
  core.List<GoogleCloudPolicytroubleshooterIamV3ExplainedDenyPolicy>?
  explainedPolicies;

  /// The full resource name that identifies the resource.
  ///
  /// For example,
  /// `//compute.googleapis.com/projects/my-project/zones/us-central1-a/instances/my-instance`.
  /// If the sender of the request does not have access to the policy, this
  /// field is omitted. For examples of full resource names for Google Cloud
  /// services, see
  /// https://cloud.google.com/iam/help/troubleshooter/full-resource-names.
  core.String? fullResourceName;

  /// The relevance of this policy to the overall access state in the
  /// TroubleshootIamPolicyResponse.
  ///
  /// If the sender of the request does not have access to the policy, this
  /// field is omitted.
  /// Possible string values are:
  /// - "HEURISTIC_RELEVANCE_UNSPECIFIED" : Not specified.
  /// - "HEURISTIC_RELEVANCE_NORMAL" : The data point has a limited effect on
  /// the result. Changing the data point is unlikely to affect the overall
  /// determination.
  /// - "HEURISTIC_RELEVANCE_HIGH" : The data point has a strong effect on the
  /// result. Changing the data point is likely to affect the overall
  /// determination.
  core.String? relevance;

  GoogleCloudPolicytroubleshooterIamV3ExplainedDenyResource({
    this.denyAccessState,
    this.explainedPolicies,
    this.fullResourceName,
    this.relevance,
  });

  GoogleCloudPolicytroubleshooterIamV3ExplainedDenyResource.fromJson(
    core.Map json_,
  ) : this(
        denyAccessState: json_['denyAccessState'] as core.String?,
        explainedPolicies: (json_['explainedPolicies'] as core.List?)
            ?.map(
              (value) =>
                  GoogleCloudPolicytroubleshooterIamV3ExplainedDenyPolicy.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
            )
            .toList(),
        fullResourceName: json_['fullResourceName'] as core.String?,
        relevance: json_['relevance'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final denyAccessState = this.denyAccessState;
    final explainedPolicies = this.explainedPolicies;
    final fullResourceName = this.fullResourceName;
    final relevance = this.relevance;
    return {
      'denyAccessState': ?denyAccessState,
      'explainedPolicies': ?explainedPolicies,
      'fullResourceName': ?fullResourceName,
      'relevance': ?relevance,
    };
  }
}

/// Request for TroubleshootIamPolicy.
class GoogleCloudPolicytroubleshooterIamV3TroubleshootIamPolicyRequest {
  /// The information to use for checking whether a principal has a permission
  /// for a resource.
  GoogleCloudPolicytroubleshooterIamV3AccessTuple? accessTuple;

  GoogleCloudPolicytroubleshooterIamV3TroubleshootIamPolicyRequest({
    this.accessTuple,
  });

  GoogleCloudPolicytroubleshooterIamV3TroubleshootIamPolicyRequest.fromJson(
    core.Map json_,
  ) : this(
        accessTuple: json_.containsKey('accessTuple')
            ? GoogleCloudPolicytroubleshooterIamV3AccessTuple.fromJson(
                json_['accessTuple'] as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final accessTuple = this.accessTuple;
    return {'accessTuple': ?accessTuple};
  }
}

/// Response for TroubleshootIamPolicy.
class GoogleCloudPolicytroubleshooterIamV3TroubleshootIamPolicyResponse {
  /// The access tuple from the request, including any provided context used to
  /// evaluate the condition.
  GoogleCloudPolicytroubleshooterIamV3AccessTuple? accessTuple;

  /// An explanation of how the applicable IAM allow policies affect the final
  /// access state.
  GoogleCloudPolicytroubleshooterIamV3AllowPolicyExplanation?
  allowPolicyExplanation;

  /// An explanation of how the applicable IAM deny policies affect the final
  /// access state.
  GoogleCloudPolicytroubleshooterIamV3DenyPolicyExplanation?
  denyPolicyExplanation;

  /// Indicates whether the principal has the specified permission for the
  /// specified resource, based on evaluating all types of the applicable IAM
  /// policies.
  /// Possible string values are:
  /// - "OVERALL_ACCESS_STATE_UNSPECIFIED" : Not specified.
  /// - "CAN_ACCESS" : The principal has the permission.
  /// - "CANNOT_ACCESS" : The principal doesn't have the permission.
  /// - "UNKNOWN_INFO" : The principal might have the permission, but the sender
  /// can't access all of the information needed to fully evaluate the
  /// principal's access.
  /// - "UNKNOWN_CONDITIONAL" : The principal might have the permission, but
  /// Policy Troubleshooter can't fully evaluate the principal's access because
  /// the sender didn't provide the required context to evaluate the condition.
  core.String? overallAccessState;

  GoogleCloudPolicytroubleshooterIamV3TroubleshootIamPolicyResponse({
    this.accessTuple,
    this.allowPolicyExplanation,
    this.denyPolicyExplanation,
    this.overallAccessState,
  });

  GoogleCloudPolicytroubleshooterIamV3TroubleshootIamPolicyResponse.fromJson(
    core.Map json_,
  ) : this(
        accessTuple: json_.containsKey('accessTuple')
            ? GoogleCloudPolicytroubleshooterIamV3AccessTuple.fromJson(
                json_['accessTuple'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        allowPolicyExplanation: json_.containsKey('allowPolicyExplanation')
            ? GoogleCloudPolicytroubleshooterIamV3AllowPolicyExplanation.fromJson(
                json_['allowPolicyExplanation']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        denyPolicyExplanation: json_.containsKey('denyPolicyExplanation')
            ? GoogleCloudPolicytroubleshooterIamV3DenyPolicyExplanation.fromJson(
                json_['denyPolicyExplanation']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        overallAccessState: json_['overallAccessState'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final accessTuple = this.accessTuple;
    final allowPolicyExplanation = this.allowPolicyExplanation;
    final denyPolicyExplanation = this.denyPolicyExplanation;
    final overallAccessState = this.overallAccessState;
    return {
      'accessTuple': ?accessTuple,
      'allowPolicyExplanation': ?allowPolicyExplanation,
      'denyPolicyExplanation': ?denyPolicyExplanation,
      'overallAccessState': ?overallAccessState,
    };
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
class GoogleIamV1AuditConfig {
  /// The configuration for logging of each type of permission.
  core.List<GoogleIamV1AuditLogConfig>? auditLogConfigs;

  /// Specifies a service that will be enabled for audit logging.
  ///
  /// For example, `storage.googleapis.com`, `cloudsql.googleapis.com`.
  /// `allServices` is a special value that covers all services.
  core.String? service;

  GoogleIamV1AuditConfig({this.auditLogConfigs, this.service});

  GoogleIamV1AuditConfig.fromJson(core.Map json_)
    : this(
        auditLogConfigs: (json_['auditLogConfigs'] as core.List?)
            ?.map(
              (value) => GoogleIamV1AuditLogConfig.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        service: json_['service'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final auditLogConfigs = this.auditLogConfigs;
    final service = this.service;
    return {'auditLogConfigs': ?auditLogConfigs, 'service': ?service};
  }
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

  GoogleIamV1Binding({this.condition, this.members, this.role});

  GoogleIamV1Binding.fromJson(core.Map json_)
    : this(
        condition: json_.containsKey('condition')
            ? GoogleTypeExpr.fromJson(
                json_['condition'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        members: (json_['members'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
        role: json_['role'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final condition = this.condition;
    final members = this.members;
    final role = this.role;
    return {'condition': ?condition, 'members': ?members, 'role': ?role};
  }
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

  GoogleIamV1Policy({
    this.auditConfigs,
    this.bindings,
    this.etag,
    this.version,
  });

  GoogleIamV1Policy.fromJson(core.Map json_)
    : this(
        auditConfigs: (json_['auditConfigs'] as core.List?)
            ?.map(
              (value) => GoogleIamV1AuditConfig.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        bindings: (json_['bindings'] as core.List?)
            ?.map(
              (value) => GoogleIamV1Binding.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        etag: json_['etag'] as core.String?,
        version: json_['version'] as core.int?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final auditConfigs = this.auditConfigs;
    final bindings = this.bindings;
    final etag = this.etag;
    final version = this.version;
    return {
      'auditConfigs': ?auditConfigs,
      'bindings': ?bindings,
      'etag': ?etag,
      'version': ?version,
    };
  }
}

/// A deny rule in an IAM deny policy.
class GoogleIamV2DenyRule {
  /// The condition that determines whether this deny rule applies to a request.
  ///
  /// If the condition expression evaluates to `true`, then the deny rule is
  /// applied; otherwise, the deny rule is not applied. Each deny rule is
  /// evaluated independently. If this deny rule does not apply to a request,
  /// other deny rules might still apply. The condition can use CEL functions
  /// that evaluate
  /// [resource tags](https://cloud.google.com/iam/help/conditions/resource-tags).
  /// Other functions and operators are not supported.
  GoogleTypeExpr? denialCondition;

  /// The permissions that are explicitly denied by this rule.
  ///
  /// Each permission uses the format `{service_fqdn}/{resource}.{verb}`, where
  /// `{service_fqdn}` is the fully qualified domain name for the service. For
  /// example, `iam.googleapis.com/roles.list`.
  core.List<core.String>? deniedPermissions;

  /// The identities that are prevented from using one or more permissions on
  /// Google Cloud resources.
  ///
  /// This field can contain the following values: *
  /// `principal://goog/subject/{email_id}`: A specific Google Account. Includes
  /// Gmail, Cloud Identity, and Google Workspace user accounts. For example,
  /// `principal://goog/subject/alice@example.com`. *
  /// `principal://iam.googleapis.com/projects/-/serviceAccounts/{service_account_id}`:
  /// A Google Cloud service account. For example,
  /// `principal://iam.googleapis.com/projects/-/serviceAccounts/my-service-account@iam.gserviceaccount.com`.
  /// * `principalSet://goog/group/{group_id}`: A Google group. For example,
  /// `principalSet://goog/group/admins@example.com`. *
  /// `principalSet://goog/public:all`: A special identifier that represents any
  /// principal that is on the internet, even if they do not have a Google
  /// Account or are not logged in. *
  /// `principalSet://goog/cloudIdentityCustomerId/{customer_id}`: All of the
  /// principals associated with the specified Google Workspace or Cloud
  /// Identity customer ID. For example,
  /// `principalSet://goog/cloudIdentityCustomerId/C01Abc35`. *
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
  /// `principalSet://cloudresourcemanager.googleapis.com/[projects|folders|organizations]/{project_number|folder_number|org_number}/type/ServiceAccount`:
  /// All service accounts grouped under a resource (project, folder, or
  /// organization). *
  /// `principalSet://cloudresourcemanager.googleapis.com/[projects|folders|organizations]/{project_number|folder_number|org_number}/type/ServiceAgent`:
  /// All service agents grouped under a resource (project, folder, or
  /// organization). * `deleted:principal://goog/subject/{email_id}?uid={uid}`:
  /// A specific Google Account that was deleted recently. For example,
  /// `deleted:principal://goog/subject/alice@example.com?uid=1234567890`. If
  /// the Google Account is recovered, this identifier reverts to the standard
  /// identifier for a Google Account. *
  /// `deleted:principalSet://goog/group/{group_id}?uid={uid}`: A Google group
  /// that was deleted recently. For example,
  /// `deleted:principalSet://goog/group/admins@example.com?uid=1234567890`. If
  /// the Google group is restored, this identifier reverts to the standard
  /// identifier for a Google group. *
  /// `deleted:principal://iam.googleapis.com/projects/-/serviceAccounts/{service_account_id}?uid={uid}`:
  /// A Google Cloud service account that was deleted recently. For example,
  /// `deleted:principal://iam.googleapis.com/projects/-/serviceAccounts/my-service-account@iam.gserviceaccount.com?uid=1234567890`.
  /// If the service account is undeleted, this identifier reverts to the
  /// standard identifier for a service account. *
  /// `deleted:principal://iam.googleapis.com/locations/global/workforcePools/{pool_id}/subject/{subject_attribute_value}`:
  /// Deleted single identity in a workforce identity pool. For example,
  /// `deleted:principal://iam.googleapis.com/locations/global/workforcePools/my-pool-id/subject/my-subject-attribute-value`.
  core.List<core.String>? deniedPrincipals;

  /// Specifies the permissions that this rule excludes from the set of denied
  /// permissions given by `denied_permissions`.
  ///
  /// If a permission appears in `denied_permissions` _and_ in
  /// `exception_permissions` then it will _not_ be denied. The excluded
  /// permissions can be specified using the same syntax as
  /// `denied_permissions`.
  core.List<core.String>? exceptionPermissions;

  /// The identities that are excluded from the deny rule, even if they are
  /// listed in the `denied_principals`.
  ///
  /// For example, you could add a Google group to the `denied_principals`, then
  /// exclude specific users who belong to that group. This field can contain
  /// the same values as the `denied_principals` field, excluding
  /// `principalSet://goog/public:all`, which represents all users on the
  /// internet.
  core.List<core.String>? exceptionPrincipals;

  GoogleIamV2DenyRule({
    this.denialCondition,
    this.deniedPermissions,
    this.deniedPrincipals,
    this.exceptionPermissions,
    this.exceptionPrincipals,
  });

  GoogleIamV2DenyRule.fromJson(core.Map json_)
    : this(
        denialCondition: json_.containsKey('denialCondition')
            ? GoogleTypeExpr.fromJson(
                json_['denialCondition'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        deniedPermissions: (json_['deniedPermissions'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
        deniedPrincipals: (json_['deniedPrincipals'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
        exceptionPermissions: (json_['exceptionPermissions'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
        exceptionPrincipals: (json_['exceptionPrincipals'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final denialCondition = this.denialCondition;
    final deniedPermissions = this.deniedPermissions;
    final deniedPrincipals = this.deniedPrincipals;
    final exceptionPermissions = this.exceptionPermissions;
    final exceptionPrincipals = this.exceptionPrincipals;
    return {
      'denialCondition': ?denialCondition,
      'deniedPermissions': ?deniedPermissions,
      'deniedPrincipals': ?deniedPrincipals,
      'exceptionPermissions': ?exceptionPermissions,
      'exceptionPrincipals': ?exceptionPrincipals,
    };
  }
}

/// Data for an IAM policy.
class GoogleIamV2Policy {
  /// A key-value map to store arbitrary metadata for the `Policy`.
  ///
  /// Keys can be up to 63 characters. Values can be up to 255 characters.
  core.Map<core.String, core.String>? annotations;

  /// The time when the `Policy` was created.
  ///
  /// Output only.
  core.String? createTime;

  /// The time when the `Policy` was deleted.
  ///
  /// Empty if the policy is not deleted.
  ///
  /// Output only.
  core.String? deleteTime;

  /// A user-specified description of the `Policy`.
  ///
  /// This value can be up to 63 characters.
  core.String? displayName;

  /// An opaque tag that identifies the current version of the `Policy`.
  ///
  /// IAM uses this value to help manage concurrent updates, so they do not
  /// cause one update to be overwritten by another. If this field is present in
  /// a CreatePolicyRequest, the value is ignored.
  core.String? etag;

  /// The kind of the `Policy`.
  ///
  /// Always contains the value `DenyPolicy`.
  ///
  /// Output only.
  core.String? kind;

  /// The resource name of the `Policy`, which must be unique.
  ///
  /// Format: `policies/{attachment_point}/denypolicies/{policy_id}` The
  /// attachment point is identified by its URL-encoded full resource name,
  /// which means that the forward-slash character, `/`, must be written as
  /// `%2F`. For example,
  /// `policies/cloudresourcemanager.googleapis.com%2Fprojects%2Fmy-project/denypolicies/my-deny-policy`.
  /// For organizations and folders, use the numeric ID in the full resource
  /// name. For projects, requests can use the alphanumeric or the numeric ID.
  /// Responses always contain the numeric ID.
  ///
  /// Immutable.
  core.String? name;

  /// A list of rules that specify the behavior of the `Policy`.
  ///
  /// All of the rules should be of the `kind` specified in the `Policy`.
  core.List<GoogleIamV2PolicyRule>? rules;

  /// The globally unique ID of the `Policy`.
  ///
  /// Assigned automatically when the `Policy` is created.
  ///
  /// Immutable.
  core.String? uid;

  /// The time when the `Policy` was last updated.
  ///
  /// Output only.
  core.String? updateTime;

  GoogleIamV2Policy({
    this.annotations,
    this.createTime,
    this.deleteTime,
    this.displayName,
    this.etag,
    this.kind,
    this.name,
    this.rules,
    this.uid,
    this.updateTime,
  });

  GoogleIamV2Policy.fromJson(core.Map json_)
    : this(
        annotations:
            (json_['annotations'] as core.Map<core.String, core.dynamic>?)?.map(
              (key, value) => core.MapEntry(key, value as core.String),
            ),
        createTime: json_['createTime'] as core.String?,
        deleteTime: json_['deleteTime'] as core.String?,
        displayName: json_['displayName'] as core.String?,
        etag: json_['etag'] as core.String?,
        kind: json_['kind'] as core.String?,
        name: json_['name'] as core.String?,
        rules: (json_['rules'] as core.List?)
            ?.map(
              (value) => GoogleIamV2PolicyRule.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        uid: json_['uid'] as core.String?,
        updateTime: json_['updateTime'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final annotations = this.annotations;
    final createTime = this.createTime;
    final deleteTime = this.deleteTime;
    final displayName = this.displayName;
    final etag = this.etag;
    final kind = this.kind;
    final name = this.name;
    final rules = this.rules;
    final uid = this.uid;
    final updateTime = this.updateTime;
    return {
      'annotations': ?annotations,
      'createTime': ?createTime,
      'deleteTime': ?deleteTime,
      'displayName': ?displayName,
      'etag': ?etag,
      'kind': ?kind,
      'name': ?name,
      'rules': ?rules,
      'uid': ?uid,
      'updateTime': ?updateTime,
    };
  }
}

/// A single rule in a `Policy`.
class GoogleIamV2PolicyRule {
  /// A rule for a deny policy.
  GoogleIamV2DenyRule? denyRule;

  /// A user-specified description of the rule.
  ///
  /// This value can be up to 256 characters.
  core.String? description;

  GoogleIamV2PolicyRule({this.denyRule, this.description});

  GoogleIamV2PolicyRule.fromJson(core.Map json_)
    : this(
        denyRule: json_.containsKey('denyRule')
            ? GoogleIamV2DenyRule.fromJson(
                json_['denyRule'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        description: json_['description'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final denyRule = this.denyRule;
    final description = this.description;
    return {'denyRule': ?denyRule, 'description': ?description};
  }
}

/// The `Status` type defines a logical error model that is suitable for
/// different programming environments, including REST APIs and RPC APIs.
///
/// It is used by [gRPC](https://github.com/grpc). Each `Status` message
/// contains three pieces of data: error code, error message, and error details.
/// You can find out more about this error model and how to work with it in the
/// [API Design Guide](https://cloud.google.com/apis/design/errors).
typedef GoogleRpcStatus = $Status00;

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
typedef GoogleTypeExpr = $Expr;
