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

/// Google Play Integrity API - v1
///
/// The Play Integrity API helps you check that you're interacting with your
/// genuine app on a genuine Android device powered by Google Play services. The
/// Play Integrity API has replaced SafetyNet Attestation and Android Device
/// Verification.
///
/// For more information, see
/// <https://developer.android.com/google/play/integrity>
///
/// Create an instance of [PlayIntegrityApi] to access these resources:
///
/// - [DeviceRecallResource]
/// - [V1Resource]
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

/// The Play Integrity API helps you check that you're interacting with your
/// genuine app on a genuine Android device powered by Google Play services.
///
/// The Play Integrity API has replaced SafetyNet Attestation and Android Device
/// Verification.
class PlayIntegrityApi {
  /// Private Service: https://www.googleapis.com/auth/playintegrity
  static const playintegrityScope =
      'https://www.googleapis.com/auth/playintegrity';

  final commons.ApiRequester _requester;

  DeviceRecallResource get deviceRecall => DeviceRecallResource(_requester);
  V1Resource get v1 => V1Resource(_requester);

  PlayIntegrityApi(
    http.Client client, {
    core.String rootUrl = 'https://playintegrity.googleapis.com/',
    core.String servicePath = '',
  }) : _requester = commons.ApiRequester(
         client,
         rootUrl,
         servicePath,
         requestHeaders,
       );
}

class DeviceRecallResource {
  final commons.ApiRequester _requester;

  DeviceRecallResource(commons.ApiRequester client) : _requester = client;

  /// Writes recall bits for the device where Play Integrity API token is
  /// obtained.
  ///
  /// The endpoint is available to select Play partners in an early access
  /// program (EAP).
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [packageName] - Required. Package name of the app the attached integrity
  /// token belongs to.
  /// Value must have pattern `^\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [WriteDeviceRecallResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<WriteDeviceRecallResponse> write(
    WriteDeviceRecallRequest request,
    core.String packageName, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ =
        'v1/' + core.Uri.encodeFull('$packageName') + '/deviceRecall:write';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return WriteDeviceRecallResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
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
      'fields': ?$fields == null ? null : [$fields],
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
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Decodes the PC integrity token and returns the PC token payload.
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
  /// Completes with a [DecodePcIntegrityTokenResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<DecodePcIntegrityTokenResponse> decodePcIntegrityToken(
    DecodePcIntegrityTokenRequest request,
    core.String packageName, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ =
        'v1/' + core.Uri.encodeFull('$packageName') + ':decodePcIntegrityToken';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return DecodePcIntegrityTokenResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

/// (Restricted Access) Contains a signal helping apps differentiating between
/// likely genuine and likely non-genuine user traffic.
class AccountActivity {
  /// Indicates the activity level of the account.
  ///
  /// Required.
  /// Possible string values are:
  /// - "ACTIVITY_LEVEL_UNSPECIFIED" : Activity level has not been set.
  /// - "UNEVALUATED" : Account activity level is not evaluated.
  /// - "UNUSUAL" : Unusual activity for at least one of the user accounts on
  /// the device.
  /// - "UNKNOWN" : Insufficient activity to verify the user account on the
  /// device.
  /// - "TYPICAL_BASIC" : Typical activity for the user account or accounts on
  /// the device.
  /// - "TYPICAL_STRONG" : Typical for the user account or accounts on the
  /// device, with harder to replicate signals.
  core.String? activityLevel;

  AccountActivity({this.activityLevel});

  AccountActivity.fromJson(core.Map json_)
    : this(activityLevel: json_['activityLevel'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() {
    final activityLevel = this.activityLevel;
    return {'activityLevel': ?activityLevel};
  }
}

/// Contains the account information such as the licensing status for the user
/// in the scope.
class AccountDetails {
  /// (Restricted Access) Details about the account activity for the user in the
  /// scope.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  AccountActivity? accountActivity;

  /// Details about the licensing status of the user for the app in the scope.
  ///
  /// Required.
  /// Possible string values are:
  /// - "UNKNOWN" : Play does not have sufficient information to evaluate
  /// licensing details
  /// - "LICENSED" : The user has a valid license to use the app.
  /// - "UNLICENSED" : The user does not have a valid license to use the app.
  /// - "UNEVALUATED" : Licensing details were not evaluated since a necessary
  /// requirement was missed. For example DeviceIntegrity did not meet the
  /// minimum bar or the application was not a known Play version.
  core.String? appLicensingVerdict;

  AccountDetails({this.accountActivity, this.appLicensingVerdict});

  AccountDetails.fromJson(core.Map json_)
    : this(
        accountActivity: json_.containsKey('accountActivity')
            ? AccountActivity.fromJson(
                json_['accountActivity'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        appLicensingVerdict: json_['appLicensingVerdict'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final accountActivity = this.accountActivity;
    final appLicensingVerdict = this.appLicensingVerdict;
    return {
      'accountActivity': ?accountActivity,
      'appLicensingVerdict': ?appLicensingVerdict,
    };
  }
}

/// Contains signals about others apps on the device which could be used to
/// access or control the requesting app.
class AppAccessRiskVerdict {
  /// List of detected app types signalled for App Access Risk.
  core.List<core.String>? appsDetected;

  AppAccessRiskVerdict({this.appsDetected});

  AppAccessRiskVerdict.fromJson(core.Map json_)
    : this(
        appsDetected: (json_['appsDetected'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final appsDetected = this.appsDetected;
    return {'appsDetected': ?appsDetected};
  }
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

  /// The SHA256 hash of the requesting app's signing certificates (base64
  /// web-safe encoded).
  ///
  /// Set iff app_recognition_verdict != UNEVALUATED.
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
        appRecognitionVerdict: json_['appRecognitionVerdict'] as core.String?,
        certificateSha256Digest:
            (json_['certificateSha256Digest'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        packageName: json_['packageName'] as core.String?,
        versionCode: json_['versionCode'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final appRecognitionVerdict = this.appRecognitionVerdict;
    final certificateSha256Digest = this.certificateSha256Digest;
    final packageName = this.packageName;
    final versionCode = this.versionCode;
    return {
      'appRecognitionVerdict': ?appRecognitionVerdict,
      'certificateSha256Digest': ?certificateSha256Digest,
      'packageName': ?packageName,
      'versionCode': ?versionCode,
    };
  }
}

/// Request to decode the integrity token.
typedef DecodeIntegrityTokenRequest = $IntegrityTokenRequest;

/// Response containing the decoded integrity payload.
class DecodeIntegrityTokenResponse {
  /// Plain token payload generated from the decoded integrity token.
  TokenPayloadExternal? tokenPayloadExternal;

  DecodeIntegrityTokenResponse({this.tokenPayloadExternal});

  DecodeIntegrityTokenResponse.fromJson(core.Map json_)
    : this(
        tokenPayloadExternal: json_.containsKey('tokenPayloadExternal')
            ? TokenPayloadExternal.fromJson(
                json_['tokenPayloadExternal']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final tokenPayloadExternal = this.tokenPayloadExternal;
    return {'tokenPayloadExternal': ?tokenPayloadExternal};
  }
}

/// Request to decode the PC integrity token.
typedef DecodePcIntegrityTokenRequest = $IntegrityTokenRequest;

/// Response containing the decoded PC integrity payload.
class DecodePcIntegrityTokenResponse {
  /// Plain token payload generated from the decoded integrity token.
  PcTokenPayloadExternal? tokenPayloadExternal;

  DecodePcIntegrityTokenResponse({this.tokenPayloadExternal});

  DecodePcIntegrityTokenResponse.fromJson(core.Map json_)
    : this(
        tokenPayloadExternal: json_.containsKey('tokenPayloadExternal')
            ? PcTokenPayloadExternal.fromJson(
                json_['tokenPayloadExternal']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final tokenPayloadExternal = this.tokenPayloadExternal;
    return {'tokenPayloadExternal': ?tokenPayloadExternal};
  }
}

/// Contains information about the device for which the integrity token was
/// generated, e.g. Android SDK version.
class DeviceAttributes {
  /// Android SDK version of the device, as defined in the public Android
  /// documentation:
  /// https://developer.android.com/reference/android/os/Build.VERSION_CODES.
  ///
  /// It won't be set if a necessary requirement was missed. For example
  /// DeviceIntegrity did not meet the minimum bar.
  core.int? sdkVersion;

  DeviceAttributes({this.sdkVersion});

  DeviceAttributes.fromJson(core.Map json_)
    : this(sdkVersion: json_['sdkVersion'] as core.int?);

  core.Map<core.String, core.dynamic> toJson() {
    final sdkVersion = this.sdkVersion;
    return {'sdkVersion': ?sdkVersion};
  }
}

/// Contains the device attestation information.
class DeviceIntegrity {
  /// Attributes of the device where the integrity token was generated.
  DeviceAttributes? deviceAttributes;

  /// Details about the device recall bits set by the developer.
  DeviceRecall? deviceRecall;

  /// Details about the integrity of the device the app is running on.
  core.List<core.String>? deviceRecognitionVerdict;

  /// Contains legacy details about the integrity of the device the app is
  /// running on.
  ///
  /// Only for devices with Android version T or higher and only for apps opted
  /// in to the new verdicts. Only available during the transition period to the
  /// new verdicts system and will be removed afterwards.
  core.List<core.String>? legacyDeviceRecognitionVerdict;

  /// Details about the device activity of the device the app is running on.
  RecentDeviceActivity? recentDeviceActivity;

  DeviceIntegrity({
    this.deviceAttributes,
    this.deviceRecall,
    this.deviceRecognitionVerdict,
    this.legacyDeviceRecognitionVerdict,
    this.recentDeviceActivity,
  });

  DeviceIntegrity.fromJson(core.Map json_)
    : this(
        deviceAttributes: json_.containsKey('deviceAttributes')
            ? DeviceAttributes.fromJson(
                json_['deviceAttributes']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        deviceRecall: json_.containsKey('deviceRecall')
            ? DeviceRecall.fromJson(
                json_['deviceRecall'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        deviceRecognitionVerdict:
            (json_['deviceRecognitionVerdict'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        legacyDeviceRecognitionVerdict:
            (json_['legacyDeviceRecognitionVerdict'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        recentDeviceActivity: json_.containsKey('recentDeviceActivity')
            ? RecentDeviceActivity.fromJson(
                json_['recentDeviceActivity']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final deviceAttributes = this.deviceAttributes;
    final deviceRecall = this.deviceRecall;
    final deviceRecognitionVerdict = this.deviceRecognitionVerdict;
    final legacyDeviceRecognitionVerdict = this.legacyDeviceRecognitionVerdict;
    final recentDeviceActivity = this.recentDeviceActivity;
    return {
      'deviceAttributes': ?deviceAttributes,
      'deviceRecall': ?deviceRecall,
      'deviceRecognitionVerdict': ?deviceRecognitionVerdict,
      'legacyDeviceRecognitionVerdict': ?legacyDeviceRecognitionVerdict,
      'recentDeviceActivity': ?recentDeviceActivity,
    };
  }
}

/// Contains the recall bits per device set by the developer.
class DeviceRecall {
  /// Contains the recall bits values.
  ///
  /// Required.
  Values? values;

  /// Contains the recall bits write dates.
  ///
  /// Required.
  WriteDates? writeDates;

  DeviceRecall({this.values, this.writeDates});

  DeviceRecall.fromJson(core.Map json_)
    : this(
        values: json_.containsKey('values')
            ? Values.fromJson(
                json_['values'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        writeDates: json_.containsKey('writeDates')
            ? WriteDates.fromJson(
                json_['writeDates'] as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final values = this.values;
    final writeDates = this.writeDates;
    return {'values': ?values, 'writeDates': ?writeDates};
  }
}

/// Contains information about the environment Play Integrity API runs in, e.g.
/// Play Protect verdict.
class EnvironmentDetails {
  /// The evaluation of the App Access Risk verdicts.
  AppAccessRiskVerdict? appAccessRiskVerdict;

  /// The evaluation of Play Protect verdict.
  /// Possible string values are:
  /// - "PLAY_PROTECT_VERDICT_UNSPECIFIED" : Play Protect verdict has not been
  /// set.
  /// - "UNEVALUATED" : Play Protect state was not evaluated. Device may not be
  /// trusted.
  /// - "NO_ISSUES" : Play Protect is on and no issues found.
  /// - "NO_DATA" : Play Protect is on but no scan has been performed yet. The
  /// device or Play Store app may have been reset.
  /// - "MEDIUM_RISK" : Play Protect is on and warnings found.
  /// - "HIGH_RISK" : Play Protect is on and high severity issues found.
  /// - "POSSIBLE_RISK" : Play Protect is turned off. Turn on Play Protect.
  core.String? playProtectVerdict;

  EnvironmentDetails({this.appAccessRiskVerdict, this.playProtectVerdict});

  EnvironmentDetails.fromJson(core.Map json_)
    : this(
        appAccessRiskVerdict: json_.containsKey('appAccessRiskVerdict')
            ? AppAccessRiskVerdict.fromJson(
                json_['appAccessRiskVerdict']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        playProtectVerdict: json_['playProtectVerdict'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final appAccessRiskVerdict = this.appAccessRiskVerdict;
    final playProtectVerdict = this.playProtectVerdict;
    return {
      'appAccessRiskVerdict': ?appAccessRiskVerdict,
      'playProtectVerdict': ?playProtectVerdict,
    };
  }
}

/// Contains the account information such as the licensing status for the user
/// in the scope.
class PcAccountDetails {
  /// Details about the licensing status of the user for the app in the scope.
  ///
  /// Required.
  /// Possible string values are:
  /// - "UNKNOWN" : Play does not have sufficient information to evaluate
  /// licensing details
  /// - "LICENSED" : The user has a valid license to use the app.
  /// - "UNLICENSED" : The user does not have a valid license to use the app.
  /// - "UNEVALUATED" : Licensing details were not evaluated since a necessary
  /// requirement was missed.
  core.String? appLicensingVerdict;

  PcAccountDetails({this.appLicensingVerdict});

  PcAccountDetails.fromJson(core.Map json_)
    : this(appLicensingVerdict: json_['appLicensingVerdict'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() {
    final appLicensingVerdict = this.appLicensingVerdict;
    return {'appLicensingVerdict': ?appLicensingVerdict};
  }
}

/// Contains the device attestation information.
class PcDeviceIntegrity {
  /// Details about the integrity of the device the app is running on.
  core.List<core.String>? deviceRecognitionVerdict;

  PcDeviceIntegrity({this.deviceRecognitionVerdict});

  PcDeviceIntegrity.fromJson(core.Map json_)
    : this(
        deviceRecognitionVerdict:
            (json_['deviceRecognitionVerdict'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final deviceRecognitionVerdict = this.deviceRecognitionVerdict;
    return {'deviceRecognitionVerdict': ?deviceRecognitionVerdict};
  }
}

/// Contains the integrity request information.
class PcRequestDetails {
  /// Request hash that was provided in the request.
  core.String? requestHash;

  /// Application package name this attestation was requested for.
  ///
  /// Note: This field makes no guarantees or promises on the caller integrity.
  ///
  /// Required.
  core.String? requestPackageName;

  /// Timestamp, of the integrity application request.
  ///
  /// Required.
  core.String? requestTime;

  PcRequestDetails({
    this.requestHash,
    this.requestPackageName,
    this.requestTime,
  });

  PcRequestDetails.fromJson(core.Map json_)
    : this(
        requestHash: json_['requestHash'] as core.String?,
        requestPackageName: json_['requestPackageName'] as core.String?,
        requestTime: json_['requestTime'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final requestHash = this.requestHash;
    final requestPackageName = this.requestPackageName;
    final requestTime = this.requestTime;
    return {
      'requestHash': ?requestHash,
      'requestPackageName': ?requestPackageName,
      'requestTime': ?requestTime,
    };
  }
}

/// Contains additional information generated for testing responses.
class PcTestingDetails {
  /// Indicates that the information contained in this payload is a testing
  /// response that is statically overridden for a tester.
  core.bool? isTestingResponse;

  PcTestingDetails({this.isTestingResponse});

  PcTestingDetails.fromJson(core.Map json_)
    : this(isTestingResponse: json_['isTestingResponse'] as core.bool?);

  core.Map<core.String, core.dynamic> toJson() {
    final isTestingResponse = this.isTestingResponse;
    return {'isTestingResponse': ?isTestingResponse};
  }
}

/// Contains PC device attestation details.
class PcTokenPayloadExternal {
  /// Details about the account information such as the licensing status.
  PcAccountDetails? accountDetails;

  /// Details about the device integrity.
  ///
  /// Required.
  PcDeviceIntegrity? deviceIntegrity;

  /// Details about the integrity request.
  ///
  /// Required.
  PcRequestDetails? requestDetails;

  /// Indicates that this payload is generated for testing purposes and contains
  /// any additional data that is linked with testing status.
  PcTestingDetails? testingDetails;

  PcTokenPayloadExternal({
    this.accountDetails,
    this.deviceIntegrity,
    this.requestDetails,
    this.testingDetails,
  });

  PcTokenPayloadExternal.fromJson(core.Map json_)
    : this(
        accountDetails: json_.containsKey('accountDetails')
            ? PcAccountDetails.fromJson(
                json_['accountDetails'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        deviceIntegrity: json_.containsKey('deviceIntegrity')
            ? PcDeviceIntegrity.fromJson(
                json_['deviceIntegrity'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        requestDetails: json_.containsKey('requestDetails')
            ? PcRequestDetails.fromJson(
                json_['requestDetails'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        testingDetails: json_.containsKey('testingDetails')
            ? PcTestingDetails.fromJson(
                json_['testingDetails'] as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final accountDetails = this.accountDetails;
    final deviceIntegrity = this.deviceIntegrity;
    final requestDetails = this.requestDetails;
    final testingDetails = this.testingDetails;
    return {
      'accountDetails': ?accountDetails,
      'deviceIntegrity': ?deviceIntegrity,
      'requestDetails': ?requestDetails,
      'testingDetails': ?testingDetails,
    };
  }
}

/// Recent device activity can help developers identify devices that have
/// exhibited hyperactive attestation activity, which could be a sign of an
/// attack or token farming.
class RecentDeviceActivity {
  /// Indicates the activity level of the device.
  ///
  /// Required.
  /// Possible string values are:
  /// - "DEVICE_ACTIVITY_LEVEL_UNSPECIFIED" : Device activity level has not been
  /// set.
  /// - "UNEVALUATED" : Device activity level has not been evaluated.
  /// - "LEVEL_1" : Indicates the amount of used tokens. See the documentation
  /// for details.
  /// - "LEVEL_2" : Indicates the amount of used tokens. See the documentation
  /// for details.
  /// - "LEVEL_3" : Indicates the amount of used tokens. See the documentation
  /// for details.
  /// - "LEVEL_4" : Indicates the amount of used tokens. See the documentation
  /// for details.
  core.String? deviceActivityLevel;

  RecentDeviceActivity({this.deviceActivityLevel});

  RecentDeviceActivity.fromJson(core.Map json_)
    : this(deviceActivityLevel: json_['deviceActivityLevel'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() {
    final deviceActivityLevel = this.deviceActivityLevel;
    return {'deviceActivityLevel': ?deviceActivityLevel};
  }
}

/// Contains the integrity request information.
class RequestDetails {
  /// Nonce that was provided in the request (which is base64 web-safe no-wrap).
  core.String? nonce;

  /// Request hash that was provided in the request.
  core.String? requestHash;

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
    this.requestHash,
    this.requestPackageName,
    this.timestampMillis,
  });

  RequestDetails.fromJson(core.Map json_)
    : this(
        nonce: json_['nonce'] as core.String?,
        requestHash: json_['requestHash'] as core.String?,
        requestPackageName: json_['requestPackageName'] as core.String?,
        timestampMillis: json_['timestampMillis'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final nonce = this.nonce;
    final requestHash = this.requestHash;
    final requestPackageName = this.requestPackageName;
    final timestampMillis = this.timestampMillis;
    return {
      'nonce': ?nonce,
      'requestHash': ?requestHash,
      'requestPackageName': ?requestPackageName,
      'timestampMillis': ?timestampMillis,
    };
  }
}

/// Contains additional information generated for testing responses.
class TestingDetails {
  /// Indicates that the information contained in this payload is a testing
  /// response that is statically overridden for a tester.
  ///
  /// Required.
  core.bool? isTestingResponse;

  TestingDetails({this.isTestingResponse});

  TestingDetails.fromJson(core.Map json_)
    : this(isTestingResponse: json_['isTestingResponse'] as core.bool?);

  core.Map<core.String, core.dynamic> toJson() {
    final isTestingResponse = this.isTestingResponse;
    return {'isTestingResponse': ?isTestingResponse};
  }
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

  /// Details of the environment Play Integrity API runs in.
  EnvironmentDetails? environmentDetails;

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
    this.environmentDetails,
    this.requestDetails,
    this.testingDetails,
  });

  TokenPayloadExternal.fromJson(core.Map json_)
    : this(
        accountDetails: json_.containsKey('accountDetails')
            ? AccountDetails.fromJson(
                json_['accountDetails'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        appIntegrity: json_.containsKey('appIntegrity')
            ? AppIntegrity.fromJson(
                json_['appIntegrity'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        deviceIntegrity: json_.containsKey('deviceIntegrity')
            ? DeviceIntegrity.fromJson(
                json_['deviceIntegrity'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        environmentDetails: json_.containsKey('environmentDetails')
            ? EnvironmentDetails.fromJson(
                json_['environmentDetails']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        requestDetails: json_.containsKey('requestDetails')
            ? RequestDetails.fromJson(
                json_['requestDetails'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        testingDetails: json_.containsKey('testingDetails')
            ? TestingDetails.fromJson(
                json_['testingDetails'] as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final accountDetails = this.accountDetails;
    final appIntegrity = this.appIntegrity;
    final deviceIntegrity = this.deviceIntegrity;
    final environmentDetails = this.environmentDetails;
    final requestDetails = this.requestDetails;
    final testingDetails = this.testingDetails;
    return {
      'accountDetails': ?accountDetails,
      'appIntegrity': ?appIntegrity,
      'deviceIntegrity': ?deviceIntegrity,
      'environmentDetails': ?environmentDetails,
      'requestDetails': ?requestDetails,
      'testingDetails': ?testingDetails,
    };
  }
}

/// Contains the recall bits values.
class Values {
  /// First recall bit value.
  ///
  /// Required.
  core.bool? bitFirst;

  /// Second recall bit value.
  ///
  /// Required.
  core.bool? bitSecond;

  /// Third recall bit value.
  ///
  /// Required.
  core.bool? bitThird;

  Values({this.bitFirst, this.bitSecond, this.bitThird});

  Values.fromJson(core.Map json_)
    : this(
        bitFirst: json_['bitFirst'] as core.bool?,
        bitSecond: json_['bitSecond'] as core.bool?,
        bitThird: json_['bitThird'] as core.bool?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final bitFirst = this.bitFirst;
    final bitSecond = this.bitSecond;
    final bitThird = this.bitThird;
    return {
      'bitFirst': ?bitFirst,
      'bitSecond': ?bitSecond,
      'bitThird': ?bitThird,
    };
  }
}

/// Contains the recall bits write dates.
class WriteDates {
  /// Write time in YYYYMM format (in UTC, e.g. 202402) for the first bit.
  ///
  /// Note that this value won't be set if the first bit is false.
  ///
  /// Optional.
  core.int? yyyymmFirst;

  /// Write time in YYYYMM format (in UTC, e.g. 202402) for the second bit.
  ///
  /// Note that this value won't be set if the second bit is false.
  ///
  /// Optional.
  core.int? yyyymmSecond;

  /// Write time in YYYYMM format (in UTC, e.g. 202402) for the third bit.
  ///
  /// Note that this value won't be set if the third bit is false.
  ///
  /// Optional.
  core.int? yyyymmThird;

  WriteDates({this.yyyymmFirst, this.yyyymmSecond, this.yyyymmThird});

  WriteDates.fromJson(core.Map json_)
    : this(
        yyyymmFirst: json_['yyyymmFirst'] as core.int?,
        yyyymmSecond: json_['yyyymmSecond'] as core.int?,
        yyyymmThird: json_['yyyymmThird'] as core.int?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final yyyymmFirst = this.yyyymmFirst;
    final yyyymmSecond = this.yyyymmSecond;
    final yyyymmThird = this.yyyymmThird;
    return {
      'yyyymmFirst': ?yyyymmFirst,
      'yyyymmSecond': ?yyyymmSecond,
      'yyyymmThird': ?yyyymmThird,
    };
  }
}

/// Request to write device recall bits.
class WriteDeviceRecallRequest {
  /// Integrity token obtained from calling Play Integrity API.
  ///
  /// Required.
  core.String? integrityToken;

  /// The new values for the device recall bits to be written.
  ///
  /// Required.
  Values? newValues;

  WriteDeviceRecallRequest({this.integrityToken, this.newValues});

  WriteDeviceRecallRequest.fromJson(core.Map json_)
    : this(
        integrityToken: json_['integrityToken'] as core.String?,
        newValues: json_.containsKey('newValues')
            ? Values.fromJson(
                json_['newValues'] as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final integrityToken = this.integrityToken;
    final newValues = this.newValues;
    return {'integrityToken': ?integrityToken, 'newValues': ?newValues};
  }
}

/// Response for the Write Device Recall action.
///
/// Currently empty.
typedef WriteDeviceRecallResponse = $Empty;
