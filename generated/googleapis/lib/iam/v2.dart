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

/// Identity and Access Management (IAM) API - v2
///
/// Manages identity and access control for Google Cloud resources, including
/// the creation of service accounts, which you can use to authenticate to
/// Google and make API calls. Enabling this API also enables the IAM Service
/// Account Credentials API (iamcredentials.googleapis.com). However, disabling
/// this API doesn't disable the IAM Service Account Credentials API.
///
/// For more information, see <https://cloud.google.com/iam/>
///
/// Create an instance of [IamApi] to access these resources:
///
/// - [PoliciesResource]
///   - [PoliciesOperationsResource]
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

/// Manages identity and access control for Google Cloud resources, including
/// the creation of service accounts, which you can use to authenticate to
/// Google and make API calls.
///
/// Enabling this API also enables the IAM Service Account Credentials API
/// (iamcredentials.googleapis.com). However, disabling this API doesn't disable
/// the IAM Service Account Credentials API.
class IamApi {
  /// See, edit, configure, and delete your Google Cloud data and see the email
  /// address for your Google Account.
  static const cloudPlatformScope =
      'https://www.googleapis.com/auth/cloud-platform';

  final commons.ApiRequester _requester;

  PoliciesResource get policies => PoliciesResource(_requester);

  IamApi(http.Client client,
      {core.String rootUrl = 'https://iam.googleapis.com/',
      core.String servicePath = ''})
      : _requester =
            commons.ApiRequester(client, rootUrl, servicePath, requestHeaders);
}

class PoliciesResource {
  final commons.ApiRequester _requester;

  PoliciesOperationsResource get operations =>
      PoliciesOperationsResource(_requester);

  PoliciesResource(commons.ApiRequester client) : _requester = client;

  /// Creates a policy.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The resource that the policy is attached to, along
  /// with the kind of policy to create. Format:
  /// `policies/{attachment_point}/denypolicies` The attachment point is
  /// identified by its URL-encoded full resource name, which means that the
  /// forward-slash character, `/`, must be written as `%2F`. For example,
  /// `policies/cloudresourcemanager.googleapis.com%2Fprojects%2Fmy-project/denypolicies`.
  /// For organizations and folders, use the numeric ID in the full resource
  /// name. For projects, you can use the alphanumeric or the numeric ID.
  /// Value must have pattern `^policies/\[^/\]+/\[^/\]+$`.
  ///
  /// [policyId] - The ID to use for this policy, which will become the final
  /// component of the policy's resource name. The ID must contain 3 to 63
  /// characters. It can contain lowercase letters and numbers, as well as
  /// dashes (`-`) and periods (`.`). The first character must be a lowercase
  /// letter.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleLongrunningOperation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleLongrunningOperation> createPolicy(
    GoogleIamV2Policy request,
    core.String parent, {
    core.String? policyId,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (policyId != null) 'policyId': [policyId],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$parent');

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleLongrunningOperation.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Deletes a policy.
  ///
  /// This action is permanent.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name of the policy to delete. Format:
  /// `policies/{attachment_point}/denypolicies/{policy_id}` Use the URL-encoded
  /// full resource name, which means that the forward-slash character, `/`,
  /// must be written as `%2F`. For example,
  /// `policies/cloudresourcemanager.googleapis.com%2Fprojects%2Fmy-project/denypolicies/my-policy`.
  /// For organizations and folders, use the numeric ID in the full resource
  /// name. For projects, you can use the alphanumeric or the numeric ID.
  /// Value must have pattern `^policies/\[^/\]+/\[^/\]+/\[^/\]+$`.
  ///
  /// [etag] - Optional. The expected `etag` of the policy to delete. If the
  /// value does not match the value that is stored in IAM, the request fails
  /// with a `409` error code and `ABORTED` status. If you omit this field, the
  /// policy is deleted regardless of its current `etag`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleLongrunningOperation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleLongrunningOperation> delete(
    core.String name, {
    core.String? etag,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (etag != null) 'etag': [etag],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return GoogleLongrunningOperation.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Gets a policy.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name of the policy to retrieve. Format:
  /// `policies/{attachment_point}/denypolicies/{policy_id}` Use the URL-encoded
  /// full resource name, which means that the forward-slash character, `/`,
  /// must be written as `%2F`. For example,
  /// `policies/cloudresourcemanager.googleapis.com%2Fprojects%2Fmy-project/denypolicies/my-policy`.
  /// For organizations and folders, use the numeric ID in the full resource
  /// name. For projects, you can use the alphanumeric or the numeric ID.
  /// Value must have pattern `^policies/\[^/\]+/\[^/\]+/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleIamV2Policy].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleIamV2Policy> get(
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
    return GoogleIamV2Policy.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Retrieves the policies of the specified kind that are attached to a
  /// resource.
  ///
  /// The response lists only policy metadata. In particular, policy rules are
  /// omitted.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The resource that the policy is attached to, along
  /// with the kind of policy to list. Format:
  /// `policies/{attachment_point}/denypolicies` The attachment point is
  /// identified by its URL-encoded full resource name, which means that the
  /// forward-slash character, `/`, must be written as `%2F`. For example,
  /// `policies/cloudresourcemanager.googleapis.com%2Fprojects%2Fmy-project/denypolicies`.
  /// For organizations and folders, use the numeric ID in the full resource
  /// name. For projects, you can use the alphanumeric or the numeric ID.
  /// Value must have pattern `^policies/\[^/\]+/\[^/\]+$`.
  ///
  /// [pageSize] - The maximum number of policies to return. IAM ignores this
  /// value and uses the value 1000.
  ///
  /// [pageToken] - A page token received in a ListPoliciesResponse. Provide
  /// this token to retrieve the next page.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleIamV2ListPoliciesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleIamV2ListPoliciesResponse> listPolicies(
    core.String parent, {
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$parent');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleIamV2ListPoliciesResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Updates the specified policy.
  ///
  /// You can update only the rules and the display name for the policy. To
  /// update a policy, you should use a read-modify-write loop: 1. Use GetPolicy
  /// to read the current version of the policy. 2. Modify the policy as needed.
  /// 3. Use `UpdatePolicy` to write the updated policy. This pattern helps
  /// prevent conflicts between concurrent updates.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Immutable. The resource name of the `Policy`, which must be
  /// unique. Format: `policies/{attachment_point}/denypolicies/{policy_id}` The
  /// attachment point is identified by its URL-encoded full resource name,
  /// which means that the forward-slash character, `/`, must be written as
  /// `%2F`. For example,
  /// `policies/cloudresourcemanager.googleapis.com%2Fprojects%2Fmy-project/denypolicies/my-deny-policy`.
  /// For organizations and folders, use the numeric ID in the full resource
  /// name. For projects, requests can use the alphanumeric or the numeric ID.
  /// Responses always contain the numeric ID.
  /// Value must have pattern `^policies/\[^/\]+/\[^/\]+/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleLongrunningOperation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleLongrunningOperation> update(
    GoogleIamV2Policy request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PUT',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleLongrunningOperation.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class PoliciesOperationsResource {
  final commons.ApiRequester _requester;

  PoliciesOperationsResource(commons.ApiRequester client) : _requester = client;

  /// Gets the latest state of a long-running operation.
  ///
  /// Clients can use this method to poll the operation result at intervals as
  /// recommended by the API service.
  ///
  /// Request parameters:
  ///
  /// [name] - The name of the operation resource.
  /// Value must have pattern
  /// `^policies/\[^/\]+/\[^/\]+/\[^/\]+/operations/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleLongrunningOperation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleLongrunningOperation> get(
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
    return GoogleLongrunningOperation.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
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
  /// `deleted:principal://goog/subject/{email_id}?uid={uid}`: A specific Google
  /// Account that was deleted recently. For example,
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
              ? GoogleTypeExpr.fromJson(json_['denialCondition']
                  as core.Map<core.String, core.dynamic>)
              : null,
          deniedPermissions: json_.containsKey('deniedPermissions')
              ? (json_['deniedPermissions'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          deniedPrincipals: json_.containsKey('deniedPrincipals')
              ? (json_['deniedPrincipals'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          exceptionPermissions: json_.containsKey('exceptionPermissions')
              ? (json_['exceptionPermissions'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          exceptionPrincipals: json_.containsKey('exceptionPrincipals')
              ? (json_['exceptionPrincipals'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (denialCondition != null) 'denialCondition': denialCondition!,
        if (deniedPermissions != null) 'deniedPermissions': deniedPermissions!,
        if (deniedPrincipals != null) 'deniedPrincipals': deniedPrincipals!,
        if (exceptionPermissions != null)
          'exceptionPermissions': exceptionPermissions!,
        if (exceptionPrincipals != null)
          'exceptionPrincipals': exceptionPrincipals!,
      };
}

/// Response message for `ListPolicies`.
class GoogleIamV2ListPoliciesResponse {
  /// A page token that you can use in a ListPoliciesRequest to retrieve the
  /// next page.
  ///
  /// If this field is omitted, there are no additional pages.
  core.String? nextPageToken;

  /// Metadata for the policies that are attached to the resource.
  core.List<GoogleIamV2Policy>? policies;

  GoogleIamV2ListPoliciesResponse({
    this.nextPageToken,
    this.policies,
  });

  GoogleIamV2ListPoliciesResponse.fromJson(core.Map json_)
      : this(
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
          policies: json_.containsKey('policies')
              ? (json_['policies'] as core.List)
                  .map((value) => GoogleIamV2Policy.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (policies != null) 'policies': policies!,
      };
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
          kind: json_.containsKey('kind') ? json_['kind'] as core.String : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          rules: json_.containsKey('rules')
              ? (json_['rules'] as core.List)
                  .map((value) => GoogleIamV2PolicyRule.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          uid: json_.containsKey('uid') ? json_['uid'] as core.String : null,
          updateTime: json_.containsKey('updateTime')
              ? json_['updateTime'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (annotations != null) 'annotations': annotations!,
        if (createTime != null) 'createTime': createTime!,
        if (deleteTime != null) 'deleteTime': deleteTime!,
        if (displayName != null) 'displayName': displayName!,
        if (etag != null) 'etag': etag!,
        if (kind != null) 'kind': kind!,
        if (name != null) 'name': name!,
        if (rules != null) 'rules': rules!,
        if (uid != null) 'uid': uid!,
        if (updateTime != null) 'updateTime': updateTime!,
      };
}

/// A single rule in a `Policy`.
class GoogleIamV2PolicyRule {
  /// A rule for a deny policy.
  GoogleIamV2DenyRule? denyRule;

  /// A user-specified description of the rule.
  ///
  /// This value can be up to 256 characters.
  core.String? description;

  GoogleIamV2PolicyRule({
    this.denyRule,
    this.description,
  });

  GoogleIamV2PolicyRule.fromJson(core.Map json_)
      : this(
          denyRule: json_.containsKey('denyRule')
              ? GoogleIamV2DenyRule.fromJson(
                  json_['denyRule'] as core.Map<core.String, core.dynamic>)
              : null,
          description: json_.containsKey('description')
              ? json_['description'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (denyRule != null) 'denyRule': denyRule!,
        if (description != null) 'description': description!,
      };
}

/// This resource represents a long-running operation that is the result of a
/// network API call.
class GoogleLongrunningOperation {
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

  GoogleLongrunningOperation({
    this.done,
    this.error,
    this.metadata,
    this.name,
    this.response,
  });

  GoogleLongrunningOperation.fromJson(core.Map json_)
      : this(
          done: json_.containsKey('done') ? json_['done'] as core.bool : null,
          error: json_.containsKey('error')
              ? GoogleRpcStatus.fromJson(
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

/// The `Status` type defines a logical error model that is suitable for
/// different programming environments, including REST APIs and RPC APIs.
///
/// It is used by [gRPC](https://github.com/grpc). Each `Status` message
/// contains three pieces of data: error code, error message, and error details.
/// You can find out more about this error model and how to work with it in the
/// [API Design Guide](https://cloud.google.com/apis/design/errors).
typedef GoogleRpcStatus = $Status;

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
