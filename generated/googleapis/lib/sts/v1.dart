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

/// Security Token Service API - v1
///
/// The Security Token Service exchanges Google or third-party credentials for a
/// short-lived access token to Google Cloud resources.
///
/// For more information, see
/// <http://cloud.google.com/iam/docs/workload-identity-federation>
///
/// Create an instance of [CloudSecurityTokenApi] to access these resources:
///
/// - [V1Resource]
library sts.v1;

import 'dart:async' as async;
import 'dart:convert' as convert;
import 'dart:core' as core;

import 'package:_discoveryapis_commons/_discoveryapis_commons.dart' as commons;
import 'package:http/http.dart' as http;

import '../src/user_agent.dart';

export 'package:_discoveryapis_commons/_discoveryapis_commons.dart'
    show ApiRequestError, DetailedApiRequestError;

/// The Security Token Service exchanges Google or third-party credentials for a
/// short-lived access token to Google Cloud resources.
class CloudSecurityTokenApi {
  final commons.ApiRequester _requester;

  V1Resource get v1 => V1Resource(_requester);

  CloudSecurityTokenApi(http.Client client,
      {core.String rootUrl = 'https://sts.googleapis.com/',
      core.String servicePath = ''})
      : _requester =
            commons.ApiRequester(client, rootUrl, servicePath, requestHeaders);
}

class V1Resource {
  final commons.ApiRequester _requester;

  V1Resource(commons.ApiRequester client) : _requester = client;

  /// Exchanges a credential for a Google OAuth 2.0 access token.
  ///
  /// The token asserts an external identity within a workload identity pool, or
  /// it applies a Credential Access Boundary to a Google access token. When you
  /// call this method, do not send the `Authorization` HTTP header in the
  /// request. This method does not require the `Authorization` header, and
  /// using the header can cause the request to fail.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleIdentityStsV1ExchangeTokenResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleIdentityStsV1ExchangeTokenResponse> token(
    GoogleIdentityStsV1ExchangeTokenRequest request, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    const _url = 'v1/token';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return GoogleIdentityStsV1ExchangeTokenResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

/// Associates `members` with a `role`.
class GoogleIamV1Binding {
  /// The condition that is associated with this binding.
  ///
  /// If the condition evaluates to `true`, then this binding applies to the
  /// current request. If the condition evaluates to `false`, then this binding
  /// does not apply to the current request. However, a different role binding
  /// might grant the same role to one or more of the members in this binding.
  /// To learn which resources support conditions in their IAM policies, see the
  /// [IAM documentation](https://cloud.google.com/iam/help/conditions/resource-policies).
  GoogleTypeExpr? condition;

  /// Specifies the identities requesting access for a Cloud Platform resource.
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

  /// Role that is assigned to `members`.
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

/// An access boundary defines the upper bound of what a principal may access.
///
/// It includes a list of access boundary rules that each defines the resource
/// that may be allowed as well as permissions that may be used on those
/// resources.
class GoogleIdentityStsV1AccessBoundary {
  /// A list of access boundary rules which defines the upper bound of the
  /// permission a principal may carry.
  ///
  /// If multiple rules are specified, the effective access boundary is the
  /// union of all the access boundary rules attached. One access boundary can
  /// contain at most 10 rules.
  core.List<GoogleIdentityStsV1AccessBoundaryRule>? accessBoundaryRules;

  GoogleIdentityStsV1AccessBoundary({
    this.accessBoundaryRules,
  });

  GoogleIdentityStsV1AccessBoundary.fromJson(core.Map _json)
      : this(
          accessBoundaryRules: _json.containsKey('accessBoundaryRules')
              ? (_json['accessBoundaryRules'] as core.List)
                  .map((value) =>
                      GoogleIdentityStsV1AccessBoundaryRule.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (accessBoundaryRules != null)
          'accessBoundaryRules': accessBoundaryRules!,
      };
}

/// An access boundary rule defines an upper bound of IAM permissions on a
/// single resource.
class GoogleIdentityStsV1AccessBoundaryRule {
  /// The availability condition further constrains the access allowed by the
  /// access boundary rule.
  ///
  /// If the condition evaluates to `true`, then this access boundary rule will
  /// provide access to the specified resource, assuming the principal has the
  /// required permissions for the resource. If the condition does not evaluate
  /// to `true`, then access to the specified resource will not be available.
  /// Note that all access boundary rules in an access boundary are evaluated
  /// together as a union. As such, another access boundary rule may allow
  /// access to the resource, even if this access boundary rule does not allow
  /// access. To learn which resources support conditions in their IAM policies,
  /// see the
  /// [IAM documentation](https://cloud.google.com/iam/help/conditions/resource-policies).
  /// The maximum length of the `expression` field is 2048 characters.
  GoogleTypeExpr? availabilityCondition;

  /// A list of permissions that may be allowed for use on the specified
  /// resource.
  ///
  /// The only supported values in the list are IAM roles, following the format
  /// of google.iam.v1.Binding.role. Example value:
  /// `inRole:roles/logging.viewer` for predefined roles and
  /// `inRole:organizations/{ORGANIZATION_ID}/roles/logging.viewer` for custom
  /// roles.
  core.List<core.String>? availablePermissions;

  /// The full resource name of a Google Cloud resource entity.
  ///
  /// The format definition is at
  /// https://cloud.google.com/apis/design/resource_names. Example value:
  /// `//cloudresourcemanager.googleapis.com/projects/my-project`.
  core.String? availableResource;

  GoogleIdentityStsV1AccessBoundaryRule({
    this.availabilityCondition,
    this.availablePermissions,
    this.availableResource,
  });

  GoogleIdentityStsV1AccessBoundaryRule.fromJson(core.Map _json)
      : this(
          availabilityCondition: _json.containsKey('availabilityCondition')
              ? GoogleTypeExpr.fromJson(_json['availabilityCondition']
                  as core.Map<core.String, core.dynamic>)
              : null,
          availablePermissions: _json.containsKey('availablePermissions')
              ? (_json['availablePermissions'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          availableResource: _json.containsKey('availableResource')
              ? _json['availableResource'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (availabilityCondition != null)
          'availabilityCondition': availabilityCondition!,
        if (availablePermissions != null)
          'availablePermissions': availablePermissions!,
        if (availableResource != null) 'availableResource': availableResource!,
      };
}

/// Request message for ExchangeToken.
class GoogleIdentityStsV1ExchangeTokenRequest {
  /// The full resource name of the identity provider; for example:
  /// `//iam.googleapis.com/projects//locations/global/workloadIdentityPools//providers/`.
  ///
  /// Required when exchanging an external credential for a Google access token.
  core.String? audience;

  /// The grant type.
  ///
  /// Must be `urn:ietf:params:oauth:grant-type:token-exchange`, which indicates
  /// a token exchange.
  ///
  /// Required.
  core.String? grantType;

  /// A set of features that Security Token Service supports, in addition to the
  /// standard OAuth 2.0 token exchange, formatted as a serialized JSON object
  /// of Options.
  core.String? options;

  /// An identifier for the type of requested security token.
  ///
  /// Must be `urn:ietf:params:oauth:token-type:access_token`.
  ///
  /// Required.
  core.String? requestedTokenType;

  /// The OAuth 2.0 scopes to include on the resulting access token, formatted
  /// as a list of space-delimited, case-sensitive strings.
  ///
  /// Required when exchanging an external credential for a Google access token.
  core.String? scope;

  /// The input token.
  ///
  /// This token is either an external credential issued by a workload identity
  /// pool provider, or a short-lived access token issued by Google. If the
  /// token is an OIDC JWT, it must use the JWT format defined in
  /// [RFC 7523](https://tools.ietf.org/html/rfc7523), and the
  /// `subject_token_type` must be either `urn:ietf:params:oauth:token-type:jwt`
  /// or `urn:ietf:params:oauth:token-type:id_token`. The following headers are
  /// required: - `kid`: The identifier of the signing key securing the JWT. -
  /// `alg`: The cryptographic algorithm securing the JWT. Must be `RS256` or
  /// `ES256`. The following payload fields are required. For more information,
  /// see [RFC 7523, Section 3](https://tools.ietf.org/html/rfc7523#section-3):
  /// - `iss`: The issuer of the token. The issuer must provide a discovery
  /// document at the URL `/.well-known/openid-configuration`, where `` is the
  /// value of this field. The document must be formatted according to section
  /// 4.2 of the
  /// [OIDC 1.0 Discovery specification](https://openid.net/specs/openid-connect-discovery-1_0.html#ProviderConfigurationResponse).
  /// - `iat`: The issue time, in seconds, since the Unix epoch. Must be in the
  /// past. - `exp`: The expiration time, in seconds, since the Unix epoch. Must
  /// be less than 48 hours after `iat`. Shorter expiration times are more
  /// secure. If possible, we recommend setting an expiration time less than 6
  /// hours. - `sub`: The identity asserted in the JWT. - `aud`: For workload
  /// identity pools, this must be a value specified in the allowed audiences
  /// for the workload identity pool provider, or one of the audiences allowed
  /// by default if no audiences were specified. See
  /// https://cloud.google.com/iam/docs/reference/rest/v1/projects.locations.workloadIdentityPools.providers#oidc
  /// Example header: ``` { "alg": "RS256", "kid": "us-east-11" } ``` Example
  /// payload: ``` { "iss": "https://accounts.google.com", "iat": 1517963104,
  /// "exp": 1517966704, "aud":
  /// "//iam.googleapis.com/projects/1234567890123/locations/global/workloadIdentityPools/my-pool/providers/my-provider",
  /// "sub": "113475438248934895348", "my_claims": { "additional_claim": "value"
  /// } } ``` If `subject_token` is for AWS, it must be a serialized
  /// `GetCallerIdentity` token. This token contains the same information as a
  /// request to the AWS
  /// \[`GetCallerIdentity()`\](https://docs.aws.amazon.com/STS/latest/APIReference/API_GetCallerIdentity)
  /// method, as well as the AWS
  /// [signature](https://docs.aws.amazon.com/general/latest/gr/signing_aws_api_requests.html)
  /// for the request information. Use Signature Version 4. Format the request
  /// as URL-encoded JSON, and set the `subject_token_type` parameter to
  /// `urn:ietf:params:aws:token-type:aws4_request`. The following parameters
  /// are required: - `url`: The URL of the AWS STS endpoint for
  /// `GetCallerIdentity()`, such as
  /// `https://sts.amazonaws.com?Action=GetCallerIdentity&Version=2011-06-15`.
  /// Regional endpoints are also supported. - `method`: The HTTP request
  /// method: `POST`. - `headers`: The HTTP request headers, which must include:
  /// - `Authorization`: The request signature. - `x-amz-date`: The time you
  /// will send the request, formatted as an
  /// [ISO8601 Basic](https://docs.aws.amazon.com/general/latest/gr/sigv4_elements.html#sigv4_elements_date)
  /// string. This value is typically set to the current time and is used to
  /// help prevent replay attacks. - `host`: The hostname of the `url` field;
  /// for example, `sts.amazonaws.com`. - `x-goog-cloud-target-resource`: The
  /// full, canonical resource name of the workload identity pool provider, with
  /// or without an `https:` prefix. To help ensure data integrity, we recommend
  /// including this header in the `SignedHeaders` field of the signed request.
  /// For example:
  /// //iam.googleapis.com/projects//locations/global/workloadIdentityPools//providers/
  /// https://iam.googleapis.com/projects//locations/global/workloadIdentityPools//providers/
  /// If you are using temporary security credentials provided by AWS, you must
  /// also include the header `x-amz-security-token`, with the value set to the
  /// session token. The following example shows a `GetCallerIdentity` token:
  /// ``` { "headers": [ {"key": "x-amz-date", "value": "20200815T015049Z"},
  /// {"key": "Authorization", "value":
  /// "AWS4-HMAC-SHA256+Credential=$credential,+SignedHeaders=host;x-amz-date;x-goog-cloud-target-resource,+Signature=$signature"},
  /// {"key": "x-goog-cloud-target-resource", "value":
  /// "//iam.googleapis.com/projects//locations/global/workloadIdentityPools//providers/"},
  /// {"key": "host", "value": "sts.amazonaws.com"} . ], "method": "POST",
  /// "url":
  /// "https://sts.amazonaws.com?Action=GetCallerIdentity&Version=2011-06-15" }
  /// ``` You can also use a Google-issued OAuth 2.0 access token with this
  /// field to obtain an access token with new security attributes applied, such
  /// as a Credential Access Boundary. In this case, set `subject_token_type` to
  /// `urn:ietf:params:oauth:token-type:access_token`. If an access token
  /// already contains security attributes, you cannot apply additional security
  /// attributes.
  ///
  /// Required.
  core.String? subjectToken;

  /// An identifier that indicates the type of the security token in the
  /// `subject_token` parameter.
  ///
  /// Supported values are `urn:ietf:params:oauth:token-type:jwt`,
  /// `urn:ietf:params:oauth:token-type:id_token`,
  /// `urn:ietf:params:aws:token-type:aws4_request`, and
  /// `urn:ietf:params:oauth:token-type:access_token`.
  ///
  /// Required.
  core.String? subjectTokenType;

  GoogleIdentityStsV1ExchangeTokenRequest({
    this.audience,
    this.grantType,
    this.options,
    this.requestedTokenType,
    this.scope,
    this.subjectToken,
    this.subjectTokenType,
  });

  GoogleIdentityStsV1ExchangeTokenRequest.fromJson(core.Map _json)
      : this(
          audience: _json.containsKey('audience')
              ? _json['audience'] as core.String
              : null,
          grantType: _json.containsKey('grantType')
              ? _json['grantType'] as core.String
              : null,
          options: _json.containsKey('options')
              ? _json['options'] as core.String
              : null,
          requestedTokenType: _json.containsKey('requestedTokenType')
              ? _json['requestedTokenType'] as core.String
              : null,
          scope:
              _json.containsKey('scope') ? _json['scope'] as core.String : null,
          subjectToken: _json.containsKey('subjectToken')
              ? _json['subjectToken'] as core.String
              : null,
          subjectTokenType: _json.containsKey('subjectTokenType')
              ? _json['subjectTokenType'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (audience != null) 'audience': audience!,
        if (grantType != null) 'grantType': grantType!,
        if (options != null) 'options': options!,
        if (requestedTokenType != null)
          'requestedTokenType': requestedTokenType!,
        if (scope != null) 'scope': scope!,
        if (subjectToken != null) 'subjectToken': subjectToken!,
        if (subjectTokenType != null) 'subjectTokenType': subjectTokenType!,
      };
}

/// Response message for ExchangeToken.
class GoogleIdentityStsV1ExchangeTokenResponse {
  /// An OAuth 2.0 security token, issued by Google, in response to the token
  /// exchange request.
  ///
  /// Tokens can vary in size, depending in part on the size of mapped claims,
  /// up to a maximum of 12288 bytes (12 KB). Google reserves the right to
  /// change the token size and the maximum length at any time.
  core.String? accessToken;

  /// The amount of time, in seconds, between the time when the access token was
  /// issued and the time when the access token will expire.
  ///
  /// This field is absent when the `subject_token` in the request is a
  /// Google-issued, short-lived access token. In this case, the access token
  /// has the same expiration time as the `subject_token`.
  core.int? expiresIn;

  /// The token type.
  ///
  /// Always matches the value of `requested_token_type` from the request.
  core.String? issuedTokenType;

  /// The type of access token.
  ///
  /// Always has the value `Bearer`.
  core.String? tokenType;

  GoogleIdentityStsV1ExchangeTokenResponse({
    this.accessToken,
    this.expiresIn,
    this.issuedTokenType,
    this.tokenType,
  });

  GoogleIdentityStsV1ExchangeTokenResponse.fromJson(core.Map _json)
      : this(
          accessToken: _json.containsKey('access_token')
              ? _json['access_token'] as core.String
              : null,
          expiresIn: _json.containsKey('expires_in')
              ? _json['expires_in'] as core.int
              : null,
          issuedTokenType: _json.containsKey('issued_token_type')
              ? _json['issued_token_type'] as core.String
              : null,
          tokenType: _json.containsKey('token_type')
              ? _json['token_type'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (accessToken != null) 'access_token': accessToken!,
        if (expiresIn != null) 'expires_in': expiresIn!,
        if (issuedTokenType != null) 'issued_token_type': issuedTokenType!,
        if (tokenType != null) 'token_type': tokenType!,
      };
}

/// An `Options` object configures features that the Security Token Service
/// supports, but that are not supported by standard OAuth 2.0 token exchange
/// endpoints, as defined in https://tools.ietf.org/html/rfc8693.
class GoogleIdentityStsV1Options {
  /// An access boundary that defines the upper bound of permissions the
  /// credential may have.
  ///
  /// The value should be a JSON object of AccessBoundary. The access boundary
  /// can include up to 10 rules. The size of the parameter value should not
  /// exceed 2048 characters.
  GoogleIdentityStsV1AccessBoundary? accessBoundary;

  /// The intended audience(s) of the credential.
  ///
  /// The audience value(s) should be the name(s) of services intended to
  /// receive the credential. Example: `["https://pubsub.googleapis.com/",
  /// "https://storage.googleapis.com/"]`. A maximum of 5 audiences can be
  /// included. For each provided audience, the maximum length is 262
  /// characters.
  core.List<core.String>? audiences;

  /// A Google project used for quota and billing purposes when the credential
  /// is used to access Google APIs.
  ///
  /// The provided project overrides the project bound to the credential. The
  /// value must be a project number or a project ID. Example:
  /// `my-sample-project-191923`. The maximum length is 32 characters.
  core.String? userProject;

  GoogleIdentityStsV1Options({
    this.accessBoundary,
    this.audiences,
    this.userProject,
  });

  GoogleIdentityStsV1Options.fromJson(core.Map _json)
      : this(
          accessBoundary: _json.containsKey('accessBoundary')
              ? GoogleIdentityStsV1AccessBoundary.fromJson(
                  _json['accessBoundary']
                      as core.Map<core.String, core.dynamic>)
              : null,
          audiences: _json.containsKey('audiences')
              ? (_json['audiences'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          userProject: _json.containsKey('userProject')
              ? _json['userProject'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (accessBoundary != null) 'accessBoundary': accessBoundary!,
        if (audiences != null) 'audiences': audiences!,
        if (userProject != null) 'userProject': userProject!,
      };
}

/// An access boundary defines the upper bound of what a principal may access.
///
/// It includes a list of access boundary rules that each defines the resource
/// that may be allowed as well as permissions that may be used on those
/// resources.
class GoogleIdentityStsV1betaAccessBoundary {
  /// A list of access boundary rules which defines the upper bound of the
  /// permission a principal may carry.
  ///
  /// If multiple rules are specified, the effective access boundary is the
  /// union of all the access boundary rules attached. One access boundary can
  /// contain at most 10 rules.
  core.List<GoogleIdentityStsV1betaAccessBoundaryRule>? accessBoundaryRules;

  GoogleIdentityStsV1betaAccessBoundary({
    this.accessBoundaryRules,
  });

  GoogleIdentityStsV1betaAccessBoundary.fromJson(core.Map _json)
      : this(
          accessBoundaryRules: _json.containsKey('accessBoundaryRules')
              ? (_json['accessBoundaryRules'] as core.List)
                  .map((value) =>
                      GoogleIdentityStsV1betaAccessBoundaryRule.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (accessBoundaryRules != null)
          'accessBoundaryRules': accessBoundaryRules!,
      };
}

/// An access boundary rule defines an upper bound of IAM permissions on a
/// single resource.
class GoogleIdentityStsV1betaAccessBoundaryRule {
  /// The availability condition further constrains the access allowed by the
  /// access boundary rule.
  ///
  /// If the condition evaluates to `true`, then this access boundary rule will
  /// provide access to the specified resource, assuming the principal has the
  /// required permissions for the resource. If the condition does not evaluate
  /// to `true`, then access to the specified resource will not be available.
  /// Note that all access boundary rules in an access boundary are evaluated
  /// together as a union. As such, another access boundary rule may allow
  /// access to the resource, even if this access boundary rule does not allow
  /// access. To learn which resources support conditions in their IAM policies,
  /// see the
  /// [IAM documentation](https://cloud.google.com/iam/help/conditions/resource-policies).
  /// The maximum length of the `expression` field is 2048 characters.
  GoogleTypeExpr? availabilityCondition;

  /// A list of permissions that may be allowed for use on the specified
  /// resource.
  ///
  /// The only supported values in the list are IAM roles, following the format
  /// of google.iam.v1.Binding.role. Example value:
  /// `inRole:roles/logging.viewer` for predefined roles and
  /// `inRole:organizations/{ORGANIZATION_ID}/roles/logging.viewer` for custom
  /// roles.
  core.List<core.String>? availablePermissions;

  /// The full resource name of a Google Cloud resource entity.
  ///
  /// The format definition is at
  /// https://cloud.google.com/apis/design/resource_names. Example value:
  /// `//cloudresourcemanager.googleapis.com/projects/my-project`.
  core.String? availableResource;

  GoogleIdentityStsV1betaAccessBoundaryRule({
    this.availabilityCondition,
    this.availablePermissions,
    this.availableResource,
  });

  GoogleIdentityStsV1betaAccessBoundaryRule.fromJson(core.Map _json)
      : this(
          availabilityCondition: _json.containsKey('availabilityCondition')
              ? GoogleTypeExpr.fromJson(_json['availabilityCondition']
                  as core.Map<core.String, core.dynamic>)
              : null,
          availablePermissions: _json.containsKey('availablePermissions')
              ? (_json['availablePermissions'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          availableResource: _json.containsKey('availableResource')
              ? _json['availableResource'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (availabilityCondition != null)
          'availabilityCondition': availabilityCondition!,
        if (availablePermissions != null)
          'availablePermissions': availablePermissions!,
        if (availableResource != null) 'availableResource': availableResource!,
      };
}

/// An `Options` object configures features that the Security Token Service
/// supports, but that are not supported by standard OAuth 2.0 token exchange
/// endpoints, as defined in https://tools.ietf.org/html/rfc8693.
class GoogleIdentityStsV1betaOptions {
  /// An access boundary that defines the upper bound of permissions the
  /// credential may have.
  ///
  /// The value should be a JSON object of AccessBoundary. The access boundary
  /// can include up to 10 rules. The size of the parameter value should not
  /// exceed 2048 characters.
  GoogleIdentityStsV1betaAccessBoundary? accessBoundary;

  /// The intended audience(s) of the credential.
  ///
  /// The audience value(s) should be the name(s) of services intended to
  /// receive the credential. Example: `["https://pubsub.googleapis.com/",
  /// "https://storage.googleapis.com/"]`. A maximum of 5 audiences can be
  /// included. For each provided audience, the maximum length is 262
  /// characters.
  core.List<core.String>? audiences;

  /// A Google project used for quota and billing purposes when the credential
  /// is used to access Google APIs.
  ///
  /// The provided project overrides the project bound to the credential. The
  /// value must be a project number or a project ID. Example:
  /// `my-sample-project-191923`. The maximum length is 32 characters.
  core.String? userProject;

  GoogleIdentityStsV1betaOptions({
    this.accessBoundary,
    this.audiences,
    this.userProject,
  });

  GoogleIdentityStsV1betaOptions.fromJson(core.Map _json)
      : this(
          accessBoundary: _json.containsKey('accessBoundary')
              ? GoogleIdentityStsV1betaAccessBoundary.fromJson(
                  _json['accessBoundary']
                      as core.Map<core.String, core.dynamic>)
              : null,
          audiences: _json.containsKey('audiences')
              ? (_json['audiences'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          userProject: _json.containsKey('userProject')
              ? _json['userProject'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (accessBoundary != null) 'accessBoundary': accessBoundary!,
        if (audiences != null) 'audiences': audiences!,
        if (userProject != null) 'userProject': userProject!,
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
class GoogleTypeExpr {
  /// Description of the expression.
  ///
  /// This is a longer text which describes the expression, e.g. when hovered
  /// over it in a UI.
  ///
  /// Optional.
  core.String? description;

  /// Textual representation of an expression in Common Expression Language
  /// syntax.
  core.String? expression;

  /// String indicating the location of the expression for error reporting, e.g.
  /// a file name and a position in the file.
  ///
  /// Optional.
  core.String? location;

  /// Title for the expression, i.e. a short string describing its purpose.
  ///
  /// This can be used e.g. in UIs which allow to enter the expression.
  ///
  /// Optional.
  core.String? title;

  GoogleTypeExpr({
    this.description,
    this.expression,
    this.location,
    this.title,
  });

  GoogleTypeExpr.fromJson(core.Map _json)
      : this(
          description: _json.containsKey('description')
              ? _json['description'] as core.String
              : null,
          expression: _json.containsKey('expression')
              ? _json['expression'] as core.String
              : null,
          location: _json.containsKey('location')
              ? _json['location'] as core.String
              : null,
          title:
              _json.containsKey('title') ? _json['title'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (description != null) 'description': description!,
        if (expression != null) 'expression': expression!,
        if (location != null) 'location': location!,
        if (title != null) 'title': title!,
      };
}
