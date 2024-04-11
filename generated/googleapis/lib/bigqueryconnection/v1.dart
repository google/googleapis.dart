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

/// BigQuery Connection API - v1
///
/// Allows users to manage BigQuery connections to external data sources.
///
/// For more information, see
/// <https://cloud.google.com/bigquery/docs/connections-api-intro>
///
/// Create an instance of [BigQueryConnectionServiceApi] to access these
/// resources:
///
/// - [ProjectsResource]
///   - [ProjectsLocationsResource]
///     - [ProjectsLocationsConnectionsResource]
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

/// Allows users to manage BigQuery connections to external data sources.
class BigQueryConnectionServiceApi {
  /// View and manage your data in Google BigQuery and see the email address for
  /// your Google Account
  static const bigqueryScope = 'https://www.googleapis.com/auth/bigquery';

  /// See, edit, configure, and delete your Google Cloud data and see the email
  /// address for your Google Account.
  static const cloudPlatformScope =
      'https://www.googleapis.com/auth/cloud-platform';

  final commons.ApiRequester _requester;

  ProjectsResource get projects => ProjectsResource(_requester);

  BigQueryConnectionServiceApi(http.Client client,
      {core.String rootUrl = 'https://bigqueryconnection.googleapis.com/',
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

  ProjectsLocationsConnectionsResource get connections =>
      ProjectsLocationsConnectionsResource(_requester);

  ProjectsLocationsResource(commons.ApiRequester client) : _requester = client;
}

class ProjectsLocationsConnectionsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsConnectionsResource(commons.ApiRequester client)
      : _requester = client;

  /// Creates a new connection.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Parent resource name. Must be in the format
  /// `projects/{project_id}/locations/{location_id}`
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [connectionId] - Optional. Connection id that should be assigned to the
  /// created connection.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Connection].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Connection> create(
    Connection request,
    core.String parent, {
    core.String? connectionId,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (connectionId != null) 'connectionId': [connectionId],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/connections';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Connection.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Deletes connection and associated credential.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Name of the deleted connection, for example:
  /// `projects/{project_id}/locations/{location_id}/connections/{connection_id}`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/connections/\[^/\]+$`.
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

  /// Returns specified connection.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Name of the requested connection, for example:
  /// `projects/{project_id}/locations/{location_id}/connections/{connection_id}`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/connections/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Connection].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Connection> get(
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
    return Connection.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Gets the access control policy for a resource.
  ///
  /// Returns an empty policy if the resource exists and does not have a policy
  /// set.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [resource] - REQUIRED: The resource for which the policy is being
  /// requested. See
  /// [Resource names](https://cloud.google.com/apis/design/resource_names) for
  /// the appropriate value for this field.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/connections/\[^/\]+$`.
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
    GetIamPolicyRequest request,
    core.String resource, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$resource') + ':getIamPolicy';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Policy.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Returns a list of connections in the given project.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Parent resource name. Must be in the form:
  /// `projects/{project_id}/locations/{location_id}`
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [pageSize] - Required. Page size.
  ///
  /// [pageToken] - Page token.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListConnectionsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListConnectionsResponse> list(
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

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/connections';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListConnectionsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Updates the specified connection.
  ///
  /// For security reasons, also resets credential if connection properties are
  /// in the update field mask.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Name of the connection to update, for example:
  /// `projects/{project_id}/locations/{location_id}/connections/{connection_id}`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/connections/\[^/\]+$`.
  ///
  /// [updateMask] - Required. Update mask for the connection fields to be
  /// updated.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Connection].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Connection> patch(
    Connection request,
    core.String name, {
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (updateMask != null) 'updateMask': [updateMask],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return Connection.fromJson(
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
  /// `^projects/\[^/\]+/locations/\[^/\]+/connections/\[^/\]+$`.
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
  /// `^projects/\[^/\]+/locations/\[^/\]+/connections/\[^/\]+$`.
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

  AuditConfig({
    this.auditLogConfigs,
    this.service,
  });

  AuditConfig.fromJson(core.Map json_)
      : this(
          auditLogConfigs: json_.containsKey('auditLogConfigs')
              ? (json_['auditLogConfigs'] as core.List)
                  .map((value) => AuditLogConfig.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          service: json_.containsKey('service')
              ? json_['service'] as core.String
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
typedef AuditLogConfig = $AuditLogConfig;

/// Authentication method for Amazon Web Services (AWS) that uses Google owned
/// Google service account to assume into customer's AWS IAM Role.
class AwsAccessRole {
  /// The user’s AWS IAM Role that trusts the Google-owned AWS IAM user
  /// Connection.
  core.String? iamRoleId;

  /// A unique Google-owned and Google-generated identity for the Connection.
  ///
  /// This identity will be used to access the user's AWS IAM Role.
  core.String? identity;

  AwsAccessRole({
    this.iamRoleId,
    this.identity,
  });

  AwsAccessRole.fromJson(core.Map json_)
      : this(
          iamRoleId: json_.containsKey('iamRoleId')
              ? json_['iamRoleId'] as core.String
              : null,
          identity: json_.containsKey('identity')
              ? json_['identity'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (iamRoleId != null) 'iamRoleId': iamRoleId!,
        if (identity != null) 'identity': identity!,
      };
}

/// Connection properties specific to Amazon Web Services (AWS).
class AwsProperties {
  /// Authentication using Google owned service account to assume into
  /// customer's AWS IAM Role.
  AwsAccessRole? accessRole;

  AwsProperties({
    this.accessRole,
  });

  AwsProperties.fromJson(core.Map json_)
      : this(
          accessRole: json_.containsKey('accessRole')
              ? AwsAccessRole.fromJson(
                  json_['accessRole'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (accessRole != null) 'accessRole': accessRole!,
      };
}

/// Container for connection properties specific to Azure.
class AzureProperties {
  /// The name of the Azure Active Directory Application.
  ///
  /// Output only.
  core.String? application;

  /// The client id of the Azure Active Directory Application.
  ///
  /// Output only.
  core.String? clientId;

  /// The id of customer's directory that host the data.
  core.String? customerTenantId;

  /// The client ID of the user's Azure Active Directory Application used for a
  /// federated connection.
  core.String? federatedApplicationClientId;

  /// A unique Google-owned and Google-generated identity for the Connection.
  ///
  /// This identity will be used to access the user's Azure Active Directory
  /// Application.
  ///
  /// Output only.
  core.String? identity;

  /// The object id of the Azure Active Directory Application.
  ///
  /// Output only.
  core.String? objectId;

  /// The URL user will be redirected to after granting consent during
  /// connection setup.
  core.String? redirectUri;

  AzureProperties({
    this.application,
    this.clientId,
    this.customerTenantId,
    this.federatedApplicationClientId,
    this.identity,
    this.objectId,
    this.redirectUri,
  });

  AzureProperties.fromJson(core.Map json_)
      : this(
          application: json_.containsKey('application')
              ? json_['application'] as core.String
              : null,
          clientId: json_.containsKey('clientId')
              ? json_['clientId'] as core.String
              : null,
          customerTenantId: json_.containsKey('customerTenantId')
              ? json_['customerTenantId'] as core.String
              : null,
          federatedApplicationClientId:
              json_.containsKey('federatedApplicationClientId')
                  ? json_['federatedApplicationClientId'] as core.String
                  : null,
          identity: json_.containsKey('identity')
              ? json_['identity'] as core.String
              : null,
          objectId: json_.containsKey('objectId')
              ? json_['objectId'] as core.String
              : null,
          redirectUri: json_.containsKey('redirectUri')
              ? json_['redirectUri'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (application != null) 'application': application!,
        if (clientId != null) 'clientId': clientId!,
        if (customerTenantId != null) 'customerTenantId': customerTenantId!,
        if (federatedApplicationClientId != null)
          'federatedApplicationClientId': federatedApplicationClientId!,
        if (identity != null) 'identity': identity!,
        if (objectId != null) 'objectId': objectId!,
        if (redirectUri != null) 'redirectUri': redirectUri!,
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

/// Container for connection properties for delegation of access to GCP
/// resources.
class CloudResourceProperties {
  /// The account ID of the service created for the purpose of this connection.
  ///
  /// The service account does not have any permissions associated with it when
  /// it is created. After creation, customers delegate permissions to the
  /// service account. When the connection is used in the context of an
  /// operation in BigQuery, the service account will be used to connect to the
  /// desired resources in GCP. The account ID is in the form of:
  /// @gcp-sa-bigquery-cloudresource.iam.gserviceaccount.com
  ///
  /// Output only.
  core.String? serviceAccountId;

  CloudResourceProperties({
    this.serviceAccountId,
  });

  CloudResourceProperties.fromJson(core.Map json_)
      : this(
          serviceAccountId: json_.containsKey('serviceAccountId')
              ? json_['serviceAccountId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (serviceAccountId != null) 'serviceAccountId': serviceAccountId!,
      };
}

/// Connection properties specific to Cloud Spanner.
class CloudSpannerProperties {
  /// Cloud Spanner database in the form \`project/instance/database'
  core.String? database;

  /// Cloud Spanner database role for fine-grained access control.
  ///
  /// The Cloud Spanner admin should have provisioned the database role with
  /// appropriate permissions, such as `SELECT` and `INSERT`. Other users should
  /// only use roles provided by their Cloud Spanner admins. For more details,
  /// see \[About fine-grained access
  /// control\](https://cloud.google.com/spanner/docs/fgac-about). REQUIRES: The
  /// database role name must start with a letter, and can only contain letters,
  /// numbers, and underscores.
  ///
  /// Optional.
  core.String? databaseRole;

  /// Allows setting max parallelism per query when executing on Spanner
  /// independent compute resources.
  ///
  /// If unspecified, default values of parallelism are chosen that are
  /// dependent on the Cloud Spanner instance configuration. REQUIRES:
  /// `use_parallelism` must be set. REQUIRES: `use_data_boost` must be set.
  core.int? maxParallelism;

  /// If set, the request will be executed via Spanner independent compute
  /// resources.
  ///
  /// REQUIRES: `use_parallelism` must be set.
  core.bool? useDataBoost;

  /// If parallelism should be used when reading from Cloud Spanner
  core.bool? useParallelism;

  /// Deprecated: prefer use_data_boost instead.
  ///
  /// If the serverless analytics service should be used to read data from Cloud
  /// Spanner. Note: `use_parallelism` must be set when using serverless
  /// analytics.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  core.bool? useServerlessAnalytics;

  CloudSpannerProperties({
    this.database,
    this.databaseRole,
    this.maxParallelism,
    this.useDataBoost,
    this.useParallelism,
    this.useServerlessAnalytics,
  });

  CloudSpannerProperties.fromJson(core.Map json_)
      : this(
          database: json_.containsKey('database')
              ? json_['database'] as core.String
              : null,
          databaseRole: json_.containsKey('databaseRole')
              ? json_['databaseRole'] as core.String
              : null,
          maxParallelism: json_.containsKey('maxParallelism')
              ? json_['maxParallelism'] as core.int
              : null,
          useDataBoost: json_.containsKey('useDataBoost')
              ? json_['useDataBoost'] as core.bool
              : null,
          useParallelism: json_.containsKey('useParallelism')
              ? json_['useParallelism'] as core.bool
              : null,
          useServerlessAnalytics: json_.containsKey('useServerlessAnalytics')
              ? json_['useServerlessAnalytics'] as core.bool
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (database != null) 'database': database!,
        if (databaseRole != null) 'databaseRole': databaseRole!,
        if (maxParallelism != null) 'maxParallelism': maxParallelism!,
        if (useDataBoost != null) 'useDataBoost': useDataBoost!,
        if (useParallelism != null) 'useParallelism': useParallelism!,
        if (useServerlessAnalytics != null)
          'useServerlessAnalytics': useServerlessAnalytics!,
      };
}

/// Credential info for the Cloud SQL.
class CloudSqlCredential {
  /// The password for the credential.
  core.String? password;

  /// The username for the credential.
  core.String? username;

  CloudSqlCredential({
    this.password,
    this.username,
  });

  CloudSqlCredential.fromJson(core.Map json_)
      : this(
          password: json_.containsKey('password')
              ? json_['password'] as core.String
              : null,
          username: json_.containsKey('username')
              ? json_['username'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (password != null) 'password': password!,
        if (username != null) 'username': username!,
      };
}

/// Connection properties specific to the Cloud SQL.
class CloudSqlProperties {
  /// Input only.
  ///
  /// Cloud SQL credential.
  CloudSqlCredential? credential;

  /// Database name.
  core.String? database;

  /// Cloud SQL instance ID in the form `project:location:instance`.
  core.String? instanceId;

  /// The account ID of the service used for the purpose of this connection.
  ///
  /// When the connection is used in the context of an operation in BigQuery,
  /// this service account will serve as the identity being used for connecting
  /// to the CloudSQL instance specified in this connection.
  ///
  /// Output only.
  core.String? serviceAccountId;

  /// Type of the Cloud SQL database.
  /// Possible string values are:
  /// - "DATABASE_TYPE_UNSPECIFIED" : Unspecified database type.
  /// - "POSTGRES" : Cloud SQL for PostgreSQL.
  /// - "MYSQL" : Cloud SQL for MySQL.
  core.String? type;

  CloudSqlProperties({
    this.credential,
    this.database,
    this.instanceId,
    this.serviceAccountId,
    this.type,
  });

  CloudSqlProperties.fromJson(core.Map json_)
      : this(
          credential: json_.containsKey('credential')
              ? CloudSqlCredential.fromJson(
                  json_['credential'] as core.Map<core.String, core.dynamic>)
              : null,
          database: json_.containsKey('database')
              ? json_['database'] as core.String
              : null,
          instanceId: json_.containsKey('instanceId')
              ? json_['instanceId'] as core.String
              : null,
          serviceAccountId: json_.containsKey('serviceAccountId')
              ? json_['serviceAccountId'] as core.String
              : null,
          type: json_.containsKey('type') ? json_['type'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (credential != null) 'credential': credential!,
        if (database != null) 'database': database!,
        if (instanceId != null) 'instanceId': instanceId!,
        if (serviceAccountId != null) 'serviceAccountId': serviceAccountId!,
        if (type != null) 'type': type!,
      };
}

/// Configuration parameters to establish connection with an external data
/// source, except the credential attributes.
class Connection {
  /// Amazon Web Services (AWS) properties.
  AwsProperties? aws;

  /// Azure properties.
  AzureProperties? azure;

  /// Cloud Resource properties.
  CloudResourceProperties? cloudResource;

  /// Cloud Spanner properties.
  CloudSpannerProperties? cloudSpanner;

  /// Cloud SQL properties.
  CloudSqlProperties? cloudSql;

  /// Connector configuration.
  ///
  /// Optional.
  ConnectorConfiguration? configuration;

  /// The creation timestamp of the connection.
  ///
  /// Output only.
  core.String? creationTime;

  /// User provided description.
  core.String? description;

  /// User provided display name for the connection.
  core.String? friendlyName;

  /// True, if credential is configured for this connection.
  ///
  /// Output only.
  core.bool? hasCredential;

  /// The Cloud KMS key that is used for encryption.
  ///
  /// Example:
  /// `projects/[kms_project_id]/locations/[region]/keyRings/[key_region]/cryptoKeys/[key]`
  ///
  /// Optional.
  core.String? kmsKeyName;

  /// The last update timestamp of the connection.
  ///
  /// Output only.
  core.String? lastModifiedTime;

  /// The resource name of the connection in the form of:
  /// `projects/{project_id}/locations/{location_id}/connections/{connection_id}`
  ///
  /// Output only.
  core.String? name;

  /// Salesforce DataCloud properties.
  ///
  /// This field is intended for use only by Salesforce partner projects. This
  /// field contains properties for your Salesforce DataCloud connection.
  ///
  /// Optional.
  SalesforceDataCloudProperties? salesforceDataCloud;

  /// Spark properties.
  SparkProperties? spark;

  Connection({
    this.aws,
    this.azure,
    this.cloudResource,
    this.cloudSpanner,
    this.cloudSql,
    this.configuration,
    this.creationTime,
    this.description,
    this.friendlyName,
    this.hasCredential,
    this.kmsKeyName,
    this.lastModifiedTime,
    this.name,
    this.salesforceDataCloud,
    this.spark,
  });

  Connection.fromJson(core.Map json_)
      : this(
          aws: json_.containsKey('aws')
              ? AwsProperties.fromJson(
                  json_['aws'] as core.Map<core.String, core.dynamic>)
              : null,
          azure: json_.containsKey('azure')
              ? AzureProperties.fromJson(
                  json_['azure'] as core.Map<core.String, core.dynamic>)
              : null,
          cloudResource: json_.containsKey('cloudResource')
              ? CloudResourceProperties.fromJson(
                  json_['cloudResource'] as core.Map<core.String, core.dynamic>)
              : null,
          cloudSpanner: json_.containsKey('cloudSpanner')
              ? CloudSpannerProperties.fromJson(
                  json_['cloudSpanner'] as core.Map<core.String, core.dynamic>)
              : null,
          cloudSql: json_.containsKey('cloudSql')
              ? CloudSqlProperties.fromJson(
                  json_['cloudSql'] as core.Map<core.String, core.dynamic>)
              : null,
          configuration: json_.containsKey('configuration')
              ? ConnectorConfiguration.fromJson(
                  json_['configuration'] as core.Map<core.String, core.dynamic>)
              : null,
          creationTime: json_.containsKey('creationTime')
              ? json_['creationTime'] as core.String
              : null,
          description: json_.containsKey('description')
              ? json_['description'] as core.String
              : null,
          friendlyName: json_.containsKey('friendlyName')
              ? json_['friendlyName'] as core.String
              : null,
          hasCredential: json_.containsKey('hasCredential')
              ? json_['hasCredential'] as core.bool
              : null,
          kmsKeyName: json_.containsKey('kmsKeyName')
              ? json_['kmsKeyName'] as core.String
              : null,
          lastModifiedTime: json_.containsKey('lastModifiedTime')
              ? json_['lastModifiedTime'] as core.String
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          salesforceDataCloud: json_.containsKey('salesforceDataCloud')
              ? SalesforceDataCloudProperties.fromJson(
                  json_['salesforceDataCloud']
                      as core.Map<core.String, core.dynamic>)
              : null,
          spark: json_.containsKey('spark')
              ? SparkProperties.fromJson(
                  json_['spark'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (aws != null) 'aws': aws!,
        if (azure != null) 'azure': azure!,
        if (cloudResource != null) 'cloudResource': cloudResource!,
        if (cloudSpanner != null) 'cloudSpanner': cloudSpanner!,
        if (cloudSql != null) 'cloudSql': cloudSql!,
        if (configuration != null) 'configuration': configuration!,
        if (creationTime != null) 'creationTime': creationTime!,
        if (description != null) 'description': description!,
        if (friendlyName != null) 'friendlyName': friendlyName!,
        if (hasCredential != null) 'hasCredential': hasCredential!,
        if (kmsKeyName != null) 'kmsKeyName': kmsKeyName!,
        if (lastModifiedTime != null) 'lastModifiedTime': lastModifiedTime!,
        if (name != null) 'name': name!,
        if (salesforceDataCloud != null)
          'salesforceDataCloud': salesforceDataCloud!,
        if (spark != null) 'spark': spark!,
      };
}

/// Represents concrete parameter values for Connector Configuration.
class ConnectorConfiguration {
  /// Client authentication.
  ConnectorConfigurationAuthentication? authentication;

  /// The ID of the Connector these parameters are configured for.
  ///
  /// Required. Immutable.
  core.String? connectorId;

  /// Specifies how to reach the remote system this connection is pointing to.
  ConnectorConfigurationEndpoint? endpoint;

  /// Networking configuration.
  ConnectorConfigurationNetwork? network;

  ConnectorConfiguration({
    this.authentication,
    this.connectorId,
    this.endpoint,
    this.network,
  });

  ConnectorConfiguration.fromJson(core.Map json_)
      : this(
          authentication: json_.containsKey('authentication')
              ? ConnectorConfigurationAuthentication.fromJson(
                  json_['authentication']
                      as core.Map<core.String, core.dynamic>)
              : null,
          connectorId: json_.containsKey('connectorId')
              ? json_['connectorId'] as core.String
              : null,
          endpoint: json_.containsKey('endpoint')
              ? ConnectorConfigurationEndpoint.fromJson(
                  json_['endpoint'] as core.Map<core.String, core.dynamic>)
              : null,
          network: json_.containsKey('network')
              ? ConnectorConfigurationNetwork.fromJson(
                  json_['network'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (authentication != null) 'authentication': authentication!,
        if (connectorId != null) 'connectorId': connectorId!,
        if (endpoint != null) 'endpoint': endpoint!,
        if (network != null) 'network': network!,
      };
}

/// Client authentication.
class ConnectorConfigurationAuthentication {
  /// Username/password authentication.
  ConnectorConfigurationUsernamePassword? usernamePassword;

  ConnectorConfigurationAuthentication({
    this.usernamePassword,
  });

  ConnectorConfigurationAuthentication.fromJson(core.Map json_)
      : this(
          usernamePassword: json_.containsKey('usernamePassword')
              ? ConnectorConfigurationUsernamePassword.fromJson(
                  json_['usernamePassword']
                      as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (usernamePassword != null) 'usernamePassword': usernamePassword!,
      };
}

/// Remote endpoint specification.
class ConnectorConfigurationEndpoint {
  /// Host and port in a format of `hostname:port` as defined in
  /// https://www.ietf.org/rfc/rfc3986.html#section-3.2.2 and
  /// https://www.ietf.org/rfc/rfc3986.html#section-3.2.3.
  core.String? hostPort;

  ConnectorConfigurationEndpoint({
    this.hostPort,
  });

  ConnectorConfigurationEndpoint.fromJson(core.Map json_)
      : this(
          hostPort: json_.containsKey('hostPort')
              ? json_['hostPort'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (hostPort != null) 'hostPort': hostPort!,
      };
}

/// Network related configuration.
class ConnectorConfigurationNetwork {
  /// Private Service Connect networking configuration.
  ConnectorConfigurationPrivateServiceConnect? privateServiceConnect;

  ConnectorConfigurationNetwork({
    this.privateServiceConnect,
  });

  ConnectorConfigurationNetwork.fromJson(core.Map json_)
      : this(
          privateServiceConnect: json_.containsKey('privateServiceConnect')
              ? ConnectorConfigurationPrivateServiceConnect.fromJson(
                  json_['privateServiceConnect']
                      as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (privateServiceConnect != null)
          'privateServiceConnect': privateServiceConnect!,
      };
}

/// Private Service Connect configuration.
class ConnectorConfigurationPrivateServiceConnect {
  /// Network Attachment name in the format of
  /// `projects/{project}/regions/{region}/networkAttachments/{networkattachment}`.
  ///
  /// Required.
  core.String? networkAttachment;

  ConnectorConfigurationPrivateServiceConnect({
    this.networkAttachment,
  });

  ConnectorConfigurationPrivateServiceConnect.fromJson(core.Map json_)
      : this(
          networkAttachment: json_.containsKey('networkAttachment')
              ? json_['networkAttachment'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (networkAttachment != null) 'networkAttachment': networkAttachment!,
      };
}

/// Secret value parameter.
class ConnectorConfigurationSecret {
  /// Input only.
  ///
  /// Secret as plaintext.
  core.String? plaintext;

  /// Indicates type of secret.
  ///
  /// Can be used to check type of stored secret value even if it's
  /// `INPUT_ONLY`.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "SECRET_TYPE_UNSPECIFIED"
  /// - "PLAINTEXT"
  core.String? secretType;

  ConnectorConfigurationSecret({
    this.plaintext,
    this.secretType,
  });

  ConnectorConfigurationSecret.fromJson(core.Map json_)
      : this(
          plaintext: json_.containsKey('plaintext')
              ? json_['plaintext'] as core.String
              : null,
          secretType: json_.containsKey('secretType')
              ? json_['secretType'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (plaintext != null) 'plaintext': plaintext!,
        if (secretType != null) 'secretType': secretType!,
      };
}

/// Username and Password authentication.
class ConnectorConfigurationUsernamePassword {
  /// Password.
  ///
  /// Required.
  ConnectorConfigurationSecret? password;

  /// Username.
  ///
  /// Required.
  core.String? username;

  ConnectorConfigurationUsernamePassword({
    this.password,
    this.username,
  });

  ConnectorConfigurationUsernamePassword.fromJson(core.Map json_)
      : this(
          password: json_.containsKey('password')
              ? ConnectorConfigurationSecret.fromJson(
                  json_['password'] as core.Map<core.String, core.dynamic>)
              : null,
          username: json_.containsKey('username')
              ? json_['username'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (password != null) 'password': password!,
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

/// Request message for `GetIamPolicy` method.
class GetIamPolicyRequest {
  /// OPTIONAL: A `GetPolicyOptions` object for specifying options to
  /// `GetIamPolicy`.
  GetPolicyOptions? options;

  GetIamPolicyRequest({
    this.options,
  });

  GetIamPolicyRequest.fromJson(core.Map json_)
      : this(
          options: json_.containsKey('options')
              ? GetPolicyOptions.fromJson(
                  json_['options'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (options != null) 'options': options!,
      };
}

/// Encapsulates settings provided to GetIamPolicy.
typedef GetPolicyOptions = $GetPolicyOptions;

/// The response for ConnectionService.ListConnections.
class ListConnectionsResponse {
  /// List of connections.
  core.List<Connection>? connections;

  /// Next page token.
  core.String? nextPageToken;

  ListConnectionsResponse({
    this.connections,
    this.nextPageToken,
  });

  ListConnectionsResponse.fromJson(core.Map json_)
      : this(
          connections: json_.containsKey('connections')
              ? (json_['connections'] as core.List)
                  .map((value) => Connection.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (connections != null) 'connections': connections!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
      };
}

/// Configuration of the Dataproc Metastore Service.
class MetastoreServiceConfig {
  /// Resource name of an existing Dataproc Metastore service.
  ///
  /// Example: *
  /// `projects/[project_id]/locations/[region]/services/[service_id]`
  ///
  /// Optional.
  core.String? metastoreService;

  MetastoreServiceConfig({
    this.metastoreService,
  });

  MetastoreServiceConfig.fromJson(core.Map json_)
      : this(
          metastoreService: json_.containsKey('metastoreService')
              ? json_['metastoreService'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (metastoreService != null) 'metastoreService': metastoreService!,
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
    this.auditConfigs,
    this.bindings,
    this.etag,
    this.version,
  });

  Policy.fromJson(core.Map json_)
      : this(
          auditConfigs: json_.containsKey('auditConfigs')
              ? (json_['auditConfigs'] as core.List)
                  .map((value) => AuditConfig.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
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
        if (auditConfigs != null) 'auditConfigs': auditConfigs!,
        if (bindings != null) 'bindings': bindings!,
        if (etag != null) 'etag': etag!,
        if (version != null) 'version': version!,
      };
}

/// Connection properties specific to Salesforce DataCloud.
///
/// This is intended for use only by Salesforce partner projects.
class SalesforceDataCloudProperties {
  /// A unique Google-owned and Google-generated service account identity for
  /// the connection.
  ///
  /// Output only.
  core.String? identity;

  /// The URL to the user's Salesforce DataCloud instance.
  core.String? instanceUri;

  /// The ID of the user's Salesforce tenant.
  core.String? tenantId;

  SalesforceDataCloudProperties({
    this.identity,
    this.instanceUri,
    this.tenantId,
  });

  SalesforceDataCloudProperties.fromJson(core.Map json_)
      : this(
          identity: json_.containsKey('identity')
              ? json_['identity'] as core.String
              : null,
          instanceUri: json_.containsKey('instanceUri')
              ? json_['instanceUri'] as core.String
              : null,
          tenantId: json_.containsKey('tenantId')
              ? json_['tenantId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (identity != null) 'identity': identity!,
        if (instanceUri != null) 'instanceUri': instanceUri!,
        if (tenantId != null) 'tenantId': tenantId!,
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

  /// OPTIONAL: A FieldMask specifying which fields of the policy to modify.
  ///
  /// Only the fields in the mask will be modified. If no mask is provided, the
  /// following default mask is used: `paths: "bindings, etag"`
  core.String? updateMask;

  SetIamPolicyRequest({
    this.policy,
    this.updateMask,
  });

  SetIamPolicyRequest.fromJson(core.Map json_)
      : this(
          policy: json_.containsKey('policy')
              ? Policy.fromJson(
                  json_['policy'] as core.Map<core.String, core.dynamic>)
              : null,
          updateMask: json_.containsKey('updateMask')
              ? json_['updateMask'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (policy != null) 'policy': policy!,
        if (updateMask != null) 'updateMask': updateMask!,
      };
}

/// Configuration of the Spark History Server.
class SparkHistoryServerConfig {
  /// Resource name of an existing Dataproc Cluster to act as a Spark History
  /// Server for the connection.
  ///
  /// Example: *
  /// `projects/[project_id]/regions/[region]/clusters/[cluster_name]`
  ///
  /// Optional.
  core.String? dataprocCluster;

  SparkHistoryServerConfig({
    this.dataprocCluster,
  });

  SparkHistoryServerConfig.fromJson(core.Map json_)
      : this(
          dataprocCluster: json_.containsKey('dataprocCluster')
              ? json_['dataprocCluster'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (dataprocCluster != null) 'dataprocCluster': dataprocCluster!,
      };
}

/// Container for connection properties to execute stored procedures for Apache
/// Spark.
class SparkProperties {
  /// Dataproc Metastore Service configuration for the connection.
  ///
  /// Optional.
  MetastoreServiceConfig? metastoreServiceConfig;

  /// The account ID of the service created for the purpose of this connection.
  ///
  /// The service account does not have any permissions associated with it when
  /// it is created. After creation, customers delegate permissions to the
  /// service account. When the connection is used in the context of a stored
  /// procedure for Apache Spark in BigQuery, the service account is used to
  /// connect to the desired resources in Google Cloud. The account ID is in the
  /// form of: bqcx--@gcp-sa-bigquery-consp.iam.gserviceaccount.com
  ///
  /// Output only.
  core.String? serviceAccountId;

  /// Spark History Server configuration for the connection.
  ///
  /// Optional.
  SparkHistoryServerConfig? sparkHistoryServerConfig;

  SparkProperties({
    this.metastoreServiceConfig,
    this.serviceAccountId,
    this.sparkHistoryServerConfig,
  });

  SparkProperties.fromJson(core.Map json_)
      : this(
          metastoreServiceConfig: json_.containsKey('metastoreServiceConfig')
              ? MetastoreServiceConfig.fromJson(json_['metastoreServiceConfig']
                  as core.Map<core.String, core.dynamic>)
              : null,
          serviceAccountId: json_.containsKey('serviceAccountId')
              ? json_['serviceAccountId'] as core.String
              : null,
          sparkHistoryServerConfig:
              json_.containsKey('sparkHistoryServerConfig')
                  ? SparkHistoryServerConfig.fromJson(
                      json_['sparkHistoryServerConfig']
                          as core.Map<core.String, core.dynamic>)
                  : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (metastoreServiceConfig != null)
          'metastoreServiceConfig': metastoreServiceConfig!,
        if (serviceAccountId != null) 'serviceAccountId': serviceAccountId!,
        if (sparkHistoryServerConfig != null)
          'sparkHistoryServerConfig': sparkHistoryServerConfig!,
      };
}

/// Request message for `TestIamPermissions` method.
typedef TestIamPermissionsRequest = $TestIamPermissionsRequest00;

/// Response message for `TestIamPermissions` method.
typedef TestIamPermissionsResponse = $PermissionsResponse;
