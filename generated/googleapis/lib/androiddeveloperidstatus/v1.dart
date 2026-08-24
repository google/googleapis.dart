// Copyright 2026 Google LLC
//
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file or at
// https://developers.google.com/open-source/licenses/bsd

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

/// Android Developer ID Status API - v1
///
/// Android Developer ID Status API.
///
/// For more information, see
/// <https://developer.android.com/developer-verification/guides/check-registration-status>
///
/// Create an instance of [AndroidDeveloperIDStatusApi] to access these
/// resources:
///
/// - [PackagesResource]
///   - [PackagesPackageRegistrationStatusResource]
library;

import 'dart:async' as async;
import 'dart:core' as core;

import 'package:_discoveryapis_commons/_discoveryapis_commons.dart' as commons;
import 'package:http/http.dart' as http;

import '../src/user_agent.dart';

export 'package:_discoveryapis_commons/_discoveryapis_commons.dart'
    show ApiRequestError, DetailedApiRequestError;

/// Android Developer ID Status API.
class AndroidDeveloperIDStatusApi {
  final commons.ApiRequester _requester;

  PackagesResource get packages => PackagesResource(_requester);

  AndroidDeveloperIDStatusApi(
    http.Client client, {
    core.String rootUrl = 'https://androiddeveloperidstatus.googleapis.com/',
    core.String servicePath = '',
  }) : _requester = commons.ApiRequester(
         client,
         rootUrl,
         servicePath,
         requestHeaders,
       );
}

class PackagesResource {
  final commons.ApiRequester _requester;

  PackagesPackageRegistrationStatusResource get packageRegistrationStatus =>
      PackagesPackageRegistrationStatusResource(_requester);

  PackagesResource(commons.ApiRequester client) : _requester = client;
}

class PackagesPackageRegistrationStatusResource {
  final commons.ApiRequester _requester;

  PackagesPackageRegistrationStatusResource(commons.ApiRequester client)
    : _requester = client;

  /// Retrieves the Android Developer ID registration status for a given
  /// package.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the package registration status resource.
  /// Format: packages/{package}/packageRegistrationStatus `{package}` must
  /// follow the specific format: The fully-qualified Android package name with
  /// dots ('.') replaced by hyphens ('-') (e.g., `com-example-app` instead of
  /// `com.example.app`).
  /// Value must have pattern `^packages/\[^/\]+/packageRegistrationStatus$`.
  ///
  /// [certificateFingerprint] - Optional. The SHA-256 fingerprint of the public
  /// certificate represented as a 64-character lowercase hexadecimal string
  /// without any colons or separators (e.g.,
  /// `d6ac89ed1d0a805aad4b087d06d5f41645b814480b133fbc867ef7498d069e06`).
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [PackageRegistrationStatus].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<PackageRegistrationStatus> check(
    core.String name, {
    core.String? certificateFingerprint,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'certificateFingerprint': ?certificateFingerprint == null
          ? null
          : [certificateFingerprint],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':check';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return PackageRegistrationStatus.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

/// Resource message PackageRegistrationStatus.
class PackageRegistrationStatus {
  /// The SHA-256 fingerprint of the public certificate represented as a
  /// 64-character lowercase hexadecimal string without any colons or separators
  /// (e.g.,
  /// `d6ac89ed1d0a805aad4b087d06d5f41645b814480b133fbc867ef7498d069e06`).
  ///
  /// Output only.
  core.String? certificateFingerprint;

  /// Identifier.
  ///
  /// The name of the package registration status resource. Format:
  /// packages/{package}/packageRegistrationStatus `{package}` must follow the
  /// specific format: The fully-qualified Android package name with dots ('.')
  /// replaced by hyphens ('-') (e.g., `com-example-app` instead of
  /// `com.example.app`).
  core.String? name;

  /// Registration state of the package, or pair.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "REGISTRATION_STATE_UNSPECIFIED" : Default value. This value is unused.
  /// - "REGISTERED" : Package is registered with the given certificate
  /// fingerprint.
  /// - "NOT_REGISTERED" : Package is not registered with any public
  /// certificate.
  /// - "REGISTERED_WITH_ANOTHER_CERTIFICATE_FINGERPRINT" : Package is
  /// registered with another public certificate fingerprint.
  core.String? state;

  PackageRegistrationStatus({
    this.certificateFingerprint,
    this.name,
    this.state,
  });

  PackageRegistrationStatus.fromJson(core.Map json_)
    : this(
        certificateFingerprint: json_['certificateFingerprint'] as core.String?,
        name: json_['name'] as core.String?,
        state: json_['state'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final certificateFingerprint = this.certificateFingerprint;
    final name = this.name;
    final state = this.state;
    return {
      'certificateFingerprint': ?certificateFingerprint,
      'name': ?name,
      'state': ?state,
    };
  }
}
