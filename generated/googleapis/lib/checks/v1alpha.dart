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

/// Checks API - v1alpha
///
/// The Checks API contains powerful and easy-to-use privacy and compliance APIs
/// that interact with the Checks product and its underlying technology.
///
/// For more information, see <https://developers.google.com/checks>
///
/// Create an instance of [ChecksServiceApi] to access these resources:
///
/// - [AccountsResource]
///   - [AccountsAppsResource]
///     - [AccountsAppsOperationsResource]
///     - [AccountsAppsReportsResource]
///   - [AccountsReposResource]
///     - [AccountsReposOperationsResource]
///     - [AccountsReposScansResource]
/// - [AisafetyResource]
/// - [MediaResource]
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

/// The Checks API contains powerful and easy-to-use privacy and compliance APIs
/// that interact with the Checks product and its underlying technology.
class ChecksServiceApi {
  final commons.ApiRequester _requester;

  AccountsResource get accounts => AccountsResource(_requester);
  AisafetyResource get aisafety => AisafetyResource(_requester);
  MediaResource get media => MediaResource(_requester);

  ChecksServiceApi(
    http.Client client, {
    core.String rootUrl = 'https://checks.googleapis.com/',
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

  AccountsAppsResource get apps => AccountsAppsResource(_requester);
  AccountsReposResource get repos => AccountsReposResource(_requester);

  AccountsResource(commons.ApiRequester client) : _requester = client;
}

class AccountsAppsResource {
  final commons.ApiRequester _requester;

  AccountsAppsOperationsResource get operations =>
      AccountsAppsOperationsResource(_requester);
  AccountsAppsReportsResource get reports =>
      AccountsAppsReportsResource(_requester);

  AccountsAppsResource(commons.ApiRequester client) : _requester = client;

  /// Gets an app.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Resource name of the app. Example:
  /// `accounts/123/apps/456`
  /// Value must have pattern `^accounts/\[^/\]+/apps/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleChecksAccountV1alphaApp].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleChecksAccountV1alphaApp> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1alpha/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleChecksAccountV1alphaApp.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Lists the apps under the given account.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent account. Example: `accounts/123`
  /// Value must have pattern `^accounts/\[^/\]+$`.
  ///
  /// [pageSize] - Optional. The maximum number of results to return. The server
  /// may further constrain the maximum number of results returned in a single
  /// page. If unspecified, the server will decide the number of results to be
  /// returned.
  ///
  /// [pageToken] - Optional. A page token received from a previous `ListApps`
  /// call. Provide this to retrieve the subsequent page.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleChecksAccountV1alphaListAppsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleChecksAccountV1alphaListAppsResponse> list(
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

    final url_ = 'v1alpha/' + core.Uri.encodeFull('$parent') + '/apps';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleChecksAccountV1alphaListAppsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class AccountsAppsOperationsResource {
  final commons.ApiRequester _requester;

  AccountsAppsOperationsResource(commons.ApiRequester client)
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
  /// `^accounts/\[^/\]+/apps/\[^/\]+/operations/\[^/\]+$`.
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
  async.Future<Empty> cancel(
    CancelOperationRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1alpha/' + core.Uri.encodeFull('$name') + ':cancel';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Empty.fromJson(response_ as core.Map<core.String, core.dynamic>);
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
  /// `^accounts/\[^/\]+/apps/\[^/\]+/operations/\[^/\]+$`.
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
  async.Future<Empty> delete(core.String name, {core.String? $fields}) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1alpha/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return Empty.fromJson(response_ as core.Map<core.String, core.dynamic>);
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
  /// `^accounts/\[^/\]+/apps/\[^/\]+/operations/\[^/\]+$`.
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
  async.Future<Operation> get(core.String name, {core.String? $fields}) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1alpha/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists operations that match the specified filter in the request.
  ///
  /// If the server doesn't support this method, it returns `UNIMPLEMENTED`.
  ///
  /// Request parameters:
  ///
  /// [name] - The name of the operation's parent resource.
  /// Value must have pattern `^accounts/\[^/\]+/apps/\[^/\]+$`.
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
  /// Completes with a [ListOperationsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListOperationsResponse> list(
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

    final url_ = 'v1alpha/' + core.Uri.encodeFull('$name') + '/operations';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListOperationsResponse.fromJson(
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
  /// `^accounts/\[^/\]+/apps/\[^/\]+/operations/\[^/\]+$`.
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
  async.Future<Operation> wait(
    WaitOperationRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1alpha/' + core.Uri.encodeFull('$name') + ':wait';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }
}

class AccountsAppsReportsResource {
  final commons.ApiRequester _requester;

  AccountsAppsReportsResource(commons.ApiRequester client)
    : _requester = client;

  /// Gets a report.
  ///
  /// By default, only the name and results_uri fields are returned. You can
  /// include other fields by listing them in the `fields` URL query parameter.
  /// For example, `?fields=name,checks` will return the name and checks fields.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Resource name of the report. Example:
  /// `accounts/123/apps/456/reports/789`
  /// Value must have pattern `^accounts/\[^/\]+/apps/\[^/\]+/reports/\[^/\]+$`.
  ///
  /// [checksFilter] - Optional. An \[AIP-160\](https://google.aip.dev/160)
  /// filter string to filter checks within the report. Only checks that match
  /// the filter string are included in the response. Example: `state = FAILED`
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleChecksReportV1alphaReport].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleChecksReportV1alphaReport> get(
    core.String name, {
    core.String? checksFilter,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (checksFilter != null) 'checksFilter': [checksFilter],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1alpha/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleChecksReportV1alphaReport.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Lists reports for the specified app.
  ///
  /// By default, only the name and results_uri fields are returned. You can
  /// include other fields by listing them in the `fields` URL query parameter.
  /// For example, `?fields=reports(name,checks)` will return the name and
  /// checks fields.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Resource name of the app. Example:
  /// `accounts/123/apps/456`
  /// Value must have pattern `^accounts/\[^/\]+/apps/\[^/\]+$`.
  ///
  /// [checksFilter] - Optional. An \[AIP-160\](https://google.aip.dev/160)
  /// filter string to filter checks within reports. Only checks that match the
  /// filter string are included in the response. Example: `state = FAILED`
  ///
  /// [filter] - Optional. An \[AIP-160\](https://google.aip.dev/160) filter
  /// string to filter reports. Example: `appBundle.releaseType = PRE_RELEASE`
  ///
  /// [pageSize] - Optional. The maximum number of reports to return. If
  /// unspecified, at most 10 reports will be returned. The maximum value is 50;
  /// values above 50 will be coerced to 50.
  ///
  /// [pageToken] - Optional. A page token received from a previous
  /// `ListReports` call. Provide this to retrieve the subsequent page. When
  /// paginating, all other parameters provided to `ListReports` must match the
  /// call that provided the page token.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleChecksReportV1alphaListReportsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleChecksReportV1alphaListReportsResponse> list(
    core.String parent, {
    core.String? checksFilter,
    core.String? filter,
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (checksFilter != null) 'checksFilter': [checksFilter],
      if (filter != null) 'filter': [filter],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1alpha/' + core.Uri.encodeFull('$parent') + '/reports';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleChecksReportV1alphaListReportsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class AccountsReposResource {
  final commons.ApiRequester _requester;

  AccountsReposOperationsResource get operations =>
      AccountsReposOperationsResource(_requester);
  AccountsReposScansResource get scans =>
      AccountsReposScansResource(_requester);

  AccountsReposResource(commons.ApiRequester client) : _requester = client;
}

class AccountsReposOperationsResource {
  final commons.ApiRequester _requester;

  AccountsReposOperationsResource(commons.ApiRequester client)
    : _requester = client;

  /// Gets the latest state of a long-running operation.
  ///
  /// Clients can use this method to poll the operation result at intervals as
  /// recommended by the API service.
  ///
  /// Request parameters:
  ///
  /// [name] - The name of the operation resource.
  /// Value must have pattern
  /// `^accounts/\[^/\]+/repos/\[^/\]+/operations/\[^/\]+$`.
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
  async.Future<Operation> get(core.String name, {core.String? $fields}) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1alpha/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }
}

class AccountsReposScansResource {
  final commons.ApiRequester _requester;

  AccountsReposScansResource(commons.ApiRequester client) : _requester = client;

  /// Uploads the results of local Code Compliance analysis and generates a scan
  /// of privacy issues.
  ///
  /// Returns a google.longrunning.Operation containing analysis and findings.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Resource name of the repo. Example:
  /// `accounts/123/repos/456`
  /// Value must have pattern `^accounts/\[^/\]+/repos/\[^/\]+$`.
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
  async.Future<Operation> generate(
    GoogleChecksRepoScanV1alphaGenerateScanRequest request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1alpha/' + core.Uri.encodeFull('$parent') + '/scans:generate';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Gets a repo scan.
  ///
  /// By default, only the name and results_uri fields are returned. You can
  /// include other fields by listing them in the `fields` URL query parameter.
  /// For example, `?fields=name,sources` will return the name and sources
  /// fields.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Resource name of the repo scan. Example:
  /// `accounts/123/repos/456/scans/789`
  /// Value must have pattern `^accounts/\[^/\]+/repos/\[^/\]+/scans/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleChecksRepoScanV1alphaRepoScan].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleChecksRepoScanV1alphaRepoScan> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1alpha/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleChecksRepoScanV1alphaRepoScan.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Lists repo scans for the specified repo.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Resource name of the repo. Example:
  /// `accounts/123/repos/456`
  /// Value must have pattern `^accounts/\[^/\]+/repos/\[^/\]+$`.
  ///
  /// [filter] - Optional. An \[AIP-160\](https://google.aip.dev/160) filter
  /// string to filter repo scans. Example: `scmMetadata.branch = main`
  ///
  /// [pageSize] - Optional. The maximum number of repo scans to return. If
  /// unspecified, at most 10 repo scans will be returned. The maximum value is
  /// 50; values above 50 will be coerced to 50.
  ///
  /// [pageToken] - Optional. A page token received from a previous
  /// `ListRepoScans` call. Provide this to retrieve the subsequent page. When
  /// paginating, all other parameters provided to `ListRepoScans` must match
  /// the call that provided the page token.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleChecksRepoScanV1alphaListRepoScansResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleChecksRepoScanV1alphaListRepoScansResponse> list(
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

    final url_ = 'v1alpha/' + core.Uri.encodeFull('$parent') + '/scans';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleChecksRepoScanV1alphaListRepoScansResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class AisafetyResource {
  final commons.ApiRequester _requester;

  AisafetyResource(commons.ApiRequester client) : _requester = client;

  /// Analyze a piece of content with the provided set of policies.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleChecksAisafetyV1alphaClassifyContentResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleChecksAisafetyV1alphaClassifyContentResponse>
  classifyContent(
    GoogleChecksAisafetyV1alphaClassifyContentRequest request, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    const url_ = 'v1alpha/aisafety:classifyContent';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleChecksAisafetyV1alphaClassifyContentResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class MediaResource {
  final commons.ApiRequester _requester;

  MediaResource(commons.ApiRequester client) : _requester = client;

  /// Analyzes the uploaded app bundle and returns a
  /// google.longrunning.Operation containing the generated Report.
  ///
  /// ## Example (upload only) Send a regular POST request with the header
  /// `X-Goog-Upload-Protocol: raw`. ``` POST
  /// https://checks.googleapis.com/upload/v1alpha/{parent=accounts / * /apps /
  /// * }/reports:analyzeUpload HTTP/1.1 X-Goog-Upload-Protocol: raw
  /// Content-Length: Content-Type: application/octet-stream ``` ## Example
  /// (upload with metadata) Send a multipart POST request where the first body
  /// part contains the metadata JSON and the second body part contains the
  /// binary upload. Include the header `X-Goog-Upload-Protocol: multipart`. ```
  /// POST https://checks.googleapis.com/upload/v1alpha/{parent=accounts / *
  /// /apps / * }/reports:analyzeUpload HTTP/1.1 X-Goog-Upload-Protocol:
  /// multipart Content-Length: ? Content-Type: multipart/related;
  /// boundary=BOUNDARY --BOUNDARY Content-Type: application/json
  /// {"code_reference_id":"db5bcc20f94055fb5bc08cbb9b0e7a5530308786"}
  /// --BOUNDARY --BOUNDARY-- ``` *Note:* Metadata-only requests are not
  /// supported.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Resource name of the app. Example:
  /// `accounts/123/apps/456`
  /// Value must have pattern `^accounts/\[^/\]+/apps/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// [uploadMedia] - The media to upload.
  ///
  /// Completes with a [Operation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Operation> upload(
    GoogleChecksReportV1alphaAnalyzeUploadRequest request,
    core.String parent, {
    core.String? $fields,
    commons.Media? uploadMedia,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    core.String url_;
    if (uploadMedia == null) {
      url_ =
          'v1alpha/' +
          core.Uri.encodeFull('$parent') +
          '/reports:analyzeUpload';
    } else {
      url_ =
          '/upload/v1alpha/' +
          core.Uri.encodeFull('$parent') +
          '/reports:analyzeUpload';
    }

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
      uploadMedia: uploadMedia,
      uploadOptions: commons.UploadOptions.defaultOptions,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }
}

/// The request message for Operations.CancelOperation.
typedef CancelOperationRequest = $Empty;

/// A generic empty message that you can re-use to avoid defining duplicated
/// empty messages in your APIs.
///
/// A typical example is to use it as the request or the response type of an API
/// method. For instance: service Foo { rpc Bar(google.protobuf.Empty) returns
/// (google.protobuf.Empty); }
typedef Empty = $Empty;

/// Represents an app in Checks.
class GoogleChecksAccountV1alphaApp {
  /// The resource name of the app.
  ///
  /// Example: `accounts/123/apps/456`
  core.String? name;

  /// The app's title.
  core.String? title;

  GoogleChecksAccountV1alphaApp({this.name, this.title});

  GoogleChecksAccountV1alphaApp.fromJson(core.Map json_)
    : this(
        name: json_['name'] as core.String?,
        title: json_['title'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (name != null) 'name': name!,
    if (title != null) 'title': title!,
  };
}

/// The response message for AccountService.ListApps.
class GoogleChecksAccountV1alphaListAppsResponse {
  /// The apps.
  core.List<GoogleChecksAccountV1alphaApp>? apps;

  /// A token which can be sent as `page_token` to retrieve the next page.
  ///
  /// If this field is omitted, there are no subsequent pages.
  core.String? nextPageToken;

  GoogleChecksAccountV1alphaListAppsResponse({this.apps, this.nextPageToken});

  GoogleChecksAccountV1alphaListAppsResponse.fromJson(core.Map json_)
    : this(
        apps:
            (json_['apps'] as core.List?)
                ?.map(
                  (value) => GoogleChecksAccountV1alphaApp.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        nextPageToken: json_['nextPageToken'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (apps != null) 'apps': apps!,
    if (nextPageToken != null) 'nextPageToken': nextPageToken!,
  };
}

/// Request proto for ClassifyContent RPC.
class GoogleChecksAisafetyV1alphaClassifyContentRequest {
  /// Version of the classifier to use.
  ///
  /// If not specified, the latest version will be used.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "CLASSIFIER_VERSION_UNSPECIFIED" : Unspecified version.
  /// - "STABLE" : Stable version.
  /// - "LATEST" : Latest version.
  core.String? classifierVersion;

  /// Context about the input that will be used to help on the classification.
  ///
  /// Optional.
  GoogleChecksAisafetyV1alphaClassifyContentRequestContext? context;

  /// Content to be classified.
  ///
  /// Required.
  GoogleChecksAisafetyV1alphaClassifyContentRequestInputContent? input;

  /// List of policies to classify against.
  ///
  /// Required.
  core.List<GoogleChecksAisafetyV1alphaClassifyContentRequestPolicyConfig>?
  policies;

  GoogleChecksAisafetyV1alphaClassifyContentRequest({
    this.classifierVersion,
    this.context,
    this.input,
    this.policies,
  });

  GoogleChecksAisafetyV1alphaClassifyContentRequest.fromJson(core.Map json_)
    : this(
        classifierVersion: json_['classifierVersion'] as core.String?,
        context:
            json_.containsKey('context')
                ? GoogleChecksAisafetyV1alphaClassifyContentRequestContext.fromJson(
                  json_['context'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        input:
            json_.containsKey('input')
                ? GoogleChecksAisafetyV1alphaClassifyContentRequestInputContent.fromJson(
                  json_['input'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        policies:
            (json_['policies'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleChecksAisafetyV1alphaClassifyContentRequestPolicyConfig.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (classifierVersion != null) 'classifierVersion': classifierVersion!,
    if (context != null) 'context': context!,
    if (input != null) 'input': input!,
    if (policies != null) 'policies': policies!,
  };
}

/// Context about the input that will be used to help on the classification.
class GoogleChecksAisafetyV1alphaClassifyContentRequestContext {
  /// Prompt that generated the model response.
  ///
  /// Optional.
  core.String? prompt;

  GoogleChecksAisafetyV1alphaClassifyContentRequestContext({this.prompt});

  GoogleChecksAisafetyV1alphaClassifyContentRequestContext.fromJson(
    core.Map json_,
  ) : this(prompt: json_['prompt'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() => {
    if (prompt != null) 'prompt': prompt!,
  };
}

/// Content to be classified.
class GoogleChecksAisafetyV1alphaClassifyContentRequestInputContent {
  /// Content in text format.
  GoogleChecksAisafetyV1alphaTextInput? textInput;

  GoogleChecksAisafetyV1alphaClassifyContentRequestInputContent({
    this.textInput,
  });

  GoogleChecksAisafetyV1alphaClassifyContentRequestInputContent.fromJson(
    core.Map json_,
  ) : this(
        textInput:
            json_.containsKey('textInput')
                ? GoogleChecksAisafetyV1alphaTextInput.fromJson(
                  json_['textInput'] as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (textInput != null) 'textInput': textInput!,
  };
}

/// List of policies to classify against.
class GoogleChecksAisafetyV1alphaClassifyContentRequestPolicyConfig {
  /// Type of the policy.
  ///
  /// Required.
  /// Possible string values are:
  /// - "POLICY_TYPE_UNSPECIFIED" : Default.
  /// - "DANGEROUS_CONTENT" : The model facilitates, promotes or enables access
  /// to harmful goods, services, and activities.
  /// - "PII_SOLICITING_RECITING" : The model reveals an individual’s personal
  /// information and data.
  /// - "HARASSMENT" : The model generates content that is malicious,
  /// intimidating, bullying, or abusive towards another individual.
  /// - "SEXUALLY_EXPLICIT" : The model generates content that is sexually
  /// explicit in nature.
  /// - "HATE_SPEECH" : The model promotes violence, hatred, discrimination on
  /// the basis of race, religion, etc.
  /// - "MEDICAL_INFO" : The model provides or offers to facilitate access to
  /// medical advice or guidance.
  /// - "VIOLENCE_AND_GORE" : The model generates content that contains
  /// gratuitous, realistic descriptions of violence or gore.
  /// - "OBSCENITY_AND_PROFANITY" : The model generates profanity and
  /// obscenities.
  core.String? policyType;

  /// Score threshold to use when deciding if the content is violative or
  /// non-violative.
  ///
  /// If not specified, the default 0.5 threshold for the policy will be used.
  ///
  /// Optional.
  core.double? threshold;

  GoogleChecksAisafetyV1alphaClassifyContentRequestPolicyConfig({
    this.policyType,
    this.threshold,
  });

  GoogleChecksAisafetyV1alphaClassifyContentRequestPolicyConfig.fromJson(
    core.Map json_,
  ) : this(
        policyType: json_['policyType'] as core.String?,
        threshold: (json_['threshold'] as core.num?)?.toDouble(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (policyType != null) 'policyType': policyType!,
    if (threshold != null) 'threshold': threshold!,
  };
}

/// Response proto for ClassifyContent RPC.
class GoogleChecksAisafetyV1alphaClassifyContentResponse {
  /// Results of the classification for each policy.
  core.List<GoogleChecksAisafetyV1alphaClassifyContentResponsePolicyResult>?
  policyResults;

  GoogleChecksAisafetyV1alphaClassifyContentResponse({this.policyResults});

  GoogleChecksAisafetyV1alphaClassifyContentResponse.fromJson(core.Map json_)
    : this(
        policyResults:
            (json_['policyResults'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleChecksAisafetyV1alphaClassifyContentResponsePolicyResult.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (policyResults != null) 'policyResults': policyResults!,
  };
}

/// Result for one policy against the corresponding input.
class GoogleChecksAisafetyV1alphaClassifyContentResponsePolicyResult {
  /// Type of the policy.
  /// Possible string values are:
  /// - "POLICY_TYPE_UNSPECIFIED" : Default.
  /// - "DANGEROUS_CONTENT" : The model facilitates, promotes or enables access
  /// to harmful goods, services, and activities.
  /// - "PII_SOLICITING_RECITING" : The model reveals an individual’s personal
  /// information and data.
  /// - "HARASSMENT" : The model generates content that is malicious,
  /// intimidating, bullying, or abusive towards another individual.
  /// - "SEXUALLY_EXPLICIT" : The model generates content that is sexually
  /// explicit in nature.
  /// - "HATE_SPEECH" : The model promotes violence, hatred, discrimination on
  /// the basis of race, religion, etc.
  /// - "MEDICAL_INFO" : The model provides or offers to facilitate access to
  /// medical advice or guidance.
  /// - "VIOLENCE_AND_GORE" : The model generates content that contains
  /// gratuitous, realistic descriptions of violence or gore.
  /// - "OBSCENITY_AND_PROFANITY" : The model generates profanity and
  /// obscenities.
  core.String? policyType;

  /// Final score for the results of this policy.
  core.double? score;

  /// Result of the classification for the policy.
  /// Possible string values are:
  /// - "VIOLATION_RESULT_UNSPECIFIED" : Unspecified result.
  /// - "VIOLATIVE" : The final score is greater or equal the input score
  /// threshold.
  /// - "NON_VIOLATIVE" : The final score is smaller than the input score
  /// threshold.
  /// - "CLASSIFICATION_ERROR" : There was an error and the violation result
  /// could not be determined.
  core.String? violationResult;

  GoogleChecksAisafetyV1alphaClassifyContentResponsePolicyResult({
    this.policyType,
    this.score,
    this.violationResult,
  });

  GoogleChecksAisafetyV1alphaClassifyContentResponsePolicyResult.fromJson(
    core.Map json_,
  ) : this(
        policyType: json_['policyType'] as core.String?,
        score: (json_['score'] as core.num?)?.toDouble(),
        violationResult: json_['violationResult'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (policyType != null) 'policyType': policyType!,
    if (score != null) 'score': score!,
    if (violationResult != null) 'violationResult': violationResult!,
  };
}

/// Text input to be classified.
class GoogleChecksAisafetyV1alphaTextInput {
  /// Actual piece of text to be classified.
  core.String? content;

  /// Language of the text in ISO 639-1 format.
  ///
  /// If the language is invalid or not specified, the system will try to detect
  /// it.
  ///
  /// Optional.
  core.String? languageCode;

  GoogleChecksAisafetyV1alphaTextInput({this.content, this.languageCode});

  GoogleChecksAisafetyV1alphaTextInput.fromJson(core.Map json_)
    : this(
        content: json_['content'] as core.String?,
        languageCode: json_['languageCode'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (content != null) 'content': content!,
    if (languageCode != null) 'languageCode': languageCode!,
  };
}

/// The results of a Code Compliance CLI analysis.
class GoogleChecksRepoScanV1alphaCliAnalysis {
  /// Requested code scans resulting from preliminary CLI analysis.
  ///
  /// Optional.
  core.List<GoogleChecksRepoScanV1alphaCodeScan>? codeScans;

  /// Data sources detected in the scan.
  ///
  /// Optional.
  core.List<GoogleChecksRepoScanV1alphaSource>? sources;

  GoogleChecksRepoScanV1alphaCliAnalysis({this.codeScans, this.sources});

  GoogleChecksRepoScanV1alphaCliAnalysis.fromJson(core.Map json_)
    : this(
        codeScans:
            (json_['codeScans'] as core.List?)
                ?.map(
                  (value) => GoogleChecksRepoScanV1alphaCodeScan.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        sources:
            (json_['sources'] as core.List?)
                ?.map(
                  (value) => GoogleChecksRepoScanV1alphaSource.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (codeScans != null) 'codeScans': codeScans!,
    if (sources != null) 'sources': sources!,
  };
}

/// Source code attribution.
class GoogleChecksRepoScanV1alphaCodeAttribution {
  /// Code excerpt where the source was detected along with surrounding code.
  ///
  /// Optional.
  core.String? codeExcerpt;

  /// Line number (1-based).
  ///
  /// Required.
  core.int? lineNumber;

  /// Path of the file.
  ///
  /// Required.
  core.String? path;

  /// Start line number of the code excerpt (1-based).
  ///
  /// Optional.
  core.int? startLineNumber;

  GoogleChecksRepoScanV1alphaCodeAttribution({
    this.codeExcerpt,
    this.lineNumber,
    this.path,
    this.startLineNumber,
  });

  GoogleChecksRepoScanV1alphaCodeAttribution.fromJson(core.Map json_)
    : this(
        codeExcerpt: json_['codeExcerpt'] as core.String?,
        lineNumber: json_['lineNumber'] as core.int?,
        path: json_['path'] as core.String?,
        startLineNumber: json_['startLineNumber'] as core.int?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (codeExcerpt != null) 'codeExcerpt': codeExcerpt!,
    if (lineNumber != null) 'lineNumber': lineNumber!,
    if (path != null) 'path': path!,
    if (startLineNumber != null) 'startLineNumber': startLineNumber!,
  };
}

/// A requested analysis of source code.
///
/// Contains the source code and processing state.
class GoogleChecksRepoScanV1alphaCodeScan {
  /// Data type classification requests.
  ///
  /// Optional.
  core.List<GoogleChecksRepoScanV1alphaCodeScanDataTypeClassification>?
  dataTypeClassifications;

  /// Source code to analyze.
  ///
  /// Required.
  GoogleChecksRepoScanV1alphaSourceCode? sourceCode;

  GoogleChecksRepoScanV1alphaCodeScan({
    this.dataTypeClassifications,
    this.sourceCode,
  });

  GoogleChecksRepoScanV1alphaCodeScan.fromJson(core.Map json_)
    : this(
        dataTypeClassifications:
            (json_['dataTypeClassifications'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleChecksRepoScanV1alphaCodeScanDataTypeClassification.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
        sourceCode:
            json_.containsKey('sourceCode')
                ? GoogleChecksRepoScanV1alphaSourceCode.fromJson(
                  json_['sourceCode'] as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (dataTypeClassifications != null)
      'dataTypeClassifications': dataTypeClassifications!,
    if (sourceCode != null) 'sourceCode': sourceCode!,
  };
}

/// A request to classify data types.
class GoogleChecksRepoScanV1alphaCodeScanDataTypeClassification {
  /// Candidate data type.
  ///
  /// Required.
  /// Possible string values are:
  /// - "DATA_TYPE_UNSPECIFIED" : Not specified.
  /// - "DATA_TYPE_APPROXIMATE_LOCATION" : User or device physical location to
  /// an area greater than or equal to 3 square kilometers, such as the city a
  /// user is in, or location provided by Android's ACCESS_COARSE_LOCATION
  /// permission.
  /// - "DATA_TYPE_PRECISE_LOCATION" : User or device physical location within
  /// an area less than 3 square kilometers, such as location provided by
  /// Android's ACCESS_FINE_LOCATION permission.
  /// - "DATA_TYPE_PERSONAL_NAME" : How a user refers to themselves, such as
  /// their first or last name, or nickname.
  /// - "DATA_TYPE_EMAIL_ADDRESS" : A user's email address.
  /// - "DATA_TYPE_USER_IDS" : Identifiers that relate to an identifiable
  /// person. For example, an account ID, account number, or account name.
  /// - "DATA_TYPE_PHYSICAL_ADDRESS" : A user's address, such as a mailing or
  /// home address.
  /// - "DATA_TYPE_PHONE_NUMBER" : A user's phone number.
  /// - "DATA_TYPE_RACE_AND_ETHNICITY" : Information about a user's race or
  /// ethnicity.
  /// - "DATA_TYPE_POLITICAL_OR_RELIGIOUS_BELIEFS" : Information about a user's
  /// political or religious beliefs.
  /// - "DATA_TYPE_SEXUAL_ORIENTATION" : Information about a user's sexual
  /// orientation.
  /// - "DATA_TYPE_OTHER_PERSONAL_INFO" : Any other personal information such as
  /// date of birth, gender identity, veteran status, etc.
  /// - "DATA_TYPE_PAYMENT_INFO" : Information about a user's financial accounts
  /// such as credit card number.
  /// - "DATA_TYPE_PURCHASE_HISTORY" : Information about purchases or
  /// transactions a user has made.
  /// - "DATA_TYPE_CREDIT_SCORE" : Information about a user's credit score.
  /// - "DATA_TYPE_OTHER_FINANCIAL_INFO" : Any other financial information such
  /// as user salary or debts.
  /// - "DATA_TYPE_HEALTH_INFO" : Information about a user's health, such as
  /// medical records or symptoms.
  /// - "DATA_TYPE_FITNESS_INFO" : Information about a user's fitness, such as
  /// exercise or other physical activity.
  /// - "DATA_TYPE_EMAILS" : A user's emails including the email subject line,
  /// sender, recipients, and the content of the email.
  /// - "DATA_TYPE_TEXT_MESSAGES" : A user's text messages including the sender,
  /// recipients, and the content of the message.
  /// - "DATA_TYPE_OTHER_IN_APP_MESSAGES" : Any other types of messages. For
  /// example, instant messages or chat content.
  /// - "DATA_TYPE_PHOTOS" : A user's photos.
  /// - "DATA_TYPE_VIDEOS" : A user's videos.
  /// - "DATA_TYPE_VOICE_OR_SOUND_RECORDINGS" : A user's voice such as a
  /// voicemail or a sound recording.
  /// - "DATA_TYPE_MUSIC_FILES" : A user's music files.
  /// - "DATA_TYPE_OTHER_AUDIO_FILES" : Any other user-created or user-provided
  /// audio files.
  /// - "DATA_TYPE_FILES_AND_DOCS" : A user's files or documents, or information
  /// about their files or documents such as file names.
  /// - "DATA_TYPE_CALENDAR_EVENTS" : Information from a user's calendar such as
  /// events, event notes, and attendees.
  /// - "DATA_TYPE_CONTACTS" : Information about the user’s contacts such as
  /// contact names, message history, and social graph information like
  /// usernames, contact recency, contact frequency, interaction duration and
  /// call history.
  /// - "DATA_TYPE_APP_INTERACTIONS" : Information about how a user interacts
  /// with your app, such as the number of page views or taps.
  /// - "DATA_TYPE_IN_APP_SEARCH_HISTORY" : Information about what a user has
  /// searched for in your app.
  /// - "DATA_TYPE_INSTALLED_APPS" : Inventory of apps or packages installed on
  /// the user’s device.
  /// - "DATA_TYPE_OTHER_USER_GENERATED_CONTENT" : Any other user-generated
  /// content not listed here, or in any other section. For example, user bios,
  /// notes, or open-ended responses.
  /// - "DATA_TYPE_OTHER_ACTIONS" : Any other user activity or actions in-app
  /// not listed here such as gameplay, likes, and dialog options.
  /// - "DATA_TYPE_WEB_BROWSING_HISTORY" : Information about the websites a user
  /// has visited.
  /// - "DATA_TYPE_CRASH_LOGS" : Crash log data from your app. For example, the
  /// number of times your app has crashed, stack traces, or other information
  /// directly related to a crash.
  /// - "DATA_TYPE_PERFORMANCE_DIAGNOSTICS" : Information about the performance
  /// of your app. For example battery life, loading time, latency, framerate,
  /// or any technical diagnostics.
  /// - "DATA_TYPE_OTHER_APP_PERFORMANCE_DATA" : Any other app performance data
  /// not listed here.
  /// - "DATA_TYPE_DEVICE_OR_OTHER_IDS" : Identifiers that relate to an
  /// individual device, browser or app. For example, an IMEI number, MAC
  /// address, Widevine Device ID, Firebase installation ID, or advertising
  /// identifier.
  core.String? dataType;

  /// Line number (1-based).
  ///
  /// Required.
  core.int? lineNumber;

  GoogleChecksRepoScanV1alphaCodeScanDataTypeClassification({
    this.dataType,
    this.lineNumber,
  });

  GoogleChecksRepoScanV1alphaCodeScanDataTypeClassification.fromJson(
    core.Map json_,
  ) : this(
        dataType: json_['dataType'] as core.String?,
        lineNumber: json_['lineNumber'] as core.int?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (dataType != null) 'dataType': dataType!,
    if (lineNumber != null) 'lineNumber': lineNumber!,
  };
}

/// The request message for RepoScanService.GenerateScan.
class GoogleChecksRepoScanV1alphaGenerateScanRequest {
  /// CLI analysis results.
  ///
  /// Required.
  GoogleChecksRepoScanV1alphaCliAnalysis? cliAnalysis;

  /// CLI version.
  ///
  /// Required.
  core.String? cliVersion;

  /// Local scan path.
  ///
  /// Required.
  core.String? localScanPath;

  /// SCM metadata.
  ///
  /// Required.
  GoogleChecksRepoScanV1alphaScmMetadata? scmMetadata;

  GoogleChecksRepoScanV1alphaGenerateScanRequest({
    this.cliAnalysis,
    this.cliVersion,
    this.localScanPath,
    this.scmMetadata,
  });

  GoogleChecksRepoScanV1alphaGenerateScanRequest.fromJson(core.Map json_)
    : this(
        cliAnalysis:
            json_.containsKey('cliAnalysis')
                ? GoogleChecksRepoScanV1alphaCliAnalysis.fromJson(
                  json_['cliAnalysis'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        cliVersion: json_['cliVersion'] as core.String?,
        localScanPath: json_['localScanPath'] as core.String?,
        scmMetadata:
            json_.containsKey('scmMetadata')
                ? GoogleChecksRepoScanV1alphaScmMetadata.fromJson(
                  json_['scmMetadata'] as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (cliAnalysis != null) 'cliAnalysis': cliAnalysis!,
    if (cliVersion != null) 'cliVersion': cliVersion!,
    if (localScanPath != null) 'localScanPath': localScanPath!,
    if (scmMetadata != null) 'scmMetadata': scmMetadata!,
  };
}

/// The response message for RepoScanService.ListRepoScans.
class GoogleChecksRepoScanV1alphaListRepoScansResponse {
  /// A token which can be sent as `page_token` to retrieve the next page.
  ///
  /// If this field is omitted, there are no subsequent pages.
  core.String? nextPageToken;

  /// The repo scans for the specified app.
  core.List<GoogleChecksRepoScanV1alphaRepoScan>? repoScans;

  GoogleChecksRepoScanV1alphaListRepoScansResponse({
    this.nextPageToken,
    this.repoScans,
  });

  GoogleChecksRepoScanV1alphaListRepoScansResponse.fromJson(core.Map json_)
    : this(
        nextPageToken: json_['nextPageToken'] as core.String?,
        repoScans:
            (json_['repoScans'] as core.List?)
                ?.map(
                  (value) => GoogleChecksRepoScanV1alphaRepoScan.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (nextPageToken != null) 'nextPageToken': nextPageToken!,
    if (repoScans != null) 'repoScans': repoScans!,
  };
}

/// Pull request info.
class GoogleChecksRepoScanV1alphaPullRequest {
  /// For PR analysis, we compare against the most recent scan of the base
  /// branch to highlight new issues.
  ///
  /// Required.
  core.String? baseBranch;

  /// This can be supplied by the user or parsed automatically from predefined
  /// CI environment variables.
  ///
  /// Required.
  core.String? prNumber;

  GoogleChecksRepoScanV1alphaPullRequest({this.baseBranch, this.prNumber});

  GoogleChecksRepoScanV1alphaPullRequest.fromJson(core.Map json_)
    : this(
        baseBranch: json_['baseBranch'] as core.String?,
        prNumber: json_['prNumber'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (baseBranch != null) 'baseBranch': baseBranch!,
    if (prNumber != null) 'prNumber': prNumber!,
  };
}

/// Repo scan.
class GoogleChecksRepoScanV1alphaRepoScan {
  /// CLI version.
  core.String? cliVersion;

  /// Local scan path.
  core.String? localScanPath;

  /// Identifier.
  ///
  /// Resource name of the scan.
  core.String? name;

  /// A URL to view results.
  core.String? resultsUri;

  /// SCM metadata.
  GoogleChecksRepoScanV1alphaScmMetadata? scmMetadata;

  /// Data sources detected.
  core.List<GoogleChecksRepoScanV1alphaSource>? sources;

  GoogleChecksRepoScanV1alphaRepoScan({
    this.cliVersion,
    this.localScanPath,
    this.name,
    this.resultsUri,
    this.scmMetadata,
    this.sources,
  });

  GoogleChecksRepoScanV1alphaRepoScan.fromJson(core.Map json_)
    : this(
        cliVersion: json_['cliVersion'] as core.String?,
        localScanPath: json_['localScanPath'] as core.String?,
        name: json_['name'] as core.String?,
        resultsUri: json_['resultsUri'] as core.String?,
        scmMetadata:
            json_.containsKey('scmMetadata')
                ? GoogleChecksRepoScanV1alphaScmMetadata.fromJson(
                  json_['scmMetadata'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        sources:
            (json_['sources'] as core.List?)
                ?.map(
                  (value) => GoogleChecksRepoScanV1alphaSource.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (cliVersion != null) 'cliVersion': cliVersion!,
    if (localScanPath != null) 'localScanPath': localScanPath!,
    if (name != null) 'name': name!,
    if (resultsUri != null) 'resultsUri': resultsUri!,
    if (scmMetadata != null) 'scmMetadata': scmMetadata!,
    if (sources != null) 'sources': sources!,
  };
}

/// SCM metadata.
class GoogleChecksRepoScanV1alphaScmMetadata {
  /// Branch name.
  ///
  /// Required.
  core.String? branch;

  /// Contains info about the associated pull request.
  ///
  /// This is only populated for pull request scans.
  ///
  /// Optional.
  GoogleChecksRepoScanV1alphaPullRequest? pullRequest;

  /// Git remote URL.
  ///
  /// Required.
  core.String? remoteUri;

  /// Revision ID, e.g. Git commit hash.
  ///
  /// Required.
  core.String? revisionId;

  GoogleChecksRepoScanV1alphaScmMetadata({
    this.branch,
    this.pullRequest,
    this.remoteUri,
    this.revisionId,
  });

  GoogleChecksRepoScanV1alphaScmMetadata.fromJson(core.Map json_)
    : this(
        branch: json_['branch'] as core.String?,
        pullRequest:
            json_.containsKey('pullRequest')
                ? GoogleChecksRepoScanV1alphaPullRequest.fromJson(
                  json_['pullRequest'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        remoteUri: json_['remoteUri'] as core.String?,
        revisionId: json_['revisionId'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (branch != null) 'branch': branch!,
    if (pullRequest != null) 'pullRequest': pullRequest!,
    if (remoteUri != null) 'remoteUri': remoteUri!,
    if (revisionId != null) 'revisionId': revisionId!,
  };
}

/// Represents a data source finding.
class GoogleChecksRepoScanV1alphaSource {
  /// Source code attribution for the finding.
  ///
  /// Optional.
  GoogleChecksRepoScanV1alphaCodeAttribution? codeAttribution;

  /// Data type.
  ///
  /// Required.
  /// Possible string values are:
  /// - "DATA_TYPE_UNSPECIFIED" : Not specified.
  /// - "DATA_TYPE_APPROXIMATE_LOCATION" : User or device physical location to
  /// an area greater than or equal to 3 square kilometers, such as the city a
  /// user is in, or location provided by Android's ACCESS_COARSE_LOCATION
  /// permission.
  /// - "DATA_TYPE_PRECISE_LOCATION" : User or device physical location within
  /// an area less than 3 square kilometers, such as location provided by
  /// Android's ACCESS_FINE_LOCATION permission.
  /// - "DATA_TYPE_PERSONAL_NAME" : How a user refers to themselves, such as
  /// their first or last name, or nickname.
  /// - "DATA_TYPE_EMAIL_ADDRESS" : A user's email address.
  /// - "DATA_TYPE_USER_IDS" : Identifiers that relate to an identifiable
  /// person. For example, an account ID, account number, or account name.
  /// - "DATA_TYPE_PHYSICAL_ADDRESS" : A user's address, such as a mailing or
  /// home address.
  /// - "DATA_TYPE_PHONE_NUMBER" : A user's phone number.
  /// - "DATA_TYPE_RACE_AND_ETHNICITY" : Information about a user's race or
  /// ethnicity.
  /// - "DATA_TYPE_POLITICAL_OR_RELIGIOUS_BELIEFS" : Information about a user's
  /// political or religious beliefs.
  /// - "DATA_TYPE_SEXUAL_ORIENTATION" : Information about a user's sexual
  /// orientation.
  /// - "DATA_TYPE_OTHER_PERSONAL_INFO" : Any other personal information such as
  /// date of birth, gender identity, veteran status, etc.
  /// - "DATA_TYPE_PAYMENT_INFO" : Information about a user's financial accounts
  /// such as credit card number.
  /// - "DATA_TYPE_PURCHASE_HISTORY" : Information about purchases or
  /// transactions a user has made.
  /// - "DATA_TYPE_CREDIT_SCORE" : Information about a user's credit score.
  /// - "DATA_TYPE_OTHER_FINANCIAL_INFO" : Any other financial information such
  /// as user salary or debts.
  /// - "DATA_TYPE_HEALTH_INFO" : Information about a user's health, such as
  /// medical records or symptoms.
  /// - "DATA_TYPE_FITNESS_INFO" : Information about a user's fitness, such as
  /// exercise or other physical activity.
  /// - "DATA_TYPE_EMAILS" : A user's emails including the email subject line,
  /// sender, recipients, and the content of the email.
  /// - "DATA_TYPE_TEXT_MESSAGES" : A user's text messages including the sender,
  /// recipients, and the content of the message.
  /// - "DATA_TYPE_OTHER_IN_APP_MESSAGES" : Any other types of messages. For
  /// example, instant messages or chat content.
  /// - "DATA_TYPE_PHOTOS" : A user's photos.
  /// - "DATA_TYPE_VIDEOS" : A user's videos.
  /// - "DATA_TYPE_VOICE_OR_SOUND_RECORDINGS" : A user's voice such as a
  /// voicemail or a sound recording.
  /// - "DATA_TYPE_MUSIC_FILES" : A user's music files.
  /// - "DATA_TYPE_OTHER_AUDIO_FILES" : Any other user-created or user-provided
  /// audio files.
  /// - "DATA_TYPE_FILES_AND_DOCS" : A user's files or documents, or information
  /// about their files or documents such as file names.
  /// - "DATA_TYPE_CALENDAR_EVENTS" : Information from a user's calendar such as
  /// events, event notes, and attendees.
  /// - "DATA_TYPE_CONTACTS" : Information about the user’s contacts such as
  /// contact names, message history, and social graph information like
  /// usernames, contact recency, contact frequency, interaction duration and
  /// call history.
  /// - "DATA_TYPE_APP_INTERACTIONS" : Information about how a user interacts
  /// with your app, such as the number of page views or taps.
  /// - "DATA_TYPE_IN_APP_SEARCH_HISTORY" : Information about what a user has
  /// searched for in your app.
  /// - "DATA_TYPE_INSTALLED_APPS" : Inventory of apps or packages installed on
  /// the user’s device.
  /// - "DATA_TYPE_OTHER_USER_GENERATED_CONTENT" : Any other user-generated
  /// content not listed here, or in any other section. For example, user bios,
  /// notes, or open-ended responses.
  /// - "DATA_TYPE_OTHER_ACTIONS" : Any other user activity or actions in-app
  /// not listed here such as gameplay, likes, and dialog options.
  /// - "DATA_TYPE_WEB_BROWSING_HISTORY" : Information about the websites a user
  /// has visited.
  /// - "DATA_TYPE_CRASH_LOGS" : Crash log data from your app. For example, the
  /// number of times your app has crashed, stack traces, or other information
  /// directly related to a crash.
  /// - "DATA_TYPE_PERFORMANCE_DIAGNOSTICS" : Information about the performance
  /// of your app. For example battery life, loading time, latency, framerate,
  /// or any technical diagnostics.
  /// - "DATA_TYPE_OTHER_APP_PERFORMANCE_DATA" : Any other app performance data
  /// not listed here.
  /// - "DATA_TYPE_DEVICE_OR_OTHER_IDS" : Identifiers that relate to an
  /// individual device, browser or app. For example, an IMEI number, MAC
  /// address, Widevine Device ID, Firebase installation ID, or advertising
  /// identifier.
  core.String? dataType;

  /// Whether the finding was marked as a false positive.
  ///
  /// Optional.
  core.bool? falsePositive;

  GoogleChecksRepoScanV1alphaSource({
    this.codeAttribution,
    this.dataType,
    this.falsePositive,
  });

  GoogleChecksRepoScanV1alphaSource.fromJson(core.Map json_)
    : this(
        codeAttribution:
            json_.containsKey('codeAttribution')
                ? GoogleChecksRepoScanV1alphaCodeAttribution.fromJson(
                  json_['codeAttribution']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        dataType: json_['dataType'] as core.String?,
        falsePositive: json_['falsePositive'] as core.bool?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (codeAttribution != null) 'codeAttribution': codeAttribution!,
    if (dataType != null) 'dataType': dataType!,
    if (falsePositive != null) 'falsePositive': falsePositive!,
  };
}

/// Contains source code from a repo.
class GoogleChecksRepoScanV1alphaSourceCode {
  /// Source code.
  ///
  /// Required.
  core.String? code;

  /// End line number (1-based).
  ///
  /// Required.
  core.int? endLine;

  /// Path of the file.
  ///
  /// Required.
  core.String? path;

  /// Start line number (1-based).
  ///
  /// Required.
  core.int? startLine;

  GoogleChecksRepoScanV1alphaSourceCode({
    this.code,
    this.endLine,
    this.path,
    this.startLine,
  });

  GoogleChecksRepoScanV1alphaSourceCode.fromJson(core.Map json_)
    : this(
        code: json_['code'] as core.String?,
        endLine: json_['endLine'] as core.int?,
        path: json_['path'] as core.String?,
        startLine: json_['startLine'] as core.int?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (code != null) 'code': code!,
    if (endLine != null) 'endLine': endLine!,
    if (path != null) 'path': path!,
    if (startLine != null) 'startLine': startLine!,
  };
}

/// The request message for ReportService.AnalyzeUpload.
class GoogleChecksReportV1alphaAnalyzeUploadRequest {
  /// The type of the uploaded app binary.
  ///
  /// If not provided, the server assumes APK file for Android and IPA file for
  /// iOS.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "APP_BINARY_FILE_TYPE_UNSPECIFIED" : Not specified.
  /// - "ANDROID_APK" : .apk file type.
  /// - "ANDROID_AAB" : .aab (app bundle) file type.
  /// - "IOS_IPA" : .ipa file type.
  core.String? appBinaryFileType;

  /// Git commit hash or changelist number associated with the upload.
  ///
  /// Optional.
  core.String? codeReferenceId;

  GoogleChecksReportV1alphaAnalyzeUploadRequest({
    this.appBinaryFileType,
    this.codeReferenceId,
  });

  GoogleChecksReportV1alphaAnalyzeUploadRequest.fromJson(core.Map json_)
    : this(
        appBinaryFileType: json_['appBinaryFileType'] as core.String?,
        codeReferenceId: json_['codeReferenceId'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (appBinaryFileType != null) 'appBinaryFileType': appBinaryFileType!,
    if (codeReferenceId != null) 'codeReferenceId': codeReferenceId!,
  };
}

/// Information about the analyzed app bundle.
class GoogleChecksReportV1alphaAppBundle {
  /// Unique id of the bundle.
  ///
  /// For example: "com.google.Gmail".
  core.String? bundleId;

  /// Git commit hash or changelist number associated with the release.
  core.String? codeReferenceId;

  /// Identifies the type of release.
  /// Possible string values are:
  /// - "APP_BUNDLE_RELEASE_TYPE_UNSPECIFIED" : Not specified.
  /// - "PUBLIC" : Published production bundle.
  /// - "PRE_RELEASE" : Pre-release bundle.
  core.String? releaseType;

  /// The user-visible version of the bundle such as the Android `versionName`
  /// or iOS `CFBundleShortVersionString`.
  ///
  /// For example: "7.21.1".
  core.String? version;

  /// The version used throughout the operating system and store to identify the
  /// build such as the Android `versionCode` or iOS `CFBundleVersion`.
  core.String? versionId;

  GoogleChecksReportV1alphaAppBundle({
    this.bundleId,
    this.codeReferenceId,
    this.releaseType,
    this.version,
    this.versionId,
  });

  GoogleChecksReportV1alphaAppBundle.fromJson(core.Map json_)
    : this(
        bundleId: json_['bundleId'] as core.String?,
        codeReferenceId: json_['codeReferenceId'] as core.String?,
        releaseType: json_['releaseType'] as core.String?,
        version: json_['version'] as core.String?,
        versionId: json_['versionId'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (bundleId != null) 'bundleId': bundleId!,
    if (codeReferenceId != null) 'codeReferenceId': codeReferenceId!,
    if (releaseType != null) 'releaseType': releaseType!,
    if (version != null) 'version': version!,
    if (versionId != null) 'versionId': versionId!,
  };
}

/// A check that was run on your app.
class GoogleChecksReportV1alphaCheck {
  /// Regulations and policies that serve as the legal basis for the check.
  core.List<GoogleChecksReportV1alphaCheckCitation>? citations;

  /// Evidence that substantiates the check result.
  GoogleChecksReportV1alphaCheckEvidence? evidence;

  /// Regions that are impacted by the check.
  ///
  /// For more info, see https://google.aip.dev/143#countries-and-regions.
  core.List<core.String>? regionCodes;

  /// The urgency or risk level of the check.
  /// Possible string values are:
  /// - "CHECK_SEVERITY_UNSPECIFIED" : Not specified.
  /// - "PRIORITY" : Important privacy issue.
  /// - "POTENTIAL" : Potential privacy issue.
  /// - "OPPORTUNITY" : Opportunity to improve privacy coverage.
  core.String? severity;

  /// The result after running the check.
  /// Possible string values are:
  /// - "CHECK_STATE_UNSPECIFIED" : Not specified.
  /// - "PASSED" : The check passed.
  /// - "FAILED" : The check failed.
  /// - "UNCHECKED" : The check was not run.
  core.String? state;

  /// Additional information about the check state in relation to past reports.
  GoogleChecksReportV1alphaCheckStateMetadata? stateMetadata;

  /// The type of check that was run.
  ///
  /// A type will only appear once in a report's list of checks.
  /// Possible string values are:
  /// - "CHECK_TYPE_UNSPECIFIED" : Not specified.
  /// - "STORE_LISTING_PRIVACY_POLICY_LINK_PRESENT" : Checks that your store
  /// listing includes a working link to your privacy policy.
  /// - "PRIVACY_POLICY_UPDATE_DATE_RECENT" : Checks that your privacy policy
  /// has been updated recently.
  /// - "PRIVACY_POLICY_GDPR_GENERAL_RULES" : Checks if your privacy policy
  /// references rights under GDPR for users in the EU.
  /// - "PRIVACY_POLICY_CCPA_GENERAL_RULES" : Checks if your privacy policy
  /// references rights under the CCPA.
  /// - "PRIVACY_POLICY_COLLECTION_CATEGORIES_DATA_NOTICE" : Checks if your
  /// privacy policy mentions the categories of personal data that are
  /// collected.
  /// - "PRIVACY_POLICY_PROCESSING_PURPOSE_DATA_NOTICE" : Checks if your privacy
  /// policy explains why personal data is processed.
  /// - "PRIVACY_POLICY_SHARING_CATEGORIES_DATA_NOTICE" : Checks if your privacy
  /// policy includes information about third-party sharing of personal data.
  /// - "PRIVACY_POLICY_DATA_RETENTION_NOTICE" : Checks if your privacy policy
  /// describes your data retention practices.
  /// - "PRIVACY_POLICY_CONTACT_DETAILS_NOTICE" : Checks if contact information
  /// is included in your privacy policy.
  /// - "PRIVACY_POLICY_CHILDREN_GENERAL_RULES" : Checks if information about
  /// requirements related to children is included in your privacy policy.
  /// - "PRIVACY_POLICY_DATA_TYPE_PHONE_NUMBER" : Checks if the Phone Number
  /// data type declaration in your privacy policy matches usage.
  /// - "PRIVACY_POLICY_DATA_TYPE_USER_ACCOUNT_INFO" : Checks if the User
  /// Account Info data type declaration in your privacy policy matches usage.
  /// - "PRIVACY_POLICY_DATA_TYPE_PRECISE_LOCATION" : Checks if the Precise
  /// Location data type declaration in your privacy policy matches usage.
  /// - "PRIVACY_POLICY_DATA_TYPE_DEVICE_ID" : Checks if the Device ID data type
  /// declaration in your privacy policy matches usage.
  /// - "PRIVACY_POLICY_DATA_TYPE_APPS_ON_DEVICE" : Checks if the Apps on Device
  /// data type declaration in your privacy policy matches usage.
  /// - "PRIVACY_POLICY_DATA_TYPE_CONTACTS" : Checks if the Contacts data type
  /// declaration in your privacy policy matches usage.
  /// - "PRIVACY_POLICY_DATA_TYPE_TEXT_MESSAGES" : Checks if the Text Messages
  /// data type declaration in your privacy policy matches usage.
  /// - "PRIVACY_POLICY_DATA_TYPE_PII" : Checks if the PII data type declaration
  /// in your privacy policy matches usage.
  /// - "PRIVACY_POLICY_DATA_TYPE_PII_CATEGORIES" : Checks if the PII Categories
  /// data type declaration in your privacy policy matches usage.
  /// - "PRIVACY_POLICY_DATA_TYPE_HEALTH_AND_BIOMETRIC" : Checks if the Health
  /// and Biometric data type declaration in your privacy policy matches usage.
  /// - "PRIVACY_POLICY_BRAZIL_LGPD_GENERAL_RULES" : Checks if your privacy
  /// policy references rights under LGPD for users in Brazil.
  /// - "PRIVACY_POLICY_VIRGINIA_VCDPA_GENERAL_RULES" : Checks if your privacy
  /// policy references rights under VCDPA for users in Virginia.
  /// - "PRIVACY_POLICY_AFFILIATION_MENTION" : Checks if your privacy policy
  /// identifies your company or app name(s).
  /// - "PRIVACY_POLICY_RIGHT_TO_DELETE_NOTICE" : Checks if your privacy policy
  /// mentions your users' right to delete their data.
  /// - "PRIVACY_POLICY_RIGHT_TO_ACCESS_NOTICE" : Checks if your privacy policy
  /// mentions your users' right to access the data held about them.
  /// - "PRIVACY_POLICY_RIGHT_TO_RECTIFICATION_NOTICE" : Checks if your privacy
  /// policy mentions your users' right to correct inaccuracies within their
  /// data.
  /// - "PRIVACY_POLICY_RIGHT_TO_KNOW_ABOUT_SELLING_NOTICE" : Checks if your
  /// privacy policy mentions your users' right to know about information
  /// selling.
  /// - "PRIVACY_POLICY_RIGHT_TO_KNOW_ABOUT_SHARING_NOTICE" : Checks if your
  /// privacy policy mentions your users' right to know about information
  /// sharing.
  /// - "PRIVACY_POLICY_RIGHT_TO_OPT_OUT_FROM_SELLING_NOTICE" : Checks if your
  /// privacy policy mentions your users' right to opt out from information
  /// selling.
  /// - "PRIVACY_POLICY_METHOD_TO_OPT_OUT_FROM_SELLING_OR_SHARING_NOTICE" :
  /// Checks if your privacy policy explains how your users opt out from the
  /// selling or sharing of their data.
  /// - "PRIVACY_POLICY_DATA_CONTROLLER_IDENTITY" : Checks if your privacy
  /// policy provides the name and contact information for your data controller.
  /// - "PRIVACY_POLICY_DPO_CONTACT_DETAILS" : Checks if your privacy policy
  /// provides the name and contact information for your Data Protection
  /// Officer.
  /// - "PRIVACY_POLICY_RIGHT_TO_LODGE_A_COMPLAINT" : Checks if your privacy
  /// policy mentions your users' right to lodge a complaint with a supervisory
  /// authority.
  /// - "PRIVACY_POLICY_LEGAL_BASIS" : Checks if your privacy policy mentions
  /// the legal basis you rely on for processing your users' data.
  /// - "PRIVACY_POLICY_CHILDREN_INFO_COLLECTION" : Checks if your privacy
  /// policy mentions what personal information is collected from children.
  /// - "PRIVACY_POLICY_CHILDREN_INFO_USAGE_PURPOSES" : Checks if your privacy
  /// policy mentions why you collect personal information from children.
  /// - "PRIVACY_POLICY_CHILDREN_INFO_DISCLOSURE_PRACTICES" : Checks if your
  /// privacy policy mentions what personal information from children is shared
  /// with third parties.
  /// - "PRIVACY_POLICY_CHILDREN_INFO_PUBLICITY" : Checks if your privacy policy
  /// mentions whether your app allows children to make their personal
  /// information publicly available.
  /// - "PRIVACY_POLICY_PARENTS_METHOD_OF_INFO_DELETION" : Checks if your
  /// privacy policy mentions how parents/caregivers/guardians can request the
  /// deletion of their child's personal information.
  /// - "PRIVACY_POLICY_PARENTS_METHOD_TO_INFO_REVIEW" : Checks if your privacy
  /// policy mentions how parents/caregivers/guardians can review their child's
  /// personal information.
  /// - "PRIVACY_POLICY_PARENTS_METHOD_TO_STOP_FURTHER_INFO_COLLECTION_USE" :
  /// Checks if your privacy policy explains how a parent/caregiver/guardian can
  /// stop the collection/use from their child's personal information.
  /// - "PRIVACY_POLICY_PARENTS_RIGHT_TO_INFO_DELETION" : Checks if your privacy
  /// policy mentions the right of a parent/caregiver/guardian to request the
  /// deletion of their child's personal information.
  /// - "PRIVACY_POLICY_PARENTS_RIGHT_TO_INFO_REVIEW" : Checks if your privacy
  /// policy mentions the right of a parent/caregiver/guardian to review their
  /// child's personal information.
  /// - "PRIVACY_POLICY_PARENTS_RIGHT_TO_STOP_FURTHER_INFO_COLLECTION_USE" :
  /// Checks if your privacy policy mentions the right of a
  /// parent/caregiver/guardian to stop collection/use from their child's
  /// personal information.
  /// - "PRIVACY_POLICY_PSL_APPROXIMATE_LOCATION" : Checks if your privacy
  /// policy mentions collection of your users' approximate location if this
  /// data type is declared in your Play Data Safety Section.
  /// - "PRIVACY_POLICY_PSL_PRECISE_LOCATION" : Checks if your privacy policy
  /// mentions collection of your users' precise location if this data type is
  /// declared in your Play Data Safety Section.
  /// - "PRIVACY_POLICY_PSL_NAME" : Checks if your privacy policy mentions
  /// collection of your users' personal names if this data type is declared in
  /// your Play Data Safety Section.
  /// - "PRIVACY_POLICY_PSL_EMAIL_ADDRESS" : Checks if your privacy policy
  /// mentions collection of your users' email addresses if this data type is
  /// declared in your Play Data Safety Section.
  /// - "PRIVACY_POLICY_PSL_USER_IDENTIFIERS" : Checks if your privacy policy
  /// mentions collection of your users' user IDs if this data type is declared
  /// in your Play Data Safety Section.
  /// - "PRIVACY_POLICY_PSL_ADDRESS" : Checks if your privacy policy mentions
  /// collection of your users' physical addresses if this data type is declared
  /// in your Play Data Safety Section.
  /// - "PRIVACY_POLICY_PSL_PHONE_NUMBER" : Checks if your privacy policy
  /// mentions collection of your users' phone numbers if this data type is
  /// declared in your Play Data Safety Section.
  /// - "PRIVACY_POLICY_PSL_RACE_AND_ETHNICITY" : Checks if your privacy policy
  /// mentions collection of your users' race or ethnicity if this data type is
  /// declared in your Play Data Safety Section.
  /// - "PRIVACY_POLICY_PSL_CREDIT_SCORE" : Checks if your privacy policy
  /// mentions collection of your users' credit score if this data type is
  /// declared in your Play Data Safety Section.
  /// - "PRIVACY_POLICY_PSL_PURCHASE_HISTORY" : Checks if your privacy policy
  /// mentions collection of your users' purchase history if this data type is
  /// declared in your Play Data Safety Section.
  /// - "PRIVACY_POLICY_PSL_HEALTH_INFO" : Checks if your privacy policy
  /// mentions collection of your users' health info if this data type is
  /// declared in your Play Data Safety Section.
  /// - "PRIVACY_POLICY_PSL_FITNESS_INFO" : Checks if your privacy policy
  /// mentions collection of your users' fitness info if this data type is
  /// declared in your Play Data Safety Section.
  /// - "PRIVACY_POLICY_PSL_EMAIL_MESSAGES" : Checks if your privacy policy
  /// mentions collection of your users' emails if this data type is declared in
  /// your Play Data Safety Section.
  /// - "PRIVACY_POLICY_PSL_TEXT_MESSAGES" : Checks if your privacy policy
  /// mentions collection of your users' text messages if this data type is
  /// declared in your Play Data Safety Section.
  /// - "PRIVACY_POLICY_PSL_PHOTOS" : Checks if your privacy policy mentions
  /// collection of your users' photos if this data type is declared in your
  /// Play Data Safety Section.
  /// - "PRIVACY_POLICY_PSL_VIDEOS" : Checks if your privacy policy mentions
  /// collection of your users' videos if this data type is declared in your
  /// Play Data Safety Section.
  /// - "PRIVACY_POLICY_PSL_MUSIC_FILES" : Checks if your privacy policy
  /// mentions collection of your users' music files if this data type is
  /// declared in your Play Data Safety Section.
  /// - "PRIVACY_POLICY_PSL_VOICE_OR_SOUND_RECORDINGS" : Checks if your privacy
  /// policy mentions collection of your users' voice or sound recordings if
  /// this data type is declared in your Play Data Safety Section.
  /// - "PRIVACY_POLICY_PSL_FILES_AND_DOCS" : Checks if your privacy policy
  /// mentions collection of your users' files or documents if this data type is
  /// declared in your Play Data Safety Section.
  /// - "PRIVACY_POLICY_PSL_CALENDAR_EVENTS" : Checks if your privacy policy
  /// mentions collection of your users' calendar events if this data type is
  /// declared in your Play Data Safety Section.
  /// - "PRIVACY_POLICY_PSL_CONTACTS" : Checks if your privacy policy mentions
  /// collection of your users' contacts if this data type is declared in your
  /// Play Data Safety Section.
  /// - "PRIVACY_POLICY_PSL_APP_INTERACTIONS" : Checks if your privacy policy
  /// mentions collection of your users' app interactions if this data type is
  /// declared in your Play Data Safety Section.
  /// - "PRIVACY_POLICY_PSL_IN_APP_SEARCH_HISTORY" : Checks if your privacy
  /// policy mentions collection of your users' in-app search history if this
  /// data type is declared in your Play Data Safety Section.
  /// - "PRIVACY_POLICY_PSL_WEB_BROWSING_HISTORY" : Checks if your privacy
  /// policy mentions collection of your users' web browsing history if this
  /// data type is declared in your Play Data Safety Section.
  /// - "PRIVACY_POLICY_PSL_INSTALLED_APPS" : Checks if your privacy policy
  /// mentions collection of your users' installed apps if this data type is
  /// declared in your Play Data Safety Section.
  /// - "PRIVACY_POLICY_PSL_CRASH_LOGS" : Checks if your privacy policy mentions
  /// collection of your users' crash logs if this data type is declared in your
  /// Play Data Safety Section.
  /// - "PRIVACY_POLICY_PSL_DIAGNOSTICS" : Checks if your privacy policy
  /// mentions collection of your users' performance diagnostics if this data
  /// type is declared in your Play Data Safety Section.
  /// - "PRIVACY_POLICY_PSL_DEVICE_OR_OTHER_IDS" : Checks if your privacy policy
  /// mentions collection of your users' device or other IDs if this data type
  /// is declared in your Play Data Safety Section.
  /// - "DATA_MONITORING_NEW_ENDPOINT" : Checks if there is a new endpoint we've
  /// recently detected. Because this check accounts for flakiness, it may fail
  /// for several weeks even if the endpoint is not detected in the current
  /// report.
  /// - "DATA_MONITORING_NEW_PERMISSION" : Checks if there is a new permission
  /// we've recently detected. Because this check accounts for flakiness, it may
  /// fail for several weeks even if the permission is not detected in the
  /// current report.
  /// - "DATA_MONITORING_NEW_DATA_TYPE" : Checks if there is a new data type
  /// we've recently detected. Because this check accounts for flakiness, it may
  /// fail for several weeks even if the data type is not detected in the
  /// current report.
  /// - "DATA_MONITORING_NEW_SDK" : Checks if there is a new SDK we've recently
  /// detected. Because this check accounts for flakiness, it may fail for
  /// several weeks even if the SDK is not detected in the current report.
  /// - "DATA_MONITORING_ENCRYPTION" : Checks if there is any endpoint contacted
  /// using HTTP protocol instead of HTTPS. If no protocol is found in the URL,
  /// the endpoint is not considered for analysis.
  /// - "DATA_MONITORING_NEW_DATA_TYPE_VERSION_DIFF" : Checks if new data types
  /// have been detected since a specific app version.
  /// - "DATA_MONITORING_NEW_ENDPOINT_VERSION_DIFF" : Checks if new endpoints
  /// have been detected since a specific app version.
  /// - "DATA_MONITORING_NEW_PERMISSION_VERSION_DIFF" : Checks if new
  /// permissions have been detected since a specific app version.
  /// - "DATA_MONITORING_NEW_SDK_VERSION_DIFF" : Checks if new SDKs have been
  /// detected since a specific app version.
  /// - "DATA_MONITORING_SDKS_DENYLIST_VIOLATION" : Checks if any SDKs were
  /// detected that are specified in the denylist.
  /// - "DATA_MONITORING_PERMISSIONS_DENYLIST_VIOLATION" : Checks if any
  /// permissions were detected that are specified in the denylist.
  /// - "DATA_MONITORING_ENDPOINTS_DENYLIST_VIOLATION" : Checks if any endpoints
  /// were detected that are specified in the denylist.
  /// - "DATA_MONITORING_OUTDATED_SDK_VERSION" : Checks if there are any
  /// outdated SDKs.
  /// - "DATA_MONITORING_CRITICAL_SDK_ISSUE" : Checks if there are any SDKs with
  /// critical issues.
  /// - "PRIVACY_POLICY_DATA_TYPE_SENSITIVE_INFO" : Checks if the Sensitive
  /// Information data type declaration matches usage.
  /// - "DATA_MONITORING_PII_LOGCAT_LEAK" : Checks if there were any PII leaked
  /// to device logs.
  /// - "DATA_MONITORING_MINIMIZE_PERMISSION_MEDIA" : Checks if there are media
  /// (photo and video) permissions that are considered sensitive and should be
  /// minimized for Android.
  /// - "DATA_MONITORING_MINIMIZE_PERMISSION_CAMERA" : Checks if there are
  /// camera use permissions that are considered sensitive and should be
  /// minimized for Android.
  /// - "DATA_MONITORING_MINIMIZE_PERMISSION_DOCUMENTS" : Checks if there are
  /// documents and file permissions that are considered sensitive and should be
  /// minimized for Android.
  core.String? type;

  GoogleChecksReportV1alphaCheck({
    this.citations,
    this.evidence,
    this.regionCodes,
    this.severity,
    this.state,
    this.stateMetadata,
    this.type,
  });

  GoogleChecksReportV1alphaCheck.fromJson(core.Map json_)
    : this(
        citations:
            (json_['citations'] as core.List?)
                ?.map(
                  (value) => GoogleChecksReportV1alphaCheckCitation.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        evidence:
            json_.containsKey('evidence')
                ? GoogleChecksReportV1alphaCheckEvidence.fromJson(
                  json_['evidence'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        regionCodes:
            (json_['regionCodes'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        severity: json_['severity'] as core.String?,
        state: json_['state'] as core.String?,
        stateMetadata:
            json_.containsKey('stateMetadata')
                ? GoogleChecksReportV1alphaCheckStateMetadata.fromJson(
                  json_['stateMetadata'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        type: json_['type'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (citations != null) 'citations': citations!,
    if (evidence != null) 'evidence': evidence!,
    if (regionCodes != null) 'regionCodes': regionCodes!,
    if (severity != null) 'severity': severity!,
    if (state != null) 'state': state!,
    if (stateMetadata != null) 'stateMetadata': stateMetadata!,
    if (type != null) 'type': type!,
  };
}

/// Regulation or policy that serves as the legal basis for the check.
class GoogleChecksReportV1alphaCheckCitation {
  /// Citation type.
  /// Possible string values are:
  /// - "CITATION_TYPE_UNSPECIFIED" : Not specified.
  /// - "COPPA" : Children's Online Privacy Protection Act.
  /// - "GDPR" : General Data Protection Regulation.
  /// - "FERPA" : Family Educational Rights and Privacy Act.
  /// - "CAL_OPPA" : The California Online Privacy Protection Act.
  /// - "CCPA" : California Consumer Privacy Act.
  /// - "SOPIPA" : Student Online Personal Information Protection Act.
  /// - "LGPD" : Lei Geral de Proteção de Dados.
  /// - "CPRA" : California Consumer Privacy Act.
  /// - "VCDPA" : Virginia Consumer Data Protection Act.
  /// - "GOOGLE_PLAY_POLICY" : Google Play Policy.
  /// - "APP_STORE_POLICY" : App Store Policy.
  /// - "CPA" : Colorado Privacy Act.
  /// - "CTDPA" : Connecticut Data Privacy Act.
  /// - "UCPA" : Utah Consumer Privacy Act.
  /// - "PIPEDA" : Personal Information Protection and Electronic Documents Act.
  /// - "ALBERTA_PIPA" : Alberta (Canada) Personal Information Protection Act.
  /// - "QUEBEC_ACT" : Quebec: Act Respecting the Protection of Personal
  /// Information in the Private Sector.
  /// - "QUEBEC_BILL_64" : Quebec Bill 64: An Act to Modernize Legislative
  /// Provisions as Regards the Protection of Personal Information.
  /// - "CHINA_PIPL" : China Personal Information Protection Law.
  /// - "SOUTH_KOREA_PIPA" : South Korea Personal Information Protection Act.
  /// - "SOUTH_AFRICA_POPIA" : South Africa Protection of Personal Information
  /// Act.
  /// - "JAPAN_APPI" : Japan Act on the Protection of Personal Information.
  /// - "INDIA_DPDPA" : India: The Digital Personal Data Protection Act, 2023.
  /// - "OCPA" : Oregon Consumer Privacy Act.
  /// - "TDPSA" : Texas Data Privacy and Security Act.
  /// - "MCDPA" : Montana Consumer Data Privacy Act.
  core.String? type;

  GoogleChecksReportV1alphaCheckCitation({this.type});

  GoogleChecksReportV1alphaCheckCitation.fromJson(core.Map json_)
    : this(type: json_['type'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() => {
    if (type != null) 'type': type!,
  };
}

/// Evidence concerning data security.
class GoogleChecksReportV1alphaCheckDataSecurityEvidence {
  /// Evidence related to data in transit.
  core.List<
    GoogleChecksReportV1alphaCheckDataSecurityEvidenceDataInTransitInfo
  >?
  dataInTransitInfo;

  GoogleChecksReportV1alphaCheckDataSecurityEvidence({this.dataInTransitInfo});

  GoogleChecksReportV1alphaCheckDataSecurityEvidence.fromJson(core.Map json_)
    : this(
        dataInTransitInfo:
            (json_['dataInTransitInfo'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleChecksReportV1alphaCheckDataSecurityEvidenceDataInTransitInfo.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (dataInTransitInfo != null) 'dataInTransitInfo': dataInTransitInfo!,
  };
}

/// Evidence related to data in transit detected in your app.
class GoogleChecksReportV1alphaCheckDataSecurityEvidenceDataInTransitInfo {
  /// The URL contacted by your app.
  ///
  /// This includes the protocol, domain, and URL parameters.
  core.String? uri;

  GoogleChecksReportV1alphaCheckDataSecurityEvidenceDataInTransitInfo({
    this.uri,
  });

  GoogleChecksReportV1alphaCheckDataSecurityEvidenceDataInTransitInfo.fromJson(
    core.Map json_,
  ) : this(uri: json_['uri'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() => {
    if (uri != null) 'uri': uri!,
  };
}

/// Evidence concerning a data type that was found in your app.
class GoogleChecksReportV1alphaCheckDataTypeEvidence {
  /// The data type that was found in your app.
  /// Possible string values are:
  /// - "DATA_TYPE_UNSPECIFIED" : Not specified.
  /// - "DATA_TYPE_APPROXIMATE_LOCATION" : User or device physical location to
  /// an area greater than or equal to 3 square kilometers, such as the city a
  /// user is in, or location provided by Android's ACCESS_COARSE_LOCATION
  /// permission.
  /// - "DATA_TYPE_PRECISE_LOCATION" : User or device physical location within
  /// an area less than 3 square kilometers, such as location provided by
  /// Android's ACCESS_FINE_LOCATION permission.
  /// - "DATA_TYPE_PERSONAL_NAME" : How a user refers to themselves, such as
  /// their first or last name, or nickname.
  /// - "DATA_TYPE_EMAIL_ADDRESS" : A user's email address.
  /// - "DATA_TYPE_USER_IDS" : Identifiers that relate to an identifiable
  /// person. For example, an account ID, account number, or account name.
  /// - "DATA_TYPE_PHYSICAL_ADDRESS" : A user's address, such as a mailing or
  /// home address.
  /// - "DATA_TYPE_PHONE_NUMBER" : A user's phone number.
  /// - "DATA_TYPE_RACE_AND_ETHNICITY" : Information about a user's race or
  /// ethnicity.
  /// - "DATA_TYPE_POLITICAL_OR_RELIGIOUS_BELIEFS" : Information about a user's
  /// political or religious beliefs.
  /// - "DATA_TYPE_SEXUAL_ORIENTATION" : Information about a user's sexual
  /// orientation.
  /// - "DATA_TYPE_OTHER_PERSONAL_INFO" : Any other personal information such as
  /// date of birth, gender identity, veteran status, etc.
  /// - "DATA_TYPE_PAYMENT_INFO" : Information about a user's financial accounts
  /// such as credit card number.
  /// - "DATA_TYPE_PURCHASE_HISTORY" : Information about purchases or
  /// transactions a user has made.
  /// - "DATA_TYPE_CREDIT_SCORE" : Information about a user's credit score.
  /// - "DATA_TYPE_OTHER_FINANCIAL_INFO" : Any other financial information such
  /// as user salary or debts.
  /// - "DATA_TYPE_HEALTH_INFO" : Information about a user's health, such as
  /// medical records or symptoms.
  /// - "DATA_TYPE_FITNESS_INFO" : Information about a user's fitness, such as
  /// exercise or other physical activity.
  /// - "DATA_TYPE_EMAILS" : A user's emails including the email subject line,
  /// sender, recipients, and the content of the email.
  /// - "DATA_TYPE_TEXT_MESSAGES" : A user's text messages including the sender,
  /// recipients, and the content of the message.
  /// - "DATA_TYPE_OTHER_IN_APP_MESSAGES" : Any other types of messages. For
  /// example, instant messages or chat content.
  /// - "DATA_TYPE_PHOTOS" : A user's photos.
  /// - "DATA_TYPE_VIDEOS" : A user's videos.
  /// - "DATA_TYPE_VOICE_OR_SOUND_RECORDINGS" : A user's voice such as a
  /// voicemail or a sound recording.
  /// - "DATA_TYPE_MUSIC_FILES" : A user's music files.
  /// - "DATA_TYPE_OTHER_AUDIO_FILES" : Any other user-created or user-provided
  /// audio files.
  /// - "DATA_TYPE_FILES_AND_DOCS" : A user's files or documents, or information
  /// about their files or documents such as file names.
  /// - "DATA_TYPE_CALENDAR_EVENTS" : Information from a user's calendar such as
  /// events, event notes, and attendees.
  /// - "DATA_TYPE_CONTACTS" : Information about the user’s contacts such as
  /// contact names, message history, and social graph information like
  /// usernames, contact recency, contact frequency, interaction duration and
  /// call history.
  /// - "DATA_TYPE_APP_INTERACTIONS" : Information about how a user interacts
  /// with your app, such as the number of page views or taps.
  /// - "DATA_TYPE_IN_APP_SEARCH_HISTORY" : Information about what a user has
  /// searched for in your app.
  /// - "DATA_TYPE_INSTALLED_APPS" : Inventory of apps or packages installed on
  /// the user’s device.
  /// - "DATA_TYPE_OTHER_USER_GENERATED_CONTENT" : Any other user-generated
  /// content not listed here, or in any other section. For example, user bios,
  /// notes, or open-ended responses.
  /// - "DATA_TYPE_OTHER_ACTIONS" : Any other user activity or actions in-app
  /// not listed here such as gameplay, likes, and dialog options.
  /// - "DATA_TYPE_WEB_BROWSING_HISTORY" : Information about the websites a user
  /// has visited.
  /// - "DATA_TYPE_CRASH_LOGS" : Crash log data from your app. For example, the
  /// number of times your app has crashed, stack traces, or other information
  /// directly related to a crash.
  /// - "DATA_TYPE_PERFORMANCE_DIAGNOSTICS" : Information about the performance
  /// of your app. For example battery life, loading time, latency, framerate,
  /// or any technical diagnostics.
  /// - "DATA_TYPE_OTHER_APP_PERFORMANCE_DATA" : Any other app performance data
  /// not listed here.
  /// - "DATA_TYPE_DEVICE_OR_OTHER_IDS" : Identifiers that relate to an
  /// individual device, browser or app. For example, an IMEI number, MAC
  /// address, Widevine Device ID, Firebase installation ID, or advertising
  /// identifier.
  core.String? dataType;

  /// Evidence collected about the data type.
  GoogleChecksReportV1alphaDataTypeEvidence? dataTypeEvidence;

  GoogleChecksReportV1alphaCheckDataTypeEvidence({
    this.dataType,
    this.dataTypeEvidence,
  });

  GoogleChecksReportV1alphaCheckDataTypeEvidence.fromJson(core.Map json_)
    : this(
        dataType: json_['dataType'] as core.String?,
        dataTypeEvidence:
            json_.containsKey('dataTypeEvidence')
                ? GoogleChecksReportV1alphaDataTypeEvidence.fromJson(
                  json_['dataTypeEvidence']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (dataType != null) 'dataType': dataType!,
    if (dataTypeEvidence != null) 'dataTypeEvidence': dataTypeEvidence!,
  };
}

/// Evidence concerning an endpoint that was contacted by your app.
class GoogleChecksReportV1alphaCheckEndpointEvidence {
  /// The endpoint that was contacted by your app.
  GoogleChecksReportV1alphaEndpoint? endpoint;

  GoogleChecksReportV1alphaCheckEndpointEvidence({this.endpoint});

  GoogleChecksReportV1alphaCheckEndpointEvidence.fromJson(core.Map json_)
    : this(
        endpoint:
            json_.containsKey('endpoint')
                ? GoogleChecksReportV1alphaEndpoint.fromJson(
                  json_['endpoint'] as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (endpoint != null) 'endpoint': endpoint!,
  };
}

/// Evidence collected from endpoint restriction violation analysis.
class GoogleChecksReportV1alphaCheckEndpointRestrictionViolationEvidence {
  /// Endpoints in violation.
  core.List<
    GoogleChecksReportV1alphaCheckEndpointRestrictionViolationEvidenceEndpointDetails
  >?
  endpointDetails;

  GoogleChecksReportV1alphaCheckEndpointRestrictionViolationEvidence({
    this.endpointDetails,
  });

  GoogleChecksReportV1alphaCheckEndpointRestrictionViolationEvidence.fromJson(
    core.Map json_,
  ) : this(
        endpointDetails:
            (json_['endpointDetails'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleChecksReportV1alphaCheckEndpointRestrictionViolationEvidenceEndpointDetails.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (endpointDetails != null) 'endpointDetails': endpointDetails!,
  };
}

/// Details of the endpoint in violation.
class GoogleChecksReportV1alphaCheckEndpointRestrictionViolationEvidenceEndpointDetails {
  /// The endpoint in violation.
  GoogleChecksReportV1alphaEndpoint? endpoint;

  GoogleChecksReportV1alphaCheckEndpointRestrictionViolationEvidenceEndpointDetails({
    this.endpoint,
  });

  GoogleChecksReportV1alphaCheckEndpointRestrictionViolationEvidenceEndpointDetails.fromJson(
    core.Map json_,
  ) : this(
        endpoint:
            json_.containsKey('endpoint')
                ? GoogleChecksReportV1alphaEndpoint.fromJson(
                  json_['endpoint'] as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (endpoint != null) 'endpoint': endpoint!,
  };
}

/// Evidence for a check.
class GoogleChecksReportV1alphaCheckEvidence {
  /// Evidence concerning data security.
  GoogleChecksReportV1alphaCheckDataSecurityEvidence? dataSecurity;

  /// Evidence concerning data types found in your app.
  core.List<GoogleChecksReportV1alphaCheckDataTypeEvidence>? dataTypes;

  /// Evidence collected from endpoint restriction violation analysis.
  core.List<GoogleChecksReportV1alphaCheckEndpointRestrictionViolationEvidence>?
  endpointRestrictionViolations;

  /// Evidence concerning endpoints that were contacted by your app.
  core.List<GoogleChecksReportV1alphaCheckEndpointEvidence>? endpoints;

  /// Evidence collected from permission restriction violation analysis.
  core.List<
    GoogleChecksReportV1alphaCheckPermissionRestrictionViolationEvidence
  >?
  permissionRestrictionViolations;

  /// Evidence concerning permissions that were found in your app.
  core.List<GoogleChecksReportV1alphaCheckPermissionEvidence>? permissions;

  /// Evidence collected from your privacy policy(s).
  core.List<GoogleChecksReportV1alphaCheckPrivacyPolicyTextEvidence>?
  privacyPolicyTexts;

  /// Evidence concerning SDK issues.
  core.List<GoogleChecksReportV1alphaCheckSdkIssueEvidence>? sdkIssues;

  /// Evidence collected from SDK restriction violation analysis.
  core.List<GoogleChecksReportV1alphaCheckSdkRestrictionViolationEvidence>?
  sdkRestrictionViolations;

  /// Evidence concerning SDKs that were found in your app.
  core.List<GoogleChecksReportV1alphaCheckSdkEvidence>? sdks;

  GoogleChecksReportV1alphaCheckEvidence({
    this.dataSecurity,
    this.dataTypes,
    this.endpointRestrictionViolations,
    this.endpoints,
    this.permissionRestrictionViolations,
    this.permissions,
    this.privacyPolicyTexts,
    this.sdkIssues,
    this.sdkRestrictionViolations,
    this.sdks,
  });

  GoogleChecksReportV1alphaCheckEvidence.fromJson(core.Map json_)
    : this(
        dataSecurity:
            json_.containsKey('dataSecurity')
                ? GoogleChecksReportV1alphaCheckDataSecurityEvidence.fromJson(
                  json_['dataSecurity'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        dataTypes:
            (json_['dataTypes'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleChecksReportV1alphaCheckDataTypeEvidence.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
        endpointRestrictionViolations:
            (json_['endpointRestrictionViolations'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleChecksReportV1alphaCheckEndpointRestrictionViolationEvidence.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
        endpoints:
            (json_['endpoints'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleChecksReportV1alphaCheckEndpointEvidence.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
        permissionRestrictionViolations:
            (json_['permissionRestrictionViolations'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleChecksReportV1alphaCheckPermissionRestrictionViolationEvidence.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
        permissions:
            (json_['permissions'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleChecksReportV1alphaCheckPermissionEvidence.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
        privacyPolicyTexts:
            (json_['privacyPolicyTexts'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleChecksReportV1alphaCheckPrivacyPolicyTextEvidence.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
        sdkIssues:
            (json_['sdkIssues'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleChecksReportV1alphaCheckSdkIssueEvidence.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
        sdkRestrictionViolations:
            (json_['sdkRestrictionViolations'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleChecksReportV1alphaCheckSdkRestrictionViolationEvidence.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
        sdks:
            (json_['sdks'] as core.List?)
                ?.map(
                  (value) => GoogleChecksReportV1alphaCheckSdkEvidence.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (dataSecurity != null) 'dataSecurity': dataSecurity!,
    if (dataTypes != null) 'dataTypes': dataTypes!,
    if (endpointRestrictionViolations != null)
      'endpointRestrictionViolations': endpointRestrictionViolations!,
    if (endpoints != null) 'endpoints': endpoints!,
    if (permissionRestrictionViolations != null)
      'permissionRestrictionViolations': permissionRestrictionViolations!,
    if (permissions != null) 'permissions': permissions!,
    if (privacyPolicyTexts != null) 'privacyPolicyTexts': privacyPolicyTexts!,
    if (sdkIssues != null) 'sdkIssues': sdkIssues!,
    if (sdkRestrictionViolations != null)
      'sdkRestrictionViolations': sdkRestrictionViolations!,
    if (sdks != null) 'sdks': sdks!,
  };
}

/// Evidence concerning a permission that was found in your app.
class GoogleChecksReportV1alphaCheckPermissionEvidence {
  /// The permission that was found in your app.
  GoogleChecksReportV1alphaPermission? permission;

  GoogleChecksReportV1alphaCheckPermissionEvidence({this.permission});

  GoogleChecksReportV1alphaCheckPermissionEvidence.fromJson(core.Map json_)
    : this(
        permission:
            json_.containsKey('permission')
                ? GoogleChecksReportV1alphaPermission.fromJson(
                  json_['permission'] as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (permission != null) 'permission': permission!,
  };
}

/// Evidence collected from permission restriction violation analysis.
class GoogleChecksReportV1alphaCheckPermissionRestrictionViolationEvidence {
  /// Permissions in violation.
  core.List<
    GoogleChecksReportV1alphaCheckPermissionRestrictionViolationEvidencePermissionDetails
  >?
  permissionDetails;

  GoogleChecksReportV1alphaCheckPermissionRestrictionViolationEvidence({
    this.permissionDetails,
  });

  GoogleChecksReportV1alphaCheckPermissionRestrictionViolationEvidence.fromJson(
    core.Map json_,
  ) : this(
        permissionDetails:
            (json_['permissionDetails'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleChecksReportV1alphaCheckPermissionRestrictionViolationEvidencePermissionDetails.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (permissionDetails != null) 'permissionDetails': permissionDetails!,
  };
}

/// Details of the permission in violation.
class GoogleChecksReportV1alphaCheckPermissionRestrictionViolationEvidencePermissionDetails {
  /// The permission in violation.
  GoogleChecksReportV1alphaPermission? permission;

  GoogleChecksReportV1alphaCheckPermissionRestrictionViolationEvidencePermissionDetails({
    this.permission,
  });

  GoogleChecksReportV1alphaCheckPermissionRestrictionViolationEvidencePermissionDetails.fromJson(
    core.Map json_,
  ) : this(
        permission:
            json_.containsKey('permission')
                ? GoogleChecksReportV1alphaPermission.fromJson(
                  json_['permission'] as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (permission != null) 'permission': permission!,
  };
}

/// Evidence collected from your privacy policy(s).
class GoogleChecksReportV1alphaCheckPrivacyPolicyTextEvidence {
  /// The privacy policy fragment that was used during the check.
  GoogleChecksReportV1alphaPolicyFragment? policyFragment;

  GoogleChecksReportV1alphaCheckPrivacyPolicyTextEvidence({
    this.policyFragment,
  });

  GoogleChecksReportV1alphaCheckPrivacyPolicyTextEvidence.fromJson(
    core.Map json_,
  ) : this(
        policyFragment:
            json_.containsKey('policyFragment')
                ? GoogleChecksReportV1alphaPolicyFragment.fromJson(
                  json_['policyFragment']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (policyFragment != null) 'policyFragment': policyFragment!,
  };
}

/// Evidence conerning an SDK that was found in your app.
class GoogleChecksReportV1alphaCheckSdkEvidence {
  /// The SDK that was found in your app.
  GoogleChecksReportV1alphaSdk? sdk;

  GoogleChecksReportV1alphaCheckSdkEvidence({this.sdk});

  GoogleChecksReportV1alphaCheckSdkEvidence.fromJson(core.Map json_)
    : this(
        sdk:
            json_.containsKey('sdk')
                ? GoogleChecksReportV1alphaSdk.fromJson(
                  json_['sdk'] as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (sdk != null) 'sdk': sdk!,
  };
}

/// Evidence concerning an SDK issue.
class GoogleChecksReportV1alphaCheckSdkIssueEvidence {
  /// The SDK with an issue.
  GoogleChecksReportV1alphaSdk? sdk;

  /// The SDK version.
  core.String? sdkVersion;

  GoogleChecksReportV1alphaCheckSdkIssueEvidence({this.sdk, this.sdkVersion});

  GoogleChecksReportV1alphaCheckSdkIssueEvidence.fromJson(core.Map json_)
    : this(
        sdk:
            json_.containsKey('sdk')
                ? GoogleChecksReportV1alphaSdk.fromJson(
                  json_['sdk'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        sdkVersion: json_['sdkVersion'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (sdk != null) 'sdk': sdk!,
    if (sdkVersion != null) 'sdkVersion': sdkVersion!,
  };
}

/// Evidence collected from SDK restriction violation analysis.
class GoogleChecksReportV1alphaCheckSdkRestrictionViolationEvidence {
  /// SDKs in violation.
  core.List<
    GoogleChecksReportV1alphaCheckSdkRestrictionViolationEvidenceSdkDetails
  >?
  sdkDetails;

  GoogleChecksReportV1alphaCheckSdkRestrictionViolationEvidence({
    this.sdkDetails,
  });

  GoogleChecksReportV1alphaCheckSdkRestrictionViolationEvidence.fromJson(
    core.Map json_,
  ) : this(
        sdkDetails:
            (json_['sdkDetails'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleChecksReportV1alphaCheckSdkRestrictionViolationEvidenceSdkDetails.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (sdkDetails != null) 'sdkDetails': sdkDetails!,
  };
}

/// Details of the SDK in violation.
class GoogleChecksReportV1alphaCheckSdkRestrictionViolationEvidenceSdkDetails {
  /// The SDK in violation.
  GoogleChecksReportV1alphaSdk? sdk;

  GoogleChecksReportV1alphaCheckSdkRestrictionViolationEvidenceSdkDetails({
    this.sdk,
  });

  GoogleChecksReportV1alphaCheckSdkRestrictionViolationEvidenceSdkDetails.fromJson(
    core.Map json_,
  ) : this(
        sdk:
            json_.containsKey('sdk')
                ? GoogleChecksReportV1alphaSdk.fromJson(
                  json_['sdk'] as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (sdk != null) 'sdk': sdk!,
  };
}

/// Additional information about the check state in relation to past reports.
class GoogleChecksReportV1alphaCheckStateMetadata {
  /// Indicators related to the check state.
  core.List<core.String>? badges;

  /// The time when the check first started failing.
  core.String? firstFailingTime;

  /// The last time the check failed.
  core.String? lastFailingTime;

  GoogleChecksReportV1alphaCheckStateMetadata({
    this.badges,
    this.firstFailingTime,
    this.lastFailingTime,
  });

  GoogleChecksReportV1alphaCheckStateMetadata.fromJson(core.Map json_)
    : this(
        badges:
            (json_['badges'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        firstFailingTime: json_['firstFailingTime'] as core.String?,
        lastFailingTime: json_['lastFailingTime'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (badges != null) 'badges': badges!,
    if (firstFailingTime != null) 'firstFailingTime': firstFailingTime!,
    if (lastFailingTime != null) 'lastFailingTime': lastFailingTime!,
  };
}

/// Represents the data monitoring section of the report.
class GoogleChecksReportV1alphaDataMonitoring {
  /// Data types that your app shares or collects.
  core.List<GoogleChecksReportV1alphaDataMonitoringDataTypeResult>? dataTypes;

  /// Endpoints that were found by dynamic analysis of your app.
  core.List<GoogleChecksReportV1alphaDataMonitoringEndpointResult>? endpoints;

  /// Permissions that your app uses.
  core.List<GoogleChecksReportV1alphaDataMonitoringPermissionResult>?
  permissions;

  /// SDKs that your app uses.
  core.List<GoogleChecksReportV1alphaDataMonitoringSdkResult>? sdks;

  GoogleChecksReportV1alphaDataMonitoring({
    this.dataTypes,
    this.endpoints,
    this.permissions,
    this.sdks,
  });

  GoogleChecksReportV1alphaDataMonitoring.fromJson(core.Map json_)
    : this(
        dataTypes:
            (json_['dataTypes'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleChecksReportV1alphaDataMonitoringDataTypeResult.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
        endpoints:
            (json_['endpoints'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleChecksReportV1alphaDataMonitoringEndpointResult.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
        permissions:
            (json_['permissions'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleChecksReportV1alphaDataMonitoringPermissionResult.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
        sdks:
            (json_['sdks'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleChecksReportV1alphaDataMonitoringSdkResult.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (dataTypes != null) 'dataTypes': dataTypes!,
    if (endpoints != null) 'endpoints': endpoints!,
    if (permissions != null) 'permissions': permissions!,
    if (sdks != null) 'sdks': sdks!,
  };
}

/// Information about a data type that was found in your app.
class GoogleChecksReportV1alphaDataMonitoringDataTypeResult {
  /// The data type that was shared or collected by your app.
  /// Possible string values are:
  /// - "DATA_TYPE_UNSPECIFIED" : Not specified.
  /// - "DATA_TYPE_APPROXIMATE_LOCATION" : User or device physical location to
  /// an area greater than or equal to 3 square kilometers, such as the city a
  /// user is in, or location provided by Android's ACCESS_COARSE_LOCATION
  /// permission.
  /// - "DATA_TYPE_PRECISE_LOCATION" : User or device physical location within
  /// an area less than 3 square kilometers, such as location provided by
  /// Android's ACCESS_FINE_LOCATION permission.
  /// - "DATA_TYPE_PERSONAL_NAME" : How a user refers to themselves, such as
  /// their first or last name, or nickname.
  /// - "DATA_TYPE_EMAIL_ADDRESS" : A user's email address.
  /// - "DATA_TYPE_USER_IDS" : Identifiers that relate to an identifiable
  /// person. For example, an account ID, account number, or account name.
  /// - "DATA_TYPE_PHYSICAL_ADDRESS" : A user's address, such as a mailing or
  /// home address.
  /// - "DATA_TYPE_PHONE_NUMBER" : A user's phone number.
  /// - "DATA_TYPE_RACE_AND_ETHNICITY" : Information about a user's race or
  /// ethnicity.
  /// - "DATA_TYPE_POLITICAL_OR_RELIGIOUS_BELIEFS" : Information about a user's
  /// political or religious beliefs.
  /// - "DATA_TYPE_SEXUAL_ORIENTATION" : Information about a user's sexual
  /// orientation.
  /// - "DATA_TYPE_OTHER_PERSONAL_INFO" : Any other personal information such as
  /// date of birth, gender identity, veteran status, etc.
  /// - "DATA_TYPE_PAYMENT_INFO" : Information about a user's financial accounts
  /// such as credit card number.
  /// - "DATA_TYPE_PURCHASE_HISTORY" : Information about purchases or
  /// transactions a user has made.
  /// - "DATA_TYPE_CREDIT_SCORE" : Information about a user's credit score.
  /// - "DATA_TYPE_OTHER_FINANCIAL_INFO" : Any other financial information such
  /// as user salary or debts.
  /// - "DATA_TYPE_HEALTH_INFO" : Information about a user's health, such as
  /// medical records or symptoms.
  /// - "DATA_TYPE_FITNESS_INFO" : Information about a user's fitness, such as
  /// exercise or other physical activity.
  /// - "DATA_TYPE_EMAILS" : A user's emails including the email subject line,
  /// sender, recipients, and the content of the email.
  /// - "DATA_TYPE_TEXT_MESSAGES" : A user's text messages including the sender,
  /// recipients, and the content of the message.
  /// - "DATA_TYPE_OTHER_IN_APP_MESSAGES" : Any other types of messages. For
  /// example, instant messages or chat content.
  /// - "DATA_TYPE_PHOTOS" : A user's photos.
  /// - "DATA_TYPE_VIDEOS" : A user's videos.
  /// - "DATA_TYPE_VOICE_OR_SOUND_RECORDINGS" : A user's voice such as a
  /// voicemail or a sound recording.
  /// - "DATA_TYPE_MUSIC_FILES" : A user's music files.
  /// - "DATA_TYPE_OTHER_AUDIO_FILES" : Any other user-created or user-provided
  /// audio files.
  /// - "DATA_TYPE_FILES_AND_DOCS" : A user's files or documents, or information
  /// about their files or documents such as file names.
  /// - "DATA_TYPE_CALENDAR_EVENTS" : Information from a user's calendar such as
  /// events, event notes, and attendees.
  /// - "DATA_TYPE_CONTACTS" : Information about the user’s contacts such as
  /// contact names, message history, and social graph information like
  /// usernames, contact recency, contact frequency, interaction duration and
  /// call history.
  /// - "DATA_TYPE_APP_INTERACTIONS" : Information about how a user interacts
  /// with your app, such as the number of page views or taps.
  /// - "DATA_TYPE_IN_APP_SEARCH_HISTORY" : Information about what a user has
  /// searched for in your app.
  /// - "DATA_TYPE_INSTALLED_APPS" : Inventory of apps or packages installed on
  /// the user’s device.
  /// - "DATA_TYPE_OTHER_USER_GENERATED_CONTENT" : Any other user-generated
  /// content not listed here, or in any other section. For example, user bios,
  /// notes, or open-ended responses.
  /// - "DATA_TYPE_OTHER_ACTIONS" : Any other user activity or actions in-app
  /// not listed here such as gameplay, likes, and dialog options.
  /// - "DATA_TYPE_WEB_BROWSING_HISTORY" : Information about the websites a user
  /// has visited.
  /// - "DATA_TYPE_CRASH_LOGS" : Crash log data from your app. For example, the
  /// number of times your app has crashed, stack traces, or other information
  /// directly related to a crash.
  /// - "DATA_TYPE_PERFORMANCE_DIAGNOSTICS" : Information about the performance
  /// of your app. For example battery life, loading time, latency, framerate,
  /// or any technical diagnostics.
  /// - "DATA_TYPE_OTHER_APP_PERFORMANCE_DATA" : Any other app performance data
  /// not listed here.
  /// - "DATA_TYPE_DEVICE_OR_OTHER_IDS" : Identifiers that relate to an
  /// individual device, browser or app. For example, an IMEI number, MAC
  /// address, Widevine Device ID, Firebase installation ID, or advertising
  /// identifier.
  core.String? dataType;

  /// Evidence collected about the data type.
  GoogleChecksReportV1alphaDataTypeEvidence? dataTypeEvidence;

  /// Metadata about the result.
  GoogleChecksReportV1alphaDataMonitoringResultMetadata? metadata;

  GoogleChecksReportV1alphaDataMonitoringDataTypeResult({
    this.dataType,
    this.dataTypeEvidence,
    this.metadata,
  });

  GoogleChecksReportV1alphaDataMonitoringDataTypeResult.fromJson(core.Map json_)
    : this(
        dataType: json_['dataType'] as core.String?,
        dataTypeEvidence:
            json_.containsKey('dataTypeEvidence')
                ? GoogleChecksReportV1alphaDataTypeEvidence.fromJson(
                  json_['dataTypeEvidence']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        metadata:
            json_.containsKey('metadata')
                ? GoogleChecksReportV1alphaDataMonitoringResultMetadata.fromJson(
                  json_['metadata'] as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (dataType != null) 'dataType': dataType!,
    if (dataTypeEvidence != null) 'dataTypeEvidence': dataTypeEvidence!,
    if (metadata != null) 'metadata': metadata!,
  };
}

/// Information about an endpoint that was contacted by your app.
class GoogleChecksReportV1alphaDataMonitoringEndpointResult {
  /// The endpoint that was contacted by your app.
  GoogleChecksReportV1alphaEndpoint? endpoint;

  /// The number of times this endpoint was contacted by your app.
  core.int? hitCount;

  /// Metadata about the result.
  GoogleChecksReportV1alphaDataMonitoringResultMetadata? metadata;

  GoogleChecksReportV1alphaDataMonitoringEndpointResult({
    this.endpoint,
    this.hitCount,
    this.metadata,
  });

  GoogleChecksReportV1alphaDataMonitoringEndpointResult.fromJson(core.Map json_)
    : this(
        endpoint:
            json_.containsKey('endpoint')
                ? GoogleChecksReportV1alphaEndpoint.fromJson(
                  json_['endpoint'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        hitCount: json_['hitCount'] as core.int?,
        metadata:
            json_.containsKey('metadata')
                ? GoogleChecksReportV1alphaDataMonitoringResultMetadata.fromJson(
                  json_['metadata'] as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (endpoint != null) 'endpoint': endpoint!,
    if (hitCount != null) 'hitCount': hitCount!,
    if (metadata != null) 'metadata': metadata!,
  };
}

/// Information about a permission that was found in your app.
class GoogleChecksReportV1alphaDataMonitoringPermissionResult {
  /// Metadata about the result.
  GoogleChecksReportV1alphaDataMonitoringResultMetadata? metadata;

  /// The permission that was found in your app.
  GoogleChecksReportV1alphaPermission? permission;

  GoogleChecksReportV1alphaDataMonitoringPermissionResult({
    this.metadata,
    this.permission,
  });

  GoogleChecksReportV1alphaDataMonitoringPermissionResult.fromJson(
    core.Map json_,
  ) : this(
        metadata:
            json_.containsKey('metadata')
                ? GoogleChecksReportV1alphaDataMonitoringResultMetadata.fromJson(
                  json_['metadata'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        permission:
            json_.containsKey('permission')
                ? GoogleChecksReportV1alphaPermission.fromJson(
                  json_['permission'] as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (metadata != null) 'metadata': metadata!,
    if (permission != null) 'permission': permission!,
  };
}

/// Information about a data monitoring result.
class GoogleChecksReportV1alphaDataMonitoringResultMetadata {
  /// Badges that apply to this result.
  core.List<core.String>? badges;

  /// The timestamp when this result was first detected within the last 8 weeks.
  ///
  /// If not set, it wasn't detected within the last 8 weeks.
  core.String? firstDetectedTime;

  /// Your app's version name when this result was last detected within the last
  /// 8 weeks.
  ///
  /// If not set, it wasn't detected within the last 8 weeks.
  core.String? lastDetectedAppVersion;

  /// The timestamp when this result was last detected within the last 8 weeks.
  ///
  /// If not set, it wasn't detected within the last 8 weeks.
  core.String? lastDetectedTime;

  GoogleChecksReportV1alphaDataMonitoringResultMetadata({
    this.badges,
    this.firstDetectedTime,
    this.lastDetectedAppVersion,
    this.lastDetectedTime,
  });

  GoogleChecksReportV1alphaDataMonitoringResultMetadata.fromJson(core.Map json_)
    : this(
        badges:
            (json_['badges'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        firstDetectedTime: json_['firstDetectedTime'] as core.String?,
        lastDetectedAppVersion: json_['lastDetectedAppVersion'] as core.String?,
        lastDetectedTime: json_['lastDetectedTime'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (badges != null) 'badges': badges!,
    if (firstDetectedTime != null) 'firstDetectedTime': firstDetectedTime!,
    if (lastDetectedAppVersion != null)
      'lastDetectedAppVersion': lastDetectedAppVersion!,
    if (lastDetectedTime != null) 'lastDetectedTime': lastDetectedTime!,
  };
}

/// Information about an SDK that was found in your app.
class GoogleChecksReportV1alphaDataMonitoringSdkResult {
  /// Metadata about the result.
  GoogleChecksReportV1alphaDataMonitoringResultMetadata? metadata;

  /// The SDK that was found in your app.
  GoogleChecksReportV1alphaSdk? sdk;

  GoogleChecksReportV1alphaDataMonitoringSdkResult({this.metadata, this.sdk});

  GoogleChecksReportV1alphaDataMonitoringSdkResult.fromJson(core.Map json_)
    : this(
        metadata:
            json_.containsKey('metadata')
                ? GoogleChecksReportV1alphaDataMonitoringResultMetadata.fromJson(
                  json_['metadata'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        sdk:
            json_.containsKey('sdk')
                ? GoogleChecksReportV1alphaSdk.fromJson(
                  json_['sdk'] as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (metadata != null) 'metadata': metadata!,
    if (sdk != null) 'sdk': sdk!,
  };
}

/// Evidence based on an endpoint that data was sent to.
class GoogleChecksReportV1alphaDataTypeEndpointEvidence {
  /// Set of SDKs that are attributed to the exfiltration.
  core.List<GoogleChecksReportV1alphaDataTypeEndpointEvidenceAttributedSdk>?
  attributedSdks;

  /// Endpoints the data type was sent to.
  core.List<GoogleChecksReportV1alphaDataTypeEndpointEvidenceEndpointDetails>?
  endpointDetails;

  /// Type of data that was exfiltrated.
  /// Possible string values are:
  /// - "EXFILTRATED_DATA_TYPE_UNSPECIFIED" : Not specified.
  /// - "EXFILTRATED_DATA_TYPE_PHONE_NUMBER" : The user's phone number.
  /// - "EXFILTRATED_DATA_TYPE_PRECISE_LOCATION" : The user's precise location.
  /// - "EXFILTRATED_DATA_TYPE_CONTACT_NAME" : Name of one or more contacts from
  /// the user's phone.
  /// - "EXFILTRATED_DATA_TYPE_CONTACT_EMAIL" : Email of one or more contacts
  /// from the user's phone.
  /// - "EXFILTRATED_DATA_TYPE_CONTACT_PHONE_NUMBER" : Phone number of one or
  /// more contacts from the user's phone.
  /// - "EXFILTRATED_DATA_TYPE_INCOMING_TEXT_NUMBER" : Phone number of an
  /// incoming text message.
  /// - "EXFILTRATED_DATA_TYPE_INCOMING_TEXT_MESSAGE" : Content of an incoming
  /// text message.
  /// - "EXFILTRATED_DATA_TYPE_OUTGOING_TEXT_NUMBER" : Phone number of an
  /// outgoing text message.
  /// - "EXFILTRATED_DATA_TYPE_OUTGOING_TEXT_MESSAGE" : Content of an outgoing
  /// text message.
  /// - "EXFILTRATED_DATA_TYPE_ADVERTISING_ID" : Advertising ID.
  /// - "EXFILTRATED_DATA_TYPE_ANDROID_ID" : Android ID.
  /// - "EXFILTRATED_DATA_TYPE_IMEI" : IMEI.
  /// - "EXFILTRATED_DATA_TYPE_IMSI" : IMSI.
  /// - "EXFILTRATED_DATA_TYPE_SIM_SERIAL_NUMBER" : Sim serial number.
  /// - "EXFILTRATED_DATA_TYPE_SSID" : SSID: Service Set IDentifier, i.e. the
  /// network's name.
  /// - "EXFILTRATED_DATA_TYPE_ACCOUNT" : Information about the main account of
  /// the device.
  /// - "EXFILTRATED_DATA_TYPE_EXTERNAL_ACCOUNT" : Information about an external
  /// account, e.g. Facebook, Twitter.
  /// - "EXFILTRATED_DATA_TYPE_INSTALLED_PACKAGES" : One or more of the package
  /// names of apps on the device.
  core.String? exfiltratedDataType;

  GoogleChecksReportV1alphaDataTypeEndpointEvidence({
    this.attributedSdks,
    this.endpointDetails,
    this.exfiltratedDataType,
  });

  GoogleChecksReportV1alphaDataTypeEndpointEvidence.fromJson(core.Map json_)
    : this(
        attributedSdks:
            (json_['attributedSdks'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleChecksReportV1alphaDataTypeEndpointEvidenceAttributedSdk.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
        endpointDetails:
            (json_['endpointDetails'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleChecksReportV1alphaDataTypeEndpointEvidenceEndpointDetails.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
        exfiltratedDataType: json_['exfiltratedDataType'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (attributedSdks != null) 'attributedSdks': attributedSdks!,
    if (endpointDetails != null) 'endpointDetails': endpointDetails!,
    if (exfiltratedDataType != null)
      'exfiltratedDataType': exfiltratedDataType!,
  };
}

/// Details of SDK that is attributed to the exfiltration.
class GoogleChecksReportV1alphaDataTypeEndpointEvidenceAttributedSdk {
  /// SDK that is attributed to the exfiltration.
  GoogleChecksReportV1alphaSdk? sdk;

  GoogleChecksReportV1alphaDataTypeEndpointEvidenceAttributedSdk({this.sdk});

  GoogleChecksReportV1alphaDataTypeEndpointEvidenceAttributedSdk.fromJson(
    core.Map json_,
  ) : this(
        sdk:
            json_.containsKey('sdk')
                ? GoogleChecksReportV1alphaSdk.fromJson(
                  json_['sdk'] as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (sdk != null) 'sdk': sdk!,
  };
}

/// Details of the endpoint the data type was sent to.
class GoogleChecksReportV1alphaDataTypeEndpointEvidenceEndpointDetails {
  /// Endpoint the data type was sent to.
  GoogleChecksReportV1alphaEndpoint? endpoint;

  GoogleChecksReportV1alphaDataTypeEndpointEvidenceEndpointDetails({
    this.endpoint,
  });

  GoogleChecksReportV1alphaDataTypeEndpointEvidenceEndpointDetails.fromJson(
    core.Map json_,
  ) : this(
        endpoint:
            json_.containsKey('endpoint')
                ? GoogleChecksReportV1alphaEndpoint.fromJson(
                  json_['endpoint'] as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (endpoint != null) 'endpoint': endpoint!,
  };
}

/// Evidence collected about a data type.
class GoogleChecksReportV1alphaDataTypeEvidence {
  /// List of endpoints the data type was sent to.
  core.List<GoogleChecksReportV1alphaDataTypeEndpointEvidence>? endpoints;

  /// List of included permissions that imply collection of the data type.
  core.List<GoogleChecksReportV1alphaDataTypePermissionEvidence>? permissions;

  /// List of privacy policy texts that imply collection of the data type.
  core.List<GoogleChecksReportV1alphaDataTypePrivacyPolicyTextEvidence>?
  privacyPolicyTexts;

  GoogleChecksReportV1alphaDataTypeEvidence({
    this.endpoints,
    this.permissions,
    this.privacyPolicyTexts,
  });

  GoogleChecksReportV1alphaDataTypeEvidence.fromJson(core.Map json_)
    : this(
        endpoints:
            (json_['endpoints'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleChecksReportV1alphaDataTypeEndpointEvidence.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
        permissions:
            (json_['permissions'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleChecksReportV1alphaDataTypePermissionEvidence.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
        privacyPolicyTexts:
            (json_['privacyPolicyTexts'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleChecksReportV1alphaDataTypePrivacyPolicyTextEvidence.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (endpoints != null) 'endpoints': endpoints!,
    if (permissions != null) 'permissions': permissions!,
    if (privacyPolicyTexts != null) 'privacyPolicyTexts': privacyPolicyTexts!,
  };
}

/// Evidence based on the inclusion of a permission.
class GoogleChecksReportV1alphaDataTypePermissionEvidence {
  /// Permission declared by your app.
  GoogleChecksReportV1alphaPermission? permission;

  GoogleChecksReportV1alphaDataTypePermissionEvidence({this.permission});

  GoogleChecksReportV1alphaDataTypePermissionEvidence.fromJson(core.Map json_)
    : this(
        permission:
            json_.containsKey('permission')
                ? GoogleChecksReportV1alphaPermission.fromJson(
                  json_['permission'] as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (permission != null) 'permission': permission!,
  };
}

/// Evidence based on information from the privacy policy.
class GoogleChecksReportV1alphaDataTypePrivacyPolicyTextEvidence {
  /// The privacy policy fragment that implies collection of the data type.
  GoogleChecksReportV1alphaPolicyFragment? policyFragment;

  GoogleChecksReportV1alphaDataTypePrivacyPolicyTextEvidence({
    this.policyFragment,
  });

  GoogleChecksReportV1alphaDataTypePrivacyPolicyTextEvidence.fromJson(
    core.Map json_,
  ) : this(
        policyFragment:
            json_.containsKey('policyFragment')
                ? GoogleChecksReportV1alphaPolicyFragment.fromJson(
                  json_['policyFragment']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (policyFragment != null) 'policyFragment': policyFragment!,
  };
}

/// Information about an endpoint.
class GoogleChecksReportV1alphaEndpoint {
  /// Domain name (e.g. ads.google.com).
  core.String? domain;

  GoogleChecksReportV1alphaEndpoint({this.domain});

  GoogleChecksReportV1alphaEndpoint.fromJson(core.Map json_)
    : this(domain: json_['domain'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() => {
    if (domain != null) 'domain': domain!,
  };
}

/// The response message for ReportService.ListReports.
class GoogleChecksReportV1alphaListReportsResponse {
  /// A token which can be sent as `page_token` to retrieve the next page.
  ///
  /// If this field is omitted, there are no subsequent pages.
  core.String? nextPageToken;

  /// The reports for the specified app.
  core.List<GoogleChecksReportV1alphaReport>? reports;

  GoogleChecksReportV1alphaListReportsResponse({
    this.nextPageToken,
    this.reports,
  });

  GoogleChecksReportV1alphaListReportsResponse.fromJson(core.Map json_)
    : this(
        nextPageToken: json_['nextPageToken'] as core.String?,
        reports:
            (json_['reports'] as core.List?)
                ?.map(
                  (value) => GoogleChecksReportV1alphaReport.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (nextPageToken != null) 'nextPageToken': nextPageToken!,
    if (reports != null) 'reports': reports!,
  };
}

/// Information about a permission.
class GoogleChecksReportV1alphaPermission {
  /// Permission identifier.
  core.String? id;

  GoogleChecksReportV1alphaPermission({this.id});

  GoogleChecksReportV1alphaPermission.fromJson(core.Map json_)
    : this(id: json_['id'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() => {if (id != null) 'id': id!};
}

/// Information about a policy fragment.
class GoogleChecksReportV1alphaPolicyFragment {
  /// HTML content.
  core.String? htmlContent;

  /// Policy URL.
  core.String? sourceUri;

  GoogleChecksReportV1alphaPolicyFragment({this.htmlContent, this.sourceUri});

  GoogleChecksReportV1alphaPolicyFragment.fromJson(core.Map json_)
    : this(
        htmlContent: json_['htmlContent'] as core.String?,
        sourceUri: json_['sourceUri'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (htmlContent != null) 'htmlContent': htmlContent!,
    if (sourceUri != null) 'sourceUri': sourceUri!,
  };
}

/// Privacy report.
class GoogleChecksReportV1alphaReport {
  /// Information about the analyzed app bundle.
  GoogleChecksReportV1alphaAppBundle? appBundle;

  /// List of checks that were run on the app bundle.
  core.List<GoogleChecksReportV1alphaCheck>? checks;

  /// Information related to data monitoring.
  GoogleChecksReportV1alphaDataMonitoring? dataMonitoring;

  /// Resource name of the report.
  core.String? name;

  /// A URL to view results.
  core.String? resultsUri;

  GoogleChecksReportV1alphaReport({
    this.appBundle,
    this.checks,
    this.dataMonitoring,
    this.name,
    this.resultsUri,
  });

  GoogleChecksReportV1alphaReport.fromJson(core.Map json_)
    : this(
        appBundle:
            json_.containsKey('appBundle')
                ? GoogleChecksReportV1alphaAppBundle.fromJson(
                  json_['appBundle'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        checks:
            (json_['checks'] as core.List?)
                ?.map(
                  (value) => GoogleChecksReportV1alphaCheck.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        dataMonitoring:
            json_.containsKey('dataMonitoring')
                ? GoogleChecksReportV1alphaDataMonitoring.fromJson(
                  json_['dataMonitoring']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        name: json_['name'] as core.String?,
        resultsUri: json_['resultsUri'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (appBundle != null) 'appBundle': appBundle!,
    if (checks != null) 'checks': checks!,
    if (dataMonitoring != null) 'dataMonitoring': dataMonitoring!,
    if (name != null) 'name': name!,
    if (resultsUri != null) 'resultsUri': resultsUri!,
  };
}

/// Information about an SDK.
class GoogleChecksReportV1alphaSdk {
  /// SDK identifier.
  core.String? id;

  GoogleChecksReportV1alphaSdk({this.id});

  GoogleChecksReportV1alphaSdk.fromJson(core.Map json_)
    : this(id: json_['id'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() => {if (id != null) 'id': id!};
}

/// The response message for Operations.ListOperations.
class ListOperationsResponse {
  /// The standard List next-page token.
  core.String? nextPageToken;

  /// A list of operations that matches the specified filter in the request.
  core.List<Operation>? operations;

  ListOperationsResponse({this.nextPageToken, this.operations});

  ListOperationsResponse.fromJson(core.Map json_)
    : this(
        nextPageToken: json_['nextPageToken'] as core.String?,
        operations:
            (json_['operations'] as core.List?)
                ?.map(
                  (value) => Operation.fromJson(
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

  Operation({this.done, this.error, this.metadata, this.name, this.response});

  Operation.fromJson(core.Map json_)
    : this(
        done: json_['done'] as core.bool?,
        error:
            json_.containsKey('error')
                ? Status.fromJson(
                  json_['error'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        metadata:
            json_.containsKey('metadata')
                ? json_['metadata'] as core.Map<core.String, core.dynamic>
                : null,
        name: json_['name'] as core.String?,
        response:
            json_.containsKey('response')
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

/// The `Status` type defines a logical error model that is suitable for
/// different programming environments, including REST APIs and RPC APIs.
///
/// It is used by [gRPC](https://github.com/grpc). Each `Status` message
/// contains three pieces of data: error code, error message, and error details.
/// You can find out more about this error model and how to work with it in the
/// [API Design Guide](https://cloud.google.com/apis/design/errors).
typedef Status = $Status00;

/// The request message for Operations.WaitOperation.
typedef WaitOperationRequest = $WaitOperationRequest;
