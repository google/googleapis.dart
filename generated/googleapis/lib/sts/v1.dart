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
/// <https://cloud.google.com/iam/docs/workload-identity-federation>
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

  /// Gets information about a Google OAuth 2.0 access token issued by the
  /// Google Cloud
  /// [Security Token Service API](https://cloud.google.com/iam/docs/reference/sts/rest).
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleIdentityStsV1IntrospectTokenResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleIdentityStsV1IntrospectTokenResponse> introspect(
    GoogleIdentityStsV1IntrospectTokenRequest request, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    const url_ = 'v1/introspect';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleIdentityStsV1IntrospectTokenResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Exchanges a credential that represents the resource owner's authorization
  /// for a Google-generated
  /// [OAuth 2.0 access token](https://www.rfc-editor.org/rfc/rfc6749#section-5)
  /// or
  /// [refreshes an accesstoken](https://www.rfc-editor.org/rfc/rfc6749#section-6)
  /// following
  /// [the OAuth 2.0 authorization framework](https://tools.ietf.org/html/rfc8693)
  /// The credential can be one of the following: - An authorization code issued
  /// by the workforce identity federation authorization endpoint - A
  /// [refresh token](https://www.rfc-editor.org/rfc/rfc6749#section-10.4)
  /// issued by this endpoint This endpoint is only meant to be called by the
  /// Google Cloud CLI.
  ///
  /// Also note that this API only accepts the authorization code issued for
  /// workforce pools.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleIdentityStsV1ExchangeOauthTokenResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleIdentityStsV1ExchangeOauthTokenResponse> oauthtoken(
    GoogleIdentityStsV1ExchangeOauthTokenRequest request, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    const url_ = 'v1/oauthtoken';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleIdentityStsV1ExchangeOauthTokenResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

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
      if ($fields != null) 'fields': [$fields],
    };

    const url_ = 'v1/token';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleIdentityStsV1ExchangeTokenResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

/// Request message for ExchangeOauthToken
class GoogleIdentityStsV1ExchangeOauthTokenRequest {
  /// The client identifier for the OAuth 2.0 client that requested the provided
  /// token.
  ///
  /// It is REQUIRED when the
  /// [client](https://www.rfc-editor.org/rfc/rfc6749#section-1.1) is not
  /// authenticating with the authorization server, i.e. when authentication
  /// method is
  /// [client authentication](https://www.rfc-editor.org/rfc/rfc6749#section-3.2.1).
  ///
  /// Optional.
  core.String? clientId;

  /// The authorization code that was previously from workforce identity
  /// federation's `authorize` endpoint.
  ///
  /// Required if the flow is authorization code flow, i.e. if grant_type is
  /// 'authorization_code'
  ///
  /// Optional.
  core.String? code;

  /// The code verifier for the PKCE request, Google Cloud CLI originally
  /// generates it before the authorization request.
  ///
  /// PKCE is used to protect authorization code from interception attacks. See
  /// https://www.rfc-editor.org/rfc/rfc7636#section-1.1 and
  /// https://www.rfc-editor.org/rfc/rfc7636#section-3. It is required when the
  /// flow is authorization code flow, i.e. if grant_type is
  /// 'authorization_code'
  ///
  /// Optional.
  core.String? codeVerifier;

  /// The grant types are as follows: - 'authorization_code' : an authorization
  /// code flow, i.e. exchange of authorization code for the Oauth access token
  /// - 'refresh_token' : a refresh token flow, i.e. obtain a new access token
  /// by providing the refresh token.
  ///
  /// See https://www.rfc-editor.org/rfc/rfc6749#section-6
  ///
  /// Required.
  core.String? grantType;

  /// redirect_url is required when the flow is authorization code flow i.e. if
  /// grant_type is `authorization_code` See
  /// https://www.rfc-editor.org/rfc/rfc6749#section-4.1.3
  ///
  /// Optional.
  core.String? redirectUri;

  /// The Refresh token is the credential that is used to obtain a new access
  /// token when the current access token becomes invalid or expires.
  ///
  /// Required when using refresh token flow, i.e. if `grant_type` is
  /// 'refresh_token' See https://www.rfc-editor.org/rfc/rfc6749#section-1.5 and
  /// https://www.rfc-editor.org/rfc/rfc6749#section-6
  ///
  /// Optional.
  core.String? refreshToken;

  /// An optional list of scopes that are requested for the token to be
  /// returned.
  ///
  /// See https://www.rfc-editor.org/rfc/rfc6749#section-3.3 Must be a list of
  /// space-delimited, case-sensitive strings. Note: Currently, the scopes in
  /// the request are not supported
  ///
  /// Optional.
  core.String? scope;

  GoogleIdentityStsV1ExchangeOauthTokenRequest({
    this.clientId,
    this.code,
    this.codeVerifier,
    this.grantType,
    this.redirectUri,
    this.refreshToken,
    this.scope,
  });

  GoogleIdentityStsV1ExchangeOauthTokenRequest.fromJson(core.Map json_)
      : this(
          clientId: json_.containsKey('clientId')
              ? json_['clientId'] as core.String
              : null,
          code: json_.containsKey('code') ? json_['code'] as core.String : null,
          codeVerifier: json_.containsKey('codeVerifier')
              ? json_['codeVerifier'] as core.String
              : null,
          grantType: json_.containsKey('grantType')
              ? json_['grantType'] as core.String
              : null,
          redirectUri: json_.containsKey('redirectUri')
              ? json_['redirectUri'] as core.String
              : null,
          refreshToken: json_.containsKey('refreshToken')
              ? json_['refreshToken'] as core.String
              : null,
          scope:
              json_.containsKey('scope') ? json_['scope'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (clientId != null) 'clientId': clientId!,
        if (code != null) 'code': code!,
        if (codeVerifier != null) 'codeVerifier': codeVerifier!,
        if (grantType != null) 'grantType': grantType!,
        if (redirectUri != null) 'redirectUri': redirectUri!,
        if (refreshToken != null) 'refreshToken': refreshToken!,
        if (scope != null) 'scope': scope!,
      };
}

/// Response message for ExchangeOauthToken.
///
/// see https://www.rfc-editor.org/rfc/rfc6749#section-5.1
class GoogleIdentityStsV1ExchangeOauthTokenResponse {
  /// An OAuth 2.0 security token, issued by Google, in response to the Oauth
  /// token exchange request for the authorization code and refresh token flows.
  ///
  /// The returned
  /// [access token](https://www.rfc-editor.org/rfc/rfc6749#section-4.1.4).
  /// Tokens can vary in size, depending, in part, on the size of mapped claims,
  /// up to a maximum of 12288 bytes (12 KB). Google reserves the right to
  /// change the token size and the maximum length at any time.
  core.String? accessToken;

  /// The amount of time, in seconds, between the time when the access token was
  /// issued and the time when the access token will expires.
  core.int? expiresIn;

  /// Google issued ID token in response to the OAuth token exchange request for
  /// ID token flow.
  core.String? idToken;

  /// A refresh token, issued by Google, in response to the OAuth token exchange
  /// request for refresh token flow
  core.String? refreshToken;

  /// A list of scopes associated with the returned token.
  core.String? scope;

  /// The type of token.
  ///
  /// Field reserved for RFC compliance. See
  /// https://www.rfc-editor.org/rfc/rfc6749#section-5.1
  core.String? tokenType;

  GoogleIdentityStsV1ExchangeOauthTokenResponse({
    this.accessToken,
    this.expiresIn,
    this.idToken,
    this.refreshToken,
    this.scope,
    this.tokenType,
  });

  GoogleIdentityStsV1ExchangeOauthTokenResponse.fromJson(core.Map json_)
      : this(
          accessToken: json_.containsKey('access_token')
              ? json_['access_token'] as core.String
              : null,
          expiresIn: json_.containsKey('expires_in')
              ? json_['expires_in'] as core.int
              : null,
          idToken: json_.containsKey('id_token')
              ? json_['id_token'] as core.String
              : null,
          refreshToken: json_.containsKey('refresh_token')
              ? json_['refresh_token'] as core.String
              : null,
          scope:
              json_.containsKey('scope') ? json_['scope'] as core.String : null,
          tokenType: json_.containsKey('token_type')
              ? json_['token_type'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (accessToken != null) 'access_token': accessToken!,
        if (expiresIn != null) 'expires_in': expiresIn!,
        if (idToken != null) 'id_token': idToken!,
        if (refreshToken != null) 'refresh_token': refreshToken!,
        if (scope != null) 'scope': scope!,
        if (tokenType != null) 'token_type': tokenType!,
      };
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
  /// The size of the parameter value must not exceed 4096 characters.
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
  /// [the SAML 2.0 spec](https://www.oasis-open.org/committees/download.php/56776/sstc-saml-core-errata-2.0-wd-07.pdf),
  /// and the `subject_token_type` must be
  /// `urn:ietf:params:oauth:token-type:saml2`. See
  /// [Verification of external credentials](https://cloud.google.com/iam/docs/using-workload-identity-federation#verification_of_external_credentials)
  /// for details on how SAML 2.0 assertions are validated during token
  /// exchanges. You can also use a Google-issued OAuth 2.0 access token with
  /// this field to obtain an access token with new security attributes applied,
  /// such as a Credential Access Boundary. In this case, set
  /// `subject_token_type` to `urn:ietf:params:oauth:token-type:access_token`.
  /// If an access token already contains security attributes, you cannot apply
  /// additional security attributes.
  ///
  /// Required.
  core.String? subjectToken;

  /// An identifier that indicates the type of the security token in the
  /// `subject_token` parameter.
  ///
  /// Supported values are `urn:ietf:params:oauth:token-type:jwt`,
  /// `urn:ietf:params:oauth:token-type:id_token`,
  /// `urn:ietf:params:aws:token-type:aws4_request`,
  /// `urn:ietf:params:oauth:token-type:access_token`, and
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
          audience: json_.containsKey('audience')
              ? json_['audience'] as core.String
              : null,
          grantType: json_.containsKey('grantType')
              ? json_['grantType'] as core.String
              : null,
          options: json_.containsKey('options')
              ? json_['options'] as core.String
              : null,
          requestedTokenType: json_.containsKey('requestedTokenType')
              ? json_['requestedTokenType'] as core.String
              : null,
          scope:
              json_.containsKey('scope') ? json_['scope'] as core.String : null,
          subjectToken: json_.containsKey('subjectToken')
              ? json_['subjectToken'] as core.String
              : null,
          subjectTokenType: json_.containsKey('subjectTokenType')
              ? json_['subjectTokenType'] as core.String
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

  GoogleIdentityStsV1ExchangeTokenResponse.fromJson(core.Map json_)
      : this(
          accessToken: json_.containsKey('access_token')
              ? json_['access_token'] as core.String
              : null,
          expiresIn: json_.containsKey('expires_in')
              ? json_['expires_in'] as core.int
              : null,
          issuedTokenType: json_.containsKey('issued_token_type')
              ? json_['issued_token_type'] as core.String
              : null,
          tokenType: json_.containsKey('token_type')
              ? json_['token_type'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (accessToken != null) 'access_token': accessToken!,
        if (expiresIn != null) 'expires_in': expiresIn!,
        if (issuedTokenType != null) 'issued_token_type': issuedTokenType!,
        if (tokenType != null) 'token_type': tokenType!,
      };
}

/// Request message for IntrospectToken.
class GoogleIdentityStsV1IntrospectTokenRequest {
  /// The OAuth 2.0 security token issued by the Security Token Service API.
  ///
  /// Required.
  core.String? token;

  /// The type of the given token.
  ///
  /// Supported values are `urn:ietf:params:oauth:token-type:access_token` and
  /// `access_token`.
  ///
  /// Optional.
  core.String? tokenTypeHint;

  GoogleIdentityStsV1IntrospectTokenRequest({
    this.token,
    this.tokenTypeHint,
  });

  GoogleIdentityStsV1IntrospectTokenRequest.fromJson(core.Map json_)
      : this(
          token:
              json_.containsKey('token') ? json_['token'] as core.String : null,
          tokenTypeHint: json_.containsKey('tokenTypeHint')
              ? json_['tokenTypeHint'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (token != null) 'token': token!,
        if (tokenTypeHint != null) 'tokenTypeHint': tokenTypeHint!,
      };
}

/// Response message for IntrospectToken.
class GoogleIdentityStsV1IntrospectTokenResponse {
  /// A boolean value that indicates whether the provided access token is
  /// currently active.
  core.bool? active;

  /// The client identifier for the OAuth 2.0 client that requested the provided
  /// token.
  core.String? clientId;

  /// The expiration timestamp, measured in the number of seconds since January
  /// 1 1970 UTC, indicating when this token will expire.
  core.String? exp;

  /// The issued timestamp, measured in the number of seconds since January 1
  /// 1970 UTC, indicating when this token was originally issued.
  core.String? iat;

  /// The issuer of the provided token.
  core.String? iss;

  /// A list of scopes associated with the provided token.
  core.String? scope;

  /// The unique user ID associated with the provided token.
  ///
  /// For Google Accounts, this value is based on the Google Account's user ID.
  /// For federated identities, this value is based on the identity pool ID and
  /// the value of the mapped `google.subject` attribute.
  core.String? sub;

  /// The human-readable identifier for the token principal subject.
  ///
  /// For example, if the provided token is associated with a workload identity
  /// pool, this field contains a value in the following format:
  /// `principal://iam.googleapis.com/projects//locations/global/workloadIdentityPools//subject/`.
  /// If the provided token is associated with a workforce pool, this field
  /// contains a value in the following format:
  /// `principal://iam.googleapis.com/locations/global/workforcePools//subject/`.
  core.String? username;

  GoogleIdentityStsV1IntrospectTokenResponse({
    this.active,
    this.clientId,
    this.exp,
    this.iat,
    this.iss,
    this.scope,
    this.sub,
    this.username,
  });

  GoogleIdentityStsV1IntrospectTokenResponse.fromJson(core.Map json_)
      : this(
          active:
              json_.containsKey('active') ? json_['active'] as core.bool : null,
          clientId: json_.containsKey('client_id')
              ? json_['client_id'] as core.String
              : null,
          exp: json_.containsKey('exp') ? json_['exp'] as core.String : null,
          iat: json_.containsKey('iat') ? json_['iat'] as core.String : null,
          iss: json_.containsKey('iss') ? json_['iss'] as core.String : null,
          scope:
              json_.containsKey('scope') ? json_['scope'] as core.String : null,
          sub: json_.containsKey('sub') ? json_['sub'] as core.String : null,
          username: json_.containsKey('username')
              ? json_['username'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (active != null) 'active': active!,
        if (clientId != null) 'client_id': clientId!,
        if (exp != null) 'exp': exp!,
        if (iat != null) 'iat': iat!,
        if (iss != null) 'iss': iss!,
        if (scope != null) 'scope': scope!,
        if (sub != null) 'sub': sub!,
        if (username != null) 'username': username!,
      };
}
