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

/// Firebase App Check API - v1beta
///
/// Firebase App Check works alongside other Firebase services to help protect
/// your backend resources from abuse, such as billing fraud or phishing.
///
/// For more information, see <https://firebase.google.com/docs/app-check>
///
/// Create an instance of [FirebaseappcheckApi] to access these resources:
///
/// - [JwksResource]
/// - [OauthClientsResource]
/// - [ProjectsResource]
///   - [ProjectsAppsResource]
///     - [ProjectsAppsAppAttestConfigResource]
///     - [ProjectsAppsDebugTokensResource]
///     - [ProjectsAppsDeviceCheckConfigResource]
///     - [ProjectsAppsPlayIntegrityConfigResource]
///     - [ProjectsAppsRecaptchaConfigResource]
///     - [ProjectsAppsRecaptchaEnterpriseConfigResource]
///     - [ProjectsAppsRecaptchaV3ConfigResource]
///     - [ProjectsAppsSafetyNetConfigResource]
///   - [ProjectsServicesResource]
///     - [ProjectsServicesResourcePoliciesResource]
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

/// Firebase App Check works alongside other Firebase services to help protect
/// your backend resources from abuse, such as billing fraud or phishing.
class FirebaseappcheckApi {
  /// See, edit, configure, and delete your Google Cloud data and see the email
  /// address for your Google Account.
  static const cloudPlatformScope =
      'https://www.googleapis.com/auth/cloud-platform';

  /// View and administer all your Firebase data and settings
  static const firebaseScope = 'https://www.googleapis.com/auth/firebase';

  final commons.ApiRequester _requester;

  JwksResource get jwks => JwksResource(_requester);
  OauthClientsResource get oauthClients => OauthClientsResource(_requester);
  ProjectsResource get projects => ProjectsResource(_requester);

  FirebaseappcheckApi(http.Client client,
      {core.String rootUrl = 'https://firebaseappcheck.googleapis.com/',
      core.String servicePath = ''})
      : _requester =
            commons.ApiRequester(client, rootUrl, servicePath, requestHeaders);
}

class JwksResource {
  final commons.ApiRequester _requester;

  JwksResource(commons.ApiRequester client) : _requester = client;

  /// Returns a public JWK set as specified by
  /// [RFC 7517](https://tools.ietf.org/html/rfc7517) that can be used to verify
  /// App Check tokens.
  ///
  /// Exactly one of the public keys in the returned set will successfully
  /// validate any App Check token that is currently valid.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The relative resource name to the public JWK set. Must
  /// always be exactly the string `jwks`.
  /// Value must have pattern `^jwks$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleFirebaseAppcheckV1betaPublicJwkSet].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleFirebaseAppcheckV1betaPublicJwkSet> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1beta/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleFirebaseAppcheckV1betaPublicJwkSet.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class OauthClientsResource {
  final commons.ApiRequester _requester;

  OauthClientsResource(commons.ApiRequester client) : _requester = client;

  /// Accepts an App Attest assertion and an artifact previously obtained from
  /// ExchangeAppAttestAttestation and verifies those with Apple.
  ///
  /// If valid, returns an AppCheckToken.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [app] - Required. The relative resource name of the iOS app, in the
  /// format: ``` projects/{project_number}/apps/{app_id} ``` If necessary, the
  /// `project_number` element can be replaced with the project ID of the
  /// Firebase project. Learn more about using project identifiers in Google's
  /// [AIP 2510](https://google.aip.dev/cloud/2510) standard. Alternatively, if
  /// this method is being called for an OAuth client protected by App Check,
  /// this field can also be in the format: ``` oauthClients/{oauth_client_id}
  /// ``` You can view the OAuth client ID for your OAuth clients in the Google
  /// Cloud console. Note that only iOS OAuth clients are supported at this
  /// time, and they must be linked to corresponding iOS Firebase apps. Please
  /// see
  /// [the documentation](https://developers.google.com/identity/sign-in/ios/appcheck/get-started#project-setup)
  /// for more information.
  /// Value must have pattern `^oauthClients/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleFirebaseAppcheckV1betaAppCheckToken].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleFirebaseAppcheckV1betaAppCheckToken>
      exchangeAppAttestAssertion(
    GoogleFirebaseAppcheckV1betaExchangeAppAttestAssertionRequest request,
    core.String app, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1beta/' + core.Uri.encodeFull('$app') + ':exchangeAppAttestAssertion';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleFirebaseAppcheckV1betaAppCheckToken.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Accepts an App Attest CBOR attestation and verifies it with Apple using
  /// your preconfigured team and bundle IDs.
  ///
  /// If valid, returns an attestation artifact that can later be exchanged for
  /// an AppCheckToken using ExchangeAppAttestAssertion. For convenience and
  /// performance, this method's response object will also contain an
  /// AppCheckToken (if the verification is successful).
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [app] - Required. The relative resource name of the iOS app, in the
  /// format: ``` projects/{project_number}/apps/{app_id} ``` If necessary, the
  /// `project_number` element can be replaced with the project ID of the
  /// Firebase project. Learn more about using project identifiers in Google's
  /// [AIP 2510](https://google.aip.dev/cloud/2510) standard. Alternatively, if
  /// this method is being called for an OAuth client protected by App Check,
  /// this field can also be in the format: ``` oauthClients/{oauth_client_id}
  /// ``` You can view the OAuth client ID for your OAuth clients in the Google
  /// Cloud console. Note that only iOS OAuth clients are supported at this
  /// time, and they must be linked to corresponding iOS Firebase apps. Please
  /// see
  /// [the documentation](https://developers.google.com/identity/sign-in/ios/appcheck/get-started#project-setup)
  /// for more information.
  /// Value must have pattern `^oauthClients/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a
  /// [GoogleFirebaseAppcheckV1betaExchangeAppAttestAttestationResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleFirebaseAppcheckV1betaExchangeAppAttestAttestationResponse>
      exchangeAppAttestAttestation(
    GoogleFirebaseAppcheckV1betaExchangeAppAttestAttestationRequest request,
    core.String app, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1beta/' +
        core.Uri.encodeFull('$app') +
        ':exchangeAppAttestAttestation';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleFirebaseAppcheckV1betaExchangeAppAttestAttestationResponse
        .fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Validates a debug token secret that you have previously created using
  /// CreateDebugToken.
  ///
  /// If valid, returns an AppCheckToken. Note that a restrictive quota is
  /// enforced on this method to prevent accidental exposure of the app to
  /// abuse.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [app] - Required. The relative resource name of the app, in the format:
  /// ``` projects/{project_number}/apps/{app_id} ``` If necessary, the
  /// `project_number` element can be replaced with the project ID of the
  /// Firebase project. Learn more about using project identifiers in Google's
  /// [AIP 2510](https://google.aip.dev/cloud/2510) standard. Alternatively, if
  /// this method is being called for an OAuth client protected by App Check,
  /// this field can also be in the format: ``` oauthClients/{oauth_client_id}
  /// ``` You can view the OAuth client ID for your OAuth clients in the Google
  /// Cloud console. Note that only iOS OAuth clients are supported at this
  /// time, and they must be linked to corresponding iOS Firebase apps. Please
  /// see
  /// [the documentation](https://developers.google.com/identity/sign-in/ios/appcheck/get-started#project-setup)
  /// for more information.
  /// Value must have pattern `^oauthClients/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleFirebaseAppcheckV1betaAppCheckToken].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleFirebaseAppcheckV1betaAppCheckToken> exchangeDebugToken(
    GoogleFirebaseAppcheckV1betaExchangeDebugTokenRequest request,
    core.String app, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1beta/' + core.Uri.encodeFull('$app') + ':exchangeDebugToken';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleFirebaseAppcheckV1betaAppCheckToken.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Generates a challenge that protects the integrity of an immediately
  /// following call to ExchangeAppAttestAttestation or
  /// ExchangeAppAttestAssertion.
  ///
  /// A challenge should not be reused for multiple calls.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [app] - Required. The relative resource name of the iOS app, in the
  /// format: ``` projects/{project_number}/apps/{app_id} ``` If necessary, the
  /// `project_number` element can be replaced with the project ID of the
  /// Firebase project. Learn more about using project identifiers in Google's
  /// [AIP 2510](https://google.aip.dev/cloud/2510) standard. Alternatively, if
  /// this method is being called for an OAuth client protected by App Check,
  /// this field can also be in the format: ``` oauthClients/{oauth_client_id}
  /// ``` You can view the OAuth client ID for your OAuth clients in the Google
  /// Cloud console. Note that only iOS OAuth clients are supported at this
  /// time, and they must be linked to corresponding iOS Firebase apps. Please
  /// see
  /// [the documentation](https://developers.google.com/identity/sign-in/ios/appcheck/get-started#project-setup)
  /// for more information.
  /// Value must have pattern `^oauthClients/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a
  /// [GoogleFirebaseAppcheckV1betaGenerateAppAttestChallengeResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleFirebaseAppcheckV1betaGenerateAppAttestChallengeResponse>
      generateAppAttestChallenge(
    GoogleFirebaseAppcheckV1betaGenerateAppAttestChallengeRequest request,
    core.String app, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1beta/' + core.Uri.encodeFull('$app') + ':generateAppAttestChallenge';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleFirebaseAppcheckV1betaGenerateAppAttestChallengeResponse
        .fromJson(response_ as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsResource {
  final commons.ApiRequester _requester;

  ProjectsAppsResource get apps => ProjectsAppsResource(_requester);
  ProjectsServicesResource get services => ProjectsServicesResource(_requester);

  ProjectsResource(commons.ApiRequester client) : _requester = client;

  /// Verifies the given App Check token and returns token usage signals that
  /// callers may act upon.
  ///
  /// This method currently only supports App Check tokens exchanged from the
  /// following attestation providers: * Play Integrity API * App Attest *
  /// DeviceCheck (`DCDevice` tokens) * reCAPTCHA Enterprise * reCAPTCHA v3 *
  /// Custom providers App Check tokens exchanged from debug secrets are also
  /// supported. Calling this method on an otherwise valid App Check token with
  /// an unsupported provider will cause an HTTP 400 error to be returned.
  /// Returns whether this token was already consumed before this call. If this
  /// is the first time this method has seen the given App Check token, the
  /// field `already_consumed` in the response will be absent. The given token
  /// will then be marked as `already_consumed` (set to `true`) for all future
  /// invocations of this method for that token. Note that if the given App
  /// Check token is invalid, an HTTP 403 error is returned instead of a
  /// response object, regardless whether the token was already consumed.
  /// Currently, when evaluating whether an App Check token was already
  /// consumed, only calls to this exact method are counted. Use of the App
  /// Check token elsewhere will not mark the token as being already consumed.
  /// The caller must have the
  /// \[`firebaseappcheck.appCheckTokens.verify`\](https://firebase.google.com/docs/projects/iam/permissions#app-check)
  /// permission to call this method. This permission is part of the
  /// [Firebase App Check Token Verifier role](https://firebase.google.com/docs/projects/iam/roles-predefined-product#app-check).
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [project] - Required. The relative resource name of the project for which
  /// the token was minted, in the format: ``` projects/{project_number} ``` If
  /// necessary, the `project_number` element can be replaced with the project
  /// ID of the Firebase project. Learn more about using project identifiers in
  /// Google's [AIP 2510](https://google.aip.dev/cloud/2510) standard.
  /// Value must have pattern `^projects/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a
  /// [GoogleFirebaseAppcheckV1betaVerifyAppCheckTokenResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleFirebaseAppcheckV1betaVerifyAppCheckTokenResponse>
      verifyAppCheckToken(
    GoogleFirebaseAppcheckV1betaVerifyAppCheckTokenRequest request,
    core.String project, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1beta/' + core.Uri.encodeFull('$project') + ':verifyAppCheckToken';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleFirebaseAppcheckV1betaVerifyAppCheckTokenResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsAppsResource {
  final commons.ApiRequester _requester;

  ProjectsAppsAppAttestConfigResource get appAttestConfig =>
      ProjectsAppsAppAttestConfigResource(_requester);
  ProjectsAppsDebugTokensResource get debugTokens =>
      ProjectsAppsDebugTokensResource(_requester);
  ProjectsAppsDeviceCheckConfigResource get deviceCheckConfig =>
      ProjectsAppsDeviceCheckConfigResource(_requester);
  ProjectsAppsPlayIntegrityConfigResource get playIntegrityConfig =>
      ProjectsAppsPlayIntegrityConfigResource(_requester);
  ProjectsAppsRecaptchaConfigResource get recaptchaConfig =>
      ProjectsAppsRecaptchaConfigResource(_requester);
  ProjectsAppsRecaptchaEnterpriseConfigResource get recaptchaEnterpriseConfig =>
      ProjectsAppsRecaptchaEnterpriseConfigResource(_requester);
  ProjectsAppsRecaptchaV3ConfigResource get recaptchaV3Config =>
      ProjectsAppsRecaptchaV3ConfigResource(_requester);
  ProjectsAppsSafetyNetConfigResource get safetyNetConfig =>
      ProjectsAppsSafetyNetConfigResource(_requester);

  ProjectsAppsResource(commons.ApiRequester client) : _requester = client;

  /// Accepts an App Attest assertion and an artifact previously obtained from
  /// ExchangeAppAttestAttestation and verifies those with Apple.
  ///
  /// If valid, returns an AppCheckToken.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [app] - Required. The relative resource name of the iOS app, in the
  /// format: ``` projects/{project_number}/apps/{app_id} ``` If necessary, the
  /// `project_number` element can be replaced with the project ID of the
  /// Firebase project. Learn more about using project identifiers in Google's
  /// [AIP 2510](https://google.aip.dev/cloud/2510) standard. Alternatively, if
  /// this method is being called for an OAuth client protected by App Check,
  /// this field can also be in the format: ``` oauthClients/{oauth_client_id}
  /// ``` You can view the OAuth client ID for your OAuth clients in the Google
  /// Cloud console. Note that only iOS OAuth clients are supported at this
  /// time, and they must be linked to corresponding iOS Firebase apps. Please
  /// see
  /// [the documentation](https://developers.google.com/identity/sign-in/ios/appcheck/get-started#project-setup)
  /// for more information.
  /// Value must have pattern `^projects/\[^/\]+/apps/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleFirebaseAppcheckV1betaAppCheckToken].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleFirebaseAppcheckV1betaAppCheckToken>
      exchangeAppAttestAssertion(
    GoogleFirebaseAppcheckV1betaExchangeAppAttestAssertionRequest request,
    core.String app, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1beta/' + core.Uri.encodeFull('$app') + ':exchangeAppAttestAssertion';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleFirebaseAppcheckV1betaAppCheckToken.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Accepts an App Attest CBOR attestation and verifies it with Apple using
  /// your preconfigured team and bundle IDs.
  ///
  /// If valid, returns an attestation artifact that can later be exchanged for
  /// an AppCheckToken using ExchangeAppAttestAssertion. For convenience and
  /// performance, this method's response object will also contain an
  /// AppCheckToken (if the verification is successful).
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [app] - Required. The relative resource name of the iOS app, in the
  /// format: ``` projects/{project_number}/apps/{app_id} ``` If necessary, the
  /// `project_number` element can be replaced with the project ID of the
  /// Firebase project. Learn more about using project identifiers in Google's
  /// [AIP 2510](https://google.aip.dev/cloud/2510) standard. Alternatively, if
  /// this method is being called for an OAuth client protected by App Check,
  /// this field can also be in the format: ``` oauthClients/{oauth_client_id}
  /// ``` You can view the OAuth client ID for your OAuth clients in the Google
  /// Cloud console. Note that only iOS OAuth clients are supported at this
  /// time, and they must be linked to corresponding iOS Firebase apps. Please
  /// see
  /// [the documentation](https://developers.google.com/identity/sign-in/ios/appcheck/get-started#project-setup)
  /// for more information.
  /// Value must have pattern `^projects/\[^/\]+/apps/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a
  /// [GoogleFirebaseAppcheckV1betaExchangeAppAttestAttestationResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleFirebaseAppcheckV1betaExchangeAppAttestAttestationResponse>
      exchangeAppAttestAttestation(
    GoogleFirebaseAppcheckV1betaExchangeAppAttestAttestationRequest request,
    core.String app, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1beta/' +
        core.Uri.encodeFull('$app') +
        ':exchangeAppAttestAttestation';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleFirebaseAppcheckV1betaExchangeAppAttestAttestationResponse
        .fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Validates a custom token signed using your project's Admin SDK service
  /// account credentials.
  ///
  /// If valid, returns an AppCheckToken.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [app] - Required. The relative resource name of the app, in the format:
  /// ``` projects/{project_number}/apps/{app_id} ``` If necessary, the
  /// `project_number` element can be replaced with the project ID of the
  /// Firebase project. Learn more about using project identifiers in Google's
  /// [AIP 2510](https://google.aip.dev/cloud/2510) standard.
  /// Value must have pattern `^projects/\[^/\]+/apps/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleFirebaseAppcheckV1betaAppCheckToken].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleFirebaseAppcheckV1betaAppCheckToken> exchangeCustomToken(
    GoogleFirebaseAppcheckV1betaExchangeCustomTokenRequest request,
    core.String app, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1beta/' + core.Uri.encodeFull('$app') + ':exchangeCustomToken';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleFirebaseAppcheckV1betaAppCheckToken.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Validates a debug token secret that you have previously created using
  /// CreateDebugToken.
  ///
  /// If valid, returns an AppCheckToken. Note that a restrictive quota is
  /// enforced on this method to prevent accidental exposure of the app to
  /// abuse.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [app] - Required. The relative resource name of the app, in the format:
  /// ``` projects/{project_number}/apps/{app_id} ``` If necessary, the
  /// `project_number` element can be replaced with the project ID of the
  /// Firebase project. Learn more about using project identifiers in Google's
  /// [AIP 2510](https://google.aip.dev/cloud/2510) standard. Alternatively, if
  /// this method is being called for an OAuth client protected by App Check,
  /// this field can also be in the format: ``` oauthClients/{oauth_client_id}
  /// ``` You can view the OAuth client ID for your OAuth clients in the Google
  /// Cloud console. Note that only iOS OAuth clients are supported at this
  /// time, and they must be linked to corresponding iOS Firebase apps. Please
  /// see
  /// [the documentation](https://developers.google.com/identity/sign-in/ios/appcheck/get-started#project-setup)
  /// for more information.
  /// Value must have pattern `^projects/\[^/\]+/apps/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleFirebaseAppcheckV1betaAppCheckToken].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleFirebaseAppcheckV1betaAppCheckToken> exchangeDebugToken(
    GoogleFirebaseAppcheckV1betaExchangeDebugTokenRequest request,
    core.String app, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1beta/' + core.Uri.encodeFull('$app') + ':exchangeDebugToken';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleFirebaseAppcheckV1betaAppCheckToken.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Accepts a
  /// \[`device_token`\](https://developer.apple.com/documentation/devicecheck/dcdevice)
  /// issued by DeviceCheck, and attempts to validate it with Apple.
  ///
  /// If valid, returns an AppCheckToken.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [app] - Required. The relative resource name of the iOS app, in the
  /// format: ``` projects/{project_number}/apps/{app_id} ``` If necessary, the
  /// `project_number` element can be replaced with the project ID of the
  /// Firebase project. Learn more about using project identifiers in Google's
  /// [AIP 2510](https://google.aip.dev/cloud/2510) standard.
  /// Value must have pattern `^projects/\[^/\]+/apps/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleFirebaseAppcheckV1betaAppCheckToken].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleFirebaseAppcheckV1betaAppCheckToken>
      exchangeDeviceCheckToken(
    GoogleFirebaseAppcheckV1betaExchangeDeviceCheckTokenRequest request,
    core.String app, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1beta/' + core.Uri.encodeFull('$app') + ':exchangeDeviceCheckToken';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleFirebaseAppcheckV1betaAppCheckToken.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Validates an
  /// [integrity verdict response token from Play Integrity](https://developer.android.com/google/play/integrity/verdict#decrypt-verify).
  ///
  /// If valid, returns an AppCheckToken.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [app] - Required. The relative resource name of the Android app, in the
  /// format: ``` projects/{project_number}/apps/{app_id} ``` If necessary, the
  /// `project_number` element can be replaced with the project ID of the
  /// Firebase project. Learn more about using project identifiers in Google's
  /// [AIP 2510](https://google.aip.dev/cloud/2510) standard.
  /// Value must have pattern `^projects/\[^/\]+/apps/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleFirebaseAppcheckV1betaAppCheckToken].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleFirebaseAppcheckV1betaAppCheckToken>
      exchangePlayIntegrityToken(
    GoogleFirebaseAppcheckV1betaExchangePlayIntegrityTokenRequest request,
    core.String app, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1beta/' + core.Uri.encodeFull('$app') + ':exchangePlayIntegrityToken';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleFirebaseAppcheckV1betaAppCheckToken.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Validates a
  /// [reCAPTCHA Enterprise response token](https://cloud.google.com/recaptcha-enterprise/docs/create-assessment#retrieve_token).
  ///
  /// If valid, returns an App Check token AppCheckToken.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [app] - Required. The relative resource name of the web app, in the
  /// format: ``` projects/{project_number}/apps/{app_id} ``` If necessary, the
  /// `project_number` element can be replaced with the project ID of the
  /// Firebase project. Learn more about using project identifiers in Google's
  /// [AIP 2510](https://google.aip.dev/cloud/2510) standard.
  /// Value must have pattern `^projects/\[^/\]+/apps/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleFirebaseAppcheckV1betaAppCheckToken].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleFirebaseAppcheckV1betaAppCheckToken>
      exchangeRecaptchaEnterpriseToken(
    GoogleFirebaseAppcheckV1betaExchangeRecaptchaEnterpriseTokenRequest request,
    core.String app, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1beta/' +
        core.Uri.encodeFull('$app') +
        ':exchangeRecaptchaEnterpriseToken';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleFirebaseAppcheckV1betaAppCheckToken.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Validates a
  /// [reCAPTCHA v3 response token](https://developers.google.com/recaptcha/docs/v3).
  ///
  /// If valid, returns an AppCheckToken.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [app] - Required. The relative resource name of the web app, in the
  /// format: ``` projects/{project_number}/apps/{app_id} ``` If necessary, the
  /// `project_number` element can be replaced with the project ID of the
  /// Firebase project. Learn more about using project identifiers in Google's
  /// [AIP 2510](https://google.aip.dev/cloud/2510) standard.
  /// Value must have pattern `^projects/\[^/\]+/apps/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleFirebaseAppcheckV1betaAppCheckToken].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  async.Future<GoogleFirebaseAppcheckV1betaAppCheckToken>
      exchangeRecaptchaToken(
    GoogleFirebaseAppcheckV1betaExchangeRecaptchaTokenRequest request,
    core.String app, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1beta/' + core.Uri.encodeFull('$app') + ':exchangeRecaptchaToken';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleFirebaseAppcheckV1betaAppCheckToken.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Validates a
  /// [reCAPTCHA v3 response token](https://developers.google.com/recaptcha/docs/v3).
  ///
  /// If valid, returns an AppCheckToken.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [app] - Required. The relative resource name of the web app, in the
  /// format: ``` projects/{project_number}/apps/{app_id} ``` If necessary, the
  /// `project_number` element can be replaced with the project ID of the
  /// Firebase project. Learn more about using project identifiers in Google's
  /// [AIP 2510](https://google.aip.dev/cloud/2510) standard.
  /// Value must have pattern `^projects/\[^/\]+/apps/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleFirebaseAppcheckV1betaAppCheckToken].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleFirebaseAppcheckV1betaAppCheckToken>
      exchangeRecaptchaV3Token(
    GoogleFirebaseAppcheckV1betaExchangeRecaptchaV3TokenRequest request,
    core.String app, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1beta/' + core.Uri.encodeFull('$app') + ':exchangeRecaptchaV3Token';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleFirebaseAppcheckV1betaAppCheckToken.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Validates a
  /// [SafetyNet token](https://developer.android.com/training/safetynet/attestation#request-attestation-step).
  ///
  /// If valid, returns an AppCheckToken.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [app] - Required. The relative resource name of the Android app, in the
  /// format: ``` projects/{project_number}/apps/{app_id} ``` If necessary, the
  /// `project_number` element can be replaced with the project ID of the
  /// Firebase project. Learn more about using project identifiers in Google's
  /// [AIP 2510](https://google.aip.dev/cloud/2510) standard.
  /// Value must have pattern `^projects/\[^/\]+/apps/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleFirebaseAppcheckV1betaAppCheckToken].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  async.Future<GoogleFirebaseAppcheckV1betaAppCheckToken>
      exchangeSafetyNetToken(
    GoogleFirebaseAppcheckV1betaExchangeSafetyNetTokenRequest request,
    core.String app, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1beta/' + core.Uri.encodeFull('$app') + ':exchangeSafetyNetToken';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleFirebaseAppcheckV1betaAppCheckToken.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Generates a challenge that protects the integrity of an immediately
  /// following call to ExchangeAppAttestAttestation or
  /// ExchangeAppAttestAssertion.
  ///
  /// A challenge should not be reused for multiple calls.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [app] - Required. The relative resource name of the iOS app, in the
  /// format: ``` projects/{project_number}/apps/{app_id} ``` If necessary, the
  /// `project_number` element can be replaced with the project ID of the
  /// Firebase project. Learn more about using project identifiers in Google's
  /// [AIP 2510](https://google.aip.dev/cloud/2510) standard. Alternatively, if
  /// this method is being called for an OAuth client protected by App Check,
  /// this field can also be in the format: ``` oauthClients/{oauth_client_id}
  /// ``` You can view the OAuth client ID for your OAuth clients in the Google
  /// Cloud console. Note that only iOS OAuth clients are supported at this
  /// time, and they must be linked to corresponding iOS Firebase apps. Please
  /// see
  /// [the documentation](https://developers.google.com/identity/sign-in/ios/appcheck/get-started#project-setup)
  /// for more information.
  /// Value must have pattern `^projects/\[^/\]+/apps/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a
  /// [GoogleFirebaseAppcheckV1betaGenerateAppAttestChallengeResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleFirebaseAppcheckV1betaGenerateAppAttestChallengeResponse>
      generateAppAttestChallenge(
    GoogleFirebaseAppcheckV1betaGenerateAppAttestChallengeRequest request,
    core.String app, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1beta/' + core.Uri.encodeFull('$app') + ':generateAppAttestChallenge';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleFirebaseAppcheckV1betaGenerateAppAttestChallengeResponse
        .fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Generates a challenge that protects the integrity of an immediately
  /// following integrity verdict request to the Play Integrity API.
  ///
  /// The next call to ExchangePlayIntegrityToken using the resulting integrity
  /// token will verify the presence and validity of the challenge. A challenge
  /// should not be reused for multiple calls.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [app] - Required. The relative resource name of the app, in the format:
  /// ``` projects/{project_number}/apps/{app_id} ``` If necessary, the
  /// `project_number` element can be replaced with the project ID of the
  /// Firebase project. Learn more about using project identifiers in Google's
  /// [AIP 2510](https://google.aip.dev/cloud/2510) standard.
  /// Value must have pattern `^projects/\[^/\]+/apps/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a
  /// [GoogleFirebaseAppcheckV1betaGeneratePlayIntegrityChallengeResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<
          GoogleFirebaseAppcheckV1betaGeneratePlayIntegrityChallengeResponse>
      generatePlayIntegrityChallenge(
    GoogleFirebaseAppcheckV1betaGeneratePlayIntegrityChallengeRequest request,
    core.String app, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1beta/' +
        core.Uri.encodeFull('$app') +
        ':generatePlayIntegrityChallenge';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleFirebaseAppcheckV1betaGeneratePlayIntegrityChallengeResponse
        .fromJson(response_ as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsAppsAppAttestConfigResource {
  final commons.ApiRequester _requester;

  ProjectsAppsAppAttestConfigResource(commons.ApiRequester client)
      : _requester = client;

  /// Atomically gets the AppAttestConfigs for the specified list of apps.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent project name shared by all
  /// AppAttestConfigs being retrieved, in the format ```
  /// projects/{project_number} ``` The parent collection in the `name` field of
  /// any resource being retrieved must match this field, or the entire batch
  /// fails.
  /// Value must have pattern `^projects/\[^/\]+$`.
  ///
  /// [names] - Required. The relative resource names of the AppAttestConfigs to
  /// retrieve, in the format ```
  /// projects/{project_number}/apps/{app_id}/appAttestConfig ``` A maximum of
  /// 100 objects can be retrieved in a batch.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a
  /// [GoogleFirebaseAppcheckV1betaBatchGetAppAttestConfigsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleFirebaseAppcheckV1betaBatchGetAppAttestConfigsResponse>
      batchGet(
    core.String parent, {
    core.List<core.String>? names,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (names != null) 'names': names,
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1beta/' +
        core.Uri.encodeFull('$parent') +
        '/apps/-/appAttestConfig:batchGet';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleFirebaseAppcheckV1betaBatchGetAppAttestConfigsResponse
        .fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Gets the AppAttestConfig for the specified app.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The relative resource name of the AppAttestConfig, in
  /// the format: ``` projects/{project_number}/apps/{app_id}/appAttestConfig
  /// ```
  /// Value must have pattern `^projects/\[^/\]+/apps/\[^/\]+/appAttestConfig$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleFirebaseAppcheckV1betaAppAttestConfig].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleFirebaseAppcheckV1betaAppAttestConfig> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1beta/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleFirebaseAppcheckV1betaAppAttestConfig.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Updates the AppAttestConfig for the specified app.
  ///
  /// While this configuration is incomplete or invalid, the app will be unable
  /// to exchange AppAttest tokens for App Check tokens.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The relative resource name of the App Attest
  /// configuration object, in the format: ```
  /// projects/{project_number}/apps/{app_id}/appAttestConfig ```
  /// Value must have pattern `^projects/\[^/\]+/apps/\[^/\]+/appAttestConfig$`.
  ///
  /// [updateMask] - Required. A comma-separated list of names of fields in the
  /// AppAttestConfig to update. Example: `token_ttl`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleFirebaseAppcheckV1betaAppAttestConfig].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleFirebaseAppcheckV1betaAppAttestConfig> patch(
    GoogleFirebaseAppcheckV1betaAppAttestConfig request,
    core.String name, {
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (updateMask != null) 'updateMask': [updateMask],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1beta/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleFirebaseAppcheckV1betaAppAttestConfig.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsAppsDebugTokensResource {
  final commons.ApiRequester _requester;

  ProjectsAppsDebugTokensResource(commons.ApiRequester client)
      : _requester = client;

  /// Creates a new DebugToken for the specified app.
  ///
  /// For security reasons, after the creation operation completes, the `token`
  /// field cannot be updated or retrieved, but you can revoke the debug token
  /// using DeleteDebugToken. Each app can have a maximum of 20 debug tokens.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The relative resource name of the parent app in which
  /// the specified DebugToken will be created, in the format: ```
  /// projects/{project_number}/apps/{app_id} ```
  /// Value must have pattern `^projects/\[^/\]+/apps/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleFirebaseAppcheckV1betaDebugToken].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleFirebaseAppcheckV1betaDebugToken> create(
    GoogleFirebaseAppcheckV1betaDebugToken request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1beta/' + core.Uri.encodeFull('$parent') + '/debugTokens';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleFirebaseAppcheckV1betaDebugToken.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Deletes the specified DebugToken.
  ///
  /// A deleted debug token cannot be used to exchange for an App Check token.
  /// Use this method when you suspect the secret `token` has been compromised
  /// or when you no longer need the debug token.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The relative resource name of the DebugToken to delete,
  /// in the format: ```
  /// projects/{project_number}/apps/{app_id}/debugTokens/{debug_token_id} ```
  /// Value must have pattern
  /// `^projects/\[^/\]+/apps/\[^/\]+/debugTokens/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleProtobufEmpty].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleProtobufEmpty> delete(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1beta/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return GoogleProtobufEmpty.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Gets the specified DebugToken.
  ///
  /// For security reasons, the `token` field is never populated in the
  /// response.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The relative resource name of the debug token, in the
  /// format: ```
  /// projects/{project_number}/apps/{app_id}/debugTokens/{debug_token_id} ```
  /// Value must have pattern
  /// `^projects/\[^/\]+/apps/\[^/\]+/debugTokens/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleFirebaseAppcheckV1betaDebugToken].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleFirebaseAppcheckV1betaDebugToken> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1beta/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleFirebaseAppcheckV1betaDebugToken.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists all DebugTokens for the specified app.
  ///
  /// For security reasons, the `token` field is never populated in the
  /// response.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The relative resource name of the parent app for
  /// which to list each associated DebugToken, in the format: ```
  /// projects/{project_number}/apps/{app_id} ```
  /// Value must have pattern `^projects/\[^/\]+/apps/\[^/\]+$`.
  ///
  /// [pageSize] - The maximum number of DebugTokens to return in the response.
  /// Note that an app can have at most 20 debug tokens. The server may return
  /// fewer than this at its own discretion. If no value is specified (or too
  /// large a value is specified), the server will impose its own limit.
  ///
  /// [pageToken] - Token returned from a previous call to ListDebugTokens
  /// indicating where in the set of DebugTokens to resume listing. Provide this
  /// to retrieve the subsequent page. When paginating, all other parameters
  /// provided to ListDebugTokens must match the call that provided the page
  /// token; if they do not match, the result is undefined.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleFirebaseAppcheckV1betaListDebugTokensResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleFirebaseAppcheckV1betaListDebugTokensResponse> list(
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

    final url_ = 'v1beta/' + core.Uri.encodeFull('$parent') + '/debugTokens';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleFirebaseAppcheckV1betaListDebugTokensResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Updates the specified DebugToken.
  ///
  /// For security reasons, the `token` field cannot be updated, nor will it be
  /// populated in the response, but you can revoke the debug token using
  /// DeleteDebugToken.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The relative resource name of the debug token, in the
  /// format: ```
  /// projects/{project_number}/apps/{app_id}/debugTokens/{debug_token_id} ```
  /// Value must have pattern
  /// `^projects/\[^/\]+/apps/\[^/\]+/debugTokens/\[^/\]+$`.
  ///
  /// [updateMask] - Required. A comma-separated list of names of fields in the
  /// DebugToken to update. Example: `display_name`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleFirebaseAppcheckV1betaDebugToken].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleFirebaseAppcheckV1betaDebugToken> patch(
    GoogleFirebaseAppcheckV1betaDebugToken request,
    core.String name, {
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (updateMask != null) 'updateMask': [updateMask],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1beta/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleFirebaseAppcheckV1betaDebugToken.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsAppsDeviceCheckConfigResource {
  final commons.ApiRequester _requester;

  ProjectsAppsDeviceCheckConfigResource(commons.ApiRequester client)
      : _requester = client;

  /// Atomically gets the DeviceCheckConfigs for the specified list of apps.
  ///
  /// For security reasons, the `private_key` field is never populated in the
  /// response.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent project name shared by all
  /// DeviceCheckConfigs being retrieved, in the format ```
  /// projects/{project_number} ``` The parent collection in the `name` field of
  /// any resource being retrieved must match this field, or the entire batch
  /// fails.
  /// Value must have pattern `^projects/\[^/\]+$`.
  ///
  /// [names] - Required. The relative resource names of the DeviceCheckConfigs
  /// to retrieve, in the format ```
  /// projects/{project_number}/apps/{app_id}/deviceCheckConfig ``` A maximum of
  /// 100 objects can be retrieved in a batch.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a
  /// [GoogleFirebaseAppcheckV1betaBatchGetDeviceCheckConfigsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleFirebaseAppcheckV1betaBatchGetDeviceCheckConfigsResponse>
      batchGet(
    core.String parent, {
    core.List<core.String>? names,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (names != null) 'names': names,
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1beta/' +
        core.Uri.encodeFull('$parent') +
        '/apps/-/deviceCheckConfig:batchGet';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleFirebaseAppcheckV1betaBatchGetDeviceCheckConfigsResponse
        .fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Gets the DeviceCheckConfig for the specified app.
  ///
  /// For security reasons, the `private_key` field is never populated in the
  /// response.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The relative resource name of the DeviceCheckConfig, in
  /// the format: ``` projects/{project_number}/apps/{app_id}/deviceCheckConfig
  /// ```
  /// Value must have pattern
  /// `^projects/\[^/\]+/apps/\[^/\]+/deviceCheckConfig$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleFirebaseAppcheckV1betaDeviceCheckConfig].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleFirebaseAppcheckV1betaDeviceCheckConfig> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1beta/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleFirebaseAppcheckV1betaDeviceCheckConfig.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Updates the DeviceCheckConfig for the specified app.
  ///
  /// While this configuration is incomplete or invalid, the app will be unable
  /// to exchange DeviceCheck tokens for App Check tokens. For security reasons,
  /// the `private_key` field is never populated in the response.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The relative resource name of the DeviceCheck
  /// configuration object, in the format: ```
  /// projects/{project_number}/apps/{app_id}/deviceCheckConfig ```
  /// Value must have pattern
  /// `^projects/\[^/\]+/apps/\[^/\]+/deviceCheckConfig$`.
  ///
  /// [updateMask] - Required. A comma-separated list of names of fields in the
  /// DeviceCheckConfig to update. Example: `key_id,private_key`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleFirebaseAppcheckV1betaDeviceCheckConfig].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleFirebaseAppcheckV1betaDeviceCheckConfig> patch(
    GoogleFirebaseAppcheckV1betaDeviceCheckConfig request,
    core.String name, {
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (updateMask != null) 'updateMask': [updateMask],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1beta/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleFirebaseAppcheckV1betaDeviceCheckConfig.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsAppsPlayIntegrityConfigResource {
  final commons.ApiRequester _requester;

  ProjectsAppsPlayIntegrityConfigResource(commons.ApiRequester client)
      : _requester = client;

  /// Atomically gets the PlayIntegrityConfigs for the specified list of apps.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent project name shared by all
  /// PlayIntegrityConfigs being retrieved, in the format ```
  /// projects/{project_number} ``` The parent collection in the `name` field of
  /// any resource being retrieved must match this field, or the entire batch
  /// fails.
  /// Value must have pattern `^projects/\[^/\]+$`.
  ///
  /// [names] - Required. The relative resource names of the
  /// PlayIntegrityConfigs to retrieve, in the format ```
  /// projects/{project_number}/apps/{app_id}/playIntegrityConfig ``` A maximum
  /// of 100 objects can be retrieved in a batch.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a
  /// [GoogleFirebaseAppcheckV1betaBatchGetPlayIntegrityConfigsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleFirebaseAppcheckV1betaBatchGetPlayIntegrityConfigsResponse>
      batchGet(
    core.String parent, {
    core.List<core.String>? names,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (names != null) 'names': names,
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1beta/' +
        core.Uri.encodeFull('$parent') +
        '/apps/-/playIntegrityConfig:batchGet';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleFirebaseAppcheckV1betaBatchGetPlayIntegrityConfigsResponse
        .fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Gets the PlayIntegrityConfig for the specified app.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The relative resource name of the PlayIntegrityConfig,
  /// in the format: ```
  /// projects/{project_number}/apps/{app_id}/playIntegrityConfig ```
  /// Value must have pattern
  /// `^projects/\[^/\]+/apps/\[^/\]+/playIntegrityConfig$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleFirebaseAppcheckV1betaPlayIntegrityConfig].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleFirebaseAppcheckV1betaPlayIntegrityConfig> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1beta/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleFirebaseAppcheckV1betaPlayIntegrityConfig.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Updates the PlayIntegrityConfig for the specified app.
  ///
  /// While this configuration is incomplete or invalid, the app will be unable
  /// to exchange Play Integrity tokens for App Check tokens.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The relative resource name of the Play Integrity
  /// configuration object, in the format: ```
  /// projects/{project_number}/apps/{app_id}/playIntegrityConfig ```
  /// Value must have pattern
  /// `^projects/\[^/\]+/apps/\[^/\]+/playIntegrityConfig$`.
  ///
  /// [updateMask] - Required. A comma-separated list of names of fields in the
  /// PlayIntegrityConfig to update. Example: `token_ttl`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleFirebaseAppcheckV1betaPlayIntegrityConfig].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleFirebaseAppcheckV1betaPlayIntegrityConfig> patch(
    GoogleFirebaseAppcheckV1betaPlayIntegrityConfig request,
    core.String name, {
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (updateMask != null) 'updateMask': [updateMask],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1beta/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleFirebaseAppcheckV1betaPlayIntegrityConfig.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

@core.Deprecated(
  'Not supported. Member documentation may have more information.',
)
class ProjectsAppsRecaptchaConfigResource {
  final commons.ApiRequester _requester;

  ProjectsAppsRecaptchaConfigResource(commons.ApiRequester client)
      : _requester = client;

  /// Atomically gets the RecaptchaConfigs for the specified list of apps.
  ///
  /// For security reasons, the `site_secret` field is never populated in the
  /// response.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent project name shared by all
  /// RecaptchaConfigs being retrieved, in the format ```
  /// projects/{project_number} ``` The parent collection in the `name` field of
  /// any resource being retrieved must match this field, or the entire batch
  /// fails.
  /// Value must have pattern `^projects/\[^/\]+$`.
  ///
  /// [names] - Required. The relative resource names of the RecaptchaConfigs to
  /// retrieve, in the format: ```
  /// projects/{project_number}/apps/{app_id}/recaptchaConfig ``` A maximum of
  /// 100 objects can be retrieved in a batch.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a
  /// [GoogleFirebaseAppcheckV1betaBatchGetRecaptchaConfigsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  async.Future<GoogleFirebaseAppcheckV1betaBatchGetRecaptchaConfigsResponse>
      batchGet(
    core.String parent, {
    core.List<core.String>? names,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (names != null) 'names': names,
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1beta/' +
        core.Uri.encodeFull('$parent') +
        '/apps/-/recaptchaConfig:batchGet';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleFirebaseAppcheckV1betaBatchGetRecaptchaConfigsResponse
        .fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Gets the RecaptchaConfig for the specified app.
  ///
  /// For security reasons, the `site_secret` field is never populated in the
  /// response.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The relative resource name of the RecaptchaConfig, in
  /// the format: ``` projects/{project_number}/apps/{app_id}/recaptchaConfig
  /// ```
  /// Value must have pattern `^projects/\[^/\]+/apps/\[^/\]+/recaptchaConfig$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleFirebaseAppcheckV1betaRecaptchaConfig].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  async.Future<GoogleFirebaseAppcheckV1betaRecaptchaConfig> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1beta/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleFirebaseAppcheckV1betaRecaptchaConfig.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Updates the RecaptchaConfig for the specified app.
  ///
  /// While this configuration is incomplete or invalid, the app will be unable
  /// to exchange reCAPTCHA tokens for App Check tokens. For security reasons,
  /// the `site_secret` field is never populated in the response.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The relative resource name of the reCAPTCHA v3
  /// configuration object, in the format: ```
  /// projects/{project_number}/apps/{app_id}/recaptchaConfig ```
  /// Value must have pattern `^projects/\[^/\]+/apps/\[^/\]+/recaptchaConfig$`.
  ///
  /// [updateMask] - Required. A comma-separated list of names of fields in the
  /// RecaptchaConfig to update. Example: `site_secret`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleFirebaseAppcheckV1betaRecaptchaConfig].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  async.Future<GoogleFirebaseAppcheckV1betaRecaptchaConfig> patch(
    GoogleFirebaseAppcheckV1betaRecaptchaConfig request,
    core.String name, {
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (updateMask != null) 'updateMask': [updateMask],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1beta/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleFirebaseAppcheckV1betaRecaptchaConfig.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsAppsRecaptchaEnterpriseConfigResource {
  final commons.ApiRequester _requester;

  ProjectsAppsRecaptchaEnterpriseConfigResource(commons.ApiRequester client)
      : _requester = client;

  /// Atomically gets the RecaptchaEnterpriseConfigs for the specified list of
  /// apps.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent project name shared by all
  /// RecaptchaEnterpriseConfigs being retrieved, in the format ```
  /// projects/{project_number} ``` The parent collection in the `name` field of
  /// any resource being retrieved must match this field, or the entire batch
  /// fails.
  /// Value must have pattern `^projects/\[^/\]+$`.
  ///
  /// [names] - Required. The relative resource names of the
  /// RecaptchaEnterpriseConfigs to retrieve, in the format: ```
  /// projects/{project_number}/apps/{app_id}/recaptchaEnterpriseConfig ``` A
  /// maximum of 100 objects can be retrieved in a batch.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a
  /// [GoogleFirebaseAppcheckV1betaBatchGetRecaptchaEnterpriseConfigsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<
          GoogleFirebaseAppcheckV1betaBatchGetRecaptchaEnterpriseConfigsResponse>
      batchGet(
    core.String parent, {
    core.List<core.String>? names,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (names != null) 'names': names,
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1beta/' +
        core.Uri.encodeFull('$parent') +
        '/apps/-/recaptchaEnterpriseConfig:batchGet';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleFirebaseAppcheckV1betaBatchGetRecaptchaEnterpriseConfigsResponse
        .fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Gets the RecaptchaEnterpriseConfig for the specified app.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The relative resource name of the
  /// RecaptchaEnterpriseConfig, in the format: ```
  /// projects/{project_number}/apps/{app_id}/recaptchaEnterpriseConfig ```
  /// Value must have pattern
  /// `^projects/\[^/\]+/apps/\[^/\]+/recaptchaEnterpriseConfig$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleFirebaseAppcheckV1betaRecaptchaEnterpriseConfig].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleFirebaseAppcheckV1betaRecaptchaEnterpriseConfig> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1beta/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleFirebaseAppcheckV1betaRecaptchaEnterpriseConfig.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Updates the RecaptchaEnterpriseConfig for the specified app.
  ///
  /// While this configuration is incomplete or invalid, the app will be unable
  /// to exchange reCAPTCHA Enterprise tokens for App Check tokens.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The relative resource name of the reCAPTCHA Enterprise
  /// configuration object, in the format: ```
  /// projects/{project_number}/apps/{app_id}/recaptchaEnterpriseConfig ```
  /// Value must have pattern
  /// `^projects/\[^/\]+/apps/\[^/\]+/recaptchaEnterpriseConfig$`.
  ///
  /// [updateMask] - Required. A comma-separated list of names of fields in the
  /// RecaptchaEnterpriseConfig to update. Example: `site_key`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleFirebaseAppcheckV1betaRecaptchaEnterpriseConfig].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleFirebaseAppcheckV1betaRecaptchaEnterpriseConfig> patch(
    GoogleFirebaseAppcheckV1betaRecaptchaEnterpriseConfig request,
    core.String name, {
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (updateMask != null) 'updateMask': [updateMask],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1beta/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleFirebaseAppcheckV1betaRecaptchaEnterpriseConfig.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsAppsRecaptchaV3ConfigResource {
  final commons.ApiRequester _requester;

  ProjectsAppsRecaptchaV3ConfigResource(commons.ApiRequester client)
      : _requester = client;

  /// Atomically gets the RecaptchaV3Configs for the specified list of apps.
  ///
  /// For security reasons, the `site_secret` field is never populated in the
  /// response.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent project name shared by all
  /// RecaptchaV3Configs being retrieved, in the format ```
  /// projects/{project_number} ``` The parent collection in the `name` field of
  /// any resource being retrieved must match this field, or the entire batch
  /// fails.
  /// Value must have pattern `^projects/\[^/\]+$`.
  ///
  /// [names] - Required. The relative resource names of the RecaptchaV3Configs
  /// to retrieve, in the format: ```
  /// projects/{project_number}/apps/{app_id}/recaptchaV3Config ``` A maximum of
  /// 100 objects can be retrieved in a batch.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a
  /// [GoogleFirebaseAppcheckV1betaBatchGetRecaptchaV3ConfigsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleFirebaseAppcheckV1betaBatchGetRecaptchaV3ConfigsResponse>
      batchGet(
    core.String parent, {
    core.List<core.String>? names,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (names != null) 'names': names,
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1beta/' +
        core.Uri.encodeFull('$parent') +
        '/apps/-/recaptchaV3Config:batchGet';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleFirebaseAppcheckV1betaBatchGetRecaptchaV3ConfigsResponse
        .fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Gets the RecaptchaV3Config for the specified app.
  ///
  /// For security reasons, the `site_secret` field is never populated in the
  /// response.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The relative resource name of the RecaptchaV3Config, in
  /// the format: ``` projects/{project_number}/apps/{app_id}/recaptchaV3Config
  /// ```
  /// Value must have pattern
  /// `^projects/\[^/\]+/apps/\[^/\]+/recaptchaV3Config$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleFirebaseAppcheckV1betaRecaptchaV3Config].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleFirebaseAppcheckV1betaRecaptchaV3Config> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1beta/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleFirebaseAppcheckV1betaRecaptchaV3Config.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Updates the RecaptchaV3Config for the specified app.
  ///
  /// While this configuration is incomplete or invalid, the app will be unable
  /// to exchange reCAPTCHA V3 tokens for App Check tokens. For security
  /// reasons, the `site_secret` field is never populated in the response.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The relative resource name of the reCAPTCHA v3
  /// configuration object, in the format: ```
  /// projects/{project_number}/apps/{app_id}/recaptchaV3Config ```
  /// Value must have pattern
  /// `^projects/\[^/\]+/apps/\[^/\]+/recaptchaV3Config$`.
  ///
  /// [updateMask] - Required. A comma-separated list of names of fields in the
  /// RecaptchaV3Config to update. Example: `site_secret`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleFirebaseAppcheckV1betaRecaptchaV3Config].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleFirebaseAppcheckV1betaRecaptchaV3Config> patch(
    GoogleFirebaseAppcheckV1betaRecaptchaV3Config request,
    core.String name, {
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (updateMask != null) 'updateMask': [updateMask],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1beta/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleFirebaseAppcheckV1betaRecaptchaV3Config.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

@core.Deprecated(
  'Not supported. Member documentation may have more information.',
)
class ProjectsAppsSafetyNetConfigResource {
  final commons.ApiRequester _requester;

  ProjectsAppsSafetyNetConfigResource(commons.ApiRequester client)
      : _requester = client;

  /// Atomically gets the SafetyNetConfigs for the specified list of apps.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent project name shared by all
  /// SafetyNetConfigs being retrieved, in the format ```
  /// projects/{project_number} ``` The parent collection in the `name` field of
  /// any resource being retrieved must match this field, or the entire batch
  /// fails.
  /// Value must have pattern `^projects/\[^/\]+$`.
  ///
  /// [names] - Required. The relative resource names of the SafetyNetConfigs to
  /// retrieve, in the format ```
  /// projects/{project_number}/apps/{app_id}/safetyNetConfig ``` A maximum of
  /// 100 objects can be retrieved in a batch.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a
  /// [GoogleFirebaseAppcheckV1betaBatchGetSafetyNetConfigsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  async.Future<GoogleFirebaseAppcheckV1betaBatchGetSafetyNetConfigsResponse>
      batchGet(
    core.String parent, {
    core.List<core.String>? names,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (names != null) 'names': names,
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1beta/' +
        core.Uri.encodeFull('$parent') +
        '/apps/-/safetyNetConfig:batchGet';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleFirebaseAppcheckV1betaBatchGetSafetyNetConfigsResponse
        .fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Gets the SafetyNetConfig for the specified app.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The relative resource name of the SafetyNetConfig, in
  /// the format: ``` projects/{project_number}/apps/{app_id}/safetyNetConfig
  /// ```
  /// Value must have pattern `^projects/\[^/\]+/apps/\[^/\]+/safetyNetConfig$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleFirebaseAppcheckV1betaSafetyNetConfig].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  async.Future<GoogleFirebaseAppcheckV1betaSafetyNetConfig> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1beta/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleFirebaseAppcheckV1betaSafetyNetConfig.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Updates the SafetyNetConfig for the specified app.
  ///
  /// While this configuration is incomplete or invalid, the app will be unable
  /// to exchange SafetyNet tokens for App Check tokens.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The relative resource name of the SafetyNet
  /// configuration object, in the format: ```
  /// projects/{project_number}/apps/{app_id}/safetyNetConfig ```
  /// Value must have pattern `^projects/\[^/\]+/apps/\[^/\]+/safetyNetConfig$`.
  ///
  /// [updateMask] - Required. A comma-separated list of names of fields in the
  /// SafetyNetConfig to update. Example: `token_ttl`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleFirebaseAppcheckV1betaSafetyNetConfig].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  async.Future<GoogleFirebaseAppcheckV1betaSafetyNetConfig> patch(
    GoogleFirebaseAppcheckV1betaSafetyNetConfig request,
    core.String name, {
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (updateMask != null) 'updateMask': [updateMask],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1beta/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleFirebaseAppcheckV1betaSafetyNetConfig.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsServicesResource {
  final commons.ApiRequester _requester;

  ProjectsServicesResourcePoliciesResource get resourcePolicies =>
      ProjectsServicesResourcePoliciesResource(_requester);

  ProjectsServicesResource(commons.ApiRequester client) : _requester = client;

  /// Atomically updates the specified Service configurations.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent project name shared by all Service
  /// configurations being updated, in the format ``` projects/{project_number}
  /// ``` The parent collection in the `name` field of any resource being
  /// updated must match this field, or the entire batch fails.
  /// Value must have pattern `^projects/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a
  /// [GoogleFirebaseAppcheckV1betaBatchUpdateServicesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleFirebaseAppcheckV1betaBatchUpdateServicesResponse>
      batchUpdate(
    GoogleFirebaseAppcheckV1betaBatchUpdateServicesRequest request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1beta/' + core.Uri.encodeFull('$parent') + '/services:batchUpdate';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleFirebaseAppcheckV1betaBatchUpdateServicesResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Gets the Service configuration for the specified service name.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The relative resource name of the Service to retrieve,
  /// in the format: ``` projects/{project_number}/services/{service_id} ```
  /// Note that the `service_id` element must be a supported service ID.
  /// Currently, the following service IDs are supported: *
  /// `firebasestorage.googleapis.com` (Cloud Storage for Firebase) *
  /// `firebasedatabase.googleapis.com` (Firebase Realtime Database) *
  /// `firestore.googleapis.com` (Cloud Firestore) *
  /// `identitytoolkit.googleapis.com` (Firebase Authentication with Identity
  /// Platform) * `oauth2.googleapis.com` (Google Identity for iOS)
  /// Value must have pattern `^projects/\[^/\]+/services/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleFirebaseAppcheckV1betaService].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleFirebaseAppcheckV1betaService> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1beta/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleFirebaseAppcheckV1betaService.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists all Service configurations for the specified project.
  ///
  /// Only Services which were explicitly configured using UpdateService or
  /// BatchUpdateServices will be returned.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The relative resource name of the parent project for
  /// which to list each associated Service, in the format: ```
  /// projects/{project_number} ```
  /// Value must have pattern `^projects/\[^/\]+$`.
  ///
  /// [pageSize] - The maximum number of Services to return in the response.
  /// Only explicitly configured services are returned. The server may return
  /// fewer than this at its own discretion. If no value is specified (or too
  /// large a value is specified), the server will impose its own limit.
  ///
  /// [pageToken] - Token returned from a previous call to ListServices
  /// indicating where in the set of Services to resume listing. Provide this to
  /// retrieve the subsequent page. When paginating, all other parameters
  /// provided to ListServices must match the call that provided the page token;
  /// if they do not match, the result is undefined.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleFirebaseAppcheckV1betaListServicesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleFirebaseAppcheckV1betaListServicesResponse> list(
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

    final url_ = 'v1beta/' + core.Uri.encodeFull('$parent') + '/services';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleFirebaseAppcheckV1betaListServicesResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Updates the specified Service configuration.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The relative resource name of the service configuration
  /// object, in the format: ``` projects/{project_number}/services/{service_id}
  /// ``` Note that the `service_id` element must be a supported service ID.
  /// Currently, the following service IDs are supported: *
  /// `firebasestorage.googleapis.com` (Cloud Storage for Firebase) *
  /// `firebasedatabase.googleapis.com` (Firebase Realtime Database) *
  /// `firestore.googleapis.com` (Cloud Firestore) *
  /// `identitytoolkit.googleapis.com` (Firebase Authentication with Identity
  /// Platform) * `oauth2.googleapis.com` (Google Identity for iOS)
  /// Value must have pattern `^projects/\[^/\]+/services/\[^/\]+$`.
  ///
  /// [updateMask] - Required. A comma-separated list of names of fields in the
  /// Service to update. Example: `enforcement_mode`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleFirebaseAppcheckV1betaService].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleFirebaseAppcheckV1betaService> patch(
    GoogleFirebaseAppcheckV1betaService request,
    core.String name, {
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (updateMask != null) 'updateMask': [updateMask],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1beta/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleFirebaseAppcheckV1betaService.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsServicesResourcePoliciesResource {
  final commons.ApiRequester _requester;

  ProjectsServicesResourcePoliciesResource(commons.ApiRequester client)
      : _requester = client;

  /// Atomically updates the specified ResourcePolicy configurations.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent service name, in the format ```
  /// projects/{project_number}/services/{service_id} ``` The parent collection
  /// in the `name` field of any resource being updated must match this field,
  /// or the entire batch fails.
  /// Value must have pattern `^projects/\[^/\]+/services/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a
  /// [GoogleFirebaseAppcheckV1betaBatchUpdateResourcePoliciesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleFirebaseAppcheckV1betaBatchUpdateResourcePoliciesResponse>
      batchUpdate(
    GoogleFirebaseAppcheckV1betaBatchUpdateResourcePoliciesRequest request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1beta/' +
        core.Uri.encodeFull('$parent') +
        '/resourcePolicies:batchUpdate';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleFirebaseAppcheckV1betaBatchUpdateResourcePoliciesResponse
        .fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Creates the specified ResourcePolicy configuration.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The relative resource name of the parent Service in
  /// which the specified ResourcePolicy will be created, in the format: ```
  /// projects/{project_number}/services/{service_id} ``` Note that the
  /// `service_id` element must be a supported service ID. Currently, the
  /// following service IDs are supported: * `oauth2.googleapis.com` (Google
  /// Identity for iOS)
  /// Value must have pattern `^projects/\[^/\]+/services/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleFirebaseAppcheckV1betaResourcePolicy].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleFirebaseAppcheckV1betaResourcePolicy> create(
    GoogleFirebaseAppcheckV1betaResourcePolicy request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1beta/' + core.Uri.encodeFull('$parent') + '/resourcePolicies';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleFirebaseAppcheckV1betaResourcePolicy.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Deletes the specified ResourcePolicy configuration.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The relative resource name of the ResourcePolicy to
  /// delete, in the format: ```
  /// projects/{project_number}/services/{service_id}/resourcePolicies/{resource_policy_id}
  /// ```
  /// Value must have pattern
  /// `^projects/\[^/\]+/services/\[^/\]+/resourcePolicies/\[^/\]+$`.
  ///
  /// [etag] - The checksum to be validated against the current ResourcePolicy,
  /// to ensure the client has an up-to-date value before proceeding. This
  /// checksum is computed by the server based on the values of fields in the
  /// ResourcePolicy object, and can be obtained from the ResourcePolicy object
  /// received from the last CreateResourcePolicy, GetResourcePolicy,
  /// ListResourcePolicies, UpdateResourcePolicy, or BatchUpdateResourcePolicies
  /// call. This etag is strongly validated as defined by RFC 7232.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleProtobufEmpty].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleProtobufEmpty> delete(
    core.String name, {
    core.String? etag,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (etag != null) 'etag': [etag],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1beta/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return GoogleProtobufEmpty.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Gets the requested ResourcePolicy configuration.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The relative resource name of the ResourcePolicy to
  /// retrieve, in the format: ```
  /// projects/{project_number}/services/{service_id}/resourcePolicies/{resource_policy_id}
  /// ``` Note that the `service_id` element must be a supported service ID.
  /// Currently, the following service IDs are supported: *
  /// `oauth2.googleapis.com` (Google Identity for iOS)
  /// Value must have pattern
  /// `^projects/\[^/\]+/services/\[^/\]+/resourcePolicies/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleFirebaseAppcheckV1betaResourcePolicy].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleFirebaseAppcheckV1betaResourcePolicy> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1beta/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleFirebaseAppcheckV1betaResourcePolicy.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists all ResourcePolicy configurations for the specified project and
  /// service.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The relative resource name of the parent Service for
  /// which to list each associated ResourcePolicy, in the format: ```
  /// projects/{project_number}/services/{service_id} ``` Note that the
  /// `service_id` element must be a supported service ID. Currently, the
  /// following service IDs are supported: * `oauth2.googleapis.com` (Google
  /// Identity for iOS)
  /// Value must have pattern `^projects/\[^/\]+/services/\[^/\]+$`.
  ///
  /// [filter] - Optional. Filters the results by the specified rule. For the
  /// exact syntax of this field, please consult the
  /// \[AIP-160\](https://google.aip.dev/160) standard. Currently, since the
  /// only fields in the ResourcePolicy resource are the scalar fields
  /// `enforcement_mode` and `target_resource`, this method does not support the
  /// traversal operator (`.`) or the has operator (`:`). Here are some examples
  /// of valid filters: * `enforcement_mode = ENFORCED` * `target_resource =
  /// "//oauth2.googleapis.com/projects/12345/oauthClients/"` *
  /// `enforcement_mode = ENFORCED AND target_resource =
  /// "//oauth2.googleapis.com/projects/12345/oauthClients/"`
  ///
  /// [pageSize] - The maximum number of ResourcePolicy objects to return in the
  /// response. The server may return fewer than this at its own discretion. If
  /// no value is specified (or too large a value is specified), the server will
  /// impose its own limit.
  ///
  /// [pageToken] - Token returned from a previous call to ListResourcePolicies
  /// indicating where in the set of ResourcePolicy objects to resume listing.
  /// Provide this to retrieve the subsequent page. When paginating, all other
  /// parameters provided to ListResourcePolicies must match the call that
  /// provided the page token; if they do not match, the result is undefined.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a
  /// [GoogleFirebaseAppcheckV1betaListResourcePoliciesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleFirebaseAppcheckV1betaListResourcePoliciesResponse> list(
    core.String parent, {
    core.String? filter,
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (filter != null) 'filter': [filter],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1beta/' + core.Uri.encodeFull('$parent') + '/resourcePolicies';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleFirebaseAppcheckV1betaListResourcePoliciesResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Updates the specified ResourcePolicy configuration.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Identifier. The relative name of the resource policy
  /// object, in the format: ```
  /// projects/{project_number}/services/{service_id}/resourcePolicies/{resource_policy_id}
  /// ``` Note that the `service_id` element must be a supported service ID.
  /// Currently, the following service IDs are supported: *
  /// `oauth2.googleapis.com` (Google Identity for iOS) `resource_policy_id` is
  /// a system-generated UID.
  /// Value must have pattern
  /// `^projects/\[^/\]+/services/\[^/\]+/resourcePolicies/\[^/\]+$`.
  ///
  /// [updateMask] - Required. A comma-separated list of names of fields in the
  /// ResourcePolicy to update. Example: `enforcement_mode`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleFirebaseAppcheckV1betaResourcePolicy].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleFirebaseAppcheckV1betaResourcePolicy> patch(
    GoogleFirebaseAppcheckV1betaResourcePolicy request,
    core.String name, {
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (updateMask != null) 'updateMask': [updateMask],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1beta/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleFirebaseAppcheckV1betaResourcePolicy.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

/// An app's App Attest configuration object.
///
/// This configuration controls certain properties of the `AppCheckToken`
/// returned by ExchangeAppAttestAttestation and ExchangeAppAttestAssertion,
/// such as its ttl. Note that the Team ID registered with your app is used as
/// part of the validation process. Please register it via the Firebase Console
/// or programmatically via the
/// [Firebase Management Service](https://firebase.google.com/docs/projects/api/reference/rest/v1beta1/projects.iosApps/patch).
class GoogleFirebaseAppcheckV1betaAppAttestConfig {
  /// The relative resource name of the App Attest configuration object, in the
  /// format: ``` projects/{project_number}/apps/{app_id}/appAttestConfig ```
  ///
  /// Required.
  core.String? name;

  /// Specifies the duration for which App Check tokens exchanged from App
  /// Attest artifacts will be valid.
  ///
  /// If unset, a default value of 1 hour is assumed. Must be between 30 minutes
  /// and 7 days, inclusive.
  core.String? tokenTtl;

  GoogleFirebaseAppcheckV1betaAppAttestConfig({
    this.name,
    this.tokenTtl,
  });

  GoogleFirebaseAppcheckV1betaAppAttestConfig.fromJson(core.Map json_)
      : this(
          name: json_['name'] as core.String?,
          tokenTtl: json_['tokenTtl'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (name != null) 'name': name!,
        if (tokenTtl != null) 'tokenTtl': tokenTtl!,
      };
}

/// Encapsulates an *App Check token*, which are used to access backend services
/// protected by App Check.
class GoogleFirebaseAppcheckV1betaAppCheckToken {
  /// The App Check token.
  ///
  /// App Check tokens are signed [JWTs](https://tools.ietf.org/html/rfc7519)
  /// containing claims that identify the attested app and GCP project. This
  /// token is used to access Google services protected by App Check. These
  /// tokens can also be
  /// [verified by your own custom backends](https://firebase.google.com/docs/app-check/custom-resource-backend)
  /// using the Firebase Admin SDK or third-party libraries.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  core.String? attestationToken;

  /// The App Check token.
  ///
  /// App Check tokens are signed [JWTs](https://tools.ietf.org/html/rfc7519)
  /// containing claims that identify the attested app and GCP project. This
  /// token is used to access Google services protected by App Check. These
  /// tokens can also be
  /// [verified by your own custom backends](https://firebase.google.com/docs/app-check/custom-resource-backend)
  /// using the Firebase Admin SDK or third-party libraries.
  core.String? token;

  /// The duration from the time this token is minted until its expiration.
  ///
  /// This field is intended to ease client-side token management, since the
  /// client may have clock skew, but is still able to accurately measure a
  /// duration.
  core.String? ttl;

  GoogleFirebaseAppcheckV1betaAppCheckToken({
    this.attestationToken,
    this.token,
    this.ttl,
  });

  GoogleFirebaseAppcheckV1betaAppCheckToken.fromJson(core.Map json_)
      : this(
          attestationToken: json_['attestationToken'] as core.String?,
          token: json_['token'] as core.String?,
          ttl: json_['ttl'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (attestationToken != null) 'attestationToken': attestationToken!,
        if (token != null) 'token': token!,
        if (ttl != null) 'ttl': ttl!,
      };
}

/// Encapsulates an *App Check token*, which are used to access Firebase
/// services protected by App Check.
class GoogleFirebaseAppcheckV1betaAttestationTokenResponse {
  /// An App Check token.
  ///
  /// App Check tokens are signed [JWTs](https://tools.ietf.org/html/rfc7519)
  /// containing claims that identify the attested app and Firebase project.
  /// This token is used to access Firebase services protected by App Check.
  core.String? attestationToken;

  /// The duration from the time this token is minted until its expiration.
  ///
  /// This field is intended to ease client-side token management, since the
  /// client may have clock skew, but is still able to accurately measure a
  /// duration.
  core.String? ttl;

  GoogleFirebaseAppcheckV1betaAttestationTokenResponse({
    this.attestationToken,
    this.ttl,
  });

  GoogleFirebaseAppcheckV1betaAttestationTokenResponse.fromJson(core.Map json_)
      : this(
          attestationToken: json_['attestationToken'] as core.String?,
          ttl: json_['ttl'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (attestationToken != null) 'attestationToken': attestationToken!,
        if (ttl != null) 'ttl': ttl!,
      };
}

/// Response message for the BatchGetAppAttestConfigs method.
class GoogleFirebaseAppcheckV1betaBatchGetAppAttestConfigsResponse {
  /// AppAttestConfigs retrieved.
  core.List<GoogleFirebaseAppcheckV1betaAppAttestConfig>? configs;

  GoogleFirebaseAppcheckV1betaBatchGetAppAttestConfigsResponse({
    this.configs,
  });

  GoogleFirebaseAppcheckV1betaBatchGetAppAttestConfigsResponse.fromJson(
      core.Map json_)
      : this(
          configs: (json_['configs'] as core.List?)
              ?.map((value) =>
                  GoogleFirebaseAppcheckV1betaAppAttestConfig.fromJson(
                      value as core.Map<core.String, core.dynamic>))
              .toList(),
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (configs != null) 'configs': configs!,
      };
}

/// Response message for the BatchGetDeviceCheckConfigs method.
class GoogleFirebaseAppcheckV1betaBatchGetDeviceCheckConfigsResponse {
  /// DeviceCheckConfigs retrieved.
  core.List<GoogleFirebaseAppcheckV1betaDeviceCheckConfig>? configs;

  GoogleFirebaseAppcheckV1betaBatchGetDeviceCheckConfigsResponse({
    this.configs,
  });

  GoogleFirebaseAppcheckV1betaBatchGetDeviceCheckConfigsResponse.fromJson(
      core.Map json_)
      : this(
          configs: (json_['configs'] as core.List?)
              ?.map((value) =>
                  GoogleFirebaseAppcheckV1betaDeviceCheckConfig.fromJson(
                      value as core.Map<core.String, core.dynamic>))
              .toList(),
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (configs != null) 'configs': configs!,
      };
}

/// Response message for the BatchGetPlayIntegrityConfigs method.
class GoogleFirebaseAppcheckV1betaBatchGetPlayIntegrityConfigsResponse {
  /// PlayIntegrityConfigs retrieved.
  core.List<GoogleFirebaseAppcheckV1betaPlayIntegrityConfig>? configs;

  GoogleFirebaseAppcheckV1betaBatchGetPlayIntegrityConfigsResponse({
    this.configs,
  });

  GoogleFirebaseAppcheckV1betaBatchGetPlayIntegrityConfigsResponse.fromJson(
      core.Map json_)
      : this(
          configs: (json_['configs'] as core.List?)
              ?.map((value) =>
                  GoogleFirebaseAppcheckV1betaPlayIntegrityConfig.fromJson(
                      value as core.Map<core.String, core.dynamic>))
              .toList(),
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (configs != null) 'configs': configs!,
      };
}

/// Response message for the BatchGetRecaptchaConfigs method.
class GoogleFirebaseAppcheckV1betaBatchGetRecaptchaConfigsResponse {
  /// RecaptchaConfigs retrieved.
  core.List<GoogleFirebaseAppcheckV1betaRecaptchaConfig>? configs;

  GoogleFirebaseAppcheckV1betaBatchGetRecaptchaConfigsResponse({
    this.configs,
  });

  GoogleFirebaseAppcheckV1betaBatchGetRecaptchaConfigsResponse.fromJson(
      core.Map json_)
      : this(
          configs: (json_['configs'] as core.List?)
              ?.map((value) =>
                  GoogleFirebaseAppcheckV1betaRecaptchaConfig.fromJson(
                      value as core.Map<core.String, core.dynamic>))
              .toList(),
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (configs != null) 'configs': configs!,
      };
}

/// Response message for the BatchGetRecaptchaEnterpriseConfigs method.
class GoogleFirebaseAppcheckV1betaBatchGetRecaptchaEnterpriseConfigsResponse {
  /// RecaptchaEnterpriseConfigs retrieved.
  core.List<GoogleFirebaseAppcheckV1betaRecaptchaEnterpriseConfig>? configs;

  GoogleFirebaseAppcheckV1betaBatchGetRecaptchaEnterpriseConfigsResponse({
    this.configs,
  });

  GoogleFirebaseAppcheckV1betaBatchGetRecaptchaEnterpriseConfigsResponse.fromJson(
      core.Map json_)
      : this(
          configs: (json_['configs'] as core.List?)
              ?.map((value) =>
                  GoogleFirebaseAppcheckV1betaRecaptchaEnterpriseConfig
                      .fromJson(value as core.Map<core.String, core.dynamic>))
              .toList(),
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (configs != null) 'configs': configs!,
      };
}

/// Response message for the BatchGetRecaptchaV3Configs method.
class GoogleFirebaseAppcheckV1betaBatchGetRecaptchaV3ConfigsResponse {
  /// RecaptchaV3Configs retrieved.
  core.List<GoogleFirebaseAppcheckV1betaRecaptchaV3Config>? configs;

  GoogleFirebaseAppcheckV1betaBatchGetRecaptchaV3ConfigsResponse({
    this.configs,
  });

  GoogleFirebaseAppcheckV1betaBatchGetRecaptchaV3ConfigsResponse.fromJson(
      core.Map json_)
      : this(
          configs: (json_['configs'] as core.List?)
              ?.map((value) =>
                  GoogleFirebaseAppcheckV1betaRecaptchaV3Config.fromJson(
                      value as core.Map<core.String, core.dynamic>))
              .toList(),
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (configs != null) 'configs': configs!,
      };
}

/// Response message for the BatchGetSafetyNetConfigs method.
class GoogleFirebaseAppcheckV1betaBatchGetSafetyNetConfigsResponse {
  /// SafetyNetConfigs retrieved.
  core.List<GoogleFirebaseAppcheckV1betaSafetyNetConfig>? configs;

  GoogleFirebaseAppcheckV1betaBatchGetSafetyNetConfigsResponse({
    this.configs,
  });

  GoogleFirebaseAppcheckV1betaBatchGetSafetyNetConfigsResponse.fromJson(
      core.Map json_)
      : this(
          configs: (json_['configs'] as core.List?)
              ?.map((value) =>
                  GoogleFirebaseAppcheckV1betaSafetyNetConfig.fromJson(
                      value as core.Map<core.String, core.dynamic>))
              .toList(),
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (configs != null) 'configs': configs!,
      };
}

/// Request message for the BatchUpdateResourcePolicies method.
class GoogleFirebaseAppcheckV1betaBatchUpdateResourcePoliciesRequest {
  /// The request messages specifying the ResourcePolicy objects to update.
  ///
  /// A maximum of 100 objects can be updated in a batch.
  ///
  /// Required.
  core.List<GoogleFirebaseAppcheckV1betaUpdateResourcePolicyRequest>? requests;

  /// A comma-separated list of names of fields in the ResourcePolicy objects to
  /// update.
  ///
  /// Example: `enforcement_mode`. If this field is present, the `update_mask`
  /// field in the UpdateResourcePolicyRequest messages must all match this
  /// field, or the entire batch fails and no updates will be committed.
  ///
  /// Optional.
  core.String? updateMask;

  GoogleFirebaseAppcheckV1betaBatchUpdateResourcePoliciesRequest({
    this.requests,
    this.updateMask,
  });

  GoogleFirebaseAppcheckV1betaBatchUpdateResourcePoliciesRequest.fromJson(
      core.Map json_)
      : this(
          requests: (json_['requests'] as core.List?)
              ?.map((value) =>
                  GoogleFirebaseAppcheckV1betaUpdateResourcePolicyRequest
                      .fromJson(value as core.Map<core.String, core.dynamic>))
              .toList(),
          updateMask: json_['updateMask'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (requests != null) 'requests': requests!,
        if (updateMask != null) 'updateMask': updateMask!,
      };
}

/// Response message for the BatchUpdateResourcePolicies method.
class GoogleFirebaseAppcheckV1betaBatchUpdateResourcePoliciesResponse {
  /// ResourcePolicy objects after the updates have been applied.
  core.List<GoogleFirebaseAppcheckV1betaResourcePolicy>? resourcePolicies;

  GoogleFirebaseAppcheckV1betaBatchUpdateResourcePoliciesResponse({
    this.resourcePolicies,
  });

  GoogleFirebaseAppcheckV1betaBatchUpdateResourcePoliciesResponse.fromJson(
      core.Map json_)
      : this(
          resourcePolicies: (json_['resourcePolicies'] as core.List?)
              ?.map((value) =>
                  GoogleFirebaseAppcheckV1betaResourcePolicy.fromJson(
                      value as core.Map<core.String, core.dynamic>))
              .toList(),
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (resourcePolicies != null) 'resourcePolicies': resourcePolicies!,
      };
}

/// Request message for the BatchUpdateServices method.
class GoogleFirebaseAppcheckV1betaBatchUpdateServicesRequest {
  /// The request messages specifying the Services to update.
  ///
  /// A maximum of 100 objects can be updated in a batch.
  ///
  /// Required.
  core.List<GoogleFirebaseAppcheckV1betaUpdateServiceRequest>? requests;

  /// A comma-separated list of names of fields in the Services to update.
  ///
  /// Example: `display_name`. If the `update_mask` field is set in both this
  /// request and any of the UpdateServiceRequest messages, they must match or
  /// the entire batch fails and no updates will be committed.
  ///
  /// Optional.
  core.String? updateMask;

  GoogleFirebaseAppcheckV1betaBatchUpdateServicesRequest({
    this.requests,
    this.updateMask,
  });

  GoogleFirebaseAppcheckV1betaBatchUpdateServicesRequest.fromJson(
      core.Map json_)
      : this(
          requests: (json_['requests'] as core.List?)
              ?.map((value) =>
                  GoogleFirebaseAppcheckV1betaUpdateServiceRequest.fromJson(
                      value as core.Map<core.String, core.dynamic>))
              .toList(),
          updateMask: json_['updateMask'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (requests != null) 'requests': requests!,
        if (updateMask != null) 'updateMask': updateMask!,
      };
}

/// Response message for the BatchUpdateServices method.
class GoogleFirebaseAppcheckV1betaBatchUpdateServicesResponse {
  /// Service objects after the updates have been applied.
  core.List<GoogleFirebaseAppcheckV1betaService>? services;

  GoogleFirebaseAppcheckV1betaBatchUpdateServicesResponse({
    this.services,
  });

  GoogleFirebaseAppcheckV1betaBatchUpdateServicesResponse.fromJson(
      core.Map json_)
      : this(
          services: (json_['services'] as core.List?)
              ?.map((value) => GoogleFirebaseAppcheckV1betaService.fromJson(
                  value as core.Map<core.String, core.dynamic>))
              .toList(),
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (services != null) 'services': services!,
      };
}

/// A *debug token* is a secret used during the development or integration
/// testing of an app.
///
/// It essentially allows the development or integration testing to bypass app
/// attestation while still allowing App Check to enforce protection on
/// supported production Firebase services.
class GoogleFirebaseAppcheckV1betaDebugToken {
  /// A human readable display name used to identify this debug token.
  ///
  /// Required.
  core.String? displayName;

  /// The relative resource name of the debug token, in the format: ```
  /// projects/{project_number}/apps/{app_id}/debugTokens/{debug_token_id} ```
  ///
  /// Required.
  core.String? name;

  /// Input only.
  ///
  /// Immutable. The secret token itself. Must be provided during creation, and
  /// must be a UUID4, case insensitive. This field is immutable once set, and
  /// cannot be provided during an UpdateDebugToken request. You can, however,
  /// delete this debug token using DeleteDebugToken to revoke it. For security
  /// reasons, this field will never be populated in any response.
  ///
  /// Required.
  core.String? token;

  /// Timestamp when this debug token was most recently updated.
  ///
  /// Output only.
  core.String? updateTime;

  GoogleFirebaseAppcheckV1betaDebugToken({
    this.displayName,
    this.name,
    this.token,
    this.updateTime,
  });

  GoogleFirebaseAppcheckV1betaDebugToken.fromJson(core.Map json_)
      : this(
          displayName: json_['displayName'] as core.String?,
          name: json_['name'] as core.String?,
          token: json_['token'] as core.String?,
          updateTime: json_['updateTime'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (displayName != null) 'displayName': displayName!,
        if (name != null) 'name': name!,
        if (token != null) 'token': token!,
        if (updateTime != null) 'updateTime': updateTime!,
      };
}

/// An app's DeviceCheck configuration object.
///
/// This configuration is used by ExchangeDeviceCheckToken to validate device
/// tokens issued to apps by DeviceCheck. It also controls certain properties of
/// the returned `AppCheckToken`, such as its ttl. Note that the Team ID
/// registered with your app is used as part of the validation process. Please
/// register it via the Firebase Console or programmatically via the
/// [Firebase Management Service](https://firebase.google.com/docs/projects/api/reference/rest/v1beta1/projects.iosApps/patch).
class GoogleFirebaseAppcheckV1betaDeviceCheckConfig {
  /// The key identifier of a private key enabled with DeviceCheck, created in
  /// your Apple Developer account.
  ///
  /// Required.
  core.String? keyId;

  /// The relative resource name of the DeviceCheck configuration object, in the
  /// format: ``` projects/{project_number}/apps/{app_id}/deviceCheckConfig ```
  ///
  /// Required.
  core.String? name;

  /// Input only.
  ///
  /// The contents of the private key (`.p8`) file associated with the key
  /// specified by `key_id`. For security reasons, this field will never be
  /// populated in any response.
  ///
  /// Required.
  core.String? privateKey;

  /// Whether the `private_key` field was previously set.
  ///
  /// Since we will never return the `private_key` field, this field is the only
  /// way to find out whether it was previously set.
  ///
  /// Output only.
  core.bool? privateKeySet;

  /// Specifies the duration for which App Check tokens exchanged from
  /// DeviceCheck tokens will be valid.
  ///
  /// If unset, a default value of 1 hour is assumed. Must be between 30 minutes
  /// and 7 days, inclusive.
  core.String? tokenTtl;

  GoogleFirebaseAppcheckV1betaDeviceCheckConfig({
    this.keyId,
    this.name,
    this.privateKey,
    this.privateKeySet,
    this.tokenTtl,
  });

  GoogleFirebaseAppcheckV1betaDeviceCheckConfig.fromJson(core.Map json_)
      : this(
          keyId: json_['keyId'] as core.String?,
          name: json_['name'] as core.String?,
          privateKey: json_['privateKey'] as core.String?,
          privateKeySet: json_['privateKeySet'] as core.bool?,
          tokenTtl: json_['tokenTtl'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (keyId != null) 'keyId': keyId!,
        if (name != null) 'name': name!,
        if (privateKey != null) 'privateKey': privateKey!,
        if (privateKeySet != null) 'privateKeySet': privateKeySet!,
        if (tokenTtl != null) 'tokenTtl': tokenTtl!,
      };
}

/// Request message for the ExchangeAppAttestAssertion method.
class GoogleFirebaseAppcheckV1betaExchangeAppAttestAssertionRequest {
  /// The artifact returned by a previous call to ExchangeAppAttestAttestation.
  ///
  /// Required.
  core.String? artifact;
  core.List<core.int> get artifactAsBytes => convert.base64.decode(artifact!);

  set artifactAsBytes(core.List<core.int> bytes_) {
    artifact =
        convert.base64.encode(bytes_).replaceAll('/', '_').replaceAll('+', '-');
  }

  /// The CBOR-encoded assertion returned by the client-side App Attest API.
  ///
  /// Required.
  core.String? assertion;
  core.List<core.int> get assertionAsBytes => convert.base64.decode(assertion!);

  set assertionAsBytes(core.List<core.int> bytes_) {
    assertion =
        convert.base64.encode(bytes_).replaceAll('/', '_').replaceAll('+', '-');
  }

  /// A one-time challenge returned by an immediately prior call to
  /// GenerateAppAttestChallenge.
  ///
  /// Required.
  core.String? challenge;
  core.List<core.int> get challengeAsBytes => convert.base64.decode(challenge!);

  set challengeAsBytes(core.List<core.int> bytes_) {
    challenge =
        convert.base64.encode(bytes_).replaceAll('/', '_').replaceAll('+', '-');
  }

  /// Specifies whether this attestation is for use in a *limited use* (`true`)
  /// or *session based* (`false`) context.
  ///
  /// To enable this attestation to be used with the *replay protection*
  /// feature, set this to `true`. The default value is `false`.
  core.bool? limitedUse;

  GoogleFirebaseAppcheckV1betaExchangeAppAttestAssertionRequest({
    this.artifact,
    this.assertion,
    this.challenge,
    this.limitedUse,
  });

  GoogleFirebaseAppcheckV1betaExchangeAppAttestAssertionRequest.fromJson(
      core.Map json_)
      : this(
          artifact: json_['artifact'] as core.String?,
          assertion: json_['assertion'] as core.String?,
          challenge: json_['challenge'] as core.String?,
          limitedUse: json_['limitedUse'] as core.bool?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (artifact != null) 'artifact': artifact!,
        if (assertion != null) 'assertion': assertion!,
        if (challenge != null) 'challenge': challenge!,
        if (limitedUse != null) 'limitedUse': limitedUse!,
      };
}

/// Request message for the ExchangeAppAttestAttestation method.
class GoogleFirebaseAppcheckV1betaExchangeAppAttestAttestationRequest {
  /// The App Attest statement returned by the client-side App Attest API.
  ///
  /// This is a base64url encoded CBOR object in the JSON response.
  ///
  /// Required.
  core.String? attestationStatement;
  core.List<core.int> get attestationStatementAsBytes =>
      convert.base64.decode(attestationStatement!);

  set attestationStatementAsBytes(core.List<core.int> bytes_) {
    attestationStatement =
        convert.base64.encode(bytes_).replaceAll('/', '_').replaceAll('+', '-');
  }

  /// A one-time challenge returned by an immediately prior call to
  /// GenerateAppAttestChallenge.
  ///
  /// Required.
  core.String? challenge;
  core.List<core.int> get challengeAsBytes => convert.base64.decode(challenge!);

  set challengeAsBytes(core.List<core.int> bytes_) {
    challenge =
        convert.base64.encode(bytes_).replaceAll('/', '_').replaceAll('+', '-');
  }

  /// The key ID generated by App Attest for the client app.
  ///
  /// Required.
  core.String? keyId;
  core.List<core.int> get keyIdAsBytes => convert.base64.decode(keyId!);

  set keyIdAsBytes(core.List<core.int> bytes_) {
    keyId =
        convert.base64.encode(bytes_).replaceAll('/', '_').replaceAll('+', '-');
  }

  /// Specifies whether this attestation is for use in a *limited use* (`true`)
  /// or *session based* (`false`) context.
  ///
  /// To enable this attestation to be used with the *replay protection*
  /// feature, set this to `true`. The default value is `false`.
  core.bool? limitedUse;

  GoogleFirebaseAppcheckV1betaExchangeAppAttestAttestationRequest({
    this.attestationStatement,
    this.challenge,
    this.keyId,
    this.limitedUse,
  });

  GoogleFirebaseAppcheckV1betaExchangeAppAttestAttestationRequest.fromJson(
      core.Map json_)
      : this(
          attestationStatement: json_['attestationStatement'] as core.String?,
          challenge: json_['challenge'] as core.String?,
          keyId: json_['keyId'] as core.String?,
          limitedUse: json_['limitedUse'] as core.bool?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (attestationStatement != null)
          'attestationStatement': attestationStatement!,
        if (challenge != null) 'challenge': challenge!,
        if (keyId != null) 'keyId': keyId!,
        if (limitedUse != null) 'limitedUse': limitedUse!,
      };
}

/// Response message for the ExchangeAppAttestAttestation method.
class GoogleFirebaseAppcheckV1betaExchangeAppAttestAttestationResponse {
  /// Encapsulates an App Check token.
  GoogleFirebaseAppcheckV1betaAppCheckToken? appCheckToken;

  /// An artifact that can be used in future calls to
  /// ExchangeAppAttestAssertion.
  core.String? artifact;
  core.List<core.int> get artifactAsBytes => convert.base64.decode(artifact!);

  set artifactAsBytes(core.List<core.int> bytes_) {
    artifact =
        convert.base64.encode(bytes_).replaceAll('/', '_').replaceAll('+', '-');
  }

  /// Encapsulates an App Check token.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  GoogleFirebaseAppcheckV1betaAttestationTokenResponse? attestationToken;

  GoogleFirebaseAppcheckV1betaExchangeAppAttestAttestationResponse({
    this.appCheckToken,
    this.artifact,
    this.attestationToken,
  });

  GoogleFirebaseAppcheckV1betaExchangeAppAttestAttestationResponse.fromJson(
      core.Map json_)
      : this(
          appCheckToken: json_.containsKey('appCheckToken')
              ? GoogleFirebaseAppcheckV1betaAppCheckToken.fromJson(
                  json_['appCheckToken'] as core.Map<core.String, core.dynamic>)
              : null,
          artifact: json_['artifact'] as core.String?,
          attestationToken: json_.containsKey('attestationToken')
              ? GoogleFirebaseAppcheckV1betaAttestationTokenResponse.fromJson(
                  json_['attestationToken']
                      as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (appCheckToken != null) 'appCheckToken': appCheckToken!,
        if (artifact != null) 'artifact': artifact!,
        if (attestationToken != null) 'attestationToken': attestationToken!,
      };
}

/// Request message for the ExchangeCustomToken method.
class GoogleFirebaseAppcheckV1betaExchangeCustomTokenRequest {
  /// A custom token signed using your project's Admin SDK service account
  /// credentials.
  ///
  /// Required.
  core.String? customToken;

  /// Specifies whether this attestation is for use in a *limited use* (`true`)
  /// or *session based* (`false`) context.
  ///
  /// To enable this attestation to be used with the *replay protection*
  /// feature, set this to `true`. The default value is `false`.
  core.bool? limitedUse;

  GoogleFirebaseAppcheckV1betaExchangeCustomTokenRequest({
    this.customToken,
    this.limitedUse,
  });

  GoogleFirebaseAppcheckV1betaExchangeCustomTokenRequest.fromJson(
      core.Map json_)
      : this(
          customToken: json_['customToken'] as core.String?,
          limitedUse: json_['limitedUse'] as core.bool?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (customToken != null) 'customToken': customToken!,
        if (limitedUse != null) 'limitedUse': limitedUse!,
      };
}

/// Request message for the ExchangeDebugToken method.
class GoogleFirebaseAppcheckV1betaExchangeDebugTokenRequest {
  /// A debug token secret.
  ///
  /// This string must match a debug token secret previously created using
  /// CreateDebugToken.
  ///
  /// Required.
  core.String? debugToken;

  /// Specifies whether this attestation is for use in a *limited use* (`true`)
  /// or *session based* (`false`) context.
  ///
  /// To enable this attestation to be used with the *replay protection*
  /// feature, set this to `true`. The default value is `false`.
  core.bool? limitedUse;

  GoogleFirebaseAppcheckV1betaExchangeDebugTokenRequest({
    this.debugToken,
    this.limitedUse,
  });

  GoogleFirebaseAppcheckV1betaExchangeDebugTokenRequest.fromJson(core.Map json_)
      : this(
          debugToken: json_['debugToken'] as core.String?,
          limitedUse: json_['limitedUse'] as core.bool?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (debugToken != null) 'debugToken': debugToken!,
        if (limitedUse != null) 'limitedUse': limitedUse!,
      };
}

/// Request message for the ExchangeDeviceCheckToken method.
class GoogleFirebaseAppcheckV1betaExchangeDeviceCheckTokenRequest {
  /// The `device_token` as returned by Apple's client-side
  /// [DeviceCheck API](https://developer.apple.com/documentation/devicecheck/dcdevice).
  ///
  /// This is the base64 encoded `Data` (Swift) or `NSData` (ObjC) object.
  ///
  /// Required.
  core.String? deviceToken;

  /// Specifies whether this attestation is for use in a *limited use* (`true`)
  /// or *session based* (`false`) context.
  ///
  /// To enable this attestation to be used with the *replay protection*
  /// feature, set this to `true`. The default value is `false`.
  core.bool? limitedUse;

  GoogleFirebaseAppcheckV1betaExchangeDeviceCheckTokenRequest({
    this.deviceToken,
    this.limitedUse,
  });

  GoogleFirebaseAppcheckV1betaExchangeDeviceCheckTokenRequest.fromJson(
      core.Map json_)
      : this(
          deviceToken: json_['deviceToken'] as core.String?,
          limitedUse: json_['limitedUse'] as core.bool?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (deviceToken != null) 'deviceToken': deviceToken!,
        if (limitedUse != null) 'limitedUse': limitedUse!,
      };
}

/// Request message for the ExchangePlayIntegrityToken method.
class GoogleFirebaseAppcheckV1betaExchangePlayIntegrityTokenRequest {
  /// Specifies whether this attestation is for use in a *limited use* (`true`)
  /// or *session based* (`false`) context.
  ///
  /// To enable this attestation to be used with the *replay protection*
  /// feature, set this to `true`. The default value is `false`.
  core.bool? limitedUse;

  /// The
  /// [integrity verdict response token from Play Integrity](https://developer.android.com/google/play/integrity/verdict#decrypt-verify)
  /// issued to your app.
  ///
  /// Required.
  core.String? playIntegrityToken;

  GoogleFirebaseAppcheckV1betaExchangePlayIntegrityTokenRequest({
    this.limitedUse,
    this.playIntegrityToken,
  });

  GoogleFirebaseAppcheckV1betaExchangePlayIntegrityTokenRequest.fromJson(
      core.Map json_)
      : this(
          limitedUse: json_['limitedUse'] as core.bool?,
          playIntegrityToken: json_['playIntegrityToken'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (limitedUse != null) 'limitedUse': limitedUse!,
        if (playIntegrityToken != null)
          'playIntegrityToken': playIntegrityToken!,
      };
}

/// Request message for the ExchangeRecaptchaEnterpriseToken method.
class GoogleFirebaseAppcheckV1betaExchangeRecaptchaEnterpriseTokenRequest {
  /// Specifies whether this attestation is for use in a *limited use* (`true`)
  /// or *session based* (`false`) context.
  ///
  /// To enable this attestation to be used with the *replay protection*
  /// feature, set this to `true`. The default value is `false`.
  core.bool? limitedUse;

  /// The reCAPTCHA token as returned by the
  /// [reCAPTCHA Enterprise JavaScript API](https://cloud.google.com/recaptcha-enterprise/docs/instrument-web-pages).
  ///
  /// Required.
  core.String? recaptchaEnterpriseToken;

  GoogleFirebaseAppcheckV1betaExchangeRecaptchaEnterpriseTokenRequest({
    this.limitedUse,
    this.recaptchaEnterpriseToken,
  });

  GoogleFirebaseAppcheckV1betaExchangeRecaptchaEnterpriseTokenRequest.fromJson(
      core.Map json_)
      : this(
          limitedUse: json_['limitedUse'] as core.bool?,
          recaptchaEnterpriseToken:
              json_['recaptchaEnterpriseToken'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (limitedUse != null) 'limitedUse': limitedUse!,
        if (recaptchaEnterpriseToken != null)
          'recaptchaEnterpriseToken': recaptchaEnterpriseToken!,
      };
}

/// Request message for the ExchangeRecaptchaToken method.
class GoogleFirebaseAppcheckV1betaExchangeRecaptchaTokenRequest {
  /// The reCAPTCHA token as returned by the
  /// [reCAPTCHA v3 JavaScript API](https://developers.google.com/recaptcha/docs/v3).
  ///
  /// Required.
  core.String? recaptchaToken;

  GoogleFirebaseAppcheckV1betaExchangeRecaptchaTokenRequest({
    this.recaptchaToken,
  });

  GoogleFirebaseAppcheckV1betaExchangeRecaptchaTokenRequest.fromJson(
      core.Map json_)
      : this(
          recaptchaToken: json_['recaptchaToken'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (recaptchaToken != null) 'recaptchaToken': recaptchaToken!,
      };
}

/// Request message for the ExchangeRecaptchaV3Token method.
class GoogleFirebaseAppcheckV1betaExchangeRecaptchaV3TokenRequest {
  /// Specifies whether this attestation is for use in a *limited use* (`true`)
  /// or *session based* (`false`) context.
  ///
  /// To enable this attestation to be used with the *replay protection*
  /// feature, set this to `true`. The default value is `false`.
  core.bool? limitedUse;

  /// The reCAPTCHA token as returned by the
  /// [reCAPTCHA v3 JavaScript API](https://developers.google.com/recaptcha/docs/v3).
  ///
  /// Required.
  core.String? recaptchaV3Token;

  GoogleFirebaseAppcheckV1betaExchangeRecaptchaV3TokenRequest({
    this.limitedUse,
    this.recaptchaV3Token,
  });

  GoogleFirebaseAppcheckV1betaExchangeRecaptchaV3TokenRequest.fromJson(
      core.Map json_)
      : this(
          limitedUse: json_['limitedUse'] as core.bool?,
          recaptchaV3Token: json_['recaptchaV3Token'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (limitedUse != null) 'limitedUse': limitedUse!,
        if (recaptchaV3Token != null) 'recaptchaV3Token': recaptchaV3Token!,
      };
}

/// Request message for the ExchangeSafetyNetToken method.
class GoogleFirebaseAppcheckV1betaExchangeSafetyNetTokenRequest {
  /// The
  /// [SafetyNet attestation response](https://developer.android.com/training/safetynet/attestation#request-attestation-step)
  /// issued to your app.
  ///
  /// Required.
  core.String? safetyNetToken;

  GoogleFirebaseAppcheckV1betaExchangeSafetyNetTokenRequest({
    this.safetyNetToken,
  });

  GoogleFirebaseAppcheckV1betaExchangeSafetyNetTokenRequest.fromJson(
      core.Map json_)
      : this(
          safetyNetToken: json_['safetyNetToken'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (safetyNetToken != null) 'safetyNetToken': safetyNetToken!,
      };
}

/// Request message for the GenerateAppAttestChallenge method.
typedef GoogleFirebaseAppcheckV1betaGenerateAppAttestChallengeRequest = $Empty;

/// Response message for the GenerateAppAttestChallenge method.
class GoogleFirebaseAppcheckV1betaGenerateAppAttestChallengeResponse {
  /// A one-time use challenge for the client to pass to the App Attest API.
  core.String? challenge;
  core.List<core.int> get challengeAsBytes => convert.base64.decode(challenge!);

  set challengeAsBytes(core.List<core.int> bytes_) {
    challenge =
        convert.base64.encode(bytes_).replaceAll('/', '_').replaceAll('+', '-');
  }

  /// The duration from the time this challenge is minted until its expiration.
  ///
  /// This field is intended to ease client-side token management, since the
  /// client may have clock skew, but is still able to accurately measure a
  /// duration.
  core.String? ttl;

  GoogleFirebaseAppcheckV1betaGenerateAppAttestChallengeResponse({
    this.challenge,
    this.ttl,
  });

  GoogleFirebaseAppcheckV1betaGenerateAppAttestChallengeResponse.fromJson(
      core.Map json_)
      : this(
          challenge: json_['challenge'] as core.String?,
          ttl: json_['ttl'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (challenge != null) 'challenge': challenge!,
        if (ttl != null) 'ttl': ttl!,
      };
}

/// Request message for the GeneratePlayIntegrityChallenge method.
typedef GoogleFirebaseAppcheckV1betaGeneratePlayIntegrityChallengeRequest
    = $Empty;

/// Response message for the GeneratePlayIntegrityChallenge method.
class GoogleFirebaseAppcheckV1betaGeneratePlayIntegrityChallengeResponse {
  /// A one-time use
  /// [challenge](https://developer.android.com/google/play/integrity/verdict#protect-against-replay-attacks)
  /// for the client to pass to the Play Integrity API.
  core.String? challenge;

  /// The duration from the time this challenge is minted until its expiration.
  ///
  /// This field is intended to ease client-side token management, since the
  /// client may have clock skew, but is still able to accurately measure a
  /// duration.
  core.String? ttl;

  GoogleFirebaseAppcheckV1betaGeneratePlayIntegrityChallengeResponse({
    this.challenge,
    this.ttl,
  });

  GoogleFirebaseAppcheckV1betaGeneratePlayIntegrityChallengeResponse.fromJson(
      core.Map json_)
      : this(
          challenge: json_['challenge'] as core.String?,
          ttl: json_['ttl'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (challenge != null) 'challenge': challenge!,
        if (ttl != null) 'ttl': ttl!,
      };
}

/// Response message for the ListDebugTokens method.
class GoogleFirebaseAppcheckV1betaListDebugTokensResponse {
  /// The DebugTokens retrieved.
  core.List<GoogleFirebaseAppcheckV1betaDebugToken>? debugTokens;

  /// If the result list is too large to fit in a single response, then a token
  /// is returned.
  ///
  /// If the string is empty or omitted, then this response is the last page of
  /// results. This token can be used in a subsequent call to ListDebugTokens to
  /// find the next group of DebugTokens. Page tokens are short-lived and should
  /// not be persisted.
  core.String? nextPageToken;

  GoogleFirebaseAppcheckV1betaListDebugTokensResponse({
    this.debugTokens,
    this.nextPageToken,
  });

  GoogleFirebaseAppcheckV1betaListDebugTokensResponse.fromJson(core.Map json_)
      : this(
          debugTokens: (json_['debugTokens'] as core.List?)
              ?.map((value) => GoogleFirebaseAppcheckV1betaDebugToken.fromJson(
                  value as core.Map<core.String, core.dynamic>))
              .toList(),
          nextPageToken: json_['nextPageToken'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (debugTokens != null) 'debugTokens': debugTokens!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
      };
}

/// Response message for the ListResourcePolicies method.
class GoogleFirebaseAppcheckV1betaListResourcePoliciesResponse {
  /// If the result list is too large to fit in a single response, then a token
  /// is returned.
  ///
  /// If the string is empty or omitted, then this response is the last page of
  /// results. This token can be used in a subsequent call to
  /// ListResourcePolicies to find the next group of ResourcePolicy objects.
  /// Page tokens are short-lived and should not be persisted.
  core.String? nextPageToken;

  /// The ResourcePolicy objects retrieved.
  core.List<GoogleFirebaseAppcheckV1betaResourcePolicy>? resourcePolicies;

  GoogleFirebaseAppcheckV1betaListResourcePoliciesResponse({
    this.nextPageToken,
    this.resourcePolicies,
  });

  GoogleFirebaseAppcheckV1betaListResourcePoliciesResponse.fromJson(
      core.Map json_)
      : this(
          nextPageToken: json_['nextPageToken'] as core.String?,
          resourcePolicies: (json_['resourcePolicies'] as core.List?)
              ?.map((value) =>
                  GoogleFirebaseAppcheckV1betaResourcePolicy.fromJson(
                      value as core.Map<core.String, core.dynamic>))
              .toList(),
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (resourcePolicies != null) 'resourcePolicies': resourcePolicies!,
      };
}

/// Response message for the ListServices method.
class GoogleFirebaseAppcheckV1betaListServicesResponse {
  /// If the result list is too large to fit in a single response, then a token
  /// is returned.
  ///
  /// If the string is empty or omitted, then this response is the last page of
  /// results. This token can be used in a subsequent call to ListServices to
  /// find the next group of Services. Page tokens are short-lived and should
  /// not be persisted.
  core.String? nextPageToken;

  /// The Services retrieved.
  core.List<GoogleFirebaseAppcheckV1betaService>? services;

  GoogleFirebaseAppcheckV1betaListServicesResponse({
    this.nextPageToken,
    this.services,
  });

  GoogleFirebaseAppcheckV1betaListServicesResponse.fromJson(core.Map json_)
      : this(
          nextPageToken: json_['nextPageToken'] as core.String?,
          services: (json_['services'] as core.List?)
              ?.map((value) => GoogleFirebaseAppcheckV1betaService.fromJson(
                  value as core.Map<core.String, core.dynamic>))
              .toList(),
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (services != null) 'services': services!,
      };
}

/// An app's Play Integrity configuration object.
///
/// This configuration controls certain properties of the `AppCheckToken`
/// returned by ExchangePlayIntegrityToken, such as its ttl. Note that your
/// registered SHA-256 certificate fingerprints are used to validate tokens
/// issued by the Play Integrity API; please register them via the Firebase
/// Console or programmatically via the
/// [Firebase Management Service](https://firebase.google.com/docs/projects/api/reference/rest/v1beta1/projects.androidApps.sha/create).
class GoogleFirebaseAppcheckV1betaPlayIntegrityConfig {
  /// The relative resource name of the Play Integrity configuration object, in
  /// the format: ```
  /// projects/{project_number}/apps/{app_id}/playIntegrityConfig ```
  ///
  /// Required.
  core.String? name;

  /// Specifies the duration for which App Check tokens exchanged from Play
  /// Integrity tokens will be valid.
  ///
  /// If unset, a default value of 1 hour is assumed. Must be between 30 minutes
  /// and 7 days, inclusive.
  core.String? tokenTtl;

  GoogleFirebaseAppcheckV1betaPlayIntegrityConfig({
    this.name,
    this.tokenTtl,
  });

  GoogleFirebaseAppcheckV1betaPlayIntegrityConfig.fromJson(core.Map json_)
      : this(
          name: json_['name'] as core.String?,
          tokenTtl: json_['tokenTtl'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (name != null) 'name': name!,
        if (tokenTtl != null) 'tokenTtl': tokenTtl!,
      };
}

/// A JWK as specified by
/// [section 4 of RFC 7517](https://tools.ietf.org/html/rfc7517#section-4) and
/// [section 6.3.1 of RFC 7518](https://tools.ietf.org/html/rfc7518#section-6.3.1).
class GoogleFirebaseAppcheckV1betaPublicJwk {
  /// See
  /// [section 4.4 of RFC 7517](https://tools.ietf.org/html/rfc7517#section-4.4).
  core.String? alg;

  /// See
  /// [section 6.3.1.2 of RFC 7518](https://tools.ietf.org/html/rfc7518#section-6.3.1.2).
  core.String? e;

  /// See
  /// [section 4.5 of RFC 7517](https://tools.ietf.org/html/rfc7517#section-4.5).
  core.String? kid;

  /// See
  /// [section 4.1 of RFC 7517](https://tools.ietf.org/html/rfc7517#section-4.1).
  core.String? kty;

  /// See
  /// [section 6.3.1.1 of RFC 7518](https://tools.ietf.org/html/rfc7518#section-6.3.1.1).
  core.String? n;

  /// See
  /// [section 4.2 of RFC 7517](https://tools.ietf.org/html/rfc7517#section-4.2).
  core.String? use;

  GoogleFirebaseAppcheckV1betaPublicJwk({
    this.alg,
    this.e,
    this.kid,
    this.kty,
    this.n,
    this.use,
  });

  GoogleFirebaseAppcheckV1betaPublicJwk.fromJson(core.Map json_)
      : this(
          alg: json_['alg'] as core.String?,
          e: json_['e'] as core.String?,
          kid: json_['kid'] as core.String?,
          kty: json_['kty'] as core.String?,
          n: json_['n'] as core.String?,
          use: json_['use'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (alg != null) 'alg': alg!,
        if (e != null) 'e': e!,
        if (kid != null) 'kid': kid!,
        if (kty != null) 'kty': kty!,
        if (n != null) 'n': n!,
        if (use != null) 'use': use!,
      };
}

/// The currently active set of public keys that can be used to verify App Check
/// tokens.
///
/// This object is a JWK set as specified by
/// [section 5 of RFC 7517](https://tools.ietf.org/html/rfc7517#section-5). For
/// security, the response **must not** be cached for longer than six hours.
class GoogleFirebaseAppcheckV1betaPublicJwkSet {
  /// The set of public keys.
  ///
  /// See
  /// [section 5.1 of RFC 7517](https://tools.ietf.org/html/rfc7517#section-5).
  core.List<GoogleFirebaseAppcheckV1betaPublicJwk>? keys;

  GoogleFirebaseAppcheckV1betaPublicJwkSet({
    this.keys,
  });

  GoogleFirebaseAppcheckV1betaPublicJwkSet.fromJson(core.Map json_)
      : this(
          keys: (json_['keys'] as core.List?)
              ?.map((value) => GoogleFirebaseAppcheckV1betaPublicJwk.fromJson(
                  value as core.Map<core.String, core.dynamic>))
              .toList(),
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (keys != null) 'keys': keys!,
      };
}

/// An app's reCAPTCHA v3 configuration object.
///
/// This configuration is used by ExchangeRecaptchaToken to validate reCAPTCHA
/// tokens issued to apps by reCAPTCHA v3. It also controls certain properties
/// of the returned `AppCheckToken`, such as its ttl.
class GoogleFirebaseAppcheckV1betaRecaptchaConfig {
  /// The relative resource name of the reCAPTCHA v3 configuration object, in
  /// the format: ``` projects/{project_number}/apps/{app_id}/recaptchaConfig
  /// ```
  ///
  /// Required.
  core.String? name;

  /// Input only.
  ///
  /// The site secret used to identify your service for reCAPTCHA v3
  /// verification. For security reasons, this field will never be populated in
  /// any response.
  ///
  /// Required.
  core.String? siteSecret;

  /// Whether the `site_secret` field was previously set.
  ///
  /// Since we will never return the `site_secret` field, this field is the only
  /// way to find out whether it was previously set.
  ///
  /// Output only.
  core.bool? siteSecretSet;

  /// Specifies the duration for which App Check tokens exchanged from reCAPTCHA
  /// tokens will be valid.
  ///
  /// If unset, a default value of 1 day is assumed. Must be between 30 minutes
  /// and 7 days, inclusive.
  core.String? tokenTtl;

  GoogleFirebaseAppcheckV1betaRecaptchaConfig({
    this.name,
    this.siteSecret,
    this.siteSecretSet,
    this.tokenTtl,
  });

  GoogleFirebaseAppcheckV1betaRecaptchaConfig.fromJson(core.Map json_)
      : this(
          name: json_['name'] as core.String?,
          siteSecret: json_['siteSecret'] as core.String?,
          siteSecretSet: json_['siteSecretSet'] as core.bool?,
          tokenTtl: json_['tokenTtl'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (name != null) 'name': name!,
        if (siteSecret != null) 'siteSecret': siteSecret!,
        if (siteSecretSet != null) 'siteSecretSet': siteSecretSet!,
        if (tokenTtl != null) 'tokenTtl': tokenTtl!,
      };
}

/// An app's reCAPTCHA Enterprise configuration object.
///
/// This configuration is used by ExchangeRecaptchaEnterpriseToken to validate
/// reCAPTCHA tokens issued to apps by reCAPTCHA Enterprise. It also controls
/// certain properties of the returned `AppCheckToken`, such as its ttl.
class GoogleFirebaseAppcheckV1betaRecaptchaEnterpriseConfig {
  /// The relative resource name of the reCAPTCHA Enterprise configuration
  /// object, in the format: ```
  /// projects/{project_number}/apps/{app_id}/recaptchaEnterpriseConfig ```
  ///
  /// Required.
  core.String? name;

  /// The score-based site key
  /// [created in reCAPTCHA Enterprise](https://cloud.google.com/recaptcha-enterprise/docs/create-key#creating_a_site_key)
  /// used to
  /// [invoke reCAPTCHA and generate the reCAPTCHA tokens](https://cloud.google.com/recaptcha-enterprise/docs/instrument-web-pages)
  /// for your application.
  ///
  /// Important: This is *not* the `site_secret` (as it is in reCAPTCHA v3), but
  /// rather your score-based reCAPTCHA Enterprise site key.
  core.String? siteKey;

  /// Specifies the duration for which App Check tokens exchanged from reCAPTCHA
  /// Enterprise tokens will be valid.
  ///
  /// If unset, a default value of 1 hour is assumed. Must be between 30 minutes
  /// and 7 days, inclusive.
  core.String? tokenTtl;

  GoogleFirebaseAppcheckV1betaRecaptchaEnterpriseConfig({
    this.name,
    this.siteKey,
    this.tokenTtl,
  });

  GoogleFirebaseAppcheckV1betaRecaptchaEnterpriseConfig.fromJson(core.Map json_)
      : this(
          name: json_['name'] as core.String?,
          siteKey: json_['siteKey'] as core.String?,
          tokenTtl: json_['tokenTtl'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (name != null) 'name': name!,
        if (siteKey != null) 'siteKey': siteKey!,
        if (tokenTtl != null) 'tokenTtl': tokenTtl!,
      };
}

/// An app's reCAPTCHA v3 configuration object.
///
/// This configuration is used by ExchangeRecaptchaV3Token to validate reCAPTCHA
/// tokens issued to apps by reCAPTCHA v3. It also controls certain properties
/// of the returned `AppCheckToken`, such as its ttl.
class GoogleFirebaseAppcheckV1betaRecaptchaV3Config {
  /// The relative resource name of the reCAPTCHA v3 configuration object, in
  /// the format: ``` projects/{project_number}/apps/{app_id}/recaptchaV3Config
  /// ```
  ///
  /// Required.
  core.String? name;

  /// Input only.
  ///
  /// The site secret used to identify your service for reCAPTCHA v3
  /// verification. For security reasons, this field will never be populated in
  /// any response.
  ///
  /// Required.
  core.String? siteSecret;

  /// Whether the `site_secret` field was previously set.
  ///
  /// Since we will never return the `site_secret` field, this field is the only
  /// way to find out whether it was previously set.
  ///
  /// Output only.
  core.bool? siteSecretSet;

  /// Specifies the duration for which App Check tokens exchanged from reCAPTCHA
  /// tokens will be valid.
  ///
  /// If unset, a default value of 1 day is assumed. Must be between 30 minutes
  /// and 7 days, inclusive.
  core.String? tokenTtl;

  GoogleFirebaseAppcheckV1betaRecaptchaV3Config({
    this.name,
    this.siteSecret,
    this.siteSecretSet,
    this.tokenTtl,
  });

  GoogleFirebaseAppcheckV1betaRecaptchaV3Config.fromJson(core.Map json_)
      : this(
          name: json_['name'] as core.String?,
          siteSecret: json_['siteSecret'] as core.String?,
          siteSecretSet: json_['siteSecretSet'] as core.bool?,
          tokenTtl: json_['tokenTtl'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (name != null) 'name': name!,
        if (siteSecret != null) 'siteSecret': siteSecret!,
        if (siteSecretSet != null) 'siteSecretSet': siteSecretSet!,
        if (tokenTtl != null) 'tokenTtl': tokenTtl!,
      };
}

/// App Check enforcement policy for a specific resource of a Google service
/// supported by App Check.
///
/// Note that this policy will override the service-level configuration.
class GoogleFirebaseAppcheckV1betaResourcePolicy {
  /// The App Check enforcement mode for this resource.
  ///
  /// This will override the EnforcementMode setting on the parent service.
  ///
  /// Required.
  /// Possible string values are:
  /// - "OFF" : Firebase App Check is not enforced for the service, nor are App
  /// Check metrics collected. Though the service is not protected by App Check
  /// in this mode, other applicable protections, such as user authorization,
  /// are still enforced. An unconfigured service is in this mode by default.
  /// - "UNENFORCED" : Firebase App Check is not enforced for the service. App
  /// Check metrics are collected to help you decide when to turn on enforcement
  /// for the service. Though the service is not protected by App Check in this
  /// mode, other applicable protections, such as user authorization, are still
  /// enforced. Some services require certain conditions to be met before they
  /// will work with App Check, such as requiring you to upgrade to a specific
  /// service tier. Until those requirements are met for a service, this
  /// `UNENFORCED` setting will have no effect and App Check will not work with
  /// that service.
  /// - "ENFORCED" : Firebase App Check is enforced for the service. The service
  /// will reject any request that attempts to access your project's resources
  /// if it does not have valid App Check token attached, with some exceptions
  /// depending on the service; for example, some services will still allow
  /// requests bearing the developer's privileged service account credentials
  /// without an App Check token. App Check metrics continue to be collected to
  /// help you detect issues with your App Check integration and monitor the
  /// composition of your callers. While the service is protected by App Check,
  /// other applicable protections, such as user authorization, continue to be
  /// enforced at the same time. Use caution when choosing to enforce App Check
  /// on a Firebase service. If your users have not updated to an App Check
  /// capable version of your app, their apps will no longer be able to use your
  /// Firebase services that are enforcing App Check. App Check metrics can help
  /// you decide whether to enforce App Check on your Firebase services. If your
  /// app has not launched yet, you should enable enforcement immediately, since
  /// there are no outdated clients in use. Some services require certain
  /// conditions to be met before they will work with App Check, such as
  /// requiring you to upgrade to a specific service tier. Until those
  /// requirements are met for a service, this `ENFORCED` setting will have no
  /// effect and App Check will not work with that service.
  core.String? enforcementMode;

  /// This checksum is computed by the server based on the value of other
  /// fields, and may be sent on update and delete requests to ensure the client
  /// has an up-to-date value before proceeding.
  ///
  /// This etag is strongly validated as defined by RFC 7232.
  core.String? etag;

  /// Identifier.
  ///
  /// The relative name of the resource policy object, in the format: ```
  /// projects/{project_number}/services/{service_id}/resourcePolicies/{resource_policy_id}
  /// ``` Note that the `service_id` element must be a supported service ID.
  /// Currently, the following service IDs are supported: *
  /// `oauth2.googleapis.com` (Google Identity for iOS) `resource_policy_id` is
  /// a system-generated UID.
  ///
  /// Required.
  core.String? name;

  /// Service specific name of the resource object to which this policy applies,
  /// in the format: * **iOS OAuth clients** (Google Identity for iOS):
  /// `//oauth2.googleapis.com/projects/{project_number}/oauthClients/{oauth_client_id}`
  /// Note that the resource must belong to the service specified in the `name`
  /// and be from the same project as this policy, but the resource is allowed
  /// to be missing at the time of creation of this policy; in that case, we
  /// make a best-effort attempt at respecting this policy, but it may not have
  /// any effect until the resource is fully created.
  ///
  /// Required.
  core.String? targetResource;

  /// Timestamp when this resource policy configuration object was most recently
  /// updated.
  ///
  /// Output only.
  core.String? updateTime;

  GoogleFirebaseAppcheckV1betaResourcePolicy({
    this.enforcementMode,
    this.etag,
    this.name,
    this.targetResource,
    this.updateTime,
  });

  GoogleFirebaseAppcheckV1betaResourcePolicy.fromJson(core.Map json_)
      : this(
          enforcementMode: json_['enforcementMode'] as core.String?,
          etag: json_['etag'] as core.String?,
          name: json_['name'] as core.String?,
          targetResource: json_['targetResource'] as core.String?,
          updateTime: json_['updateTime'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (enforcementMode != null) 'enforcementMode': enforcementMode!,
        if (etag != null) 'etag': etag!,
        if (name != null) 'name': name!,
        if (targetResource != null) 'targetResource': targetResource!,
        if (updateTime != null) 'updateTime': updateTime!,
      };
}

/// An app's SafetyNet configuration object.
///
/// This configuration controls certain properties of the `AppCheckToken`
/// returned by ExchangeSafetyNetToken, such as its ttl. Note that your
/// registered SHA-256 certificate fingerprints are used to validate tokens
/// issued by SafetyNet; please register them via the Firebase Console or
/// programmatically via the
/// [Firebase Management Service](https://firebase.google.com/docs/projects/api/reference/rest/v1beta1/projects.androidApps.sha/create).
class GoogleFirebaseAppcheckV1betaSafetyNetConfig {
  /// The relative resource name of the SafetyNet configuration object, in the
  /// format: ``` projects/{project_number}/apps/{app_id}/safetyNetConfig ```
  ///
  /// Required.
  core.String? name;

  /// Specifies the duration for which App Check tokens exchanged from SafetyNet
  /// tokens will be valid.
  ///
  /// If unset, a default value of 1 hour is assumed. Must be between 30 minutes
  /// and 7 days, inclusive.
  core.String? tokenTtl;

  GoogleFirebaseAppcheckV1betaSafetyNetConfig({
    this.name,
    this.tokenTtl,
  });

  GoogleFirebaseAppcheckV1betaSafetyNetConfig.fromJson(core.Map json_)
      : this(
          name: json_['name'] as core.String?,
          tokenTtl: json_['tokenTtl'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (name != null) 'name': name!,
        if (tokenTtl != null) 'tokenTtl': tokenTtl!,
      };
}

/// The enforcement configuration for a Firebase service supported by App Check.
class GoogleFirebaseAppcheckV1betaService {
  /// The App Check enforcement mode for this service.
  ///
  /// Required.
  /// Possible string values are:
  /// - "OFF" : Firebase App Check is not enforced for the service, nor are App
  /// Check metrics collected. Though the service is not protected by App Check
  /// in this mode, other applicable protections, such as user authorization,
  /// are still enforced. An unconfigured service is in this mode by default.
  /// - "UNENFORCED" : Firebase App Check is not enforced for the service. App
  /// Check metrics are collected to help you decide when to turn on enforcement
  /// for the service. Though the service is not protected by App Check in this
  /// mode, other applicable protections, such as user authorization, are still
  /// enforced. Some services require certain conditions to be met before they
  /// will work with App Check, such as requiring you to upgrade to a specific
  /// service tier. Until those requirements are met for a service, this
  /// `UNENFORCED` setting will have no effect and App Check will not work with
  /// that service.
  /// - "ENFORCED" : Firebase App Check is enforced for the service. The service
  /// will reject any request that attempts to access your project's resources
  /// if it does not have valid App Check token attached, with some exceptions
  /// depending on the service; for example, some services will still allow
  /// requests bearing the developer's privileged service account credentials
  /// without an App Check token. App Check metrics continue to be collected to
  /// help you detect issues with your App Check integration and monitor the
  /// composition of your callers. While the service is protected by App Check,
  /// other applicable protections, such as user authorization, continue to be
  /// enforced at the same time. Use caution when choosing to enforce App Check
  /// on a Firebase service. If your users have not updated to an App Check
  /// capable version of your app, their apps will no longer be able to use your
  /// Firebase services that are enforcing App Check. App Check metrics can help
  /// you decide whether to enforce App Check on your Firebase services. If your
  /// app has not launched yet, you should enable enforcement immediately, since
  /// there are no outdated clients in use. Some services require certain
  /// conditions to be met before they will work with App Check, such as
  /// requiring you to upgrade to a specific service tier. Until those
  /// requirements are met for a service, this `ENFORCED` setting will have no
  /// effect and App Check will not work with that service.
  core.String? enforcementMode;

  /// This checksum is computed by the server based on the value of other
  /// fields, and may be sent on update and delete requests to ensure the client
  /// has an up-to-date value before proceeding.
  ///
  /// This etag is strongly validated as defined by RFC 7232.
  core.String? etag;

  /// The relative resource name of the service configuration object, in the
  /// format: ``` projects/{project_number}/services/{service_id} ``` Note that
  /// the `service_id` element must be a supported service ID.
  ///
  /// Currently, the following service IDs are supported: *
  /// `firebasestorage.googleapis.com` (Cloud Storage for Firebase) *
  /// `firebasedatabase.googleapis.com` (Firebase Realtime Database) *
  /// `firestore.googleapis.com` (Cloud Firestore) *
  /// `identitytoolkit.googleapis.com` (Firebase Authentication with Identity
  /// Platform) * `oauth2.googleapis.com` (Google Identity for iOS)
  ///
  /// Required.
  core.String? name;

  /// Timestamp when this service configuration object was most recently
  /// updated.
  ///
  /// Output only.
  core.String? updateTime;

  GoogleFirebaseAppcheckV1betaService({
    this.enforcementMode,
    this.etag,
    this.name,
    this.updateTime,
  });

  GoogleFirebaseAppcheckV1betaService.fromJson(core.Map json_)
      : this(
          enforcementMode: json_['enforcementMode'] as core.String?,
          etag: json_['etag'] as core.String?,
          name: json_['name'] as core.String?,
          updateTime: json_['updateTime'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (enforcementMode != null) 'enforcementMode': enforcementMode!,
        if (etag != null) 'etag': etag!,
        if (name != null) 'name': name!,
        if (updateTime != null) 'updateTime': updateTime!,
      };
}

/// Request message for the UpdateResourcePolicy method as well as an individual
/// update message for the BatchUpdateResourcePolicies method.
class GoogleFirebaseAppcheckV1betaUpdateResourcePolicyRequest {
  /// The ResourcePolicy to update.
  ///
  /// The ResourcePolicy's `name` field is used to identify the ResourcePolicy
  /// to be updated, in the format: ```
  /// projects/{project_number}/services/{service_id}/resourcePolicies/{resource_policy_id}
  /// ``` Note that the `service_id` element must be a supported service ID.
  /// Currently, the following service IDs are supported: *
  /// `oauth2.googleapis.com` (Google Identity for iOS)
  ///
  /// Required.
  GoogleFirebaseAppcheckV1betaResourcePolicy? resourcePolicy;

  /// A comma-separated list of names of fields in the ResourcePolicy to update.
  ///
  /// Example: `enforcement_mode`.
  ///
  /// Required.
  core.String? updateMask;

  GoogleFirebaseAppcheckV1betaUpdateResourcePolicyRequest({
    this.resourcePolicy,
    this.updateMask,
  });

  GoogleFirebaseAppcheckV1betaUpdateResourcePolicyRequest.fromJson(
      core.Map json_)
      : this(
          resourcePolicy: json_.containsKey('resourcePolicy')
              ? GoogleFirebaseAppcheckV1betaResourcePolicy.fromJson(
                  json_['resourcePolicy']
                      as core.Map<core.String, core.dynamic>)
              : null,
          updateMask: json_['updateMask'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (resourcePolicy != null) 'resourcePolicy': resourcePolicy!,
        if (updateMask != null) 'updateMask': updateMask!,
      };
}

/// Request message for the UpdateService method as well as an individual update
/// message for the BatchUpdateServices method.
class GoogleFirebaseAppcheckV1betaUpdateServiceRequest {
  /// The Service to update.
  ///
  /// The Service's `name` field is used to identify the Service to be updated,
  /// in the format: ``` projects/{project_number}/services/{service_id} ```
  /// Note that the `service_id` element must be a supported service ID.
  /// Currently, the following service IDs are supported: *
  /// `firebasestorage.googleapis.com` (Cloud Storage for Firebase) *
  /// `firebasedatabase.googleapis.com` (Firebase Realtime Database) *
  /// `firestore.googleapis.com` (Cloud Firestore) *
  /// `identitytoolkit.googleapis.com` (Firebase Authentication with Identity
  /// Platform) * `oauth2.googleapis.com` (Google Identity for iOS) For Firebase
  /// Authentication to work with App Check, you must first upgrade to
  /// [Firebase Authentication with Identity Platform](https://firebase.google.com/docs/auth#identity-platform).
  ///
  /// Required.
  GoogleFirebaseAppcheckV1betaService? service;

  /// A comma-separated list of names of fields in the Service to update.
  ///
  /// Example: `enforcement_mode`.
  ///
  /// Required.
  core.String? updateMask;

  GoogleFirebaseAppcheckV1betaUpdateServiceRequest({
    this.service,
    this.updateMask,
  });

  GoogleFirebaseAppcheckV1betaUpdateServiceRequest.fromJson(core.Map json_)
      : this(
          service: json_.containsKey('service')
              ? GoogleFirebaseAppcheckV1betaService.fromJson(
                  json_['service'] as core.Map<core.String, core.dynamic>)
              : null,
          updateMask: json_['updateMask'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (service != null) 'service': service!,
        if (updateMask != null) 'updateMask': updateMask!,
      };
}

/// Request message for the VerifyAppCheckToken method.
class GoogleFirebaseAppcheckV1betaVerifyAppCheckTokenRequest {
  /// The App Check token to verify.
  ///
  /// App Check tokens exchanged from the SafetyNet provider are not supported;
  /// an HTTP 400 error will be returned.
  ///
  /// Required.
  core.String? appCheckToken;

  GoogleFirebaseAppcheckV1betaVerifyAppCheckTokenRequest({
    this.appCheckToken,
  });

  GoogleFirebaseAppcheckV1betaVerifyAppCheckTokenRequest.fromJson(
      core.Map json_)
      : this(
          appCheckToken: json_['appCheckToken'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (appCheckToken != null) 'appCheckToken': appCheckToken!,
      };
}

/// Response message for the VerifyAppCheckToken method.
class GoogleFirebaseAppcheckV1betaVerifyAppCheckTokenResponse {
  /// Whether this token was already consumed.
  ///
  /// If this is the first time this method has seen the given App Check token,
  /// this field will be omitted from the response. The given token will then be
  /// marked as `already_consumed` (set to `true`) for all future invocations of
  /// this method for that token. Note that if the given App Check token is
  /// invalid, an HTTP 403 error is returned instead of a response containing
  /// this field, regardless whether the token was already consumed.
  core.bool? alreadyConsumed;

  GoogleFirebaseAppcheckV1betaVerifyAppCheckTokenResponse({
    this.alreadyConsumed,
  });

  GoogleFirebaseAppcheckV1betaVerifyAppCheckTokenResponse.fromJson(
      core.Map json_)
      : this(
          alreadyConsumed: json_['alreadyConsumed'] as core.bool?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (alreadyConsumed != null) 'alreadyConsumed': alreadyConsumed!,
      };
}

/// A generic empty message that you can re-use to avoid defining duplicated
/// empty messages in your APIs.
///
/// A typical example is to use it as the request or the response type of an API
/// method. For instance: service Foo { rpc Bar(google.protobuf.Empty) returns
/// (google.protobuf.Empty); }
typedef GoogleProtobufEmpty = $Empty;
