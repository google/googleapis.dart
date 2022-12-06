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

/// Chrome Verified Access API - v2
///
/// API for Verified Access chrome extension to provide credential verification
/// for chrome devices connecting to an enterprise network
///
/// For more information, see
/// <https://developers.google.com/chrome/verified-access>
///
/// Create an instance of [VerifiedaccessApi] to access these resources:
///
/// - [ChallengeResource]
library verifiedaccess.v2;

import 'dart:async' as async;
import 'dart:convert' as convert;
import 'dart:core' as core;

import 'package:_discoveryapis_commons/_discoveryapis_commons.dart' as commons;
import 'package:http/http.dart' as http;

// ignore: deprecated_member_use_from_same_package
import '../shared.dart';
import '../src/user_agent.dart';

export 'package:_discoveryapis_commons/_discoveryapis_commons.dart'
    show ApiRequestError, DetailedApiRequestError;

/// API for Verified Access chrome extension to provide credential verification
/// for chrome devices connecting to an enterprise network
class VerifiedaccessApi {
  /// Verify your enterprise credentials
  static const verifiedaccessScope =
      'https://www.googleapis.com/auth/verifiedaccess';

  final commons.ApiRequester _requester;

  ChallengeResource get challenge => ChallengeResource(_requester);

  VerifiedaccessApi(http.Client client,
      {core.String rootUrl = 'https://verifiedaccess.googleapis.com/',
      core.String servicePath = ''})
      : _requester =
            commons.ApiRequester(client, rootUrl, servicePath, requestHeaders);
}

class ChallengeResource {
  final commons.ApiRequester _requester;

  ChallengeResource(commons.ApiRequester client) : _requester = client;

  /// Generates a new challenge.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Challenge].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Challenge> generate(
    Empty request, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    const url_ = 'v2/challenge:generate';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Challenge.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Verifies the challenge response.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [VerifyChallengeResponseResult].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<VerifyChallengeResponseResult> verify(
    VerifyChallengeResponseRequest request, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    const url_ = 'v2/challenge:verify';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return VerifyChallengeResponseResult.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

/// Result message for VerifiedAccess.GenerateChallenge.
class Challenge {
  /// Challenge generated with the old signing key, the bytes representation of
  /// SignedData (this will only be present during key rotation).
  core.String? alternativeChallenge;
  core.List<core.int> get alternativeChallengeAsBytes =>
      convert.base64.decode(alternativeChallenge!);

  set alternativeChallengeAsBytes(core.List<core.int> bytes_) {
    alternativeChallenge =
        convert.base64.encode(bytes_).replaceAll('/', '_').replaceAll('+', '-');
  }

  /// Generated challenge, the bytes representation of SignedData.
  core.String? challenge;
  core.List<core.int> get challengeAsBytes => convert.base64.decode(challenge!);

  set challengeAsBytes(core.List<core.int> bytes_) {
    challenge =
        convert.base64.encode(bytes_).replaceAll('/', '_').replaceAll('+', '-');
  }

  Challenge({
    this.alternativeChallenge,
    this.challenge,
  });

  Challenge.fromJson(core.Map json_)
      : this(
          alternativeChallenge: json_.containsKey('alternativeChallenge')
              ? json_['alternativeChallenge'] as core.String
              : null,
          challenge: json_.containsKey('challenge')
              ? json_['challenge'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (alternativeChallenge != null)
          'alternativeChallenge': alternativeChallenge!,
        if (challenge != null) 'challenge': challenge!,
      };
}

/// A generic empty message that you can re-use to avoid defining duplicated
/// empty messages in your APIs.
///
/// A typical example is to use it as the request or the response type of an API
/// method. For instance: service Foo { rpc Bar(google.protobuf.Empty) returns
/// (google.protobuf.Empty); }
typedef Empty = $Empty;

/// Signed ChallengeResponse.
class VerifyChallengeResponseRequest {
  /// The generated response to the challenge, the bytes representation of
  /// SignedData.
  ///
  /// Required.
  core.String? challengeResponse;
  core.List<core.int> get challengeResponseAsBytes =>
      convert.base64.decode(challengeResponse!);

  set challengeResponseAsBytes(core.List<core.int> bytes_) {
    challengeResponse =
        convert.base64.encode(bytes_).replaceAll('/', '_').replaceAll('+', '-');
  }

  /// Service can optionally provide identity information about the device or
  /// user associated with the key.
  ///
  /// For an EMK, this value is the enrolled domain. For an EUK, this value is
  /// the user's email address. If present, this value will be checked against
  /// contents of the response, and verification will fail if there is no match.
  ///
  /// Optional.
  core.String? expectedIdentity;

  VerifyChallengeResponseRequest({
    this.challengeResponse,
    this.expectedIdentity,
  });

  VerifyChallengeResponseRequest.fromJson(core.Map json_)
      : this(
          challengeResponse: json_.containsKey('challengeResponse')
              ? json_['challengeResponse'] as core.String
              : null,
          expectedIdentity: json_.containsKey('expectedIdentity')
              ? json_['expectedIdentity'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (challengeResponse != null) 'challengeResponse': challengeResponse!,
        if (expectedIdentity != null) 'expectedIdentity': expectedIdentity!,
      };
}

/// Result message for VerifiedAccess.VerifyChallengeResponse.
class VerifyChallengeResponseResult {
  /// Unique customer id that this device belongs to, as defined by the Google
  /// Admin SDK at
  /// https://developers.google.com/admin-sdk/directory/v1/guides/manage-customers
  core.String? customerId;

  /// Device permanent id is returned in this field (for the machine response
  /// only).
  core.String? devicePermanentId;

  /// Device signal in json string representation.
  core.String? deviceSignal;

  /// Device attested key trust level.
  /// Possible string values are:
  /// - "KEY_TRUST_LEVEL_UNSPECIFIED" : UNSPECIFIED.
  /// - "CHROME_OS_VERIFIED_MODE" : ChromeOS device in verified mode.
  /// - "CHROME_OS_DEVELOPER_MODE" : ChromeOS device in developer mode.
  /// - "CHROME_BROWSER_HW_KEY" : Chrome Browser with the key stored in the
  /// device hardware.
  /// - "CHROME_BROWSER_OS_KEY" : Chrome Browser with the key stored at OS
  /// level.
  core.String? keyTrustLevel;

  /// Certificate Signing Request (in the SPKAC format, base64 encoded) is
  /// returned in this field.
  ///
  /// This field will be set only if device has included CSR in its challenge
  /// response. (the option to include CSR is now available for both user and
  /// machine responses)
  core.String? signedPublicKeyAndChallenge;

  /// Virtual device id of the device.
  ///
  /// The definition of virtual device id is platform-specific.
  core.String? virtualDeviceId;

  VerifyChallengeResponseResult({
    this.customerId,
    this.devicePermanentId,
    this.deviceSignal,
    this.keyTrustLevel,
    this.signedPublicKeyAndChallenge,
    this.virtualDeviceId,
  });

  VerifyChallengeResponseResult.fromJson(core.Map json_)
      : this(
          customerId: json_.containsKey('customerId')
              ? json_['customerId'] as core.String
              : null,
          devicePermanentId: json_.containsKey('devicePermanentId')
              ? json_['devicePermanentId'] as core.String
              : null,
          deviceSignal: json_.containsKey('deviceSignal')
              ? json_['deviceSignal'] as core.String
              : null,
          keyTrustLevel: json_.containsKey('keyTrustLevel')
              ? json_['keyTrustLevel'] as core.String
              : null,
          signedPublicKeyAndChallenge:
              json_.containsKey('signedPublicKeyAndChallenge')
                  ? json_['signedPublicKeyAndChallenge'] as core.String
                  : null,
          virtualDeviceId: json_.containsKey('virtualDeviceId')
              ? json_['virtualDeviceId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (customerId != null) 'customerId': customerId!,
        if (devicePermanentId != null) 'devicePermanentId': devicePermanentId!,
        if (deviceSignal != null) 'deviceSignal': deviceSignal!,
        if (keyTrustLevel != null) 'keyTrustLevel': keyTrustLevel!,
        if (signedPublicKeyAndChallenge != null)
          'signedPublicKeyAndChallenge': signedPublicKeyAndChallenge!,
        if (virtualDeviceId != null) 'virtualDeviceId': virtualDeviceId!,
      };
}
