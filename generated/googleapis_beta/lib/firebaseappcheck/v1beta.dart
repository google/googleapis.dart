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

/// Firebase App Check API - v1beta
///
/// App Check works alongside other Firebase services to help protect your
/// backend resources from abuse, such as billing fraud or phishing. With App
/// Check, devices running your app will use an app or device attestation
/// provider that attests to one or both of the following: * Requests originate
/// from your authentic app * Requests originate from an authentic, untampered
/// device This attestation is attached to every request your app makes to your
/// Firebase backend resources. The Firebase App Check REST API allows you to
/// manage your App Check configurations programmatically. It also allows you to
/// exchange attestation material for App Check tokens directly without using a
/// Firebase SDK. Finally, it allows you to obtain the public key set necessary
/// to validate an App Check token yourself.
/// [Learn more about App Check](https://firebase.google.com/docs/app-check).
///
/// For more information, see <https://firebase.google.com/docs/app-check>
///
/// Create an instance of [FirebaseappcheckApi] to access these resources:
///
/// - [JwksResource]
/// - [ProjectsResource]
///   - [ProjectsAppsResource]
///     - [ProjectsAppsAppAttestConfigResource]
///     - [ProjectsAppsDebugTokensResource]
///     - [ProjectsAppsDeviceCheckConfigResource]
///     - [ProjectsAppsRecaptchaConfigResource]
///     - [ProjectsAppsSafetyNetConfigResource]
///   - [ProjectsServicesResource]
library firebaseappcheck.v1beta;

import 'dart:async' as async;
import 'dart:convert' as convert;
import 'dart:core' as core;

import 'package:_discoveryapis_commons/_discoveryapis_commons.dart' as commons;
import 'package:http/http.dart' as http;

import '../src/empty.dart';
import '../src/user_agent.dart';

export 'package:_discoveryapis_commons/_discoveryapis_commons.dart'
    show ApiRequestError, DetailedApiRequestError;

/// App Check works alongside other Firebase services to help protect your
/// backend resources from abuse, such as billing fraud or phishing.
///
/// With App Check, devices running your app will use an app or device
/// attestation provider that attests to one or both of the following: *
/// Requests originate from your authentic app * Requests originate from an
/// authentic, untampered device This attestation is attached to every request
/// your app makes to your Firebase backend resources. The Firebase App Check
/// REST API allows you to manage your App Check configurations
/// programmatically. It also allows you to exchange attestation material for
/// App Check tokens directly without using a Firebase SDK. Finally, it allows
/// you to obtain the public key set necessary to validate an App Check token
/// yourself.
/// [Learn more about App Check](https://firebase.google.com/docs/app-check).
class FirebaseappcheckApi {
  /// See, edit, configure, and delete your Google Cloud data and see the email
  /// address for your Google Account.
  static const cloudPlatformScope =
      'https://www.googleapis.com/auth/cloud-platform';

  /// View and administer all your Firebase data and settings
  static const firebaseScope = 'https://www.googleapis.com/auth/firebase';

  final commons.ApiRequester _requester;

  JwksResource get jwks => JwksResource(_requester);
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
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1beta/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return GoogleFirebaseAppcheckV1betaPublicJwkSet.fromJson(
        _response as core.Map<core.String, core.dynamic>);
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
  ProjectsAppsRecaptchaConfigResource get recaptchaConfig =>
      ProjectsAppsRecaptchaConfigResource(_requester);
  ProjectsAppsSafetyNetConfigResource get safetyNetConfig =>
      ProjectsAppsSafetyNetConfigResource(_requester);

  ProjectsAppsResource(commons.ApiRequester client) : _requester = client;

  /// Accepts a AppAttest Artifact and Assertion, and uses the developer's
  /// preconfigured auth token to verify the token with Apple.
  ///
  /// Returns an AttestationToken with the App ID as specified by the `app`
  /// field included as attested claims.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [app] - Required. The full resource name to the iOS App. Format:
  /// "projects/{project_id}/apps/{app_id}"
  /// Value must have pattern `^projects/\[^/\]+/apps/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleFirebaseAppcheckV1betaAttestationTokenResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleFirebaseAppcheckV1betaAttestationTokenResponse>
      exchangeAppAttestAssertion(
    GoogleFirebaseAppcheckV1betaExchangeAppAttestAssertionRequest request,
    core.String app, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url =
        'v1beta/' + core.Uri.encodeFull('$app') + ':exchangeAppAttestAssertion';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return GoogleFirebaseAppcheckV1betaAttestationTokenResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Accepts a AppAttest CBOR Attestation, and uses the developer's
  /// preconfigured team and bundle IDs to verify the token with Apple.
  ///
  /// Returns an Attestation Artifact that can later be exchanged for an
  /// AttestationToken in ExchangeAppAttestAssertion.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [app] - Required. The full resource name to the iOS App. Format:
  /// "projects/{project_id}/apps/{app_id}"
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
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1beta/' +
        core.Uri.encodeFull('$app') +
        ':exchangeAppAttestAttestation';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return GoogleFirebaseAppcheckV1betaExchangeAppAttestAttestationResponse
        .fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Validates a custom token signed using your project's Admin SDK service
  /// account credentials.
  ///
  /// If valid, returns an App Check token encapsulated in an
  /// AttestationTokenResponse.
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
  /// Completes with a [GoogleFirebaseAppcheckV1betaAttestationTokenResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleFirebaseAppcheckV1betaAttestationTokenResponse>
      exchangeCustomToken(
    GoogleFirebaseAppcheckV1betaExchangeCustomTokenRequest request,
    core.String app, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url =
        'v1beta/' + core.Uri.encodeFull('$app') + ':exchangeCustomToken';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return GoogleFirebaseAppcheckV1betaAttestationTokenResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Validates a debug token secret that you have previously created using
  /// CreateDebugToken.
  ///
  /// If valid, returns an App Check token encapsulated in an
  /// AttestationTokenResponse. Note that a restrictive quota is enforced on
  /// this method to prevent accidental exposure of the app to abuse.
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
  /// Completes with a [GoogleFirebaseAppcheckV1betaAttestationTokenResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleFirebaseAppcheckV1betaAttestationTokenResponse>
      exchangeDebugToken(
    GoogleFirebaseAppcheckV1betaExchangeDebugTokenRequest request,
    core.String app, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url =
        'v1beta/' + core.Uri.encodeFull('$app') + ':exchangeDebugToken';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return GoogleFirebaseAppcheckV1betaAttestationTokenResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Accepts a
  /// \[`device_token`\](https://developer.apple.com/documentation/devicecheck/dcdevice)
  /// issued by DeviceCheck, and attempts to validate it with Apple.
  ///
  /// If valid, returns an App Check token encapsulated in an
  /// AttestationTokenResponse.
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
  /// Completes with a [GoogleFirebaseAppcheckV1betaAttestationTokenResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleFirebaseAppcheckV1betaAttestationTokenResponse>
      exchangeDeviceCheckToken(
    GoogleFirebaseAppcheckV1betaExchangeDeviceCheckTokenRequest request,
    core.String app, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url =
        'v1beta/' + core.Uri.encodeFull('$app') + ':exchangeDeviceCheckToken';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return GoogleFirebaseAppcheckV1betaAttestationTokenResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Validates a
  /// [reCAPTCHA v3 response token](https://developers.google.com/recaptcha/docs/v3).
  ///
  /// If valid, returns an App Check token encapsulated in an
  /// AttestationTokenResponse.
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
  /// Completes with a [GoogleFirebaseAppcheckV1betaAttestationTokenResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleFirebaseAppcheckV1betaAttestationTokenResponse>
      exchangeRecaptchaToken(
    GoogleFirebaseAppcheckV1betaExchangeRecaptchaTokenRequest request,
    core.String app, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url =
        'v1beta/' + core.Uri.encodeFull('$app') + ':exchangeRecaptchaToken';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return GoogleFirebaseAppcheckV1betaAttestationTokenResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Validates a
  /// [SafetyNet token](https://developer.android.com/training/safetynet/attestation#request-attestation-step).
  ///
  /// If valid, returns an App Check token encapsulated in an
  /// AttestationTokenResponse.
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
  /// Completes with a [GoogleFirebaseAppcheckV1betaAttestationTokenResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleFirebaseAppcheckV1betaAttestationTokenResponse>
      exchangeSafetyNetToken(
    GoogleFirebaseAppcheckV1betaExchangeSafetyNetTokenRequest request,
    core.String app, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url =
        'v1beta/' + core.Uri.encodeFull('$app') + ':exchangeSafetyNetToken';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return GoogleFirebaseAppcheckV1betaAttestationTokenResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Initiates the App Attest flow by generating a challenge which will be used
  /// as a type of nonce for this attestation.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [app] - Required. The full resource name to the iOS App. Format:
  /// "projects/{project_id}/apps/{app_id}"
  /// Value must have pattern `^projects/\[^/\]+/apps/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleFirebaseAppcheckV1betaAppAttestChallengeResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleFirebaseAppcheckV1betaAppAttestChallengeResponse>
      generateAppAttestChallenge(
    GoogleFirebaseAppcheckV1betaGenerateAppAttestChallengeRequest request,
    core.String app, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url =
        'v1beta/' + core.Uri.encodeFull('$app') + ':generateAppAttestChallenge';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return GoogleFirebaseAppcheckV1betaAppAttestChallengeResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsAppsAppAttestConfigResource {
  final commons.ApiRequester _requester;

  ProjectsAppsAppAttestConfigResource(commons.ApiRequester client)
      : _requester = client;

  /// Gets the AppAttestConfigs for the specified list of apps atomically.
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
    final _queryParams = <core.String, core.List<core.String>>{
      if (names != null) 'names': names,
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1beta/' +
        core.Uri.encodeFull('$parent') +
        '/apps/-/appAttestConfig:batchGet';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return GoogleFirebaseAppcheckV1betaBatchGetAppAttestConfigsResponse
        .fromJson(_response as core.Map<core.String, core.dynamic>);
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
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1beta/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return GoogleFirebaseAppcheckV1betaAppAttestConfig.fromJson(
        _response as core.Map<core.String, core.dynamic>);
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
  /// AppAttestConfig Gets to update. Example: `token_ttl`.
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
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if (updateMask != null) 'updateMask': [updateMask],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1beta/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'PATCH',
      body: _body,
      queryParams: _queryParams,
    );
    return GoogleFirebaseAppcheckV1betaAppAttestConfig.fromJson(
        _response as core.Map<core.String, core.dynamic>);
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
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1beta/' + core.Uri.encodeFull('$parent') + '/debugTokens';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return GoogleFirebaseAppcheckV1betaDebugToken.fromJson(
        _response as core.Map<core.String, core.dynamic>);
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
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1beta/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'DELETE',
      queryParams: _queryParams,
    );
    return GoogleProtobufEmpty.fromJson(
        _response as core.Map<core.String, core.dynamic>);
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
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1beta/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return GoogleFirebaseAppcheckV1betaDebugToken.fromJson(
        _response as core.Map<core.String, core.dynamic>);
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
    final _queryParams = <core.String, core.List<core.String>>{
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1beta/' + core.Uri.encodeFull('$parent') + '/debugTokens';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return GoogleFirebaseAppcheckV1betaListDebugTokensResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
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
  /// [name] - The relative resource name of the debug token, in the format: ```
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
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if (updateMask != null) 'updateMask': [updateMask],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1beta/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'PATCH',
      body: _body,
      queryParams: _queryParams,
    );
    return GoogleFirebaseAppcheckV1betaDebugToken.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsAppsDeviceCheckConfigResource {
  final commons.ApiRequester _requester;

  ProjectsAppsDeviceCheckConfigResource(commons.ApiRequester client)
      : _requester = client;

  /// Gets the DeviceCheckConfigs for the specified list of apps atomically.
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
    final _queryParams = <core.String, core.List<core.String>>{
      if (names != null) 'names': names,
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1beta/' +
        core.Uri.encodeFull('$parent') +
        '/apps/-/deviceCheckConfig:batchGet';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return GoogleFirebaseAppcheckV1betaBatchGetDeviceCheckConfigsResponse
        .fromJson(_response as core.Map<core.String, core.dynamic>);
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
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1beta/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return GoogleFirebaseAppcheckV1betaDeviceCheckConfig.fromJson(
        _response as core.Map<core.String, core.dynamic>);
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
  /// DeviceCheckConfig Gets to update. Example: `key_id,private_key`.
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
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if (updateMask != null) 'updateMask': [updateMask],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1beta/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'PATCH',
      body: _body,
      queryParams: _queryParams,
    );
    return GoogleFirebaseAppcheckV1betaDeviceCheckConfig.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsAppsRecaptchaConfigResource {
  final commons.ApiRequester _requester;

  ProjectsAppsRecaptchaConfigResource(commons.ApiRequester client)
      : _requester = client;

  /// Gets the RecaptchaConfigs for the specified list of apps atomically.
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
  async.Future<GoogleFirebaseAppcheckV1betaBatchGetRecaptchaConfigsResponse>
      batchGet(
    core.String parent, {
    core.List<core.String>? names,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (names != null) 'names': names,
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1beta/' +
        core.Uri.encodeFull('$parent') +
        '/apps/-/recaptchaConfig:batchGet';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return GoogleFirebaseAppcheckV1betaBatchGetRecaptchaConfigsResponse
        .fromJson(_response as core.Map<core.String, core.dynamic>);
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
  async.Future<GoogleFirebaseAppcheckV1betaRecaptchaConfig> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1beta/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return GoogleFirebaseAppcheckV1betaRecaptchaConfig.fromJson(
        _response as core.Map<core.String, core.dynamic>);
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
  async.Future<GoogleFirebaseAppcheckV1betaRecaptchaConfig> patch(
    GoogleFirebaseAppcheckV1betaRecaptchaConfig request,
    core.String name, {
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if (updateMask != null) 'updateMask': [updateMask],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1beta/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'PATCH',
      body: _body,
      queryParams: _queryParams,
    );
    return GoogleFirebaseAppcheckV1betaRecaptchaConfig.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsAppsSafetyNetConfigResource {
  final commons.ApiRequester _requester;

  ProjectsAppsSafetyNetConfigResource(commons.ApiRequester client)
      : _requester = client;

  /// Gets the SafetyNetConfigs for the specified list of apps atomically.
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
  async.Future<GoogleFirebaseAppcheckV1betaBatchGetSafetyNetConfigsResponse>
      batchGet(
    core.String parent, {
    core.List<core.String>? names,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (names != null) 'names': names,
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1beta/' +
        core.Uri.encodeFull('$parent') +
        '/apps/-/safetyNetConfig:batchGet';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return GoogleFirebaseAppcheckV1betaBatchGetSafetyNetConfigsResponse
        .fromJson(_response as core.Map<core.String, core.dynamic>);
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
  async.Future<GoogleFirebaseAppcheckV1betaSafetyNetConfig> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1beta/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return GoogleFirebaseAppcheckV1betaSafetyNetConfig.fromJson(
        _response as core.Map<core.String, core.dynamic>);
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
  /// SafetyNetConfig Gets to update. Example: `token_ttl`.
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
  async.Future<GoogleFirebaseAppcheckV1betaSafetyNetConfig> patch(
    GoogleFirebaseAppcheckV1betaSafetyNetConfig request,
    core.String name, {
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if (updateMask != null) 'updateMask': [updateMask],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1beta/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'PATCH',
      body: _body,
      queryParams: _queryParams,
    );
    return GoogleFirebaseAppcheckV1betaSafetyNetConfig.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsServicesResource {
  final commons.ApiRequester _requester;

  ProjectsServicesResource(commons.ApiRequester client) : _requester = client;

  /// Updates the specified Service configurations atomically.
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
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url =
        'v1beta/' + core.Uri.encodeFull('$parent') + '/services:batchUpdate';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return GoogleFirebaseAppcheckV1betaBatchUpdateServicesResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
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
  /// `firestore.googleapis.com` (Cloud Firestore)
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
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1beta/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return GoogleFirebaseAppcheckV1betaService.fromJson(
        _response as core.Map<core.String, core.dynamic>);
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
    final _queryParams = <core.String, core.List<core.String>>{
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1beta/' + core.Uri.encodeFull('$parent') + '/services';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return GoogleFirebaseAppcheckV1betaListServicesResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
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
  /// `firestore.googleapis.com` (Cloud Firestore)
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
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if (updateMask != null) 'updateMask': [updateMask],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1beta/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'PATCH',
      body: _body,
      queryParams: _queryParams,
    );
    return GoogleFirebaseAppcheckV1betaService.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

/// Response object for GenerateAppAttestChallenge
class GoogleFirebaseAppcheckV1betaAppAttestChallengeResponse {
  /// A one time use challenge for the client to pass to Apple's App Attest API.
  core.String? challenge;
  core.List<core.int> get challengeAsBytes => convert.base64.decode(challenge!);

  set challengeAsBytes(core.List<core.int> _bytes) {
    challenge =
        convert.base64.encode(_bytes).replaceAll('/', '_').replaceAll('+', '-');
  }

  /// The duration from the time this challenge is minted until it is expired.
  ///
  /// This field is intended to ease client-side token management, since the
  /// device may have clock skew, but is still able to accurately measure a
  /// duration. This expiration is intended to minimize the replay window within
  /// which a single challenge may be reused. See AIP 142 for naming of this
  /// field.
  core.String? ttl;

  GoogleFirebaseAppcheckV1betaAppAttestChallengeResponse({
    this.challenge,
    this.ttl,
  });

  GoogleFirebaseAppcheckV1betaAppAttestChallengeResponse.fromJson(
      core.Map _json)
      : this(
          challenge: _json.containsKey('challenge')
              ? _json['challenge'] as core.String
              : null,
          ttl: _json.containsKey('ttl') ? _json['ttl'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (challenge != null) 'challenge': challenge!,
        if (ttl != null) 'ttl': ttl!,
      };
}

/// An app's App Attest configuration object.
///
/// This configuration controls certain properties of the App Check token
/// returned by ExchangeAppAttestAttestation and ExchangeAppAttestAttestation,
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

  GoogleFirebaseAppcheckV1betaAppAttestConfig.fromJson(core.Map _json)
      : this(
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          tokenTtl: _json.containsKey('tokenTtl')
              ? _json['tokenTtl'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (name != null) 'name': name!,
        if (tokenTtl != null) 'tokenTtl': tokenTtl!,
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

  GoogleFirebaseAppcheckV1betaAttestationTokenResponse.fromJson(core.Map _json)
      : this(
          attestationToken: _json.containsKey('attestationToken')
              ? _json['attestationToken'] as core.String
              : null,
          ttl: _json.containsKey('ttl') ? _json['ttl'] as core.String : null,
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
      core.Map _json)
      : this(
          configs: _json.containsKey('configs')
              ? (_json['configs'] as core.List)
                  .map((value) =>
                      GoogleFirebaseAppcheckV1betaAppAttestConfig.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
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
      core.Map _json)
      : this(
          configs: _json.containsKey('configs')
              ? (_json['configs'] as core.List)
                  .map((value) =>
                      GoogleFirebaseAppcheckV1betaDeviceCheckConfig.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
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
      core.Map _json)
      : this(
          configs: _json.containsKey('configs')
              ? (_json['configs'] as core.List)
                  .map((value) =>
                      GoogleFirebaseAppcheckV1betaRecaptchaConfig.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
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
      core.Map _json)
      : this(
          configs: _json.containsKey('configs')
              ? (_json['configs'] as core.List)
                  .map((value) =>
                      GoogleFirebaseAppcheckV1betaSafetyNetConfig.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (configs != null) 'configs': configs!,
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
  /// Example: `display_name`. If this field is present, the `update_mask` field
  /// in the UpdateServiceRequest messages must all match this field, or the
  /// entire batch fails and no updates will be committed.
  ///
  /// Optional.
  core.String? updateMask;

  GoogleFirebaseAppcheckV1betaBatchUpdateServicesRequest({
    this.requests,
    this.updateMask,
  });

  GoogleFirebaseAppcheckV1betaBatchUpdateServicesRequest.fromJson(
      core.Map _json)
      : this(
          requests: _json.containsKey('requests')
              ? (_json['requests'] as core.List)
                  .map((value) =>
                      GoogleFirebaseAppcheckV1betaUpdateServiceRequest.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          updateMask: _json.containsKey('updateMask')
              ? _json['updateMask'] as core.String
              : null,
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
      core.Map _json)
      : this(
          services: _json.containsKey('services')
              ? (_json['services'] as core.List)
                  .map((value) => GoogleFirebaseAppcheckV1betaService.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
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
  core.String? name;

  /// Input only.
  ///
  /// Immutable. The secret token itself. Must be provided during creation, and
  /// must be a UUID4, case insensitive. This field is immutable once set, and
  /// cannot be provided during an UpdateDebugToken request. You can, however,
  /// delete this debug token using DeleteDebugToken to revoke it. For security
  /// reasons, this field will never be populated in any response.
  core.String? token;

  GoogleFirebaseAppcheckV1betaDebugToken({
    this.displayName,
    this.name,
    this.token,
  });

  GoogleFirebaseAppcheckV1betaDebugToken.fromJson(core.Map _json)
      : this(
          displayName: _json.containsKey('displayName')
              ? _json['displayName'] as core.String
              : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          token:
              _json.containsKey('token') ? _json['token'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (displayName != null) 'displayName': displayName!,
        if (name != null) 'name': name!,
        if (token != null) 'token': token!,
      };
}

/// An app's DeviceCheck configuration object.
///
/// This configuration is used by ExchangeDeviceCheckToken to validate device
/// tokens issued to apps by DeviceCheck. It also controls certain properties of
/// the returned App Check token, such as its ttl. Note that the Team ID
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

  GoogleFirebaseAppcheckV1betaDeviceCheckConfig.fromJson(core.Map _json)
      : this(
          keyId:
              _json.containsKey('keyId') ? _json['keyId'] as core.String : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          privateKey: _json.containsKey('privateKey')
              ? _json['privateKey'] as core.String
              : null,
          privateKeySet: _json.containsKey('privateKeySet')
              ? _json['privateKeySet'] as core.bool
              : null,
          tokenTtl: _json.containsKey('tokenTtl')
              ? _json['tokenTtl'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (keyId != null) 'keyId': keyId!,
        if (name != null) 'name': name!,
        if (privateKey != null) 'privateKey': privateKey!,
        if (privateKeySet != null) 'privateKeySet': privateKeySet!,
        if (tokenTtl != null) 'tokenTtl': tokenTtl!,
      };
}

/// Request message for ExchangeAppAttestAssertion
class GoogleFirebaseAppcheckV1betaExchangeAppAttestAssertionRequest {
  /// The artifact previously returned by ExchangeAppAttestAttestation.
  core.String? artifact;
  core.List<core.int> get artifactAsBytes => convert.base64.decode(artifact!);

  set artifactAsBytes(core.List<core.int> _bytes) {
    artifact =
        convert.base64.encode(_bytes).replaceAll('/', '_').replaceAll('+', '-');
  }

  /// The CBOR encoded assertion provided by the Apple App Attest SDK.
  core.String? assertion;
  core.List<core.int> get assertionAsBytes => convert.base64.decode(assertion!);

  set assertionAsBytes(core.List<core.int> _bytes) {
    assertion =
        convert.base64.encode(_bytes).replaceAll('/', '_').replaceAll('+', '-');
  }

  /// A one time challenge returned by GenerateAppAttestChallenge.
  core.String? challenge;
  core.List<core.int> get challengeAsBytes => convert.base64.decode(challenge!);

  set challengeAsBytes(core.List<core.int> _bytes) {
    challenge =
        convert.base64.encode(_bytes).replaceAll('/', '_').replaceAll('+', '-');
  }

  GoogleFirebaseAppcheckV1betaExchangeAppAttestAssertionRequest({
    this.artifact,
    this.assertion,
    this.challenge,
  });

  GoogleFirebaseAppcheckV1betaExchangeAppAttestAssertionRequest.fromJson(
      core.Map _json)
      : this(
          artifact: _json.containsKey('artifact')
              ? _json['artifact'] as core.String
              : null,
          assertion: _json.containsKey('assertion')
              ? _json['assertion'] as core.String
              : null,
          challenge: _json.containsKey('challenge')
              ? _json['challenge'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (artifact != null) 'artifact': artifact!,
        if (assertion != null) 'assertion': assertion!,
        if (challenge != null) 'challenge': challenge!,
      };
}

/// Request message for ExchangeAppAttestAttestation
class GoogleFirebaseAppcheckV1betaExchangeAppAttestAttestationRequest {
  /// The App Attest statement as returned by Apple's client-side App Attest
  /// API.
  ///
  /// This is the CBOR object returned by Apple, which will be Base64 encoded in
  /// the JSON API.
  ///
  /// Required.
  core.String? attestationStatement;
  core.List<core.int> get attestationStatementAsBytes =>
      convert.base64.decode(attestationStatement!);

  set attestationStatementAsBytes(core.List<core.int> _bytes) {
    attestationStatement =
        convert.base64.encode(_bytes).replaceAll('/', '_').replaceAll('+', '-');
  }

  /// The challenge previously generated by the FAC backend.
  ///
  /// Required.
  core.String? challenge;
  core.List<core.int> get challengeAsBytes => convert.base64.decode(challenge!);

  set challengeAsBytes(core.List<core.int> _bytes) {
    challenge =
        convert.base64.encode(_bytes).replaceAll('/', '_').replaceAll('+', '-');
  }

  /// The key ID generated by App Attest for the client app.
  ///
  /// Required.
  core.String? keyId;
  core.List<core.int> get keyIdAsBytes => convert.base64.decode(keyId!);

  set keyIdAsBytes(core.List<core.int> _bytes) {
    keyId =
        convert.base64.encode(_bytes).replaceAll('/', '_').replaceAll('+', '-');
  }

  GoogleFirebaseAppcheckV1betaExchangeAppAttestAttestationRequest({
    this.attestationStatement,
    this.challenge,
    this.keyId,
  });

  GoogleFirebaseAppcheckV1betaExchangeAppAttestAttestationRequest.fromJson(
      core.Map _json)
      : this(
          attestationStatement: _json.containsKey('attestationStatement')
              ? _json['attestationStatement'] as core.String
              : null,
          challenge: _json.containsKey('challenge')
              ? _json['challenge'] as core.String
              : null,
          keyId:
              _json.containsKey('keyId') ? _json['keyId'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (attestationStatement != null)
          'attestationStatement': attestationStatement!,
        if (challenge != null) 'challenge': challenge!,
        if (keyId != null) 'keyId': keyId!,
      };
}

/// Response message for ExchangeAppAttestAttestation and
/// ExchangeAppAttestDebugAttestation
class GoogleFirebaseAppcheckV1betaExchangeAppAttestAttestationResponse {
  /// An artifact that should be passed back during the Assertion flow.
  core.String? artifact;
  core.List<core.int> get artifactAsBytes => convert.base64.decode(artifact!);

  set artifactAsBytes(core.List<core.int> _bytes) {
    artifact =
        convert.base64.encode(_bytes).replaceAll('/', '_').replaceAll('+', '-');
  }

  /// An attestation token which can be used to access Firebase APIs.
  GoogleFirebaseAppcheckV1betaAttestationTokenResponse? attestationToken;

  GoogleFirebaseAppcheckV1betaExchangeAppAttestAttestationResponse({
    this.artifact,
    this.attestationToken,
  });

  GoogleFirebaseAppcheckV1betaExchangeAppAttestAttestationResponse.fromJson(
      core.Map _json)
      : this(
          artifact: _json.containsKey('artifact')
              ? _json['artifact'] as core.String
              : null,
          attestationToken: _json.containsKey('attestationToken')
              ? GoogleFirebaseAppcheckV1betaAttestationTokenResponse.fromJson(
                  _json['attestationToken']
                      as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
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

  GoogleFirebaseAppcheckV1betaExchangeCustomTokenRequest({
    this.customToken,
  });

  GoogleFirebaseAppcheckV1betaExchangeCustomTokenRequest.fromJson(
      core.Map _json)
      : this(
          customToken: _json.containsKey('customToken')
              ? _json['customToken'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (customToken != null) 'customToken': customToken!,
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

  GoogleFirebaseAppcheckV1betaExchangeDebugTokenRequest({
    this.debugToken,
  });

  GoogleFirebaseAppcheckV1betaExchangeDebugTokenRequest.fromJson(core.Map _json)
      : this(
          debugToken: _json.containsKey('debugToken')
              ? _json['debugToken'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (debugToken != null) 'debugToken': debugToken!,
      };
}

/// Request message for the ExchangeDeviceCheckToken method.
class GoogleFirebaseAppcheckV1betaExchangeDeviceCheckTokenRequest {
  /// The `device_token` as returned by Apple's client-side
  /// [DeviceCheck API](https://developer.apple.com/documentation/devicecheck/dcdevice).
  ///
  /// This is the Base64 encoded `Data` (Swift) or `NSData` (ObjC) object.
  ///
  /// Required.
  core.String? deviceToken;

  GoogleFirebaseAppcheckV1betaExchangeDeviceCheckTokenRequest({
    this.deviceToken,
  });

  GoogleFirebaseAppcheckV1betaExchangeDeviceCheckTokenRequest.fromJson(
      core.Map _json)
      : this(
          deviceToken: _json.containsKey('deviceToken')
              ? _json['deviceToken'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (deviceToken != null) 'deviceToken': deviceToken!,
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
      core.Map _json)
      : this(
          recaptchaToken: _json.containsKey('recaptchaToken')
              ? _json['recaptchaToken'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (recaptchaToken != null) 'recaptchaToken': recaptchaToken!,
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
      core.Map _json)
      : this(
          safetyNetToken: _json.containsKey('safetyNetToken')
              ? _json['safetyNetToken'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (safetyNetToken != null) 'safetyNetToken': safetyNetToken!,
      };
}

/// Request message for GenerateAppAttestChallenge
typedef GoogleFirebaseAppcheckV1betaGenerateAppAttestChallengeRequest = $Empty;

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

  GoogleFirebaseAppcheckV1betaListDebugTokensResponse.fromJson(core.Map _json)
      : this(
          debugTokens: _json.containsKey('debugTokens')
              ? (_json['debugTokens'] as core.List)
                  .map((value) =>
                      GoogleFirebaseAppcheckV1betaDebugToken.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          nextPageToken: _json.containsKey('nextPageToken')
              ? _json['nextPageToken'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (debugTokens != null) 'debugTokens': debugTokens!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
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

  GoogleFirebaseAppcheckV1betaListServicesResponse.fromJson(core.Map _json)
      : this(
          nextPageToken: _json.containsKey('nextPageToken')
              ? _json['nextPageToken'] as core.String
              : null,
          services: _json.containsKey('services')
              ? (_json['services'] as core.List)
                  .map((value) => GoogleFirebaseAppcheckV1betaService.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (services != null) 'services': services!,
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

  GoogleFirebaseAppcheckV1betaPublicJwk.fromJson(core.Map _json)
      : this(
          alg: _json.containsKey('alg') ? _json['alg'] as core.String : null,
          e: _json.containsKey('e') ? _json['e'] as core.String : null,
          kid: _json.containsKey('kid') ? _json['kid'] as core.String : null,
          kty: _json.containsKey('kty') ? _json['kty'] as core.String : null,
          n: _json.containsKey('n') ? _json['n'] as core.String : null,
          use: _json.containsKey('use') ? _json['use'] as core.String : null,
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
/// security, the response **must not** be cached for longer than one day.
class GoogleFirebaseAppcheckV1betaPublicJwkSet {
  /// The set of public keys.
  ///
  /// See
  /// [section 5.1 of RFC 7517](https://tools.ietf.org/html/rfc7517#section-5).
  core.List<GoogleFirebaseAppcheckV1betaPublicJwk>? keys;

  GoogleFirebaseAppcheckV1betaPublicJwkSet({
    this.keys,
  });

  GoogleFirebaseAppcheckV1betaPublicJwkSet.fromJson(core.Map _json)
      : this(
          keys: _json.containsKey('keys')
              ? (_json['keys'] as core.List)
                  .map((value) =>
                      GoogleFirebaseAppcheckV1betaPublicJwk.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (keys != null) 'keys': keys!,
      };
}

/// An app's reCAPTCHA v3 configuration object.
///
/// This configuration is used by ExchangeRecaptchaToken to validate reCAPTCHA
/// tokens issued to apps by reCAPTCHA v3. It also controls certain properties
/// of the returned App Check token, such as its ttl.
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

  GoogleFirebaseAppcheckV1betaRecaptchaConfig.fromJson(core.Map _json)
      : this(
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          siteSecret: _json.containsKey('siteSecret')
              ? _json['siteSecret'] as core.String
              : null,
          siteSecretSet: _json.containsKey('siteSecretSet')
              ? _json['siteSecretSet'] as core.bool
              : null,
          tokenTtl: _json.containsKey('tokenTtl')
              ? _json['tokenTtl'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (name != null) 'name': name!,
        if (siteSecret != null) 'siteSecret': siteSecret!,
        if (siteSecretSet != null) 'siteSecretSet': siteSecretSet!,
        if (tokenTtl != null) 'tokenTtl': tokenTtl!,
      };
}

/// An app's SafetyNet configuration object.
///
/// This configuration controls certain properties of the App Check token
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

  GoogleFirebaseAppcheckV1betaSafetyNetConfig.fromJson(core.Map _json)
      : this(
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          tokenTtl: _json.containsKey('tokenTtl')
              ? _json['tokenTtl'] as core.String
              : null,
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
  /// enforced.
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
  /// there are no outdated clients in use.
  core.String? enforcementMode;

  /// The relative resource name of the service configuration object, in the
  /// format: ``` projects/{project_number}/services/{service_id} ``` Note that
  /// the `service_id` element must be a supported service ID.
  ///
  /// Currently, the following service IDs are supported: *
  /// `firebasestorage.googleapis.com` (Cloud Storage for Firebase) *
  /// `firebasedatabase.googleapis.com` (Firebase Realtime Database) *
  /// `firestore.googleapis.com` (Cloud Firestore)
  ///
  /// Required.
  core.String? name;

  GoogleFirebaseAppcheckV1betaService({
    this.enforcementMode,
    this.name,
  });

  GoogleFirebaseAppcheckV1betaService.fromJson(core.Map _json)
      : this(
          enforcementMode: _json.containsKey('enforcementMode')
              ? _json['enforcementMode'] as core.String
              : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (enforcementMode != null) 'enforcementMode': enforcementMode!,
        if (name != null) 'name': name!,
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
  /// `firestore.googleapis.com` (Cloud Firestore)
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

  GoogleFirebaseAppcheckV1betaUpdateServiceRequest.fromJson(core.Map _json)
      : this(
          service: _json.containsKey('service')
              ? GoogleFirebaseAppcheckV1betaService.fromJson(
                  _json['service'] as core.Map<core.String, core.dynamic>)
              : null,
          updateMask: _json.containsKey('updateMask')
              ? _json['updateMask'] as core.String
              : null,
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
/// (google.protobuf.Empty); } The JSON representation for `Empty` is empty JSON
/// object `{}`.
typedef GoogleProtobufEmpty = $Empty;
