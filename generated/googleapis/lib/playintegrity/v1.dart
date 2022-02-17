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
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url =
        'v1/' + core.Uri.encodeFull('$packageName') + ':decodeIntegrityToken';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return DecodeIntegrityTokenResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
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

  AccountDetails.fromJson(core.Map _json)
      : this(
          appLicensingVerdict: _json.containsKey('appLicensingVerdict')
              ? _json['appLicensingVerdict'] as core.String
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

  AppIntegrity.fromJson(core.Map _json)
      : this(
          appRecognitionVerdict: _json.containsKey('appRecognitionVerdict')
              ? _json['appRecognitionVerdict'] as core.String
              : null,
          certificateSha256Digest: _json.containsKey('certificateSha256Digest')
              ? (_json['certificateSha256Digest'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          packageName: _json.containsKey('packageName')
              ? _json['packageName'] as core.String
              : null,
          versionCode: _json.containsKey('versionCode')
              ? _json['versionCode'] as core.String
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

  DecodeIntegrityTokenRequest.fromJson(core.Map _json)
      : this(
          integrityToken: _json.containsKey('integrityToken')
              ? _json['integrityToken'] as core.String
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

  DecodeIntegrityTokenResponse.fromJson(core.Map _json)
      : this(
          tokenPayloadExternal: _json.containsKey('tokenPayloadExternal')
              ? TokenPayloadExternal.fromJson(_json['tokenPayloadExternal']
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

  DeviceIntegrity.fromJson(core.Map _json)
      : this(
          deviceRecognitionVerdict:
              _json.containsKey('deviceRecognitionVerdict')
                  ? (_json['deviceRecognitionVerdict'] as core.List)
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

  RequestDetails.fromJson(core.Map _json)
      : this(
          nonce:
              _json.containsKey('nonce') ? _json['nonce'] as core.String : null,
          requestPackageName: _json.containsKey('requestPackageName')
              ? _json['requestPackageName'] as core.String
              : null,
          timestampMillis: _json.containsKey('timestampMillis')
              ? _json['timestampMillis'] as core.String
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

  TestingDetails.fromJson(core.Map _json)
      : this(
          isTestingResponse: _json.containsKey('isTestingResponse')
              ? _json['isTestingResponse'] as core.bool
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

  TokenPayloadExternal.fromJson(core.Map _json)
      : this(
          accountDetails: _json.containsKey('accountDetails')
              ? AccountDetails.fromJson(_json['accountDetails']
                  as core.Map<core.String, core.dynamic>)
              : null,
          appIntegrity: _json.containsKey('appIntegrity')
              ? AppIntegrity.fromJson(
                  _json['appIntegrity'] as core.Map<core.String, core.dynamic>)
              : null,
          deviceIntegrity: _json.containsKey('deviceIntegrity')
              ? DeviceIntegrity.fromJson(_json['deviceIntegrity']
                  as core.Map<core.String, core.dynamic>)
              : null,
          requestDetails: _json.containsKey('requestDetails')
              ? RequestDetails.fromJson(_json['requestDetails']
                  as core.Map<core.String, core.dynamic>)
              : null,
          testingDetails: _json.containsKey('testingDetails')
              ? TestingDetails.fromJson(_json['testingDetails']
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
