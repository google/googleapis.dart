// Copyright 2021 Google LLC
//
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file or at
// https://developers.google.com/open-source/licenses/bsd

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

/// Security Token Service API - v1
///
/// The Security Token Service exchanges Google or third-party credentials for a
/// short-lived access token to Google Cloud resources.
///
/// For more information, see
/// <https://cloud.google.com/iam/docs/workload-identity-federation>
///
/// Create an instance of [CloudSecurityTokenApi] to access these resources:
///
/// - [OrganizationsResource]
///   - [OrganizationsLocationsResource]
///     - [OrganizationsLocationsWorkloadIdentityPoolsResource]
///       - [OrganizationsLocationsWorkloadIdentityPoolsOpenidResource]
///       - [OrganizationsLocationsWorkloadIdentityPoolsWellKnownResource]
/// - [ProjectsResource]
///   - [ProjectsLocationsResource]
///     - [ProjectsLocationsWorkloadIdentityPoolsResource]
///       - [ProjectsLocationsWorkloadIdentityPoolsOpenidResource]
///       - [ProjectsLocationsWorkloadIdentityPoolsWellKnownResource]
/// - [V1Resource]
library;

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

  OrganizationsResource get organizations => OrganizationsResource(_requester);
  ProjectsResource get projects => ProjectsResource(_requester);
  V1Resource get v1 => V1Resource(_requester);

  CloudSecurityTokenApi(
    http.Client client, {
    core.String rootUrl = 'https://sts.googleapis.com/',
    core.String servicePath = '',
  }) : _requester = commons.ApiRequester(
         client,
         rootUrl,
         servicePath,
         requestHeaders,
       );
}

class OrganizationsResource {
  final commons.ApiRequester _requester;

  OrganizationsLocationsResource get locations =>
      OrganizationsLocationsResource(_requester);

  OrganizationsResource(commons.ApiRequester client) : _requester = client;
}

class OrganizationsLocationsResource {
  final commons.ApiRequester _requester;

  OrganizationsLocationsWorkloadIdentityPoolsResource
  get workloadIdentityPools =>
      OrganizationsLocationsWorkloadIdentityPoolsResource(_requester);

  OrganizationsLocationsResource(commons.ApiRequester client)
    : _requester = client;
}

class OrganizationsLocationsWorkloadIdentityPoolsResource {
  final commons.ApiRequester _requester;

  OrganizationsLocationsWorkloadIdentityPoolsOpenidResource get openid =>
      OrganizationsLocationsWorkloadIdentityPoolsOpenidResource(_requester);
  OrganizationsLocationsWorkloadIdentityPoolsWellKnownResource get wellKnown =>
      OrganizationsLocationsWorkloadIdentityPoolsWellKnownResource(_requester);

  OrganizationsLocationsWorkloadIdentityPoolsResource(
    commons.ApiRequester client,
  ) : _requester = client;
}

class OrganizationsLocationsWorkloadIdentityPoolsOpenidResource {
  final commons.ApiRequester _requester;

  OrganizationsLocationsWorkloadIdentityPoolsOpenidResource(
    commons.ApiRequester client,
  ) : _requester = client;

  /// Fetches the signing keys for an agentic or managed workload identity pool
  /// and returns them in JWKs format, defined in
  /// [RFC 7517](https://tools.ietf.org/html/rfc7517).
  ///
  /// For now, only agentic system pools are supported. **Preview** This feature
  /// is subject to the "Pre-GA Offerings Terms" in the General Service Terms
  /// section of the
  /// [Service Specific Terms](https://cloud.google.com/terms/service-terms#1).
  /// Pre-GA features are available "as is" and might have limited support. For
  /// more information, see the
  /// [launch stage descriptions](https://cloud.google.com/products#product-launch-stages).
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the pool whose JWKS needs to be retrieved.
  /// Format:
  /// 'organizations/{ORGANIZATION_NUMBER}/locations/global/workloadIdentityPools/{POOL_ID}'
  /// 'projects/{PROJECT_NUMBER}/locations/global/workloadIdentityPools/{POOL_ID}'
  /// Example(s):
  /// 'organizations/1234/locations/global/workloadIdentityPools/agents.global.org-1234.system.id.goog'
  /// 'projects/12345678/locations/global/workloadIdentityPools/agents.global.proj-12345678.system.id.goog'
  /// Value must have pattern
  /// `^organizations/\[^/\]+/locations/\[^/\]+/workloadIdentityPools/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleIdentityStsV1Jwks].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleIdentityStsV1Jwks> getJwks(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + '/openid/jwks';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleIdentityStsV1Jwks.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class OrganizationsLocationsWorkloadIdentityPoolsWellKnownResource {
  final commons.ApiRequester _requester;

  OrganizationsLocationsWorkloadIdentityPoolsWellKnownResource(
    commons.ApiRequester client,
  ) : _requester = client;

  /// Gets the OIDC provider configuration for an agentic or managed workload
  /// identity pool following
  /// [the OIDC 1.0 discovery specification](https://openid.net/specs/openid-connect-discovery-1_0.html#ProviderConfigurationResponse).
  ///
  /// For now, only agentic system pools are supported. **Preview** This feature
  /// is subject to the "Pre-GA Offerings Terms" in the General Service Terms
  /// section of the
  /// [Service Specific Terms](https://cloud.google.com/terms/service-terms#1).
  /// Pre-GA features are available "as is" and might have limited support. For
  /// more information, see the
  /// [launch stage descriptions](https://cloud.google.com/products#product-launch-stages).
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the pool whose OpenID provider
  /// configuration to retrieve. Format:
  /// 'organizations/{ORGANIZATION_NUMBER}/locations/global/workloadIdentityPools/{POOL_ID}'
  /// 'projects/{PROJECT_NUMBER}/locations/global/workloadIdentityPools/{POOL_ID}'
  /// Example:
  /// 'organizations/1234/locations/global/workloadIdentityPools/agents.global.org-1234.system.id.goog'
  /// 'projects/12345678/locations/global/workloadIdentityPools/agents.global.proj-12345678.system.id.goog'
  /// Value must have pattern
  /// `^organizations/\[^/\]+/locations/\[^/\]+/workloadIdentityPools/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleIdentityStsV1OpenIdProviderConfig].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleIdentityStsV1OpenIdProviderConfig> getOpenidConfiguration(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ =
        'v1/' +
        core.Uri.encodeFull('$name') +
        '/.well-known/openid-configuration';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleIdentityStsV1OpenIdProviderConfig.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class ProjectsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsResource get locations =>
      ProjectsLocationsResource(_requester);

  ProjectsResource(commons.ApiRequester client) : _requester = client;
}

class ProjectsLocationsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsWorkloadIdentityPoolsResource get workloadIdentityPools =>
      ProjectsLocationsWorkloadIdentityPoolsResource(_requester);

  ProjectsLocationsResource(commons.ApiRequester client) : _requester = client;
}

class ProjectsLocationsWorkloadIdentityPoolsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsWorkloadIdentityPoolsOpenidResource get openid =>
      ProjectsLocationsWorkloadIdentityPoolsOpenidResource(_requester);
  ProjectsLocationsWorkloadIdentityPoolsWellKnownResource get wellKnown =>
      ProjectsLocationsWorkloadIdentityPoolsWellKnownResource(_requester);

  ProjectsLocationsWorkloadIdentityPoolsResource(commons.ApiRequester client)
    : _requester = client;
}

class ProjectsLocationsWorkloadIdentityPoolsOpenidResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsWorkloadIdentityPoolsOpenidResource(
    commons.ApiRequester client,
  ) : _requester = client;

  /// Fetches the signing keys for an agentic or managed workload identity pool
  /// and returns them in JWKs format, defined in
  /// [RFC 7517](https://tools.ietf.org/html/rfc7517).
  ///
  /// For now, only agentic system pools are supported. **Preview** This feature
  /// is subject to the "Pre-GA Offerings Terms" in the General Service Terms
  /// section of the
  /// [Service Specific Terms](https://cloud.google.com/terms/service-terms#1).
  /// Pre-GA features are available "as is" and might have limited support. For
  /// more information, see the
  /// [launch stage descriptions](https://cloud.google.com/products#product-launch-stages).
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the pool whose JWKS needs to be retrieved.
  /// Format:
  /// 'organizations/{ORGANIZATION_NUMBER}/locations/global/workloadIdentityPools/{POOL_ID}'
  /// 'projects/{PROJECT_NUMBER}/locations/global/workloadIdentityPools/{POOL_ID}'
  /// Example(s):
  /// 'organizations/1234/locations/global/workloadIdentityPools/agents.global.org-1234.system.id.goog'
  /// 'projects/12345678/locations/global/workloadIdentityPools/agents.global.proj-12345678.system.id.goog'
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/workloadIdentityPools/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleIdentityStsV1Jwks].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleIdentityStsV1Jwks> getJwks(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + '/openid/jwks';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleIdentityStsV1Jwks.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class ProjectsLocationsWorkloadIdentityPoolsWellKnownResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsWorkloadIdentityPoolsWellKnownResource(
    commons.ApiRequester client,
  ) : _requester = client;

  /// Gets the OIDC provider configuration for an agentic or managed workload
  /// identity pool following
  /// [the OIDC 1.0 discovery specification](https://openid.net/specs/openid-connect-discovery-1_0.html#ProviderConfigurationResponse).
  ///
  /// For now, only agentic system pools are supported. **Preview** This feature
  /// is subject to the "Pre-GA Offerings Terms" in the General Service Terms
  /// section of the
  /// [Service Specific Terms](https://cloud.google.com/terms/service-terms#1).
  /// Pre-GA features are available "as is" and might have limited support. For
  /// more information, see the
  /// [launch stage descriptions](https://cloud.google.com/products#product-launch-stages).
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the pool whose OpenID provider
  /// configuration to retrieve. Format:
  /// 'organizations/{ORGANIZATION_NUMBER}/locations/global/workloadIdentityPools/{POOL_ID}'
  /// 'projects/{PROJECT_NUMBER}/locations/global/workloadIdentityPools/{POOL_ID}'
  /// Example:
  /// 'organizations/1234/locations/global/workloadIdentityPools/agents.global.org-1234.system.id.goog'
  /// 'projects/12345678/locations/global/workloadIdentityPools/agents.global.proj-12345678.system.id.goog'
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/workloadIdentityPools/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleIdentityStsV1OpenIdProviderConfig].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleIdentityStsV1OpenIdProviderConfig> getOpenidConfiguration(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ =
        'v1/' +
        core.Uri.encodeFull('$name') +
        '/.well-known/openid-configuration';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleIdentityStsV1OpenIdProviderConfig.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class V1Resource {
  final commons.ApiRequester _requester;

  V1Resource(commons.ApiRequester client) : _requester = client;

  /// Exchanges a credential for a Google OAuth 2.0 access token.
  ///
  /// The token asserts an external identity within an identity pool, or it
  /// applies a Credential Access Boundary to a Google access token. Note that
  /// workforce pools do not support Credential Access Boundaries. When you call
  /// this method, do not send the `Authorization` HTTP header in the request.
  /// This method does not require the `Authorization` header, and using the
  /// header can cause the request to fail.
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
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    const url_ = 'v1/token';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleIdentityStsV1ExchangeTokenResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

/// Request message for ExchangeToken.
class GoogleIdentityStsV1ExchangeTokenRequest {
  /// The full resource name of the identity provider; for example:
  /// `//iam.googleapis.com/projects//locations/global/workloadIdentityPools//providers/`
  /// for workload identity pool providers, or
  /// `//iam.googleapis.com/locations/global/workforcePools//providers/` for
  /// workforce pool providers.
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
  ///
  /// The size of the parameter value must not exceed 4 * 1024 * 1024 characters
  /// (4 MB).
  core.String? options;

  /// An identifier for the type of requested security token.
  ///
  /// Can be `urn:ietf:params:oauth:token-type:access_token` or
  /// `urn:ietf:params:oauth:token-type:access_boundary_intermediary_token`.
  ///
  /// Required.
  core.String? requestedTokenType;

  /// The OAuth 2.0 scopes to include on the resulting access token, formatted
  /// as a list of space-delimited, case-sensitive strings; for example,
  /// `https://www.googleapis.com/auth/cloud-platform`.
  ///
  /// Required when exchanging an external credential for a Google access token.
  /// For a list of OAuth 2.0 scopes, see
  /// [OAuth 2.0 Scopes for Google APIs](https://developers.google.com/identity/protocols/oauth2/scopes).
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
  /// - `iat`: The issue time, in seconds, since the Unix epoch. This timestamp
  /// must be in the past and no more than 24 hours in the past, or the token
  /// will be rejected. Note that this implies the token is only acceptable
  /// within a time window of at most 24 hours. - `exp`: The expiration time, in
  /// seconds, since the Unix epoch. Shorter expiration times are more secure.
  /// If possible, we recommend setting an expiration time less than 6 hours. -
  /// `sub`: The identity asserted in the JWT. - `aud`: For workload identity
  /// pools, this must be a value specified in the allowed audiences for the
  /// workload identity pool provider, or one of the audiences allowed by
  /// default if no audiences were specified. See
  /// https://cloud.google.com/iam/docs/reference/rest/v1/projects.locations.workloadIdentityPools.providers#oidc.
  /// For workforce pools, this must match the client ID specified in the
  /// provider configuration. See
  /// https://cloud.google.com/iam/docs/reference/rest/v1/locations.workforcePools.providers#oidc.
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
  /// ``` If the token is a SAML 2.0 assertion, it must use the format defined
  /// in
  /// [the SAML 2.0 spec](https://docs.oasis-open.org/security/saml/Post2.0/sstc-saml-tech-overview-2.0-cd-02.pdf),
  /// and the `subject_token_type` must be
  /// `urn:ietf:params:oauth:token-type:saml2`. See
  /// [Verification of external credentials](https://cloud.google.com/iam/docs/using-workload-identity-federation#verification_of_external_credentials)
  /// for details on how SAML 2.0 assertions are validated during token
  /// exchanges. You can also use a Google-issued OAuth 2.0 access token with
  /// this field to obtain an access token with new security attributes applied,
  /// such as a Credential Access Boundary. In this case, set
  /// `subject_token_type` to `urn:ietf:params:oauth:token-type:access_token`.
  /// If an access token already contains security attributes, you cannot apply
  /// additional security attributes. If the request is for X.509
  /// certificate-based authentication, the `subject_token` must be a
  /// JSON-formatted list of X.509 certificates in DER format, as defined in
  /// [RFC 7515](https://www.rfc-editor.org/rfc/rfc7515#section-4.1.6).
  /// `subject_token_type` must be `urn:ietf:params:oauth:token-type:mtls`. The
  /// following example shows a JSON-formatted list of X.509 certificate in DER
  /// format: ``` [\"MIIEYDCCA0i...\", \"MCIFFGAGTT0...\"] ```
  ///
  /// Required.
  core.String? subjectToken;

  /// An identifier that indicates the type of the security token in the
  /// `subject_token` parameter.
  ///
  /// Supported values are `urn:ietf:params:oauth:token-type:jwt`,
  /// `urn:ietf:params:oauth:token-type:id_token`,
  /// `urn:ietf:params:aws:token-type:aws4_request`,
  /// `urn:ietf:params:oauth:token-type:access_token`,
  /// `urn:ietf:params:oauth:token-type:mtls`, and
  /// `urn:ietf:params:oauth:token-type:saml2`.
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

  GoogleIdentityStsV1ExchangeTokenRequest.fromJson(core.Map json_)
    : this(
        audience: json_['audience'] as core.String?,
        grantType: json_['grantType'] as core.String?,
        options: json_['options'] as core.String?,
        requestedTokenType: json_['requestedTokenType'] as core.String?,
        scope: json_['scope'] as core.String?,
        subjectToken: json_['subjectToken'] as core.String?,
        subjectTokenType: json_['subjectTokenType'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final audience = this.audience;
    final grantType = this.grantType;
    final options = this.options;
    final requestedTokenType = this.requestedTokenType;
    final scope = this.scope;
    final subjectToken = this.subjectToken;
    final subjectTokenType = this.subjectTokenType;
    return {
      'audience': ?audience,
      'grantType': ?grantType,
      'options': ?options,
      'requestedTokenType': ?requestedTokenType,
      'scope': ?scope,
      'subjectToken': ?subjectToken,
      'subjectTokenType': ?subjectTokenType,
    };
  }
}

/// Response message for ExchangeToken.
class GoogleIdentityStsV1ExchangeTokenResponse {
  /// The access boundary session key.
  ///
  /// This key is used along with the access boundary intermediary token to
  /// generate Credential Access Boundary tokens at client side. This field is
  /// absent when the `requested_token_type` from the request is not
  /// `urn:ietf:params:oauth:token-type:access_boundary_intermediary_token`.
  core.String? accessBoundarySessionKey;
  core.List<core.int> get accessBoundarySessionKeyAsBytes =>
      convert.base64.decode(accessBoundarySessionKey!);

  set accessBoundarySessionKeyAsBytes(core.List<core.int> bytes_) {
    accessBoundarySessionKey = convert.base64
        .encode(bytes_)
        .replaceAll('/', '_')
        .replaceAll('+', '-');
  }

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
  /// This field is absent when the `subject_token` in the request is a a
  /// short-lived access token for a Cloud Identity or Google Workspace user
  /// account. In this case, the access token has the same expiration time as
  /// the `subject_token`.
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
    this.accessBoundarySessionKey,
    this.accessToken,
    this.expiresIn,
    this.issuedTokenType,
    this.tokenType,
  });

  GoogleIdentityStsV1ExchangeTokenResponse.fromJson(core.Map json_)
    : this(
        accessBoundarySessionKey:
            json_['access_boundary_session_key'] as core.String?,
        accessToken: json_['access_token'] as core.String?,
        expiresIn: json_['expires_in'] as core.int?,
        issuedTokenType: json_['issued_token_type'] as core.String?,
        tokenType: json_['token_type'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final accessBoundarySessionKey = this.accessBoundarySessionKey;
    final accessToken = this.accessToken;
    final expiresIn = this.expiresIn;
    final issuedTokenType = this.issuedTokenType;
    final tokenType = this.tokenType;
    return {
      'access_boundary_session_key': ?accessBoundarySessionKey,
      'access_token': ?accessToken,
      'expires_in': ?expiresIn,
      'issued_token_type': ?issuedTokenType,
      'token_type': ?tokenType,
    };
  }
}

/// A JSON web key set (JWK) See also
/// https://datatracker.ietf.org/doc/html/rfc7517 and
/// https://github.com/spiffe/spiffe/blob/main/standards/JWT-SVID.md#6-representation-in-the-spiffe-bundle
class GoogleIdentityStsV1Jwk {
  /// Algorithm intended for use with the key.
  ///
  /// Currently "RS256".
  core.String? alg;

  /// Exponent value for kty="RSA".
  core.String? e;

  /// Key ID.
  core.String? kid;

  /// Key type.
  ///
  /// Currently "RSA".
  core.String? kty;

  /// Modulus value for kty="RSA".
  core.String? n;

  /// Public key use.
  ///
  /// Currently "sig".
  core.String? use;

  GoogleIdentityStsV1Jwk({
    this.alg,
    this.e,
    this.kid,
    this.kty,
    this.n,
    this.use,
  });

  GoogleIdentityStsV1Jwk.fromJson(core.Map json_)
    : this(
        alg: json_['alg'] as core.String?,
        e: json_['e'] as core.String?,
        kid: json_['kid'] as core.String?,
        kty: json_['kty'] as core.String?,
        n: json_['n'] as core.String?,
        use: json_['use'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final alg = this.alg;
    final e = this.e;
    final kid = this.kid;
    final kty = this.kty;
    final n = this.n;
    final use = this.use;
    return {
      'alg': ?alg,
      'e': ?e,
      'kid': ?kid,
      'kty': ?kty,
      'n': ?n,
      'use': ?use,
    };
  }
}

/// Response message for GetJwks.
class GoogleIdentityStsV1Jwks {
  /// The JWKS for this OP.
  core.List<GoogleIdentityStsV1Jwk>? keys;

  GoogleIdentityStsV1Jwks({this.keys});

  GoogleIdentityStsV1Jwks.fromJson(core.Map json_)
    : this(
        keys: (json_['keys'] as core.List?)
            ?.map(
              (value) => GoogleIdentityStsV1Jwk.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final keys = this.keys;
    return {'keys': ?keys};
  }
}

/// Response message for GetOpenIdProviderConfig.
///
/// Message fields are defined in
/// https://openid.net/specs/openid-connect-discovery-1_0.html#ProviderConfigurationResponse
class GoogleIdentityStsV1OpenIdProviderConfig {
  /// URL pointing to an authorization endpoint under this issuer.
  ///
  /// Note: Currently this endpoint returns a 404.
  core.String? authorizationEndpoint;

  /// JSON array containing a list of the JWS signing algorithms (alg values)
  /// supported by the OP for the ID token to encode the claims in a JWT
  /// \[JWT\].
  ///
  /// Note: Currently always "\["RS256"\]".
  core.List<core.String>? idTokenSigningAlgValuesSupported;

  /// URL using the https scheme with no query or fragment components that the
  /// OP asserts as its issuer identifier.
  core.String? issuer;

  /// URL of the OP's JWK Set \[JWK\] document, which MUST use the https scheme.
  core.String? jwksUri;

  /// JSON array containing a list of the OAuth 2.0 response_type values that
  /// this OP supports.
  ///
  /// Note: Currently always "\["id_token"\]".
  core.List<core.String>? responseTypesSupported;

  /// JSON array containing a list of the subject identifier types that this OP
  /// supports.
  ///
  /// Note: Currently always "\["public"\]".
  core.List<core.String>? subjectTypesSupported;

  /// URL pointing to a token endpoint under this issuer.
  ///
  /// Note: Currently this endpoint returns a 404.
  core.String? tokenEndpoint;

  GoogleIdentityStsV1OpenIdProviderConfig({
    this.authorizationEndpoint,
    this.idTokenSigningAlgValuesSupported,
    this.issuer,
    this.jwksUri,
    this.responseTypesSupported,
    this.subjectTypesSupported,
    this.tokenEndpoint,
  });

  GoogleIdentityStsV1OpenIdProviderConfig.fromJson(core.Map json_)
    : this(
        authorizationEndpoint: json_['authorization_endpoint'] as core.String?,
        idTokenSigningAlgValuesSupported:
            (json_['id_token_signing_alg_values_supported'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        issuer: json_['issuer'] as core.String?,
        jwksUri: json_['jwks_uri'] as core.String?,
        responseTypesSupported:
            (json_['response_types_supported'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        subjectTypesSupported: (json_['subject_types_supported'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
        tokenEndpoint: json_['token_endpoint'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final authorizationEndpoint = this.authorizationEndpoint;
    final idTokenSigningAlgValuesSupported =
        this.idTokenSigningAlgValuesSupported;
    final issuer = this.issuer;
    final jwksUri = this.jwksUri;
    final responseTypesSupported = this.responseTypesSupported;
    final subjectTypesSupported = this.subjectTypesSupported;
    final tokenEndpoint = this.tokenEndpoint;
    return {
      'authorization_endpoint': ?authorizationEndpoint,
      'id_token_signing_alg_values_supported':
          ?idTokenSigningAlgValuesSupported,
      'issuer': ?issuer,
      'jwks_uri': ?jwksUri,
      'response_types_supported': ?responseTypesSupported,
      'subject_types_supported': ?subjectTypesSupported,
      'token_endpoint': ?tokenEndpoint,
    };
  }
}
