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

/// Firebase Management API - v1beta1
///
/// The Firebase Management API enables programmatic setup and management of
/// Firebase projects, including a project's Firebase resources and Firebase
/// apps.
///
/// For more information, see <https://firebase.google.com>
///
/// Create an instance of [FirebaseManagementApi] to access these resources:
///
/// - [AvailableProjectsResource]
/// - [OperationsResource]
/// - [ProjectsResource]
///   - [ProjectsAndroidAppsResource]
///     - [ProjectsAndroidAppsShaResource]
///   - [ProjectsAvailableLocationsResource]
///   - [ProjectsDefaultLocationResource]
///   - [ProjectsIosAppsResource]
///   - [ProjectsWebAppsResource]
library firebase.v1beta1;

import 'dart:async' as async;
import 'dart:convert' as convert;
import 'dart:core' as core;

import 'package:_discoveryapis_commons/_discoveryapis_commons.dart' as commons;
import 'package:http/http.dart' as http;

import '../src/empty.dart';
import '../src/user_agent.dart';

export 'package:_discoveryapis_commons/_discoveryapis_commons.dart'
    show ApiRequestError, DetailedApiRequestError;

/// The Firebase Management API enables programmatic setup and management of
/// Firebase projects, including a project's Firebase resources and Firebase
/// apps.
class FirebaseManagementApi {
  /// See, edit, configure, and delete your Google Cloud data and see the email
  /// address for your Google Account.
  static const cloudPlatformScope =
      'https://www.googleapis.com/auth/cloud-platform';

  /// View your data across Google Cloud services and see the email address of
  /// your Google Account
  static const cloudPlatformReadOnlyScope =
      'https://www.googleapis.com/auth/cloud-platform.read-only';

  /// View and administer all your Firebase data and settings
  static const firebaseScope = 'https://www.googleapis.com/auth/firebase';

  /// View all your Firebase data and settings
  static const firebaseReadonlyScope =
      'https://www.googleapis.com/auth/firebase.readonly';

  final commons.ApiRequester _requester;

  AvailableProjectsResource get availableProjects =>
      AvailableProjectsResource(_requester);
  OperationsResource get operations => OperationsResource(_requester);
  ProjectsResource get projects => ProjectsResource(_requester);

  FirebaseManagementApi(http.Client client,
      {core.String rootUrl = 'https://firebase.googleapis.com/',
      core.String servicePath = ''})
      : _requester =
            commons.ApiRequester(client, rootUrl, servicePath, requestHeaders);
}

class AvailableProjectsResource {
  final commons.ApiRequester _requester;

  AvailableProjectsResource(commons.ApiRequester client) : _requester = client;

  /// Lists each \[Google Cloud Platform (GCP)
  /// `Project`\](https://cloud.google.com/resource-manager/reference/rest/v1/projects)
  /// that can have Firebase resources added to it.
  ///
  /// A Project will only be listed if: - The caller has sufficient
  /// [Google IAM](https://cloud.google.com/iam) permissions to call
  /// AddFirebase. - The Project is not already a FirebaseProject. - The Project
  /// is not in an Organization which has policies that prevent Firebase
  /// resources from being added.
  ///
  /// Request parameters:
  ///
  /// [pageSize] - The maximum number of Projects to return in the response. The
  /// server may return fewer than this value at its discretion. If no value is
  /// specified (or too large a value is specified), the server will impose its
  /// own limit. This value cannot be negative.
  ///
  /// [pageToken] - Token returned from a previous call to
  /// `ListAvailableProjects` indicating where in the set of Projects to resume
  /// listing.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListAvailableProjectsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListAvailableProjectsResponse> list({
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    const _url = 'v1beta1/availableProjects';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return ListAvailableProjectsResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class OperationsResource {
  final commons.ApiRequester _requester;

  OperationsResource(commons.ApiRequester client) : _requester = client;

  /// Gets the latest state of a long-running operation.
  ///
  /// Clients can use this method to poll the operation result at intervals as
  /// recommended by the API service.
  ///
  /// Request parameters:
  ///
  /// [name] - The name of the operation resource.
  /// Value must have pattern `^operations/.*$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Operation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Operation> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1beta1/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return Operation.fromJson(_response as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsResource {
  final commons.ApiRequester _requester;

  ProjectsAndroidAppsResource get androidApps =>
      ProjectsAndroidAppsResource(_requester);
  ProjectsAvailableLocationsResource get availableLocations =>
      ProjectsAvailableLocationsResource(_requester);
  ProjectsDefaultLocationResource get defaultLocation =>
      ProjectsDefaultLocationResource(_requester);
  ProjectsIosAppsResource get iosApps => ProjectsIosAppsResource(_requester);
  ProjectsWebAppsResource get webApps => ProjectsWebAppsResource(_requester);

  ProjectsResource(commons.ApiRequester client) : _requester = client;

  /// Adds Firebase resources to the specified existing \[Google Cloud Platform
  /// (GCP)
  /// `Project`\](https://cloud.google.com/resource-manager/reference/rest/v1/projects).
  ///
  /// Since a FirebaseProject is actually also a GCP `Project`, a
  /// `FirebaseProject` has the same underlying GCP identifiers (`projectNumber`
  /// and `projectId`). This allows for easy interop with Google APIs. The
  /// result of this call is an \[`Operation`\](../../v1beta1/operations). Poll
  /// the `Operation` to track the provisioning process by calling GetOperation
  /// until \[`done`\](../../v1beta1/operations#Operation.FIELDS.done) is
  /// `true`. When `done` is `true`, the `Operation` has either succeeded or
  /// failed. If the `Operation` succeeded, its
  /// \[`response`\](../../v1beta1/operations#Operation.FIELDS.response) is set
  /// to a FirebaseProject; if the `Operation` failed, its
  /// \[`error`\](../../v1beta1/operations#Operation.FIELDS.error) is set to a
  /// google.rpc.Status. The `Operation` is automatically deleted after
  /// completion, so there is no need to call DeleteOperation. This method does
  /// not modify any billing account information on the underlying GCP
  /// `Project`. To call `AddFirebase`, a project member or service account must
  /// have the following permissions (the IAM roles of Editor and Owner contain
  /// these permissions): `firebase.projects.update`,
  /// `resourcemanager.projects.get`, `serviceusage.services.enable`, and
  /// `serviceusage.services.get`.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [project] - The resource name of the GCP `Project` to which Firebase
  /// resources will be added, in the format: projects/PROJECT_IDENTIFIER Refer
  /// to the `FirebaseProject`
  /// \[`name`\](../projects#FirebaseProject.FIELDS.name) field for details
  /// about PROJECT_IDENTIFIER values. After calling `AddFirebase`, the unique
  /// Project identifiers (
  /// \[`projectNumber`\](https://cloud.google.com/resource-manager/reference/rest/v1/projects#Project.FIELDS.project_number)
  /// and
  /// \[`projectId`\](https://cloud.google.com/resource-manager/reference/rest/v1/projects#Project.FIELDS.project_id))
  /// of the underlying GCP `Project` are also the identifiers of the
  /// FirebaseProject.
  /// Value must have pattern `^projects/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Operation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Operation> addFirebase(
    AddFirebaseRequest request,
    core.String project, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request.toJson());
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1beta1/' + core.Uri.encodeFull('$project') + ':addFirebase';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return Operation.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Links the specified FirebaseProject with an existing
  /// [Google Analytics account](http://www.google.com/analytics/).
  ///
  /// Using this call, you can either: - Specify an `analyticsAccountId` to
  /// provision a new Google Analytics property within the specified account and
  /// associate the new property with the `FirebaseProject`. - Specify an
  /// existing `analyticsPropertyId` to associate the property with the
  /// `FirebaseProject`. Note that when you call `AddGoogleAnalytics`: 1. The
  /// first check determines if any existing data streams in the Google
  /// Analytics property correspond to any existing Firebase Apps in the
  /// `FirebaseProject` (based on the `packageName` or `bundleId` associated
  /// with the data stream). Then, as applicable, the data streams and apps are
  /// linked. Note that this auto-linking only applies to `AndroidApps` and
  /// `IosApps`. 2. If no corresponding data streams are found for the Firebase
  /// Apps, new data streams are provisioned in the Google Analytics property
  /// for each of the Firebase Apps. Note that a new data stream is always
  /// provisioned for a Web App even if it was previously associated with a data
  /// stream in the Analytics property. Learn more about the hierarchy and
  /// structure of Google Analytics accounts in the
  /// [Analytics documentation](https://support.google.com/analytics/answer/9303323).
  /// The result of this call is an \[`Operation`\](../../v1beta1/operations).
  /// Poll the `Operation` to track the provisioning process by calling
  /// GetOperation until
  /// \[`done`\](../../v1beta1/operations#Operation.FIELDS.done) is `true`. When
  /// `done` is `true`, the `Operation` has either succeeded or failed. If the
  /// `Operation` succeeded, its
  /// \[`response`\](../../v1beta1/operations#Operation.FIELDS.response) is set
  /// to an AnalyticsDetails; if the `Operation` failed, its
  /// \[`error`\](../../v1beta1/operations#Operation.FIELDS.error) is set to a
  /// google.rpc.Status. To call `AddGoogleAnalytics`, a project member must be
  /// an Owner for the existing `FirebaseProject` and have the \[`Edit`
  /// permission\](https://support.google.com/analytics/answer/2884495) for the
  /// Google Analytics account. If the `FirebaseProject` already has Google
  /// Analytics enabled, and you call `AddGoogleAnalytics` using an
  /// `analyticsPropertyId` that's different from the currently associated
  /// property, then the call will fail. Analytics may have already been enabled
  /// in the Firebase console or by specifying `timeZone` and `regionCode` in
  /// the call to \[`AddFirebase`\](../../v1beta1/projects/addFirebase).
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - The resource name of the FirebaseProject to link to an existing
  /// Google Analytics account, in the format: projects/PROJECT_IDENTIFIER Refer
  /// to the `FirebaseProject`
  /// \[`name`\](../projects#FirebaseProject.FIELDS.name) field for details
  /// about PROJECT_IDENTIFIER values.
  /// Value must have pattern `^projects/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Operation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Operation> addGoogleAnalytics(
    AddGoogleAnalyticsRequest request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request.toJson());
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url =
        'v1beta1/' + core.Uri.encodeFull('$parent') + ':addGoogleAnalytics';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return Operation.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Gets the specified FirebaseProject.
  ///
  /// Request parameters:
  ///
  /// [name] - The resource name of the FirebaseProject, in the format:
  /// projects/ PROJECT_IDENTIFIER Refer to the `FirebaseProject`
  /// \[`name`\](../projects#FirebaseProject.FIELDS.name) field for details
  /// about PROJECT_IDENTIFIER values.
  /// Value must have pattern `^projects/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [FirebaseProject].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<FirebaseProject> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1beta1/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return FirebaseProject.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Gets the configuration artifact associated with the specified
  /// FirebaseProject, which can be used by servers to simplify initialization.
  ///
  /// Typically, this configuration is used with the Firebase Admin SDK
  /// [initializeApp](https://firebase.google.com/docs/admin/setup#initialize_the_sdk)
  /// command.
  ///
  /// Request parameters:
  ///
  /// [name] - The resource name of the FirebaseProject, in the format:
  /// projects/ PROJECT_IDENTIFIER/adminSdkConfig Refer to the `FirebaseProject`
  /// \[`name`\](../projects#FirebaseProject.FIELDS.name) field for details
  /// about PROJECT_IDENTIFIER values.
  /// Value must have pattern `^projects/\[^/\]+/adminSdkConfig$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [AdminSdkConfig].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<AdminSdkConfig> getAdminSdkConfig(
    core.String name, {
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1beta1/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return AdminSdkConfig.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Gets the Google Analytics details currently associated with the specified
  /// FirebaseProject.
  ///
  /// If the `FirebaseProject` is not yet linked to Google Analytics, then the
  /// response to `GetAnalyticsDetails` is `NOT_FOUND`.
  ///
  /// Request parameters:
  ///
  /// [name] - The resource name of the FirebaseProject, in the format:
  /// projects/ PROJECT_IDENTIFIER/analyticsDetails Refer to the
  /// `FirebaseProject` \[`name`\](../projects#FirebaseProject.FIELDS.name)
  /// field for details about PROJECT_IDENTIFIER values.
  /// Value must have pattern `^projects/\[^/\]+/analyticsDetails$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [AnalyticsDetails].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<AnalyticsDetails> getAnalyticsDetails(
    core.String name, {
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1beta1/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return AnalyticsDetails.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Lists each FirebaseProject accessible to the caller.
  ///
  /// The elements are returned in no particular order, but they will be a
  /// consistent view of the Projects when additional requests are made with a
  /// `pageToken`. This method is eventually consistent with Project mutations,
  /// which means newly provisioned Projects and recent modifications to
  /// existing Projects might not be reflected in the set of Projects. The list
  /// will include only ACTIVE Projects. Use GetFirebaseProject for consistent
  /// reads as well as for additional Project details.
  ///
  /// Request parameters:
  ///
  /// [pageSize] - The maximum number of Projects to return in the response. The
  /// server may return fewer than this at its discretion. If no value is
  /// specified (or too large a value is specified), the server will impose its
  /// own limit. This value cannot be negative.
  ///
  /// [pageToken] - Token returned from a previous call to
  /// `ListFirebaseProjects` indicating where in the set of Projects to resume
  /// listing.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListFirebaseProjectsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListFirebaseProjectsResponse> list({
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    const _url = 'v1beta1/projects';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return ListFirebaseProjectsResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Updates the attributes of the specified FirebaseProject.
  ///
  /// All \[query parameters\](#query-parameters) are required.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - The resource name of the Project, in the format:
  /// projects/PROJECT_IDENTIFIER PROJECT_IDENTIFIER: the Project's
  /// \[`ProjectNumber`\](../projects#FirebaseProject.FIELDS.project_number)
  /// ***(recommended)*** or its
  /// \[`ProjectId`\](../projects#FirebaseProject.FIELDS.project_id). Learn more
  /// about using project identifiers in Google's
  /// [AIP 2510 standard](https://google.aip.dev/cloud/2510). Note that the
  /// value for PROJECT_IDENTIFIER in any response body will be the `ProjectId`.
  /// Value must have pattern `^projects/\[^/\]+$`.
  ///
  /// [updateMask] - Specifies which fields to update. If this list is empty,
  /// then no state will be updated. Note that the fields `name`, `projectId`,
  /// and `projectNumber` are all immutable.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [FirebaseProject].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<FirebaseProject> patch(
    FirebaseProject request,
    core.String name, {
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request.toJson());
    final _queryParams = <core.String, core.List<core.String>>{
      if (updateMask != null) 'updateMask': [updateMask],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1beta1/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'PATCH',
      body: _body,
      queryParams: _queryParams,
    );
    return FirebaseProject.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Unlinks the specified FirebaseProject from its Google Analytics account.
  ///
  /// This call removes the association of the specified `FirebaseProject` with
  /// its current Google Analytics property. However, this call does not delete
  /// the Google Analytics resources, such as the Google Analytics property or
  /// any data streams. These resources may be re-associated later to the
  /// `FirebaseProject` by calling
  /// \[`AddGoogleAnalytics`\](../../v1beta1/projects/addGoogleAnalytics) and
  /// specifying the same `analyticsPropertyId`. For Android Apps and iOS Apps,
  /// this call re-links data streams with their corresponding apps. However,
  /// for Web Apps, this call provisions a *new* data stream for each Web App.
  /// To call `RemoveAnalytics`, a project member must be an Owner for the
  /// `FirebaseProject`.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - The resource name of the FirebaseProject to unlink from its
  /// Google Analytics account, in the format: projects/PROJECT_IDENTIFIER Refer
  /// to the `FirebaseProject`
  /// \[`name`\](../projects#FirebaseProject.FIELDS.name) field for details
  /// about PROJECT_IDENTIFIER values.
  /// Value must have pattern `^projects/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Empty].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Empty> removeAnalytics(
    RemoveAnalyticsRequest request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request.toJson());
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url =
        'v1beta1/' + core.Uri.encodeFull('$parent') + ':removeAnalytics';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return Empty.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Lists all available Apps for the specified FirebaseProject.
  ///
  /// This is a convenience method. Typically, interaction with an App should be
  /// done using the platform-specific service, but some tool use-cases require
  /// a summary of all known Apps (such as for App selector interfaces).
  ///
  /// Request parameters:
  ///
  /// [parent] - The parent FirebaseProject for which to list Apps, in the
  /// format: projects/ PROJECT_IDENTIFIER Refer to the `FirebaseProject`
  /// \[`name`\](../projects#FirebaseProject.FIELDS.name) field for details
  /// about PROJECT_IDENTIFIER values.
  /// Value must have pattern `^projects/\[^/\]+$`.
  ///
  /// [filter] - A query string compatible with Google's
  /// \[AIP-160\](https://google.aip.dev/160) standard. Use any of the following
  /// fields in a query: *
  /// \[`app_id`\](../projects.apps#FirebaseAppInfo.FIELDS.app_id) *
  /// \[`namespace`\](../projects.apps#FirebaseAppInfo.FIELDS.namespace) *
  /// \[`platform`\](../projects.apps#FirebaseAppInfo.FIELDS.platform) We also
  /// support the following "virtual" fields (fields which are not actually part
  /// of the returned resource object, but can be queried as if they are
  /// pre-populated with specific values): * `sha1_hash`: This field is
  /// considered to be a repeated `string` field, populated with the list of all
  /// SHA-1 certificate fingerprints registered with the app. This list is empty
  /// if the app is not an Android app. * `sha256_hash`: This field is
  /// considered to be a repeated `string` field, populated with the list of all
  /// SHA-256 certificate fingerprints registered with the app. This list is
  /// empty if the app is not an Android app. * `app_store_id`: This field is
  /// considered to be a singular `string` field, populated with the Apple App
  /// Store ID registered with the app. This field is empty if the app is not an
  /// iOS app. * `team_id`: This field is considered to be a singular `string`
  /// field, populated with the Apple team ID registered with the app. This
  /// field is empty if the app is not an iOS app.
  ///
  /// [pageSize] - The maximum number of Apps to return in the response. The
  /// server may return fewer than this value at its discretion. If no value is
  /// specified (or too large a value is specified), then the server will impose
  /// its own limit. This value cannot be negative.
  ///
  /// [pageToken] - Token returned from a previous call to `SearchFirebaseApps`
  /// indicating where in the set of Apps to resume listing.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [SearchFirebaseAppsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<SearchFirebaseAppsResponse> searchApps(
    core.String parent, {
    core.String? filter,
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (filter != null) 'filter': [filter],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1beta1/' + core.Uri.encodeFull('$parent') + ':searchApps';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return SearchFirebaseAppsResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsAndroidAppsResource {
  final commons.ApiRequester _requester;

  ProjectsAndroidAppsShaResource get sha =>
      ProjectsAndroidAppsShaResource(_requester);

  ProjectsAndroidAppsResource(commons.ApiRequester client)
      : _requester = client;

  /// Requests the creation of a new AndroidApp in the specified
  /// FirebaseProject.
  ///
  /// The result of this call is an `Operation` which can be used to track the
  /// provisioning process. The `Operation` is automatically deleted after
  /// completion, so there is no need to call `DeleteOperation`.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - The resource name of the parent FirebaseProject in which to
  /// create an AndroidApp, in the format:
  /// projects/PROJECT_IDENTIFIER/androidApps Refer to the `FirebaseProject`
  /// \[`name`\](../projects#FirebaseProject.FIELDS.name) field for details
  /// about PROJECT_IDENTIFIER values.
  /// Value must have pattern `^projects/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Operation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Operation> create(
    AndroidApp request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request.toJson());
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1beta1/' + core.Uri.encodeFull('$parent') + '/androidApps';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return Operation.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Gets the specified AndroidApp.
  ///
  /// Request parameters:
  ///
  /// [name] - The resource name of the AndroidApp, in the format: projects/
  /// PROJECT_IDENTIFIER/androidApps/APP_ID Since an APP_ID is a unique
  /// identifier, the Unique Resource from Sub-Collection access pattern may be
  /// used here, in the format: projects/-/androidApps/APP_ID Refer to the
  /// `AndroidApp` \[`name`\](../projects.androidApps#AndroidApp.FIELDS.name)
  /// field for details about PROJECT_IDENTIFIER and APP_ID values.
  /// Value must have pattern `^projects/\[^/\]+/androidApps/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [AndroidApp].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<AndroidApp> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1beta1/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return AndroidApp.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Gets the configuration artifact associated with the specified AndroidApp.
  ///
  /// Request parameters:
  ///
  /// [name] - The resource name of the AndroidApp configuration to download, in
  /// the format: projects/PROJECT_IDENTIFIER/androidApps/APP_ID/config Since an
  /// APP_ID is a unique identifier, the Unique Resource from Sub-Collection
  /// access pattern may be used here, in the format:
  /// projects/-/androidApps/APP_ID Refer to the `AndroidApp`
  /// \[`name`\](../projects.androidApps#AndroidApp.FIELDS.name) field for
  /// details about PROJECT_IDENTIFIER and APP_ID values.
  /// Value must have pattern `^projects/\[^/\]+/androidApps/\[^/\]+/config$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [AndroidAppConfig].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<AndroidAppConfig> getConfig(
    core.String name, {
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1beta1/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return AndroidAppConfig.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Lists each AndroidApp associated with the specified FirebaseProject.
  ///
  /// The elements are returned in no particular order, but will be a consistent
  /// view of the Apps when additional requests are made with a `pageToken`.
  ///
  /// Request parameters:
  ///
  /// [parent] - The resource name of the parent FirebaseProject for which to
  /// list each associated AndroidApp, in the format:
  /// projects/PROJECT_IDENTIFIER /androidApps Refer to the `FirebaseProject`
  /// \[`name`\](../projects#FirebaseProject.FIELDS.name) field for details
  /// about PROJECT_IDENTIFIER values.
  /// Value must have pattern `^projects/\[^/\]+$`.
  ///
  /// [pageSize] - The maximum number of Apps to return in the response. The
  /// server may return fewer than this at its discretion. If no value is
  /// specified (or too large a value is specified), then the server will impose
  /// its own limit.
  ///
  /// [pageToken] - Token returned from a previous call to `ListAndroidApps`
  /// indicating where in the set of Apps to resume listing.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListAndroidAppsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListAndroidAppsResponse> list(
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

    final _url = 'v1beta1/' + core.Uri.encodeFull('$parent') + '/androidApps';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return ListAndroidAppsResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Updates the attributes of the specified AndroidApp.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - The resource name of the AndroidApp, in the format: projects/
  /// PROJECT_IDENTIFIER/androidApps/APP_ID * PROJECT_IDENTIFIER: the parent
  /// Project's
  /// \[`ProjectNumber`\](../projects#FirebaseProject.FIELDS.project_number)
  /// ***(recommended)*** or its
  /// \[`ProjectId`\](../projects#FirebaseProject.FIELDS.project_id). Learn more
  /// about using project identifiers in Google's
  /// [AIP 2510 standard](https://google.aip.dev/cloud/2510). Note that the
  /// value for PROJECT_IDENTIFIER in any response body will be the `ProjectId`.
  /// * APP_ID: the globally unique, Firebase-assigned identifier for the App
  /// (see \[`appId`\](../projects.androidApps#AndroidApp.FIELDS.app_id)).
  /// Value must have pattern `^projects/\[^/\]+/androidApps/\[^/\]+$`.
  ///
  /// [updateMask] - Specifies which fields to update. Note that the fields
  /// `name`, `app_id`, `project_id`, and `package_name` are all immutable.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [AndroidApp].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<AndroidApp> patch(
    AndroidApp request,
    core.String name, {
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request.toJson());
    final _queryParams = <core.String, core.List<core.String>>{
      if (updateMask != null) 'updateMask': [updateMask],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1beta1/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'PATCH',
      body: _body,
      queryParams: _queryParams,
    );
    return AndroidApp.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsAndroidAppsShaResource {
  final commons.ApiRequester _requester;

  ProjectsAndroidAppsShaResource(commons.ApiRequester client)
      : _requester = client;

  /// Adds a ShaCertificate to the specified AndroidApp.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - The resource name of the parent AndroidApp to which to add a
  /// ShaCertificate, in the format: projects/PROJECT_IDENTIFIER/androidApps/
  /// APP_ID Since an APP_ID is a unique identifier, the Unique Resource from
  /// Sub-Collection access pattern may be used here, in the format:
  /// projects/-/androidApps/APP_ID Refer to the `AndroidApp`
  /// \[`name`\](../projects.androidApps#AndroidApp.FIELDS.name) field for
  /// details about PROJECT_IDENTIFIER and APP_ID values.
  /// Value must have pattern `^projects/\[^/\]+/androidApps/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ShaCertificate].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ShaCertificate> create(
    ShaCertificate request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request.toJson());
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1beta1/' + core.Uri.encodeFull('$parent') + '/sha';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return ShaCertificate.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Removes a ShaCertificate from the specified AndroidApp.
  ///
  /// Request parameters:
  ///
  /// [name] - The resource name of the ShaCertificate to remove from the parent
  /// AndroidApp, in the format: projects/PROJECT_IDENTIFIER/androidApps/APP_ID
  /// /sha/SHA_HASH Refer to the `ShaCertificate`
  /// \[`name`\](../projects.androidApps.sha#ShaCertificate.FIELDS.name) field
  /// for details about PROJECT_IDENTIFIER, APP_ID, and SHA_HASH values. You can
  /// obtain the full resource name of the `ShaCertificate` from the response of
  /// \[`ListShaCertificates`\](../projects.androidApps.sha/list) or the
  /// original \[`CreateShaCertificate`\](../projects.androidApps.sha/create).
  /// Value must have pattern
  /// `^projects/\[^/\]+/androidApps/\[^/\]+/sha/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Empty].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Empty> delete(
    core.String name, {
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1beta1/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'DELETE',
      queryParams: _queryParams,
    );
    return Empty.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Lists the SHA-1 and SHA-256 certificates for the specified AndroidApp.
  ///
  /// Request parameters:
  ///
  /// [parent] - The resource name of the parent AndroidApp for which to list
  /// each associated ShaCertificate, in the format: projects/PROJECT_IDENTIFIER
  /// /androidApps/APP_ID Since an APP_ID is a unique identifier, the Unique
  /// Resource from Sub-Collection access pattern may be used here, in the
  /// format: projects/-/androidApps/APP_ID Refer to the `AndroidApp`
  /// \[`name`\](../projects.androidApps#AndroidApp.FIELDS.name) field for
  /// details about PROJECT_IDENTIFIER and APP_ID values.
  /// Value must have pattern `^projects/\[^/\]+/androidApps/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListShaCertificatesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListShaCertificatesResponse> list(
    core.String parent, {
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1beta1/' + core.Uri.encodeFull('$parent') + '/sha';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return ListShaCertificatesResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsAvailableLocationsResource {
  final commons.ApiRequester _requester;

  ProjectsAvailableLocationsResource(commons.ApiRequester client)
      : _requester = client;

  /// Lists the valid Google Cloud Platform (GCP) resource locations for the
  /// specified Project (including a FirebaseProject).
  ///
  /// One of these locations can be selected as the Project's
  /// [_default_ GCP resource location](https://firebase.google.com/docs/projects/locations),
  /// which is the geographical location where the Project's resources, such as
  /// Cloud Firestore, will be provisioned by default. However, if the default
  /// GCP resource location has already been set for the Project, then this
  /// setting cannot be changed. This call checks for any possible
  /// [location restrictions](https://cloud.google.com/resource-manager/docs/organization-policy/defining-locations)
  /// for the specified Project and, thus, might return a subset of all possible
  /// GCP resource locations. To list all GCP resource locations (regardless of
  /// any restrictions), call the endpoint without specifying a unique project
  /// identifier (that is,
  /// `/v1beta1/{parent=projects/-}/listAvailableLocations`). To call
  /// `ListAvailableLocations` with a specified project, a member must be at
  /// minimum a Viewer of the Project. Calls without a specified project do not
  /// require any specific project permissions.
  ///
  /// Request parameters:
  ///
  /// [parent] - The FirebaseProject for which to list GCP resource locations,
  /// in the format: projects/PROJECT_IDENTIFIER Refer to the `FirebaseProject`
  /// \[`name`\](../projects#FirebaseProject.FIELDS.name) field for details
  /// about PROJECT_IDENTIFIER values. If no unique project identifier is
  /// specified (that is, `projects/-`), the returned list does not take into
  /// account org-specific or project-specific location restrictions.
  /// Value must have pattern `^projects/\[^/\]+$`.
  ///
  /// [pageSize] - The maximum number of locations to return in the response.
  /// The server may return fewer than this value at its discretion. If no value
  /// is specified (or too large a value is specified), then the server will
  /// impose its own limit. This value cannot be negative.
  ///
  /// [pageToken] - Token returned from a previous call to
  /// `ListAvailableLocations` indicating where in the list of locations to
  /// resume listing.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListAvailableLocationsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListAvailableLocationsResponse> list(
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

    final _url =
        'v1beta1/' + core.Uri.encodeFull('$parent') + '/availableLocations';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return ListAvailableLocationsResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsDefaultLocationResource {
  final commons.ApiRequester _requester;

  ProjectsDefaultLocationResource(commons.ApiRequester client)
      : _requester = client;

  /// Sets the default Google Cloud Platform (GCP) resource location for the
  /// specified FirebaseProject.
  ///
  /// This method creates an App Engine application with a
  /// [default Cloud Storage bucket](https://cloud.google.com/appengine/docs/standard/python/googlecloudstorageclient/setting-up-cloud-storage#activating_a_cloud_storage_bucket),
  /// located in the specified
  /// \[`locationId`\](#body.request_body.FIELDS.location_id). This location
  /// must be one of the available
  /// [GCP resource locations](https://firebase.google.com/docs/projects/locations).
  /// After the default GCP resource location is finalized, or if it was already
  /// set, it cannot be changed. The default GCP resource location for the
  /// specified `FirebaseProject` might already be set because either the
  /// underlying GCP `Project` already has an App Engine application or
  /// `FinalizeDefaultLocation` was previously called with a specified
  /// `locationId`. Any new calls to `FinalizeDefaultLocation` with a
  /// *different* specified `locationId` will return a 409 error. The result of
  /// this call is an \[`Operation`\](../../v1beta1/operations), which can be
  /// used to track the provisioning process. The
  /// \[`response`\](../../v1beta1/operations#Operation.FIELDS.response) type of
  /// the `Operation` is google.protobuf.Empty. The `Operation` can be polled by
  /// its `name` using GetOperation until `done` is true. When `done` is true,
  /// the `Operation` has either succeeded or failed. If the `Operation` has
  /// succeeded, its
  /// \[`response`\](../../v1beta1/operations#Operation.FIELDS.response) will be
  /// set to a google.protobuf.Empty; if the `Operation` has failed, its `error`
  /// will be set to a google.rpc.Status. The `Operation` is automatically
  /// deleted after completion, so there is no need to call DeleteOperation. All
  /// fields listed in the \[request body\](#request-body) are required. To call
  /// `FinalizeDefaultLocation`, a member must be an Owner of the Project.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - The resource name of the FirebaseProject for which the default
  /// GCP resource location will be set, in the format:
  /// projects/PROJECT_IDENTIFIER Refer to the `FirebaseProject`
  /// \[`name`\](../projects#FirebaseProject.FIELDS.name) field for details
  /// about PROJECT_IDENTIFIER values.
  /// Value must have pattern `^projects/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Operation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Operation> finalize(
    FinalizeDefaultLocationRequest request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request.toJson());
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1beta1/' +
        core.Uri.encodeFull('$parent') +
        '/defaultLocation:finalize';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return Operation.fromJson(_response as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsIosAppsResource {
  final commons.ApiRequester _requester;

  ProjectsIosAppsResource(commons.ApiRequester client) : _requester = client;

  /// Requests the creation of a new IosApp in the specified FirebaseProject.
  ///
  /// The result of this call is an `Operation` which can be used to track the
  /// provisioning process. The `Operation` is automatically deleted after
  /// completion, so there is no need to call `DeleteOperation`.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - The resource name of the parent FirebaseProject in which to
  /// create an IosApp, in the format: projects/PROJECT_IDENTIFIER/iosApps Refer
  /// to the `FirebaseProject`
  /// \[`name`\](../projects#FirebaseProject.FIELDS.name) field for details
  /// about PROJECT_IDENTIFIER values.
  /// Value must have pattern `^projects/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Operation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Operation> create(
    IosApp request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request.toJson());
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1beta1/' + core.Uri.encodeFull('$parent') + '/iosApps';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return Operation.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Gets the specified IosApp.
  ///
  /// Request parameters:
  ///
  /// [name] - The resource name of the IosApp, in the format:
  /// projects/PROJECT_IDENTIFIER /iosApps/APP_ID Since an APP_ID is a unique
  /// identifier, the Unique Resource from Sub-Collection access pattern may be
  /// used here, in the format: projects/-/iosApps/APP_ID Refer to the `IosApp`
  /// \[`name`\](../projects.iosApps#IosApp.FIELDS.name) field for details about
  /// PROJECT_IDENTIFIER and APP_ID values.
  /// Value must have pattern `^projects/\[^/\]+/iosApps/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [IosApp].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<IosApp> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1beta1/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return IosApp.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Gets the configuration artifact associated with the specified IosApp.
  ///
  /// Request parameters:
  ///
  /// [name] - The resource name of the App configuration to download, in the
  /// format: projects/PROJECT_IDENTIFIER/iosApps/APP_ID/config Since an APP_ID
  /// is a unique identifier, the Unique Resource from Sub-Collection access
  /// pattern may be used here, in the format: projects/-/iosApps/APP_ID Refer
  /// to the `IosApp` \[`name`\](../projects.iosApps#IosApp.FIELDS.name) field
  /// for details about PROJECT_IDENTIFIER and APP_ID values.
  /// Value must have pattern `^projects/\[^/\]+/iosApps/\[^/\]+/config$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [IosAppConfig].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<IosAppConfig> getConfig(
    core.String name, {
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1beta1/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return IosAppConfig.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Lists each IosApp associated with the specified FirebaseProject.
  ///
  /// The elements are returned in no particular order, but will be a consistent
  /// view of the Apps when additional requests are made with a `pageToken`.
  ///
  /// Request parameters:
  ///
  /// [parent] - The resource name of the parent FirebaseProject for which to
  /// list each associated IosApp, in the format:
  /// projects/PROJECT_IDENTIFIER/iosApps Refer to the `FirebaseProject`
  /// \[`name`\](../projects#FirebaseProject.FIELDS.name) field for details
  /// about PROJECT_IDENTIFIER values.
  /// Value must have pattern `^projects/\[^/\]+$`.
  ///
  /// [pageSize] - The maximum number of Apps to return in the response. The
  /// server may return fewer than this at its discretion. If no value is
  /// specified (or too large a value is specified), the server will impose its
  /// own limit.
  ///
  /// [pageToken] - Token returned from a previous call to `ListIosApps`
  /// indicating where in the set of Apps to resume listing.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListIosAppsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListIosAppsResponse> list(
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

    final _url = 'v1beta1/' + core.Uri.encodeFull('$parent') + '/iosApps';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return ListIosAppsResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Updates the attributes of the specified IosApp.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - The resource name of the IosApp, in the format:
  /// projects/PROJECT_IDENTIFIER /iosApps/APP_ID * PROJECT_IDENTIFIER: the
  /// parent Project's
  /// \[`ProjectNumber`\](../projects#FirebaseProject.FIELDS.project_number)
  /// ***(recommended)*** or its
  /// \[`ProjectId`\](../projects#FirebaseProject.FIELDS.project_id). Learn more
  /// about using project identifiers in Google's
  /// [AIP 2510 standard](https://google.aip.dev/cloud/2510). Note that the
  /// value for PROJECT_IDENTIFIER in any response body will be the `ProjectId`.
  /// * APP_ID: the globally unique, Firebase-assigned identifier for the App
  /// (see \[`appId`\](../projects.iosApps#IosApp.FIELDS.app_id)).
  /// Value must have pattern `^projects/\[^/\]+/iosApps/\[^/\]+$`.
  ///
  /// [updateMask] - Specifies which fields to update. Note that the fields
  /// `name`, `appId`, `projectId`, and `bundleId` are all immutable.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [IosApp].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<IosApp> patch(
    IosApp request,
    core.String name, {
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request.toJson());
    final _queryParams = <core.String, core.List<core.String>>{
      if (updateMask != null) 'updateMask': [updateMask],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1beta1/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'PATCH',
      body: _body,
      queryParams: _queryParams,
    );
    return IosApp.fromJson(_response as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsWebAppsResource {
  final commons.ApiRequester _requester;

  ProjectsWebAppsResource(commons.ApiRequester client) : _requester = client;

  /// Requests the creation of a new WebApp in the specified FirebaseProject.
  ///
  /// The result of this call is an `Operation` which can be used to track the
  /// provisioning process. The `Operation` is automatically deleted after
  /// completion, so there is no need to call `DeleteOperation`.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - The resource name of the parent FirebaseProject in which to
  /// create a WebApp, in the format: projects/PROJECT_IDENTIFIER/webApps Refer
  /// to the `FirebaseProject`
  /// \[`name`\](../projects#FirebaseProject.FIELDS.name) field for details
  /// about PROJECT_IDENTIFIER values.
  /// Value must have pattern `^projects/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Operation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Operation> create(
    WebApp request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request.toJson());
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1beta1/' + core.Uri.encodeFull('$parent') + '/webApps';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return Operation.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Gets the specified WebApp.
  ///
  /// Request parameters:
  ///
  /// [name] - The resource name of the WebApp, in the format:
  /// projects/PROJECT_IDENTIFIER /webApps/APP_ID Since an APP_ID is a unique
  /// identifier, the Unique Resource from Sub-Collection access pattern may be
  /// used here, in the format: projects/-/webApps/APP_ID Refer to the `WebApp`
  /// \[`name`\](../projects.webApps#WebApp.FIELDS.name) field for details about
  /// PROJECT_IDENTIFIER and APP_ID values.
  /// Value must have pattern `^projects/\[^/\]+/webApps/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [WebApp].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<WebApp> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1beta1/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return WebApp.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Gets the configuration artifact associated with the specified WebApp.
  ///
  /// Request parameters:
  ///
  /// [name] - The resource name of the WebApp configuration to download, in the
  /// format: projects/PROJECT_IDENTIFIER/webApps/APP_ID/config Since an APP_ID
  /// is a unique identifier, the Unique Resource from Sub-Collection access
  /// pattern may be used here, in the format: projects/-/webApps/APP_ID Refer
  /// to the `WebApp` \[`name`\](../projects.webApps#WebApp.FIELDS.name) field
  /// for details about PROJECT_IDENTIFIER and APP_ID values.
  /// Value must have pattern `^projects/\[^/\]+/webApps/\[^/\]+/config$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [WebAppConfig].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<WebAppConfig> getConfig(
    core.String name, {
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1beta1/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return WebAppConfig.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Lists each WebApp associated with the specified FirebaseProject.
  ///
  /// The elements are returned in no particular order, but will be a consistent
  /// view of the Apps when additional requests are made with a `pageToken`.
  ///
  /// Request parameters:
  ///
  /// [parent] - The resource name of the parent FirebaseProject for which to
  /// list each associated WebApp, in the format:
  /// projects/PROJECT_IDENTIFIER/webApps Refer to the `FirebaseProject`
  /// \[`name`\](../projects#FirebaseProject.FIELDS.name) field for details
  /// about PROJECT_IDENTIFIER values.
  /// Value must have pattern `^projects/\[^/\]+$`.
  ///
  /// [pageSize] - The maximum number of Apps to return in the response. The
  /// server may return fewer than this value at its discretion. If no value is
  /// specified (or too large a value is specified), then the server will impose
  /// its own limit.
  ///
  /// [pageToken] - Token returned from a previous call to `ListWebApps`
  /// indicating where in the set of Apps to resume listing.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListWebAppsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListWebAppsResponse> list(
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

    final _url = 'v1beta1/' + core.Uri.encodeFull('$parent') + '/webApps';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return ListWebAppsResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Updates the attributes of the specified WebApp.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - The resource name of the WebApp, in the format:
  /// projects/PROJECT_IDENTIFIER /webApps/APP_ID * PROJECT_IDENTIFIER: the
  /// parent Project's
  /// \[`ProjectNumber`\](../projects#FirebaseProject.FIELDS.project_number)
  /// ***(recommended)*** or its
  /// \[`ProjectId`\](../projects#FirebaseProject.FIELDS.project_id). Learn more
  /// about using project identifiers in Google's
  /// [AIP 2510 standard](https://google.aip.dev/cloud/2510). Note that the
  /// value for PROJECT_IDENTIFIER in any response body will be the `ProjectId`.
  /// * APP_ID: the globally unique, Firebase-assigned identifier for the App
  /// (see \[`appId`\](../projects.webApps#WebApp.FIELDS.app_id)).
  /// Value must have pattern `^projects/\[^/\]+/webApps/\[^/\]+$`.
  ///
  /// [updateMask] - Specifies which fields to update. Note that the fields
  /// `name`, `appId`, and `projectId` are all immutable.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [WebApp].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<WebApp> patch(
    WebApp request,
    core.String name, {
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request.toJson());
    final _queryParams = <core.String, core.List<core.String>>{
      if (updateMask != null) 'updateMask': [updateMask],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1beta1/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'PATCH',
      body: _body,
      queryParams: _queryParams,
    );
    return WebApp.fromJson(_response as core.Map<core.String, core.dynamic>);
  }
}

/// All fields are required.
class AddFirebaseRequest {
  /// Instead, to set a Project's default GCP resource location, call
  /// \[`FinalizeDefaultLocation`\](../projects.defaultLocation/finalize) after
  /// you add Firebase resources to the GCP `Project`.
  ///
  /// The ID of the Project's default GCP resource location. The location must
  /// be one of the available
  /// [GCP resource locations](https://firebase.google.com/docs/projects/locations).
  ///
  /// Deprecated.
  core.String? locationId;

  AddFirebaseRequest({
    this.locationId,
  });

  AddFirebaseRequest.fromJson(core.Map _json)
      : this(
          locationId: _json.containsKey('locationId')
              ? _json['locationId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (locationId != null) 'locationId': locationId!,
      };
}

class AddGoogleAnalyticsRequest {
  /// The ID for the existing
  /// [Google Analytics account](http://www.google.com/analytics/) that you want
  /// to link with the `FirebaseProject`.
  ///
  /// Specifying this field will provision a new Google Analytics property in
  /// your Google Analytics account and associate the new property with the
  /// `FirebaseProject`.
  core.String? analyticsAccountId;

  /// The ID for the existing Google Analytics property that you want to
  /// associate with the `FirebaseProject`.
  core.String? analyticsPropertyId;

  AddGoogleAnalyticsRequest({
    this.analyticsAccountId,
    this.analyticsPropertyId,
  });

  AddGoogleAnalyticsRequest.fromJson(core.Map _json)
      : this(
          analyticsAccountId: _json.containsKey('analyticsAccountId')
              ? _json['analyticsAccountId'] as core.String
              : null,
          analyticsPropertyId: _json.containsKey('analyticsPropertyId')
              ? _json['analyticsPropertyId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (analyticsAccountId != null)
          'analyticsAccountId': analyticsAccountId!,
        if (analyticsPropertyId != null)
          'analyticsPropertyId': analyticsPropertyId!,
      };
}

class AdminSdkConfig {
  /// The default Firebase Realtime Database URL.
  core.String? databaseURL;

  /// The ID of the Project's default GCP resource location.
  ///
  /// The location is one of the available
  /// [GCP resource locations](https://firebase.google.com/docs/projects/locations).
  /// This field is omitted if the default GCP resource location has not been
  /// finalized yet. To set a Project's default GCP resource location, call
  /// \[`FinalizeDefaultLocation`\](../projects.defaultLocation/finalize) after
  /// you add Firebase resources to the Project.
  core.String? locationId;

  /// A user-assigned unique identifier for the `FirebaseProject`.
  ///
  /// This identifier may appear in URLs or names for some Firebase resources
  /// associated with the Project, but it should generally be treated as a
  /// convenience alias to reference the Project.
  ///
  /// Immutable.
  core.String? projectId;

  /// The default Cloud Storage for Firebase storage bucket name.
  core.String? storageBucket;

  AdminSdkConfig({
    this.databaseURL,
    this.locationId,
    this.projectId,
    this.storageBucket,
  });

  AdminSdkConfig.fromJson(core.Map _json)
      : this(
          databaseURL: _json.containsKey('databaseURL')
              ? _json['databaseURL'] as core.String
              : null,
          locationId: _json.containsKey('locationId')
              ? _json['locationId'] as core.String
              : null,
          projectId: _json.containsKey('projectId')
              ? _json['projectId'] as core.String
              : null,
          storageBucket: _json.containsKey('storageBucket')
              ? _json['storageBucket'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (databaseURL != null) 'databaseURL': databaseURL!,
        if (locationId != null) 'locationId': locationId!,
        if (projectId != null) 'projectId': projectId!,
        if (storageBucket != null) 'storageBucket': storageBucket!,
      };
}

class AnalyticsDetails {
  /// The Analytics Property object associated with the specified
  /// `FirebaseProject`.
  ///
  /// This object contains the details of the Google Analytics property
  /// associated with the Project.
  AnalyticsProperty? analyticsProperty;

  /// - For `AndroidApps` and `IosApps`: a map of `app` to `streamId` for each
  /// Firebase App in the specified `FirebaseProject`.
  ///
  /// Each `app` and `streamId` appears only once. - For `WebApps`: a map of
  /// `app` to `streamId` and `measurementId` for each `WebApp` in the specified
  /// `FirebaseProject`. Each `app`, `streamId`, and `measurementId` appears
  /// only once.
  core.List<StreamMapping>? streamMappings;

  AnalyticsDetails({
    this.analyticsProperty,
    this.streamMappings,
  });

  AnalyticsDetails.fromJson(core.Map _json)
      : this(
          analyticsProperty: _json.containsKey('analyticsProperty')
              ? AnalyticsProperty.fromJson(_json['analyticsProperty']
                  as core.Map<core.String, core.dynamic>)
              : null,
          streamMappings: _json.containsKey('streamMappings')
              ? (_json['streamMappings'] as core.List)
                  .map<StreamMapping>((value) => StreamMapping.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (analyticsProperty != null)
          'analyticsProperty': analyticsProperty!.toJson(),
        if (streamMappings != null)
          'streamMappings':
              streamMappings!.map((value) => value.toJson()).toList(),
      };
}

/// Details of a Google Analytics property
class AnalyticsProperty {
  /// The display name of the Google Analytics property associated with the
  /// specified `FirebaseProject`.
  core.String? displayName;

  /// The globally unique, Google-assigned identifier of the Google Analytics
  /// property associated with the specified `FirebaseProject`.
  ///
  /// If you called
  /// \[`AddGoogleAnalytics`\](../../v1beta1/projects/addGoogleAnalytics) to
  /// link the `FirebaseProject` with a Google Analytics account, the value in
  /// this `id` field is the same as the ID of the property either specified or
  /// provisioned with that call to `AddGoogleAnalytics`.
  core.String? id;

  AnalyticsProperty({
    this.displayName,
    this.id,
  });

  AnalyticsProperty.fromJson(core.Map _json)
      : this(
          displayName: _json.containsKey('displayName')
              ? _json['displayName'] as core.String
              : null,
          id: _json.containsKey('id') ? _json['id'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (displayName != null) 'displayName': displayName!,
        if (id != null) 'id': id!,
      };
}

/// Details of a Firebase App for Android.
class AndroidApp {
  /// The globally unique, Firebase-assigned identifier for the `AndroidApp`.
  ///
  /// This identifier should be treated as an opaque token, as the data format
  /// is not specified.
  ///
  /// Immutable.
  core.String? appId;

  /// The user-assigned display name for the `AndroidApp`.
  core.String? displayName;

  /// The resource name of the AndroidApp, in the format: projects/
  /// PROJECT_IDENTIFIER/androidApps/APP_ID * PROJECT_IDENTIFIER: the parent
  /// Project's
  /// \[`ProjectNumber`\](../projects#FirebaseProject.FIELDS.project_number)
  /// ***(recommended)*** or its
  /// \[`ProjectId`\](../projects#FirebaseProject.FIELDS.project_id).
  ///
  /// Learn more about using project identifiers in Google's
  /// [AIP 2510 standard](https://google.aip.dev/cloud/2510). Note that the
  /// value for PROJECT_IDENTIFIER in any response body will be the `ProjectId`.
  /// * APP_ID: the globally unique, Firebase-assigned identifier for the App
  /// (see \[`appId`\](../projects.androidApps#AndroidApp.FIELDS.app_id)).
  core.String? name;

  /// The canonical package name of the Android app as would appear in the
  /// Google Play Developer Console.
  ///
  /// Immutable.
  core.String? packageName;

  /// A user-assigned unique identifier of the parent FirebaseProject for the
  /// `AndroidApp`.
  ///
  /// Immutable.
  core.String? projectId;

  AndroidApp({
    this.appId,
    this.displayName,
    this.name,
    this.packageName,
    this.projectId,
  });

  AndroidApp.fromJson(core.Map _json)
      : this(
          appId:
              _json.containsKey('appId') ? _json['appId'] as core.String : null,
          displayName: _json.containsKey('displayName')
              ? _json['displayName'] as core.String
              : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          packageName: _json.containsKey('packageName')
              ? _json['packageName'] as core.String
              : null,
          projectId: _json.containsKey('projectId')
              ? _json['projectId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (appId != null) 'appId': appId!,
        if (displayName != null) 'displayName': displayName!,
        if (name != null) 'name': name!,
        if (packageName != null) 'packageName': packageName!,
        if (projectId != null) 'projectId': projectId!,
      };
}

/// Configuration metadata of a single Firebase App for Android.
class AndroidAppConfig {
  /// The contents of the JSON configuration file.
  core.String? configFileContents;
  core.List<core.int> get configFileContentsAsBytes =>
      convert.base64.decode(configFileContents!);

  set configFileContentsAsBytes(core.List<core.int> _bytes) {
    configFileContents =
        convert.base64.encode(_bytes).replaceAll('/', '_').replaceAll('+', '-');
  }

  /// The filename that the configuration artifact for the `AndroidApp` is
  /// typically saved as.
  ///
  /// For example: `google-services.json`
  core.String? configFilename;

  AndroidAppConfig({
    this.configFileContents,
    this.configFilename,
  });

  AndroidAppConfig.fromJson(core.Map _json)
      : this(
          configFileContents: _json.containsKey('configFileContents')
              ? _json['configFileContents'] as core.String
              : null,
          configFilename: _json.containsKey('configFilename')
              ? _json['configFilename'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (configFileContents != null)
          'configFileContents': configFileContents!,
        if (configFilename != null) 'configFilename': configFilename!,
      };
}

/// The default resources associated with the Project.
class DefaultResources {
  /// The default Firebase Hosting site name, in the format: PROJECT_ID Though
  /// rare, your `projectId` might already be used as the name for an existing
  /// Hosting site in another project (learn more about creating non-default,
  /// [additional sites](https://firebase.google.com/docs/hosting/multisites)).
  ///
  /// In these cases, your `projectId` is appended with a hyphen then five
  /// alphanumeric characters to create your default Hosting site name. For
  /// example, if your `projectId` is `myproject123`, your default Hosting site
  /// name might be: `myproject123-a5c16`
  core.String? hostingSite;

  /// The ID of the Project's default GCP resource location.
  ///
  /// The location is one of the available
  /// [GCP resource locations](https://firebase.google.com/docs/projects/locations).
  /// This field is omitted if the default GCP resource location has not been
  /// finalized yet. To set a Project's default GCP resource location, call
  /// \[`FinalizeDefaultLocation`\](../projects.defaultLocation/finalize) after
  /// you add Firebase resources to the Project.
  core.String? locationId;

  /// The default Firebase Realtime Database instance name, in the format:
  /// PROJECT_ID Though rare, your `projectId` might already be used as the name
  /// for an existing Realtime Database instance in another project (learn more
  /// about
  /// [database sharding](https://firebase.google.com/docs/database/usage/sharding)).
  ///
  /// In these cases, your `projectId` is appended with a hyphen then five
  /// alphanumeric characters to create your default Realtime Database instance
  /// name. For example, if your `projectId` is `myproject123`, your default
  /// database instance name might be: `myproject123-a5c16`
  core.String? realtimeDatabaseInstance;

  /// The default Cloud Storage for Firebase storage bucket, in the format:
  /// PROJECT_ID.appspot.com
  core.String? storageBucket;

  DefaultResources({
    this.hostingSite,
    this.locationId,
    this.realtimeDatabaseInstance,
    this.storageBucket,
  });

  DefaultResources.fromJson(core.Map _json)
      : this(
          hostingSite: _json.containsKey('hostingSite')
              ? _json['hostingSite'] as core.String
              : null,
          locationId: _json.containsKey('locationId')
              ? _json['locationId'] as core.String
              : null,
          realtimeDatabaseInstance:
              _json.containsKey('realtimeDatabaseInstance')
                  ? _json['realtimeDatabaseInstance'] as core.String
                  : null,
          storageBucket: _json.containsKey('storageBucket')
              ? _json['storageBucket'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (hostingSite != null) 'hostingSite': hostingSite!,
        if (locationId != null) 'locationId': locationId!,
        if (realtimeDatabaseInstance != null)
          'realtimeDatabaseInstance': realtimeDatabaseInstance!,
        if (storageBucket != null) 'storageBucket': storageBucket!,
      };
}

/// A generic empty message that you can re-use to avoid defining duplicated
/// empty messages in your APIs.
///
/// A typical example is to use it as the request or the response type of an API
/// method. For instance: service Foo { rpc Bar(google.protobuf.Empty) returns
/// (google.protobuf.Empty); } The JSON representation for `Empty` is empty JSON
/// object `{}`.
typedef Empty = $Empty;

class FinalizeDefaultLocationRequest {
  /// The ID of the Project's default GCP resource location.
  ///
  /// The location must be one of the available
  /// [GCP resource locations](https://firebase.google.com/docs/projects/locations).
  core.String? locationId;

  FinalizeDefaultLocationRequest({
    this.locationId,
  });

  FinalizeDefaultLocationRequest.fromJson(core.Map _json)
      : this(
          locationId: _json.containsKey('locationId')
              ? _json['locationId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (locationId != null) 'locationId': locationId!,
      };
}

/// A high-level summary of an App.
class FirebaseAppInfo {
  /// The globally unique, Firebase-assigned identifier for the `WebApp`.
  ///
  /// This identifier should be treated as an opaque token, as the data format
  /// is not specified.
  ///
  /// Output only. Immutable.
  core.String? appId;

  /// The user-assigned display name of the Firebase App.
  core.String? displayName;

  /// The resource name of the Firebase App, in the format: projects/PROJECT_ID
  /// /iosApps/APP_ID or projects/PROJECT_ID/androidApps/APP_ID or projects/
  /// PROJECT_ID/webApps/APP_ID
  core.String? name;

  /// The platform-specific identifier of the App.
  ///
  /// *Note:* For most use cases, use `appId`, which is the canonical, globally
  /// unique identifier for referencing an App. This string is derived from a
  /// native identifier for each platform: `packageName` for an `AndroidApp`,
  /// `bundleId` for an `IosApp`, and `webId` for a `WebApp`. Its contents
  /// should be treated as opaque, as the native identifier format may change as
  /// platforms evolve. This string is only unique within a `FirebaseProject`
  /// and its associated Apps.
  ///
  /// Output only. Immutable.
  core.String? namespace;

  /// The platform of the Firebase App.
  /// Possible string values are:
  /// - "PLATFORM_UNSPECIFIED" : Unknown state. This is only used for
  /// distinguishing unset values.
  /// - "IOS" : The Firebase App is associated with iOS.
  /// - "ANDROID" : The Firebase App is associated with Android.
  /// - "WEB" : The Firebase App is associated with web.
  core.String? platform;

  FirebaseAppInfo({
    this.appId,
    this.displayName,
    this.name,
    this.namespace,
    this.platform,
  });

  FirebaseAppInfo.fromJson(core.Map _json)
      : this(
          appId:
              _json.containsKey('appId') ? _json['appId'] as core.String : null,
          displayName: _json.containsKey('displayName')
              ? _json['displayName'] as core.String
              : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          namespace: _json.containsKey('namespace')
              ? _json['namespace'] as core.String
              : null,
          platform: _json.containsKey('platform')
              ? _json['platform'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (appId != null) 'appId': appId!,
        if (displayName != null) 'displayName': displayName!,
        if (name != null) 'name': name!,
        if (namespace != null) 'namespace': namespace!,
        if (platform != null) 'platform': platform!,
      };
}

/// A `FirebaseProject` is the top-level Firebase entity.
///
/// It is the container for Firebase Apps, Firebase Hosting sites, storage
/// systems (Firebase Realtime Database, Cloud Firestore, Cloud Storage
/// buckets), and other Firebase and Google Cloud Platform (GCP) resources. You
/// create a `FirebaseProject` by calling AddFirebase and specifying an
/// *existing* \[GCP
/// `Project`\](https://cloud.google.com/resource-manager/reference/rest/v1/projects).
/// This adds Firebase resources to the existing GCP `Project`. Since a
/// FirebaseProject is actually also a GCP `Project`, a `FirebaseProject` has
/// the same underlying GCP identifiers (`projectNumber` and `projectId`). This
/// allows for easy interop with Google APIs.
class FirebaseProject {
  /// The user-assigned display name of the Project.
  core.String? displayName;

  /// The resource name of the Project, in the format:
  /// projects/PROJECT_IDENTIFIER PROJECT_IDENTIFIER: the Project's
  /// \[`ProjectNumber`\](../projects#FirebaseProject.FIELDS.project_number)
  /// ***(recommended)*** or its
  /// \[`ProjectId`\](../projects#FirebaseProject.FIELDS.project_id).
  ///
  /// Learn more about using project identifiers in Google's
  /// [AIP 2510 standard](https://google.aip.dev/cloud/2510). Note that the
  /// value for PROJECT_IDENTIFIER in any response body will be the `ProjectId`.
  core.String? name;

  /// A user-assigned unique identifier for the Project.
  ///
  /// This identifier may appear in URLs or names for some Firebase resources
  /// associated with the Project, but it should generally be treated as a
  /// convenience alias to reference the Project.
  ///
  /// Immutable.
  core.String? projectId;

  /// The globally unique, Google-assigned canonical identifier for the Project.
  ///
  /// Use this identifier when configuring integrations and/or making API calls
  /// to Firebase or third-party services.
  ///
  /// Immutable.
  core.String? projectNumber;

  /// The default Firebase resources associated with the Project.
  DefaultResources? resources;

  /// The lifecycle state of the Project.
  ///
  /// Updates to the state must be performed via
  /// com.google.cloudresourcemanager.v1.Projects.DeleteProject and
  /// com.google.cloudresourcemanager.v1.Projects.UndeleteProject
  ///
  /// Output only.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : Unspecified state.
  /// - "ACTIVE" : The normal and active state.
  /// - "DELETED" : The Project has been marked for deletion by the user.
  core.String? state;

  FirebaseProject({
    this.displayName,
    this.name,
    this.projectId,
    this.projectNumber,
    this.resources,
    this.state,
  });

  FirebaseProject.fromJson(core.Map _json)
      : this(
          displayName: _json.containsKey('displayName')
              ? _json['displayName'] as core.String
              : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          projectId: _json.containsKey('projectId')
              ? _json['projectId'] as core.String
              : null,
          projectNumber: _json.containsKey('projectNumber')
              ? _json['projectNumber'] as core.String
              : null,
          resources: _json.containsKey('resources')
              ? DefaultResources.fromJson(
                  _json['resources'] as core.Map<core.String, core.dynamic>)
              : null,
          state:
              _json.containsKey('state') ? _json['state'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (displayName != null) 'displayName': displayName!,
        if (name != null) 'name': name!,
        if (projectId != null) 'projectId': projectId!,
        if (projectNumber != null) 'projectNumber': projectNumber!,
        if (resources != null) 'resources': resources!.toJson(),
        if (state != null) 'state': state!,
      };
}

/// Details of a Firebase App for iOS.
class IosApp {
  /// The globally unique, Firebase-assigned identifier for the `IosApp`.
  ///
  /// This identifier should be treated as an opaque token, as the data format
  /// is not specified.
  ///
  /// Immutable.
  core.String? appId;

  /// The automatically generated Apple ID assigned to the iOS app by Apple in
  /// the iOS App Store.
  core.String? appStoreId;

  /// The canonical bundle ID of the iOS app as it would appear in the iOS
  /// AppStore.
  ///
  /// Immutable.
  core.String? bundleId;

  /// The user-assigned display name for the `IosApp`.
  core.String? displayName;

  /// The resource name of the IosApp, in the format:
  /// projects/PROJECT_IDENTIFIER /iosApps/APP_ID * PROJECT_IDENTIFIER: the
  /// parent Project's
  /// \[`ProjectNumber`\](../projects#FirebaseProject.FIELDS.project_number)
  /// ***(recommended)*** or its
  /// \[`ProjectId`\](../projects#FirebaseProject.FIELDS.project_id).
  ///
  /// Learn more about using project identifiers in Google's
  /// [AIP 2510 standard](https://google.aip.dev/cloud/2510). Note that the
  /// value for PROJECT_IDENTIFIER in any response body will be the `ProjectId`.
  /// * APP_ID: the globally unique, Firebase-assigned identifier for the App
  /// (see \[`appId`\](../projects.iosApps#IosApp.FIELDS.app_id)).
  core.String? name;

  /// A user-assigned unique identifier of the parent FirebaseProject for the
  /// `IosApp`.
  ///
  /// Immutable.
  core.String? projectId;

  IosApp({
    this.appId,
    this.appStoreId,
    this.bundleId,
    this.displayName,
    this.name,
    this.projectId,
  });

  IosApp.fromJson(core.Map _json)
      : this(
          appId:
              _json.containsKey('appId') ? _json['appId'] as core.String : null,
          appStoreId: _json.containsKey('appStoreId')
              ? _json['appStoreId'] as core.String
              : null,
          bundleId: _json.containsKey('bundleId')
              ? _json['bundleId'] as core.String
              : null,
          displayName: _json.containsKey('displayName')
              ? _json['displayName'] as core.String
              : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          projectId: _json.containsKey('projectId')
              ? _json['projectId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (appId != null) 'appId': appId!,
        if (appStoreId != null) 'appStoreId': appStoreId!,
        if (bundleId != null) 'bundleId': bundleId!,
        if (displayName != null) 'displayName': displayName!,
        if (name != null) 'name': name!,
        if (projectId != null) 'projectId': projectId!,
      };
}

/// Configuration metadata of a single Firebase App for iOS.
class IosAppConfig {
  /// The content of the XML configuration file.
  core.String? configFileContents;
  core.List<core.int> get configFileContentsAsBytes =>
      convert.base64.decode(configFileContents!);

  set configFileContentsAsBytes(core.List<core.int> _bytes) {
    configFileContents =
        convert.base64.encode(_bytes).replaceAll('/', '_').replaceAll('+', '-');
  }

  /// The filename that the configuration artifact for the `IosApp` is typically
  /// saved as.
  ///
  /// For example: `GoogleService-Info.plist`
  core.String? configFilename;

  IosAppConfig({
    this.configFileContents,
    this.configFilename,
  });

  IosAppConfig.fromJson(core.Map _json)
      : this(
          configFileContents: _json.containsKey('configFileContents')
              ? _json['configFileContents'] as core.String
              : null,
          configFilename: _json.containsKey('configFilename')
              ? _json['configFilename'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (configFileContents != null)
          'configFileContents': configFileContents!,
        if (configFilename != null) 'configFilename': configFilename!,
      };
}

class ListAndroidAppsResponse {
  /// List of each `AndroidApp` associated with the specified `FirebaseProject`.
  core.List<AndroidApp>? apps;

  /// If the result list is too large to fit in a single response, then a token
  /// is returned.
  ///
  /// If the string is empty, then this response is the last page of results.
  /// This token can be used in a subsequent call to `ListAndroidApps` to find
  /// the next group of Apps. Page tokens are short-lived and should not be
  /// persisted.
  core.String? nextPageToken;

  ListAndroidAppsResponse({
    this.apps,
    this.nextPageToken,
  });

  ListAndroidAppsResponse.fromJson(core.Map _json)
      : this(
          apps: _json.containsKey('apps')
              ? (_json['apps'] as core.List)
                  .map<AndroidApp>((value) => AndroidApp.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          nextPageToken: _json.containsKey('nextPageToken')
              ? _json['nextPageToken'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (apps != null) 'apps': apps!.map((value) => value.toJson()).toList(),
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
      };
}

class ListAvailableLocationsResponse {
  /// One page of results from a call to `ListAvailableLocations`.
  core.List<Location>? locations;

  /// If the result list is too large to fit in a single response, then a token
  /// is returned.
  ///
  /// If the string is empty, then this response is the last page of results and
  /// all available locations have been listed. This token can be used in a
  /// subsequent call to `ListAvailableLocations` to find more locations. Page
  /// tokens are short-lived and should not be persisted.
  core.String? nextPageToken;

  ListAvailableLocationsResponse({
    this.locations,
    this.nextPageToken,
  });

  ListAvailableLocationsResponse.fromJson(core.Map _json)
      : this(
          locations: _json.containsKey('locations')
              ? (_json['locations'] as core.List)
                  .map<Location>((value) => Location.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          nextPageToken: _json.containsKey('nextPageToken')
              ? _json['nextPageToken'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (locations != null)
          'locations': locations!.map((value) => value.toJson()).toList(),
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
      };
}

class ListAvailableProjectsResponse {
  /// If the result list is too large to fit in a single response, then a token
  /// is returned.
  ///
  /// If the string is empty, then this response is the last page of results.
  /// This token can be used in a subsequent calls to `ListAvailableProjects` to
  /// find the next group of Projects. Page tokens are short-lived and should
  /// not be persisted.
  core.String? nextPageToken;

  /// The list of GCP `Projects` which can have Firebase resources added to
  /// them.
  core.List<ProjectInfo>? projectInfo;

  ListAvailableProjectsResponse({
    this.nextPageToken,
    this.projectInfo,
  });

  ListAvailableProjectsResponse.fromJson(core.Map _json)
      : this(
          nextPageToken: _json.containsKey('nextPageToken')
              ? _json['nextPageToken'] as core.String
              : null,
          projectInfo: _json.containsKey('projectInfo')
              ? (_json['projectInfo'] as core.List)
                  .map<ProjectInfo>((value) => ProjectInfo.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (projectInfo != null)
          'projectInfo': projectInfo!.map((value) => value.toJson()).toList(),
      };
}

class ListFirebaseProjectsResponse {
  /// If the result list is too large to fit in a single response, then a token
  /// is returned.
  ///
  /// If the string is empty, then this response is the last page of results.
  /// This token can be used in a subsequent calls to `ListFirebaseProjects` to
  /// find the next group of Projects. Page tokens are short-lived and should
  /// not be persisted.
  core.String? nextPageToken;

  /// One page of the list of Projects that are accessible to the caller.
  core.List<FirebaseProject>? results;

  ListFirebaseProjectsResponse({
    this.nextPageToken,
    this.results,
  });

  ListFirebaseProjectsResponse.fromJson(core.Map _json)
      : this(
          nextPageToken: _json.containsKey('nextPageToken')
              ? _json['nextPageToken'] as core.String
              : null,
          results: _json.containsKey('results')
              ? (_json['results'] as core.List)
                  .map<FirebaseProject>((value) => FirebaseProject.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (results != null)
          'results': results!.map((value) => value.toJson()).toList(),
      };
}

class ListIosAppsResponse {
  /// List of each `IosApp` associated with the specified `FirebaseProject`.
  core.List<IosApp>? apps;

  /// If the result list is too large to fit in a single response, then a token
  /// is returned.
  ///
  /// If the string is empty, then this response is the last page of results.
  /// This token can be used in a subsequent call to `ListIosApps` to find the
  /// next group of Apps. Page tokens are short-lived and should not be
  /// persisted.
  core.String? nextPageToken;

  ListIosAppsResponse({
    this.apps,
    this.nextPageToken,
  });

  ListIosAppsResponse.fromJson(core.Map _json)
      : this(
          apps: _json.containsKey('apps')
              ? (_json['apps'] as core.List)
                  .map<IosApp>((value) => IosApp.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          nextPageToken: _json.containsKey('nextPageToken')
              ? _json['nextPageToken'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (apps != null) 'apps': apps!.map((value) => value.toJson()).toList(),
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
      };
}

class ListShaCertificatesResponse {
  /// The list of each `ShaCertificate` associated with the `AndroidApp`.
  core.List<ShaCertificate>? certificates;

  ListShaCertificatesResponse({
    this.certificates,
  });

  ListShaCertificatesResponse.fromJson(core.Map _json)
      : this(
          certificates: _json.containsKey('certificates')
              ? (_json['certificates'] as core.List)
                  .map<ShaCertificate>((value) => ShaCertificate.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (certificates != null)
          'certificates': certificates!.map((value) => value.toJson()).toList(),
      };
}

class ListWebAppsResponse {
  /// List of each `WebApp` associated with the specified `FirebaseProject`.
  core.List<WebApp>? apps;

  /// If the result list is too large to fit in a single response, then a token
  /// is returned.
  ///
  /// If the string is empty, then this response is the last page of results.
  /// This token can be used in a subsequent call to `ListWebApps` to find the
  /// next group of Apps. Page tokens are short-lived and should not be
  /// persisted.
  core.String? nextPageToken;

  ListWebAppsResponse({
    this.apps,
    this.nextPageToken,
  });

  ListWebAppsResponse.fromJson(core.Map _json)
      : this(
          apps: _json.containsKey('apps')
              ? (_json['apps'] as core.List)
                  .map<WebApp>((value) => WebApp.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          nextPageToken: _json.containsKey('nextPageToken')
              ? _json['nextPageToken'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (apps != null) 'apps': apps!.map((value) => value.toJson()).toList(),
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
      };
}

/// A GCP resource location that can be selected for a FirebaseProject.
class Location {
  /// Products and services that are available in the GCP resource location.
  core.List<core.String>? features;

  /// The ID of the GCP resource location.
  ///
  /// It will be one of the available
  /// [GCP resource locations](https://firebase.google.com/docs/projects/locations#types).
  core.String? locationId;

  /// Indicates whether the GCP resource location is a \[regional or
  /// multi-regional
  /// location\](https://firebase.google.com/docs/projects/locations#types) for
  /// data replication.
  /// Possible string values are:
  /// - "LOCATION_TYPE_UNSPECIFIED" : Used internally for distinguishing unset
  /// values and is not intended for external use.
  /// - "REGIONAL" : The location is a regional location. Data in a regional
  /// location is replicated in multiple zones within a region.
  /// - "MULTI_REGIONAL" : The location is a multi-regional location. Data in a
  /// multi-region location is replicated in multiple regions. Within each
  /// region, data is replicated in multiple zones.
  core.String? type;

  Location({
    this.features,
    this.locationId,
    this.type,
  });

  Location.fromJson(core.Map _json)
      : this(
          features: _json.containsKey('features')
              ? (_json['features'] as core.List)
                  .map<core.String>((value) => value as core.String)
                  .toList()
              : null,
          locationId: _json.containsKey('locationId')
              ? _json['locationId'] as core.String
              : null,
          type: _json.containsKey('type') ? _json['type'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (features != null) 'features': features!,
        if (locationId != null) 'locationId': locationId!,
        if (type != null) 'type': type!,
      };
}

/// This is proto2's version of MessageSet.
typedef MessageSet = $Empty;

/// This resource represents a long-running operation that is the result of a
/// network API call.
class Operation {
  /// If the value is `false`, it means the operation is still in progress.
  ///
  /// If `true`, the operation is completed, and either `error` or `response` is
  /// available.
  core.bool? done;

  /// The error result of the operation in case of failure or cancellation.
  Status? error;

  /// Service-specific metadata associated with the operation.
  ///
  /// It typically contains progress information and common metadata such as
  /// create time. Some services might not provide such metadata. Any method
  /// that returns a long-running operation should document the metadata type,
  /// if any.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object>? metadata;

  /// The server-assigned name, which is only unique within the same service
  /// that originally returns it.
  ///
  /// If you use the default HTTP mapping, the `name` should be a resource name
  /// ending with `operations/{unique_id}`.
  core.String? name;

  /// The normal response of the operation in case of success.
  ///
  /// If the original method returns no data on success, such as `Delete`, the
  /// response is `google.protobuf.Empty`. If the original method is standard
  /// `Get`/`Create`/`Update`, the response should be the resource. For other
  /// methods, the response should have the type `XxxResponse`, where `Xxx` is
  /// the original method name. For example, if the original method name is
  /// `TakeSnapshot()`, the inferred response type is `TakeSnapshotResponse`.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object>? response;

  Operation({
    this.done,
    this.error,
    this.metadata,
    this.name,
    this.response,
  });

  Operation.fromJson(core.Map _json)
      : this(
          done: _json.containsKey('done') ? _json['done'] as core.bool : null,
          error: _json.containsKey('error')
              ? Status.fromJson(
                  _json['error'] as core.Map<core.String, core.dynamic>)
              : null,
          metadata: _json.containsKey('metadata')
              ? (_json['metadata'] as core.Map<core.String, core.dynamic>).map(
                  (key, item) => core.MapEntry(
                    key,
                    item as core.Object,
                  ),
                )
              : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          response: _json.containsKey('response')
              ? (_json['response'] as core.Map<core.String, core.dynamic>).map(
                  (key, item) => core.MapEntry(
                    key,
                    item as core.Object,
                  ),
                )
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (done != null) 'done': done!,
        if (error != null) 'error': error!.toJson(),
        if (metadata != null) 'metadata': metadata!,
        if (name != null) 'name': name!,
        if (response != null) 'response': response!,
      };
}

/// A reference to a Google Cloud Platform (GCP) `Project`.
class ProjectInfo {
  /// The user-assigned display name of the GCP `Project`, for example: `My App`
  core.String? displayName;

  /// The ID of the Project's default GCP resource location.
  ///
  /// The location is one of the available
  /// [GCP resource locations](https://firebase.google.com/docs/projects/locations).
  /// Not all Projects will have this field populated. If it is not populated,
  /// it means that the Project does not yet have a default GCP resource
  /// location. To set a Project's default GCP resource location, call
  /// \[`FinalizeDefaultLocation`\](../projects.defaultLocation/finalize) after
  /// you add Firebase resources to the Project.
  core.String? locationId;

  /// The resource name of the GCP `Project` to which Firebase resources can be
  /// added, in the format: projects/PROJECT_IDENTIFIER Refer to the
  /// `FirebaseProject` \[`name`\](../projects#FirebaseProject.FIELDS.name)
  /// field for details about PROJECT_IDENTIFIER values.
  core.String? project;

  ProjectInfo({
    this.displayName,
    this.locationId,
    this.project,
  });

  ProjectInfo.fromJson(core.Map _json)
      : this(
          displayName: _json.containsKey('displayName')
              ? _json['displayName'] as core.String
              : null,
          locationId: _json.containsKey('locationId')
              ? _json['locationId'] as core.String
              : null,
          project: _json.containsKey('project')
              ? _json['project'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (displayName != null) 'displayName': displayName!,
        if (locationId != null) 'locationId': locationId!,
        if (project != null) 'project': project!,
      };
}

class RemoveAnalyticsRequest {
  /// The ID of the Google Analytics property associated with the specified
  /// `FirebaseProject`.
  ///
  /// - If not set, then the Google Analytics property that is currently
  /// associated with the specified `FirebaseProject` is removed. - If set, and
  /// the specified `FirebaseProject` is currently associated with a *different*
  /// Google Analytics property, then the response is a `412 Precondition
  /// Failed` error.
  ///
  /// Optional.
  core.String? analyticsPropertyId;

  RemoveAnalyticsRequest({
    this.analyticsPropertyId,
  });

  RemoveAnalyticsRequest.fromJson(core.Map _json)
      : this(
          analyticsPropertyId: _json.containsKey('analyticsPropertyId')
              ? _json['analyticsPropertyId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (analyticsPropertyId != null)
          'analyticsPropertyId': analyticsPropertyId!,
      };
}

class SearchFirebaseAppsResponse {
  /// One page of results from a call to `SearchFirebaseApps`.
  core.List<FirebaseAppInfo>? apps;

  /// If the result list is too large to fit in a single response, then a token
  /// is returned.
  ///
  /// This token can be used in a subsequent calls to `SearchFirebaseApps` to
  /// find the next group of Apps. Page tokens are short-lived and should not be
  /// persisted.
  core.String? nextPageToken;

  SearchFirebaseAppsResponse({
    this.apps,
    this.nextPageToken,
  });

  SearchFirebaseAppsResponse.fromJson(core.Map _json)
      : this(
          apps: _json.containsKey('apps')
              ? (_json['apps'] as core.List)
                  .map<FirebaseAppInfo>((value) => FirebaseAppInfo.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          nextPageToken: _json.containsKey('nextPageToken')
              ? _json['nextPageToken'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (apps != null) 'apps': apps!.map((value) => value.toJson()).toList(),
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
      };
}

/// A SHA-1 or SHA-256 certificate associated with the AndroidApp.
class ShaCertificate {
  /// The type of SHA certificate encoded in the hash.
  /// Possible string values are:
  /// - "SHA_CERTIFICATE_TYPE_UNSPECIFIED" : Unknown state. This is only used
  /// for distinguishing unset values.
  /// - "SHA_1" : Certificate is a SHA-1 type certificate.
  /// - "SHA_256" : Certificate is a SHA-256 type certificate.
  core.String? certType;

  /// The resource name of the ShaCertificate for the AndroidApp, in the format:
  /// projects/PROJECT_IDENTIFIER/androidApps/APP_ID/sha/SHA_HASH *
  /// PROJECT_IDENTIFIER: the parent Project's
  /// \[`ProjectNumber`\](../projects#FirebaseProject.FIELDS.project_number)
  /// ***(recommended)*** or its
  /// \[`ProjectId`\](../projects#FirebaseProject.FIELDS.project_id).
  ///
  /// Learn more about using project identifiers in Google's
  /// [AIP 2510 standard](https://google.aip.dev/cloud/2510). Note that the
  /// value for PROJECT_IDENTIFIER in any response body will be the `ProjectId`.
  /// * APP_ID: the globally unique, Firebase-assigned identifier for the App
  /// (see \[`appId`\](../projects.androidApps#AndroidApp.FIELDS.app_id)). *
  /// SHA_HASH: the certificate hash for the App (see
  /// \[`shaHash`\](../projects.androidApps.sha#ShaCertificate.FIELDS.sha_hash)).
  core.String? name;

  /// The certificate hash for the `AndroidApp`.
  core.String? shaHash;

  ShaCertificate({
    this.certType,
    this.name,
    this.shaHash,
  });

  ShaCertificate.fromJson(core.Map _json)
      : this(
          certType: _json.containsKey('certType')
              ? _json['certType'] as core.String
              : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          shaHash: _json.containsKey('shaHash')
              ? _json['shaHash'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (certType != null) 'certType': certType!,
        if (name != null) 'name': name!,
        if (shaHash != null) 'shaHash': shaHash!,
      };
}

/// The `Status` type defines a logical error model that is suitable for
/// different programming environments, including REST APIs and RPC APIs.
///
/// It is used by [gRPC](https://github.com/grpc). Each `Status` message
/// contains three pieces of data: error code, error message, and error details.
/// You can find out more about this error model and how to work with it in the
/// [API Design Guide](https://cloud.google.com/apis/design/errors).
class Status {
  /// The status code, which should be an enum value of google.rpc.Code.
  core.int? code;

  /// A list of messages that carry the error details.
  ///
  /// There is a common set of message types for APIs to use.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.List<core.Map<core.String, core.Object>>? details;

  /// A developer-facing error message, which should be in English.
  ///
  /// Any user-facing error message should be localized and sent in the
  /// google.rpc.Status.details field, or localized by the client.
  core.String? message;

  Status({
    this.code,
    this.details,
    this.message,
  });

  Status.fromJson(core.Map _json)
      : this(
          code: _json.containsKey('code') ? _json['code'] as core.int : null,
          details: _json.containsKey('details')
              ? (_json['details'] as core.List)
                  .map<core.Map<core.String, core.Object>>((value) =>
                      (value as core.Map<core.String, core.dynamic>).map(
                        (key, item) => core.MapEntry(
                          key,
                          item as core.Object,
                        ),
                      ))
                  .toList()
              : null,
          message: _json.containsKey('message')
              ? _json['message'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (code != null) 'code': code!,
        if (details != null) 'details': details!,
        if (message != null) 'message': message!,
      };
}

/// Wire-format for a Status object
class StatusProto {
  /// The canonical error code (see codes.proto) that most closely corresponds
  /// to this status.
  ///
  /// May be missing.
  core.int? canonicalCode;

  /// Numeric code drawn from the space specified below.
  ///
  /// Often, this is the canonical error space, and code is drawn from
  /// google3/util/task/codes.proto
  core.int? code;

  /// Detail message
  core.String? message;

  /// message_set associates an arbitrary proto message with the status.
  MessageSet? messageSet;

  /// The following are usually only present when code != 0 Space to which this
  /// status belongs
  core.String? space;

  StatusProto({
    this.canonicalCode,
    this.code,
    this.message,
    this.messageSet,
    this.space,
  });

  StatusProto.fromJson(core.Map _json)
      : this(
          canonicalCode: _json.containsKey('canonicalCode')
              ? _json['canonicalCode'] as core.int
              : null,
          code: _json.containsKey('code') ? _json['code'] as core.int : null,
          message: _json.containsKey('message')
              ? _json['message'] as core.String
              : null,
          messageSet: _json.containsKey('messageSet')
              ? MessageSet.fromJson(
                  _json['messageSet'] as core.Map<core.String, core.dynamic>)
              : null,
          space:
              _json.containsKey('space') ? _json['space'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (canonicalCode != null) 'canonicalCode': canonicalCode!,
        if (code != null) 'code': code!,
        if (message != null) 'message': message!,
        if (messageSet != null) 'messageSet': messageSet!.toJson(),
        if (space != null) 'space': space!,
      };
}

/// A mapping of a Firebase App to a Google Analytics data stream
class StreamMapping {
  /// The resource name of the Firebase App associated with the Google Analytics
  /// data stream, in the format: projects/PROJECT_IDENTIFIER/androidApps/APP_ID
  /// or projects/PROJECT_IDENTIFIER/iosApps/APP_ID or
  /// projects/PROJECT_IDENTIFIER /webApps/APP_ID Refer to the `FirebaseProject`
  /// \[`name`\](../projects#FirebaseProject.FIELDS.name) field for details
  /// about PROJECT_IDENTIFIER values.
  core.String? app;

  /// Applicable for Firebase Web Apps only.
  ///
  /// The unique Google-assigned identifier of the Google Analytics web stream
  /// associated with the Firebase Web App. Firebase SDKs use this ID to
  /// interact with Google Analytics APIs. Learn more about this ID and Google
  /// Analytics web streams in the
  /// [Analytics documentation](https://support.google.com/analytics/topic/9303475).
  core.String? measurementId;

  /// The unique Google-assigned identifier of the Google Analytics data stream
  /// associated with the Firebase App.
  ///
  /// Learn more about Google Analytics data streams in the
  /// [Analytics documentation](https://support.google.com/analytics/answer/9303323).
  core.String? streamId;

  StreamMapping({
    this.app,
    this.measurementId,
    this.streamId,
  });

  StreamMapping.fromJson(core.Map _json)
      : this(
          app: _json.containsKey('app') ? _json['app'] as core.String : null,
          measurementId: _json.containsKey('measurementId')
              ? _json['measurementId'] as core.String
              : null,
          streamId: _json.containsKey('streamId')
              ? _json['streamId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (app != null) 'app': app!,
        if (measurementId != null) 'measurementId': measurementId!,
        if (streamId != null) 'streamId': streamId!,
      };
}

/// Details of a Firebase App for the web.
class WebApp {
  /// The globally unique, Firebase-assigned identifier for the `WebApp`.
  ///
  /// This identifier should be treated as an opaque token, as the data format
  /// is not specified.
  ///
  /// Immutable.
  core.String? appId;

  /// The URLs where the `WebApp` is hosted.
  core.List<core.String>? appUrls;

  /// The user-assigned display name for the `WebApp`.
  core.String? displayName;

  /// The resource name of the WebApp, in the format:
  /// projects/PROJECT_IDENTIFIER /webApps/APP_ID * PROJECT_IDENTIFIER: the
  /// parent Project's
  /// \[`ProjectNumber`\](../projects#FirebaseProject.FIELDS.project_number)
  /// ***(recommended)*** or its
  /// \[`ProjectId`\](../projects#FirebaseProject.FIELDS.project_id).
  ///
  /// Learn more about using project identifiers in Google's
  /// [AIP 2510 standard](https://google.aip.dev/cloud/2510). Note that the
  /// value for PROJECT_IDENTIFIER in any response body will be the `ProjectId`.
  /// * APP_ID: the globally unique, Firebase-assigned identifier for the App
  /// (see \[`appId`\](../projects.webApps#WebApp.FIELDS.app_id)).
  core.String? name;

  /// A user-assigned unique identifier of the parent FirebaseProject for the
  /// `WebApp`.
  ///
  /// Immutable.
  core.String? projectId;

  /// A unique, Firebase-assigned identifier for the `WebApp`.
  ///
  /// This identifier is only used to populate the `namespace` value for the
  /// `WebApp`. For most use cases, use `appId` to identify or reference the
  /// App. The `webId` value is only unique within a `FirebaseProject` and its
  /// associated Apps.
  ///
  /// Output only. Immutable.
  core.String? webId;

  WebApp({
    this.appId,
    this.appUrls,
    this.displayName,
    this.name,
    this.projectId,
    this.webId,
  });

  WebApp.fromJson(core.Map _json)
      : this(
          appId:
              _json.containsKey('appId') ? _json['appId'] as core.String : null,
          appUrls: _json.containsKey('appUrls')
              ? (_json['appUrls'] as core.List)
                  .map<core.String>((value) => value as core.String)
                  .toList()
              : null,
          displayName: _json.containsKey('displayName')
              ? _json['displayName'] as core.String
              : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          projectId: _json.containsKey('projectId')
              ? _json['projectId'] as core.String
              : null,
          webId:
              _json.containsKey('webId') ? _json['webId'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (appId != null) 'appId': appId!,
        if (appUrls != null) 'appUrls': appUrls!,
        if (displayName != null) 'displayName': displayName!,
        if (name != null) 'name': name!,
        if (projectId != null) 'projectId': projectId!,
        if (webId != null) 'webId': webId!,
      };
}

/// Configuration metadata of a single Firebase App for the web.
class WebAppConfig {
  /// The API key associated with the `WebApp`.
  core.String? apiKey;

  /// The globally unique, Firebase-assigned identifier for the `WebApp`.
  ///
  /// Immutable.
  core.String? appId;

  /// The domain Firebase Auth configures for OAuth redirects, in the format:
  /// PROJECT_ID.firebaseapp.com
  core.String? authDomain;

  /// The default Firebase Realtime Database URL.
  core.String? databaseURL;

  /// The ID of the Project's default GCP resource location.
  ///
  /// The location is one of the available
  /// [GCP resource locations](https://firebase.google.com/docs/projects/locations).
  /// This field is omitted if the default GCP resource location has not been
  /// finalized yet. To set a Project's default GCP resource location, call
  /// \[`FinalizeDefaultLocation`\](../projects.defaultLocation/finalize) after
  /// you add Firebase resources to the Project.
  core.String? locationId;

  /// The unique Google-assigned identifier of the Google Analytics web stream
  /// associated with the `WebApp`.
  ///
  /// Firebase SDKs use this ID to interact with Google Analytics APIs. This
  /// field is only present if the `WebApp` is linked to a web stream in a
  /// Google Analytics App + Web property. Learn more about this ID and Google
  /// Analytics web streams in the
  /// [Analytics documentation](https://support.google.com/analytics/topic/9303475).
  /// To generate a `measurementId` and link the `WebApp` with a Google
  /// Analytics web stream, call
  /// \[`AddGoogleAnalytics`\](../../v1beta1/projects/addGoogleAnalytics). For
  /// apps using the Firebase JavaScript SDK v7.20.0 and later, Firebase
  /// dynamically fetches the `measurementId` when your app initializes
  /// Analytics. Having this ID in your config object is optional, but it does
  /// serve as a fallback in the rare case that the dynamic fetch fails.
  core.String? measurementId;

  /// The sender ID for use with Firebase Cloud Messaging.
  core.String? messagingSenderId;

  /// A user-assigned unique identifier for the `FirebaseProject`.
  ///
  /// Immutable.
  core.String? projectId;

  /// The default Cloud Storage for Firebase storage bucket name.
  core.String? storageBucket;

  WebAppConfig({
    this.apiKey,
    this.appId,
    this.authDomain,
    this.databaseURL,
    this.locationId,
    this.measurementId,
    this.messagingSenderId,
    this.projectId,
    this.storageBucket,
  });

  WebAppConfig.fromJson(core.Map _json)
      : this(
          apiKey: _json.containsKey('apiKey')
              ? _json['apiKey'] as core.String
              : null,
          appId:
              _json.containsKey('appId') ? _json['appId'] as core.String : null,
          authDomain: _json.containsKey('authDomain')
              ? _json['authDomain'] as core.String
              : null,
          databaseURL: _json.containsKey('databaseURL')
              ? _json['databaseURL'] as core.String
              : null,
          locationId: _json.containsKey('locationId')
              ? _json['locationId'] as core.String
              : null,
          measurementId: _json.containsKey('measurementId')
              ? _json['measurementId'] as core.String
              : null,
          messagingSenderId: _json.containsKey('messagingSenderId')
              ? _json['messagingSenderId'] as core.String
              : null,
          projectId: _json.containsKey('projectId')
              ? _json['projectId'] as core.String
              : null,
          storageBucket: _json.containsKey('storageBucket')
              ? _json['storageBucket'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (apiKey != null) 'apiKey': apiKey!,
        if (appId != null) 'appId': appId!,
        if (authDomain != null) 'authDomain': authDomain!,
        if (databaseURL != null) 'databaseURL': databaseURL!,
        if (locationId != null) 'locationId': locationId!,
        if (measurementId != null) 'measurementId': measurementId!,
        if (messagingSenderId != null) 'messagingSenderId': messagingSenderId!,
        if (projectId != null) 'projectId': projectId!,
        if (storageBucket != null) 'storageBucket': storageBucket!,
      };
}
