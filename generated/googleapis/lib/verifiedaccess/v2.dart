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
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    const _url = 'v2/challenge:generate';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return Challenge.fromJson(_response as core.Map<core.String, core.dynamic>);
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
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    const _url = 'v2/challenge:verify';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return VerifyChallengeResponseResult.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

/// Result message for VerifiedAccess.CreateChallenge.
class Challenge {
  /// Challenge generated with the old signing key, the bytes representation of
  /// SignedData (this will only be present during key rotation).
  core.String? alternativeChallenge;
  core.List<core.int> get alternativeChallengeAsBytes =>
      convert.base64.decode(alternativeChallenge!);

  set alternativeChallengeAsBytes(core.List<core.int> _bytes) {
    alternativeChallenge =
        convert.base64.encode(_bytes).replaceAll('/', '_').replaceAll('+', '-');
  }

  /// Generated challenge, the bytes representation of SignedData.
  core.String? challenge;
  core.List<core.int> get challengeAsBytes => convert.base64.decode(challenge!);

  set challengeAsBytes(core.List<core.int> _bytes) {
    challenge =
        convert.base64.encode(_bytes).replaceAll('/', '_').replaceAll('+', '-');
  }

  Challenge({
    this.alternativeChallenge,
    this.challenge,
  });

  Challenge.fromJson(core.Map _json)
      : this(
          alternativeChallenge: _json.containsKey('alternativeChallenge')
              ? _json['alternativeChallenge'] as core.String
              : null,
          challenge: _json.containsKey('challenge')
              ? _json['challenge'] as core.String
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

  set challengeResponseAsBytes(core.List<core.int> _bytes) {
    challengeResponse =
        convert.base64.encode(_bytes).replaceAll('/', '_').replaceAll('+', '-');
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

  VerifyChallengeResponseRequest.fromJson(core.Map _json)
      : this(
          challengeResponse: _json.containsKey('challengeResponse')
              ? _json['challengeResponse'] as core.String
              : null,
          expectedIdentity: _json.containsKey('expectedIdentity')
              ? _json['expectedIdentity'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (challengeResponse != null) 'challengeResponse': challengeResponse!,
        if (expectedIdentity != null) 'expectedIdentity': expectedIdentity!,
      };
}

/// Result message for VerifiedAccess.VerifyChallengeResponse.
class VerifyChallengeResponseResult {
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
  /// - "CHROME_BROWSER_TPM_KEY" : Chrome Browser with the key stored in TPM.
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

  VerifyChallengeResponseResult({
    this.devicePermanentId,
    this.deviceSignal,
    this.keyTrustLevel,
    this.signedPublicKeyAndChallenge,
  });

  VerifyChallengeResponseResult.fromJson(core.Map _json)
      : this(
          devicePermanentId: _json.containsKey('devicePermanentId')
              ? _json['devicePermanentId'] as core.String
              : null,
          deviceSignal: _json.containsKey('deviceSignal')
              ? _json['deviceSignal'] as core.String
              : null,
          keyTrustLevel: _json.containsKey('keyTrustLevel')
              ? _json['keyTrustLevel'] as core.String
              : null,
          signedPublicKeyAndChallenge:
              _json.containsKey('signedPublicKeyAndChallenge')
                  ? _json['signedPublicKeyAndChallenge'] as core.String
                  : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (devicePermanentId != null) 'devicePermanentId': devicePermanentId!,
        if (deviceSignal != null) 'deviceSignal': deviceSignal!,
        if (keyTrustLevel != null) 'keyTrustLevel': keyTrustLevel!,
        if (signedPublicKeyAndChallenge != null)
          'signedPublicKeyAndChallenge': signedPublicKeyAndChallenge!,
      };
}
