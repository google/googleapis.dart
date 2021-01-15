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
// ignore_for_file: prefer_single_quotes
// ignore_for_file: unnecessary_brace_in_string_interps
// ignore_for_file: unnecessary_cast
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: unnecessary_string_interpolations
// ignore_for_file: unused_field
// ignore_for_file: unused_import

library googleapis.oauth2.v2;

import 'dart:core' as core;
import 'dart:async' as async;

import 'package:_discoveryapis_commons/_discoveryapis_commons.dart' as commons;
import 'package:http/http.dart' as http;

export 'package:_discoveryapis_commons/_discoveryapis_commons.dart'
    show ApiRequestError, DetailedApiRequestError;

const core.String USER_AGENT = 'dart-api-client oauth2/v2';

/// Obtains end-user authorization grants for use with other Google APIs.
class Oauth2Api {
  /// View your email address
  static const UserinfoEmailScope =
      "https://www.googleapis.com/auth/userinfo.email";

  /// See your personal info, including any personal info you've made publicly
  /// available
  static const UserinfoProfileScope =
      "https://www.googleapis.com/auth/userinfo.profile";

  /// Associate you with your personal info on Google
  static const OpenidScope = "openid";

  final commons.ApiRequester _requester;

  UserinfoResourceApi get userinfo => UserinfoResourceApi(_requester);

  Oauth2Api(http.Client client,
      {core.String rootUrl = "https://www.googleapis.com/",
      core.String servicePath = ""})
      : _requester =
            commons.ApiRequester(client, rootUrl, servicePath, USER_AGENT);

  /// Request parameters:
  ///
  /// [accessToken] - null
  ///
  /// [idToken] - null
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Tokeninfo].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Tokeninfo> tokeninfo({
    core.String accessToken,
    core.String idToken,
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (accessToken != null) {
      _queryParams["access_token"] = [accessToken];
    }
    if (idToken != null) {
      _queryParams["id_token"] = [idToken];
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'oauth2/v2/tokeninfo';

    final _response = _requester.request(
      _url,
      "POST",
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => Tokeninfo.fromJson(data));
  }
}

class UserinfoResourceApi {
  final commons.ApiRequester _requester;

  UserinfoV2ResourceApi get v2 => UserinfoV2ResourceApi(_requester);

  UserinfoResourceApi(commons.ApiRequester client) : _requester = client;

  /// Request parameters:
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Userinfo].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Userinfo> get({
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'oauth2/v2/userinfo';

    final _response = _requester.request(
      _url,
      "GET",
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => Userinfo.fromJson(data));
  }
}

class UserinfoV2ResourceApi {
  final commons.ApiRequester _requester;

  UserinfoV2MeResourceApi get me => UserinfoV2MeResourceApi(_requester);

  UserinfoV2ResourceApi(commons.ApiRequester client) : _requester = client;
}

class UserinfoV2MeResourceApi {
  final commons.ApiRequester _requester;

  UserinfoV2MeResourceApi(commons.ApiRequester client) : _requester = client;

  /// Request parameters:
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Userinfo].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Userinfo> get({
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'userinfo/v2/me';

    final _response = _requester.request(
      _url,
      "GET",
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => Userinfo.fromJson(data));
  }
}

class Tokeninfo {
  /// Who is the intended audience for this token. In general the same as
  /// issued_to.
  core.String audience;

  /// The email address of the user. Present only if the email scope is present
  /// in the request.
  core.String email;

  /// The expiry time of the token, as number of seconds left until expiry.
  core.int expiresIn;

  /// To whom was the token issued to. In general the same as audience.
  core.String issuedTo;

  /// The space separated list of scopes granted to this token.
  core.String scope;

  /// The obfuscated user id.
  core.String userId;

  /// Boolean flag which is true if the email address is verified. Present only
  /// if the email scope is present in the request.
  core.bool verifiedEmail;

  Tokeninfo();

  Tokeninfo.fromJson(core.Map _json) {
    if (_json.containsKey("audience")) {
      audience = _json["audience"];
    }
    if (_json.containsKey("email")) {
      email = _json["email"];
    }
    if (_json.containsKey("expires_in")) {
      expiresIn = _json["expires_in"];
    }
    if (_json.containsKey("issued_to")) {
      issuedTo = _json["issued_to"];
    }
    if (_json.containsKey("scope")) {
      scope = _json["scope"];
    }
    if (_json.containsKey("user_id")) {
      userId = _json["user_id"];
    }
    if (_json.containsKey("verified_email")) {
      verifiedEmail = _json["verified_email"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (audience != null) {
      _json["audience"] = audience;
    }
    if (email != null) {
      _json["email"] = email;
    }
    if (expiresIn != null) {
      _json["expires_in"] = expiresIn;
    }
    if (issuedTo != null) {
      _json["issued_to"] = issuedTo;
    }
    if (scope != null) {
      _json["scope"] = scope;
    }
    if (userId != null) {
      _json["user_id"] = userId;
    }
    if (verifiedEmail != null) {
      _json["verified_email"] = verifiedEmail;
    }
    return _json;
  }
}

class Userinfo {
  /// The user's email address.
  core.String email;

  /// The user's last name.
  core.String familyName;

  /// The user's gender.
  core.String gender;

  /// The user's first name.
  core.String givenName;

  /// The hosted domain e.g. example.com if the user is Google apps user.
  core.String hd;

  /// The obfuscated ID of the user.
  core.String id;

  /// URL of the profile page.
  core.String link;

  /// The user's preferred locale.
  core.String locale;

  /// The user's full name.
  core.String name;

  /// URL of the user's picture image.
  core.String picture;

  /// Boolean flag which is true if the email address is verified. Always
  /// verified because we only return the user's primary email address.
  core.bool verifiedEmail;

  Userinfo();

  Userinfo.fromJson(core.Map _json) {
    if (_json.containsKey("email")) {
      email = _json["email"];
    }
    if (_json.containsKey("family_name")) {
      familyName = _json["family_name"];
    }
    if (_json.containsKey("gender")) {
      gender = _json["gender"];
    }
    if (_json.containsKey("given_name")) {
      givenName = _json["given_name"];
    }
    if (_json.containsKey("hd")) {
      hd = _json["hd"];
    }
    if (_json.containsKey("id")) {
      id = _json["id"];
    }
    if (_json.containsKey("link")) {
      link = _json["link"];
    }
    if (_json.containsKey("locale")) {
      locale = _json["locale"];
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
    if (_json.containsKey("picture")) {
      picture = _json["picture"];
    }
    if (_json.containsKey("verified_email")) {
      verifiedEmail = _json["verified_email"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (email != null) {
      _json["email"] = email;
    }
    if (familyName != null) {
      _json["family_name"] = familyName;
    }
    if (gender != null) {
      _json["gender"] = gender;
    }
    if (givenName != null) {
      _json["given_name"] = givenName;
    }
    if (hd != null) {
      _json["hd"] = hd;
    }
    if (id != null) {
      _json["id"] = id;
    }
    if (link != null) {
      _json["link"] = link;
    }
    if (locale != null) {
      _json["locale"] = locale;
    }
    if (name != null) {
      _json["name"] = name;
    }
    if (picture != null) {
      _json["picture"] = picture;
    }
    if (verifiedEmail != null) {
      _json["verified_email"] = verifiedEmail;
    }
    return _json;
  }
}
