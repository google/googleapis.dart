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

/// Firebase Remote Config API - v1
///
/// The Firebase Remote Config API lets developers change the behavior and
/// appearance of their apps without requiring users to download an app update.
/// It is an alternative to, but can be used in tandem with, the Firebase
/// console at https://console.firebase.google.com.
///
/// For more information, see
/// <https://firebase.google.com/docs/remote-config/use-config-rest>
///
/// Create an instance of [FirebaseRemoteConfigApi] to access these resources:
///
/// - [ProjectsResource]
///   - [ProjectsNamespacesResource]
///   - [ProjectsRemoteConfigResource]
library firebaseremoteconfig.v1;

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

/// The Firebase Remote Config API lets developers change the behavior and
/// appearance of their apps without requiring users to download an app update.
///
/// It is an alternative to, but can be used in tandem with, the Firebase
/// console at https://console.firebase.google.com.
class FirebaseRemoteConfigApi {
  /// See, edit, configure, and delete your Google Cloud data and see the email
  /// address for your Google Account.
  static const cloudPlatformScope =
      'https://www.googleapis.com/auth/cloud-platform';

  final commons.ApiRequester _requester;

  ProjectsResource get projects => ProjectsResource(_requester);

  FirebaseRemoteConfigApi(http.Client client,
      {core.String rootUrl = 'https://firebaseremoteconfig.googleapis.com/',
      core.String servicePath = ''})
      : _requester =
            commons.ApiRequester(client, rootUrl, servicePath, requestHeaders);
}

class ProjectsResource {
  final commons.ApiRequester _requester;

  ProjectsNamespacesResource get namespaces =>
      ProjectsNamespacesResource(_requester);
  ProjectsRemoteConfigResource get remoteConfig =>
      ProjectsRemoteConfigResource(_requester);

  ProjectsResource(commons.ApiRequester client) : _requester = client;

  /// Get a project's Remote Config template and associated ETag header.
  ///
  /// Returns the requested RemoteConfig as the payload and an ETag as a
  /// response header.
  ///
  /// Request parameters:
  ///
  /// [project] - Required. The Firebase project's Project ID or Project Number,
  /// prefixed with "projects/".
  /// Value must have pattern `^projects/\[^/\]+$`.
  ///
  /// [versionNumber] - Optional. Version number of the RemoteConfig to look up.
  /// If not specified, the latest RemoteConfig will be returned.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [RemoteConfig].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<RemoteConfig> getRemoteConfig(
    core.String project, {
    core.String? versionNumber,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (versionNumber != null) 'versionNumber': [versionNumber],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$project') + '/remoteConfig';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return RemoteConfig.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Publish a project's Remote Config template.
  ///
  /// Pass the ETag returned by GetRemoteConfig as an `If-Match` header to
  /// ensure the last seen Remote Config template is the one being overwritten
  /// by this update. Pass `If-Match: *` to force an update, regardless of the
  /// current version. Returns the published RemoteConfig and the updated ETag
  /// as a response header if successful, or an error. See the publishing guide
  /// for a list of \[error
  /// codes\](/docs/remote-config/use-config-rest#step_5_publish_json_data_to_replace_data_in_the_service).
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [project] - Required. The Firebase project's Project ID or Project Number,
  /// prefixed with "projects/".
  /// Value must have pattern `^projects/\[^/\]+$`.
  ///
  /// [validateOnly] - Optional. Defaults to `false`. If `true`, the server will
  /// only attempt to validate the RemoteConfig. If validation succeeds, the
  /// RemoteConfig is not written to the Remote Config server, instead a `200
  /// OK` response is returned. If validation fails, a validation error is
  /// returned. Note: other errors may still occur after this boolean is set to
  /// `false`, even if getting a `200 OK` when calling with UpdateRemoteConfig
  /// with `validate_only` set to `true`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [RemoteConfig].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<RemoteConfig> updateRemoteConfig(
    RemoteConfig request,
    core.String project, {
    core.bool? validateOnly,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (validateOnly != null) 'validateOnly': ['${validateOnly}'],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$project') + '/remoteConfig';

    final response_ = await _requester.request(
      url_,
      'PUT',
      body: body_,
      queryParams: queryParams_,
    );
    return RemoteConfig.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsNamespacesResource {
  final commons.ApiRequester _requester;

  ProjectsNamespacesResource(commons.ApiRequester client) : _requester = client;

  /// Fetch parameter values and any Firebase A/B Testing experiment information
  /// for the calling device.
  ///
  /// An ETag header is also returned. Pass the ETag in future requests via the
  /// `If-None-Match` header to save bandwidth. NOTE: The Fetch REST API
  /// requires an Instance ID to be populated in the request. The Instance ID
  /// can obtained from the IID SDK. See
  /// https://firebase.google.com/docs/reference/android/com/google/firebase/iid/FirebaseInstanceId
  /// and
  /// https://firebase.google.com/docs/reference/ios/firebaseinstanceid/api/reference/Classes/FIRInstanceID
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [project] - Required. The Firebase project ID or project number. (NOTE:
  /// These identifiers can be retrieved from the Firebase console.)
  ///
  /// [namespace] - Required. The string "firebase".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [FetchRemoteConfigResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<FetchRemoteConfigResponse> fetch(
    FetchRemoteConfigRequest request,
    core.String project,
    core.String namespace, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/projects/' +
        commons.escapeVariable('$project') +
        '/namespaces/' +
        commons.escapeVariable('$namespace') +
        ':fetch';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return FetchRemoteConfigResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsRemoteConfigResource {
  final commons.ApiRequester _requester;

  ProjectsRemoteConfigResource(commons.ApiRequester client)
      : _requester = client;

  /// Get a project's current Remote Config template parameters and default
  /// values in JSON, property list (plist), or XML format.
  ///
  /// Request parameters:
  ///
  /// [project] - Required. The Firebase project's Project ID or Project Number,
  /// prefixed with "projects/".
  /// Value must have pattern `^projects/\[^/\]+$`.
  ///
  /// [format] - Required. The file structure to return.
  /// Possible string values are:
  /// - "FORMAT_UNSPECIFIED" : Catch-all for unrecognized enum values.
  /// - "XML" : Returns a response in XML format.
  /// - "PLIST" : Returns a response in property list (plist) format.
  /// - "JSON" : Returns a response in JSON format.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [HttpBody].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<HttpBody> downloadDefaults(
    core.String project, {
    core.String? format,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (format != null) 'format': [format],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' +
        core.Uri.encodeFull('$project') +
        '/remoteConfig:downloadDefaults';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return HttpBody.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Get a list of Remote Config template versions that have been published,
  /// sorted in reverse chronological order.
  ///
  /// Only the last 300 versions are stored. All versions that correspond to
  /// non-active Remote Config templates (i.e., all except the template that is
  /// being fetched by clients) are also deleted if they are older than 90 days.
  ///
  /// Request parameters:
  ///
  /// [project] - Required. The Firebase project's Project ID or Project Number,
  /// prefixed with "projects/".
  /// Value must have pattern `^projects/\[^/\]+$`.
  ///
  /// [endTime] - Optional. Specify the latest update time to include in the
  /// results; any entries updated on or after this time are omitted.
  ///
  /// [endVersionNumber] - Optional. Specify the newest version number to
  /// include in the results. If specified, must be greater than zero. Defaults
  /// to the newest version.
  ///
  /// [pageSize] - Optional. The maximum number of items to return per page.
  ///
  /// [pageToken] - Optional. The next_page_token value returned from a previous
  /// List request, if any.
  ///
  /// [startTime] - Optional. Specify the earliest update time to include in the
  /// results; any entries updated before this time are omitted.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListVersionsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListVersionsResponse> listVersions(
    core.String project, {
    core.String? endTime,
    core.String? endVersionNumber,
    core.int? pageSize,
    core.String? pageToken,
    core.String? startTime,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (endTime != null) 'endTime': [endTime],
      if (endVersionNumber != null) 'endVersionNumber': [endVersionNumber],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if (startTime != null) 'startTime': [startTime],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1/' + core.Uri.encodeFull('$project') + '/remoteConfig:listVersions';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListVersionsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Roll back a project's published Remote Config template to the one
  /// specified by the provided version number.
  ///
  /// A rollback is equivalent to getting a previously published Remote Config
  /// template, and re-publishing it using a force update. Returns the published
  /// RemoteConfig and the updated ETag as a response header if successful, or
  /// an error. See the publishing guide for a list of \[error
  /// codes\](/docs/remote-config/use-config-rest#step_5_publish_json_data_to_replace_data_in_the_service).
  /// In particular, note that the method returns an error with HTTP Status 404
  /// if the requested version_number to rollback to is not found.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [project] - Required. The Firebase project's Project ID or Project Number,
  /// prefixed with "projects/".
  /// Value must have pattern `^projects/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [RemoteConfig].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<RemoteConfig> rollback(
    RollbackRemoteConfigRequest request,
    core.String project, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1/' + core.Uri.encodeFull('$project') + '/remoteConfig:rollback';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return RemoteConfig.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

/// Encapsulates per-experiment data.
class ExperimentDescription {
  /// The Firebase A/B Testing experiment ID.
  ///
  /// A string of max length 22 characters.
  core.String? experimentId;

  /// When the experiment was started.
  core.String? experimentStartTime;

  /// How long the experiment can remain in ON state.
  ///
  /// Valid range from 1 ms to 6 months.
  core.String? timeToLiveMillis;

  /// The Google Analytics event that activates the experiment.
  core.String? triggerEvent;

  /// How long the experiment can remain in STANDBY state.
  ///
  /// Valid range from 1 ms to 6 months.
  core.String? triggerTimeoutMillis;

  /// The variant of the experiment assigned to the app instance.
  core.String? variantId;

  ExperimentDescription({
    this.experimentId,
    this.experimentStartTime,
    this.timeToLiveMillis,
    this.triggerEvent,
    this.triggerTimeoutMillis,
    this.variantId,
  });

  ExperimentDescription.fromJson(core.Map json_)
      : this(
          experimentId: json_.containsKey('experimentId')
              ? json_['experimentId'] as core.String
              : null,
          experimentStartTime: json_.containsKey('experimentStartTime')
              ? json_['experimentStartTime'] as core.String
              : null,
          timeToLiveMillis: json_.containsKey('timeToLiveMillis')
              ? json_['timeToLiveMillis'] as core.String
              : null,
          triggerEvent: json_.containsKey('triggerEvent')
              ? json_['triggerEvent'] as core.String
              : null,
          triggerTimeoutMillis: json_.containsKey('triggerTimeoutMillis')
              ? json_['triggerTimeoutMillis'] as core.String
              : null,
          variantId: json_.containsKey('variantId')
              ? json_['variantId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (experimentId != null) 'experimentId': experimentId!,
        if (experimentStartTime != null)
          'experimentStartTime': experimentStartTime!,
        if (timeToLiveMillis != null) 'timeToLiveMillis': timeToLiveMillis!,
        if (triggerEvent != null) 'triggerEvent': triggerEvent!,
        if (triggerTimeoutMillis != null)
          'triggerTimeoutMillis': triggerTimeoutMillis!,
        if (variantId != null) 'variantId': variantId!,
      };
}

/// * A request to render parameter values from the current RemoteConfig
/// template and Firebase A/B Testing experiments.
class FetchRemoteConfigRequest {
  /// Optional - List of Analytics user properties.
  core.Map<core.String, core.String>? analyticsUserProperties;

  /// Optional - If omitted and the template has any conditions that depend on
  /// app_build, they will be evaluated as false.
  ///
  /// * On Android, this is the Version Code, which is a positive integer, e.g.,
  /// 42. * On iOS, this is the CFBundleVersion, which is a string comprised of
  /// three non-negative, period-separated integers with the first integer being
  /// greater than zero—for example, 3.1.2. * On Web, the concept of a build
  /// number is not well defined, and thus should not be set.
  core.String? appBuild;

  /// If not specified, fetch will return 400 (Bad Request).
  ///
  /// GMP App id.
  ///
  /// Required.
  core.String? appId;

  /// The instance id of the app.
  ///
  /// If unspecified, fetch will return 400 (Bad Request). Refer to
  /// https://firebase.google.com/support/privacy/manage-iids.
  ///
  /// Required.
  core.String? appInstanceId;

  /// The instance id token of the app, which is retrieved using the default
  /// scope.
  ///
  /// If specified incorrectly, and if the template has any percentile
  /// conditions, they will be evaluated to false. If omitted, fetch can lead to
  /// a 400 response code (Bad Request).
  ///
  /// Required.
  core.String? appInstanceIdToken;

  /// Optional - If omitted and the template has any conditions that depend on
  /// app_version, they will be evaluated as false.
  ///
  /// App version, using the native app version format on the client's OS.
  /// Examples: 0, 123, 0123, 1.2.3, 001.33.043.321.55 .
  core.String? appVersion;

  /// Optional - If omitted and the template has any conditions that depend on
  /// country_code, they will be evaluated as false.
  ///
  /// Should be 2 lower-case letters, e.g. "us", "tr", or "gb", as defined in
  /// ISO 3166-1 alpha-2. This is case-insensitive. See
  /// https://www.iso.org/obp/ui/#search .
  core.String? countryCode;

  /// The first time a user launches an app after installing or re-installing
  /// it.
  ///
  /// This value comes from GA, and will not be set if GA SDK is not available
  /// on the client or if GA does not have the first-open time value.
  core.String? firstOpenTime;

  /// Optional - If omitted and the template has any conditions that depend on
  /// locale, they will be evaluated as false.
  ///
  /// The default locale of the device, in BCP47 format, for example "en-US".
  /// This is case-insensitive. See
  /// https://www.w3.org/International/core/langtags/rfc3066bis.html .
  core.String? languageCode;

  /// Optional - If omitted, the project's default package will be fetched.
  ///
  /// Name of the package for which we are fetching data from. Should match the
  /// app name for Android apps, or the corresponding entity (e.g. bundle name)
  /// for iOS apps.
  core.String? packageName;

  /// Optional - If omitted and the template has any conditions that depend on
  /// platform version, they will be evaluated as false.
  ///
  /// The version string of the device, e.g. "21" for (Android) Lollipop, or
  /// (for iOS) three non-negative, period separated integers, e.g. "9.0.0".
  core.String? platformVersion;

  /// Optional - Version of the Firebase Remote Config SDK.
  ///
  /// This number is hard-coded into each client.
  core.String? sdkVersion;

  /// Optional - If omitted and the template has any conditions that depend on
  /// timezone, they will be evaluated as false.
  ///
  /// The timezone id of the device, in Olson Id format, e.g.
  /// "America/Los_Angeles".
  core.String? timeZone;

  FetchRemoteConfigRequest({
    this.analyticsUserProperties,
    this.appBuild,
    this.appId,
    this.appInstanceId,
    this.appInstanceIdToken,
    this.appVersion,
    this.countryCode,
    this.firstOpenTime,
    this.languageCode,
    this.packageName,
    this.platformVersion,
    this.sdkVersion,
    this.timeZone,
  });

  FetchRemoteConfigRequest.fromJson(core.Map json_)
      : this(
          analyticsUserProperties: json_.containsKey('analyticsUserProperties')
              ? (json_['analyticsUserProperties']
                      as core.Map<core.String, core.dynamic>)
                  .map(
                  (key, item) => core.MapEntry(
                    key,
                    item as core.String,
                  ),
                )
              : null,
          appBuild: json_.containsKey('appBuild')
              ? json_['appBuild'] as core.String
              : null,
          appId:
              json_.containsKey('appId') ? json_['appId'] as core.String : null,
          appInstanceId: json_.containsKey('appInstanceId')
              ? json_['appInstanceId'] as core.String
              : null,
          appInstanceIdToken: json_.containsKey('appInstanceIdToken')
              ? json_['appInstanceIdToken'] as core.String
              : null,
          appVersion: json_.containsKey('appVersion')
              ? json_['appVersion'] as core.String
              : null,
          countryCode: json_.containsKey('countryCode')
              ? json_['countryCode'] as core.String
              : null,
          firstOpenTime: json_.containsKey('firstOpenTime')
              ? json_['firstOpenTime'] as core.String
              : null,
          languageCode: json_.containsKey('languageCode')
              ? json_['languageCode'] as core.String
              : null,
          packageName: json_.containsKey('packageName')
              ? json_['packageName'] as core.String
              : null,
          platformVersion: json_.containsKey('platformVersion')
              ? json_['platformVersion'] as core.String
              : null,
          sdkVersion: json_.containsKey('sdkVersion')
              ? json_['sdkVersion'] as core.String
              : null,
          timeZone: json_.containsKey('timeZone')
              ? json_['timeZone'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (analyticsUserProperties != null)
          'analyticsUserProperties': analyticsUserProperties!,
        if (appBuild != null) 'appBuild': appBuild!,
        if (appId != null) 'appId': appId!,
        if (appInstanceId != null) 'appInstanceId': appInstanceId!,
        if (appInstanceIdToken != null)
          'appInstanceIdToken': appInstanceIdToken!,
        if (appVersion != null) 'appVersion': appVersion!,
        if (countryCode != null) 'countryCode': countryCode!,
        if (firstOpenTime != null) 'firstOpenTime': firstOpenTime!,
        if (languageCode != null) 'languageCode': languageCode!,
        if (packageName != null) 'packageName': packageName!,
        if (platformVersion != null) 'platformVersion': platformVersion!,
        if (sdkVersion != null) 'sdkVersion': sdkVersion!,
        if (timeZone != null) 'timeZone': timeZone!,
      };
}

/// * The Firebase Remote Config configuration data for an app instance.
class FetchRemoteConfigResponse {
  /// For Android apps, app_name is the package name of the app.
  ///
  /// For iOS apps, it is the bundle name.
  core.String? appName;

  /// The Key-Value pairs of the config.
  core.Map<core.String, core.String>? entries;

  /// Firebase A/B Testing experiment configuration and metadata.
  core.List<ExperimentDescription>? experimentDescriptions;

  /// A map of Remote Config parameter key to Firebase Personalization related
  /// metadata that should be delivered to the particular device making the
  /// fetch call.
  core.Map<core.String, PersonalizationMetadata>? personalizationMetadata;

  /// The state of the fetched response.
  /// Possible string values are:
  /// - "INSTANCE_STATE_UNSPECIFIED" : Default (when the enum is not set by the
  /// server for any reason).
  /// - "UPDATE" : The Remote Config parameter values and/or the Firebase A/B
  /// Testing experiments differ from the last fetch.
  /// - "NO_TEMPLATE" : No template defined.
  /// - "NO_CHANGE" : The Remote Config parameter values and Firebase A/B
  /// Testing experiments both match those returned during the last fetch.
  /// - "EMPTY_CONFIG" : Template found, but evaluates to empty (e.g. all keys
  /// omitted)
  core.String? state;

  /// Used to record the current template in the response.
  core.String? templateVersion;

  FetchRemoteConfigResponse({
    this.appName,
    this.entries,
    this.experimentDescriptions,
    this.personalizationMetadata,
    this.state,
    this.templateVersion,
  });

  FetchRemoteConfigResponse.fromJson(core.Map json_)
      : this(
          appName: json_.containsKey('appName')
              ? json_['appName'] as core.String
              : null,
          entries: json_.containsKey('entries')
              ? (json_['entries'] as core.Map<core.String, core.dynamic>).map(
                  (key, item) => core.MapEntry(
                    key,
                    item as core.String,
                  ),
                )
              : null,
          experimentDescriptions: json_.containsKey('experimentDescriptions')
              ? (json_['experimentDescriptions'] as core.List)
                  .map((value) => ExperimentDescription.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          personalizationMetadata: json_.containsKey('personalizationMetadata')
              ? (json_['personalizationMetadata']
                      as core.Map<core.String, core.dynamic>)
                  .map(
                  (key, item) => core.MapEntry(
                    key,
                    PersonalizationMetadata.fromJson(
                        item as core.Map<core.String, core.dynamic>),
                  ),
                )
              : null,
          state:
              json_.containsKey('state') ? json_['state'] as core.String : null,
          templateVersion: json_.containsKey('templateVersion')
              ? json_['templateVersion'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (appName != null) 'appName': appName!,
        if (entries != null) 'entries': entries!,
        if (experimentDescriptions != null)
          'experimentDescriptions': experimentDescriptions!,
        if (personalizationMetadata != null)
          'personalizationMetadata': personalizationMetadata!,
        if (state != null) 'state': state!,
        if (templateVersion != null) 'templateVersion': templateVersion!,
      };
}

/// Message that represents an arbitrary HTTP body.
///
/// It should only be used for payload formats that can't be represented as
/// JSON, such as raw binary or an HTML page. This message can be used both in
/// streaming and non-streaming API methods in the request as well as the
/// response. It can be used as a top-level request field, which is convenient
/// if one wants to extract parameters from either the URL or HTTP template into
/// the request fields and also want access to the raw HTTP body. Example:
/// message GetResourceRequest { // A unique request id. string request_id = 1;
/// // The raw HTTP body is bound to this field. google.api.HttpBody http_body =
/// 2; } service ResourceService { rpc GetResource(GetResourceRequest) returns
/// (google.api.HttpBody); rpc UpdateResource(google.api.HttpBody) returns
/// (google.protobuf.Empty); } Example with streaming methods: service
/// CaldavService { rpc GetCalendar(stream google.api.HttpBody) returns (stream
/// google.api.HttpBody); rpc UpdateCalendar(stream google.api.HttpBody) returns
/// (stream google.api.HttpBody); } Use of this type only changes how the
/// request and response bodies are handled, all other features will continue to
/// work unchanged.
typedef HttpBody = $HttpBody;

/// Contains a paginated list of versions of the RemoteConfig.
class ListVersionsResponse {
  /// Token to retrieve the next page of results, or empty if there are no more
  /// results in the list.
  core.String? nextPageToken;

  /// A list of version metadata objects, sorted in reverse chronological order.
  core.List<Version>? versions;

  ListVersionsResponse({
    this.nextPageToken,
    this.versions,
  });

  ListVersionsResponse.fromJson(core.Map json_)
      : this(
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
          versions: json_.containsKey('versions')
              ? (json_['versions'] as core.List)
                  .map((value) => Version.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (versions != null) 'versions': versions!,
      };
}

/// LINT.IfChange Metadata associated with a particular Remote Config parameter
/// key, managed by Firebase Personalization.
class PersonalizationMetadata {
  /// The selected arm's index, which may be 0.
  core.int? armIndex;

  /// Identifier for the choice.
  ///
  /// For internal use only.
  core.String? choiceId;

  /// Variant group to which user belongs.
  /// Possible string values are:
  /// - "GROUP_UNSPECIFIED" : Default value.
  /// - "BASELINE" : Audience we put aside for baseline quality measurement and
  /// comparison.
  /// - "P13N" : Audience to which personalized experiences are being rolled
  /// out.
  core.String? group;

  /// The ID of this Personalization experiment.
  ///
  /// Should be composed of letters, numbers, hyphens, and underscores.
  core.String? personalizationId;

  PersonalizationMetadata({
    this.armIndex,
    this.choiceId,
    this.group,
    this.personalizationId,
  });

  PersonalizationMetadata.fromJson(core.Map json_)
      : this(
          armIndex: json_.containsKey('armIndex')
              ? json_['armIndex'] as core.int
              : null,
          choiceId: json_.containsKey('choiceId')
              ? json_['choiceId'] as core.String
              : null,
          group:
              json_.containsKey('group') ? json_['group'] as core.String : null,
          personalizationId: json_.containsKey('personalizationId')
              ? json_['personalizationId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (armIndex != null) 'armIndex': armIndex!,
        if (choiceId != null) 'choiceId': choiceId!,
        if (group != null) 'group': group!,
        if (personalizationId != null) 'personalizationId': personalizationId!,
      };
}

/// Contains the necessary information to fetch a personalized value.
class PersonalizationValue {
  /// Identifier that represents a personalization definition.
  ///
  /// This definition is used to resolve the value at config fetch time. This
  /// system-generated value should not be modified.
  core.String? personalizationId;

  PersonalizationValue({
    this.personalizationId,
  });

  PersonalizationValue.fromJson(core.Map json_)
      : this(
          personalizationId: json_.containsKey('personalizationId')
              ? json_['personalizationId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (personalizationId != null) 'personalizationId': personalizationId!,
      };
}

/// A RemoteConfig represents a Remote Config template.
///
/// A project's Remote Config template is evaluated during each application
/// instance's fetch. The resolved value of a parameter is determined as
/// follows: Given the conditional values that refer to `true` conditions for
/// the application instance, the parameter's resolved value is the conditional
/// value whose name is the earliest in the conditions list. Else, if the
/// parameter has a default value, the resolved value is set to the default
/// value. Else, the parameter has no value and is omitted from the result that
/// the application instance fetches. For example, assume we have parameter key
/// `fruit`, with default value `pear` and conditional value submap `{"is_ios":
/// "apple", "is_in_20_percent": "banana"}` where `"is_ios"` and
/// `"is_20_percent"` are names of conditions in the ordered condition list. The
/// value of `fruit` would evaluate to `apple` if `is_ios` is true. Otherwise,
/// if `is_in_20_percent` is `true`, `fruit` would evaluate to `banana`, and if
/// `is_ios` and `is_in_20_percent` are both false, `fruit` would evaluate to
/// `pear`. If no default value were specified, and `is_ios` and
/// `is_in_20_percent` were both false, no value for `fruit` would be returned
/// from the Remote Config server to the client. Once a project's Remote Config
/// template has been published via a successful UpdateRemoteConfig call,
/// clients can fetch these parameter values and display them to users.
class RemoteConfig {
  /// A list of conditions in descending order by priority.
  ///
  /// The values of the
  /// google.firebase.remoteconfig.v1.RemoteConfigCondition.name entries must be
  /// unique.
  core.List<RemoteConfigCondition>? conditions;

  /// Map of parameter group names to their descriptions and grouped parameters.
  ///
  /// A group's name is mutable but must be unique among groups in the config.
  /// The name is limited to 256 characters and intended to be human-readable.
  /// Any Unicode characters are allowed. Groups have a list of parameters which
  /// allows users of the API to group parameters that are associated with the
  /// same feature or theme together for easy organizational access. For
  /// example, a parameter group with the name "Search V2" may have the
  /// `description` "New mobile search view" and contain parameters for the new
  /// search's layout and font.
  core.Map<core.String, RemoteConfigParameterGroup>? parameterGroups;

  /// Map of parameter keys to their optional default values and optional
  /// conditional values.
  core.Map<core.String, RemoteConfigParameter>? parameters;

  /// Output only, except for the version description.
  ///
  /// Metadata associated with a particular version of a template. A version's
  /// description field may be specified in UpdateRemoteConfig calls.
  Version? version;

  RemoteConfig({
    this.conditions,
    this.parameterGroups,
    this.parameters,
    this.version,
  });

  RemoteConfig.fromJson(core.Map json_)
      : this(
          conditions: json_.containsKey('conditions')
              ? (json_['conditions'] as core.List)
                  .map((value) => RemoteConfigCondition.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          parameterGroups: json_.containsKey('parameterGroups')
              ? (json_['parameterGroups']
                      as core.Map<core.String, core.dynamic>)
                  .map(
                  (key, item) => core.MapEntry(
                    key,
                    RemoteConfigParameterGroup.fromJson(
                        item as core.Map<core.String, core.dynamic>),
                  ),
                )
              : null,
          parameters: json_.containsKey('parameters')
              ? (json_['parameters'] as core.Map<core.String, core.dynamic>)
                  .map(
                  (key, item) => core.MapEntry(
                    key,
                    RemoteConfigParameter.fromJson(
                        item as core.Map<core.String, core.dynamic>),
                  ),
                )
              : null,
          version: json_.containsKey('version')
              ? Version.fromJson(
                  json_['version'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (conditions != null) 'conditions': conditions!,
        if (parameterGroups != null) 'parameterGroups': parameterGroups!,
        if (parameters != null) 'parameters': parameters!,
        if (version != null) 'version': version!,
      };
}

/// A condition targeting a specific group of users.
///
/// A list of these conditions make up part of a RemoteConfig object.
class RemoteConfigCondition {
  /// The logic of this condition.
  ///
  /// See the documentation regarding \[Condition
  /// Expressions\](/docs/remote-config/condition-reference) for the expected
  /// syntax of this field.
  ///
  /// Required.
  core.String? expression;

  /// A non-empty and unique name of this condition.
  ///
  /// Required.
  core.String? name;

  /// The color associated with this condition for display purposes in the
  /// Firebase Console.
  ///
  /// Not specifying this value or having "CONDITION_DISPLAY_COLOR_UNSPECIFIED"
  /// results in the Console picking an arbitrary color to associate with the
  /// condition.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "CONDITION_DISPLAY_COLOR_UNSPECIFIED"
  /// - "BLUE" : Blue
  /// - "BROWN" : Brown
  /// - "CYAN" : Cyan
  /// - "DEEP_ORANGE" : aka "Red Orange"
  /// - "GREEN" : Green
  /// - "INDIGO" : Indigo
  /// - "LIME" : Lime
  /// - "ORANGE" : Orange
  /// - "PINK" : Pink
  /// - "PURPLE" : Purple
  /// - "TEAL" : Teal
  core.String? tagColor;

  RemoteConfigCondition({
    this.expression,
    this.name,
    this.tagColor,
  });

  RemoteConfigCondition.fromJson(core.Map json_)
      : this(
          expression: json_.containsKey('expression')
              ? json_['expression'] as core.String
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          tagColor: json_.containsKey('tagColor')
              ? json_['tagColor'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (expression != null) 'expression': expression!,
        if (name != null) 'name': name!,
        if (tagColor != null) 'tagColor': tagColor!,
      };
}

/// A parameter value associated with a parameter key in
/// google.firebase.remoteconfig.v1.RemoteConfig.parameters.
///
/// At minimum, a `default_value` or a `conditional_values` entry should be
/// present for the parameter to have any effect.
class RemoteConfigParameter {
  /// Optional - a (condition name, value) map.
  ///
  /// The condition_name of the highest priority (the one listed first in the
  /// RemoteConfig's conditions list) determines the value of this parameter.
  core.Map<core.String, RemoteConfigParameterValue>? conditionalValues;

  /// Optional - value to set the parameter to, when none of the named
  /// conditions evaluate to `true`.
  RemoteConfigParameterValue? defaultValue;

  /// A description for this Parameter.
  ///
  /// Its length must be less than or equal to 256 characters . A description
  /// may contain any Unicode characters.
  ///
  /// Optional.
  core.String? description;

  /// The data type for all values of this parameter in the current version of
  /// the template.
  ///
  /// Defaults to `ParameterValueType.STRING` if unspecified.
  /// Possible string values are:
  /// - "PARAMETER_VALUE_TYPE_UNSPECIFIED" : Catch-all for unrecognized enum
  /// values.
  /// - "STRING" : Represents String values.
  /// - "BOOLEAN" : Represents Boolean values ("true" or "false").
  /// - "NUMBER" : Represents both positive and negative integer and float
  /// values.
  /// - "JSON" : Represents JSON values.
  core.String? valueType;

  RemoteConfigParameter({
    this.conditionalValues,
    this.defaultValue,
    this.description,
    this.valueType,
  });

  RemoteConfigParameter.fromJson(core.Map json_)
      : this(
          conditionalValues: json_.containsKey('conditionalValues')
              ? (json_['conditionalValues']
                      as core.Map<core.String, core.dynamic>)
                  .map(
                  (key, item) => core.MapEntry(
                    key,
                    RemoteConfigParameterValue.fromJson(
                        item as core.Map<core.String, core.dynamic>),
                  ),
                )
              : null,
          defaultValue: json_.containsKey('defaultValue')
              ? RemoteConfigParameterValue.fromJson(
                  json_['defaultValue'] as core.Map<core.String, core.dynamic>)
              : null,
          description: json_.containsKey('description')
              ? json_['description'] as core.String
              : null,
          valueType: json_.containsKey('valueType')
              ? json_['valueType'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (conditionalValues != null) 'conditionalValues': conditionalValues!,
        if (defaultValue != null) 'defaultValue': defaultValue!,
        if (description != null) 'description': description!,
        if (valueType != null) 'valueType': valueType!,
      };
}

/// A named group of parameters.
///
/// Grouping parameters is only for management purposes and does not affect
/// client-side fetching of parameter values.
class RemoteConfigParameterGroup {
  /// A description for the group.
  ///
  /// Its length must be less than or equal to 256 characters. A description may
  /// contain any Unicode characters.
  ///
  /// Optional.
  core.String? description;

  /// Map of parameter keys to their optional default values and optional
  /// conditional values for parameters that belong to this group.
  ///
  /// A parameter only appears once per RemoteConfig: an ungrouped parameter
  /// appears at the top level; a parameter organized within a group appears
  /// within its group's map of parameters.
  core.Map<core.String, RemoteConfigParameter>? parameters;

  RemoteConfigParameterGroup({
    this.description,
    this.parameters,
  });

  RemoteConfigParameterGroup.fromJson(core.Map json_)
      : this(
          description: json_.containsKey('description')
              ? json_['description'] as core.String
              : null,
          parameters: json_.containsKey('parameters')
              ? (json_['parameters'] as core.Map<core.String, core.dynamic>)
                  .map(
                  (key, item) => core.MapEntry(
                    key,
                    RemoteConfigParameter.fromJson(
                        item as core.Map<core.String, core.dynamic>),
                  ),
                )
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (description != null) 'description': description!,
        if (parameters != null) 'parameters': parameters!,
      };
}

/// A RemoteConfigParameterValue resource contains the value that a parameter
/// may have.
class RemoteConfigParameterValue {
  /// A dynamic, user-specific value computed when config is fetched.
  PersonalizationValue? personalizationValue;

  /// If true, the parameter is omitted from the parameter values returned to a
  /// client.
  core.bool? useInAppDefault;

  /// The string value that the parameter is set to.
  core.String? value;

  RemoteConfigParameterValue({
    this.personalizationValue,
    this.useInAppDefault,
    this.value,
  });

  RemoteConfigParameterValue.fromJson(core.Map json_)
      : this(
          personalizationValue: json_.containsKey('personalizationValue')
              ? PersonalizationValue.fromJson(json_['personalizationValue']
                  as core.Map<core.String, core.dynamic>)
              : null,
          useInAppDefault: json_.containsKey('useInAppDefault')
              ? json_['useInAppDefault'] as core.bool
              : null,
          value:
              json_.containsKey('value') ? json_['value'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (personalizationValue != null)
          'personalizationValue': personalizationValue!,
        if (useInAppDefault != null) 'useInAppDefault': useInAppDefault!,
        if (value != null) 'value': value!,
      };
}

/// All the fields associated with the person/service account that wrote a
/// Remote Config template.
class RemoteConfigUser {
  /// Email address.
  ///
  /// Output only.
  core.String? email;

  /// Image URL.
  ///
  /// Output only.
  core.String? imageUrl;

  /// Display name.
  ///
  /// Output only.
  core.String? name;

  RemoteConfigUser({
    this.email,
    this.imageUrl,
    this.name,
  });

  RemoteConfigUser.fromJson(core.Map json_)
      : this(
          email:
              json_.containsKey('email') ? json_['email'] as core.String : null,
          imageUrl: json_.containsKey('imageUrl')
              ? json_['imageUrl'] as core.String
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (email != null) 'email': email!,
        if (imageUrl != null) 'imageUrl': imageUrl!,
        if (name != null) 'name': name!,
      };
}

/// Replace the published Remote Config template with an earlier version.
class RollbackRemoteConfigRequest {
  /// The version number of the RemoteConfig to roll back to.
  ///
  /// The specified version number must be less than the current version number,
  /// and not have been deleted due to staleness.
  ///
  /// Required.
  core.String? versionNumber;

  RollbackRemoteConfigRequest({
    this.versionNumber,
  });

  RollbackRemoteConfigRequest.fromJson(core.Map json_)
      : this(
          versionNumber: json_.containsKey('versionNumber')
              ? json_['versionNumber'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (versionNumber != null) 'versionNumber': versionNumber!,
      };
}

/// Contains all metadata about a particular version of the Remote Config
/// template.
///
/// All fields are set at the time the specified Remote Config template was
/// written.
class Version {
  /// The user-provided description of the corresponding Remote Config template
  ///
  /// Optional.
  core.String? description;

  /// `True` if this Remote Config template was published before version history
  /// was supported.
  ///
  /// Output only.
  core.bool? isLegacy;

  /// Only present if this version is the result of a rollback, and will be the
  /// version number of the Remote Config template that was rolled-back to.
  ///
  /// Output only.
  core.String? rollbackSource;

  /// Where the update action originated.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "REMOTE_CONFIG_UPDATE_ORIGIN_UNSPECIFIED" : Catch-all for unrecognized
  /// values.
  /// - "CONSOLE" : The update came from the Firebase UI.
  /// - "REST_API" : The update came from the Remote Config REST API.
  /// - "ADMIN_SDK_NODE" : This value is used when the update came from the
  /// Firebase Admin Node SDK
  core.String? updateOrigin;

  /// When the Remote Config template was written to the Remote Config server.
  ///
  /// Output only.
  core.String? updateTime;

  /// What type of update was made.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "REMOTE_CONFIG_UPDATE_TYPE_UNSPECIFIED" : Catch-all for unrecognized
  /// enum values.
  /// - "INCREMENTAL_UPDATE" : A regular incremental update.
  /// - "FORCED_UPDATE" : A forced update. The ETag was specified as "*" in an
  /// UpdateRemoteConfigRequest request or the "Force Update" button was pressed
  /// on the console.
  /// - "ROLLBACK" : A rollback to a previous Remote Config template.
  core.String? updateType;

  /// Aggregation of all metadata fields about the account that performed the
  /// update.
  ///
  /// Output only.
  RemoteConfigUser? updateUser;

  /// The version number of the version's corresponding Remote Config template.
  ///
  /// Output only.
  core.String? versionNumber;

  Version({
    this.description,
    this.isLegacy,
    this.rollbackSource,
    this.updateOrigin,
    this.updateTime,
    this.updateType,
    this.updateUser,
    this.versionNumber,
  });

  Version.fromJson(core.Map json_)
      : this(
          description: json_.containsKey('description')
              ? json_['description'] as core.String
              : null,
          isLegacy: json_.containsKey('isLegacy')
              ? json_['isLegacy'] as core.bool
              : null,
          rollbackSource: json_.containsKey('rollbackSource')
              ? json_['rollbackSource'] as core.String
              : null,
          updateOrigin: json_.containsKey('updateOrigin')
              ? json_['updateOrigin'] as core.String
              : null,
          updateTime: json_.containsKey('updateTime')
              ? json_['updateTime'] as core.String
              : null,
          updateType: json_.containsKey('updateType')
              ? json_['updateType'] as core.String
              : null,
          updateUser: json_.containsKey('updateUser')
              ? RemoteConfigUser.fromJson(
                  json_['updateUser'] as core.Map<core.String, core.dynamic>)
              : null,
          versionNumber: json_.containsKey('versionNumber')
              ? json_['versionNumber'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (description != null) 'description': description!,
        if (isLegacy != null) 'isLegacy': isLegacy!,
        if (rollbackSource != null) 'rollbackSource': rollbackSource!,
        if (updateOrigin != null) 'updateOrigin': updateOrigin!,
        if (updateTime != null) 'updateTime': updateTime!,
        if (updateType != null) 'updateType': updateType!,
        if (updateUser != null) 'updateUser': updateUser!,
        if (versionNumber != null) 'versionNumber': versionNumber!,
      };
}
