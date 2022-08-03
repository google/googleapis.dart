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

/// Chrome Verified Access API - v1
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
library verifiedaccess.v1;

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

  /// CreateChallenge API
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
  async.Future<Challenge> create(
    Empty request, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    const _url = 'v1/challenge';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return Challenge.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// VerifyChallengeResponse API
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

    const _url = 'v1/challenge:verify';

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
  /// Challenge generated with the old signing key (this will only be present
  /// during key rotation)
  SignedData? alternativeChallenge;

  /// Generated challenge
  SignedData? challenge;

  Challenge({
    this.alternativeChallenge,
    this.challenge,
  });

  Challenge.fromJson(core.Map _json)
      : this(
          alternativeChallenge: _json.containsKey('alternativeChallenge')
              ? SignedData.fromJson(_json['alternativeChallenge']
                  as core.Map<core.String, core.dynamic>)
              : null,
          challenge: _json.containsKey('challenge')
              ? SignedData.fromJson(
                  _json['challenge'] as core.Map<core.String, core.dynamic>)
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

/// The wrapper message of any data and its signature.
class SignedData {
  /// The data to be signed.
  core.String? data;
  core.List<core.int> get dataAsBytes => convert.base64.decode(data!);

  set dataAsBytes(core.List<core.int> _bytes) {
    data =
        convert.base64.encode(_bytes).replaceAll('/', '_').replaceAll('+', '-');
  }

  /// The signature of the data field.
  core.String? signature;
  core.List<core.int> get signatureAsBytes => convert.base64.decode(signature!);

  set signatureAsBytes(core.List<core.int> _bytes) {
    signature =
        convert.base64.encode(_bytes).replaceAll('/', '_').replaceAll('+', '-');
  }

  SignedData({
    this.data,
    this.signature,
  });

  SignedData.fromJson(core.Map _json)
      : this(
          data: _json.containsKey('data') ? _json['data'] as core.String : null,
          signature: _json.containsKey('signature')
              ? _json['signature'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (data != null) 'data': data!,
        if (signature != null) 'signature': signature!,
      };
}

/// signed ChallengeResponse
class VerifyChallengeResponseRequest {
  /// The generated response to the challenge
  SignedData? challengeResponse;

  /// Service can optionally provide identity information about the device or
  /// user associated with the key.
  ///
  /// For an EMK, this value is the enrolled domain. For an EUK, this value is
  /// the user's email address. If present, this value will be checked against
  /// contents of the response, and verification will fail if there is no match.
  core.String? expectedIdentity;

  VerifyChallengeResponseRequest({
    this.challengeResponse,
    this.expectedIdentity,
  });

  VerifyChallengeResponseRequest.fromJson(core.Map _json)
      : this(
          challengeResponse: _json.containsKey('challengeResponse')
              ? SignedData.fromJson(_json['challengeResponse']
                  as core.Map<core.String, core.dynamic>)
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
  /// Device enrollment id is returned in this field (for the machine response
  /// only).
  core.String? deviceEnrollmentId;

  /// Device permanent id is returned in this field (for the machine response
  /// only).
  core.String? devicePermanentId;

  /// Certificate Signing Request (in the SPKAC format, base64 encoded) is
  /// returned in this field.
  ///
  /// This field will be set only if device has included CSR in its challenge
  /// response. (the option to include CSR is now available for both user and
  /// machine responses)
  core.String? signedPublicKeyAndChallenge;

  /// For EMCert check, device permanent id is returned here.
  ///
  /// For EUCert check, signed_public_key_and_challenge \[base64 encoded\] is
  /// returned if present, otherwise empty string is returned. This field is
  /// deprecated, please use device_permanent_id or
  /// signed_public_key_and_challenge fields.
  core.String? verificationOutput;

  VerifyChallengeResponseResult({
    this.deviceEnrollmentId,
    this.devicePermanentId,
    this.signedPublicKeyAndChallenge,
    this.verificationOutput,
  });

  VerifyChallengeResponseResult.fromJson(core.Map _json)
      : this(
          deviceEnrollmentId: _json.containsKey('deviceEnrollmentId')
              ? _json['deviceEnrollmentId'] as core.String
              : null,
          devicePermanentId: _json.containsKey('devicePermanentId')
              ? _json['devicePermanentId'] as core.String
              : null,
          signedPublicKeyAndChallenge:
              _json.containsKey('signedPublicKeyAndChallenge')
                  ? _json['signedPublicKeyAndChallenge'] as core.String
                  : null,
          verificationOutput: _json.containsKey('verificationOutput')
              ? _json['verificationOutput'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (deviceEnrollmentId != null)
          'deviceEnrollmentId': deviceEnrollmentId!,
        if (devicePermanentId != null) 'devicePermanentId': devicePermanentId!,
        if (signedPublicKeyAndChallenge != null)
          'signedPublicKeyAndChallenge': signedPublicKeyAndChallenge!,
        if (verificationOutput != null)
          'verificationOutput': verificationOutput!,
      };
}
