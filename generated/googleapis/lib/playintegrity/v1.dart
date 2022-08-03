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

/// Google Play Integrity API - v1
///
/// Play Integrity
///
/// For more information, see
/// <https://developer.android.com/google/play/integrity>
///
/// Create an instance of [PlayIntegrityApi] to access these resources:
///
/// - [V1Resource]
library playintegrity.v1;

import 'dart:async' as async;
import 'dart:convert' as convert;
import 'dart:core' as core;

import 'package:_discoveryapis_commons/_discoveryapis_commons.dart' as commons;
import 'package:http/http.dart' as http;

import '../src/user_agent.dart';

export 'package:_discoveryapis_commons/_discoveryapis_commons.dart'
    show ApiRequestError, DetailedApiRequestError;

/// Play Integrity
class PlayIntegrityApi {
  /// Private Service: https://www.googleapis.com/auth/playintegrity
  static const playintegrityScope =
      'https://www.googleapis.com/auth/playintegrity';

  final commons.ApiRequester _requester;

  V1Resource get v1 => V1Resource(_requester);

  PlayIntegrityApi(http.Client client,
      {core.String rootUrl = 'https://playintegrity.googleapis.com/',
      core.String servicePath = ''})
      : _requester =
            commons.ApiRequester(client, rootUrl, servicePath, requestHeaders);
}

class V1Resource {
  final commons.ApiRequester _requester;

  V1Resource(commons.ApiRequester client) : _requester = client;

  /// Decodes the integrity token and returns the token payload.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [packageName] - Package name of the app the attached integrity token
  /// belongs to.
  /// Value must have pattern `^\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [DecodeIntegrityTokenResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<DecodeIntegrityTokenResponse> decodeIntegrityToken(
    DecodeIntegrityTokenRequest request,
    core.String packageName, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1/' + core.Uri.encodeFull('$packageName') + ':decodeIntegrityToken';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return DecodeIntegrityTokenResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

/// Contains the account information such as the licensing status for the user
/// in the scope.
class AccountDetails {
  /// Details about the licensing status of the user for the app in the scope.
  ///
  /// Required.
  /// Possible string values are:
  /// - "UNKNOWN" : Play does not have sufficient information to evaluate
  /// licensing details
  /// - "LICENSED" : The app and certificate match the versions distributed by
  /// Play.
  /// - "UNLICENSED" : The certificate or package name does not match Google
  /// Play records.
  /// - "UNEVALUATED" : Licensing details were not evaluated since a necessary
  /// requirement was missed. For example DeviceIntegrity did not meet the
  /// minimum bar or the application was not a known Play version.
  core.String? appLicensingVerdict;

  AccountDetails({
    this.appLicensingVerdict,
  });

  AccountDetails.fromJson(core.Map json_)
      : this(
          appLicensingVerdict: json_.containsKey('appLicensingVerdict')
              ? json_['appLicensingVerdict'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (appLicensingVerdict != null)
          'appLicensingVerdict': appLicensingVerdict!,
      };
}

/// Contains the application integrity information.
class AppIntegrity {
  /// Details about the app recognition verdict
  ///
  /// Required.
  /// Possible string values are:
  /// - "UNKNOWN" : Play does not have sufficient information to evaluate app
  /// integrity
  /// - "PLAY_RECOGNIZED" : The app and certificate match the versions
  /// distributed by Play.
  /// - "UNRECOGNIZED_VERSION" : The certificate or package name does not match
  /// Google Play records.
  /// - "UNEVALUATED" : Application integrity was not evaluated since a
  /// necessary requirement was missed. For example DeviceIntegrity did not meet
  /// the minimum bar.
  core.String? appRecognitionVerdict;

  /// Hex fingerprint of the application signing certificate.
  ///
  /// e.g. “ABCE1F....” Set iff app_recognition_verdict != UNEVALUATED.
  core.List<core.String>? certificateSha256Digest;

  /// Package name of the application under attestation.
  ///
  /// Set iff app_recognition_verdict != UNEVALUATED.
  core.String? packageName;

  /// Version code of the application.
  ///
  /// Set iff app_recognition_verdict != UNEVALUATED.
  core.String? versionCode;

  AppIntegrity({
    this.appRecognitionVerdict,
    this.certificateSha256Digest,
    this.packageName,
    this.versionCode,
  });

  AppIntegrity.fromJson(core.Map json_)
      : this(
          appRecognitionVerdict: json_.containsKey('appRecognitionVerdict')
              ? json_['appRecognitionVerdict'] as core.String
              : null,
          certificateSha256Digest: json_.containsKey('certificateSha256Digest')
              ? (json_['certificateSha256Digest'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          packageName: json_.containsKey('packageName')
              ? json_['packageName'] as core.String
              : null,
          versionCode: json_.containsKey('versionCode')
              ? json_['versionCode'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (appRecognitionVerdict != null)
          'appRecognitionVerdict': appRecognitionVerdict!,
        if (certificateSha256Digest != null)
          'certificateSha256Digest': certificateSha256Digest!,
        if (packageName != null) 'packageName': packageName!,
        if (versionCode != null) 'versionCode': versionCode!,
      };
}

/// Request to decode the integrity token.
class DecodeIntegrityTokenRequest {
  /// Encoded integrity token.
  core.String? integrityToken;

  DecodeIntegrityTokenRequest({
    this.integrityToken,
  });

  DecodeIntegrityTokenRequest.fromJson(core.Map json_)
      : this(
          integrityToken: json_.containsKey('integrityToken')
              ? json_['integrityToken'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (integrityToken != null) 'integrityToken': integrityToken!,
      };
}

/// Response containing the decoded integrity payload.
class DecodeIntegrityTokenResponse {
  /// Plain token payload generated from the decoded integrity token.
  TokenPayloadExternal? tokenPayloadExternal;

  DecodeIntegrityTokenResponse({
    this.tokenPayloadExternal,
  });

  DecodeIntegrityTokenResponse.fromJson(core.Map json_)
      : this(
          tokenPayloadExternal: json_.containsKey('tokenPayloadExternal')
              ? TokenPayloadExternal.fromJson(json_['tokenPayloadExternal']
                  as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (tokenPayloadExternal != null)
          'tokenPayloadExternal': tokenPayloadExternal!,
      };
}

/// Contains the device attestation information.
class DeviceIntegrity {
  /// Details about the integrity of the device the app is running on
  core.List<core.String>? deviceRecognitionVerdict;

  DeviceIntegrity({
    this.deviceRecognitionVerdict,
  });

  DeviceIntegrity.fromJson(core.Map json_)
      : this(
          deviceRecognitionVerdict:
              json_.containsKey('deviceRecognitionVerdict')
                  ? (json_['deviceRecognitionVerdict'] as core.List)
                      .map((value) => value as core.String)
                      .toList()
                  : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (deviceRecognitionVerdict != null)
          'deviceRecognitionVerdict': deviceRecognitionVerdict!,
      };
}

/// Contains the integrity request information.
class RequestDetails {
  /// Nonce that was provided in the request (which is base64 web-safe no-wrap).
  ///
  /// Required.
  core.String? nonce;

  /// Application package name this attestation was requested for.
  ///
  /// Note: This field makes no guarantees or promises on the caller integrity.
  /// For details on application integrity, check application_integrity.
  ///
  /// Required.
  core.String? requestPackageName;

  /// Timestamp, in milliseconds, of the integrity application request.
  ///
  /// Required.
  core.String? timestampMillis;

  RequestDetails({
    this.nonce,
    this.requestPackageName,
    this.timestampMillis,
  });

  RequestDetails.fromJson(core.Map json_)
      : this(
          nonce:
              json_.containsKey('nonce') ? json_['nonce'] as core.String : null,
          requestPackageName: json_.containsKey('requestPackageName')
              ? json_['requestPackageName'] as core.String
              : null,
          timestampMillis: json_.containsKey('timestampMillis')
              ? json_['timestampMillis'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (nonce != null) 'nonce': nonce!,
        if (requestPackageName != null)
          'requestPackageName': requestPackageName!,
        if (timestampMillis != null) 'timestampMillis': timestampMillis!,
      };
}

/// Contains additional information generated for testing responses.
class TestingDetails {
  /// Indicates that the information contained in this payload is a testing
  /// response that is statically overridden for a tester.
  ///
  /// Required.
  core.bool? isTestingResponse;

  TestingDetails({
    this.isTestingResponse,
  });

  TestingDetails.fromJson(core.Map json_)
      : this(
          isTestingResponse: json_.containsKey('isTestingResponse')
              ? json_['isTestingResponse'] as core.bool
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (isTestingResponse != null) 'isTestingResponse': isTestingResponse!,
      };
}

/// Contains basic app information and integrity signals like device attestation
/// and licensing details.
class TokenPayloadExternal {
  /// Details about the Play Store account.
  ///
  /// Required.
  AccountDetails? accountDetails;

  /// Details about the application integrity.
  ///
  /// Required.
  AppIntegrity? appIntegrity;

  /// Details about the device integrity.
  ///
  /// Required.
  DeviceIntegrity? deviceIntegrity;

  /// Details about the integrity request.
  ///
  /// Required.
  RequestDetails? requestDetails;

  /// Indicates that this payload is generated for testing purposes and contains
  /// any additional data that is linked with testing status.
  TestingDetails? testingDetails;

  TokenPayloadExternal({
    this.accountDetails,
    this.appIntegrity,
    this.deviceIntegrity,
    this.requestDetails,
    this.testingDetails,
  });

  TokenPayloadExternal.fromJson(core.Map json_)
      : this(
          accountDetails: json_.containsKey('accountDetails')
              ? AccountDetails.fromJson(json_['accountDetails']
                  as core.Map<core.String, core.dynamic>)
              : null,
          appIntegrity: json_.containsKey('appIntegrity')
              ? AppIntegrity.fromJson(
                  json_['appIntegrity'] as core.Map<core.String, core.dynamic>)
              : null,
          deviceIntegrity: json_.containsKey('deviceIntegrity')
              ? DeviceIntegrity.fromJson(json_['deviceIntegrity']
                  as core.Map<core.String, core.dynamic>)
              : null,
          requestDetails: json_.containsKey('requestDetails')
              ? RequestDetails.fromJson(json_['requestDetails']
                  as core.Map<core.String, core.dynamic>)
              : null,
          testingDetails: json_.containsKey('testingDetails')
              ? TestingDetails.fromJson(json_['testingDetails']
                  as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (accountDetails != null) 'accountDetails': accountDetails!,
        if (appIntegrity != null) 'appIntegrity': appIntegrity!,
        if (deviceIntegrity != null) 'deviceIntegrity': deviceIntegrity!,
        if (requestDetails != null) 'requestDetails': requestDetails!,
        if (testingDetails != null) 'testingDetails': testingDetails!,
      };
}
