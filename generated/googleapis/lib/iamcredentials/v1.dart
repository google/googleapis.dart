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

/// IAM Service Account Credentials API - v1
///
/// Creates short-lived credentials for impersonating IAM service accounts. To
/// enable this API, you must enable the IAM API (iam.googleapis.com).
///
/// For more information, see
/// <https://cloud.google.com/iam/docs/creating-short-lived-service-account-credentials>
///
/// Create an instance of [IAMCredentialsApi] to access these resources:
///
/// - [ProjectsResource]
///   - [ProjectsServiceAccountsResource]
library iamcredentials.v1;

import 'dart:async' as async;
import 'dart:convert' as convert;
import 'dart:core' as core;

import 'package:_discoveryapis_commons/_discoveryapis_commons.dart' as commons;
import 'package:http/http.dart' as http;

import '../src/user_agent.dart';

export 'package:_discoveryapis_commons/_discoveryapis_commons.dart'
    show ApiRequestError, DetailedApiRequestError;

/// Creates short-lived credentials for impersonating IAM service accounts.
///
/// To enable this API, you must enable the IAM API (iam.googleapis.com).
class IAMCredentialsApi {
  /// See, edit, configure, and delete your Google Cloud data and see the email
  /// address for your Google Account.
  static const cloudPlatformScope =
      'https://www.googleapis.com/auth/cloud-platform';

  final commons.ApiRequester _requester;

  ProjectsResource get projects => ProjectsResource(_requester);

  IAMCredentialsApi(http.Client client,
      {core.String rootUrl = 'https://iamcredentials.googleapis.com/',
      core.String servicePath = ''})
      : _requester =
            commons.ApiRequester(client, rootUrl, servicePath, requestHeaders);
}

class ProjectsResource {
  final commons.ApiRequester _requester;

  ProjectsServiceAccountsResource get serviceAccounts =>
      ProjectsServiceAccountsResource(_requester);

  ProjectsResource(commons.ApiRequester client) : _requester = client;
}

class ProjectsServiceAccountsResource {
  final commons.ApiRequester _requester;

  ProjectsServiceAccountsResource(commons.ApiRequester client)
      : _requester = client;

  /// Generates an OAuth 2.0 access token for a service account.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name of the service account for which the
  /// credentials are requested, in the following format:
  /// `projects/-/serviceAccounts/{ACCOUNT_EMAIL_OR_UNIQUEID}`. The `-` wildcard
  /// character is required; replacing it with a project ID is invalid.
  /// Value must have pattern `^projects/\[^/\]+/serviceAccounts/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GenerateAccessTokenResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GenerateAccessTokenResponse> generateAccessToken(
    GenerateAccessTokenRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':generateAccessToken';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GenerateAccessTokenResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Generates an OpenID Connect ID token for a service account.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name of the service account for which the
  /// credentials are requested, in the following format:
  /// `projects/-/serviceAccounts/{ACCOUNT_EMAIL_OR_UNIQUEID}`. The `-` wildcard
  /// character is required; replacing it with a project ID is invalid.
  /// Value must have pattern `^projects/\[^/\]+/serviceAccounts/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GenerateIdTokenResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GenerateIdTokenResponse> generateIdToken(
    GenerateIdTokenRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':generateIdToken';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GenerateIdTokenResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Signs a blob using a service account's system-managed private key.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name of the service account for which the
  /// credentials are requested, in the following format:
  /// `projects/-/serviceAccounts/{ACCOUNT_EMAIL_OR_UNIQUEID}`. The `-` wildcard
  /// character is required; replacing it with a project ID is invalid.
  /// Value must have pattern `^projects/\[^/\]+/serviceAccounts/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [SignBlobResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<SignBlobResponse> signBlob(
    SignBlobRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':signBlob';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return SignBlobResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Signs a JWT using a service account's system-managed private key.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name of the service account for which the
  /// credentials are requested, in the following format:
  /// `projects/-/serviceAccounts/{ACCOUNT_EMAIL_OR_UNIQUEID}`. The `-` wildcard
  /// character is required; replacing it with a project ID is invalid.
  /// Value must have pattern `^projects/\[^/\]+/serviceAccounts/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [SignJwtResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<SignJwtResponse> signJwt(
    SignJwtRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':signJwt';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return SignJwtResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class GenerateAccessTokenRequest {
  /// The sequence of service accounts in a delegation chain.
  ///
  /// This field is required for
  /// [delegated requests](https://cloud.google.com/iam/help/credentials/delegated-request).
  /// For
  /// [direct requests](https://cloud.google.com/iam/help/credentials/direct-request),
  /// which are more common, do not specify this field. Each service account
  /// must be granted the `roles/iam.serviceAccountTokenCreator` role on its
  /// next service account in the chain. The last service account in the chain
  /// must be granted the `roles/iam.serviceAccountTokenCreator` role on the
  /// service account that is specified in the `name` field of the request. The
  /// delegates must have the following format:
  /// `projects/-/serviceAccounts/{ACCOUNT_EMAIL_OR_UNIQUEID}`. The `-` wildcard
  /// character is required; replacing it with a project ID is invalid.
  core.List<core.String>? delegates;

  /// The desired lifetime duration of the access token in seconds.
  ///
  /// By default, the maximum allowed value is 1 hour. To set a lifetime of up
  /// to 12 hours, you can add the service account as an allowed value in an
  /// Organization Policy that enforces the
  /// `constraints/iam.allowServiceAccountCredentialLifetimeExtension`
  /// constraint. See detailed instructions at
  /// https://cloud.google.com/iam/help/credentials/lifetime If a value is not
  /// specified, the token's lifetime will be set to a default value of 1 hour.
  core.String? lifetime;

  /// Code to identify the scopes to be included in the OAuth 2.0 access token.
  ///
  /// See https://developers.google.com/identity/protocols/googlescopes for more
  /// information. At least one value required.
  ///
  /// Required.
  core.List<core.String>? scope;

  GenerateAccessTokenRequest({
    this.delegates,
    this.lifetime,
    this.scope,
  });

  GenerateAccessTokenRequest.fromJson(core.Map json_)
      : this(
          delegates: json_.containsKey('delegates')
              ? (json_['delegates'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          lifetime: json_.containsKey('lifetime')
              ? json_['lifetime'] as core.String
              : null,
          scope: json_.containsKey('scope')
              ? (json_['scope'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (delegates != null) 'delegates': delegates!,
        if (lifetime != null) 'lifetime': lifetime!,
        if (scope != null) 'scope': scope!,
      };
}

class GenerateAccessTokenResponse {
  /// The OAuth 2.0 access token.
  core.String? accessToken;

  /// Token expiration time.
  ///
  /// The expiration time is always set.
  core.String? expireTime;

  GenerateAccessTokenResponse({
    this.accessToken,
    this.expireTime,
  });

  GenerateAccessTokenResponse.fromJson(core.Map json_)
      : this(
          accessToken: json_.containsKey('accessToken')
              ? json_['accessToken'] as core.String
              : null,
          expireTime: json_.containsKey('expireTime')
              ? json_['expireTime'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (accessToken != null) 'accessToken': accessToken!,
        if (expireTime != null) 'expireTime': expireTime!,
      };
}

class GenerateIdTokenRequest {
  /// The audience for the token, such as the API or account that this token
  /// grants access to.
  ///
  /// Required.
  core.String? audience;

  /// The sequence of service accounts in a delegation chain.
  ///
  /// Each service account must be granted the
  /// `roles/iam.serviceAccountTokenCreator` role on its next service account in
  /// the chain. The last service account in the chain must be granted the
  /// `roles/iam.serviceAccountTokenCreator` role on the service account that is
  /// specified in the `name` field of the request. The delegates must have the
  /// following format:
  /// `projects/-/serviceAccounts/{ACCOUNT_EMAIL_OR_UNIQUEID}`. The `-` wildcard
  /// character is required; replacing it with a project ID is invalid.
  core.List<core.String>? delegates;

  /// Include the service account email in the token.
  ///
  /// If set to `true`, the token will contain `email` and `email_verified`
  /// claims.
  core.bool? includeEmail;

  GenerateIdTokenRequest({
    this.audience,
    this.delegates,
    this.includeEmail,
  });

  GenerateIdTokenRequest.fromJson(core.Map json_)
      : this(
          audience: json_.containsKey('audience')
              ? json_['audience'] as core.String
              : null,
          delegates: json_.containsKey('delegates')
              ? (json_['delegates'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          includeEmail: json_.containsKey('includeEmail')
              ? json_['includeEmail'] as core.bool
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (audience != null) 'audience': audience!,
        if (delegates != null) 'delegates': delegates!,
        if (includeEmail != null) 'includeEmail': includeEmail!,
      };
}

class GenerateIdTokenResponse {
  /// The OpenId Connect ID token.
  core.String? token;

  GenerateIdTokenResponse({
    this.token,
  });

  GenerateIdTokenResponse.fromJson(core.Map json_)
      : this(
          token:
              json_.containsKey('token') ? json_['token'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (token != null) 'token': token!,
      };
}

class SignBlobRequest {
  /// The sequence of service accounts in a delegation chain.
  ///
  /// Each service account must be granted the
  /// `roles/iam.serviceAccountTokenCreator` role on its next service account in
  /// the chain. The last service account in the chain must be granted the
  /// `roles/iam.serviceAccountTokenCreator` role on the service account that is
  /// specified in the `name` field of the request. The delegates must have the
  /// following format:
  /// `projects/-/serviceAccounts/{ACCOUNT_EMAIL_OR_UNIQUEID}`. The `-` wildcard
  /// character is required; replacing it with a project ID is invalid.
  core.List<core.String>? delegates;

  /// The bytes to sign.
  ///
  /// Required.
  core.String? payload;
  core.List<core.int> get payloadAsBytes => convert.base64.decode(payload!);

  set payloadAsBytes(core.List<core.int> bytes_) {
    payload =
        convert.base64.encode(bytes_).replaceAll('/', '_').replaceAll('+', '-');
  }

  SignBlobRequest({
    this.delegates,
    this.payload,
  });

  SignBlobRequest.fromJson(core.Map json_)
      : this(
          delegates: json_.containsKey('delegates')
              ? (json_['delegates'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          payload: json_.containsKey('payload')
              ? json_['payload'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (delegates != null) 'delegates': delegates!,
        if (payload != null) 'payload': payload!,
      };
}

class SignBlobResponse {
  /// The ID of the key used to sign the blob.
  ///
  /// The key used for signing will remain valid for at least 12 hours after the
  /// blob is signed. To verify the signature, you can retrieve the public key
  /// in several formats from the following endpoints: - RSA public key wrapped
  /// in an X.509 v3 certificate:
  /// `https://www.googleapis.com/service_accounts/v1/metadata/x509/{ACCOUNT_EMAIL}`
  /// - Raw key in JSON format:
  /// `https://www.googleapis.com/service_accounts/v1/metadata/raw/{ACCOUNT_EMAIL}`
  /// - JSON Web Key (JWK):
  /// `https://www.googleapis.com/service_accounts/v1/metadata/jwk/{ACCOUNT_EMAIL}`
  core.String? keyId;

  /// The signature for the blob.
  ///
  /// Does not include the original blob. After the key pair referenced by the
  /// `key_id` response field expires, Google no longer exposes the public key
  /// that can be used to verify the blob. As a result, the receiver can no
  /// longer verify the signature.
  core.String? signedBlob;
  core.List<core.int> get signedBlobAsBytes =>
      convert.base64.decode(signedBlob!);

  set signedBlobAsBytes(core.List<core.int> bytes_) {
    signedBlob =
        convert.base64.encode(bytes_).replaceAll('/', '_').replaceAll('+', '-');
  }

  SignBlobResponse({
    this.keyId,
    this.signedBlob,
  });

  SignBlobResponse.fromJson(core.Map json_)
      : this(
          keyId:
              json_.containsKey('keyId') ? json_['keyId'] as core.String : null,
          signedBlob: json_.containsKey('signedBlob')
              ? json_['signedBlob'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (keyId != null) 'keyId': keyId!,
        if (signedBlob != null) 'signedBlob': signedBlob!,
      };
}

class SignJwtRequest {
  /// The sequence of service accounts in a delegation chain.
  ///
  /// Each service account must be granted the
  /// `roles/iam.serviceAccountTokenCreator` role on its next service account in
  /// the chain. The last service account in the chain must be granted the
  /// `roles/iam.serviceAccountTokenCreator` role on the service account that is
  /// specified in the `name` field of the request. The delegates must have the
  /// following format:
  /// `projects/-/serviceAccounts/{ACCOUNT_EMAIL_OR_UNIQUEID}`. The `-` wildcard
  /// character is required; replacing it with a project ID is invalid.
  core.List<core.String>? delegates;

  /// The JWT payload to sign.
  ///
  /// Must be a serialized JSON object that contains a JWT Claims Set. For
  /// example: `{"sub": "user@example.com", "iat": 313435}` If the JWT Claims
  /// Set contains an expiration time (`exp`) claim, it must be an integer
  /// timestamp that is not in the past and no more than 12 hours in the future.
  ///
  /// Required.
  core.String? payload;

  SignJwtRequest({
    this.delegates,
    this.payload,
  });

  SignJwtRequest.fromJson(core.Map json_)
      : this(
          delegates: json_.containsKey('delegates')
              ? (json_['delegates'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          payload: json_.containsKey('payload')
              ? json_['payload'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (delegates != null) 'delegates': delegates!,
        if (payload != null) 'payload': payload!,
      };
}

class SignJwtResponse {
  /// The ID of the key used to sign the JWT.
  ///
  /// The key used for signing will remain valid for at least 12 hours after the
  /// JWT is signed. To verify the signature, you can retrieve the public key in
  /// several formats from the following endpoints: - RSA public key wrapped in
  /// an X.509 v3 certificate:
  /// `https://www.googleapis.com/service_accounts/v1/metadata/x509/{ACCOUNT_EMAIL}`
  /// - Raw key in JSON format:
  /// `https://www.googleapis.com/service_accounts/v1/metadata/raw/{ACCOUNT_EMAIL}`
  /// - JSON Web Key (JWK):
  /// `https://www.googleapis.com/service_accounts/v1/metadata/jwk/{ACCOUNT_EMAIL}`
  core.String? keyId;

  /// The signed JWT.
  ///
  /// Contains the automatically generated header; the client-supplied payload;
  /// and the signature, which is generated using the key referenced by the
  /// `kid` field in the header. After the key pair referenced by the `key_id`
  /// response field expires, Google no longer exposes the public key that can
  /// be used to verify the JWT. As a result, the receiver can no longer verify
  /// the signature.
  core.String? signedJwt;

  SignJwtResponse({
    this.keyId,
    this.signedJwt,
  });

  SignJwtResponse.fromJson(core.Map json_)
      : this(
          keyId:
              json_.containsKey('keyId') ? json_['keyId'] as core.String : null,
          signedJwt: json_.containsKey('signedJwt')
              ? json_['signedJwt'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (keyId != null) 'keyId': keyId!,
        if (signedJwt != null) 'signedJwt': signedJwt!,
      };
}
