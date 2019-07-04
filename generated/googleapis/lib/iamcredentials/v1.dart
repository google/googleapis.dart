// This is a generated file (see the discoveryapis_generator project).

// ignore_for_file: unnecessary_cast

library googleapis.iamcredentials.v1;

import 'dart:core' as core;
import 'dart:async' as async;
import 'dart:convert' as convert;

import 'package:_discoveryapis_commons/_discoveryapis_commons.dart' as commons;
import 'package:http/http.dart' as http;

export 'package:_discoveryapis_commons/_discoveryapis_commons.dart'
    show ApiRequestError, DetailedApiRequestError;

const core.String USER_AGENT = 'dart-api-client iamcredentials/v1';

/// Creates short-lived, limited-privilege credentials for IAM service accounts.
class IamcredentialsApi {
  /// View and manage your data across Google Cloud Platform services
  static const CloudPlatformScope =
      "https://www.googleapis.com/auth/cloud-platform";

  final commons.ApiRequester _requester;

  ProjectsResourceApi get projects => new ProjectsResourceApi(_requester);

  IamcredentialsApi(http.Client client,
      {core.String rootUrl = "https://iamcredentials.googleapis.com/",
      core.String servicePath = ""})
      : _requester =
            new commons.ApiRequester(client, rootUrl, servicePath, USER_AGENT);
}

class ProjectsResourceApi {
  final commons.ApiRequester _requester;

  ProjectsServiceAccountsResourceApi get serviceAccounts =>
      new ProjectsServiceAccountsResourceApi(_requester);

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
  /// [name] - The resource name of the service account for which the
  /// credentials
  /// are requested, in the following format:
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
      GenerateAccessTokenRequest request, core.String name,
      {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (request != null) {
      _body = convert.json.encode((request).toJson());
    }
    if (name == null) {
      throw new core.ArgumentError("Parameter name is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1/' +
        commons.Escaper.ecapeVariableReserved('$name') +
        ':generateAccessToken';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response
        .then((data) => new GenerateAccessTokenResponse.fromJson(data));
  }

  /// Generates an OpenID Connect ID token for a service account.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - The resource name of the service account for which the
  /// credentials
  /// are requested, in the following format:
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
      GenerateIdTokenRequest request, core.String name,
      {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (request != null) {
      _body = convert.json.encode((request).toJson());
    }
    if (name == null) {
      throw new core.ArgumentError("Parameter name is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1/' +
        commons.Escaper.ecapeVariableReserved('$name') +
        ':generateIdToken';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new GenerateIdTokenResponse.fromJson(data));
  }

  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - The resource name of the service account for which the
  /// credentials
  /// are requested, in the following format:
  /// `projects/-/serviceAccounts/{ACCOUNT_EMAIL_OR_UNIQUEID}`. The `-` wildcard
  /// character is required; replacing it with a project ID is invalid.
  /// Value must have pattern "^projects/[^/]+/serviceAccounts/[^/]+$".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GenerateIdentityBindingAccessTokenResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GenerateIdentityBindingAccessTokenResponse>
      generateIdentityBindingAccessToken(
          GenerateIdentityBindingAccessTokenRequest request, core.String name,
          {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (request != null) {
      _body = convert.json.encode((request).toJson());
    }
    if (name == null) {
      throw new core.ArgumentError("Parameter name is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1/' +
        commons.Escaper.ecapeVariableReserved('$name') +
        ':generateIdentityBindingAccessToken';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) =>
        new GenerateIdentityBindingAccessTokenResponse.fromJson(data));
  }

  /// Signs a blob using a service account's system-managed private key.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - The resource name of the service account for which the
  /// credentials
  /// are requested, in the following format:
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
      SignBlobRequest request, core.String name,
      {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (request != null) {
      _body = convert.json.encode((request).toJson());
    }
    if (name == null) {
      throw new core.ArgumentError("Parameter name is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1/' + commons.Escaper.ecapeVariableReserved('$name') + ':signBlob';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new SignBlobResponse.fromJson(data));
  }

  /// Signs a JWT using a service account's system-managed private key.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - The resource name of the service account for which the
  /// credentials
  /// are requested, in the following format:
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
      SignJwtRequest request, core.String name,
      {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (request != null) {
      _body = convert.json.encode((request).toJson());
    }
    if (name == null) {
      throw new core.ArgumentError("Parameter name is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1/' + commons.Escaper.ecapeVariableReserved('$name') + ':signJwt';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new SignJwtResponse.fromJson(data));
  }
}

class GenerateAccessTokenRequest {
  /// The sequence of service accounts in a delegation chain. Each service
  /// account must be granted the `roles/iam.serviceAccountTokenCreator` role
  /// on its next service account in the chain. The last service account in the
  /// chain must be granted the `roles/iam.serviceAccountTokenCreator` role
  /// on the service account that is specified in the `name` field of the
  /// request.
  ///
  /// The delegates must have the following format:
  /// `projects/-/serviceAccounts/{ACCOUNT_EMAIL_OR_UNIQUEID}`. The `-` wildcard
  /// character is required; replacing it with a project ID is invalid.
  core.List<core.String> delegates;

  /// The desired lifetime duration of the access token in seconds.
  /// Must be set to a value less than or equal to 3600 (1 hour). If a value is
  /// not specified, the token's lifetime will be set to a default value of one
  /// hour.
  core.String lifetime;

  /// Code to identify the scopes to be included in the OAuth 2.0 access token.
  /// See https://developers.google.com/identity/protocols/googlescopes for more
  /// information.
  /// At least one value required.
  core.List<core.String> scope;

  GenerateAccessTokenRequest();

  GenerateAccessTokenRequest.fromJson(core.Map _json) {
    if (_json.containsKey("delegates")) {
      delegates = (_json["delegates"] as core.List).cast<core.String>();
    }
    if (_json.containsKey("lifetime")) {
      lifetime = _json["lifetime"];
    }
    if (_json.containsKey("scope")) {
      scope = (_json["scope"] as core.List).cast<core.String>();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (delegates != null) {
      _json["delegates"] = delegates;
    }
    if (lifetime != null) {
      _json["lifetime"] = lifetime;
    }
    if (scope != null) {
      _json["scope"] = scope;
    }
    return _json;
  }
}

class GenerateAccessTokenResponse {
  /// The OAuth 2.0 access token.
  core.String accessToken;

  /// Token expiration time.
  /// The expiration time is always set.
  core.String expireTime;

  GenerateAccessTokenResponse();

  GenerateAccessTokenResponse.fromJson(core.Map _json) {
    if (_json.containsKey("accessToken")) {
      accessToken = _json["accessToken"];
    }
    if (_json.containsKey("expireTime")) {
      expireTime = _json["expireTime"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (accessToken != null) {
      _json["accessToken"] = accessToken;
    }
    if (expireTime != null) {
      _json["expireTime"] = expireTime;
    }
    return _json;
  }
}

class GenerateIdTokenRequest {
  /// The audience for the token, such as the API or account that this token
  /// grants access to.
  core.String audience;

  /// The sequence of service accounts in a delegation chain. Each service
  /// account must be granted the `roles/iam.serviceAccountTokenCreator` role
  /// on its next service account in the chain. The last service account in the
  /// chain must be granted the `roles/iam.serviceAccountTokenCreator` role
  /// on the service account that is specified in the `name` field of the
  /// request.
  ///
  /// The delegates must have the following format:
  /// `projects/-/serviceAccounts/{ACCOUNT_EMAIL_OR_UNIQUEID}`. The `-` wildcard
  /// character is required; replacing it with a project ID is invalid.
  core.List<core.String> delegates;

  /// Include the service account email in the token. If set to `true`, the
  /// token will contain `email` and `email_verified` claims.
  core.bool includeEmail;

  GenerateIdTokenRequest();

  GenerateIdTokenRequest.fromJson(core.Map _json) {
    if (_json.containsKey("audience")) {
      audience = _json["audience"];
    }
    if (_json.containsKey("delegates")) {
      delegates = (_json["delegates"] as core.List).cast<core.String>();
    }
    if (_json.containsKey("includeEmail")) {
      includeEmail = _json["includeEmail"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (audience != null) {
      _json["audience"] = audience;
    }
    if (delegates != null) {
      _json["delegates"] = delegates;
    }
    if (includeEmail != null) {
      _json["includeEmail"] = includeEmail;
    }
    return _json;
  }
}

class GenerateIdTokenResponse {
  /// The OpenId Connect ID token.
  core.String token;

  GenerateIdTokenResponse();

  GenerateIdTokenResponse.fromJson(core.Map _json) {
    if (_json.containsKey("token")) {
      token = _json["token"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (token != null) {
      _json["token"] = token;
    }
    return _json;
  }
}

class GenerateIdentityBindingAccessTokenRequest {
  /// Required. Input token.
  /// Must be in JWT format according to
  /// RFC7523 (https://tools.ietf.org/html/rfc7523)
  /// and must have 'kid' field in the header.
  /// Supported signing algorithms: RS256 (RS512, ES256, ES512 coming soon).
  /// Mandatory payload fields (along the lines of RFC 7523, section 3):
  /// - iss: issuer of the token. Must provide a discovery document at
  ///        $iss/.well-known/openid-configuration . The document needs to be
  ///        formatted according to section 4.2 of the OpenID Connect Discovery
  ///        1.0 specification.
  /// - iat: Issue time in seconds since epoch. Must be in the past.
  /// - exp: Expiration time in seconds since epoch. Must be less than 48 hours
  ///        after iat. We recommend to create tokens that last shorter than 6
  ///        hours to improve security unless business reasons mandate longer
  /// expiration times. Shorter token lifetimes are generally more secure
  /// since tokens that have been exfiltrated by attackers can be used for
  ///        a shorter time. you can configure the maximum lifetime of the
  ///        incoming token in the configuration of the mapper.
  ///        The resulting Google token will expire within an hour or at "exp",
  ///        whichever is earlier.
  /// - sub: JWT subject, identity asserted in the JWT.
  /// - aud: Configured in the mapper policy. By default the service account
  ///        email.
  ///
  /// Claims from the incoming token can be transferred into the output token
  /// accoding to the mapper configuration. The outgoing claim size is limited.
  /// Outgoing claims size must be less than 4kB serialized as JSON without
  /// whitespace.
  ///
  /// Example header:
  /// {
  ///   "alg": "RS256",
  ///   "kid": "92a4265e14ab04d4d228a48d10d4ca31610936f8"
  /// }
  /// Example payload:
  /// {
  ///   "iss": "https://accounts.google.com",
  ///   "iat": 1517963104,
  ///   "exp": 1517966704,
  ///   "aud":
  /// "https://iamcredentials.googleapis.com/google.iam.credentials.v1.CloudGaia",
  ///   "sub": "113475438248934895348",
  ///   "my_claims": {
  ///     "additional_claim": "value"
  ///   }
  /// }
  core.String jwt;

  /// Code to identify the scopes to be included in the OAuth 2.0 access token.
  /// See https://developers.google.com/identity/protocols/googlescopes for more
  /// information.
  /// At least one value required.
  core.List<core.String> scope;

  GenerateIdentityBindingAccessTokenRequest();

  GenerateIdentityBindingAccessTokenRequest.fromJson(core.Map _json) {
    if (_json.containsKey("jwt")) {
      jwt = _json["jwt"];
    }
    if (_json.containsKey("scope")) {
      scope = (_json["scope"] as core.List).cast<core.String>();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (jwt != null) {
      _json["jwt"] = jwt;
    }
    if (scope != null) {
      _json["scope"] = scope;
    }
    return _json;
  }
}

class GenerateIdentityBindingAccessTokenResponse {
  /// The OAuth 2.0 access token.
  core.String accessToken;

  /// Token expiration time.
  /// The expiration time is always set.
  core.String expireTime;

  GenerateIdentityBindingAccessTokenResponse();

  GenerateIdentityBindingAccessTokenResponse.fromJson(core.Map _json) {
    if (_json.containsKey("accessToken")) {
      accessToken = _json["accessToken"];
    }
    if (_json.containsKey("expireTime")) {
      expireTime = _json["expireTime"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (accessToken != null) {
      _json["accessToken"] = accessToken;
    }
    if (expireTime != null) {
      _json["expireTime"] = expireTime;
    }
    return _json;
  }
}

class SignBlobRequest {
  /// The sequence of service accounts in a delegation chain. Each service
  /// account must be granted the `roles/iam.serviceAccountTokenCreator` role
  /// on its next service account in the chain. The last service account in the
  /// chain must be granted the `roles/iam.serviceAccountTokenCreator` role
  /// on the service account that is specified in the `name` field of the
  /// request.
  ///
  /// The delegates must have the following format:
  /// `projects/-/serviceAccounts/{ACCOUNT_EMAIL_OR_UNIQUEID}`. The `-` wildcard
  /// character is required; replacing it with a project ID is invalid.
  core.List<core.String> delegates;

  /// The bytes to sign.
  core.String payload;
  core.List<core.int> get payloadAsBytes {
    return convert.base64.decode(payload);
  }

  set payloadAsBytes(core.List<core.int> _bytes) {
    payload =
        convert.base64.encode(_bytes).replaceAll("/", "_").replaceAll("+", "-");
  }

  SignBlobRequest();

  SignBlobRequest.fromJson(core.Map _json) {
    if (_json.containsKey("delegates")) {
      delegates = (_json["delegates"] as core.List).cast<core.String>();
    }
    if (_json.containsKey("payload")) {
      payload = _json["payload"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (delegates != null) {
      _json["delegates"] = delegates;
    }
    if (payload != null) {
      _json["payload"] = payload;
    }
    return _json;
  }
}

class SignBlobResponse {
  /// The ID of the key used to sign the blob.
  core.String keyId;

  /// The signed blob.
  core.String signedBlob;
  core.List<core.int> get signedBlobAsBytes {
    return convert.base64.decode(signedBlob);
  }

  set signedBlobAsBytes(core.List<core.int> _bytes) {
    signedBlob =
        convert.base64.encode(_bytes).replaceAll("/", "_").replaceAll("+", "-");
  }

  SignBlobResponse();

  SignBlobResponse.fromJson(core.Map _json) {
    if (_json.containsKey("keyId")) {
      keyId = _json["keyId"];
    }
    if (_json.containsKey("signedBlob")) {
      signedBlob = _json["signedBlob"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (keyId != null) {
      _json["keyId"] = keyId;
    }
    if (signedBlob != null) {
      _json["signedBlob"] = signedBlob;
    }
    return _json;
  }
}

class SignJwtRequest {
  /// The sequence of service accounts in a delegation chain. Each service
  /// account must be granted the `roles/iam.serviceAccountTokenCreator` role
  /// on its next service account in the chain. The last service account in the
  /// chain must be granted the `roles/iam.serviceAccountTokenCreator` role
  /// on the service account that is specified in the `name` field of the
  /// request.
  ///
  /// The delegates must have the following format:
  /// `projects/-/serviceAccounts/{ACCOUNT_EMAIL_OR_UNIQUEID}`. The `-` wildcard
  /// character is required; replacing it with a project ID is invalid.
  core.List<core.String> delegates;

  /// The JWT payload to sign: a JSON object that contains a JWT Claims Set.
  core.String payload;

  SignJwtRequest();

  SignJwtRequest.fromJson(core.Map _json) {
    if (_json.containsKey("delegates")) {
      delegates = (_json["delegates"] as core.List).cast<core.String>();
    }
    if (_json.containsKey("payload")) {
      payload = _json["payload"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (delegates != null) {
      _json["delegates"] = delegates;
    }
    if (payload != null) {
      _json["payload"] = payload;
    }
    return _json;
  }
}

class SignJwtResponse {
  /// The ID of the key used to sign the JWT.
  core.String keyId;

  /// The signed JWT.
  core.String signedJwt;

  SignJwtResponse();

  SignJwtResponse.fromJson(core.Map _json) {
    if (_json.containsKey("keyId")) {
      keyId = _json["keyId"];
    }
    if (_json.containsKey("signedJwt")) {
      signedJwt = _json["signedJwt"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (keyId != null) {
      _json["keyId"] = keyId;
    }
    if (signedJwt != null) {
      _json["signedJwt"] = signedJwt;
    }
    return _json;
  }
}
