library googleapis.oauth2.v2;

import "dart:core" as core;
import "dart:collection" as collection;
import "dart:async" as async;
import "dart:convert" as convert;

import "package:crypto/crypto.dart" as crypto;
import 'package:http/http.dart' as http;
import '../src/common_internal.dart' as common_internal;
import '../common/common.dart' as common;

export '../common/common.dart' show ApiRequestError;
export '../common/common.dart' show DetailedApiRequestError;

/** Lets you access OAuth2 protocol related APIs. */
class Oauth2Api {
  /** Know your basic profile info and list of people in your circles. */
  static const PlusLoginScope = "https://www.googleapis.com/auth/plus.login";

  /** Know who you are on Google */
  static const PlusMeScope = "https://www.googleapis.com/auth/plus.me";

  /** View your email address */
  static const UserinfoEmailScope = "https://www.googleapis.com/auth/userinfo.email";

  /** View your basic profile info */
  static const UserinfoProfileScope = "https://www.googleapis.com/auth/userinfo.profile";


  final common_internal.ApiRequester _requester;

  UserinfoResourceApi get userinfo => new UserinfoResourceApi(_requester);

  Oauth2Api(http.Client client) : 
      _requester = new common_internal.ApiRequester(client, "https://www.googleapis.com/", "/");

  /**
   * Not documented yet.
   *
   * Request parameters:
   *
   * [accessToken] - null
   *
   * [idToken] - null
   *
   * Completes with a [Tokeninfo].
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<Tokeninfo> tokeninfo({core.String accessToken, core.String idToken}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (accessToken != null) {
      _queryParams["access_token"] = [accessToken];
    }
    if (idToken != null) {
      _queryParams["id_token"] = [idToken];
    }


    _url = 'oauth2/v2/tokeninfo';

    var _response = _requester.request(_url,
                                       "POST",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new Tokeninfo.fromJson(data));
  }

}


/** Not documented yet. */
class UserinfoResourceApi {
  final common_internal.ApiRequester _requester;

  UserinfoV2ResourceApi get v2 => new UserinfoV2ResourceApi(_requester);

  UserinfoResourceApi(common_internal.ApiRequester client) : 
      _requester = client;

  /**
   * Not documented yet.
   *
   * Request parameters:
   *
   * Completes with a [Userinfoplus].
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<Userinfoplus> get() {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;



    _url = 'oauth2/v2/userinfo';

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new Userinfoplus.fromJson(data));
  }

}


/** Not documented yet. */
class UserinfoV2ResourceApi {
  final common_internal.ApiRequester _requester;

  UserinfoV2MeResourceApi get me => new UserinfoV2MeResourceApi(_requester);

  UserinfoV2ResourceApi(common_internal.ApiRequester client) : 
      _requester = client;
}


/** Not documented yet. */
class UserinfoV2MeResourceApi {
  final common_internal.ApiRequester _requester;

  UserinfoV2MeResourceApi(common_internal.ApiRequester client) : 
      _requester = client;

  /**
   * Not documented yet.
   *
   * Request parameters:
   *
   * Completes with a [Userinfoplus].
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<Userinfoplus> get() {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;



    _url = 'userinfo/v2/me';

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new Userinfoplus.fromJson(data));
  }

}



/** Not documented yet. */
class Tokeninfo {
  /** The access type granted with this token. It can be offline or online. */
  core.String accessType;

  /**
   * Who is the intended audience for this token. In general the same as
   * issued_to.
   */
  core.String audience;

  /**
   * The email address of the user. Present only if the email scope is present
   * in the request.
   */
  core.String email;

  /** The expiry time of the token, as number of seconds left until expiry. */
  core.int expiresIn;

  /** To whom was the token issued to. In general the same as audience. */
  core.String issuedTo;

  /** The space separated list of scopes granted to this token. */
  core.String scope;

  /** The Gaia obfuscated user id. */
  core.String userId;

  /**
   * Boolean flag which is true if the email address is verified. Present only
   * if the email scope is present in the request.
   */
  core.bool verifiedEmail;


  Tokeninfo();

  Tokeninfo.fromJson(core.Map _json) {
    if (_json.containsKey("access_type")) {
      accessType = _json["access_type"];
    }
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

  core.Map toJson() {
    var _json = new core.Map();
    if (accessType != null) {
      _json["access_type"] = accessType;
    }
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


/** Not documented yet. */
class Userinfoplus {
  /** The user's email address. */
  core.String email;

  /** The user's last name. */
  core.String familyName;

  /** The user's gender. */
  core.String gender;

  /** The user's first name. */
  core.String givenName;

  /** The hosted domain e.g. example.com if the user is Google apps user. */
  core.String hd;

  /** The focus obfuscated gaia id of the user. */
  core.String id;

  /** URL of the profile page. */
  core.String link;

  /** The user's preferred locale. */
  core.String locale;

  /** The user's full name. */
  core.String name;

  /** URL of the user's picture image. */
  core.String picture;

  /**
   * Boolean flag which is true if the email address is verified. Always
   * verified because we only return the user's primary email address.
   */
  core.bool verifiedEmail;


  Userinfoplus();

  Userinfoplus.fromJson(core.Map _json) {
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

  core.Map toJson() {
    var _json = new core.Map();
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


