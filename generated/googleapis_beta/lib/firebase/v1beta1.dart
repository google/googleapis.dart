// This is a generated file (see the discoveryapis_generator project).

// ignore_for_file: unnecessary_cast

library googleapis_beta.firebase.v1beta1;

import 'dart:core' as core;
import 'dart:async' as async;
import 'dart:convert' as convert;

import 'package:_discoveryapis_commons/_discoveryapis_commons.dart' as commons;
import 'package:http/http.dart' as http;

export 'package:_discoveryapis_commons/_discoveryapis_commons.dart'
    show ApiRequestError, DetailedApiRequestError;

const core.String USER_AGENT = 'dart-api-client firebase/v1beta1';

/// The Firebase Management API enables programmatic setup and management of
/// Firebase projects, including a project's Firebase resources and Firebase
/// apps.
class FirebaseApi {
  /// View and manage your data across Google Cloud Platform services
  static const CloudPlatformScope =
      "https://www.googleapis.com/auth/cloud-platform";

  /// View your data across Google Cloud Platform services
  static const CloudPlatformReadOnlyScope =
      "https://www.googleapis.com/auth/cloud-platform.read-only";

  /// View and administer all your Firebase data and settings
  static const FirebaseScope = "https://www.googleapis.com/auth/firebase";

  /// View all your Firebase data and settings
  static const FirebaseReadonlyScope =
      "https://www.googleapis.com/auth/firebase.readonly";

  final commons.ApiRequester _requester;

  AvailableProjectsResourceApi get availableProjects =>
      new AvailableProjectsResourceApi(_requester);
  OperationsResourceApi get operations => new OperationsResourceApi(_requester);
  ProjectsResourceApi get projects => new ProjectsResourceApi(_requester);

  FirebaseApi(http.Client client,
      {core.String rootUrl = "https://firebase.googleapis.com/",
      core.String servicePath = ""})
      : _requester =
            new commons.ApiRequester(client, rootUrl, servicePath, USER_AGENT);
}

class AvailableProjectsResourceApi {
  final commons.ApiRequester _requester;

  AvailableProjectsResourceApi(commons.ApiRequester client)
      : _requester = client;

  /// Returns a list of [Google Cloud Platform (GCP) `Projects`]
  /// (https://cloud.google.com/resource-manager/reference/rest/v1/projects)
  /// that are available to have Firebase resources added to them.
  /// <br>
  /// <br>A GCP `Project` will only be returned if:
  /// <ol>
  ///   <li><p>The caller has sufficient
  ///          [Google IAM](https://cloud.google.com/iam) permissions to call
  ///          AddFirebase.</p></li>
  ///   <li><p>The GCP `Project` is not already a FirebaseProject.</p></li>
  ///   <li><p>The GCP `Project` is not in an Organization which has policies
  ///          that prevent Firebase resources from being added.</p></li>
  /// </ol>
  ///
  /// Request parameters:
  ///
  /// [pageToken] - Token returned from a previous call to
  /// `ListAvailableProjects`
  /// indicating where in the set of GCP `Projects` to resume listing.
  ///
  /// [pageSize] - The maximum number of GCP `Projects` to return in the
  /// response.
  /// <br>
  /// <br>The server may return fewer than this value at its discretion.
  /// If no value is specified (or too large a value is specified), the server
  /// will impose its own limit.
  /// <br>
  /// <br>This value cannot be negative.
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
  async.Future<ListAvailableProjectsResponse> list(
      {core.String pageToken, core.int pageSize, core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (pageToken != null) {
      _queryParams["pageToken"] = [pageToken];
    }
    if (pageSize != null) {
      _queryParams["pageSize"] = ["${pageSize}"];
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1beta1/availableProjects';

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response
        .then((data) => new ListAvailableProjectsResponse.fromJson(data));
  }
}

class OperationsResourceApi {
  final commons.ApiRequester _requester;

  OperationsResourceApi(commons.ApiRequester client) : _requester = client;

  /// Gets the latest state of a long-running operation.  Clients can use this
  /// method to poll the operation result at intervals as recommended by the API
  /// service.
  ///
  /// Request parameters:
  ///
  /// [name] - The name of the operation resource.
  /// Value must have pattern "^operations/.+$".
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
  async.Future<Operation> get(core.String name, {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (name == null) {
      throw new core.ArgumentError("Parameter name is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1beta1/' + commons.Escaper.ecapeVariableReserved('$name');

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Operation.fromJson(data));
  }
}

class ProjectsResourceApi {
  final commons.ApiRequester _requester;

  ProjectsAndroidAppsResourceApi get androidApps =>
      new ProjectsAndroidAppsResourceApi(_requester);
  ProjectsAvailableLocationsResourceApi get availableLocations =>
      new ProjectsAvailableLocationsResourceApi(_requester);
  ProjectsDefaultLocationResourceApi get defaultLocation =>
      new ProjectsDefaultLocationResourceApi(_requester);
  ProjectsIosAppsResourceApi get iosApps =>
      new ProjectsIosAppsResourceApi(_requester);
  ProjectsWebAppsResourceApi get webApps =>
      new ProjectsWebAppsResourceApi(_requester);

  ProjectsResourceApi(commons.ApiRequester client) : _requester = client;

  /// Adds Firebase resources to the specified existing
  /// [Google Cloud Platform (GCP) `Project`]
  /// (https://cloud.google.com/resource-manager/reference/rest/v1/projects).
  /// <br>
  /// <br>Since a FirebaseProject is actually also a GCP `Project`, a
  /// `FirebaseProject` uses underlying GCP identifiers (most importantly,
  /// the `projectId`) as its own for easy interop with GCP APIs.
  /// <br>
  /// <br>The result of this call is an [`Operation`](../../v1beta1/operations).
  /// Poll the `Operation` to track the provisioning process by calling
  /// GetOperation until
  /// [`done`](../../v1beta1/operations#Operation.FIELDS.done) is `true`. When
  /// `done` is `true`, the `Operation` has either succeeded or failed. If the
  /// `Operation` succeeded, its
  /// [`response`](../../v1beta1/operations#Operation.FIELDS.response) is set to
  /// a FirebaseProject; if the `Operation` failed, its
  /// [`error`](../../v1beta1/operations#Operation.FIELDS.error) is set to a
  /// google.rpc.Status. The `Operation` is automatically deleted after
  /// completion, so there is no need to call
  /// DeleteOperation.
  /// <br>
  /// <br>This method does not modify any billing account information on the
  /// underlying GCP `Project`.
  /// <br>
  /// <br>All fields listed in the [request body](#request-body) are required.
  /// <br>
  /// <br>To call `AddFirebase`, a member must be an Editor or Owner for the
  /// existing GCP `Project`. Service accounts cannot call `AddFirebase`.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [project] - The resource name of the GCP `Project` to which Firebase
  /// resources will be
  /// added, in the format:
  /// <br><code>projects/<var>projectId</var></code>
  /// After calling `AddFirebase`, the
  /// [`projectId`](https://cloud.google.com/resource-manager/reference/rest/v1/projects#Project.FIELDS.project_id)
  /// of the GCP `Project` is also the `projectId` of the FirebaseProject.
  /// Value must have pattern "^projects/[^/]+$".
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
      AddFirebaseRequest request, core.String project,
      {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (request != null) {
      _body = convert.json.encode((request).toJson());
    }
    if (project == null) {
      throw new core.ArgumentError("Parameter project is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1beta1/' +
        commons.Escaper.ecapeVariableReserved('$project') +
        ':addFirebase';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Operation.fromJson(data));
  }

  /// Gets the FirebaseProject identified by the specified resource name.
  ///
  /// Request parameters:
  ///
  /// [name] - The fully qualified resource name of the Project, in the format:
  /// <br><code>projects/<var>projectId</var></code>
  /// Value must have pattern "^projects/[^/]+$".
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
  async.Future<FirebaseProject> get(core.String name, {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (name == null) {
      throw new core.ArgumentError("Parameter name is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1beta1/' + commons.Escaper.ecapeVariableReserved('$name');

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new FirebaseProject.fromJson(data));
  }

  /// Gets the configuration artifact used by servers to simplify
  /// initialization.
  /// <br>
  /// <br>Typically, this configuration is used with the Firebase Admin SDK
  /// [initializeApp](https://firebase.google.com/docs/admin/setup#initialize_the_sdk)
  /// command.
  ///
  /// Request parameters:
  ///
  /// [name] - The fully qualified resource name of the Project, in the format:
  /// <br><code>projects/<var>projectId</var>/adminSdkConfig</code>
  /// Value must have pattern "^projects/[^/]+/adminSdkConfig$".
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
  async.Future<AdminSdkConfig> getAdminSdkConfig(core.String name,
      {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (name == null) {
      throw new core.ArgumentError("Parameter name is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1beta1/' + commons.Escaper.ecapeVariableReserved('$name');

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new AdminSdkConfig.fromJson(data));
  }

  /// Lists each FirebaseProject accessible to the caller.
  /// <br>
  /// <br>The elements are returned in no particular order, but they will be a
  /// consistent view of the Projects when additional requests are made with a
  /// `pageToken`.
  /// <br>
  /// <br>This method is eventually consistent with Project mutations, which
  /// means newly provisioned Projects and recent modifications to existing
  /// Projects might not be reflected in the set of Projects. The list will
  /// include only ACTIVE Projects.
  /// <br>
  /// <br>Use
  /// GetFirebaseProject
  /// for consistent reads as well as for additional Project details.
  ///
  /// Request parameters:
  ///
  /// [pageToken] - Token returned from a previous call to
  /// `ListFirebaseProjects` indicating
  /// where in the set of Projects to resume listing.
  ///
  /// [pageSize] - The maximum number of Projects to return in the response.
  /// <br>
  /// <br>The server may return fewer than this at its discretion.
  /// If no value is specified (or too large a value is specified), the server
  /// will impose its own limit.
  /// <br>
  /// <br>This value cannot be negative.
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
  async.Future<ListFirebaseProjectsResponse> list(
      {core.String pageToken, core.int pageSize, core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (pageToken != null) {
      _queryParams["pageToken"] = [pageToken];
    }
    if (pageSize != null) {
      _queryParams["pageSize"] = ["${pageSize}"];
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1beta1/projects';

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response
        .then((data) => new ListFirebaseProjectsResponse.fromJson(data));
  }

  /// Updates the attributes of the FirebaseProject identified by the
  /// specified resource name.
  /// <br>
  /// <br>All [query parameters](#query-parameters) are required.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - The fully qualified resource name of the Project, in the format:
  /// <br><code>projects/<var>projectId</var></code>
  /// Value must have pattern "^projects/[^/]+$".
  ///
  /// [updateMask] - Specifies which fields to update.
  /// <br>
  /// <br>If this list is empty, then no state will be updated.
  /// <br>Note that the fields `name`, `project_id`, and `project_number` are
  /// all
  /// immutable.
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
  async.Future<FirebaseProject> patch(FirebaseProject request, core.String name,
      {core.String updateMask, core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (request != null) {
      _body = convert.json.encode((request).toJson());
    }
    if (name == null) {
      throw new core.ArgumentError("Parameter name is required.");
    }
    if (updateMask != null) {
      _queryParams["updateMask"] = [updateMask];
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1beta1/' + commons.Escaper.ecapeVariableReserved('$name');

    var _response = _requester.request(_url, "PATCH",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new FirebaseProject.fromJson(data));
  }

  /// A convenience method that lists all available Apps for the specified
  /// FirebaseProject.
  /// <br>
  /// <br>Typically, interaction with an App should be done using the
  /// platform-specific service, but some tool use-cases require a summary of
  /// all
  /// known Apps (such as for App selector interfaces).
  ///
  /// Request parameters:
  ///
  /// [parent] - The parent Project for which to list Apps, in the format:
  /// <br><code>projects/<var>projectId</var></code>
  /// Value must have pattern "^projects/[^/]+$".
  ///
  /// [pageToken] - Token returned from a previous call to `SearchFirebaseApps`
  /// indicating
  /// where in the set of Apps to resume listing.
  ///
  /// [pageSize] - The maximum number of Apps to return in the response.
  /// <br>
  /// <br>The server may return fewer than this value at its discretion.
  /// If no value is specified (or too large a value is specified), then the
  /// server will impose its own limit.
  /// <br>
  /// <br>This value cannot be negative.
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
  async.Future<SearchFirebaseAppsResponse> searchApps(core.String parent,
      {core.String pageToken, core.int pageSize, core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (parent == null) {
      throw new core.ArgumentError("Parameter parent is required.");
    }
    if (pageToken != null) {
      _queryParams["pageToken"] = [pageToken];
    }
    if (pageSize != null) {
      _queryParams["pageSize"] = ["${pageSize}"];
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1beta1/' +
        commons.Escaper.ecapeVariableReserved('$parent') +
        ':searchApps';

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response
        .then((data) => new SearchFirebaseAppsResponse.fromJson(data));
  }
}

class ProjectsAndroidAppsResourceApi {
  final commons.ApiRequester _requester;

  ProjectsAndroidAppsShaResourceApi get sha =>
      new ProjectsAndroidAppsShaResourceApi(_requester);

  ProjectsAndroidAppsResourceApi(commons.ApiRequester client)
      : _requester = client;

  /// Requests that a new AndroidApp be created.
  /// <br>
  /// <br>The result of this call is an `Operation` which can be used to track
  /// the provisioning process. The `Operation` is automatically deleted after
  /// completion, so there is no need to call `DeleteOperation`.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - The parent Project for which to list Apps, in the format:
  /// <br><code>projects/<var>projectId</var></code>
  /// Value must have pattern "^projects/[^/]+$".
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
  async.Future<Operation> create(AndroidApp request, core.String parent,
      {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (request != null) {
      _body = convert.json.encode((request).toJson());
    }
    if (parent == null) {
      throw new core.ArgumentError("Parameter parent is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1beta1/' +
        commons.Escaper.ecapeVariableReserved('$parent') +
        '/androidApps';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Operation.fromJson(data));
  }

  /// Gets the AndroidApp identified by the specified resource name.
  ///
  /// Request parameters:
  ///
  /// [name] - The fully qualified resource name of the App, in the format:
  /// <br><code>projects/<var>projectId</var>/androidApps/<var>appId</var></code>
  /// <br>As an <var>appId</var> is a unique identifier, the Unique Resource
  /// from Sub-Collection access pattern may be used here, in the format:
  /// <br><code>projects/-/androidApps/<var>appId</var></code>
  /// Value must have pattern "^projects/[^/]+/androidApps/[^/]+$".
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
  async.Future<AndroidApp> get(core.String name, {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (name == null) {
      throw new core.ArgumentError("Parameter name is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1beta1/' + commons.Escaper.ecapeVariableReserved('$name');

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new AndroidApp.fromJson(data));
  }

  /// Gets the configuration artifact associated with the specified
  /// AndroidApp.
  ///
  /// Request parameters:
  ///
  /// [name] - The resource name of the App configuration to download, in the
  /// format:
  /// <br><code>projects/<var>projectId</var>/androidApps/<var>appId</var>/config</code>
  /// <br>As an <var>appId</var> is a unique identifier, the Unique Resource
  /// from Sub-Collection access pattern may be used here, in the format:
  /// <br><code>projects/-/androidApps/<var>appId</var></code>
  /// Value must have pattern "^projects/[^/]+/androidApps/[^/]+/config$".
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
  async.Future<AndroidAppConfig> getConfig(core.String name,
      {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (name == null) {
      throw new core.ArgumentError("Parameter name is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1beta1/' + commons.Escaper.ecapeVariableReserved('$name');

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new AndroidAppConfig.fromJson(data));
  }

  /// Lists each AndroidApp associated with the specified parent Project.
  /// <br>
  /// <br>The elements are returned in no particular order, but will be a
  /// consistent view of the Apps when additional requests are made with a
  /// `pageToken`.
  ///
  /// Request parameters:
  ///
  /// [parent] - The parent Project for which to list Apps, in the format:
  /// <br><code>projects/<var>projectId</var></code>
  /// Value must have pattern "^projects/[^/]+$".
  ///
  /// [pageToken] - Token returned from a previous call to `ListAndroidApps`
  /// indicating where
  /// in the set of Apps to resume listing.
  ///
  /// [pageSize] - The maximum number of Apps to return in the response.
  /// <br>
  /// <br>The server may return fewer than this at its discretion.
  /// If no value is specified (or too large a value is specified), then the
  /// server will impose its own limit.
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
  async.Future<ListAndroidAppsResponse> list(core.String parent,
      {core.String pageToken, core.int pageSize, core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (parent == null) {
      throw new core.ArgumentError("Parameter parent is required.");
    }
    if (pageToken != null) {
      _queryParams["pageToken"] = [pageToken];
    }
    if (pageSize != null) {
      _queryParams["pageSize"] = ["${pageSize}"];
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1beta1/' +
        commons.Escaper.ecapeVariableReserved('$parent') +
        '/androidApps';

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new ListAndroidAppsResponse.fromJson(data));
  }

  /// Updates the attributes of the AndroidApp identified by the specified
  /// resource name.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - The fully qualified resource name of the App, in the format:
  /// <br><code>projects/<var>projectId</var>/androidApps/<var>appId</var></code>
  /// Value must have pattern "^projects/[^/]+/androidApps/[^/]+$".
  ///
  /// [updateMask] - Specifies which fields to update.
  /// <br>Note that the fields `name`, `appId`, `projectId`, and `packageName`
  /// are all immutable.
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
  async.Future<AndroidApp> patch(AndroidApp request, core.String name,
      {core.String updateMask, core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (request != null) {
      _body = convert.json.encode((request).toJson());
    }
    if (name == null) {
      throw new core.ArgumentError("Parameter name is required.");
    }
    if (updateMask != null) {
      _queryParams["updateMask"] = [updateMask];
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1beta1/' + commons.Escaper.ecapeVariableReserved('$name');

    var _response = _requester.request(_url, "PATCH",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new AndroidApp.fromJson(data));
  }
}

class ProjectsAndroidAppsShaResourceApi {
  final commons.ApiRequester _requester;

  ProjectsAndroidAppsShaResourceApi(commons.ApiRequester client)
      : _requester = client;

  /// Adds a SHA certificate to the specified AndroidApp.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - The parent App to which a SHA certificate will be added, in the
  /// format:
  /// <br><code>projects/<var>projectId</var>/androidApps/<var>appId</var></code>
  /// <br>As an <var>appId</var> is a unique identifier, the Unique Resource
  /// from Sub-Collection access pattern may be used here, in the format:
  /// <br><code>projects/-/androidApps/<var>appId</var></code>
  /// Value must have pattern "^projects/[^/]+/androidApps/[^/]+$".
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
      ShaCertificate request, core.String parent,
      {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (request != null) {
      _body = convert.json.encode((request).toJson());
    }
    if (parent == null) {
      throw new core.ArgumentError("Parameter parent is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url =
        'v1beta1/' + commons.Escaper.ecapeVariableReserved('$parent') + '/sha';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new ShaCertificate.fromJson(data));
  }

  /// Removes a SHA certificate from the specified AndroidApp.
  ///
  /// Request parameters:
  ///
  /// [name] - The fully qualified resource name of the `sha-key`, in the
  /// format:
  /// <br><code>projects/<var>projectId</var>/androidApps/<var>appId</var>/sha/<var>shaHash</var></code>
  /// Value must have pattern "^projects/[^/]+/androidApps/[^/]+/sha/[^/]+$".
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
  async.Future<Empty> delete(core.String name, {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (name == null) {
      throw new core.ArgumentError("Parameter name is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1beta1/' + commons.Escaper.ecapeVariableReserved('$name');

    var _response = _requester.request(_url, "DELETE",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Empty.fromJson(data));
  }

  /// Returns the list of SHA-1 and SHA-256 certificates for the specified
  /// AndroidApp.
  ///
  /// Request parameters:
  ///
  /// [parent] - The parent App for which to list SHA certificates, in the
  /// format:
  /// <br><code>projects/<var>projectId</var>/androidApps/<var>appId</var></code>
  /// <br>As an <var>appId</var> is a unique identifier, the Unique Resource
  /// from Sub-Collection access pattern may be used here, in the format:
  /// <br><code>projects/-/androidApps/<var>appId</var></code>
  /// Value must have pattern "^projects/[^/]+/androidApps/[^/]+$".
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
  async.Future<ListShaCertificatesResponse> list(core.String parent,
      {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (parent == null) {
      throw new core.ArgumentError("Parameter parent is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url =
        'v1beta1/' + commons.Escaper.ecapeVariableReserved('$parent') + '/sha';

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response
        .then((data) => new ListShaCertificatesResponse.fromJson(data));
  }
}

class ProjectsAvailableLocationsResourceApi {
  final commons.ApiRequester _requester;

  ProjectsAvailableLocationsResourceApi(commons.ApiRequester client)
      : _requester = client;

  /// Returns a list of valid Google Cloud Platform (GCP) resource locations for
  /// the specified Project (including a FirebaseProject).
  /// <br>
  /// <br>The default GCP resource location of a project defines the
  /// geographical
  /// location where project resources, such as Cloud Firestore, will be
  /// provisioned by default.
  /// <br>
  /// <br>The returned list are the available
  /// [GCP resource
  /// locations](https://firebase.google.com/docs/projects/locations). <br>
  /// <br>This call checks for any location restrictions for the specified
  /// Project and, thus, might return a subset of all possible GCP resource
  /// locations. To list all GCP resource locations (regardless of any
  /// restrictions), call the endpoint without specifying a `projectId` (that
  /// is,
  /// `/v1beta1/{parent=projects/-}/listAvailableLocations`).
  /// <br>
  /// <br>To call `ListAvailableLocations` with a specified project, a member
  /// must be at minimum a Viewer of the project. Calls without a specified
  /// project do not require any specific project permissions.
  ///
  /// Request parameters:
  ///
  /// [parent] - The Project for which to list GCP resource locations, in the
  /// format:
  /// <br><code>projects/<var>projectId</var></code>
  /// <br>If no project is specified (that is, `projects/-`), the returned list
  /// does not take into account org-specific or project-specific location
  /// restrictions.
  /// Value must have pattern "^projects/[^/]+$".
  ///
  /// [pageToken] - Token returned from a previous call to
  /// `ListAvailableLocations` indicating
  /// where in the list of locations to resume listing.
  ///
  /// [pageSize] - The maximum number of locations to return in the response.
  /// <br>
  /// <br>The server may return fewer than this value at its discretion.
  /// If no value is specified (or too large a value is specified), then the
  /// server will impose its own limit.
  /// <br>
  /// <br>This value cannot be negative.
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
  async.Future<ListAvailableLocationsResponse> list(core.String parent,
      {core.String pageToken, core.int pageSize, core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (parent == null) {
      throw new core.ArgumentError("Parameter parent is required.");
    }
    if (pageToken != null) {
      _queryParams["pageToken"] = [pageToken];
    }
    if (pageSize != null) {
      _queryParams["pageSize"] = ["${pageSize}"];
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1beta1/' +
        commons.Escaper.ecapeVariableReserved('$parent') +
        '/availableLocations';

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response
        .then((data) => new ListAvailableLocationsResponse.fromJson(data));
  }
}

class ProjectsDefaultLocationResourceApi {
  final commons.ApiRequester _requester;

  ProjectsDefaultLocationResourceApi(commons.ApiRequester client)
      : _requester = client;

  /// Sets the default Google Cloud Platform (GCP) resource location for the
  /// specified FirebaseProject.
  /// <br>
  /// <br>This method creates an App Engine application with a
  /// [default Cloud Storage
  /// bucket](https://cloud.google.com/appengine/docs/standard/python/googlecloudstorageclient/setting-up-cloud-storage#activating_a_cloud_storage_bucket),
  /// located in the specified
  /// [`location_id`](#body.request_body.FIELDS.location_id).
  /// This location must be one of the available
  /// [GCP resource
  /// locations](https://firebase.google.com/docs/projects/locations). <br>
  /// <br>After the default GCP resource location is finalized, or if it was
  /// already set, it cannot be changed. The default GCP resource location for
  /// the specified FirebaseProject might already be set because either the
  /// GCP `Project` already has an App Engine application or
  /// `FinalizeDefaultLocation` was previously called with a specified
  /// `location_id`. Any new calls to `FinalizeDefaultLocation` with a
  /// <em>different</em> specified `location_id` will return a 409 error.
  /// <br>
  /// <br>The result of this call is an [`Operation`](../../v1beta1/operations),
  /// which can be used to track the provisioning process. The
  /// [`response`](../../v1beta1/operations#Operation.FIELDS.response) type of
  /// the `Operation` is google.protobuf.Empty.
  /// <br>
  /// <br>The `Operation` can be polled by its `name` using
  /// GetOperation until `done` is
  /// true. When `done` is true, the `Operation` has either succeeded or failed.
  /// If the `Operation` has succeeded, its
  /// [`response`](../../v1beta1/operations#Operation.FIELDS.response) will be
  /// set to a google.protobuf.Empty; if the `Operation` has failed, its
  /// `error` will be set to a google.rpc.Status. The `Operation` is
  /// automatically deleted after completion, so there is no need to call
  /// DeleteOperation.
  /// <br>
  /// <br>All fields listed in the [request body](#request-body) are required.
  /// <br>
  /// <br>To call `FinalizeDefaultLocation`, a member must be an Owner
  /// of the project.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - The resource name of the Project for which the default GCP
  /// resource
  /// location will be set, in the format:
  /// <br><code>projects/<var>projectId</var></code>
  /// Value must have pattern "^projects/[^/]+$".
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
      FinalizeDefaultLocationRequest request, core.String parent,
      {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (request != null) {
      _body = convert.json.encode((request).toJson());
    }
    if (parent == null) {
      throw new core.ArgumentError("Parameter parent is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1beta1/' +
        commons.Escaper.ecapeVariableReserved('$parent') +
        '/defaultLocation:finalize';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Operation.fromJson(data));
  }
}

class ProjectsIosAppsResourceApi {
  final commons.ApiRequester _requester;

  ProjectsIosAppsResourceApi(commons.ApiRequester client) : _requester = client;

  /// Requests that a new IosApp be created.
  /// <br>
  /// <br>The result of this call is an `Operation` which can be used to track
  /// the provisioning process. The `Operation` is automatically deleted after
  /// completion, so there is no need to call `DeleteOperation`.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - The parent Project for which to list Apps, in the format:
  /// <br><code>projects/<var>projectId</var></code>
  /// Value must have pattern "^projects/[^/]+$".
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
  async.Future<Operation> create(IosApp request, core.String parent,
      {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (request != null) {
      _body = convert.json.encode((request).toJson());
    }
    if (parent == null) {
      throw new core.ArgumentError("Parameter parent is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1beta1/' +
        commons.Escaper.ecapeVariableReserved('$parent') +
        '/iosApps';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Operation.fromJson(data));
  }

  /// Gets the IosApp identified by the specified resource name.
  ///
  /// Request parameters:
  ///
  /// [name] - The fully qualified resource name of the App, in the format:
  /// <code>projects/<var>projectId</var>/iosApps/<var>appId</var></code>
  /// <br>As an <var>appId</var> is a unique identifier, the Unique Resource
  /// from Sub-Collection access pattern may be used here, in the format:
  /// <br><code>projects/-/iosApps/<var>appId</var></code>
  /// Value must have pattern "^projects/[^/]+/iosApps/[^/]+$".
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
  async.Future<IosApp> get(core.String name, {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (name == null) {
      throw new core.ArgumentError("Parameter name is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1beta1/' + commons.Escaper.ecapeVariableReserved('$name');

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new IosApp.fromJson(data));
  }

  /// Gets the configuration artifact associated with the specified IosApp.
  ///
  /// Request parameters:
  ///
  /// [name] - The resource name of the App configuration to download, in the
  /// format:
  /// <br><code>projects/<var>projectId</var>/iosApps/<var>appId</var>/config</code>
  /// <br>As an <var>appId</var> is a unique identifier, the Unique Resource
  /// from Sub-Collection access pattern may be used here, in the format:
  /// <br><code>projects/-/iosApps/<var>appId</var></code>
  /// Value must have pattern "^projects/[^/]+/iosApps/[^/]+/config$".
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
  async.Future<IosAppConfig> getConfig(core.String name,
      {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (name == null) {
      throw new core.ArgumentError("Parameter name is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1beta1/' + commons.Escaper.ecapeVariableReserved('$name');

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new IosAppConfig.fromJson(data));
  }

  /// Lists each IosApp associated with the specified parent Project.
  /// <br>
  /// <br>The elements are returned in no particular order, but will be a
  /// consistent view of the Apps when additional requests are made with a
  /// `pageToken`.
  ///
  /// Request parameters:
  ///
  /// [parent] - The parent Project for which to list Apps, in the format:
  /// <br><code>projects/<var>projectId</var></code>
  /// Value must have pattern "^projects/[^/]+$".
  ///
  /// [pageToken] - Token returned from a previous call to `ListIosApps`
  /// indicating where in
  /// the set of Apps to resume listing.
  ///
  /// [pageSize] - The maximum number of Apps to return in the response.
  /// <br>
  /// <br>The server may return fewer than this at its discretion.
  /// If no value is specified (or too large a value is specified), the server
  /// will impose its own limit.
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
  async.Future<ListIosAppsResponse> list(core.String parent,
      {core.String pageToken, core.int pageSize, core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (parent == null) {
      throw new core.ArgumentError("Parameter parent is required.");
    }
    if (pageToken != null) {
      _queryParams["pageToken"] = [pageToken];
    }
    if (pageSize != null) {
      _queryParams["pageSize"] = ["${pageSize}"];
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1beta1/' +
        commons.Escaper.ecapeVariableReserved('$parent') +
        '/iosApps';

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new ListIosAppsResponse.fromJson(data));
  }

  /// Updates the attributes of the IosApp identified by the specified
  /// resource name.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - The fully qualified resource name of the App, in the format:
  /// <br><code>projects/<var>projectId</var>/iosApps/<var>appId</var></code>
  /// Value must have pattern "^projects/[^/]+/iosApps/[^/]+$".
  ///
  /// [updateMask] - Specifies which fields to update.
  /// <br>Note that the fields `name`, `appId`, `projectId`, and `bundleId`
  /// are all immutable.
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
  async.Future<IosApp> patch(IosApp request, core.String name,
      {core.String updateMask, core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (request != null) {
      _body = convert.json.encode((request).toJson());
    }
    if (name == null) {
      throw new core.ArgumentError("Parameter name is required.");
    }
    if (updateMask != null) {
      _queryParams["updateMask"] = [updateMask];
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1beta1/' + commons.Escaper.ecapeVariableReserved('$name');

    var _response = _requester.request(_url, "PATCH",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new IosApp.fromJson(data));
  }
}

class ProjectsWebAppsResourceApi {
  final commons.ApiRequester _requester;

  ProjectsWebAppsResourceApi(commons.ApiRequester client) : _requester = client;

  /// Requests that a new WebApp be created.
  /// <br>
  /// <br>The result of this call is an `Operation` which can be used to track
  /// the provisioning process. The `Operation` is automatically deleted after
  /// completion, so there is no need to call `DeleteOperation`.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - The parent Project for which to list Apps, in the format:
  /// <br><code>projects/<var>projectId</var></code>
  /// Value must have pattern "^projects/[^/]+$".
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
  async.Future<Operation> create(WebApp request, core.String parent,
      {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (request != null) {
      _body = convert.json.encode((request).toJson());
    }
    if (parent == null) {
      throw new core.ArgumentError("Parameter parent is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1beta1/' +
        commons.Escaper.ecapeVariableReserved('$parent') +
        '/webApps';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Operation.fromJson(data));
  }

  /// Gets the WebApp identified by the specified resource name.
  ///
  /// Request parameters:
  ///
  /// [name] - The fully qualified resource name of the App, in the format:
  /// <br><code>projects/<var>projectId</var>/webApps/<var>appId</var></code>
  /// <br>As an <var>appId</var> is a unique identifier, the Unique Resource
  /// from Sub-Collection access pattern may be used here, in the format:
  /// <br><code>projects/-/webApps/<var>appId</var></code>
  /// Value must have pattern "^projects/[^/]+/webApps/[^/]+$".
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
  async.Future<WebApp> get(core.String name, {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (name == null) {
      throw new core.ArgumentError("Parameter name is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1beta1/' + commons.Escaper.ecapeVariableReserved('$name');

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new WebApp.fromJson(data));
  }

  /// Gets the configuration artifact associated with the specified WebApp.
  ///
  /// Request parameters:
  ///
  /// [name] - The resource name of the App configuration to download, in the
  /// format:
  /// <br><code>projects/<var>projectId</var>/webApps/<var>appId</var>/config</code>
  /// <br>As an <var>appId</var> is a unique identifier, the Unique Resource
  /// from Sub-Collection access pattern may be used here, in the format:
  /// <br><code>projects/-/webApps/<var>appId</var></code>
  /// Value must have pattern "^projects/[^/]+/webApps/[^/]+/config$".
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
  async.Future<WebAppConfig> getConfig(core.String name,
      {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (name == null) {
      throw new core.ArgumentError("Parameter name is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1beta1/' + commons.Escaper.ecapeVariableReserved('$name');

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new WebAppConfig.fromJson(data));
  }

  /// Lists each WebApp associated with the specified parent Project.
  /// <br>
  /// <br>The elements are returned in no particular order, but will be a
  /// consistent view of the Apps when additional requests are made with a
  /// `pageToken`.
  ///
  /// Request parameters:
  ///
  /// [parent] - The parent Project for which to list Apps, in the format:
  /// <br><code>projects/<var>projectId</var></code>
  /// Value must have pattern "^projects/[^/]+$".
  ///
  /// [pageToken] - Token returned from a previous call to `ListWebApps`
  /// indicating where in
  /// the set of Apps to resume listing.
  ///
  /// [pageSize] - The maximum number of Apps to return in the response.
  /// <br>
  /// <br>The server may return fewer than this value at its discretion.
  /// If no value is specified (or too large a value is specified), then the
  /// server will impose its own limit.
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
  async.Future<ListWebAppsResponse> list(core.String parent,
      {core.String pageToken, core.int pageSize, core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (parent == null) {
      throw new core.ArgumentError("Parameter parent is required.");
    }
    if (pageToken != null) {
      _queryParams["pageToken"] = [pageToken];
    }
    if (pageSize != null) {
      _queryParams["pageSize"] = ["${pageSize}"];
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1beta1/' +
        commons.Escaper.ecapeVariableReserved('$parent') +
        '/webApps';

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new ListWebAppsResponse.fromJson(data));
  }

  /// Updates the attributes of the WebApp identified by the specified
  /// resource name.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - The fully qualified resource name of the App, for example:
  /// <br><code>projects/<var>projectId</var>/webApps/<var>appId</var></code>
  /// Value must have pattern "^projects/[^/]+/webApps/[^/]+$".
  ///
  /// [updateMask] - Specifies which fields to update.
  /// <br>Note that the fields `name`, `appId`, and `projectId` are all
  /// immutable.
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
  async.Future<WebApp> patch(WebApp request, core.String name,
      {core.String updateMask, core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (request != null) {
      _body = convert.json.encode((request).toJson());
    }
    if (name == null) {
      throw new core.ArgumentError("Parameter name is required.");
    }
    if (updateMask != null) {
      _queryParams["updateMask"] = [updateMask];
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1beta1/' + commons.Escaper.ecapeVariableReserved('$name');

    var _response = _requester.request(_url, "PATCH",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new WebApp.fromJson(data));
  }
}

/// All fields are required.
class AddFirebaseRequest {
  /// Deprecated. Instead, to set your project's default GCP resource location,
  /// call [`FinalizeDefaultLocation`](../projects.defaultLocation/finalize)
  /// after you add Firebase services to your project.
  /// <br>
  /// <br>The ID of the project's default GCP resource location. The location
  /// must be one of the available
  /// [GCP resource
  /// locations](https://firebase.google.com/docs/projects/locations).
  core.String locationId;

  /// The region code (CLDR) that the account will use for Firebase Analytics
  /// data.
  /// <br>For example: US, GB, or DE
  /// <br>
  /// <br>In Java, use `com.google.i18n.identifiers.RegionCode`.
  core.String regionCode;

  /// The time zone that the account will use for Firebase Analytics data.
  /// <br>For example: America/Los_Angeles or Africa/Abidjan
  core.String timeZone;

  AddFirebaseRequest();

  AddFirebaseRequest.fromJson(core.Map _json) {
    if (_json.containsKey("locationId")) {
      locationId = _json["locationId"];
    }
    if (_json.containsKey("regionCode")) {
      regionCode = _json["regionCode"];
    }
    if (_json.containsKey("timeZone")) {
      timeZone = _json["timeZone"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (locationId != null) {
      _json["locationId"] = locationId;
    }
    if (regionCode != null) {
      _json["regionCode"] = regionCode;
    }
    if (timeZone != null) {
      _json["timeZone"] = timeZone;
    }
    return _json;
  }
}

class AdminSdkConfig {
  /// The default Firebase Realtime Database URL.
  core.String databaseURL;

  /// The ID of the project's default GCP resource location. The location is one
  /// of the available
  /// [GCP resource
  /// locations](https://firebase.google.com/docs/projects/locations). <br>
  /// <br>This field is omitted if the default GCP resource location has not
  /// been
  /// finalized yet. To set your project's default GCP resource location,
  /// call [`FinalizeDefaultLocation`](../projects.defaultLocation/finalize)
  /// after you add Firebase services to your project.
  core.String locationId;

  /// Immutable. The globally unique, user-assigned project ID of the parent
  /// Project.
  core.String projectId;

  /// The default Cloud Storage for Firebase storage bucket name.
  core.String storageBucket;

  AdminSdkConfig();

  AdminSdkConfig.fromJson(core.Map _json) {
    if (_json.containsKey("databaseURL")) {
      databaseURL = _json["databaseURL"];
    }
    if (_json.containsKey("locationId")) {
      locationId = _json["locationId"];
    }
    if (_json.containsKey("projectId")) {
      projectId = _json["projectId"];
    }
    if (_json.containsKey("storageBucket")) {
      storageBucket = _json["storageBucket"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (databaseURL != null) {
      _json["databaseURL"] = databaseURL;
    }
    if (locationId != null) {
      _json["locationId"] = locationId;
    }
    if (projectId != null) {
      _json["projectId"] = projectId;
    }
    if (storageBucket != null) {
      _json["storageBucket"] = storageBucket;
    }
    return _json;
  }
}

/// Details of a Firebase App for Android.
class AndroidApp {
  /// Immutable. The globally unique, Firebase-assigned identifier of the App.
  /// <br>
  /// <br>This identifier should be treated as an opaque token, as the data
  /// format is not specified.
  core.String appId;

  /// The user-assigned display name of the App.
  core.String displayName;

  /// The fully qualified resource name of the App, in the format:
  /// <br><code>projects/<var>projectId</var>/androidApps/<var>appId</var></code>
  core.String name;

  /// The canonical package name of the Android App as would appear in the
  /// Google Play Developer Console.
  core.String packageName;

  /// The globally unique, user-assigned ID of the parent Project for the App.
  core.String projectId;

  AndroidApp();

  AndroidApp.fromJson(core.Map _json) {
    if (_json.containsKey("appId")) {
      appId = _json["appId"];
    }
    if (_json.containsKey("displayName")) {
      displayName = _json["displayName"];
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
    if (_json.containsKey("packageName")) {
      packageName = _json["packageName"];
    }
    if (_json.containsKey("projectId")) {
      projectId = _json["projectId"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (appId != null) {
      _json["appId"] = appId;
    }
    if (displayName != null) {
      _json["displayName"] = displayName;
    }
    if (name != null) {
      _json["name"] = name;
    }
    if (packageName != null) {
      _json["packageName"] = packageName;
    }
    if (projectId != null) {
      _json["projectId"] = projectId;
    }
    return _json;
  }
}

/// Configuration metadata of a single Firebase App for Android.
class AndroidAppConfig {
  /// The contents of the JSON configuration file.
  core.String configFileContents;
  core.List<core.int> get configFileContentsAsBytes {
    return convert.base64.decode(configFileContents);
  }

  set configFileContentsAsBytes(core.List<core.int> _bytes) {
    configFileContents =
        convert.base64.encode(_bytes).replaceAll("/", "_").replaceAll("+", "-");
  }

  /// The filename that the configuration artifact is typically saved as.
  /// <br>For example: `google-services.json`
  core.String configFilename;

  AndroidAppConfig();

  AndroidAppConfig.fromJson(core.Map _json) {
    if (_json.containsKey("configFileContents")) {
      configFileContents = _json["configFileContents"];
    }
    if (_json.containsKey("configFilename")) {
      configFilename = _json["configFilename"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (configFileContents != null) {
      _json["configFileContents"] = configFileContents;
    }
    if (configFilename != null) {
      _json["configFilename"] = configFilename;
    }
    return _json;
  }
}

/// The default resources associated with a `FirebaseProject`.
class DefaultResources {
  /// The default Firebase Hosting site name, in the format:
  /// <br><code><var>projectId</var></code>
  /// <br>Though rare, your `projectId` might already be used as the name for an
  /// existing Hosting site in another project (learn more about creating
  /// non-default,
  /// [additional sites](https://firebase.google.com/docs/hosting/multisites)).
  /// In these cases, your `projectId` is appended with a hyphen then five
  /// alphanumeric characters to create your default Hosting site name. For
  /// example, if your `projectId` is `myproject123`, your default Hosting site
  /// name might be:
  /// <br><code>myproject123-a5c16</code>
  core.String hostingSite;

  /// The ID of the project's default GCP resource location. The location is one
  /// of the available
  /// [GCP resource
  /// locations](https://firebase.google.com/docs/projects/locations). <br>
  /// <br>This field is omitted if the default GCP resource location has not
  /// been
  /// finalized yet. To set your project's default GCP resource location,
  /// call [`FinalizeDefaultLocation`](../projects.defaultLocation/finalize)
  /// after you add Firebase services to your project.
  core.String locationId;

  /// The default Firebase Realtime Database instance name, in the format:
  /// <br><code><var>projectId</var></code>
  /// <br>Though rare, your `projectId` might already be used as the name for an
  /// existing Realtime Database instance in another project (learn more about
  /// [database
  /// sharding](https://firebase.google.com/docs/database/usage/sharding)). In
  /// these cases, your `projectId` is appended with a hyphen then five
  /// alphanumeric characters to create your default Realtime Database instance
  /// name. For example, if your `projectId` is `myproject123`, your default
  /// database instance name might be:
  /// <br><code>myproject123-a5c16</code>
  core.String realtimeDatabaseInstance;

  /// The default Cloud Storage for Firebase storage bucket, in the format:
  /// <br><code><var>projectId</var>.appspot.com</code>
  core.String storageBucket;

  DefaultResources();

  DefaultResources.fromJson(core.Map _json) {
    if (_json.containsKey("hostingSite")) {
      hostingSite = _json["hostingSite"];
    }
    if (_json.containsKey("locationId")) {
      locationId = _json["locationId"];
    }
    if (_json.containsKey("realtimeDatabaseInstance")) {
      realtimeDatabaseInstance = _json["realtimeDatabaseInstance"];
    }
    if (_json.containsKey("storageBucket")) {
      storageBucket = _json["storageBucket"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (hostingSite != null) {
      _json["hostingSite"] = hostingSite;
    }
    if (locationId != null) {
      _json["locationId"] = locationId;
    }
    if (realtimeDatabaseInstance != null) {
      _json["realtimeDatabaseInstance"] = realtimeDatabaseInstance;
    }
    if (storageBucket != null) {
      _json["storageBucket"] = storageBucket;
    }
    return _json;
  }
}

/// A generic empty message that you can re-use to avoid defining duplicated
/// empty messages in your APIs. A typical example is to use it as the request
/// or the response type of an API method. For instance:
///
///     service Foo {
///       rpc Bar(google.protobuf.Empty) returns (google.protobuf.Empty);
///     }
///
/// The JSON representation for `Empty` is empty JSON object `{}`.
class Empty {
  Empty();

  Empty.fromJson(core.Map _json) {}

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    return _json;
  }
}

class FinalizeDefaultLocationRequest {
  /// The ID of the default GCP resource location for the Project. The location
  /// must be one of the available
  /// [GCP resource
  /// locations](https://firebase.google.com/docs/projects/locations).
  core.String locationId;

  FinalizeDefaultLocationRequest();

  FinalizeDefaultLocationRequest.fromJson(core.Map _json) {
    if (_json.containsKey("locationId")) {
      locationId = _json["locationId"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (locationId != null) {
      _json["locationId"] = locationId;
    }
    return _json;
  }
}

/// A high-level summary of an App.
class FirebaseAppInfo {
  /// Immutable. The globally unique, Firebase-assigned identifier of the App.
  /// <br>
  /// <br>This identifier should be treated as an opaque token, as the data
  /// format is not specified.
  core.String appId;

  /// The user-assigned display name of the Firebase App.
  core.String displayName;

  /// The fully qualified resource name of the Firebase App, in the format:
  /// <br><code>projects/<var>projectId</var>/iosApps/<var>appId</var></code>
  /// or <br><code>projects/<var>projectId</var>/androidApps/<var>appId</var>
  /// </code>
  core.String name;

  /// The platform of the Firebase App.
  /// Possible string values are:
  /// - "PLATFORM_UNSPECIFIED" : Unknown state. This is only used for
  /// distinguishing unset values.
  /// - "IOS" : The Firebase App is associated with iOS.
  /// - "ANDROID" : The Firebase App is associated with Android.
  /// - "WEB" : The Firebase App is associated with web.
  core.String platform;

  FirebaseAppInfo();

  FirebaseAppInfo.fromJson(core.Map _json) {
    if (_json.containsKey("appId")) {
      appId = _json["appId"];
    }
    if (_json.containsKey("displayName")) {
      displayName = _json["displayName"];
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
    if (_json.containsKey("platform")) {
      platform = _json["platform"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (appId != null) {
      _json["appId"] = appId;
    }
    if (displayName != null) {
      _json["displayName"] = displayName;
    }
    if (name != null) {
      _json["name"] = name;
    }
    if (platform != null) {
      _json["platform"] = platform;
    }
    return _json;
  }
}

/// A `FirebaseProject` is the top-level Firebase entity. It is the container
/// for
/// Firebase Apps, Firebase Hosting sites, storage systems (Firebase Realtime
/// Database, Cloud Firestore, Cloud Storage buckets) and other Firebase and
/// Google Cloud Platform (GCP) resources.
/// <br>
/// <br>You can create a new `FirebaseProject` in the
/// [Firebase console](https://console.firebase.google.com/),
/// or you can add Firebase resources to an existing
/// [GCP
/// `Project`](https://cloud.google.com/resource-manager/reference/rest/v1/projects)
/// by calling
/// AddFirebase.
/// <br>
/// <br>A `FirebaseProject` is actually also a GCP `Project`, so a
/// `FirebaseProject` uses underlying GCP identifiers (most importantly,
/// `projectId`) as its own for easy interop with GCP APIs.
class FirebaseProject {
  /// The user-assigned display name of the Project.
  core.String displayName;

  /// The fully qualified resource name of the Project, in the format:
  /// <br><code>projects/<var>projectId</var></code>
  core.String name;

  /// Immutable. The globally unique, user-assigned ID of the Project.
  core.String projectId;

  /// The globally unique, Google-assigned identifier of the Project.
  core.String projectNumber;

  /// The default Firebase resources associated with the Project.
  DefaultResources resources;

  FirebaseProject();

  FirebaseProject.fromJson(core.Map _json) {
    if (_json.containsKey("displayName")) {
      displayName = _json["displayName"];
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
    if (_json.containsKey("projectId")) {
      projectId = _json["projectId"];
    }
    if (_json.containsKey("projectNumber")) {
      projectNumber = _json["projectNumber"];
    }
    if (_json.containsKey("resources")) {
      resources = new DefaultResources.fromJson(_json["resources"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (displayName != null) {
      _json["displayName"] = displayName;
    }
    if (name != null) {
      _json["name"] = name;
    }
    if (projectId != null) {
      _json["projectId"] = projectId;
    }
    if (projectNumber != null) {
      _json["projectNumber"] = projectNumber;
    }
    if (resources != null) {
      _json["resources"] = (resources).toJson();
    }
    return _json;
  }
}

/// Details of a Firebase App for iOS.
class IosApp {
  /// Immutable. The globally unique, Firebase-assigned identifier of the App.
  /// <br>
  /// <br>This identifier should be treated as an opaque token, as the data
  /// format is not specified.
  core.String appId;

  /// The automatically generated Apple ID assigned to the App by Apple in the
  /// iOS App Store.
  core.String appStoreId;

  /// The canonical bundle ID of the iOS App as it would appear in the iOS
  /// AppStore.
  core.String bundleId;

  /// The user-assigned display name of the App.
  core.String displayName;

  /// The fully qualified resource name of the App, in the format:
  /// <br><code>projects/<var>projectId</var>/iosApps/<var>appId</var></code>
  core.String name;

  /// The globally unique, user-assigned ID of the parent Project for the App.
  core.String projectId;

  IosApp();

  IosApp.fromJson(core.Map _json) {
    if (_json.containsKey("appId")) {
      appId = _json["appId"];
    }
    if (_json.containsKey("appStoreId")) {
      appStoreId = _json["appStoreId"];
    }
    if (_json.containsKey("bundleId")) {
      bundleId = _json["bundleId"];
    }
    if (_json.containsKey("displayName")) {
      displayName = _json["displayName"];
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
    if (_json.containsKey("projectId")) {
      projectId = _json["projectId"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (appId != null) {
      _json["appId"] = appId;
    }
    if (appStoreId != null) {
      _json["appStoreId"] = appStoreId;
    }
    if (bundleId != null) {
      _json["bundleId"] = bundleId;
    }
    if (displayName != null) {
      _json["displayName"] = displayName;
    }
    if (name != null) {
      _json["name"] = name;
    }
    if (projectId != null) {
      _json["projectId"] = projectId;
    }
    return _json;
  }
}

/// Configuration metadata of a single Firebase App for iOS.
class IosAppConfig {
  /// The content of the XML configuration file.
  core.String configFileContents;
  core.List<core.int> get configFileContentsAsBytes {
    return convert.base64.decode(configFileContents);
  }

  set configFileContentsAsBytes(core.List<core.int> _bytes) {
    configFileContents =
        convert.base64.encode(_bytes).replaceAll("/", "_").replaceAll("+", "-");
  }

  /// The filename that the configuration artifact is typically saved as.
  /// <br>For example: `GoogleService-Info.plist`
  core.String configFilename;

  IosAppConfig();

  IosAppConfig.fromJson(core.Map _json) {
    if (_json.containsKey("configFileContents")) {
      configFileContents = _json["configFileContents"];
    }
    if (_json.containsKey("configFilename")) {
      configFilename = _json["configFilename"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (configFileContents != null) {
      _json["configFileContents"] = configFileContents;
    }
    if (configFilename != null) {
      _json["configFilename"] = configFilename;
    }
    return _json;
  }
}

class ListAndroidAppsResponse {
  /// List of each AndroidApp that is in the parent Firebase Project.
  core.List<AndroidApp> apps;

  /// If the result list is too large to fit in a single response, then a token
  /// is returned. If the string is empty, then this response is the last page
  /// of
  /// results.
  /// <br>
  /// <br>This token can be used in a subsequent call to `ListAndroidApps` to
  /// find the next group of Apps.
  /// <br>
  /// <br>Page tokens are short-lived and should not be persisted.
  core.String nextPageToken;

  ListAndroidAppsResponse();

  ListAndroidAppsResponse.fromJson(core.Map _json) {
    if (_json.containsKey("apps")) {
      apps = (_json["apps"] as core.List)
          .map<AndroidApp>((value) => new AndroidApp.fromJson(value))
          .toList();
    }
    if (_json.containsKey("nextPageToken")) {
      nextPageToken = _json["nextPageToken"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (apps != null) {
      _json["apps"] = apps.map((value) => (value).toJson()).toList();
    }
    if (nextPageToken != null) {
      _json["nextPageToken"] = nextPageToken;
    }
    return _json;
  }
}

class ListAvailableLocationsResponse {
  /// One page of results from a call to `ListAvailableLocations`.
  core.List<Location> locations;

  /// If the result list is too large to fit in a single response, then a token
  /// is returned. If the string is empty, then this response is the last page
  /// of
  /// results and all available locations have been listed.
  /// <br>
  /// <br>This token can be used in a subsequent call to
  /// `ListAvailableLocations` to find more locations.
  /// <br>
  /// <br>Page tokens are short-lived and should not be persisted.
  core.String nextPageToken;

  ListAvailableLocationsResponse();

  ListAvailableLocationsResponse.fromJson(core.Map _json) {
    if (_json.containsKey("locations")) {
      locations = (_json["locations"] as core.List)
          .map<Location>((value) => new Location.fromJson(value))
          .toList();
    }
    if (_json.containsKey("nextPageToken")) {
      nextPageToken = _json["nextPageToken"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (locations != null) {
      _json["locations"] = locations.map((value) => (value).toJson()).toList();
    }
    if (nextPageToken != null) {
      _json["nextPageToken"] = nextPageToken;
    }
    return _json;
  }
}

class ListAvailableProjectsResponse {
  /// If the result list is too large to fit in a single response, then a token
  /// is returned. If the string is empty, then this response is the last page
  /// of
  /// results.
  /// <br>
  /// <br>This token can be used in a subsequent calls to
  /// `ListAvailableProjects`
  /// to find the next group of GCP `Projects`.
  /// <br>
  /// <br>Page tokens are short-lived and should not be persisted.
  core.String nextPageToken;

  /// The list of GCP `Projects` which can have Firebase resources added to
  /// them.
  core.List<ProjectInfo> projectInfo;

  ListAvailableProjectsResponse();

  ListAvailableProjectsResponse.fromJson(core.Map _json) {
    if (_json.containsKey("nextPageToken")) {
      nextPageToken = _json["nextPageToken"];
    }
    if (_json.containsKey("projectInfo")) {
      projectInfo = (_json["projectInfo"] as core.List)
          .map<ProjectInfo>((value) => new ProjectInfo.fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (nextPageToken != null) {
      _json["nextPageToken"] = nextPageToken;
    }
    if (projectInfo != null) {
      _json["projectInfo"] =
          projectInfo.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

class ListFirebaseProjectsResponse {
  /// If the result list is too large to fit in a single response, then a token
  /// is returned. If the string is empty, then this response is the last page
  /// of
  /// results.
  /// <br>
  /// <br>This token can be used in a subsequent calls to `ListFirebaseProjects`
  /// to find the next group of Projects.
  /// <br>
  /// <br>Page tokens are short-lived and should not be persisted.
  core.String nextPageToken;

  /// One page of the list of Projects that are accessible to the caller.
  core.List<FirebaseProject> results;

  ListFirebaseProjectsResponse();

  ListFirebaseProjectsResponse.fromJson(core.Map _json) {
    if (_json.containsKey("nextPageToken")) {
      nextPageToken = _json["nextPageToken"];
    }
    if (_json.containsKey("results")) {
      results = (_json["results"] as core.List)
          .map<FirebaseProject>((value) => new FirebaseProject.fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (nextPageToken != null) {
      _json["nextPageToken"] = nextPageToken;
    }
    if (results != null) {
      _json["results"] = results.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

class ListIosAppsResponse {
  /// List of each IosApp that is in the parent Firebase Project.
  core.List<IosApp> apps;

  /// If the result list is too large to fit in a single response, then a token
  /// is returned. If the string is empty, then this response is the last page
  /// of
  /// results.
  /// <br>
  /// <br>This token can be used in a subsequent call to `ListIosApps` to find
  /// the next group of Apps.
  /// <br>
  /// <br>Page tokens are short-lived and should not be persisted.
  core.String nextPageToken;

  ListIosAppsResponse();

  ListIosAppsResponse.fromJson(core.Map _json) {
    if (_json.containsKey("apps")) {
      apps = (_json["apps"] as core.List)
          .map<IosApp>((value) => new IosApp.fromJson(value))
          .toList();
    }
    if (_json.containsKey("nextPageToken")) {
      nextPageToken = _json["nextPageToken"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (apps != null) {
      _json["apps"] = apps.map((value) => (value).toJson()).toList();
    }
    if (nextPageToken != null) {
      _json["nextPageToken"] = nextPageToken;
    }
    return _json;
  }
}

class ListShaCertificatesResponse {
  /// The list of SHA certificates associated with the App.
  core.List<ShaCertificate> certificates;

  ListShaCertificatesResponse();

  ListShaCertificatesResponse.fromJson(core.Map _json) {
    if (_json.containsKey("certificates")) {
      certificates = (_json["certificates"] as core.List)
          .map<ShaCertificate>((value) => new ShaCertificate.fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (certificates != null) {
      _json["certificates"] =
          certificates.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

class ListWebAppsResponse {
  /// List of each WebApp that is in the parent Firebase Project.
  core.List<WebApp> apps;

  /// If the result list is too large to fit in a single response, then a token
  /// is returned. If the string is empty, then this response is the last page
  /// of
  /// results.
  /// <br>
  /// <br>This token can be used in a subsequent call to `ListWebApps` to find
  /// the next group of Apps.
  /// <br>
  /// <br>Page tokens are short-lived and should not be persisted.
  core.String nextPageToken;

  ListWebAppsResponse();

  ListWebAppsResponse.fromJson(core.Map _json) {
    if (_json.containsKey("apps")) {
      apps = (_json["apps"] as core.List)
          .map<WebApp>((value) => new WebApp.fromJson(value))
          .toList();
    }
    if (_json.containsKey("nextPageToken")) {
      nextPageToken = _json["nextPageToken"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (apps != null) {
      _json["apps"] = apps.map((value) => (value).toJson()).toList();
    }
    if (nextPageToken != null) {
      _json["nextPageToken"] = nextPageToken;
    }
    return _json;
  }
}

/// A GCP resource location that can be selected for a Project.
class Location {
  /// The ID of the default GCP resource location. It must be one of the
  /// available
  /// [GCP resource
  /// locations](https://firebase.google.com/docs/projects/locations).
  core.String locationId;

  Location();

  Location.fromJson(core.Map _json) {
    if (_json.containsKey("locationId")) {
      locationId = _json["locationId"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (locationId != null) {
      _json["locationId"] = locationId;
    }
    return _json;
  }
}

/// This is proto2's version of MessageSet.
class MessageSet {
  MessageSet();

  MessageSet.fromJson(core.Map _json) {}

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    return _json;
  }
}

/// This resource represents a long-running operation that is the result of a
/// network API call.
class Operation {
  /// If the value is `false`, it means the operation is still in progress.
  /// If `true`, the operation is completed, and either `error` or `response` is
  /// available.
  core.bool done;

  /// The error result of the operation in case of failure or cancellation.
  Status error;

  /// Service-specific metadata associated with the operation.  It typically
  /// contains progress information and common metadata such as create time.
  /// Some services might not provide such metadata.  Any method that returns a
  /// long-running operation should document the metadata type, if any.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object> metadata;

  /// The server-assigned name, which is only unique within the same service
  /// that
  /// originally returns it. If you use the default HTTP mapping, the
  /// `name` should be a resource name ending with `operations/{unique_id}`.
  core.String name;

  /// The normal response of the operation in case of success.  If the original
  /// method returns no data on success, such as `Delete`, the response is
  /// `google.protobuf.Empty`.  If the original method is standard
  /// `Get`/`Create`/`Update`, the response should be the resource.  For other
  /// methods, the response should have the type `XxxResponse`, where `Xxx`
  /// is the original method name.  For example, if the original method name
  /// is `TakeSnapshot()`, the inferred response type is
  /// `TakeSnapshotResponse`.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object> response;

  Operation();

  Operation.fromJson(core.Map _json) {
    if (_json.containsKey("done")) {
      done = _json["done"];
    }
    if (_json.containsKey("error")) {
      error = new Status.fromJson(_json["error"]);
    }
    if (_json.containsKey("metadata")) {
      metadata =
          (_json["metadata"] as core.Map).cast<core.String, core.Object>();
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
    if (_json.containsKey("response")) {
      response =
          (_json["response"] as core.Map).cast<core.String, core.Object>();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (done != null) {
      _json["done"] = done;
    }
    if (error != null) {
      _json["error"] = (error).toJson();
    }
    if (metadata != null) {
      _json["metadata"] = metadata;
    }
    if (name != null) {
      _json["name"] = name;
    }
    if (response != null) {
      _json["response"] = response;
    }
    return _json;
  }
}

/// A reference to a Google Cloud Platform (GCP) `Project`.
class ProjectInfo {
  /// The user-assigned display name of the GCP `Project`, for example:
  /// <code>My App</code>
  core.String displayName;

  /// The ID of the project's default GCP resource location. The location is one
  /// of the available
  /// [GCP resource
  /// locations](https://firebase.google.com/docs/projects/locations). <br> <br>
  /// Not all projects will have this field populated. If it is not populated,
  /// it
  /// means that the project does not yet have a default GCP resource location.
  /// To set your project's default GCP resource location, call
  /// [`FinalizeDefaultLocation`](../projects.defaultLocation/finalize) after
  /// you
  /// add Firebase services to your project.
  core.String locationId;

  /// The resource name of the GCP `Project` to which Firebase resources can be
  /// added, in the format:
  /// <br><code>projects/<var>projectId</var></code>
  core.String project;

  ProjectInfo();

  ProjectInfo.fromJson(core.Map _json) {
    if (_json.containsKey("displayName")) {
      displayName = _json["displayName"];
    }
    if (_json.containsKey("locationId")) {
      locationId = _json["locationId"];
    }
    if (_json.containsKey("project")) {
      project = _json["project"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (displayName != null) {
      _json["displayName"] = displayName;
    }
    if (locationId != null) {
      _json["locationId"] = locationId;
    }
    if (project != null) {
      _json["project"] = project;
    }
    return _json;
  }
}

class SearchFirebaseAppsResponse {
  /// One page of results from a call to `SearchFirebaseApps`.
  core.List<FirebaseAppInfo> apps;

  /// If the result list is too large to fit in a single response, then a token
  /// is returned.
  /// <br>
  /// <br>This token can be used in a subsequent calls to `SearchFirebaseApps`
  /// to find the next group of Apps.
  /// <br>If the string is empty, then this response is the last page of
  /// results.
  /// <br>Page tokens are short-lived and should not be persisted.
  core.String nextPageToken;

  SearchFirebaseAppsResponse();

  SearchFirebaseAppsResponse.fromJson(core.Map _json) {
    if (_json.containsKey("apps")) {
      apps = (_json["apps"] as core.List)
          .map<FirebaseAppInfo>((value) => new FirebaseAppInfo.fromJson(value))
          .toList();
    }
    if (_json.containsKey("nextPageToken")) {
      nextPageToken = _json["nextPageToken"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (apps != null) {
      _json["apps"] = apps.map((value) => (value).toJson()).toList();
    }
    if (nextPageToken != null) {
      _json["nextPageToken"] = nextPageToken;
    }
    return _json;
  }
}

/// A SHA-1 or SHA-256 certificate associated with the AndroidApp.
class ShaCertificate {
  /// The SHA certificate type.
  /// Possible string values are:
  /// - "SHA_CERTIFICATE_TYPE_UNSPECIFIED" : Unknown state.  This is only used
  /// for distinguishing unset values.
  /// - "SHA_1" : Certificate is a SHA-1 type certificate.
  /// - "SHA_256" : Certificate is a SHA-256 type certificate.
  core.String certType;

  /// The fully qualified resource name of the `sha-key`, in the format:
  /// <br><code>projects/<var>projectId</var>/androidApps/<var>appId</var>/sha/<var>shaHash</var></code>
  core.String name;

  /// The certificate hash for the App.
  core.String shaHash;

  ShaCertificate();

  ShaCertificate.fromJson(core.Map _json) {
    if (_json.containsKey("certType")) {
      certType = _json["certType"];
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
    if (_json.containsKey("shaHash")) {
      shaHash = _json["shaHash"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (certType != null) {
      _json["certType"] = certType;
    }
    if (name != null) {
      _json["name"] = name;
    }
    if (shaHash != null) {
      _json["shaHash"] = shaHash;
    }
    return _json;
  }
}

/// The `Status` type defines a logical error model that is suitable for
/// different programming environments, including REST APIs and RPC APIs. It is
/// used by [gRPC](https://github.com/grpc). Each `Status` message contains
/// three pieces of data: error code, error message, and error details.
///
/// You can find out more about this error model and how to work with it in the
/// [API Design Guide](https://cloud.google.com/apis/design/errors).
class Status {
  /// The status code, which should be an enum value of google.rpc.Code.
  core.int code;

  /// A list of messages that carry the error details.  There is a common set of
  /// message types for APIs to use.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.List<core.Map<core.String, core.Object>> details;

  /// A developer-facing error message, which should be in English. Any
  /// user-facing error message should be localized and sent in the
  /// google.rpc.Status.details field, or localized by the client.
  core.String message;

  Status();

  Status.fromJson(core.Map _json) {
    if (_json.containsKey("code")) {
      code = _json["code"];
    }
    if (_json.containsKey("details")) {
      details = (_json["details"] as core.List)
          .map<core.Map<core.String, core.Object>>(
              (value) => (value as core.Map).cast<core.String, core.Object>())
          .toList();
    }
    if (_json.containsKey("message")) {
      message = _json["message"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (code != null) {
      _json["code"] = code;
    }
    if (details != null) {
      _json["details"] = details;
    }
    if (message != null) {
      _json["message"] = message;
    }
    return _json;
  }
}

/// Wire-format for a Status object
class StatusProto {
  /// The canonical error code (see codes.proto) that most closely
  /// corresponds to this status. May be missing.
  core.int canonicalCode;

  /// Numeric code drawn from the space specified below. Often, this is the
  /// canonical error space, and code is drawn from
  /// google3/util/task/codes.proto
  core.int code;

  /// Detail message
  core.String message;

  /// message_set associates an arbitrary proto message with the status.
  MessageSet messageSet;

  /// DEPRECATED.
  ///
  /// This field was deprecated in 2011 with cl/20297133.  Java support
  /// for the field was moved to a proto1 backward compatibility class
  /// in April 2017 with cl/142615857 and cl/154123203.  There was
  /// never support for this field in Go; if set Go will ignore it.
  /// C++ stopped setting StatusProto::payload in October 2015 with
  /// cl/106347055,
  /// and stopped reading the field in October 2017 with cl/173324114.
  ///
  /// In general, newly written code should use only "message_set". If you need
  /// to maintain backward compatibility with code written before 3/25/2011, do
  /// the following:
  ///
  /// - During the transition period, either (1) set both "payload" and
  ///   "message_set", or (2) write the consumer of StatusProto so that it can
  ///   forge a MessageSet object from "payload" if "message_set" is missing.
  ///   The C++ util::Status implementation does (2).
  ///
  /// - Once all the consumers are converted to accept "message_set", then
  ///   remove the use of "payload" on the producer side.
  TypedMessage payload;

  /// The following are usually only present when code != 0
  /// Space to which this status belongs
  core.String space;

  StatusProto();

  StatusProto.fromJson(core.Map _json) {
    if (_json.containsKey("canonicalCode")) {
      canonicalCode = _json["canonicalCode"];
    }
    if (_json.containsKey("code")) {
      code = _json["code"];
    }
    if (_json.containsKey("message")) {
      message = _json["message"];
    }
    if (_json.containsKey("messageSet")) {
      messageSet = new MessageSet.fromJson(_json["messageSet"]);
    }
    if (_json.containsKey("payload")) {
      payload = new TypedMessage.fromJson(_json["payload"]);
    }
    if (_json.containsKey("space")) {
      space = _json["space"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (canonicalCode != null) {
      _json["canonicalCode"] = canonicalCode;
    }
    if (code != null) {
      _json["code"] = code;
    }
    if (message != null) {
      _json["message"] = message;
    }
    if (messageSet != null) {
      _json["messageSet"] = (messageSet).toJson();
    }
    if (payload != null) {
      _json["payload"] = (payload).toJson();
    }
    if (space != null) {
      _json["space"] = space;
    }
    return _json;
  }
}

/// Message that groups a protocol type_id (as defined by MessageSet),
/// with an encoded message of that type.  Its use is similar to
/// MessageSet, except it represents a single (type, encoded message)
/// instead of a set.
///
/// To fill for known protocol type:
///   MyProtocolMsg proto;
///   TypedMessage typed_msg;
///   typed_msg.set_type_id(MyProtocolMsg::MESSAGE_TYPE_ID);
///   proto.AppendToCord(typed_msg.mutable_message());
///
/// To fill for unknown protocol type:
///   ProtocolMessage proto;
///   TypedMessage typed_msg;
///   typed_msg.set_type_id(proto.GetMapper()->type_id());
///   proto.AppendToCord(typed_msg.mutable_message());
class TypedMessage {
  /// Message bytes.
  core.String message;
  core.List<core.int> get messageAsBytes {
    return convert.base64.decode(message);
  }

  set messageAsBytes(core.List<core.int> _bytes) {
    message =
        convert.base64.encode(_bytes).replaceAll("/", "_").replaceAll("+", "-");
  }

  /// Identifier for the type.
  core.int typeId;

  TypedMessage();

  TypedMessage.fromJson(core.Map _json) {
    if (_json.containsKey("message")) {
      message = _json["message"];
    }
    if (_json.containsKey("typeId")) {
      typeId = _json["typeId"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (message != null) {
      _json["message"] = message;
    }
    if (typeId != null) {
      _json["typeId"] = typeId;
    }
    return _json;
  }
}

/// Details of a Firebase App for the web.
class WebApp {
  /// Immutable. The globally unique, Firebase-assigned identifier of the App.
  /// <br>
  /// <br>This identifier should be treated as an opaque token, as the data
  /// format is not specified.
  core.String appId;

  /// The fully qualified URLs where the App is hosted.
  core.List<core.String> appUrls;

  /// The user-assigned display name of the App.
  core.String displayName;

  /// The fully qualified resource name of the App, for example:
  /// <br><code>projects/<var>projectId</var>/webApps/<var>appId</var></code>
  core.String name;

  /// The globally unique, user-assigned ID of the parent Project for the App.
  core.String projectId;

  WebApp();

  WebApp.fromJson(core.Map _json) {
    if (_json.containsKey("appId")) {
      appId = _json["appId"];
    }
    if (_json.containsKey("appUrls")) {
      appUrls = (_json["appUrls"] as core.List).cast<core.String>();
    }
    if (_json.containsKey("displayName")) {
      displayName = _json["displayName"];
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
    if (_json.containsKey("projectId")) {
      projectId = _json["projectId"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (appId != null) {
      _json["appId"] = appId;
    }
    if (appUrls != null) {
      _json["appUrls"] = appUrls;
    }
    if (displayName != null) {
      _json["displayName"] = displayName;
    }
    if (name != null) {
      _json["name"] = name;
    }
    if (projectId != null) {
      _json["projectId"] = projectId;
    }
    return _json;
  }
}

/// Configuration metadata of a single Firebase App for the web.
class WebAppConfig {
  /// The API key associated with the web App.
  core.String apiKey;

  /// Immutable. The globally unique, Firebase-assigned identifier of the App.
  core.String appId;

  /// The domain Firebase Auth configures for OAuth redirects, in the format:
  /// <br><code><var>projectId</var>.firebaseapp.com</code>
  core.String authDomain;

  /// The default Firebase Realtime Database URL.
  core.String databaseURL;

  /// The ID of the project's default GCP resource location. The location is one
  /// of the available
  /// [GCP resource
  /// locations](https://firebase.google.com/docs/projects/locations). <br>
  /// <br>This field is omitted if the default GCP resource location has not
  /// been
  /// finalized yet. To set your project's default GCP resource location,
  /// call [`FinalizeDefaultLocation`](../projects.defaultLocation/finalize)
  /// after you add Firebase services to your project.
  core.String locationId;

  /// The sender ID for use with Firebase Cloud Messaging.
  core.String messagingSenderId;

  /// Immutable. The globally unique, user-assigned project ID of the parent
  /// Project for the App.
  core.String projectId;

  /// The default Cloud Storage for Firebase storage bucket name.
  core.String storageBucket;

  WebAppConfig();

  WebAppConfig.fromJson(core.Map _json) {
    if (_json.containsKey("apiKey")) {
      apiKey = _json["apiKey"];
    }
    if (_json.containsKey("appId")) {
      appId = _json["appId"];
    }
    if (_json.containsKey("authDomain")) {
      authDomain = _json["authDomain"];
    }
    if (_json.containsKey("databaseURL")) {
      databaseURL = _json["databaseURL"];
    }
    if (_json.containsKey("locationId")) {
      locationId = _json["locationId"];
    }
    if (_json.containsKey("messagingSenderId")) {
      messagingSenderId = _json["messagingSenderId"];
    }
    if (_json.containsKey("projectId")) {
      projectId = _json["projectId"];
    }
    if (_json.containsKey("storageBucket")) {
      storageBucket = _json["storageBucket"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (apiKey != null) {
      _json["apiKey"] = apiKey;
    }
    if (appId != null) {
      _json["appId"] = appId;
    }
    if (authDomain != null) {
      _json["authDomain"] = authDomain;
    }
    if (databaseURL != null) {
      _json["databaseURL"] = databaseURL;
    }
    if (locationId != null) {
      _json["locationId"] = locationId;
    }
    if (messagingSenderId != null) {
      _json["messagingSenderId"] = messagingSenderId;
    }
    if (projectId != null) {
      _json["projectId"] = projectId;
    }
    if (storageBucket != null) {
      _json["storageBucket"] = storageBucket;
    }
    return _json;
  }
}
