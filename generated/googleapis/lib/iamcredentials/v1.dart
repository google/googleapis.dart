// This is a generated file (see the discoveryapis_generator project).

// ignore_for_file: avoid_unused_constructor_parameters
// ignore_for_file: camel_case_types
// ignore_for_file: comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: directives_ordering
// ignore_for_file: empty_constructor_bodies
// ignore_for_file: library_names
// ignore_for_file: lines_longer_than_80_chars
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: omit_local_variable_types
// ignore_for_file: prefer_final_locals
// ignore_for_file: prefer_interpolation_to_compose_strings
// ignore_for_file: unnecessary_brace_in_string_interps
// ignore_for_file: unnecessary_cast
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: unnecessary_string_interpolations
// ignore_for_file: unused_field
// ignore_for_file: unused_import

library googleapis.iamcredentials.v1;

import 'dart:core' as core;
import 'dart:async' as async;
import 'dart:convert' as convert;

import 'package:_discoveryapis_commons/_discoveryapis_commons.dart' as commons;
import 'package:http/http.dart' as http;

export 'package:_discoveryapis_commons/_discoveryapis_commons.dart'
    show ApiRequestError, DetailedApiRequestError;

const core.String USER_AGENT = 'dart-api-client iamcredentials/v1';

/// Creates short-lived credentials for impersonating IAM service accounts.
/// *Note:* This API is tied to the IAM API (iam.googleapis.com). Enabling or
/// disabling this API will also enable or disable the IAM API.
class IamcredentialsApi {
  /// View and manage your data across Google Cloud Platform services
  static const CloudPlatformScope =
      'https://www.googleapis.com/auth/cloud-platform';

  final commons.ApiRequester _requester;

  ProjectsResourceApi get projects => ProjectsResourceApi(_requester);

  IamcredentialsApi(http.Client client,
      {core.String rootUrl = 'https://iamcredentials.googleapis.com/',
      core.String servicePath = ''})
      : _requester =
            commons.ApiRequester(client, rootUrl, servicePath, USER_AGENT);
}

class ProjectsResourceApi {
  final commons.ApiRequester _requester;

  ProjectsServiceAccountsResourceApi get serviceAccounts =>
      ProjectsServiceAccountsResourceApi(_requester);

  ProjectsResourceApi(commons.ApiRequester client) : _requester = client;
}

class ProjectsServiceAccountsResourceApi {
  final commons.ApiRequester _requester;

  ProjectsServiceAccountsResourceApi(commons.ApiRequester client)
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
  /// Value must have pattern "^projects/[^/]+/serviceAccounts/[^/]+$".
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
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (request != null) {
      _body = convert.json.encode(request.toJson());
    }
    if (name == null) {
      throw core.ArgumentError('Parameter name is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1/' +
        commons.Escaper.ecapeVariableReserved('$name') +
        ':generateAccessToken';

    final _response = _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => GenerateAccessTokenResponse.fromJson(data));
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
  /// Value must have pattern "^projects/[^/]+/serviceAccounts/[^/]+$".
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
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (request != null) {
      _body = convert.json.encode(request.toJson());
    }
    if (name == null) {
      throw core.ArgumentError('Parameter name is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1/' +
        commons.Escaper.ecapeVariableReserved('$name') +
        ':generateIdToken';

    final _response = _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => GenerateIdTokenResponse.fromJson(data));
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
  /// Value must have pattern "^projects/[^/]+/serviceAccounts/[^/]+$".
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
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (request != null) {
      _body = convert.json.encode(request.toJson());
    }
    if (name == null) {
      throw core.ArgumentError('Parameter name is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1/' + commons.Escaper.ecapeVariableReserved('$name') + ':signBlob';

    final _response = _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => SignBlobResponse.fromJson(data));
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
  /// Value must have pattern "^projects/[^/]+/serviceAccounts/[^/]+$".
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
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (request != null) {
      _body = convert.json.encode(request.toJson());
    }
    if (name == null) {
      throw core.ArgumentError('Parameter name is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1/' + commons.Escaper.ecapeVariableReserved('$name') + ':signJwt';

    final _response = _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => SignJwtResponse.fromJson(data));
  }
}

class GenerateAccessTokenRequest {
  /// The sequence of service accounts in a delegation chain. Each service
  /// account must be granted the `roles/iam.serviceAccountTokenCreator` role on
  /// its next service account in the chain. The last service account in the
  /// chain must be granted the `roles/iam.serviceAccountTokenCreator` role on
  /// the service account that is specified in the `name` field of the request.
  /// The delegates must have the following format:
  /// `projects/-/serviceAccounts/{ACCOUNT_EMAIL_OR_UNIQUEID}`. The `-` wildcard
  /// character is required; replacing it with a project ID is invalid.
  core.List<core.String> delegates;

  /// The desired lifetime duration of the access token in seconds. By default,
  /// the maximum allowed value is 1 hour. To set a lifetime of up to 12 hours,
  /// you can add the service account as an allowed value in an Organization
  /// Policy that enforces the
  /// `constraints/iam.allowServiceAccountCredentialLifetimeExtension`
  /// constraint. See detailed instructions at
  /// https://cloud.google.com/iam/help/credentials/lifetime If a value is not
  /// specified, the token's lifetime will be set to a default value of 1 hour.
  core.String lifetime;

  /// Required. Code to identify the scopes to be included in the OAuth 2.0
  /// access token. See
  /// https://developers.google.com/identity/protocols/googlescopes for more
  /// information. At least one value required.
  core.List<core.String> scope;

  GenerateAccessTokenRequest();

  GenerateAccessTokenRequest.fromJson(core.Map _json) {
    if (_json.containsKey('delegates')) {
      delegates = (_json['delegates'] as core.List).cast<core.String>();
    }
    if (_json.containsKey('lifetime')) {
      lifetime = _json['lifetime'];
    }
    if (_json.containsKey('scope')) {
      scope = (_json['scope'] as core.List).cast<core.String>();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (delegates != null) {
      _json['delegates'] = delegates;
    }
    if (lifetime != null) {
      _json['lifetime'] = lifetime;
    }
    if (scope != null) {
      _json['scope'] = scope;
    }
    return _json;
  }
}

class GenerateAccessTokenResponse {
  /// The OAuth 2.0 access token.
  core.String accessToken;

  /// Token expiration time. The expiration time is always set.
  core.String expireTime;

  GenerateAccessTokenResponse();

  GenerateAccessTokenResponse.fromJson(core.Map _json) {
    if (_json.containsKey('accessToken')) {
      accessToken = _json['accessToken'];
    }
    if (_json.containsKey('expireTime')) {
      expireTime = _json['expireTime'];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (accessToken != null) {
      _json['accessToken'] = accessToken;
    }
    if (expireTime != null) {
      _json['expireTime'] = expireTime;
    }
    return _json;
  }
}

class GenerateIdTokenRequest {
  /// Required. The audience for the token, such as the API or account that this
  /// token grants access to.
  core.String audience;

  /// The sequence of service accounts in a delegation chain. Each service
  /// account must be granted the `roles/iam.serviceAccountTokenCreator` role on
  /// its next service account in the chain. The last service account in the
  /// chain must be granted the `roles/iam.serviceAccountTokenCreator` role on
  /// the service account that is specified in the `name` field of the request.
  /// The delegates must have the following format:
  /// `projects/-/serviceAccounts/{ACCOUNT_EMAIL_OR_UNIQUEID}`. The `-` wildcard
  /// character is required; replacing it with a project ID is invalid.
  core.List<core.String> delegates;

  /// Include the service account email in the token. If set to `true`, the
  /// token will contain `email` and `email_verified` claims.
  core.bool includeEmail;

  GenerateIdTokenRequest();

  GenerateIdTokenRequest.fromJson(core.Map _json) {
    if (_json.containsKey('audience')) {
      audience = _json['audience'];
    }
    if (_json.containsKey('delegates')) {
      delegates = (_json['delegates'] as core.List).cast<core.String>();
    }
    if (_json.containsKey('includeEmail')) {
      includeEmail = _json['includeEmail'];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (audience != null) {
      _json['audience'] = audience;
    }
    if (delegates != null) {
      _json['delegates'] = delegates;
    }
    if (includeEmail != null) {
      _json['includeEmail'] = includeEmail;
    }
    return _json;
  }
}

class GenerateIdTokenResponse {
  /// The OpenId Connect ID token.
  core.String token;

  GenerateIdTokenResponse();

  GenerateIdTokenResponse.fromJson(core.Map _json) {
    if (_json.containsKey('token')) {
      token = _json['token'];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (token != null) {
      _json['token'] = token;
    }
    return _json;
  }
}

class SignBlobRequest {
  /// The sequence of service accounts in a delegation chain. Each service
  /// account must be granted the `roles/iam.serviceAccountTokenCreator` role on
  /// its next service account in the chain. The last service account in the
  /// chain must be granted the `roles/iam.serviceAccountTokenCreator` role on
  /// the service account that is specified in the `name` field of the request.
  /// The delegates must have the following format:
  /// `projects/-/serviceAccounts/{ACCOUNT_EMAIL_OR_UNIQUEID}`. The `-` wildcard
  /// character is required; replacing it with a project ID is invalid.
  core.List<core.String> delegates;

  /// Required. The bytes to sign.
  core.String payload;
  core.List<core.int> get payloadAsBytes => convert.base64.decode(payload);

  set payloadAsBytes(core.List<core.int> _bytes) {
    payload =
        convert.base64.encode(_bytes).replaceAll('/', '_').replaceAll('+', '-');
  }

  SignBlobRequest();

  SignBlobRequest.fromJson(core.Map _json) {
    if (_json.containsKey('delegates')) {
      delegates = (_json['delegates'] as core.List).cast<core.String>();
    }
    if (_json.containsKey('payload')) {
      payload = _json['payload'];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (delegates != null) {
      _json['delegates'] = delegates;
    }
    if (payload != null) {
      _json['payload'] = payload;
    }
    return _json;
  }
}

class SignBlobResponse {
  /// The ID of the key used to sign the blob. The key used for signing will
  /// remain valid for at least 12 hours after the blob is signed. To verify the
  /// signature, you can retrieve the public key in several formats from the
  /// following endpoints: - RSA public key wrapped in an X.509 v3 certificate:
  /// `https://www.googleapis.com/service_accounts/v1/metadata/x509/{ACCOUNT_EMAIL}`
  /// - Raw key in JSON format:
  /// `https://www.googleapis.com/service_accounts/v1/metadata/raw/{ACCOUNT_EMAIL}`
  /// - JSON Web Key (JWK):
  /// `https://www.googleapis.com/service_accounts/v1/metadata/jwk/{ACCOUNT_EMAIL}`
  core.String keyId;

  /// The signature for the blob. Does not include the original blob. After the
  /// key pair referenced by the `key_id` response field expires, Google no
  /// longer exposes the public key that can be used to verify the blob. As a
  /// result, the receiver can no longer verify the signature.
  core.String signedBlob;
  core.List<core.int> get signedBlobAsBytes =>
      convert.base64.decode(signedBlob);

  set signedBlobAsBytes(core.List<core.int> _bytes) {
    signedBlob =
        convert.base64.encode(_bytes).replaceAll('/', '_').replaceAll('+', '-');
  }

  SignBlobResponse();

  SignBlobResponse.fromJson(core.Map _json) {
    if (_json.containsKey('keyId')) {
      keyId = _json['keyId'];
    }
    if (_json.containsKey('signedBlob')) {
      signedBlob = _json['signedBlob'];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (keyId != null) {
      _json['keyId'] = keyId;
    }
    if (signedBlob != null) {
      _json['signedBlob'] = signedBlob;
    }
    return _json;
  }
}

class SignJwtRequest {
  /// The sequence of service accounts in a delegation chain. Each service
  /// account must be granted the `roles/iam.serviceAccountTokenCreator` role on
  /// its next service account in the chain. The last service account in the
  /// chain must be granted the `roles/iam.serviceAccountTokenCreator` role on
  /// the service account that is specified in the `name` field of the request.
  /// The delegates must have the following format:
  /// `projects/-/serviceAccounts/{ACCOUNT_EMAIL_OR_UNIQUEID}`. The `-` wildcard
  /// character is required; replacing it with a project ID is invalid.
  core.List<core.String> delegates;

  /// Required. The JWT payload to sign. Must be a serialized JSON object that
  /// contains a JWT Claims Set. For example: `{"sub": "user@example.com",
  /// "iat": 313435}` If the JWT Claims Set contains an expiration time (`exp`)
  /// claim, it must be an integer timestamp that is not in the past and no more
  /// than 12 hours in the future.
  core.String payload;

  SignJwtRequest();

  SignJwtRequest.fromJson(core.Map _json) {
    if (_json.containsKey('delegates')) {
      delegates = (_json['delegates'] as core.List).cast<core.String>();
    }
    if (_json.containsKey('payload')) {
      payload = _json['payload'];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (delegates != null) {
      _json['delegates'] = delegates;
    }
    if (payload != null) {
      _json['payload'] = payload;
    }
    return _json;
  }
}

class SignJwtResponse {
  /// The ID of the key used to sign the JWT. The key used for signing will
  /// remain valid for at least 12 hours after the JWT is signed. To verify the
  /// signature, you can retrieve the public key in several formats from the
  /// following endpoints: - RSA public key wrapped in an X.509 v3 certificate:
  /// `https://www.googleapis.com/service_accounts/v1/metadata/x509/{ACCOUNT_EMAIL}`
  /// - Raw key in JSON format:
  /// `https://www.googleapis.com/service_accounts/v1/metadata/raw/{ACCOUNT_EMAIL}`
  /// - JSON Web Key (JWK):
  /// `https://www.googleapis.com/service_accounts/v1/metadata/jwk/{ACCOUNT_EMAIL}`
  core.String keyId;

  /// The signed JWT. Contains the automatically generated header; the
  /// client-supplied payload; and the signature, which is generated using the
  /// key referenced by the `kid` field in the header. After the key pair
  /// referenced by the `key_id` response field expires, Google no longer
  /// exposes the public key that can be used to verify the JWT. As a result,
  /// the receiver can no longer verify the signature.
  core.String signedJwt;

  SignJwtResponse();

  SignJwtResponse.fromJson(core.Map _json) {
    if (_json.containsKey('keyId')) {
      keyId = _json['keyId'];
    }
    if (_json.containsKey('signedJwt')) {
      signedJwt = _json['signedJwt'];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (keyId != null) {
      _json['keyId'] = keyId;
    }
    if (signedJwt != null) {
      _json['signedJwt'] = signedJwt;
    }
    return _json;
  }
}
