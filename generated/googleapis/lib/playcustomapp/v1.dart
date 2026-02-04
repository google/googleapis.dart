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

/// Google Play Custom App Publishing API - v1
///
/// API to create and publish custom Android apps
///
/// For more information, see
/// <https://developers.google.com/android/work/play/custom-app-api/>
///
/// Create an instance of [PlaycustomappApi] to access these resources:
///
/// - [AccountsResource]
///   - [AccountsCustomAppsResource]
library;

import 'dart:async' as async;
import 'dart:convert' as convert;
import 'dart:core' as core;

import 'package:_discoveryapis_commons/_discoveryapis_commons.dart' as commons;
import 'package:http/http.dart' as http;

import '../src/user_agent.dart';

export 'package:_discoveryapis_commons/_discoveryapis_commons.dart'
    show
        ApiRequestError,
        ByteRange,
        DetailedApiRequestError,
        DownloadOptions,
        Media,
        PartialDownloadOptions,
        ResumableUploadOptions,
        UploadOptions;

/// API to create and publish custom Android apps
class PlaycustomappApi {
  /// View and manage your Google Play Developer account
  static const androidpublisherScope =
      'https://www.googleapis.com/auth/androidpublisher';

  final commons.ApiRequester _requester;

  AccountsResource get accounts => AccountsResource(_requester);

  PlaycustomappApi(
    http.Client client, {
    core.String rootUrl = 'https://playcustomapp.googleapis.com/',
    core.String servicePath = '',
  }) : _requester = commons.ApiRequester(
         client,
         rootUrl,
         servicePath,
         requestHeaders,
       );
}

class AccountsResource {
  final commons.ApiRequester _requester;

  AccountsCustomAppsResource get customApps =>
      AccountsCustomAppsResource(_requester);

  AccountsResource(commons.ApiRequester client) : _requester = client;
}

class AccountsCustomAppsResource {
  final commons.ApiRequester _requester;

  AccountsCustomAppsResource(commons.ApiRequester client) : _requester = client;

  /// Creates a new custom app.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [account] - Developer account ID.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// [uploadMedia] - The media to upload.
  ///
  /// [uploadOptions] - Options for the media upload. Streaming Media without
  /// the length being known ahead of time is only supported via resumable
  /// uploads.
  ///
  /// Completes with a [CustomApp].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<CustomApp> create(
    CustomApp request,
    core.String account, {
    core.String? $fields,
    commons.UploadOptions uploadOptions = commons.UploadOptions.defaultOptions,
    commons.Media? uploadMedia,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    core.String url_;
    if (uploadMedia == null) {
      url_ =
          'playcustomapp/v1/accounts/' +
          commons.escapeVariable('$account') +
          '/customApps';
    } else if (uploadOptions is commons.ResumableUploadOptions) {
      url_ =
          '/resumable/upload/playcustomapp/v1/accounts/' +
          commons.escapeVariable('$account') +
          '/customApps';
    } else {
      url_ =
          '/upload/playcustomapp/v1/accounts/' +
          commons.escapeVariable('$account') +
          '/customApps';
    }

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
      uploadMedia: uploadMedia,
      uploadOptions: uploadOptions,
    );
    return CustomApp.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }
}

/// This resource represents a custom app.
class CustomApp {
  /// Default listing language in BCP 47 format.
  core.String? languageCode;

  /// Organizations to which the custom app should be made available.
  ///
  /// If the request contains any organizations, then the app will be restricted
  /// to only these organizations. To support the organization linked to the
  /// developer account, the organization ID should be provided explicitly
  /// together with other organizations. If no organizations are provided, then
  /// the app is only available to the organization linked to the developer
  /// account.
  core.List<Organization>? organizations;

  /// Package name of the created Android app.
  ///
  /// Only present in the API response.
  ///
  /// Output only.
  core.String? packageName;

  /// Title for the Android app.
  core.String? title;

  CustomApp({
    this.languageCode,
    this.organizations,
    this.packageName,
    this.title,
  });

  CustomApp.fromJson(core.Map json_)
    : this(
        languageCode: json_['languageCode'] as core.String?,
        organizations: (json_['organizations'] as core.List?)
            ?.map(
              (value) => Organization.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        packageName: json_['packageName'] as core.String?,
        title: json_['title'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final languageCode = this.languageCode;
    final organizations = this.organizations;
    final packageName = this.packageName;
    final title = this.title;
    return {
      'languageCode': ?languageCode,
      'organizations': ?organizations,
      'packageName': ?packageName,
      'title': ?title,
    };
  }
}

/// Represents an organization that can access a custom app.
class Organization {
  /// ID of the organization.
  ///
  /// Required.
  core.String? organizationId;

  /// A human-readable name of the organization, to help recognize the
  /// organization.
  ///
  /// Optional.
  core.String? organizationName;

  Organization({this.organizationId, this.organizationName});

  Organization.fromJson(core.Map json_)
    : this(
        organizationId: json_['organizationId'] as core.String?,
        organizationName: json_['organizationName'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final organizationId = this.organizationId;
    final organizationName = this.organizationName;
    return {
      'organizationId': ?organizationId,
      'organizationName': ?organizationName,
    };
  }
}
