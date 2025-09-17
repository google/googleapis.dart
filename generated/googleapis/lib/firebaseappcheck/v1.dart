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

/// Firebase App Check API - v1
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

  FirebaseappcheckApi(
    http.Client client, {
    core.String rootUrl = 'https://firebaseappcheck.googleapis.com/',
    core.String servicePath = '',
  }) : _requester = commons.ApiRequester(
         client,
         rootUrl,
         servicePath,
         requestHeaders,
       );
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
  /// Completes with a [GoogleFirebaseAppcheckV1PublicJwkSet].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleFirebaseAppcheckV1PublicJwkSet> get(
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
    return GoogleFirebaseAppcheckV1PublicJwkSet.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
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
  /// [AIP 2510](https://google.aip.dev/cloud/2510) standard.
  /// Value must have pattern `^oauthClients/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleFirebaseAppcheckV1AppCheckToken].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleFirebaseAppcheckV1AppCheckToken>
  exchangeAppAttestAssertion(
    GoogleFirebaseAppcheckV1ExchangeAppAttestAssertionRequest request,
    core.String app, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1/' + core.Uri.encodeFull('$app') + ':exchangeAppAttestAssertion';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleFirebaseAppcheckV1AppCheckToken.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
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
  /// [AIP 2510](https://google.aip.dev/cloud/2510) standard.
  /// Value must have pattern `^oauthClients/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a
  /// [GoogleFirebaseAppcheckV1ExchangeAppAttestAttestationResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleFirebaseAppcheckV1ExchangeAppAttestAttestationResponse>
  exchangeAppAttestAttestation(
    GoogleFirebaseAppcheckV1ExchangeAppAttestAttestationRequest request,
    core.String app, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1/' + core.Uri.encodeFull('$app') + ':exchangeAppAttestAttestation';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleFirebaseAppcheckV1ExchangeAppAttestAttestationResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
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
  /// [AIP 2510](https://google.aip.dev/cloud/2510) standard.
  /// Value must have pattern `^oauthClients/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleFirebaseAppcheckV1AppCheckToken].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleFirebaseAppcheckV1AppCheckToken> exchangeDebugToken(
    GoogleFirebaseAppcheckV1ExchangeDebugTokenRequest request,
    core.String app, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$app') + ':exchangeDebugToken';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleFirebaseAppcheckV1AppCheckToken.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
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
  /// [AIP 2510](https://google.aip.dev/cloud/2510) standard.
  /// Value must have pattern `^oauthClients/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a
  /// [GoogleFirebaseAppcheckV1GenerateAppAttestChallengeResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleFirebaseAppcheckV1GenerateAppAttestChallengeResponse>
  generateAppAttestChallenge(
    GoogleFirebaseAppcheckV1GenerateAppAttestChallengeRequest request,
    core.String app, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1/' + core.Uri.encodeFull('$app') + ':generateAppAttestChallenge';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleFirebaseAppcheckV1GenerateAppAttestChallengeResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class ProjectsResource {
  final commons.ApiRequester _requester;

  ProjectsAppsResource get apps => ProjectsAppsResource(_requester);
  ProjectsServicesResource get services => ProjectsServicesResource(_requester);

  ProjectsResource(commons.ApiRequester client) : _requester = client;
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
  /// [AIP 2510](https://google.aip.dev/cloud/2510) standard.
  /// Value must have pattern `^projects/\[^/\]+/apps/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleFirebaseAppcheckV1AppCheckToken].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleFirebaseAppcheckV1AppCheckToken>
  exchangeAppAttestAssertion(
    GoogleFirebaseAppcheckV1ExchangeAppAttestAssertionRequest request,
    core.String app, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1/' + core.Uri.encodeFull('$app') + ':exchangeAppAttestAssertion';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleFirebaseAppcheckV1AppCheckToken.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
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
  /// [AIP 2510](https://google.aip.dev/cloud/2510) standard.
  /// Value must have pattern `^projects/\[^/\]+/apps/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a
  /// [GoogleFirebaseAppcheckV1ExchangeAppAttestAttestationResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleFirebaseAppcheckV1ExchangeAppAttestAttestationResponse>
  exchangeAppAttestAttestation(
    GoogleFirebaseAppcheckV1ExchangeAppAttestAttestationRequest request,
    core.String app, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1/' + core.Uri.encodeFull('$app') + ':exchangeAppAttestAttestation';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleFirebaseAppcheckV1ExchangeAppAttestAttestationResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
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
  /// Completes with a [GoogleFirebaseAppcheckV1AppCheckToken].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleFirebaseAppcheckV1AppCheckToken> exchangeCustomToken(
    GoogleFirebaseAppcheckV1ExchangeCustomTokenRequest request,
    core.String app, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$app') + ':exchangeCustomToken';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleFirebaseAppcheckV1AppCheckToken.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
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
  /// [AIP 2510](https://google.aip.dev/cloud/2510) standard.
  /// Value must have pattern `^projects/\[^/\]+/apps/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleFirebaseAppcheckV1AppCheckToken].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleFirebaseAppcheckV1AppCheckToken> exchangeDebugToken(
    GoogleFirebaseAppcheckV1ExchangeDebugTokenRequest request,
    core.String app, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$app') + ':exchangeDebugToken';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleFirebaseAppcheckV1AppCheckToken.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
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
  /// Completes with a [GoogleFirebaseAppcheckV1AppCheckToken].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleFirebaseAppcheckV1AppCheckToken> exchangeDeviceCheckToken(
    GoogleFirebaseAppcheckV1ExchangeDeviceCheckTokenRequest request,
    core.String app, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1/' + core.Uri.encodeFull('$app') + ':exchangeDeviceCheckToken';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleFirebaseAppcheckV1AppCheckToken.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
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
  /// Completes with a [GoogleFirebaseAppcheckV1AppCheckToken].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleFirebaseAppcheckV1AppCheckToken>
  exchangePlayIntegrityToken(
    GoogleFirebaseAppcheckV1ExchangePlayIntegrityTokenRequest request,
    core.String app, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1/' + core.Uri.encodeFull('$app') + ':exchangePlayIntegrityToken';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleFirebaseAppcheckV1AppCheckToken.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Validates a
  /// [reCAPTCHA Enterprise response token](https://cloud.google.com/recaptcha-enterprise/docs/create-assessment#retrieve_token).
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
  /// Completes with a [GoogleFirebaseAppcheckV1AppCheckToken].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleFirebaseAppcheckV1AppCheckToken>
  exchangeRecaptchaEnterpriseToken(
    GoogleFirebaseAppcheckV1ExchangeRecaptchaEnterpriseTokenRequest request,
    core.String app, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1/' +
        core.Uri.encodeFull('$app') +
        ':exchangeRecaptchaEnterpriseToken';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleFirebaseAppcheckV1AppCheckToken.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
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
  /// Completes with a [GoogleFirebaseAppcheckV1AppCheckToken].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleFirebaseAppcheckV1AppCheckToken> exchangeRecaptchaV3Token(
    GoogleFirebaseAppcheckV1ExchangeRecaptchaV3TokenRequest request,
    core.String app, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1/' + core.Uri.encodeFull('$app') + ':exchangeRecaptchaV3Token';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleFirebaseAppcheckV1AppCheckToken.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
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
  /// Completes with a [GoogleFirebaseAppcheckV1AppCheckToken].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  async.Future<GoogleFirebaseAppcheckV1AppCheckToken> exchangeSafetyNetToken(
    GoogleFirebaseAppcheckV1ExchangeSafetyNetTokenRequest request,
    core.String app, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1/' + core.Uri.encodeFull('$app') + ':exchangeSafetyNetToken';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleFirebaseAppcheckV1AppCheckToken.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
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
  /// [AIP 2510](https://google.aip.dev/cloud/2510) standard.
  /// Value must have pattern `^projects/\[^/\]+/apps/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a
  /// [GoogleFirebaseAppcheckV1GenerateAppAttestChallengeResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleFirebaseAppcheckV1GenerateAppAttestChallengeResponse>
  generateAppAttestChallenge(
    GoogleFirebaseAppcheckV1GenerateAppAttestChallengeRequest request,
    core.String app, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1/' + core.Uri.encodeFull('$app') + ':generateAppAttestChallenge';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleFirebaseAppcheckV1GenerateAppAttestChallengeResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
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
  /// [GoogleFirebaseAppcheckV1GeneratePlayIntegrityChallengeResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleFirebaseAppcheckV1GeneratePlayIntegrityChallengeResponse>
  generatePlayIntegrityChallenge(
    GoogleFirebaseAppcheckV1GeneratePlayIntegrityChallengeRequest request,
    core.String app, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1/' + core.Uri.encodeFull('$app') + ':generatePlayIntegrityChallenge';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleFirebaseAppcheckV1GeneratePlayIntegrityChallengeResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
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
  /// [GoogleFirebaseAppcheckV1BatchGetAppAttestConfigsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleFirebaseAppcheckV1BatchGetAppAttestConfigsResponse>
  batchGet(
    core.String parent, {
    core.List<core.String>? names,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (names != null) 'names': names,
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1/' +
        core.Uri.encodeFull('$parent') +
        '/apps/-/appAttestConfig:batchGet';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleFirebaseAppcheckV1BatchGetAppAttestConfigsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
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
  /// Completes with a [GoogleFirebaseAppcheckV1AppAttestConfig].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleFirebaseAppcheckV1AppAttestConfig> get(
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
    return GoogleFirebaseAppcheckV1AppAttestConfig.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
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
  /// Completes with a [GoogleFirebaseAppcheckV1AppAttestConfig].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleFirebaseAppcheckV1AppAttestConfig> patch(
    GoogleFirebaseAppcheckV1AppAttestConfig request,
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
    return GoogleFirebaseAppcheckV1AppAttestConfig.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
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
  /// Completes with a [GoogleFirebaseAppcheckV1DebugToken].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleFirebaseAppcheckV1DebugToken> create(
    GoogleFirebaseAppcheckV1DebugToken request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/debugTokens';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleFirebaseAppcheckV1DebugToken.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
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

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return GoogleProtobufEmpty.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
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
  /// Completes with a [GoogleFirebaseAppcheckV1DebugToken].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleFirebaseAppcheckV1DebugToken> get(
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
    return GoogleFirebaseAppcheckV1DebugToken.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
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
  /// Completes with a [GoogleFirebaseAppcheckV1ListDebugTokensResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleFirebaseAppcheckV1ListDebugTokensResponse> list(
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

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/debugTokens';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleFirebaseAppcheckV1ListDebugTokensResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
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
  /// Completes with a [GoogleFirebaseAppcheckV1DebugToken].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleFirebaseAppcheckV1DebugToken> patch(
    GoogleFirebaseAppcheckV1DebugToken request,
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
    return GoogleFirebaseAppcheckV1DebugToken.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
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
  /// [GoogleFirebaseAppcheckV1BatchGetDeviceCheckConfigsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleFirebaseAppcheckV1BatchGetDeviceCheckConfigsResponse>
  batchGet(
    core.String parent, {
    core.List<core.String>? names,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (names != null) 'names': names,
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1/' +
        core.Uri.encodeFull('$parent') +
        '/apps/-/deviceCheckConfig:batchGet';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleFirebaseAppcheckV1BatchGetDeviceCheckConfigsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
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
  /// Completes with a [GoogleFirebaseAppcheckV1DeviceCheckConfig].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleFirebaseAppcheckV1DeviceCheckConfig> get(
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
    return GoogleFirebaseAppcheckV1DeviceCheckConfig.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
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
  /// Completes with a [GoogleFirebaseAppcheckV1DeviceCheckConfig].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleFirebaseAppcheckV1DeviceCheckConfig> patch(
    GoogleFirebaseAppcheckV1DeviceCheckConfig request,
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
    return GoogleFirebaseAppcheckV1DeviceCheckConfig.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
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
  /// [GoogleFirebaseAppcheckV1BatchGetPlayIntegrityConfigsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleFirebaseAppcheckV1BatchGetPlayIntegrityConfigsResponse>
  batchGet(
    core.String parent, {
    core.List<core.String>? names,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (names != null) 'names': names,
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1/' +
        core.Uri.encodeFull('$parent') +
        '/apps/-/playIntegrityConfig:batchGet';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleFirebaseAppcheckV1BatchGetPlayIntegrityConfigsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
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
  /// Completes with a [GoogleFirebaseAppcheckV1PlayIntegrityConfig].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleFirebaseAppcheckV1PlayIntegrityConfig> get(
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
    return GoogleFirebaseAppcheckV1PlayIntegrityConfig.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
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
  /// Completes with a [GoogleFirebaseAppcheckV1PlayIntegrityConfig].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleFirebaseAppcheckV1PlayIntegrityConfig> patch(
    GoogleFirebaseAppcheckV1PlayIntegrityConfig request,
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
    return GoogleFirebaseAppcheckV1PlayIntegrityConfig.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
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
  /// [GoogleFirebaseAppcheckV1BatchGetRecaptchaEnterpriseConfigsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<
    GoogleFirebaseAppcheckV1BatchGetRecaptchaEnterpriseConfigsResponse
  >
  batchGet(
    core.String parent, {
    core.List<core.String>? names,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (names != null) 'names': names,
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1/' +
        core.Uri.encodeFull('$parent') +
        '/apps/-/recaptchaEnterpriseConfig:batchGet';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleFirebaseAppcheckV1BatchGetRecaptchaEnterpriseConfigsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
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
  /// Completes with a [GoogleFirebaseAppcheckV1RecaptchaEnterpriseConfig].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleFirebaseAppcheckV1RecaptchaEnterpriseConfig> get(
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
    return GoogleFirebaseAppcheckV1RecaptchaEnterpriseConfig.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
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
  /// Completes with a [GoogleFirebaseAppcheckV1RecaptchaEnterpriseConfig].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleFirebaseAppcheckV1RecaptchaEnterpriseConfig> patch(
    GoogleFirebaseAppcheckV1RecaptchaEnterpriseConfig request,
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
    return GoogleFirebaseAppcheckV1RecaptchaEnterpriseConfig.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
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
  /// [GoogleFirebaseAppcheckV1BatchGetRecaptchaV3ConfigsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleFirebaseAppcheckV1BatchGetRecaptchaV3ConfigsResponse>
  batchGet(
    core.String parent, {
    core.List<core.String>? names,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (names != null) 'names': names,
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1/' +
        core.Uri.encodeFull('$parent') +
        '/apps/-/recaptchaV3Config:batchGet';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleFirebaseAppcheckV1BatchGetRecaptchaV3ConfigsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
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
  /// Completes with a [GoogleFirebaseAppcheckV1RecaptchaV3Config].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleFirebaseAppcheckV1RecaptchaV3Config> get(
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
    return GoogleFirebaseAppcheckV1RecaptchaV3Config.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
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
  /// Completes with a [GoogleFirebaseAppcheckV1RecaptchaV3Config].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleFirebaseAppcheckV1RecaptchaV3Config> patch(
    GoogleFirebaseAppcheckV1RecaptchaV3Config request,
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
    return GoogleFirebaseAppcheckV1RecaptchaV3Config.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
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
  /// [GoogleFirebaseAppcheckV1BatchGetSafetyNetConfigsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  async.Future<GoogleFirebaseAppcheckV1BatchGetSafetyNetConfigsResponse>
  batchGet(
    core.String parent, {
    core.List<core.String>? names,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (names != null) 'names': names,
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1/' +
        core.Uri.encodeFull('$parent') +
        '/apps/-/safetyNetConfig:batchGet';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleFirebaseAppcheckV1BatchGetSafetyNetConfigsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
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
  /// Completes with a [GoogleFirebaseAppcheckV1SafetyNetConfig].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  async.Future<GoogleFirebaseAppcheckV1SafetyNetConfig> get(
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
    return GoogleFirebaseAppcheckV1SafetyNetConfig.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
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
  /// Completes with a [GoogleFirebaseAppcheckV1SafetyNetConfig].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  async.Future<GoogleFirebaseAppcheckV1SafetyNetConfig> patch(
    GoogleFirebaseAppcheckV1SafetyNetConfig request,
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
    return GoogleFirebaseAppcheckV1SafetyNetConfig.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
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
  /// Completes with a [GoogleFirebaseAppcheckV1BatchUpdateServicesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleFirebaseAppcheckV1BatchUpdateServicesResponse> batchUpdate(
    GoogleFirebaseAppcheckV1BatchUpdateServicesRequest request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1/' + core.Uri.encodeFull('$parent') + '/services:batchUpdate';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleFirebaseAppcheckV1BatchUpdateServicesResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
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
  /// `firestore.googleapis.com` (Cloud Firestore) * `oauth2.googleapis.com`
  /// (Google Identity for iOS)
  /// Value must have pattern `^projects/\[^/\]+/services/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleFirebaseAppcheckV1Service].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleFirebaseAppcheckV1Service> get(
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
    return GoogleFirebaseAppcheckV1Service.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
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
  /// Completes with a [GoogleFirebaseAppcheckV1ListServicesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleFirebaseAppcheckV1ListServicesResponse> list(
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

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/services';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleFirebaseAppcheckV1ListServicesResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
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
  /// `firestore.googleapis.com` (Cloud Firestore) * `oauth2.googleapis.com`
  /// (Google Identity for iOS)
  /// Value must have pattern `^projects/\[^/\]+/services/\[^/\]+$`.
  ///
  /// [updateMask] - Required. A comma-separated list of names of fields in the
  /// Service to update. Example: `enforcement_mode`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleFirebaseAppcheckV1Service].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleFirebaseAppcheckV1Service> patch(
    GoogleFirebaseAppcheckV1Service request,
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
    return GoogleFirebaseAppcheckV1Service.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
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
  /// [GoogleFirebaseAppcheckV1BatchUpdateResourcePoliciesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleFirebaseAppcheckV1BatchUpdateResourcePoliciesResponse>
  batchUpdate(
    GoogleFirebaseAppcheckV1BatchUpdateResourcePoliciesRequest request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1/' +
        core.Uri.encodeFull('$parent') +
        '/resourcePolicies:batchUpdate';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleFirebaseAppcheckV1BatchUpdateResourcePoliciesResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
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
  /// Completes with a [GoogleFirebaseAppcheckV1ResourcePolicy].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleFirebaseAppcheckV1ResourcePolicy> create(
    GoogleFirebaseAppcheckV1ResourcePolicy request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/resourcePolicies';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleFirebaseAppcheckV1ResourcePolicy.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
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

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return GoogleProtobufEmpty.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
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
  /// Completes with a [GoogleFirebaseAppcheckV1ResourcePolicy].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleFirebaseAppcheckV1ResourcePolicy> get(
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
    return GoogleFirebaseAppcheckV1ResourcePolicy.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
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
  /// Completes with a [GoogleFirebaseAppcheckV1ListResourcePoliciesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleFirebaseAppcheckV1ListResourcePoliciesResponse> list(
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

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/resourcePolicies';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleFirebaseAppcheckV1ListResourcePoliciesResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
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
  /// Completes with a [GoogleFirebaseAppcheckV1ResourcePolicy].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleFirebaseAppcheckV1ResourcePolicy> patch(
    GoogleFirebaseAppcheckV1ResourcePolicy request,
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
    return GoogleFirebaseAppcheckV1ResourcePolicy.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

/// An app's App Attest configuration object.
///
/// This configuration controls certain properties of the `AppCheckToken`
/// returned by ExchangeAppAttestAttestation and ExchangeAppAttestAssertion,
/// such as its ttl. Note that the Team ID registered with your app is used as
/// part of the validation process. Please register it via the Firebase Console
/// or programmatically via the
/// [Firebase Management Service](https://firebase.google.com/docs/projects/api/reference/rest/v11/projects.iosApps/patch).
class GoogleFirebaseAppcheckV1AppAttestConfig {
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

  GoogleFirebaseAppcheckV1AppAttestConfig({this.name, this.tokenTtl});

  GoogleFirebaseAppcheckV1AppAttestConfig.fromJson(core.Map json_)
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
class GoogleFirebaseAppcheckV1AppCheckToken {
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

  GoogleFirebaseAppcheckV1AppCheckToken({this.token, this.ttl});

  GoogleFirebaseAppcheckV1AppCheckToken.fromJson(core.Map json_)
    : this(
        token: json_['token'] as core.String?,
        ttl: json_['ttl'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (token != null) 'token': token!,
    if (ttl != null) 'ttl': ttl!,
  };
}

/// Response message for the BatchGetAppAttestConfigs method.
class GoogleFirebaseAppcheckV1BatchGetAppAttestConfigsResponse {
  /// AppAttestConfigs retrieved.
  core.List<GoogleFirebaseAppcheckV1AppAttestConfig>? configs;

  GoogleFirebaseAppcheckV1BatchGetAppAttestConfigsResponse({this.configs});

  GoogleFirebaseAppcheckV1BatchGetAppAttestConfigsResponse.fromJson(
    core.Map json_,
  ) : this(
        configs:
            (json_['configs'] as core.List?)
                ?.map(
                  (value) => GoogleFirebaseAppcheckV1AppAttestConfig.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (configs != null) 'configs': configs!,
  };
}

/// Response message for the BatchGetDeviceCheckConfigs method.
class GoogleFirebaseAppcheckV1BatchGetDeviceCheckConfigsResponse {
  /// DeviceCheckConfigs retrieved.
  core.List<GoogleFirebaseAppcheckV1DeviceCheckConfig>? configs;

  GoogleFirebaseAppcheckV1BatchGetDeviceCheckConfigsResponse({this.configs});

  GoogleFirebaseAppcheckV1BatchGetDeviceCheckConfigsResponse.fromJson(
    core.Map json_,
  ) : this(
        configs:
            (json_['configs'] as core.List?)
                ?.map(
                  (value) => GoogleFirebaseAppcheckV1DeviceCheckConfig.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (configs != null) 'configs': configs!,
  };
}

/// Response message for the BatchGetPlayIntegrityConfigs method.
class GoogleFirebaseAppcheckV1BatchGetPlayIntegrityConfigsResponse {
  /// PlayIntegrityConfigs retrieved.
  core.List<GoogleFirebaseAppcheckV1PlayIntegrityConfig>? configs;

  GoogleFirebaseAppcheckV1BatchGetPlayIntegrityConfigsResponse({this.configs});

  GoogleFirebaseAppcheckV1BatchGetPlayIntegrityConfigsResponse.fromJson(
    core.Map json_,
  ) : this(
        configs:
            (json_['configs'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleFirebaseAppcheckV1PlayIntegrityConfig.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (configs != null) 'configs': configs!,
  };
}

/// Response message for the BatchGetRecaptchaEnterpriseConfigs method.
class GoogleFirebaseAppcheckV1BatchGetRecaptchaEnterpriseConfigsResponse {
  /// RecaptchaEnterpriseConfigs retrieved.
  core.List<GoogleFirebaseAppcheckV1RecaptchaEnterpriseConfig>? configs;

  GoogleFirebaseAppcheckV1BatchGetRecaptchaEnterpriseConfigsResponse({
    this.configs,
  });

  GoogleFirebaseAppcheckV1BatchGetRecaptchaEnterpriseConfigsResponse.fromJson(
    core.Map json_,
  ) : this(
        configs:
            (json_['configs'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleFirebaseAppcheckV1RecaptchaEnterpriseConfig.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (configs != null) 'configs': configs!,
  };
}

/// Response message for the BatchGetRecaptchaV3Configs method.
class GoogleFirebaseAppcheckV1BatchGetRecaptchaV3ConfigsResponse {
  /// RecaptchaV3Configs retrieved.
  core.List<GoogleFirebaseAppcheckV1RecaptchaV3Config>? configs;

  GoogleFirebaseAppcheckV1BatchGetRecaptchaV3ConfigsResponse({this.configs});

  GoogleFirebaseAppcheckV1BatchGetRecaptchaV3ConfigsResponse.fromJson(
    core.Map json_,
  ) : this(
        configs:
            (json_['configs'] as core.List?)
                ?.map(
                  (value) => GoogleFirebaseAppcheckV1RecaptchaV3Config.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (configs != null) 'configs': configs!,
  };
}

/// Response message for the BatchGetSafetyNetConfigs method.
class GoogleFirebaseAppcheckV1BatchGetSafetyNetConfigsResponse {
  /// SafetyNetConfigs retrieved.
  core.List<GoogleFirebaseAppcheckV1SafetyNetConfig>? configs;

  GoogleFirebaseAppcheckV1BatchGetSafetyNetConfigsResponse({this.configs});

  GoogleFirebaseAppcheckV1BatchGetSafetyNetConfigsResponse.fromJson(
    core.Map json_,
  ) : this(
        configs:
            (json_['configs'] as core.List?)
                ?.map(
                  (value) => GoogleFirebaseAppcheckV1SafetyNetConfig.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (configs != null) 'configs': configs!,
  };
}

/// Request message for the BatchUpdateResourcePolicies method.
class GoogleFirebaseAppcheckV1BatchUpdateResourcePoliciesRequest {
  /// The request messages specifying the ResourcePolicy objects to update.
  ///
  /// A maximum of 100 objects can be updated in a batch.
  ///
  /// Required.
  core.List<GoogleFirebaseAppcheckV1UpdateResourcePolicyRequest>? requests;

  /// A comma-separated list of names of fields in the ResourcePolicy objects to
  /// update.
  ///
  /// Example: `enforcement_mode`. If this field is present, the `update_mask`
  /// field in the UpdateResourcePolicyRequest messages must all match this
  /// field, or the entire batch fails and no updates will be committed.
  ///
  /// Optional.
  core.String? updateMask;

  GoogleFirebaseAppcheckV1BatchUpdateResourcePoliciesRequest({
    this.requests,
    this.updateMask,
  });

  GoogleFirebaseAppcheckV1BatchUpdateResourcePoliciesRequest.fromJson(
    core.Map json_,
  ) : this(
        requests:
            (json_['requests'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleFirebaseAppcheckV1UpdateResourcePolicyRequest.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
        updateMask: json_['updateMask'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (requests != null) 'requests': requests!,
    if (updateMask != null) 'updateMask': updateMask!,
  };
}

/// Response message for the BatchUpdateResourcePolicies method.
class GoogleFirebaseAppcheckV1BatchUpdateResourcePoliciesResponse {
  /// ResourcePolicy objects after the updates have been applied.
  core.List<GoogleFirebaseAppcheckV1ResourcePolicy>? resourcePolicies;

  GoogleFirebaseAppcheckV1BatchUpdateResourcePoliciesResponse({
    this.resourcePolicies,
  });

  GoogleFirebaseAppcheckV1BatchUpdateResourcePoliciesResponse.fromJson(
    core.Map json_,
  ) : this(
        resourcePolicies:
            (json_['resourcePolicies'] as core.List?)
                ?.map(
                  (value) => GoogleFirebaseAppcheckV1ResourcePolicy.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (resourcePolicies != null) 'resourcePolicies': resourcePolicies!,
  };
}

/// Request message for the BatchUpdateServices method.
class GoogleFirebaseAppcheckV1BatchUpdateServicesRequest {
  /// The request messages specifying the Services to update.
  ///
  /// A maximum of 100 objects can be updated in a batch.
  ///
  /// Required.
  core.List<GoogleFirebaseAppcheckV1UpdateServiceRequest>? requests;

  /// A comma-separated list of names of fields in the Services to update.
  ///
  /// Example: `display_name`. If the `update_mask` field is set in both this
  /// request and any of the UpdateServiceRequest messages, they must match or
  /// the entire batch fails and no updates will be committed.
  ///
  /// Optional.
  core.String? updateMask;

  GoogleFirebaseAppcheckV1BatchUpdateServicesRequest({
    this.requests,
    this.updateMask,
  });

  GoogleFirebaseAppcheckV1BatchUpdateServicesRequest.fromJson(core.Map json_)
    : this(
        requests:
            (json_['requests'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleFirebaseAppcheckV1UpdateServiceRequest.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
        updateMask: json_['updateMask'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (requests != null) 'requests': requests!,
    if (updateMask != null) 'updateMask': updateMask!,
  };
}

/// Response message for the BatchUpdateServices method.
class GoogleFirebaseAppcheckV1BatchUpdateServicesResponse {
  /// Service objects after the updates have been applied.
  core.List<GoogleFirebaseAppcheckV1Service>? services;

  GoogleFirebaseAppcheckV1BatchUpdateServicesResponse({this.services});

  GoogleFirebaseAppcheckV1BatchUpdateServicesResponse.fromJson(core.Map json_)
    : this(
        services:
            (json_['services'] as core.List?)
                ?.map(
                  (value) => GoogleFirebaseAppcheckV1Service.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
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
class GoogleFirebaseAppcheckV1DebugToken {
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

  GoogleFirebaseAppcheckV1DebugToken({
    this.displayName,
    this.name,
    this.token,
    this.updateTime,
  });

  GoogleFirebaseAppcheckV1DebugToken.fromJson(core.Map json_)
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
/// [Firebase Management Service](https://firebase.google.com/docs/projects/api/reference/rest/v11/projects.iosApps/patch).
class GoogleFirebaseAppcheckV1DeviceCheckConfig {
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

  GoogleFirebaseAppcheckV1DeviceCheckConfig({
    this.keyId,
    this.name,
    this.privateKey,
    this.privateKeySet,
    this.tokenTtl,
  });

  GoogleFirebaseAppcheckV1DeviceCheckConfig.fromJson(core.Map json_)
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
class GoogleFirebaseAppcheckV1ExchangeAppAttestAssertionRequest {
  /// The artifact returned by a previous call to ExchangeAppAttestAttestation.
  ///
  /// Required.
  core.String? artifact;
  core.List<core.int> get artifactAsBytes => convert.base64.decode(artifact!);

  set artifactAsBytes(core.List<core.int> bytes_) {
    artifact = convert.base64
        .encode(bytes_)
        .replaceAll('/', '_')
        .replaceAll('+', '-');
  }

  /// The CBOR-encoded assertion returned by the client-side App Attest API.
  ///
  /// Required.
  core.String? assertion;
  core.List<core.int> get assertionAsBytes => convert.base64.decode(assertion!);

  set assertionAsBytes(core.List<core.int> bytes_) {
    assertion = convert.base64
        .encode(bytes_)
        .replaceAll('/', '_')
        .replaceAll('+', '-');
  }

  /// A one-time challenge returned by an immediately prior call to
  /// GenerateAppAttestChallenge.
  ///
  /// Required.
  core.String? challenge;
  core.List<core.int> get challengeAsBytes => convert.base64.decode(challenge!);

  set challengeAsBytes(core.List<core.int> bytes_) {
    challenge = convert.base64
        .encode(bytes_)
        .replaceAll('/', '_')
        .replaceAll('+', '-');
  }

  /// Specifies whether this attestation is for use in a *limited use* (`true`)
  /// or *session based* (`false`) context.
  ///
  /// To enable this attestation to be used with the *replay protection*
  /// feature, set this to `true`. The default value is `false`.
  core.bool? limitedUse;

  GoogleFirebaseAppcheckV1ExchangeAppAttestAssertionRequest({
    this.artifact,
    this.assertion,
    this.challenge,
    this.limitedUse,
  });

  GoogleFirebaseAppcheckV1ExchangeAppAttestAssertionRequest.fromJson(
    core.Map json_,
  ) : this(
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
class GoogleFirebaseAppcheckV1ExchangeAppAttestAttestationRequest {
  /// The App Attest statement returned by the client-side App Attest API.
  ///
  /// This is a base64url encoded CBOR object in the JSON response.
  ///
  /// Required.
  core.String? attestationStatement;
  core.List<core.int> get attestationStatementAsBytes =>
      convert.base64.decode(attestationStatement!);

  set attestationStatementAsBytes(core.List<core.int> bytes_) {
    attestationStatement = convert.base64
        .encode(bytes_)
        .replaceAll('/', '_')
        .replaceAll('+', '-');
  }

  /// A one-time challenge returned by an immediately prior call to
  /// GenerateAppAttestChallenge.
  ///
  /// Required.
  core.String? challenge;
  core.List<core.int> get challengeAsBytes => convert.base64.decode(challenge!);

  set challengeAsBytes(core.List<core.int> bytes_) {
    challenge = convert.base64
        .encode(bytes_)
        .replaceAll('/', '_')
        .replaceAll('+', '-');
  }

  /// The key ID generated by App Attest for the client app.
  ///
  /// Required.
  core.String? keyId;
  core.List<core.int> get keyIdAsBytes => convert.base64.decode(keyId!);

  set keyIdAsBytes(core.List<core.int> bytes_) {
    keyId = convert.base64
        .encode(bytes_)
        .replaceAll('/', '_')
        .replaceAll('+', '-');
  }

  /// Specifies whether this attestation is for use in a *limited use* (`true`)
  /// or *session based* (`false`) context.
  ///
  /// To enable this attestation to be used with the *replay protection*
  /// feature, set this to `true`. The default value is `false`.
  core.bool? limitedUse;

  GoogleFirebaseAppcheckV1ExchangeAppAttestAttestationRequest({
    this.attestationStatement,
    this.challenge,
    this.keyId,
    this.limitedUse,
  });

  GoogleFirebaseAppcheckV1ExchangeAppAttestAttestationRequest.fromJson(
    core.Map json_,
  ) : this(
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
class GoogleFirebaseAppcheckV1ExchangeAppAttestAttestationResponse {
  /// Encapsulates an App Check token.
  GoogleFirebaseAppcheckV1AppCheckToken? appCheckToken;

  /// An artifact that can be used in future calls to
  /// ExchangeAppAttestAssertion.
  core.String? artifact;
  core.List<core.int> get artifactAsBytes => convert.base64.decode(artifact!);

  set artifactAsBytes(core.List<core.int> bytes_) {
    artifact = convert.base64
        .encode(bytes_)
        .replaceAll('/', '_')
        .replaceAll('+', '-');
  }

  GoogleFirebaseAppcheckV1ExchangeAppAttestAttestationResponse({
    this.appCheckToken,
    this.artifact,
  });

  GoogleFirebaseAppcheckV1ExchangeAppAttestAttestationResponse.fromJson(
    core.Map json_,
  ) : this(
        appCheckToken:
            json_.containsKey('appCheckToken')
                ? GoogleFirebaseAppcheckV1AppCheckToken.fromJson(
                  json_['appCheckToken'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        artifact: json_['artifact'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (appCheckToken != null) 'appCheckToken': appCheckToken!,
    if (artifact != null) 'artifact': artifact!,
  };
}

/// Request message for the ExchangeCustomToken method.
class GoogleFirebaseAppcheckV1ExchangeCustomTokenRequest {
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

  GoogleFirebaseAppcheckV1ExchangeCustomTokenRequest({
    this.customToken,
    this.limitedUse,
  });

  GoogleFirebaseAppcheckV1ExchangeCustomTokenRequest.fromJson(core.Map json_)
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
class GoogleFirebaseAppcheckV1ExchangeDebugTokenRequest {
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

  GoogleFirebaseAppcheckV1ExchangeDebugTokenRequest({
    this.debugToken,
    this.limitedUse,
  });

  GoogleFirebaseAppcheckV1ExchangeDebugTokenRequest.fromJson(core.Map json_)
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
class GoogleFirebaseAppcheckV1ExchangeDeviceCheckTokenRequest {
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

  GoogleFirebaseAppcheckV1ExchangeDeviceCheckTokenRequest({
    this.deviceToken,
    this.limitedUse,
  });

  GoogleFirebaseAppcheckV1ExchangeDeviceCheckTokenRequest.fromJson(
    core.Map json_,
  ) : this(
        deviceToken: json_['deviceToken'] as core.String?,
        limitedUse: json_['limitedUse'] as core.bool?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (deviceToken != null) 'deviceToken': deviceToken!,
    if (limitedUse != null) 'limitedUse': limitedUse!,
  };
}

/// Request message for the ExchangePlayIntegrityToken method.
class GoogleFirebaseAppcheckV1ExchangePlayIntegrityTokenRequest {
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

  GoogleFirebaseAppcheckV1ExchangePlayIntegrityTokenRequest({
    this.limitedUse,
    this.playIntegrityToken,
  });

  GoogleFirebaseAppcheckV1ExchangePlayIntegrityTokenRequest.fromJson(
    core.Map json_,
  ) : this(
        limitedUse: json_['limitedUse'] as core.bool?,
        playIntegrityToken: json_['playIntegrityToken'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (limitedUse != null) 'limitedUse': limitedUse!,
    if (playIntegrityToken != null) 'playIntegrityToken': playIntegrityToken!,
  };
}

/// Request message for the ExchangeRecaptchaEnterpriseToken method.
class GoogleFirebaseAppcheckV1ExchangeRecaptchaEnterpriseTokenRequest {
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

  GoogleFirebaseAppcheckV1ExchangeRecaptchaEnterpriseTokenRequest({
    this.limitedUse,
    this.recaptchaEnterpriseToken,
  });

  GoogleFirebaseAppcheckV1ExchangeRecaptchaEnterpriseTokenRequest.fromJson(
    core.Map json_,
  ) : this(
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

/// Request message for the ExchangeRecaptchaV3Token method.
class GoogleFirebaseAppcheckV1ExchangeRecaptchaV3TokenRequest {
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

  GoogleFirebaseAppcheckV1ExchangeRecaptchaV3TokenRequest({
    this.limitedUse,
    this.recaptchaV3Token,
  });

  GoogleFirebaseAppcheckV1ExchangeRecaptchaV3TokenRequest.fromJson(
    core.Map json_,
  ) : this(
        limitedUse: json_['limitedUse'] as core.bool?,
        recaptchaV3Token: json_['recaptchaV3Token'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (limitedUse != null) 'limitedUse': limitedUse!,
    if (recaptchaV3Token != null) 'recaptchaV3Token': recaptchaV3Token!,
  };
}

/// Request message for the ExchangeSafetyNetToken method.
class GoogleFirebaseAppcheckV1ExchangeSafetyNetTokenRequest {
  /// The
  /// [SafetyNet attestation response](https://developer.android.com/training/safetynet/attestation#request-attestation-step)
  /// issued to your app.
  ///
  /// Required.
  core.String? safetyNetToken;

  GoogleFirebaseAppcheckV1ExchangeSafetyNetTokenRequest({this.safetyNetToken});

  GoogleFirebaseAppcheckV1ExchangeSafetyNetTokenRequest.fromJson(core.Map json_)
    : this(safetyNetToken: json_['safetyNetToken'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() => {
    if (safetyNetToken != null) 'safetyNetToken': safetyNetToken!,
  };
}

/// Request message for the GenerateAppAttestChallenge method.
typedef GoogleFirebaseAppcheckV1GenerateAppAttestChallengeRequest = $Empty;

/// Response message for the GenerateAppAttestChallenge method.
class GoogleFirebaseAppcheckV1GenerateAppAttestChallengeResponse {
  /// A one-time use challenge for the client to pass to the App Attest API.
  core.String? challenge;
  core.List<core.int> get challengeAsBytes => convert.base64.decode(challenge!);

  set challengeAsBytes(core.List<core.int> bytes_) {
    challenge = convert.base64
        .encode(bytes_)
        .replaceAll('/', '_')
        .replaceAll('+', '-');
  }

  /// The duration from the time this challenge is minted until its expiration.
  ///
  /// This field is intended to ease client-side token management, since the
  /// client may have clock skew, but is still able to accurately measure a
  /// duration.
  core.String? ttl;

  GoogleFirebaseAppcheckV1GenerateAppAttestChallengeResponse({
    this.challenge,
    this.ttl,
  });

  GoogleFirebaseAppcheckV1GenerateAppAttestChallengeResponse.fromJson(
    core.Map json_,
  ) : this(
        challenge: json_['challenge'] as core.String?,
        ttl: json_['ttl'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (challenge != null) 'challenge': challenge!,
    if (ttl != null) 'ttl': ttl!,
  };
}

/// Request message for the GeneratePlayIntegrityChallenge method.
typedef GoogleFirebaseAppcheckV1GeneratePlayIntegrityChallengeRequest = $Empty;

/// Response message for the GeneratePlayIntegrityChallenge method.
class GoogleFirebaseAppcheckV1GeneratePlayIntegrityChallengeResponse {
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

  GoogleFirebaseAppcheckV1GeneratePlayIntegrityChallengeResponse({
    this.challenge,
    this.ttl,
  });

  GoogleFirebaseAppcheckV1GeneratePlayIntegrityChallengeResponse.fromJson(
    core.Map json_,
  ) : this(
        challenge: json_['challenge'] as core.String?,
        ttl: json_['ttl'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (challenge != null) 'challenge': challenge!,
    if (ttl != null) 'ttl': ttl!,
  };
}

/// Response message for the ListDebugTokens method.
class GoogleFirebaseAppcheckV1ListDebugTokensResponse {
  /// The DebugTokens retrieved.
  core.List<GoogleFirebaseAppcheckV1DebugToken>? debugTokens;

  /// If the result list is too large to fit in a single response, then a token
  /// is returned.
  ///
  /// If the string is empty or omitted, then this response is the last page of
  /// results. This token can be used in a subsequent call to ListDebugTokens to
  /// find the next group of DebugTokens. Page tokens are short-lived and should
  /// not be persisted.
  core.String? nextPageToken;

  GoogleFirebaseAppcheckV1ListDebugTokensResponse({
    this.debugTokens,
    this.nextPageToken,
  });

  GoogleFirebaseAppcheckV1ListDebugTokensResponse.fromJson(core.Map json_)
    : this(
        debugTokens:
            (json_['debugTokens'] as core.List?)
                ?.map(
                  (value) => GoogleFirebaseAppcheckV1DebugToken.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        nextPageToken: json_['nextPageToken'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (debugTokens != null) 'debugTokens': debugTokens!,
    if (nextPageToken != null) 'nextPageToken': nextPageToken!,
  };
}

/// Response message for the ListResourcePolicies method.
class GoogleFirebaseAppcheckV1ListResourcePoliciesResponse {
  /// If the result list is too large to fit in a single response, then a token
  /// is returned.
  ///
  /// If the string is empty or omitted, then this response is the last page of
  /// results. This token can be used in a subsequent call to
  /// ListResourcePolicies to find the next group of ResourcePolicy objects.
  /// Page tokens are short-lived and should not be persisted.
  core.String? nextPageToken;

  /// The ResourcePolicy objects retrieved.
  core.List<GoogleFirebaseAppcheckV1ResourcePolicy>? resourcePolicies;

  GoogleFirebaseAppcheckV1ListResourcePoliciesResponse({
    this.nextPageToken,
    this.resourcePolicies,
  });

  GoogleFirebaseAppcheckV1ListResourcePoliciesResponse.fromJson(core.Map json_)
    : this(
        nextPageToken: json_['nextPageToken'] as core.String?,
        resourcePolicies:
            (json_['resourcePolicies'] as core.List?)
                ?.map(
                  (value) => GoogleFirebaseAppcheckV1ResourcePolicy.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (nextPageToken != null) 'nextPageToken': nextPageToken!,
    if (resourcePolicies != null) 'resourcePolicies': resourcePolicies!,
  };
}

/// Response message for the ListServices method.
class GoogleFirebaseAppcheckV1ListServicesResponse {
  /// If the result list is too large to fit in a single response, then a token
  /// is returned.
  ///
  /// If the string is empty or omitted, then this response is the last page of
  /// results. This token can be used in a subsequent call to ListServices to
  /// find the next group of Services. Page tokens are short-lived and should
  /// not be persisted.
  core.String? nextPageToken;

  /// The Services retrieved.
  core.List<GoogleFirebaseAppcheckV1Service>? services;

  GoogleFirebaseAppcheckV1ListServicesResponse({
    this.nextPageToken,
    this.services,
  });

  GoogleFirebaseAppcheckV1ListServicesResponse.fromJson(core.Map json_)
    : this(
        nextPageToken: json_['nextPageToken'] as core.String?,
        services:
            (json_['services'] as core.List?)
                ?.map(
                  (value) => GoogleFirebaseAppcheckV1Service.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
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
class GoogleFirebaseAppcheckV1PlayIntegrityConfig {
  /// Specifies account requirements for Android devices running your app.
  ///
  /// These settings correspond to requirements on the \[**account details**
  /// field\](https://developer.android.com/google/play/integrity/verdicts#account-details-field)
  /// obtained from the Play Integrity API. See the
  /// [default responses table](https://developer.android.com/google/play/integrity/setup#default)
  /// for a quick summary. The default values for these settings work for most
  /// apps, and are recommended.
  GoogleFirebaseAppcheckV1PlayIntegrityConfigAccountDetails? accountDetails;

  /// Specifies application integrity requirements for Android devices running
  /// your app.
  ///
  /// These settings correspond to requirements on the \[**application
  /// integrity**
  /// field\](https://developer.android.com/google/play/integrity/verdicts#application-integrity-field)
  /// obtained from the Play Integrity API. See the
  /// [default responses table](https://developer.android.com/google/play/integrity/setup#default)
  /// for a quick summary. The default values for these settings work for most
  /// apps, and are recommended.
  GoogleFirebaseAppcheckV1PlayIntegrityConfigAppIntegrity? appIntegrity;

  /// Specifies device integrity requirements for Android devices running your
  /// app.
  ///
  /// These settings correspond to requirements on the \[**device integrity**
  /// field\](https://developer.android.com/google/play/integrity/verdicts#device-integrity-field)
  /// obtained from the Play Integrity API. See the
  /// [default responses table](https://developer.android.com/google/play/integrity/setup#default)
  /// for a quick summary. Warning: There are also
  /// [conditional](https://developer.android.com/google/play/integrity/setup#conditional)
  /// as well as
  /// [optional](https://developer.android.com/google/play/integrity/setup#optional_device_information)
  /// responses that you can receive, but requires additional explicit opt-in
  /// from you. The App Check API is **not** responsible for any such opt-ins.
  /// The default values for these settings work for most apps, and are
  /// recommended.
  GoogleFirebaseAppcheckV1PlayIntegrityConfigDeviceIntegrity? deviceIntegrity;

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

  GoogleFirebaseAppcheckV1PlayIntegrityConfig({
    this.accountDetails,
    this.appIntegrity,
    this.deviceIntegrity,
    this.name,
    this.tokenTtl,
  });

  GoogleFirebaseAppcheckV1PlayIntegrityConfig.fromJson(core.Map json_)
    : this(
        accountDetails:
            json_.containsKey('accountDetails')
                ? GoogleFirebaseAppcheckV1PlayIntegrityConfigAccountDetails.fromJson(
                  json_['accountDetails']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        appIntegrity:
            json_.containsKey('appIntegrity')
                ? GoogleFirebaseAppcheckV1PlayIntegrityConfigAppIntegrity.fromJson(
                  json_['appIntegrity'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        deviceIntegrity:
            json_.containsKey('deviceIntegrity')
                ? GoogleFirebaseAppcheckV1PlayIntegrityConfigDeviceIntegrity.fromJson(
                  json_['deviceIntegrity']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        name: json_['name'] as core.String?,
        tokenTtl: json_['tokenTtl'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (accountDetails != null) 'accountDetails': accountDetails!,
    if (appIntegrity != null) 'appIntegrity': appIntegrity!,
    if (deviceIntegrity != null) 'deviceIntegrity': deviceIntegrity!,
    if (name != null) 'name': name!,
    if (tokenTtl != null) 'tokenTtl': tokenTtl!,
  };
}

/// A settings object specifying account requirements for Android devices
/// running your app.
///
/// These settings correspond to requirements on the \[**account details**
/// field\](https://developer.android.com/google/play/integrity/verdicts#account-details-field)
/// obtained from the Play Integrity API. See the
/// [default responses table](https://developer.android.com/google/play/integrity/setup#default)
/// for a quick summary. The default values for these settings work for most
/// apps, and are recommended.
class GoogleFirebaseAppcheckV1PlayIntegrityConfigAccountDetails {
  /// Specifies whether the caller must have received the \[`LICENSED`
  /// verdict\](https://developer.android.com/google/play/integrity/verdicts#account-details-field).
  ///
  /// For additional details about scenarios where your users will receive this
  /// `LICENSED` label, see
  /// [the default responses table](https://developer.android.com/google/play/integrity/setup#default).
  /// If set to `true`, apps without the `LICENSED` app licensing verdict will
  /// be rejected. If set to `false`, any app licensing verdict is allowed. The
  /// default value is `false`.
  core.bool? requireLicensed;

  GoogleFirebaseAppcheckV1PlayIntegrityConfigAccountDetails({
    this.requireLicensed,
  });

  GoogleFirebaseAppcheckV1PlayIntegrityConfigAccountDetails.fromJson(
    core.Map json_,
  ) : this(requireLicensed: json_['requireLicensed'] as core.bool?);

  core.Map<core.String, core.dynamic> toJson() => {
    if (requireLicensed != null) 'requireLicensed': requireLicensed!,
  };
}

/// A settings object specifying application integrity requirements for Android
/// devices running your app.
///
/// These settings correspond to requirements on the \[**application integrity**
/// field\](https://developer.android.com/google/play/integrity/verdicts#application-integrity-field)
/// obtained from the Play Integrity API. See the
/// [default responses table](https://developer.android.com/google/play/integrity/setup#default)
/// for a quick summary. The default values for these settings work for most
/// apps, and are recommended.
class GoogleFirebaseAppcheckV1PlayIntegrityConfigAppIntegrity {
  /// Specifies whether your running app is allowed to have the
  /// `UNRECOGNIZED_VERSION`
  /// [app recognition verdict](https://developer.android.com/google/play/integrity/verdicts#application-integrity-field).
  ///
  /// Note that the app recognition verdict `PLAY_RECOGNIZED` is a strong,
  /// comprehensive integrity signal that takes into account various other
  /// signals, including conditional and optional device integrity responses
  /// that you have opted into. If your app is published off-Play, this field
  /// should be set to `true` to allow instances of your app installed from
  /// off-Play sources to function. If set to `false`, only `PLAY_RECOGNIZED`
  /// verdicts are allowed, and both `UNRECOGNIZED_VERSION` and `UNEVALUATED`
  /// will be rejected. If set to `true`, any app recognition verdict is
  /// allowed. The default value is `false`.
  core.bool? allowUnrecognizedVersion;

  GoogleFirebaseAppcheckV1PlayIntegrityConfigAppIntegrity({
    this.allowUnrecognizedVersion,
  });

  GoogleFirebaseAppcheckV1PlayIntegrityConfigAppIntegrity.fromJson(
    core.Map json_,
  ) : this(
        allowUnrecognizedVersion:
            json_['allowUnrecognizedVersion'] as core.bool?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (allowUnrecognizedVersion != null)
      'allowUnrecognizedVersion': allowUnrecognizedVersion!,
  };
}

/// A settings object specifying device integrity requirements for Android
/// devices running your app.
///
/// These settings correspond to requirements on the \[**device integrity**
/// field\](https://developer.android.com/google/play/integrity/verdicts#device-integrity-field)
/// obtained from the Play Integrity API. See the
/// [default responses table](https://developer.android.com/google/play/integrity/setup#default)
/// for a quick summary. Warning: There are also
/// [conditional](https://developer.android.com/google/play/integrity/setup#conditional)
/// as well as
/// [optional](https://developer.android.com/google/play/integrity/setup#optional_device_information)
/// responses that you can receive, but requires additional explicit opt-in from
/// you. The App Check API is **not** responsible for any such opt-ins. The
/// default values for these settings work for most apps, and are recommended.
class GoogleFirebaseAppcheckV1PlayIntegrityConfigDeviceIntegrity {
  /// Specifies the minimum device integrity level in order for the device to be
  /// considered valid.
  ///
  /// Any device with a device recognition verdict lower than this level will be
  /// rejected. If this is unspecified, the default level is `NO_INTEGRITY`.
  /// Possible string values are:
  /// - "DEVICE_RECOGNITION_LEVEL_UNSPECIFIED" : Default value. Do not specify
  /// this value directly. When this default value is detected in a
  /// configuration, the `NO_INTEGRITY` default level takes effect.
  /// - "NO_INTEGRITY" : If this level is set, no explicit device integrity
  /// label requirements will be checked. However, because Play Integrity's
  /// other features may perform (and require) their own intrinsic device
  /// integrity checks, your `app_integrity` and `account_details` settings may
  /// still cause some device integrity checks to be performed.
  /// - "MEETS_BASIC_INTEGRITY" : This level corresponds to the
  /// `MEETS_BASIC_INTEGRITY`
  /// [optional device recognition label](https://developer.android.com/google/play/integrity/verdicts#optional-device-labels).
  /// This value represents the most basic level of device integrity, and is the
  /// minimum allowed in App Check's standard implementation of Play Integrity.
  /// Warning: Because this is an optional response, you **must** first
  /// explicitly
  /// [opt in your app in the Play Console](https://developer.android.com/google/play/integrity/setup#optional)
  /// in order to receive this label. Without this opt-in, **your app may
  /// break** for any user whose device is eligible for `MEETS_BASIC_INTEGRITY`
  /// but not `MEETS_DEVICE_INTEGRITY`. This API is **not** responsible for any
  /// such opt-ins.
  /// - "MEETS_DEVICE_INTEGRITY" : This level corresponds to the
  /// `MEETS_DEVICE_INTEGRITY`
  /// [device recognition verdict](https://developer.android.com/google/play/integrity/verdicts#device-integrity-field).
  /// Any app integrated with Play Integrity will automatically be eligible to
  /// receive this label without any additional action from you. At this level,
  /// devices that have the `MEETS_BASIC_INTEGRITY` label but **not** the
  /// `MEETS_DEVICE_INTEGRITY` label will be rejected.
  /// - "MEETS_STRONG_INTEGRITY" : This level corresponds to the
  /// `MEETS_STRONG_INTEGRITY`
  /// [optional device recognition label](https://developer.android.com/google/play/integrity/verdicts#optional-device-labels).
  /// This value represents the highest level of device integrity. At this
  /// level, devices that have the `MEETS_BASIC_INTEGRITY` or
  /// `MEETS_DEVICE_INTEGRITY` but **not** the `MEETS_STRONG_INTEGRITY` label
  /// will be rejected. Warning: Because this is an optional response, you
  /// **must** first explicitly
  /// [opt in your app in the Play Console](https://developer.android.com/google/play/integrity/setup#optional)
  /// in order to receive this label. Without this opt-in, **your app may
  /// break** for any user whose device is eligible for
  /// `MEETS_STRONG_INTEGRITY`. This API is **not** responsible for any such
  /// opt-ins.
  core.String? minDeviceRecognitionLevel;

  GoogleFirebaseAppcheckV1PlayIntegrityConfigDeviceIntegrity({
    this.minDeviceRecognitionLevel,
  });

  GoogleFirebaseAppcheckV1PlayIntegrityConfigDeviceIntegrity.fromJson(
    core.Map json_,
  ) : this(
        minDeviceRecognitionLevel:
            json_['minDeviceRecognitionLevel'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (minDeviceRecognitionLevel != null)
      'minDeviceRecognitionLevel': minDeviceRecognitionLevel!,
  };
}

/// A JWK as specified by
/// [section 4 of RFC 7517](https://tools.ietf.org/html/rfc7517#section-4) and
/// [section 6.3.1 of RFC 7518](https://tools.ietf.org/html/rfc7518#section-6.3.1).
class GoogleFirebaseAppcheckV1PublicJwk {
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

  GoogleFirebaseAppcheckV1PublicJwk({
    this.alg,
    this.e,
    this.kid,
    this.kty,
    this.n,
    this.use,
  });

  GoogleFirebaseAppcheckV1PublicJwk.fromJson(core.Map json_)
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
class GoogleFirebaseAppcheckV1PublicJwkSet {
  /// The set of public keys.
  ///
  /// See
  /// [section 5.1 of RFC 7517](https://tools.ietf.org/html/rfc7517#section-5).
  core.List<GoogleFirebaseAppcheckV1PublicJwk>? keys;

  GoogleFirebaseAppcheckV1PublicJwkSet({this.keys});

  GoogleFirebaseAppcheckV1PublicJwkSet.fromJson(core.Map json_)
    : this(
        keys:
            (json_['keys'] as core.List?)
                ?.map(
                  (value) => GoogleFirebaseAppcheckV1PublicJwk.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (keys != null) 'keys': keys!,
  };
}

/// An app's reCAPTCHA Enterprise configuration object.
///
/// This configuration is used by ExchangeRecaptchaEnterpriseToken to validate
/// reCAPTCHA tokens issued to apps by reCAPTCHA Enterprise. It also controls
/// certain properties of the returned `AppCheckToken`, such as its ttl.
class GoogleFirebaseAppcheckV1RecaptchaEnterpriseConfig {
  /// The relative resource name of the reCAPTCHA Enterprise configuration
  /// object, in the format: ```
  /// projects/{project_number}/apps/{app_id}/recaptchaEnterpriseConfig ```
  ///
  /// Required.
  core.String? name;

  /// Specifies risk tolerance and requirements for your application.
  ///
  /// These settings correspond to requirements on the
  /// \[**`riskAnalysis`**\](https://cloud.google.com/recaptcha/docs/interpret-assessment-website#interpret_assessment)
  /// tuple in the assessment obtained from reCAPTCHA Enterprise. The default
  /// values for these settings work for most apps, and are recommended.
  GoogleFirebaseAppcheckV1RecaptchaEnterpriseConfigRiskAnalysis? riskAnalysis;

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

  GoogleFirebaseAppcheckV1RecaptchaEnterpriseConfig({
    this.name,
    this.riskAnalysis,
    this.siteKey,
    this.tokenTtl,
  });

  GoogleFirebaseAppcheckV1RecaptchaEnterpriseConfig.fromJson(core.Map json_)
    : this(
        name: json_['name'] as core.String?,
        riskAnalysis:
            json_.containsKey('riskAnalysis')
                ? GoogleFirebaseAppcheckV1RecaptchaEnterpriseConfigRiskAnalysis.fromJson(
                  json_['riskAnalysis'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        siteKey: json_['siteKey'] as core.String?,
        tokenTtl: json_['tokenTtl'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (name != null) 'name': name!,
    if (riskAnalysis != null) 'riskAnalysis': riskAnalysis!,
    if (siteKey != null) 'siteKey': siteKey!,
    if (tokenTtl != null) 'tokenTtl': tokenTtl!,
  };
}

/// A settings object specifying risk tolerance and requirements for your
/// application.
///
/// These settings correspond to requirements on the
/// \[**`riskAnalysis`**\](https://cloud.google.com/recaptcha/docs/interpret-assessment-website#interpret_assessment)
/// tuple in the assessment obtained from reCAPTCHA Enterprise. The default
/// values for these settings work for most apps, and are recommended.
class GoogleFirebaseAppcheckV1RecaptchaEnterpriseConfigRiskAnalysis {
  /// Specifies a minimum score required for a reCAPTCHA token to be considered
  /// valid.
  ///
  /// If its score is greater than or equal to this value, it will be accepted;
  /// otherwise, it will be rejected. The value must be between 0.0 and 1.0. The
  /// default value is 0.5.
  core.double? minValidScore;

  GoogleFirebaseAppcheckV1RecaptchaEnterpriseConfigRiskAnalysis({
    this.minValidScore,
  });

  GoogleFirebaseAppcheckV1RecaptchaEnterpriseConfigRiskAnalysis.fromJson(
    core.Map json_,
  ) : this(minValidScore: (json_['minValidScore'] as core.num?)?.toDouble());

  core.Map<core.String, core.dynamic> toJson() => {
    if (minValidScore != null) 'minValidScore': minValidScore!,
  };
}

/// An app's reCAPTCHA v3 configuration object.
///
/// This configuration is used by ExchangeRecaptchaV3Token to validate reCAPTCHA
/// tokens issued to apps by reCAPTCHA v3. It also controls certain properties
/// of the returned `AppCheckToken`, such as its ttl.
class GoogleFirebaseAppcheckV1RecaptchaV3Config {
  /// Specifies a minimum score required for a reCAPTCHA token to be considered
  /// valid.
  ///
  /// If its score is greater than or equal to this value, it will be accepted;
  /// otherwise, it will be rejected. The value must be between 0.0 and 1.0. The
  /// default value is 0.5.
  core.double? minValidScore;

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

  GoogleFirebaseAppcheckV1RecaptchaV3Config({
    this.minValidScore,
    this.name,
    this.siteSecret,
    this.siteSecretSet,
    this.tokenTtl,
  });

  GoogleFirebaseAppcheckV1RecaptchaV3Config.fromJson(core.Map json_)
    : this(
        minValidScore: (json_['minValidScore'] as core.num?)?.toDouble(),
        name: json_['name'] as core.String?,
        siteSecret: json_['siteSecret'] as core.String?,
        siteSecretSet: json_['siteSecretSet'] as core.bool?,
        tokenTtl: json_['tokenTtl'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (minValidScore != null) 'minValidScore': minValidScore!,
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
class GoogleFirebaseAppcheckV1ResourcePolicy {
  /// The App Check enforcement mode for this resource.
  ///
  /// This will override the EnforcementMode setting on the service.
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

  GoogleFirebaseAppcheckV1ResourcePolicy({
    this.enforcementMode,
    this.etag,
    this.name,
    this.targetResource,
    this.updateTime,
  });

  GoogleFirebaseAppcheckV1ResourcePolicy.fromJson(core.Map json_)
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
/// [Firebase Management Service](https://firebase.google.com/docs/projects/api/reference/rest/v11/projects.androidApps.sha/create).
class GoogleFirebaseAppcheckV1SafetyNetConfig {
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

  GoogleFirebaseAppcheckV1SafetyNetConfig({this.name, this.tokenTtl});

  GoogleFirebaseAppcheckV1SafetyNetConfig.fromJson(core.Map json_)
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
class GoogleFirebaseAppcheckV1Service {
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

  /// The relative resource name of the service configuration object, in the
  /// format: ``` projects/{project_number}/services/{service_id} ``` Note that
  /// the `service_id` element must be a supported service ID.
  ///
  /// Currently, the following service IDs are supported: *
  /// `firebasestorage.googleapis.com` (Cloud Storage for Firebase) *
  /// `firebasedatabase.googleapis.com` (Firebase Realtime Database) *
  /// `firestore.googleapis.com` (Cloud Firestore) * `oauth2.googleapis.com`
  /// (Google Identity for iOS)
  ///
  /// Required.
  core.String? name;

  GoogleFirebaseAppcheckV1Service({this.enforcementMode, this.name});

  GoogleFirebaseAppcheckV1Service.fromJson(core.Map json_)
    : this(
        enforcementMode: json_['enforcementMode'] as core.String?,
        name: json_['name'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (enforcementMode != null) 'enforcementMode': enforcementMode!,
    if (name != null) 'name': name!,
  };
}

/// Request message for the UpdateResourcePolicy method as well as an individual
/// update message for the BatchUpdateResourcePolicies method.
class GoogleFirebaseAppcheckV1UpdateResourcePolicyRequest {
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
  GoogleFirebaseAppcheckV1ResourcePolicy? resourcePolicy;

  /// A comma-separated list of names of fields in the ResourcePolicy to update.
  ///
  /// Example: `enforcement_mode`.
  ///
  /// Required.
  core.String? updateMask;

  GoogleFirebaseAppcheckV1UpdateResourcePolicyRequest({
    this.resourcePolicy,
    this.updateMask,
  });

  GoogleFirebaseAppcheckV1UpdateResourcePolicyRequest.fromJson(core.Map json_)
    : this(
        resourcePolicy:
            json_.containsKey('resourcePolicy')
                ? GoogleFirebaseAppcheckV1ResourcePolicy.fromJson(
                  json_['resourcePolicy']
                      as core.Map<core.String, core.dynamic>,
                )
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
class GoogleFirebaseAppcheckV1UpdateServiceRequest {
  /// The Service to update.
  ///
  /// The Service's `name` field is used to identify the Service to be updated,
  /// in the format: ``` projects/{project_number}/services/{service_id} ```
  /// Note that the `service_id` element must be a supported service ID.
  /// Currently, the following service IDs are supported: *
  /// `firebasestorage.googleapis.com` (Cloud Storage for Firebase) *
  /// `firebasedatabase.googleapis.com` (Firebase Realtime Database) *
  /// `firestore.googleapis.com` (Cloud Firestore) * `oauth2.googleapis.com`
  /// (Google Identity for iOS)
  ///
  /// Required.
  GoogleFirebaseAppcheckV1Service? service;

  /// A comma-separated list of names of fields in the Service to update.
  ///
  /// Example: `enforcement_mode`.
  ///
  /// Required.
  core.String? updateMask;

  GoogleFirebaseAppcheckV1UpdateServiceRequest({this.service, this.updateMask});

  GoogleFirebaseAppcheckV1UpdateServiceRequest.fromJson(core.Map json_)
    : this(
        service:
            json_.containsKey('service')
                ? GoogleFirebaseAppcheckV1Service.fromJson(
                  json_['service'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        updateMask: json_['updateMask'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (service != null) 'service': service!,
    if (updateMask != null) 'updateMask': updateMask!,
  };
}

/// A generic empty message that you can re-use to avoid defining duplicated
/// empty messages in your APIs.
///
/// A typical example is to use it as the request or the response type of an API
/// method. For instance: service Foo { rpc Bar(google.protobuf.Empty) returns
/// (google.protobuf.Empty); }
typedef GoogleProtobufEmpty = $Empty;
