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

/// Firebase App Distribution API - v1
///
/// For more information, see
/// <https://firebase.google.com/products/app-distribution>
///
/// Create an instance of [FirebaseAppDistributionApi] to access these
/// resources:
///
/// - [MediaResource]
/// - [ProjectsResource]
///   - [ProjectsAppsResource]
///     - [ProjectsAppsReleasesResource]
///       - [ProjectsAppsReleasesFeedbackReportsResource]
///       - [ProjectsAppsReleasesOperationsResource]
///   - [ProjectsGroupsResource]
///   - [ProjectsTestersResource]
library;

import 'dart:async' as async;
import 'dart:convert' as convert;
import 'dart:core' as core;

import 'package:_discoveryapis_commons/_discoveryapis_commons.dart' as commons;
import 'package:http/http.dart' as http;

import '../shared.dart';
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

class FirebaseAppDistributionApi {
  /// See, edit, configure, and delete your Google Cloud data and see the email
  /// address for your Google Account.
  static const cloudPlatformScope =
      'https://www.googleapis.com/auth/cloud-platform';

  final commons.ApiRequester _requester;

  MediaResource get media => MediaResource(_requester);
  ProjectsResource get projects => ProjectsResource(_requester);

  FirebaseAppDistributionApi(
    http.Client client, {
    core.String rootUrl = 'https://firebaseappdistribution.googleapis.com/',
    core.String servicePath = '',
  }) : _requester = commons.ApiRequester(
          client,
          rootUrl,
          servicePath,
          requestHeaders,
        );
}

class MediaResource {
  final commons.ApiRequester _requester;

  MediaResource(commons.ApiRequester client) : _requester = client;

  /// Uploads a binary.
  ///
  /// Uploading a binary can result in a new release being created, an update to
  /// an existing release, or a no-op if a release with the same binary already
  /// exists.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [app] - The name of the app resource. Format:
  /// `projects/{project_number}/apps/{app_id}`
  /// Value must have pattern `^projects/\[^/\]+/apps/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// [uploadMedia] - The media to upload.
  ///
  /// Completes with a [GoogleLongrunningOperation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleLongrunningOperation> upload(
    GoogleFirebaseAppdistroV1UploadReleaseRequest request,
    core.String app, {
    core.String? $fields,
    commons.Media? uploadMedia,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    core.String url_;
    if (uploadMedia == null) {
      url_ = 'v1/' + core.Uri.encodeFull('$app') + '/releases:upload';
    } else {
      url_ = '/upload/v1/' + core.Uri.encodeFull('$app') + '/releases:upload';
    }

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
      uploadMedia: uploadMedia,
      uploadOptions: commons.UploadOptions.defaultOptions,
    );
    return GoogleLongrunningOperation.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class ProjectsResource {
  final commons.ApiRequester _requester;

  ProjectsAppsResource get apps => ProjectsAppsResource(_requester);
  ProjectsGroupsResource get groups => ProjectsGroupsResource(_requester);
  ProjectsTestersResource get testers => ProjectsTestersResource(_requester);

  ProjectsResource(commons.ApiRequester client) : _requester = client;
}

class ProjectsAppsResource {
  final commons.ApiRequester _requester;

  ProjectsAppsReleasesResource get releases =>
      ProjectsAppsReleasesResource(_requester);

  ProjectsAppsResource(commons.ApiRequester client) : _requester = client;

  /// Gets Android App Bundle (AAB) information for a Firebase app.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the `AabInfo` resource to retrieve. Format:
  /// `projects/{project_number}/apps/{app_id}/aabInfo`
  /// Value must have pattern `^projects/\[^/\]+/apps/\[^/\]+/aabInfo$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleFirebaseAppdistroV1AabInfo].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleFirebaseAppdistroV1AabInfo> getAabInfo(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleFirebaseAppdistroV1AabInfo.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class ProjectsAppsReleasesResource {
  final commons.ApiRequester _requester;

  ProjectsAppsReleasesFeedbackReportsResource get feedbackReports =>
      ProjectsAppsReleasesFeedbackReportsResource(_requester);
  ProjectsAppsReleasesOperationsResource get operations =>
      ProjectsAppsReleasesOperationsResource(_requester);

  ProjectsAppsReleasesResource(commons.ApiRequester client)
      : _requester = client;

  /// Deletes releases.
  ///
  /// A maximum of 100 releases can be deleted per request.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The name of the app resource, which is the parent of
  /// the release resources. Format: `projects/{project_number}/apps/{app_id}`
  /// Value must have pattern `^projects/\[^/\]+/apps/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleProtobufEmpty].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleProtobufEmpty> batchDelete(
    GoogleFirebaseAppdistroV1BatchDeleteReleasesRequest request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1/' + core.Uri.encodeFull('$parent') + '/releases:batchDelete';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleProtobufEmpty.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Distributes a release to testers.
  ///
  /// This call does the following: 1. Creates testers for the specified emails,
  /// if none exist. 2. Adds the testers and groups to the release. 3. Sends new
  /// testers an invitation email. 4. Sends existing testers a new release
  /// email. The request will fail with a `INVALID_ARGUMENT` if it contains a
  /// group that doesn't exist.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the release resource to distribute. Format:
  /// `projects/{project_number}/apps/{app_id}/releases/{release_id}`
  /// Value must have pattern
  /// `^projects/\[^/\]+/apps/\[^/\]+/releases/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleFirebaseAppdistroV1DistributeReleaseResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleFirebaseAppdistroV1DistributeReleaseResponse> distribute(
    GoogleFirebaseAppdistroV1DistributeReleaseRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':distribute';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleFirebaseAppdistroV1DistributeReleaseResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Gets a release.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the release resource to retrieve. Format:
  /// projects/{project_number}/apps/{app_id}/releases/{release_id}
  /// Value must have pattern
  /// `^projects/\[^/\]+/apps/\[^/\]+/releases/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleFirebaseAppdistroV1Release].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleFirebaseAppdistroV1Release> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleFirebaseAppdistroV1Release.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Lists releases.
  ///
  /// By default, sorts by `createTime` in descending order.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The name of the app resource, which is the parent of
  /// the release resources. Format: `projects/{project_number}/apps/{app_id}`
  /// Value must have pattern `^projects/\[^/\]+/apps/\[^/\]+$`.
  ///
  /// [filter] - The expression to filter releases listed in the response. To
  /// learn more about filtering, refer to \[Google's AIP-160
  /// standard\](http://aip.dev/160). Supported fields: - `releaseNotes.text`
  /// supports `=` (can contain a wildcard character (`*`) at the beginning or
  /// end of the string) - `createTime` supports `<`, `<=`, `>` and `>=`, and
  /// expects an RFC-3339 formatted string Examples: - `createTime <=
  /// "2021-09-08T00:00:00+04:00"` - `releaseNotes.text="fixes" AND createTime
  /// >= "2021-09-08T00:00:00.0Z"` - `releaseNotes.text="*v1.0.0-rc*"`
  ///
  /// [orderBy] - The fields used to order releases. Supported fields: -
  /// `createTime` To specify descending order for a field, append a "desc"
  /// suffix, for example, `createTime desc`. If this parameter is not set,
  /// releases are ordered by `createTime` in descending order.
  ///
  /// [pageSize] - The maximum number of releases to return. The service may
  /// return fewer than this value. The valid range is \[1-100\]; If unspecified
  /// (0), at most 25 releases are returned. Values above 100 are coerced to
  /// 100.
  ///
  /// [pageToken] - A page token, received from a previous `ListReleases` call.
  /// Provide this to retrieve the subsequent page. When paginating, all other
  /// parameters provided to `ListReleases` must match the call that provided
  /// the page token.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleFirebaseAppdistroV1ListReleasesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleFirebaseAppdistroV1ListReleasesResponse> list(
    core.String parent, {
    core.String? filter,
    core.String? orderBy,
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (filter != null) 'filter': [filter],
      if (orderBy != null) 'orderBy': [orderBy],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/releases';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleFirebaseAppdistroV1ListReleasesResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Updates a release.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - The name of the release resource. Format:
  /// `projects/{project_number}/apps/{app_id}/releases/{release_id}`
  /// Value must have pattern
  /// `^projects/\[^/\]+/apps/\[^/\]+/releases/\[^/\]+$`.
  ///
  /// [updateMask] - The list of fields to update.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleFirebaseAppdistroV1Release].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleFirebaseAppdistroV1Release> patch(
    GoogleFirebaseAppdistroV1Release request,
    core.String name, {
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (updateMask != null) 'updateMask': [updateMask],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleFirebaseAppdistroV1Release.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class ProjectsAppsReleasesFeedbackReportsResource {
  final commons.ApiRequester _requester;

  ProjectsAppsReleasesFeedbackReportsResource(commons.ApiRequester client)
      : _requester = client;

  /// Deletes a feedback report.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the feedback report to delete. Format:
  /// projects/{project_number}/apps/{app}/releases/{release}/feedbackReports/{feedback_report}
  /// Value must have pattern
  /// `^projects/\[^/\]+/apps/\[^/\]+/releases/\[^/\]+/feedbackReports/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleProtobufEmpty].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleProtobufEmpty> delete(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return GoogleProtobufEmpty.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Gets a feedback report.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the feedback report to retrieve. Format:
  /// projects/{project_number}/apps/{app}/releases/{release}/feedbackReports/{feedback_report}
  /// Value must have pattern
  /// `^projects/\[^/\]+/apps/\[^/\]+/releases/\[^/\]+/feedbackReports/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleFirebaseAppdistroV1FeedbackReport].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleFirebaseAppdistroV1FeedbackReport> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleFirebaseAppdistroV1FeedbackReport.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Lists feedback reports.
  ///
  /// By default, sorts by `createTime` in descending order.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The name of the release resource, which is the parent
  /// of the feedback report resources. Format:
  /// `projects/{project_number}/apps/{app}/releases/{release}`
  /// Value must have pattern
  /// `^projects/\[^/\]+/apps/\[^/\]+/releases/\[^/\]+$`.
  ///
  /// [pageSize] - The maximum number of feedback reports to return. The service
  /// may return fewer than this value. The valid range is \[1-100\]; If
  /// unspecified (0), at most 25 feedback reports are returned. Values above
  /// 100 are coerced to 100.
  ///
  /// [pageToken] - A page token, received from a previous `ListFeedbackReports`
  /// call. Provide this to retrieve the subsequent page. When paginating, all
  /// other parameters provided to `ListFeedbackReports` must match the call
  /// that provided the page token.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleFirebaseAppdistroV1ListFeedbackReportsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleFirebaseAppdistroV1ListFeedbackReportsResponse> list(
    core.String parent, {
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/feedbackReports';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleFirebaseAppdistroV1ListFeedbackReportsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class ProjectsAppsReleasesOperationsResource {
  final commons.ApiRequester _requester;

  ProjectsAppsReleasesOperationsResource(commons.ApiRequester client)
      : _requester = client;

  /// Starts asynchronous cancellation on a long-running operation.
  ///
  /// The server makes a best effort to cancel the operation, but success is not
  /// guaranteed. If the server doesn't support this method, it returns
  /// `google.rpc.Code.UNIMPLEMENTED`. Clients can use Operations.GetOperation
  /// or other methods to check whether the cancellation succeeded or whether
  /// the operation completed despite cancellation. On successful cancellation,
  /// the operation is not deleted; instead, it becomes an operation with an
  /// Operation.error value with a google.rpc.Status.code of `1`, corresponding
  /// to `Code.CANCELLED`.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - The name of the operation resource to be cancelled.
  /// Value must have pattern
  /// `^projects/\[^/\]+/apps/\[^/\]+/releases/\[^/\]+/operations/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleProtobufEmpty].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleProtobufEmpty> cancel(
    GoogleLongrunningCancelOperationRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':cancel';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleProtobufEmpty.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Deletes a long-running operation.
  ///
  /// This method indicates that the client is no longer interested in the
  /// operation result. It does not cancel the operation. If the server doesn't
  /// support this method, it returns `google.rpc.Code.UNIMPLEMENTED`.
  ///
  /// Request parameters:
  ///
  /// [name] - The name of the operation resource to be deleted.
  /// Value must have pattern
  /// `^projects/\[^/\]+/apps/\[^/\]+/releases/\[^/\]+/operations/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleProtobufEmpty].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleProtobufEmpty> delete(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return GoogleProtobufEmpty.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Gets the latest state of a long-running operation.
  ///
  /// Clients can use this method to poll the operation result at intervals as
  /// recommended by the API service.
  ///
  /// Request parameters:
  ///
  /// [name] - The name of the operation resource.
  /// Value must have pattern
  /// `^projects/\[^/\]+/apps/\[^/\]+/releases/\[^/\]+/operations/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleLongrunningOperation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleLongrunningOperation> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleLongrunningOperation.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Lists operations that match the specified filter in the request.
  ///
  /// If the server doesn't support this method, it returns `UNIMPLEMENTED`.
  ///
  /// Request parameters:
  ///
  /// [name] - The name of the operation's parent resource.
  /// Value must have pattern
  /// `^projects/\[^/\]+/apps/\[^/\]+/releases/\[^/\]+$`.
  ///
  /// [filter] - The standard list filter.
  ///
  /// [pageSize] - The standard list page size.
  ///
  /// [pageToken] - The standard list page token.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleLongrunningListOperationsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleLongrunningListOperationsResponse> list(
    core.String name, {
    core.String? filter,
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (filter != null) 'filter': [filter],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + '/operations';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleLongrunningListOperationsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Waits until the specified long-running operation is done or reaches at
  /// most a specified timeout, returning the latest state.
  ///
  /// If the operation is already done, the latest state is immediately
  /// returned. If the timeout specified is greater than the default HTTP/RPC
  /// timeout, the HTTP/RPC timeout is used. If the server does not support this
  /// method, it returns `google.rpc.Code.UNIMPLEMENTED`. Note that this method
  /// is on a best-effort basis. It may return the latest state before the
  /// specified timeout (including immediately), meaning even an immediate
  /// response is no guarantee that the operation is done.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - The name of the operation resource to wait on.
  /// Value must have pattern
  /// `^projects/\[^/\]+/apps/\[^/\]+/releases/\[^/\]+/operations/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleLongrunningOperation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleLongrunningOperation> wait(
    GoogleLongrunningWaitOperationRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':wait';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleLongrunningOperation.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class ProjectsGroupsResource {
  final commons.ApiRequester _requester;

  ProjectsGroupsResource(commons.ApiRequester client) : _requester = client;

  /// Batch adds members to a group.
  ///
  /// The testers will gain access to all releases that the groups have access
  /// to.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [group] - Required. The name of the group resource to which testers are
  /// added. Format: `projects/{project_number}/groups/{group_alias}`
  /// Value must have pattern `^projects/\[^/\]+/groups/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleProtobufEmpty].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleProtobufEmpty> batchJoin(
    GoogleFirebaseAppdistroV1BatchJoinGroupRequest request,
    core.String group, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$group') + ':batchJoin';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleProtobufEmpty.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Batch removed members from a group.
  ///
  /// The testers will lose access to all releases that the groups have access
  /// to.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [group] - Required. The name of the group resource from which testers are
  /// removed. Format: `projects/{project_number}/groups/{group_alias}`
  /// Value must have pattern `^projects/\[^/\]+/groups/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleProtobufEmpty].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleProtobufEmpty> batchLeave(
    GoogleFirebaseAppdistroV1BatchLeaveGroupRequest request,
    core.String group, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$group') + ':batchLeave';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleProtobufEmpty.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Create a group.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The name of the project resource, which is the parent
  /// of the group resource. Format: `projects/{project_number}`
  /// Value must have pattern `^projects/\[^/\]+$`.
  ///
  /// [groupId] - Optional. The "alias" to use for the group, which will become
  /// the final component of the group's resource name. This value must be
  /// unique per project. The field is named `groupId` to comply with AIP
  /// guidance for user-specified IDs. This value should be 4-63 characters, and
  /// valid characters are `/a-z-/`. If not set, it will be generated based on
  /// the display name.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleFirebaseAppdistroV1Group].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleFirebaseAppdistroV1Group> create(
    GoogleFirebaseAppdistroV1Group request,
    core.String parent, {
    core.String? groupId,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (groupId != null) 'groupId': [groupId],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/groups';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleFirebaseAppdistroV1Group.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Delete a group.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the group resource. Format:
  /// `projects/{project_number}/groups/{group_alias}`
  /// Value must have pattern `^projects/\[^/\]+/groups/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleProtobufEmpty].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleProtobufEmpty> delete(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return GoogleProtobufEmpty.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Get a group.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the group resource to retrieve. Format:
  /// `projects/{project_number}/groups/{group_alias}`
  /// Value must have pattern `^projects/\[^/\]+/groups/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleFirebaseAppdistroV1Group].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleFirebaseAppdistroV1Group> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleFirebaseAppdistroV1Group.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// List groups.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The name of the project resource, which is the parent
  /// of the group resources. Format: `projects/{project_number}`
  /// Value must have pattern `^projects/\[^/\]+$`.
  ///
  /// [pageSize] - Optional. The maximum number of groups to return. The service
  /// may return fewer than this value. The valid range is \[1-1000\]; If
  /// unspecified (0), at most 25 groups are returned. Values above 1000 are
  /// coerced to 1000.
  ///
  /// [pageToken] - Optional. A page token, received from a previous
  /// `ListGroups` call. Provide this to retrieve the subsequent page. When
  /// paginating, all other parameters provided to `ListGroups` must match the
  /// call that provided the page token.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleFirebaseAppdistroV1ListGroupsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleFirebaseAppdistroV1ListGroupsResponse> list(
    core.String parent, {
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/groups';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleFirebaseAppdistroV1ListGroupsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Update a group.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - The name of the group resource. Format:
  /// `projects/{project_number}/groups/{group_alias}`
  /// Value must have pattern `^projects/\[^/\]+/groups/\[^/\]+$`.
  ///
  /// [updateMask] - The list of fields to update.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleFirebaseAppdistroV1Group].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleFirebaseAppdistroV1Group> patch(
    GoogleFirebaseAppdistroV1Group request,
    core.String name, {
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (updateMask != null) 'updateMask': [updateMask],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleFirebaseAppdistroV1Group.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class ProjectsTestersResource {
  final commons.ApiRequester _requester;

  ProjectsTestersResource(commons.ApiRequester client) : _requester = client;

  /// Batch adds testers.
  ///
  /// This call adds testers for the specified emails if they don't already
  /// exist. Returns all testers specified in the request, including newly
  /// created and previously existing testers. This action is idempotent.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [project] - Required. The name of the project resource. Format:
  /// `projects/{project_number}`
  /// Value must have pattern `^projects/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleFirebaseAppdistroV1BatchAddTestersResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleFirebaseAppdistroV1BatchAddTestersResponse> batchAdd(
    GoogleFirebaseAppdistroV1BatchAddTestersRequest request,
    core.String project, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$project') + '/testers:batchAdd';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleFirebaseAppdistroV1BatchAddTestersResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Batch removes testers.
  ///
  /// If found, this call deletes testers for the specified emails. Returns all
  /// deleted testers.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [project] - Required. The name of the project resource. Format:
  /// `projects/{project_number}`
  /// Value must have pattern `^projects/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleFirebaseAppdistroV1BatchRemoveTestersResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleFirebaseAppdistroV1BatchRemoveTestersResponse> batchRemove(
    GoogleFirebaseAppdistroV1BatchRemoveTestersRequest request,
    core.String project, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1/' + core.Uri.encodeFull('$project') + '/testers:batchRemove';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleFirebaseAppdistroV1BatchRemoveTestersResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Lists testers and their resource ids.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The name of the project resource, which is the parent
  /// of the tester resources. Format: `projects/{project_number}`
  /// Value must have pattern `^projects/\[^/\]+$`.
  ///
  /// [filter] - Optional. The expression to filter testers listed in the
  /// response. To learn more about filtering, refer to \[Google's AIP-160
  /// standard\](http://aip.dev/160). Supported fields: - `name` - `displayName`
  /// - `groups` Example: - `name = "projects/-/testers / * @example.com"` -
  /// `displayName = "Joe Sixpack"` - `groups = "projects / * /groups/qa-team"`
  ///
  /// [pageSize] - Optional. The maximum number of testers to return. The
  /// service may return fewer than this value. The valid range is \[1-1000\];
  /// If unspecified (0), at most 10 testers are returned. Values above 1000 are
  /// coerced to 1000.
  ///
  /// [pageToken] - Optional. A page token, received from a previous
  /// `ListTesters` call. Provide this to retrieve the subsequent page. When
  /// paginating, all other parameters provided to `ListTesters` must match the
  /// call that provided the page token.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleFirebaseAppdistroV1ListTestersResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleFirebaseAppdistroV1ListTestersResponse> list(
    core.String parent, {
    core.String? filter,
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (filter != null) 'filter': [filter],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/testers';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleFirebaseAppdistroV1ListTestersResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Update a tester.
  ///
  /// If the testers joins a group they gain access to all releases that the
  /// group has access to.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - The name of the tester resource. Format:
  /// `projects/{project_number}/testers/{email_address}`
  /// Value must have pattern `^projects/\[^/\]+/testers/\[^/\]+$`.
  ///
  /// [updateMask] - The list of fields to update.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleFirebaseAppdistroV1Tester].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleFirebaseAppdistroV1Tester> patch(
    GoogleFirebaseAppdistroV1Tester request,
    core.String name, {
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (updateMask != null) 'updateMask': [updateMask],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleFirebaseAppdistroV1Tester.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

/// Information to read/write to blobstore2.
typedef GdataBlobstore2Info = $Blobstore2Info;

/// A sequence of media data references representing composite data.
///
/// Introduced to support Bigstore composite objects. For details, visit
/// http://go/bigstore-composites.
class GdataCompositeMedia {
  /// Blobstore v1 reference, set if reference_type is BLOBSTORE_REF This should
  /// be the byte representation of a blobstore.BlobRef.
  ///
  /// Since Blobstore is deprecating v1, use blobstore2_info instead. For now,
  /// any v2 blob will also be represented in this field as v1 BlobRef.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  core.String? blobRef;
  core.List<core.int> get blobRefAsBytes => convert.base64.decode(blobRef!);

  set blobRefAsBytes(core.List<core.int> bytes_) {
    blobRef =
        convert.base64.encode(bytes_).replaceAll('/', '_').replaceAll('+', '-');
  }

  /// Blobstore v2 info, set if reference_type is BLOBSTORE_REF and it refers to
  /// a v2 blob.
  GdataBlobstore2Info? blobstore2Info;

  /// A binary data reference for a media download.
  ///
  /// Serves as a technology-agnostic binary reference in some Google
  /// infrastructure. This value is a serialized storage_cosmo.BinaryReference
  /// proto. Storing it as bytes is a hack to get around the fact that the cosmo
  /// proto (as well as others it includes) doesn't support JavaScript. This
  /// prevents us from including the actual type of this field.
  core.String? cosmoBinaryReference;
  core.List<core.int> get cosmoBinaryReferenceAsBytes =>
      convert.base64.decode(cosmoBinaryReference!);

  set cosmoBinaryReferenceAsBytes(core.List<core.int> bytes_) {
    cosmoBinaryReference =
        convert.base64.encode(bytes_).replaceAll('/', '_').replaceAll('+', '-');
  }

  /// crc32.c hash for the payload.
  core.int? crc32cHash;

  /// Media data, set if reference_type is INLINE
  core.String? inline;
  core.List<core.int> get inlineAsBytes => convert.base64.decode(inline!);

  set inlineAsBytes(core.List<core.int> bytes_) {
    inline =
        convert.base64.encode(bytes_).replaceAll('/', '_').replaceAll('+', '-');
  }

  /// Size of the data, in bytes
  core.String? length;

  /// MD5 hash for the payload.
  core.String? md5Hash;
  core.List<core.int> get md5HashAsBytes => convert.base64.decode(md5Hash!);

  set md5HashAsBytes(core.List<core.int> bytes_) {
    md5Hash =
        convert.base64.encode(bytes_).replaceAll('/', '_').replaceAll('+', '-');
  }

  /// Reference to a TI Blob, set if reference_type is BIGSTORE_REF.
  GdataObjectId? objectId;

  /// Path to the data, set if reference_type is PATH
  core.String? path;

  /// Describes what the field reference contains.
  /// Possible string values are:
  /// - "PATH" : Reference contains a GFS path or a local path.
  /// - "BLOB_REF" : Reference points to a blobstore object. This could be
  /// either a v1 blob_ref or a v2 blobstore2_info. Clients should check
  /// blobstore2_info first, since v1 is being deprecated.
  /// - "INLINE" : Data is included into this proto buffer
  /// - "BIGSTORE_REF" : Reference points to a bigstore object
  /// - "COSMO_BINARY_REFERENCE" : Indicates the data is stored in
  /// cosmo_binary_reference.
  core.String? referenceType;

  /// SHA-1 hash for the payload.
  core.String? sha1Hash;
  core.List<core.int> get sha1HashAsBytes => convert.base64.decode(sha1Hash!);

  set sha1HashAsBytes(core.List<core.int> bytes_) {
    sha1Hash =
        convert.base64.encode(bytes_).replaceAll('/', '_').replaceAll('+', '-');
  }

  GdataCompositeMedia({
    this.blobRef,
    this.blobstore2Info,
    this.cosmoBinaryReference,
    this.crc32cHash,
    this.inline,
    this.length,
    this.md5Hash,
    this.objectId,
    this.path,
    this.referenceType,
    this.sha1Hash,
  });

  GdataCompositeMedia.fromJson(core.Map json_)
      : this(
          blobRef: json_['blobRef'] as core.String?,
          blobstore2Info: json_.containsKey('blobstore2Info')
              ? GdataBlobstore2Info.fromJson(
                  json_['blobstore2Info']
                      as core.Map<core.String, core.dynamic>,
                )
              : null,
          cosmoBinaryReference: json_['cosmoBinaryReference'] as core.String?,
          crc32cHash: json_['crc32cHash'] as core.int?,
          inline: json_['inline'] as core.String?,
          length: json_['length'] as core.String?,
          md5Hash: json_['md5Hash'] as core.String?,
          objectId: json_.containsKey('objectId')
              ? GdataObjectId.fromJson(
                  json_['objectId'] as core.Map<core.String, core.dynamic>,
                )
              : null,
          path: json_['path'] as core.String?,
          referenceType: json_['referenceType'] as core.String?,
          sha1Hash: json_['sha1Hash'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (blobRef != null) 'blobRef': blobRef!,
        if (blobstore2Info != null) 'blobstore2Info': blobstore2Info!,
        if (cosmoBinaryReference != null)
          'cosmoBinaryReference': cosmoBinaryReference!,
        if (crc32cHash != null) 'crc32cHash': crc32cHash!,
        if (inline != null) 'inline': inline!,
        if (length != null) 'length': length!,
        if (md5Hash != null) 'md5Hash': md5Hash!,
        if (objectId != null) 'objectId': objectId!,
        if (path != null) 'path': path!,
        if (referenceType != null) 'referenceType': referenceType!,
        if (sha1Hash != null) 'sha1Hash': sha1Hash!,
      };
}

/// Detailed Content-Type information from Scotty.
///
/// The Content-Type of the media will typically be filled in by the header or
/// Scotty's best_guess, but this extended information provides the backend with
/// more information so that it can make a better decision if needed. This is
/// only used on media upload requests from Scotty.
typedef GdataContentTypeInfo = $ContentTypeInfo;

/// Backend response for a Diff get checksums response.
///
/// For details on the Scotty Diff protocol, visit
/// http://go/scotty-diff-protocol.
class GdataDiffChecksumsResponse {
  /// Exactly one of these fields must be populated.
  ///
  /// If checksums_location is filled, the server will return the corresponding
  /// contents to the user. If object_location is filled, the server will
  /// calculate the checksums based on the content there and return that to the
  /// user. For details on the format of the checksums, see
  /// http://go/scotty-diff-protocol.
  GdataCompositeMedia? checksumsLocation;

  /// The chunk size of checksums.
  ///
  /// Must be a multiple of 256KB.
  core.String? chunkSizeBytes;

  /// If set, calculate the checksums based on the contents and return them to
  /// the caller.
  GdataCompositeMedia? objectLocation;

  /// The total size of the server object.
  core.String? objectSizeBytes;

  /// The object version of the object the checksums are being returned for.
  core.String? objectVersion;

  GdataDiffChecksumsResponse({
    this.checksumsLocation,
    this.chunkSizeBytes,
    this.objectLocation,
    this.objectSizeBytes,
    this.objectVersion,
  });

  GdataDiffChecksumsResponse.fromJson(core.Map json_)
      : this(
          checksumsLocation: json_.containsKey('checksumsLocation')
              ? GdataCompositeMedia.fromJson(
                  json_['checksumsLocation']
                      as core.Map<core.String, core.dynamic>,
                )
              : null,
          chunkSizeBytes: json_['chunkSizeBytes'] as core.String?,
          objectLocation: json_.containsKey('objectLocation')
              ? GdataCompositeMedia.fromJson(
                  json_['objectLocation']
                      as core.Map<core.String, core.dynamic>,
                )
              : null,
          objectSizeBytes: json_['objectSizeBytes'] as core.String?,
          objectVersion: json_['objectVersion'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (checksumsLocation != null) 'checksumsLocation': checksumsLocation!,
        if (chunkSizeBytes != null) 'chunkSizeBytes': chunkSizeBytes!,
        if (objectLocation != null) 'objectLocation': objectLocation!,
        if (objectSizeBytes != null) 'objectSizeBytes': objectSizeBytes!,
        if (objectVersion != null) 'objectVersion': objectVersion!,
      };
}

/// Backend response for a Diff download response.
///
/// For details on the Scotty Diff protocol, visit
/// http://go/scotty-diff-protocol.
class GdataDiffDownloadResponse {
  /// The original object location.
  GdataCompositeMedia? objectLocation;

  GdataDiffDownloadResponse({this.objectLocation});

  GdataDiffDownloadResponse.fromJson(core.Map json_)
      : this(
          objectLocation: json_.containsKey('objectLocation')
              ? GdataCompositeMedia.fromJson(
                  json_['objectLocation']
                      as core.Map<core.String, core.dynamic>,
                )
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (objectLocation != null) 'objectLocation': objectLocation!,
      };
}

/// A Diff upload request.
///
/// For details on the Scotty Diff protocol, visit
/// http://go/scotty-diff-protocol.
class GdataDiffUploadRequest {
  /// The location of the checksums for the new object.
  ///
  /// Agents must clone the object located here, as the upload server will
  /// delete the contents once a response is received. For details on the format
  /// of the checksums, see http://go/scotty-diff-protocol.
  GdataCompositeMedia? checksumsInfo;

  /// The location of the new object.
  ///
  /// Agents must clone the object located here, as the upload server will
  /// delete the contents once a response is received.
  GdataCompositeMedia? objectInfo;

  /// The object version of the object that is the base version the incoming
  /// diff script will be applied to.
  ///
  /// This field will always be filled in.
  core.String? objectVersion;

  GdataDiffUploadRequest({
    this.checksumsInfo,
    this.objectInfo,
    this.objectVersion,
  });

  GdataDiffUploadRequest.fromJson(core.Map json_)
      : this(
          checksumsInfo: json_.containsKey('checksumsInfo')
              ? GdataCompositeMedia.fromJson(
                  json_['checksumsInfo'] as core.Map<core.String, core.dynamic>,
                )
              : null,
          objectInfo: json_.containsKey('objectInfo')
              ? GdataCompositeMedia.fromJson(
                  json_['objectInfo'] as core.Map<core.String, core.dynamic>,
                )
              : null,
          objectVersion: json_['objectVersion'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (checksumsInfo != null) 'checksumsInfo': checksumsInfo!,
        if (objectInfo != null) 'objectInfo': objectInfo!,
        if (objectVersion != null) 'objectVersion': objectVersion!,
      };
}

/// Backend response for a Diff upload request.
///
/// For details on the Scotty Diff protocol, visit
/// http://go/scotty-diff-protocol.
class GdataDiffUploadResponse {
  /// The object version of the object at the server.
  ///
  /// Must be included in the end notification response. The version in the end
  /// notification response must correspond to the new version of the object
  /// that is now stored at the server, after the upload.
  core.String? objectVersion;

  /// The location of the original file for a diff upload request.
  ///
  /// Must be filled in if responding to an upload start notification.
  GdataCompositeMedia? originalObject;

  GdataDiffUploadResponse({this.objectVersion, this.originalObject});

  GdataDiffUploadResponse.fromJson(core.Map json_)
      : this(
          objectVersion: json_['objectVersion'] as core.String?,
          originalObject: json_.containsKey('originalObject')
              ? GdataCompositeMedia.fromJson(
                  json_['originalObject']
                      as core.Map<core.String, core.dynamic>,
                )
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (objectVersion != null) 'objectVersion': objectVersion!,
        if (originalObject != null) 'originalObject': originalObject!,
      };
}

/// Backend response for a Diff get version response.
///
/// For details on the Scotty Diff protocol, visit
/// http://go/scotty-diff-protocol.
typedef GdataDiffVersionResponse = $DiffVersionResponse;

/// Parameters specific to media downloads.
typedef GdataDownloadParameters = $DownloadParameters;

/// A reference to data stored on the filesystem, on GFS or in blobstore.
class GdataMedia {
  /// Deprecated, use one of explicit hash type fields instead.
  ///
  /// Algorithm used for calculating the hash. As of 2011/01/21, "MD5" is the
  /// only possible value for this field. New values may be added at any time.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  core.String? algorithm;

  /// Use object_id instead.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  core.String? bigstoreObjectRef;
  core.List<core.int> get bigstoreObjectRefAsBytes =>
      convert.base64.decode(bigstoreObjectRef!);

  set bigstoreObjectRefAsBytes(core.List<core.int> bytes_) {
    bigstoreObjectRef =
        convert.base64.encode(bytes_).replaceAll('/', '_').replaceAll('+', '-');
  }

  /// Blobstore v1 reference, set if reference_type is BLOBSTORE_REF This should
  /// be the byte representation of a blobstore.BlobRef.
  ///
  /// Since Blobstore is deprecating v1, use blobstore2_info instead. For now,
  /// any v2 blob will also be represented in this field as v1 BlobRef.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  core.String? blobRef;
  core.List<core.int> get blobRefAsBytes => convert.base64.decode(blobRef!);

  set blobRefAsBytes(core.List<core.int> bytes_) {
    blobRef =
        convert.base64.encode(bytes_).replaceAll('/', '_').replaceAll('+', '-');
  }

  /// Blobstore v2 info, set if reference_type is BLOBSTORE_REF and it refers to
  /// a v2 blob.
  GdataBlobstore2Info? blobstore2Info;

  /// A composite media composed of one or more media objects, set if
  /// reference_type is COMPOSITE_MEDIA.
  ///
  /// The media length field must be set to the sum of the lengths of all
  /// composite media objects. Note: All composite media must have length
  /// specified.
  core.List<GdataCompositeMedia>? compositeMedia;

  /// MIME type of the data
  core.String? contentType;

  /// Extended content type information provided for Scotty uploads.
  GdataContentTypeInfo? contentTypeInfo;

  /// A binary data reference for a media download.
  ///
  /// Serves as a technology-agnostic binary reference in some Google
  /// infrastructure. This value is a serialized storage_cosmo.BinaryReference
  /// proto. Storing it as bytes is a hack to get around the fact that the cosmo
  /// proto (as well as others it includes) doesn't support JavaScript. This
  /// prevents us from including the actual type of this field.
  core.String? cosmoBinaryReference;
  core.List<core.int> get cosmoBinaryReferenceAsBytes =>
      convert.base64.decode(cosmoBinaryReference!);

  set cosmoBinaryReferenceAsBytes(core.List<core.int> bytes_) {
    cosmoBinaryReference =
        convert.base64.encode(bytes_).replaceAll('/', '_').replaceAll('+', '-');
  }

  /// For Scotty Uploads: Scotty-provided hashes for uploads For Scotty
  /// Downloads: (WARNING: DO NOT USE WITHOUT PERMISSION FROM THE SCOTTY TEAM.)
  /// A Hash provided by the agent to be used to verify the data being
  /// downloaded.
  ///
  /// Currently only supported for inline payloads. Further, only crc32c_hash is
  /// currently supported.
  core.int? crc32cHash;

  /// Set if reference_type is DIFF_CHECKSUMS_RESPONSE.
  GdataDiffChecksumsResponse? diffChecksumsResponse;

  /// Set if reference_type is DIFF_DOWNLOAD_RESPONSE.
  GdataDiffDownloadResponse? diffDownloadResponse;

  /// Set if reference_type is DIFF_UPLOAD_REQUEST.
  GdataDiffUploadRequest? diffUploadRequest;

  /// Set if reference_type is DIFF_UPLOAD_RESPONSE.
  GdataDiffUploadResponse? diffUploadResponse;

  /// Set if reference_type is DIFF_VERSION_RESPONSE.
  GdataDiffVersionResponse? diffVersionResponse;

  /// Parameters for a media download.
  GdataDownloadParameters? downloadParameters;

  /// Original file name
  core.String? filename;

  /// Deprecated, use one of explicit hash type fields instead.
  ///
  /// These two hash related fields will only be populated on Scotty based media
  /// uploads and will contain the content of the hash group in the
  /// NotificationRequest:
  /// http://cs/#google3/blobstore2/api/scotty/service/proto/upload_listener.proto&q=class:Hash
  /// Hex encoded hash value of the uploaded media.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  core.String? hash;

  /// For Scotty uploads only.
  ///
  /// If a user sends a hash code and the backend has requested that Scotty
  /// verify the upload against the client hash, Scotty will perform the check
  /// on behalf of the backend and will reject it if the hashes don't match.
  /// This is set to true if Scotty performed this verification.
  core.bool? hashVerified;

  /// Media data, set if reference_type is INLINE
  core.String? inline;
  core.List<core.int> get inlineAsBytes => convert.base64.decode(inline!);

  set inlineAsBytes(core.List<core.int> bytes_) {
    inline =
        convert.base64.encode(bytes_).replaceAll('/', '_').replaceAll('+', '-');
  }

  /// |is_potential_retry| is set false only when Scotty is certain that it has
  /// not sent the request before.
  ///
  /// When a client resumes an upload, this field must be set true in agent
  /// calls, because Scotty cannot be certain that it has never sent the request
  /// before due to potential failure in the session state persistence.
  core.bool? isPotentialRetry;

  /// Size of the data, in bytes
  core.String? length;

  /// Scotty-provided MD5 hash for an upload.
  core.String? md5Hash;
  core.List<core.int> get md5HashAsBytes => convert.base64.decode(md5Hash!);

  set md5HashAsBytes(core.List<core.int> bytes_) {
    md5Hash =
        convert.base64.encode(bytes_).replaceAll('/', '_').replaceAll('+', '-');
  }

  /// Media id to forward to the operation GetMedia.
  ///
  /// Can be set if reference_type is GET_MEDIA.
  core.String? mediaId;
  core.List<core.int> get mediaIdAsBytes => convert.base64.decode(mediaId!);

  set mediaIdAsBytes(core.List<core.int> bytes_) {
    mediaId =
        convert.base64.encode(bytes_).replaceAll('/', '_').replaceAll('+', '-');
  }

  /// Reference to a TI Blob, set if reference_type is BIGSTORE_REF.
  GdataObjectId? objectId;

  /// Path to the data, set if reference_type is PATH
  core.String? path;

  /// Describes what the field reference contains.
  /// Possible string values are:
  /// - "PATH" : Reference contains a GFS path or a local path.
  /// - "BLOB_REF" : Reference points to a blobstore object. This could be
  /// either a v1 blob_ref or a v2 blobstore2_info. Clients should check
  /// blobstore2_info first, since v1 is being deprecated.
  /// - "INLINE" : Data is included into this proto buffer
  /// - "GET_MEDIA" : Data should be accessed from the current service using the
  /// operation GetMedia.
  /// - "COMPOSITE_MEDIA" : The content for this media object is stored across
  /// multiple partial media objects under the composite_media field.
  /// - "BIGSTORE_REF" : Reference points to a bigstore object
  /// - "DIFF_VERSION_RESPONSE" : Indicates the data is stored in
  /// diff_version_response.
  /// - "DIFF_CHECKSUMS_RESPONSE" : Indicates the data is stored in
  /// diff_checksums_response.
  /// - "DIFF_DOWNLOAD_RESPONSE" : Indicates the data is stored in
  /// diff_download_response.
  /// - "DIFF_UPLOAD_REQUEST" : Indicates the data is stored in
  /// diff_upload_request.
  /// - "DIFF_UPLOAD_RESPONSE" : Indicates the data is stored in
  /// diff_upload_response.
  /// - "COSMO_BINARY_REFERENCE" : Indicates the data is stored in
  /// cosmo_binary_reference.
  /// - "ARBITRARY_BYTES" : Informs Scotty to generate a response payload with
  /// the size specified in the length field. The contents of the payload are
  /// generated by Scotty and are undefined. This is useful for testing download
  /// speeds between the user and Scotty without involving a real payload
  /// source. Note: range is not supported when using arbitrary_bytes.
  core.String? referenceType;

  /// Scotty-provided SHA1 hash for an upload.
  core.String? sha1Hash;
  core.List<core.int> get sha1HashAsBytes => convert.base64.decode(sha1Hash!);

  set sha1HashAsBytes(core.List<core.int> bytes_) {
    sha1Hash =
        convert.base64.encode(bytes_).replaceAll('/', '_').replaceAll('+', '-');
  }

  /// Scotty-provided SHA256 hash for an upload.
  core.String? sha256Hash;
  core.List<core.int> get sha256HashAsBytes =>
      convert.base64.decode(sha256Hash!);

  set sha256HashAsBytes(core.List<core.int> bytes_) {
    sha256Hash =
        convert.base64.encode(bytes_).replaceAll('/', '_').replaceAll('+', '-');
  }

  /// Time at which the media data was last updated, in milliseconds since UNIX
  /// epoch
  core.String? timestamp;

  /// A unique fingerprint/version id for the media data
  core.String? token;

  GdataMedia({
    this.algorithm,
    this.bigstoreObjectRef,
    this.blobRef,
    this.blobstore2Info,
    this.compositeMedia,
    this.contentType,
    this.contentTypeInfo,
    this.cosmoBinaryReference,
    this.crc32cHash,
    this.diffChecksumsResponse,
    this.diffDownloadResponse,
    this.diffUploadRequest,
    this.diffUploadResponse,
    this.diffVersionResponse,
    this.downloadParameters,
    this.filename,
    this.hash,
    this.hashVerified,
    this.inline,
    this.isPotentialRetry,
    this.length,
    this.md5Hash,
    this.mediaId,
    this.objectId,
    this.path,
    this.referenceType,
    this.sha1Hash,
    this.sha256Hash,
    this.timestamp,
    this.token,
  });

  GdataMedia.fromJson(core.Map json_)
      : this(
          algorithm: json_['algorithm'] as core.String?,
          bigstoreObjectRef: json_['bigstoreObjectRef'] as core.String?,
          blobRef: json_['blobRef'] as core.String?,
          blobstore2Info: json_.containsKey('blobstore2Info')
              ? GdataBlobstore2Info.fromJson(
                  json_['blobstore2Info']
                      as core.Map<core.String, core.dynamic>,
                )
              : null,
          compositeMedia: (json_['compositeMedia'] as core.List?)
              ?.map(
                (value) => GdataCompositeMedia.fromJson(
                  value as core.Map<core.String, core.dynamic>,
                ),
              )
              .toList(),
          contentType: json_['contentType'] as core.String?,
          contentTypeInfo: json_.containsKey('contentTypeInfo')
              ? GdataContentTypeInfo.fromJson(
                  json_['contentTypeInfo']
                      as core.Map<core.String, core.dynamic>,
                )
              : null,
          cosmoBinaryReference: json_['cosmoBinaryReference'] as core.String?,
          crc32cHash: json_['crc32cHash'] as core.int?,
          diffChecksumsResponse: json_.containsKey('diffChecksumsResponse')
              ? GdataDiffChecksumsResponse.fromJson(
                  json_['diffChecksumsResponse']
                      as core.Map<core.String, core.dynamic>,
                )
              : null,
          diffDownloadResponse: json_.containsKey('diffDownloadResponse')
              ? GdataDiffDownloadResponse.fromJson(
                  json_['diffDownloadResponse']
                      as core.Map<core.String, core.dynamic>,
                )
              : null,
          diffUploadRequest: json_.containsKey('diffUploadRequest')
              ? GdataDiffUploadRequest.fromJson(
                  json_['diffUploadRequest']
                      as core.Map<core.String, core.dynamic>,
                )
              : null,
          diffUploadResponse: json_.containsKey('diffUploadResponse')
              ? GdataDiffUploadResponse.fromJson(
                  json_['diffUploadResponse']
                      as core.Map<core.String, core.dynamic>,
                )
              : null,
          diffVersionResponse: json_.containsKey('diffVersionResponse')
              ? GdataDiffVersionResponse.fromJson(
                  json_['diffVersionResponse']
                      as core.Map<core.String, core.dynamic>,
                )
              : null,
          downloadParameters: json_.containsKey('downloadParameters')
              ? GdataDownloadParameters.fromJson(
                  json_['downloadParameters']
                      as core.Map<core.String, core.dynamic>,
                )
              : null,
          filename: json_['filename'] as core.String?,
          hash: json_['hash'] as core.String?,
          hashVerified: json_['hashVerified'] as core.bool?,
          inline: json_['inline'] as core.String?,
          isPotentialRetry: json_['isPotentialRetry'] as core.bool?,
          length: json_['length'] as core.String?,
          md5Hash: json_['md5Hash'] as core.String?,
          mediaId: json_['mediaId'] as core.String?,
          objectId: json_.containsKey('objectId')
              ? GdataObjectId.fromJson(
                  json_['objectId'] as core.Map<core.String, core.dynamic>,
                )
              : null,
          path: json_['path'] as core.String?,
          referenceType: json_['referenceType'] as core.String?,
          sha1Hash: json_['sha1Hash'] as core.String?,
          sha256Hash: json_['sha256Hash'] as core.String?,
          timestamp: json_['timestamp'] as core.String?,
          token: json_['token'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (algorithm != null) 'algorithm': algorithm!,
        if (bigstoreObjectRef != null) 'bigstoreObjectRef': bigstoreObjectRef!,
        if (blobRef != null) 'blobRef': blobRef!,
        if (blobstore2Info != null) 'blobstore2Info': blobstore2Info!,
        if (compositeMedia != null) 'compositeMedia': compositeMedia!,
        if (contentType != null) 'contentType': contentType!,
        if (contentTypeInfo != null) 'contentTypeInfo': contentTypeInfo!,
        if (cosmoBinaryReference != null)
          'cosmoBinaryReference': cosmoBinaryReference!,
        if (crc32cHash != null) 'crc32cHash': crc32cHash!,
        if (diffChecksumsResponse != null)
          'diffChecksumsResponse': diffChecksumsResponse!,
        if (diffDownloadResponse != null)
          'diffDownloadResponse': diffDownloadResponse!,
        if (diffUploadRequest != null) 'diffUploadRequest': diffUploadRequest!,
        if (diffUploadResponse != null)
          'diffUploadResponse': diffUploadResponse!,
        if (diffVersionResponse != null)
          'diffVersionResponse': diffVersionResponse!,
        if (downloadParameters != null)
          'downloadParameters': downloadParameters!,
        if (filename != null) 'filename': filename!,
        if (hash != null) 'hash': hash!,
        if (hashVerified != null) 'hashVerified': hashVerified!,
        if (inline != null) 'inline': inline!,
        if (isPotentialRetry != null) 'isPotentialRetry': isPotentialRetry!,
        if (length != null) 'length': length!,
        if (md5Hash != null) 'md5Hash': md5Hash!,
        if (mediaId != null) 'mediaId': mediaId!,
        if (objectId != null) 'objectId': objectId!,
        if (path != null) 'path': path!,
        if (referenceType != null) 'referenceType': referenceType!,
        if (sha1Hash != null) 'sha1Hash': sha1Hash!,
        if (sha256Hash != null) 'sha256Hash': sha256Hash!,
        if (timestamp != null) 'timestamp': timestamp!,
        if (token != null) 'token': token!,
      };
}

/// This is a copy of the tech.blob.ObjectId proto, which could not be used
/// directly here due to transitive closure issues with JavaScript support; see
/// http://b/8801763.
typedef GdataObjectId = $ObjectId;

/// Android App Bundle (AAB) information for a Firebase app.
class GoogleFirebaseAppdistroV1AabInfo {
  /// App bundle integration state.
  ///
  /// Only valid for android apps.
  /// Possible string values are:
  /// - "AAB_INTEGRATION_STATE_UNSPECIFIED" : Aab integration state unspecified
  /// - "INTEGRATED" : App can receive app bundle uploads
  /// - "PLAY_ACCOUNT_NOT_LINKED" : Firebase project is not linked to a Play
  /// developer account
  /// - "NO_APP_WITH_GIVEN_BUNDLE_ID_IN_PLAY_ACCOUNT" : There is no app in
  /// linked Play developer account with the same bundle id
  /// - "APP_NOT_PUBLISHED" : The app in Play developer account is not in a
  /// published state
  /// - "AAB_STATE_UNAVAILABLE" : Play App status is unavailable
  /// - "PLAY_IAS_TERMS_NOT_ACCEPTED" : Play IAS terms not accepted
  core.String? integrationState;

  /// The name of the `AabInfo` resource.
  ///
  /// Format: `projects/{project_number}/apps/{app}/aabInfo`
  core.String? name;

  /// App bundle test certificate generated for the app.
  ///
  /// Set after the first app bundle is uploaded for this app.
  GoogleFirebaseAppdistroV1TestCertificate? testCertificate;

  GoogleFirebaseAppdistroV1AabInfo({
    this.integrationState,
    this.name,
    this.testCertificate,
  });

  GoogleFirebaseAppdistroV1AabInfo.fromJson(core.Map json_)
      : this(
          integrationState: json_['integrationState'] as core.String?,
          name: json_['name'] as core.String?,
          testCertificate: json_.containsKey('testCertificate')
              ? GoogleFirebaseAppdistroV1TestCertificate.fromJson(
                  json_['testCertificate']
                      as core.Map<core.String, core.dynamic>,
                )
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (integrationState != null) 'integrationState': integrationState!,
        if (name != null) 'name': name!,
        if (testCertificate != null) 'testCertificate': testCertificate!,
      };
}

/// The Request message for batch adding testers
class GoogleFirebaseAppdistroV1BatchAddTestersRequest {
  /// The email addresses of the tester resources to create.
  ///
  /// A maximum of 999 and a minimum of 1 tester can be created in a batch.
  ///
  /// Required.
  core.List<core.String>? emails;

  GoogleFirebaseAppdistroV1BatchAddTestersRequest({this.emails});

  GoogleFirebaseAppdistroV1BatchAddTestersRequest.fromJson(core.Map json_)
      : this(
          emails: (json_['emails'] as core.List?)
              ?.map((value) => value as core.String)
              .toList(),
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (emails != null) 'emails': emails!,
      };
}

/// The Response message for `BatchAddTesters`.
class GoogleFirebaseAppdistroV1BatchAddTestersResponse {
  /// The testers which are created and/or already exist
  core.List<GoogleFirebaseAppdistroV1Tester>? testers;

  GoogleFirebaseAppdistroV1BatchAddTestersResponse({this.testers});

  GoogleFirebaseAppdistroV1BatchAddTestersResponse.fromJson(core.Map json_)
      : this(
          testers: (json_['testers'] as core.List?)
              ?.map(
                (value) => GoogleFirebaseAppdistroV1Tester.fromJson(
                  value as core.Map<core.String, core.dynamic>,
                ),
              )
              .toList(),
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (testers != null) 'testers': testers!,
      };
}

/// The request message for `BatchDeleteReleases`.
class GoogleFirebaseAppdistroV1BatchDeleteReleasesRequest {
  /// The names of the release resources to delete.
  ///
  /// Format: `projects/{project_number}/apps/{app_id}/releases/{release_id}` A
  /// maximum of 100 releases can be deleted per request.
  ///
  /// Required.
  core.List<core.String>? names;

  GoogleFirebaseAppdistroV1BatchDeleteReleasesRequest({this.names});

  GoogleFirebaseAppdistroV1BatchDeleteReleasesRequest.fromJson(core.Map json_)
      : this(
          names: (json_['names'] as core.List?)
              ?.map((value) => value as core.String)
              .toList(),
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (names != null) 'names': names!,
      };
}

/// The request message for `BatchJoinGroup`
class GoogleFirebaseAppdistroV1BatchJoinGroupRequest {
  /// Indicates whether to create tester resources based on `emails` if they
  /// don't exist yet.
  core.bool? createMissingTesters;

  /// The emails of the testers to be added to the group.
  ///
  /// A maximum of 999 and a minimum of 1 tester can be created in a batch.
  ///
  /// Required.
  core.List<core.String>? emails;

  GoogleFirebaseAppdistroV1BatchJoinGroupRequest({
    this.createMissingTesters,
    this.emails,
  });

  GoogleFirebaseAppdistroV1BatchJoinGroupRequest.fromJson(core.Map json_)
      : this(
          createMissingTesters: json_['createMissingTesters'] as core.bool?,
          emails: (json_['emails'] as core.List?)
              ?.map((value) => value as core.String)
              .toList(),
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (createMissingTesters != null)
          'createMissingTesters': createMissingTesters!,
        if (emails != null) 'emails': emails!,
      };
}

/// Request message for `BatchLeaveGroup`
class GoogleFirebaseAppdistroV1BatchLeaveGroupRequest {
  /// The email addresses of the testers to be removed from the group.
  ///
  /// A maximum of 999 and a minimum of 1 testers can be removed in a batch.
  ///
  /// Required.
  core.List<core.String>? emails;

  GoogleFirebaseAppdistroV1BatchLeaveGroupRequest({this.emails});

  GoogleFirebaseAppdistroV1BatchLeaveGroupRequest.fromJson(core.Map json_)
      : this(
          emails: (json_['emails'] as core.List?)
              ?.map((value) => value as core.String)
              .toList(),
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (emails != null) 'emails': emails!,
      };
}

/// The request message for `BatchRemoveTesters`.
class GoogleFirebaseAppdistroV1BatchRemoveTestersRequest {
  /// The email addresses of the tester resources to removed.
  ///
  /// A maximum of 999 and a minimum of 1 testers can be deleted in a batch.
  ///
  /// Required.
  core.List<core.String>? emails;

  GoogleFirebaseAppdistroV1BatchRemoveTestersRequest({this.emails});

  GoogleFirebaseAppdistroV1BatchRemoveTestersRequest.fromJson(core.Map json_)
      : this(
          emails: (json_['emails'] as core.List?)
              ?.map((value) => value as core.String)
              .toList(),
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (emails != null) 'emails': emails!,
      };
}

/// The response message for `BatchRemoveTesters`
class GoogleFirebaseAppdistroV1BatchRemoveTestersResponse {
  /// List of deleted tester emails
  core.List<core.String>? emails;

  GoogleFirebaseAppdistroV1BatchRemoveTestersResponse({this.emails});

  GoogleFirebaseAppdistroV1BatchRemoveTestersResponse.fromJson(core.Map json_)
      : this(
          emails: (json_['emails'] as core.List?)
              ?.map((value) => value as core.String)
              .toList(),
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (emails != null) 'emails': emails!,
      };
}

/// The request message for `DistributeRelease`.
class GoogleFirebaseAppdistroV1DistributeReleaseRequest {
  /// A list of group aliases (IDs) to be given access to this release.
  ///
  /// A combined maximum of 999 `testerEmails` and `groupAliases` can be
  /// specified in a single request.
  core.List<core.String>? groupAliases;

  /// A list of tester email addresses to be given access to this release.
  ///
  /// A combined maximum of 999 `testerEmails` and `groupAliases` can be
  /// specified in a single request.
  core.List<core.String>? testerEmails;

  GoogleFirebaseAppdistroV1DistributeReleaseRequest({
    this.groupAliases,
    this.testerEmails,
  });

  GoogleFirebaseAppdistroV1DistributeReleaseRequest.fromJson(core.Map json_)
      : this(
          groupAliases: (json_['groupAliases'] as core.List?)
              ?.map((value) => value as core.String)
              .toList(),
          testerEmails: (json_['testerEmails'] as core.List?)
              ?.map((value) => value as core.String)
              .toList(),
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (groupAliases != null) 'groupAliases': groupAliases!,
        if (testerEmails != null) 'testerEmails': testerEmails!,
      };
}

/// The response message for `DistributeRelease`.
typedef GoogleFirebaseAppdistroV1DistributeReleaseResponse = $Empty;

/// A feedback report submitted by a tester for a release.
class GoogleFirebaseAppdistroV1FeedbackReport {
  /// The time when the feedback report was created.
  ///
  /// Output only.
  core.String? createTime;

  /// A link to the Firebase console displaying the feedback report.
  ///
  /// Output only.
  core.String? firebaseConsoleUri;

  /// The name of the feedback report resource.
  ///
  /// Format:
  /// `projects/{project_number}/apps/{app}/releases/{release}/feedbackReports/{feedback_report}`
  core.String? name;

  /// A signed link (which expires in one hour) that lets you directly download
  /// the screenshot.
  ///
  /// Output only.
  core.String? screenshotUri;

  /// The resource name of the tester who submitted the feedback report.
  ///
  /// Output only.
  core.String? tester;

  /// The text of the feedback report.
  ///
  /// Output only.
  core.String? text;

  GoogleFirebaseAppdistroV1FeedbackReport({
    this.createTime,
    this.firebaseConsoleUri,
    this.name,
    this.screenshotUri,
    this.tester,
    this.text,
  });

  GoogleFirebaseAppdistroV1FeedbackReport.fromJson(core.Map json_)
      : this(
          createTime: json_['createTime'] as core.String?,
          firebaseConsoleUri: json_['firebaseConsoleUri'] as core.String?,
          name: json_['name'] as core.String?,
          screenshotUri: json_['screenshotUri'] as core.String?,
          tester: json_['tester'] as core.String?,
          text: json_['text'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (createTime != null) 'createTime': createTime!,
        if (firebaseConsoleUri != null)
          'firebaseConsoleUri': firebaseConsoleUri!,
        if (name != null) 'name': name!,
        if (screenshotUri != null) 'screenshotUri': screenshotUri!,
        if (tester != null) 'tester': tester!,
        if (text != null) 'text': text!,
      };
}

/// A group which can contain testers.
///
/// A group can be invited to test apps in a Firebase project.
class GoogleFirebaseAppdistroV1Group {
  /// The display name of the group.
  ///
  /// Required.
  core.String? displayName;

  /// The number of invite links for this group.
  ///
  /// Output only.
  core.int? inviteLinkCount;

  /// The name of the group resource.
  ///
  /// Format: `projects/{project_number}/groups/{group_alias}`
  core.String? name;

  /// The number of releases this group is permitted to access.
  ///
  /// Output only.
  core.int? releaseCount;

  /// The number of testers who are members of this group.
  ///
  /// Output only.
  core.int? testerCount;

  GoogleFirebaseAppdistroV1Group({
    this.displayName,
    this.inviteLinkCount,
    this.name,
    this.releaseCount,
    this.testerCount,
  });

  GoogleFirebaseAppdistroV1Group.fromJson(core.Map json_)
      : this(
          displayName: json_['displayName'] as core.String?,
          inviteLinkCount: json_['inviteLinkCount'] as core.int?,
          name: json_['name'] as core.String?,
          releaseCount: json_['releaseCount'] as core.int?,
          testerCount: json_['testerCount'] as core.int?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (displayName != null) 'displayName': displayName!,
        if (inviteLinkCount != null) 'inviteLinkCount': inviteLinkCount!,
        if (name != null) 'name': name!,
        if (releaseCount != null) 'releaseCount': releaseCount!,
        if (testerCount != null) 'testerCount': testerCount!,
      };
}

/// The response message for `ListFeedbackReports`.
class GoogleFirebaseAppdistroV1ListFeedbackReportsResponse {
  /// The feedback reports
  core.List<GoogleFirebaseAppdistroV1FeedbackReport>? feedbackReports;

  /// A short-lived token, which can be sent as `pageToken` to retrieve the next
  /// page.
  ///
  /// If this field is omitted, there are no subsequent pages.
  core.String? nextPageToken;

  GoogleFirebaseAppdistroV1ListFeedbackReportsResponse({
    this.feedbackReports,
    this.nextPageToken,
  });

  GoogleFirebaseAppdistroV1ListFeedbackReportsResponse.fromJson(core.Map json_)
      : this(
          feedbackReports: (json_['feedbackReports'] as core.List?)
              ?.map(
                (value) => GoogleFirebaseAppdistroV1FeedbackReport.fromJson(
                  value as core.Map<core.String, core.dynamic>,
                ),
              )
              .toList(),
          nextPageToken: json_['nextPageToken'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (feedbackReports != null) 'feedbackReports': feedbackReports!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
      };
}

/// The response message for `ListGroups`.
class GoogleFirebaseAppdistroV1ListGroupsResponse {
  /// The groups listed.
  core.List<GoogleFirebaseAppdistroV1Group>? groups;

  /// A short-lived token, which can be sent as `pageToken` to retrieve the next
  /// page.
  ///
  /// If this field is omitted, there are no subsequent pages.
  core.String? nextPageToken;

  GoogleFirebaseAppdistroV1ListGroupsResponse({
    this.groups,
    this.nextPageToken,
  });

  GoogleFirebaseAppdistroV1ListGroupsResponse.fromJson(core.Map json_)
      : this(
          groups: (json_['groups'] as core.List?)
              ?.map(
                (value) => GoogleFirebaseAppdistroV1Group.fromJson(
                  value as core.Map<core.String, core.dynamic>,
                ),
              )
              .toList(),
          nextPageToken: json_['nextPageToken'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (groups != null) 'groups': groups!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
      };
}

/// The response message for `ListReleases`.
class GoogleFirebaseAppdistroV1ListReleasesResponse {
  /// A short-lived token, which can be sent as `pageToken` to retrieve the next
  /// page.
  ///
  /// If this field is omitted, there are no subsequent pages.
  core.String? nextPageToken;

  /// The releases
  core.List<GoogleFirebaseAppdistroV1Release>? releases;

  GoogleFirebaseAppdistroV1ListReleasesResponse({
    this.nextPageToken,
    this.releases,
  });

  GoogleFirebaseAppdistroV1ListReleasesResponse.fromJson(core.Map json_)
      : this(
          nextPageToken: json_['nextPageToken'] as core.String?,
          releases: (json_['releases'] as core.List?)
              ?.map(
                (value) => GoogleFirebaseAppdistroV1Release.fromJson(
                  value as core.Map<core.String, core.dynamic>,
                ),
              )
              .toList(),
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (releases != null) 'releases': releases!,
      };
}

/// The response message for `ListTesters`.
class GoogleFirebaseAppdistroV1ListTestersResponse {
  /// A short-lived token, which can be sent as `pageToken` to retrieve the next
  /// page.
  ///
  /// If this field is omitted, there are no subsequent pages.
  core.String? nextPageToken;

  /// The testers listed.
  core.List<GoogleFirebaseAppdistroV1Tester>? testers;

  GoogleFirebaseAppdistroV1ListTestersResponse({
    this.nextPageToken,
    this.testers,
  });

  GoogleFirebaseAppdistroV1ListTestersResponse.fromJson(core.Map json_)
      : this(
          nextPageToken: json_['nextPageToken'] as core.String?,
          testers: (json_['testers'] as core.List?)
              ?.map(
                (value) => GoogleFirebaseAppdistroV1Tester.fromJson(
                  value as core.Map<core.String, core.dynamic>,
                ),
              )
              .toList(),
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (testers != null) 'testers': testers!,
      };
}

/// A release of a Firebase app.
class GoogleFirebaseAppdistroV1Release {
  /// A signed link (which expires in one hour) to directly download the app
  /// binary (IPA/APK/AAB) file.
  ///
  /// Output only.
  core.String? binaryDownloadUri;

  /// Build version of the release.
  ///
  /// For an Android release, the build version is the `versionCode`. For an iOS
  /// release, the build version is the `CFBundleVersion`.
  ///
  /// Output only.
  core.String? buildVersion;

  /// The time the release was created.
  ///
  /// Output only.
  core.String? createTime;

  /// Display version of the release.
  ///
  /// For an Android release, the display version is the `versionName`. For an
  /// iOS release, the display version is the `CFBundleShortVersionString`.
  ///
  /// Output only.
  core.String? displayVersion;

  /// A link to the Firebase console displaying a single release.
  ///
  /// Output only.
  core.String? firebaseConsoleUri;

  /// The name of the release resource.
  ///
  /// Format: `projects/{project_number}/apps/{app_id}/releases/{release_id}`
  core.String? name;

  /// Notes of the release.
  GoogleFirebaseAppdistroV1ReleaseNotes? releaseNotes;

  /// A link to the release in the tester web clip or Android app that lets
  /// testers (which were granted access to the app) view release notes and
  /// install the app onto their devices.
  ///
  /// Output only.
  core.String? testingUri;

  GoogleFirebaseAppdistroV1Release({
    this.binaryDownloadUri,
    this.buildVersion,
    this.createTime,
    this.displayVersion,
    this.firebaseConsoleUri,
    this.name,
    this.releaseNotes,
    this.testingUri,
  });

  GoogleFirebaseAppdistroV1Release.fromJson(core.Map json_)
      : this(
          binaryDownloadUri: json_['binaryDownloadUri'] as core.String?,
          buildVersion: json_['buildVersion'] as core.String?,
          createTime: json_['createTime'] as core.String?,
          displayVersion: json_['displayVersion'] as core.String?,
          firebaseConsoleUri: json_['firebaseConsoleUri'] as core.String?,
          name: json_['name'] as core.String?,
          releaseNotes: json_.containsKey('releaseNotes')
              ? GoogleFirebaseAppdistroV1ReleaseNotes.fromJson(
                  json_['releaseNotes'] as core.Map<core.String, core.dynamic>,
                )
              : null,
          testingUri: json_['testingUri'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (binaryDownloadUri != null) 'binaryDownloadUri': binaryDownloadUri!,
        if (buildVersion != null) 'buildVersion': buildVersion!,
        if (createTime != null) 'createTime': createTime!,
        if (displayVersion != null) 'displayVersion': displayVersion!,
        if (firebaseConsoleUri != null)
          'firebaseConsoleUri': firebaseConsoleUri!,
        if (name != null) 'name': name!,
        if (releaseNotes != null) 'releaseNotes': releaseNotes!,
        if (testingUri != null) 'testingUri': testingUri!,
      };
}

/// Notes that belong to a release.
class GoogleFirebaseAppdistroV1ReleaseNotes {
  /// The text of the release notes.
  core.String? text;

  GoogleFirebaseAppdistroV1ReleaseNotes({this.text});

  GoogleFirebaseAppdistroV1ReleaseNotes.fromJson(core.Map json_)
      : this(text: json_['text'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() => {
        if (text != null) 'text': text!,
      };
}

/// App bundle test certificate
class GoogleFirebaseAppdistroV1TestCertificate {
  /// Hex string of MD5 hash of the test certificate used to resign the AAB
  core.String? hashMd5;

  /// Hex string of SHA1 hash of the test certificate used to resign the AAB
  core.String? hashSha1;

  /// Hex string of SHA256 hash of the test certificate used to resign the AAB
  core.String? hashSha256;

  GoogleFirebaseAppdistroV1TestCertificate({
    this.hashMd5,
    this.hashSha1,
    this.hashSha256,
  });

  GoogleFirebaseAppdistroV1TestCertificate.fromJson(core.Map json_)
      : this(
          hashMd5: json_['hashMd5'] as core.String?,
          hashSha1: json_['hashSha1'] as core.String?,
          hashSha256: json_['hashSha256'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (hashMd5 != null) 'hashMd5': hashMd5!,
        if (hashSha1 != null) 'hashSha1': hashSha1!,
        if (hashSha256 != null) 'hashSha256': hashSha256!,
      };
}

/// A person that can be invited to test apps in a Firebase project.
class GoogleFirebaseAppdistroV1Tester {
  /// The name of the tester associated with the Google account used to accept
  /// the tester invitation.
  core.String? displayName;

  /// The resource names of the groups this tester belongs to.
  core.List<core.String>? groups;

  /// The time the tester was last active.
  ///
  /// This is the most recent time the tester installed one of the apps. If
  /// they've never installed one or if the release no longer exists, this is
  /// the time the tester was added to the project.
  ///
  /// Output only.
  core.String? lastActivityTime;

  /// The name of the tester resource.
  ///
  /// Format: `projects/{project_number}/testers/{email_address}`
  core.String? name;

  GoogleFirebaseAppdistroV1Tester({
    this.displayName,
    this.groups,
    this.lastActivityTime,
    this.name,
  });

  GoogleFirebaseAppdistroV1Tester.fromJson(core.Map json_)
      : this(
          displayName: json_['displayName'] as core.String?,
          groups: (json_['groups'] as core.List?)
              ?.map((value) => value as core.String)
              .toList(),
          lastActivityTime: json_['lastActivityTime'] as core.String?,
          name: json_['name'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (displayName != null) 'displayName': displayName!,
        if (groups != null) 'groups': groups!,
        if (lastActivityTime != null) 'lastActivityTime': lastActivityTime!,
        if (name != null) 'name': name!,
      };
}

/// Request message for `UploadRelease`.
class GoogleFirebaseAppdistroV1UploadReleaseRequest {
  /// Binary to upload
  GdataMedia? blob;

  GoogleFirebaseAppdistroV1UploadReleaseRequest({this.blob});

  GoogleFirebaseAppdistroV1UploadReleaseRequest.fromJson(core.Map json_)
      : this(
          blob: json_.containsKey('blob')
              ? GdataMedia.fromJson(
                  json_['blob'] as core.Map<core.String, core.dynamic>,
                )
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (blob != null) 'blob': blob!,
      };
}

/// The request message for Operations.CancelOperation.
typedef GoogleLongrunningCancelOperationRequest = $Empty;

/// The response message for Operations.ListOperations.
class GoogleLongrunningListOperationsResponse {
  /// The standard List next-page token.
  core.String? nextPageToken;

  /// A list of operations that matches the specified filter in the request.
  core.List<GoogleLongrunningOperation>? operations;

  GoogleLongrunningListOperationsResponse({
    this.nextPageToken,
    this.operations,
  });

  GoogleLongrunningListOperationsResponse.fromJson(core.Map json_)
      : this(
          nextPageToken: json_['nextPageToken'] as core.String?,
          operations: (json_['operations'] as core.List?)
              ?.map(
                (value) => GoogleLongrunningOperation.fromJson(
                  value as core.Map<core.String, core.dynamic>,
                ),
              )
              .toList(),
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (operations != null) 'operations': operations!,
      };
}

/// This resource represents a long-running operation that is the result of a
/// network API call.
class GoogleLongrunningOperation {
  /// If the value is `false`, it means the operation is still in progress.
  ///
  /// If `true`, the operation is completed, and either `error` or `response` is
  /// available.
  core.bool? done;

  /// The error result of the operation in case of failure or cancellation.
  GoogleRpcStatus? error;

  /// Service-specific metadata associated with the operation.
  ///
  /// It typically contains progress information and common metadata such as
  /// create time. Some services might not provide such metadata. Any method
  /// that returns a long-running operation should document the metadata type,
  /// if any.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object?>? metadata;

  /// The server-assigned name, which is only unique within the same service
  /// that originally returns it.
  ///
  /// If you use the default HTTP mapping, the `name` should be a resource name
  /// ending with `operations/{unique_id}`.
  core.String? name;

  /// The normal, successful response of the operation.
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
  core.Map<core.String, core.Object?>? response;

  GoogleLongrunningOperation({
    this.done,
    this.error,
    this.metadata,
    this.name,
    this.response,
  });

  GoogleLongrunningOperation.fromJson(core.Map json_)
      : this(
          done: json_['done'] as core.bool?,
          error: json_.containsKey('error')
              ? GoogleRpcStatus.fromJson(
                  json_['error'] as core.Map<core.String, core.dynamic>,
                )
              : null,
          metadata: json_.containsKey('metadata')
              ? json_['metadata'] as core.Map<core.String, core.dynamic>
              : null,
          name: json_['name'] as core.String?,
          response: json_.containsKey('response')
              ? json_['response'] as core.Map<core.String, core.dynamic>
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (done != null) 'done': done!,
        if (error != null) 'error': error!,
        if (metadata != null) 'metadata': metadata!,
        if (name != null) 'name': name!,
        if (response != null) 'response': response!,
      };
}

/// The request message for Operations.WaitOperation.
typedef GoogleLongrunningWaitOperationRequest = $WaitOperationRequest;

/// A generic empty message that you can re-use to avoid defining duplicated
/// empty messages in your APIs.
///
/// A typical example is to use it as the request or the response type of an API
/// method. For instance: service Foo { rpc Bar(google.protobuf.Empty) returns
/// (google.protobuf.Empty); }
typedef GoogleProtobufEmpty = $Empty;

/// The `Status` type defines a logical error model that is suitable for
/// different programming environments, including REST APIs and RPC APIs.
///
/// It is used by [gRPC](https://github.com/grpc). Each `Status` message
/// contains three pieces of data: error code, error message, and error details.
/// You can find out more about this error model and how to work with it in the
/// [API Design Guide](https://cloud.google.com/apis/design/errors).
typedef GoogleRpcStatus = $Status00;
