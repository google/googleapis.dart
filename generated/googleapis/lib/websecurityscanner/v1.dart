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

/// Web Security Scanner API - v1
///
/// Scans your Compute and App Engine apps for common web vulnerabilities.
///
/// For more information, see
/// <https://cloud.google.com/security-command-center/docs/concepts-web-security-scanner-overview/>
///
/// Create an instance of [WebSecurityScannerApi] to access these resources:
///
/// - [ProjectsResource]
///   - [ProjectsScanConfigsResource]
///     - [ProjectsScanConfigsScanRunsResource]
///       - [ProjectsScanConfigsScanRunsCrawledUrlsResource]
///       - [ProjectsScanConfigsScanRunsFindingTypeStatsResource]
///       - [ProjectsScanConfigsScanRunsFindingsResource]
library websecurityscanner.v1;

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

/// Scans your Compute and App Engine apps for common web vulnerabilities.
class WebSecurityScannerApi {
  /// See, edit, configure, and delete your Google Cloud data and see the email
  /// address for your Google Account.
  static const cloudPlatformScope =
      'https://www.googleapis.com/auth/cloud-platform';

  final commons.ApiRequester _requester;

  ProjectsResource get projects => ProjectsResource(_requester);

  WebSecurityScannerApi(http.Client client,
      {core.String rootUrl = 'https://websecurityscanner.googleapis.com/',
      core.String servicePath = ''})
      : _requester =
            commons.ApiRequester(client, rootUrl, servicePath, requestHeaders);
}

class ProjectsResource {
  final commons.ApiRequester _requester;

  ProjectsScanConfigsResource get scanConfigs =>
      ProjectsScanConfigsResource(_requester);

  ProjectsResource(commons.ApiRequester client) : _requester = client;
}

class ProjectsScanConfigsResource {
  final commons.ApiRequester _requester;

  ProjectsScanConfigsScanRunsResource get scanRuns =>
      ProjectsScanConfigsScanRunsResource(_requester);

  ProjectsScanConfigsResource(commons.ApiRequester client)
      : _requester = client;

  /// Creates a new ScanConfig.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent resource name where the scan is created,
  /// which should be a project resource name in the format
  /// 'projects/{projectId}'.
  /// Value must have pattern `^projects/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ScanConfig].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ScanConfig> create(
    ScanConfig request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/scanConfigs';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return ScanConfig.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Deletes an existing ScanConfig and its child resources.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name of the ScanConfig to be deleted. The
  /// name follows the format of
  /// 'projects/{projectId}/scanConfigs/{scanConfigId}'.
  /// Value must have pattern `^projects/\[^/\]+/scanConfigs/\[^/\]+$`.
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
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return Empty.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Gets a ScanConfig.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name of the ScanConfig to be returned. The
  /// name follows the format of
  /// 'projects/{projectId}/scanConfigs/{scanConfigId}'.
  /// Value must have pattern `^projects/\[^/\]+/scanConfigs/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ScanConfig].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ScanConfig> get(
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
    return ScanConfig.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists ScanConfigs under a given project.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent resource name, which should be a project
  /// resource name in the format 'projects/{projectId}'.
  /// Value must have pattern `^projects/\[^/\]+$`.
  ///
  /// [pageSize] - The maximum number of ScanConfigs to return, can be limited
  /// by server. If not specified or not positive, the implementation will
  /// select a reasonable value.
  ///
  /// [pageToken] - A token identifying a page of results to be returned. This
  /// should be a `next_page_token` value returned from a previous List request.
  /// If unspecified, the first page of results is returned.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListScanConfigsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListScanConfigsResponse> list(
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

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/scanConfigs';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListScanConfigsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Updates a ScanConfig.
  ///
  /// This method support partial update of a ScanConfig.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - The resource name of the ScanConfig. The name follows the format
  /// of 'projects/{projectId}/scanConfigs/{scanConfigId}'. The ScanConfig IDs
  /// are generated by the system.
  /// Value must have pattern `^projects/\[^/\]+/scanConfigs/\[^/\]+$`.
  ///
  /// [updateMask] - Required. The update mask applies to the resource. For the
  /// `FieldMask` definition, see
  /// https://developers.google.com/protocol-buffers/docs/reference/google.protobuf#fieldmask
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ScanConfig].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ScanConfig> patch(
    ScanConfig request,
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
    return ScanConfig.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Start a ScanRun according to the given ScanConfig.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name of the ScanConfig to be used. The
  /// name follows the format of
  /// 'projects/{projectId}/scanConfigs/{scanConfigId}'.
  /// Value must have pattern `^projects/\[^/\]+/scanConfigs/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ScanRun].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ScanRun> start(
    StartScanRunRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':start';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return ScanRun.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsScanConfigsScanRunsResource {
  final commons.ApiRequester _requester;

  ProjectsScanConfigsScanRunsCrawledUrlsResource get crawledUrls =>
      ProjectsScanConfigsScanRunsCrawledUrlsResource(_requester);
  ProjectsScanConfigsScanRunsFindingTypeStatsResource get findingTypeStats =>
      ProjectsScanConfigsScanRunsFindingTypeStatsResource(_requester);
  ProjectsScanConfigsScanRunsFindingsResource get findings =>
      ProjectsScanConfigsScanRunsFindingsResource(_requester);

  ProjectsScanConfigsScanRunsResource(commons.ApiRequester client)
      : _requester = client;

  /// Gets a ScanRun.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name of the ScanRun to be returned. The
  /// name follows the format of
  /// 'projects/{projectId}/scanConfigs/{scanConfigId}/scanRuns/{scanRunId}'.
  /// Value must have pattern
  /// `^projects/\[^/\]+/scanConfigs/\[^/\]+/scanRuns/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ScanRun].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ScanRun> get(
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
    return ScanRun.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists ScanRuns under a given ScanConfig, in descending order of ScanRun
  /// stop time.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent resource name, which should be a scan
  /// resource name in the format
  /// 'projects/{projectId}/scanConfigs/{scanConfigId}'.
  /// Value must have pattern `^projects/\[^/\]+/scanConfigs/\[^/\]+$`.
  ///
  /// [pageSize] - The maximum number of ScanRuns to return, can be limited by
  /// server. If not specified or not positive, the implementation will select a
  /// reasonable value.
  ///
  /// [pageToken] - A token identifying a page of results to be returned. This
  /// should be a `next_page_token` value returned from a previous List request.
  /// If unspecified, the first page of results is returned.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListScanRunsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListScanRunsResponse> list(
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

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/scanRuns';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListScanRunsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Stops a ScanRun.
  ///
  /// The stopped ScanRun is returned.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name of the ScanRun to be stopped. The
  /// name follows the format of
  /// 'projects/{projectId}/scanConfigs/{scanConfigId}/scanRuns/{scanRunId}'.
  /// Value must have pattern
  /// `^projects/\[^/\]+/scanConfigs/\[^/\]+/scanRuns/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ScanRun].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ScanRun> stop(
    StopScanRunRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':stop';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return ScanRun.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsScanConfigsScanRunsCrawledUrlsResource {
  final commons.ApiRequester _requester;

  ProjectsScanConfigsScanRunsCrawledUrlsResource(commons.ApiRequester client)
      : _requester = client;

  /// List CrawledUrls under a given ScanRun.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent resource name, which should be a scan run
  /// resource name in the format
  /// 'projects/{projectId}/scanConfigs/{scanConfigId}/scanRuns/{scanRunId}'.
  /// Value must have pattern
  /// `^projects/\[^/\]+/scanConfigs/\[^/\]+/scanRuns/\[^/\]+$`.
  ///
  /// [pageSize] - The maximum number of CrawledUrls to return, can be limited
  /// by server. If not specified or not positive, the implementation will
  /// select a reasonable value.
  ///
  /// [pageToken] - A token identifying a page of results to be returned. This
  /// should be a `next_page_token` value returned from a previous List request.
  /// If unspecified, the first page of results is returned.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListCrawledUrlsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListCrawledUrlsResponse> list(
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

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/crawledUrls';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListCrawledUrlsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsScanConfigsScanRunsFindingTypeStatsResource {
  final commons.ApiRequester _requester;

  ProjectsScanConfigsScanRunsFindingTypeStatsResource(
      commons.ApiRequester client)
      : _requester = client;

  /// List all FindingTypeStats under a given ScanRun.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent resource name, which should be a scan run
  /// resource name in the format
  /// 'projects/{projectId}/scanConfigs/{scanConfigId}/scanRuns/{scanRunId}'.
  /// Value must have pattern
  /// `^projects/\[^/\]+/scanConfigs/\[^/\]+/scanRuns/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListFindingTypeStatsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListFindingTypeStatsResponse> list(
    core.String parent, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/findingTypeStats';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListFindingTypeStatsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsScanConfigsScanRunsFindingsResource {
  final commons.ApiRequester _requester;

  ProjectsScanConfigsScanRunsFindingsResource(commons.ApiRequester client)
      : _requester = client;

  /// Gets a Finding.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name of the Finding to be returned. The
  /// name follows the format of
  /// 'projects/{projectId}/scanConfigs/{scanConfigId}/scanRuns/{scanRunId}/findings/{findingId}'.
  /// Value must have pattern
  /// `^projects/\[^/\]+/scanConfigs/\[^/\]+/scanRuns/\[^/\]+/findings/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Finding].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Finding> get(
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
    return Finding.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// List Findings under a given ScanRun.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent resource name, which should be a scan run
  /// resource name in the format
  /// 'projects/{projectId}/scanConfigs/{scanConfigId}/scanRuns/{scanRunId}'.
  /// Value must have pattern
  /// `^projects/\[^/\]+/scanConfigs/\[^/\]+/scanRuns/\[^/\]+$`.
  ///
  /// [filter] - The filter expression. The expression must be in the format: .
  /// Supported field: 'finding_type'. Supported operator: '='.
  ///
  /// [pageSize] - The maximum number of Findings to return, can be limited by
  /// server. If not specified or not positive, the implementation will select a
  /// reasonable value.
  ///
  /// [pageToken] - A token identifying a page of results to be returned. This
  /// should be a `next_page_token` value returned from a previous List request.
  /// If unspecified, the first page of results is returned.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListFindingsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListFindingsResponse> list(
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

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/findings';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListFindingsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

/// Scan authentication configuration.
class Authentication {
  /// Authentication using a custom account.
  CustomAccount? customAccount;

  /// Authentication using a Google account.
  GoogleAccount? googleAccount;

  /// Authentication using Identity-Aware-Proxy (IAP).
  IapCredential? iapCredential;

  Authentication({
    this.customAccount,
    this.googleAccount,
    this.iapCredential,
  });

  Authentication.fromJson(core.Map json_)
      : this(
          customAccount: json_.containsKey('customAccount')
              ? CustomAccount.fromJson(
                  json_['customAccount'] as core.Map<core.String, core.dynamic>)
              : null,
          googleAccount: json_.containsKey('googleAccount')
              ? GoogleAccount.fromJson(
                  json_['googleAccount'] as core.Map<core.String, core.dynamic>)
              : null,
          iapCredential: json_.containsKey('iapCredential')
              ? IapCredential.fromJson(
                  json_['iapCredential'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (customAccount != null) 'customAccount': customAccount!,
        if (googleAccount != null) 'googleAccount': googleAccount!,
        if (iapCredential != null) 'iapCredential': iapCredential!,
      };
}

/// A CrawledUrl resource represents a URL that was crawled during a ScanRun.
///
/// Web Security Scanner Service crawls the web applications, following all
/// links within the scope of sites, to find the URLs to test against.
class CrawledUrl {
  /// The body of the request that was used to visit the URL.
  ///
  /// Output only.
  core.String? body;

  /// The http method of the request that was used to visit the URL, in
  /// uppercase.
  ///
  /// Output only.
  core.String? httpMethod;

  /// The URL that was crawled.
  ///
  /// Output only.
  core.String? url;

  CrawledUrl({
    this.body,
    this.httpMethod,
    this.url,
  });

  CrawledUrl.fromJson(core.Map json_)
      : this(
          body: json_.containsKey('body') ? json_['body'] as core.String : null,
          httpMethod: json_.containsKey('httpMethod')
              ? json_['httpMethod'] as core.String
              : null,
          url: json_.containsKey('url') ? json_['url'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (body != null) 'body': body!,
        if (httpMethod != null) 'httpMethod': httpMethod!,
        if (url != null) 'url': url!,
      };
}

/// Describes authentication configuration that uses a custom account.
class CustomAccount {
  /// The login form URL of the website.
  ///
  /// Required.
  core.String? loginUrl;

  /// Input only.
  ///
  /// The password of the custom account. The credential is stored encrypted and
  /// not returned in any response nor included in audit logs.
  ///
  /// Required.
  core.String? password;

  /// The user name of the custom account.
  ///
  /// Required.
  core.String? username;

  CustomAccount({
    this.loginUrl,
    this.password,
    this.username,
  });

  CustomAccount.fromJson(core.Map json_)
      : this(
          loginUrl: json_.containsKey('loginUrl')
              ? json_['loginUrl'] as core.String
              : null,
          password: json_.containsKey('password')
              ? json_['password'] as core.String
              : null,
          username: json_.containsKey('username')
              ? json_['username'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (loginUrl != null) 'loginUrl': loginUrl!,
        if (password != null) 'password': password!,
        if (username != null) 'username': username!,
      };
}

/// A generic empty message that you can re-use to avoid defining duplicated
/// empty messages in your APIs.
///
/// A typical example is to use it as the request or the response type of an API
/// method. For instance: service Foo { rpc Bar(google.protobuf.Empty) returns
/// (google.protobuf.Empty); }
typedef Empty = $Empty;

/// A Finding resource represents a vulnerability instance identified during a
/// ScanRun.
class Finding {
  /// The body of the request that triggered the vulnerability.
  ///
  /// Output only.
  core.String? body;

  /// The description of the vulnerability.
  ///
  /// Output only.
  core.String? description;

  /// The URL where the browser lands when the vulnerability is detected.
  ///
  /// Output only.
  core.String? finalUrl;

  /// The type of the Finding.
  ///
  /// Detailed and up-to-date information on findings can be found here:
  /// https://cloud.google.com/security-command-center/docs/how-to-remediate-web-security-scanner-findings
  ///
  /// Output only.
  core.String? findingType;

  /// An addon containing information reported for a vulnerability with an HTML
  /// form, if any.
  ///
  /// Output only.
  Form? form;

  /// If the vulnerability was originated from nested IFrame, the immediate
  /// parent IFrame is reported.
  ///
  /// Output only.
  core.String? frameUrl;

  /// The URL produced by the server-side fuzzer and used in the request that
  /// triggered the vulnerability.
  ///
  /// Output only.
  core.String? fuzzedUrl;

  /// The http method of the request that triggered the vulnerability, in
  /// uppercase.
  ///
  /// Output only.
  core.String? httpMethod;

  /// The resource name of the Finding.
  ///
  /// The name follows the format of
  /// 'projects/{projectId}/scanConfigs/{scanConfigId}/scanruns/{scanRunId}/findings/{findingId}'.
  /// The finding IDs are generated by the system.
  ///
  /// Output only.
  core.String? name;

  /// An addon containing information about outdated libraries.
  ///
  /// Output only.
  OutdatedLibrary? outdatedLibrary;

  /// The URL containing human-readable payload that user can leverage to
  /// reproduce the vulnerability.
  ///
  /// Output only.
  core.String? reproductionUrl;

  /// The severity level of the reported vulnerability.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "SEVERITY_UNSPECIFIED" : No severity specified. The default value.
  /// - "CRITICAL" : Critical severity.
  /// - "HIGH" : High severity.
  /// - "MEDIUM" : Medium severity.
  /// - "LOW" : Low severity.
  core.String? severity;

  /// The tracking ID uniquely identifies a vulnerability instance across
  /// multiple ScanRuns.
  ///
  /// Output only.
  core.String? trackingId;

  /// An addon containing detailed information regarding any resource causing
  /// the vulnerability such as JavaScript sources, image, audio files, etc.
  ///
  /// Output only.
  ViolatingResource? violatingResource;

  /// An addon containing information about vulnerable or missing HTTP headers.
  ///
  /// Output only.
  VulnerableHeaders? vulnerableHeaders;

  /// An addon containing information about request parameters which were found
  /// to be vulnerable.
  ///
  /// Output only.
  VulnerableParameters? vulnerableParameters;

  /// An addon containing information reported for an XSS, if any.
  ///
  /// Output only.
  Xss? xss;

  /// An addon containing information reported for an XXE, if any.
  ///
  /// Output only.
  Xxe? xxe;

  Finding({
    this.body,
    this.description,
    this.finalUrl,
    this.findingType,
    this.form,
    this.frameUrl,
    this.fuzzedUrl,
    this.httpMethod,
    this.name,
    this.outdatedLibrary,
    this.reproductionUrl,
    this.severity,
    this.trackingId,
    this.violatingResource,
    this.vulnerableHeaders,
    this.vulnerableParameters,
    this.xss,
    this.xxe,
  });

  Finding.fromJson(core.Map json_)
      : this(
          body: json_.containsKey('body') ? json_['body'] as core.String : null,
          description: json_.containsKey('description')
              ? json_['description'] as core.String
              : null,
          finalUrl: json_.containsKey('finalUrl')
              ? json_['finalUrl'] as core.String
              : null,
          findingType: json_.containsKey('findingType')
              ? json_['findingType'] as core.String
              : null,
          form: json_.containsKey('form')
              ? Form.fromJson(
                  json_['form'] as core.Map<core.String, core.dynamic>)
              : null,
          frameUrl: json_.containsKey('frameUrl')
              ? json_['frameUrl'] as core.String
              : null,
          fuzzedUrl: json_.containsKey('fuzzedUrl')
              ? json_['fuzzedUrl'] as core.String
              : null,
          httpMethod: json_.containsKey('httpMethod')
              ? json_['httpMethod'] as core.String
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          outdatedLibrary: json_.containsKey('outdatedLibrary')
              ? OutdatedLibrary.fromJson(json_['outdatedLibrary']
                  as core.Map<core.String, core.dynamic>)
              : null,
          reproductionUrl: json_.containsKey('reproductionUrl')
              ? json_['reproductionUrl'] as core.String
              : null,
          severity: json_.containsKey('severity')
              ? json_['severity'] as core.String
              : null,
          trackingId: json_.containsKey('trackingId')
              ? json_['trackingId'] as core.String
              : null,
          violatingResource: json_.containsKey('violatingResource')
              ? ViolatingResource.fromJson(json_['violatingResource']
                  as core.Map<core.String, core.dynamic>)
              : null,
          vulnerableHeaders: json_.containsKey('vulnerableHeaders')
              ? VulnerableHeaders.fromJson(json_['vulnerableHeaders']
                  as core.Map<core.String, core.dynamic>)
              : null,
          vulnerableParameters: json_.containsKey('vulnerableParameters')
              ? VulnerableParameters.fromJson(json_['vulnerableParameters']
                  as core.Map<core.String, core.dynamic>)
              : null,
          xss: json_.containsKey('xss')
              ? Xss.fromJson(
                  json_['xss'] as core.Map<core.String, core.dynamic>)
              : null,
          xxe: json_.containsKey('xxe')
              ? Xxe.fromJson(
                  json_['xxe'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (body != null) 'body': body!,
        if (description != null) 'description': description!,
        if (finalUrl != null) 'finalUrl': finalUrl!,
        if (findingType != null) 'findingType': findingType!,
        if (form != null) 'form': form!,
        if (frameUrl != null) 'frameUrl': frameUrl!,
        if (fuzzedUrl != null) 'fuzzedUrl': fuzzedUrl!,
        if (httpMethod != null) 'httpMethod': httpMethod!,
        if (name != null) 'name': name!,
        if (outdatedLibrary != null) 'outdatedLibrary': outdatedLibrary!,
        if (reproductionUrl != null) 'reproductionUrl': reproductionUrl!,
        if (severity != null) 'severity': severity!,
        if (trackingId != null) 'trackingId': trackingId!,
        if (violatingResource != null) 'violatingResource': violatingResource!,
        if (vulnerableHeaders != null) 'vulnerableHeaders': vulnerableHeaders!,
        if (vulnerableParameters != null)
          'vulnerableParameters': vulnerableParameters!,
        if (xss != null) 'xss': xss!,
        if (xxe != null) 'xxe': xxe!,
      };
}

/// A FindingTypeStats resource represents stats regarding a specific
/// FindingType of Findings under a given ScanRun.
class FindingTypeStats {
  /// The count of findings belonging to this finding type.
  ///
  /// Output only.
  core.int? findingCount;

  /// The finding type associated with the stats.
  ///
  /// Output only.
  core.String? findingType;

  FindingTypeStats({
    this.findingCount,
    this.findingType,
  });

  FindingTypeStats.fromJson(core.Map json_)
      : this(
          findingCount: json_.containsKey('findingCount')
              ? json_['findingCount'] as core.int
              : null,
          findingType: json_.containsKey('findingType')
              ? json_['findingType'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (findingCount != null) 'findingCount': findingCount!,
        if (findingType != null) 'findingType': findingType!,
      };
}

/// ! Information about a vulnerability with an HTML.
class Form {
  /// ! The URI where to send the form when it's submitted.
  core.String? actionUri;

  /// ! The names of form fields related to the vulnerability.
  core.List<core.String>? fields;

  Form({
    this.actionUri,
    this.fields,
  });

  Form.fromJson(core.Map json_)
      : this(
          actionUri: json_.containsKey('actionUri')
              ? json_['actionUri'] as core.String
              : null,
          fields: json_.containsKey('fields')
              ? (json_['fields'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (actionUri != null) 'actionUri': actionUri!,
        if (fields != null) 'fields': fields!,
      };
}

/// Describes authentication configuration that uses a Google account.
class GoogleAccount {
  /// Input only.
  ///
  /// The password of the Google account. The credential is stored encrypted and
  /// not returned in any response nor included in audit logs.
  ///
  /// Required.
  core.String? password;

  /// The user name of the Google account.
  ///
  /// Required.
  core.String? username;

  GoogleAccount({
    this.password,
    this.username,
  });

  GoogleAccount.fromJson(core.Map json_)
      : this(
          password: json_.containsKey('password')
              ? json_['password'] as core.String
              : null,
          username: json_.containsKey('username')
              ? json_['username'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (password != null) 'password': password!,
        if (username != null) 'username': username!,
      };
}

/// Describes a HTTP Header.
typedef Header = $Header;

/// Describes authentication configuration for Identity-Aware-Proxy (IAP).
class IapCredential {
  /// Authentication configuration when Web-Security-Scanner service account is
  /// added in Identity-Aware-Proxy (IAP) access policies.
  IapTestServiceAccountInfo? iapTestServiceAccountInfo;

  IapCredential({
    this.iapTestServiceAccountInfo,
  });

  IapCredential.fromJson(core.Map json_)
      : this(
          iapTestServiceAccountInfo:
              json_.containsKey('iapTestServiceAccountInfo')
                  ? IapTestServiceAccountInfo.fromJson(
                      json_['iapTestServiceAccountInfo']
                          as core.Map<core.String, core.dynamic>)
                  : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (iapTestServiceAccountInfo != null)
          'iapTestServiceAccountInfo': iapTestServiceAccountInfo!,
      };
}

/// Describes authentication configuration when Web-Security-Scanner service
/// account is added in Identity-Aware-Proxy (IAP) access policies.
class IapTestServiceAccountInfo {
  /// Describes OAuth2 client id of resources protected by Identity-Aware-Proxy
  /// (IAP).
  ///
  /// Required.
  core.String? targetAudienceClientId;

  IapTestServiceAccountInfo({
    this.targetAudienceClientId,
  });

  IapTestServiceAccountInfo.fromJson(core.Map json_)
      : this(
          targetAudienceClientId: json_.containsKey('targetAudienceClientId')
              ? json_['targetAudienceClientId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (targetAudienceClientId != null)
          'targetAudienceClientId': targetAudienceClientId!,
      };
}

/// Response for the `ListCrawledUrls` method.
class ListCrawledUrlsResponse {
  /// The list of CrawledUrls returned.
  core.List<CrawledUrl>? crawledUrls;

  /// Token to retrieve the next page of results, or empty if there are no more
  /// results in the list.
  core.String? nextPageToken;

  ListCrawledUrlsResponse({
    this.crawledUrls,
    this.nextPageToken,
  });

  ListCrawledUrlsResponse.fromJson(core.Map json_)
      : this(
          crawledUrls: json_.containsKey('crawledUrls')
              ? (json_['crawledUrls'] as core.List)
                  .map((value) => CrawledUrl.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (crawledUrls != null) 'crawledUrls': crawledUrls!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
      };
}

/// Response for the `ListFindingTypeStats` method.
class ListFindingTypeStatsResponse {
  /// The list of FindingTypeStats returned.
  core.List<FindingTypeStats>? findingTypeStats;

  ListFindingTypeStatsResponse({
    this.findingTypeStats,
  });

  ListFindingTypeStatsResponse.fromJson(core.Map json_)
      : this(
          findingTypeStats: json_.containsKey('findingTypeStats')
              ? (json_['findingTypeStats'] as core.List)
                  .map((value) => FindingTypeStats.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (findingTypeStats != null) 'findingTypeStats': findingTypeStats!,
      };
}

/// Response for the `ListFindings` method.
class ListFindingsResponse {
  /// The list of Findings returned.
  core.List<Finding>? findings;

  /// Token to retrieve the next page of results, or empty if there are no more
  /// results in the list.
  core.String? nextPageToken;

  ListFindingsResponse({
    this.findings,
    this.nextPageToken,
  });

  ListFindingsResponse.fromJson(core.Map json_)
      : this(
          findings: json_.containsKey('findings')
              ? (json_['findings'] as core.List)
                  .map((value) => Finding.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (findings != null) 'findings': findings!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
      };
}

/// Response for the `ListScanConfigs` method.
class ListScanConfigsResponse {
  /// Token to retrieve the next page of results, or empty if there are no more
  /// results in the list.
  core.String? nextPageToken;

  /// The list of ScanConfigs returned.
  core.List<ScanConfig>? scanConfigs;

  ListScanConfigsResponse({
    this.nextPageToken,
    this.scanConfigs,
  });

  ListScanConfigsResponse.fromJson(core.Map json_)
      : this(
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
          scanConfigs: json_.containsKey('scanConfigs')
              ? (json_['scanConfigs'] as core.List)
                  .map((value) => ScanConfig.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (scanConfigs != null) 'scanConfigs': scanConfigs!,
      };
}

/// Response for the `ListScanRuns` method.
class ListScanRunsResponse {
  /// Token to retrieve the next page of results, or empty if there are no more
  /// results in the list.
  core.String? nextPageToken;

  /// The list of ScanRuns returned.
  core.List<ScanRun>? scanRuns;

  ListScanRunsResponse({
    this.nextPageToken,
    this.scanRuns,
  });

  ListScanRunsResponse.fromJson(core.Map json_)
      : this(
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
          scanRuns: json_.containsKey('scanRuns')
              ? (json_['scanRuns'] as core.List)
                  .map((value) => ScanRun.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (scanRuns != null) 'scanRuns': scanRuns!,
      };
}

/// Information reported for an outdated library.
class OutdatedLibrary {
  /// URLs to learn more information about the vulnerabilities in the library.
  core.List<core.String>? learnMoreUrls;

  /// The name of the outdated library.
  core.String? libraryName;

  /// The version number.
  core.String? version;

  OutdatedLibrary({
    this.learnMoreUrls,
    this.libraryName,
    this.version,
  });

  OutdatedLibrary.fromJson(core.Map json_)
      : this(
          learnMoreUrls: json_.containsKey('learnMoreUrls')
              ? (json_['learnMoreUrls'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          libraryName: json_.containsKey('libraryName')
              ? json_['libraryName'] as core.String
              : null,
          version: json_.containsKey('version')
              ? json_['version'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (learnMoreUrls != null) 'learnMoreUrls': learnMoreUrls!,
        if (libraryName != null) 'libraryName': libraryName!,
        if (version != null) 'version': version!,
      };
}

/// A ScanConfig resource contains the configurations to launch a scan.
class ScanConfig {
  /// The authentication configuration.
  ///
  /// If specified, service will use the authentication configuration during
  /// scanning.
  Authentication? authentication;

  /// The excluded URL patterns as described in
  /// https://cloud.google.com/security-command-center/docs/how-to-use-web-security-scanner#excluding_urls
  core.List<core.String>? blacklistPatterns;

  /// The user provided display name of the ScanConfig.
  ///
  /// Required.
  core.String? displayName;

  /// Controls export of scan configurations and results to Security Command
  /// Center.
  /// Possible string values are:
  /// - "EXPORT_TO_SECURITY_COMMAND_CENTER_UNSPECIFIED" : Use default, which is
  /// ENABLED.
  /// - "ENABLED" : Export results of this scan to Security Command Center.
  /// - "DISABLED" : Do not export results of this scan to Security Command
  /// Center.
  core.String? exportToSecurityCommandCenter;

  /// Whether to keep scanning even if most requests return HTTP error codes.
  core.bool? ignoreHttpStatusErrors;

  /// Whether the scan config is managed by Web Security Scanner, output only.
  core.bool? managedScan;

  /// The maximum QPS during scanning.
  ///
  /// A valid value ranges from 5 to 20 inclusively. If the field is unspecified
  /// or its value is set 0, server will default to 15. Other values outside of
  /// \[5, 20\] range will be rejected with INVALID_ARGUMENT error.
  core.int? maxQps;

  /// The resource name of the ScanConfig.
  ///
  /// The name follows the format of
  /// 'projects/{projectId}/scanConfigs/{scanConfigId}'. The ScanConfig IDs are
  /// generated by the system.
  core.String? name;

  /// The risk level selected for the scan
  /// Possible string values are:
  /// - "RISK_LEVEL_UNSPECIFIED" : Use default, which is NORMAL.
  /// - "NORMAL" : Normal scanning (Recommended)
  /// - "LOW" : Lower impact scanning
  core.String? riskLevel;

  /// The schedule of the ScanConfig.
  Schedule? schedule;

  /// The starting URLs from which the scanner finds site pages.
  ///
  /// Required.
  core.List<core.String>? startingUrls;

  /// Whether the scan configuration has enabled static IP address scan feature.
  ///
  /// If enabled, the scanner will access applications from static IP addresses.
  core.bool? staticIpScan;

  /// The user agent used during scanning.
  /// Possible string values are:
  /// - "USER_AGENT_UNSPECIFIED" : The user agent is unknown. Service will
  /// default to CHROME_LINUX.
  /// - "CHROME_LINUX" : Chrome on Linux. This is the service default if
  /// unspecified.
  /// - "CHROME_ANDROID" : Chrome on Android.
  /// - "SAFARI_IPHONE" : Safari on IPhone.
  core.String? userAgent;

  ScanConfig({
    this.authentication,
    this.blacklistPatterns,
    this.displayName,
    this.exportToSecurityCommandCenter,
    this.ignoreHttpStatusErrors,
    this.managedScan,
    this.maxQps,
    this.name,
    this.riskLevel,
    this.schedule,
    this.startingUrls,
    this.staticIpScan,
    this.userAgent,
  });

  ScanConfig.fromJson(core.Map json_)
      : this(
          authentication: json_.containsKey('authentication')
              ? Authentication.fromJson(json_['authentication']
                  as core.Map<core.String, core.dynamic>)
              : null,
          blacklistPatterns: json_.containsKey('blacklistPatterns')
              ? (json_['blacklistPatterns'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          displayName: json_.containsKey('displayName')
              ? json_['displayName'] as core.String
              : null,
          exportToSecurityCommandCenter:
              json_.containsKey('exportToSecurityCommandCenter')
                  ? json_['exportToSecurityCommandCenter'] as core.String
                  : null,
          ignoreHttpStatusErrors: json_.containsKey('ignoreHttpStatusErrors')
              ? json_['ignoreHttpStatusErrors'] as core.bool
              : null,
          managedScan: json_.containsKey('managedScan')
              ? json_['managedScan'] as core.bool
              : null,
          maxQps:
              json_.containsKey('maxQps') ? json_['maxQps'] as core.int : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          riskLevel: json_.containsKey('riskLevel')
              ? json_['riskLevel'] as core.String
              : null,
          schedule: json_.containsKey('schedule')
              ? Schedule.fromJson(
                  json_['schedule'] as core.Map<core.String, core.dynamic>)
              : null,
          startingUrls: json_.containsKey('startingUrls')
              ? (json_['startingUrls'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          staticIpScan: json_.containsKey('staticIpScan')
              ? json_['staticIpScan'] as core.bool
              : null,
          userAgent: json_.containsKey('userAgent')
              ? json_['userAgent'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (authentication != null) 'authentication': authentication!,
        if (blacklistPatterns != null) 'blacklistPatterns': blacklistPatterns!,
        if (displayName != null) 'displayName': displayName!,
        if (exportToSecurityCommandCenter != null)
          'exportToSecurityCommandCenter': exportToSecurityCommandCenter!,
        if (ignoreHttpStatusErrors != null)
          'ignoreHttpStatusErrors': ignoreHttpStatusErrors!,
        if (managedScan != null) 'managedScan': managedScan!,
        if (maxQps != null) 'maxQps': maxQps!,
        if (name != null) 'name': name!,
        if (riskLevel != null) 'riskLevel': riskLevel!,
        if (schedule != null) 'schedule': schedule!,
        if (startingUrls != null) 'startingUrls': startingUrls!,
        if (staticIpScan != null) 'staticIpScan': staticIpScan!,
        if (userAgent != null) 'userAgent': userAgent!,
      };
}

/// Defines a custom error message used by CreateScanConfig and UpdateScanConfig
/// APIs when scan configuration validation fails.
///
/// It is also reported as part of a ScanRunErrorTrace message if scan
/// validation fails due to a scan configuration error.
class ScanConfigError {
  /// Indicates the reason code for a configuration failure.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "CODE_UNSPECIFIED" : There is no error.
  /// - "OK" : There is no error.
  /// - "INTERNAL_ERROR" : Indicates an internal server error. Please DO NOT USE
  /// THIS ERROR CODE unless the root cause is truly unknown.
  /// - "APPENGINE_API_BACKEND_ERROR" : One of the seed URLs is an App Engine
  /// URL but we cannot validate the scan settings due to an App Engine API
  /// backend error.
  /// - "APPENGINE_API_NOT_ACCESSIBLE" : One of the seed URLs is an App Engine
  /// URL but we cannot access the App Engine API to validate scan settings.
  /// - "APPENGINE_DEFAULT_HOST_MISSING" : One of the seed URLs is an App Engine
  /// URL but the Default Host of the App Engine is not set.
  /// - "CANNOT_USE_GOOGLE_COM_ACCOUNT" : Google corporate accounts can not be
  /// used for scanning.
  /// - "CANNOT_USE_OWNER_ACCOUNT" : The account of the scan creator can not be
  /// used for scanning.
  /// - "COMPUTE_API_BACKEND_ERROR" : This scan targets Compute Engine, but we
  /// cannot validate scan settings due to a Compute Engine API backend error.
  /// - "COMPUTE_API_NOT_ACCESSIBLE" : This scan targets Compute Engine, but we
  /// cannot access the Compute Engine API to validate the scan settings.
  /// - "CUSTOM_LOGIN_URL_DOES_NOT_BELONG_TO_CURRENT_PROJECT" : The Custom Login
  /// URL does not belong to the current project.
  /// - "CUSTOM_LOGIN_URL_MALFORMED" : The Custom Login URL is malformed (can
  /// not be parsed).
  /// - "CUSTOM_LOGIN_URL_MAPPED_TO_NON_ROUTABLE_ADDRESS" : The Custom Login URL
  /// is mapped to a non-routable IP address in DNS.
  /// - "CUSTOM_LOGIN_URL_MAPPED_TO_UNRESERVED_ADDRESS" : The Custom Login URL
  /// is mapped to an IP address which is not reserved for the current project.
  /// - "CUSTOM_LOGIN_URL_HAS_NON_ROUTABLE_IP_ADDRESS" : The Custom Login URL
  /// has a non-routable IP address.
  /// - "CUSTOM_LOGIN_URL_HAS_UNRESERVED_IP_ADDRESS" : The Custom Login URL has
  /// an IP address which is not reserved for the current project.
  /// - "DUPLICATE_SCAN_NAME" : Another scan with the same name (case-sensitive)
  /// already exists.
  /// - "INVALID_FIELD_VALUE" : A field is set to an invalid value.
  /// - "FAILED_TO_AUTHENTICATE_TO_TARGET" : There was an error trying to
  /// authenticate to the scan target.
  /// - "FINDING_TYPE_UNSPECIFIED" : Finding type value is not specified in the
  /// list findings request.
  /// - "FORBIDDEN_TO_SCAN_COMPUTE" : Scan targets Compute Engine, yet current
  /// project was not whitelisted for Google Compute Engine Scanning Alpha
  /// access.
  /// - "FORBIDDEN_UPDATE_TO_MANAGED_SCAN" : User tries to update managed scan
  /// - "MALFORMED_FILTER" : The supplied filter is malformed. For example, it
  /// can not be parsed, does not have a filter type in expression, or the same
  /// filter type appears more than once.
  /// - "MALFORMED_RESOURCE_NAME" : The supplied resource name is malformed (can
  /// not be parsed).
  /// - "PROJECT_INACTIVE" : The current project is not in an active state.
  /// - "REQUIRED_FIELD" : A required field is not set.
  /// - "RESOURCE_NAME_INCONSISTENT" : Project id, scanconfig id, scanrun id, or
  /// finding id are not consistent with each other in resource name.
  /// - "SCAN_ALREADY_RUNNING" : The scan being requested to start is already
  /// running.
  /// - "SCAN_NOT_RUNNING" : The scan that was requested to be stopped is not
  /// running.
  /// - "SEED_URL_DOES_NOT_BELONG_TO_CURRENT_PROJECT" : One of the seed URLs
  /// does not belong to the current project.
  /// - "SEED_URL_MALFORMED" : One of the seed URLs is malformed (can not be
  /// parsed).
  /// - "SEED_URL_MAPPED_TO_NON_ROUTABLE_ADDRESS" : One of the seed URLs is
  /// mapped to a non-routable IP address in DNS.
  /// - "SEED_URL_MAPPED_TO_UNRESERVED_ADDRESS" : One of the seed URLs is mapped
  /// to an IP address which is not reserved for the current project.
  /// - "SEED_URL_HAS_NON_ROUTABLE_IP_ADDRESS" : One of the seed URLs has
  /// on-routable IP address.
  /// - "SEED_URL_HAS_UNRESERVED_IP_ADDRESS" : One of the seed URLs has an IP
  /// address that is not reserved for the current project.
  /// - "SERVICE_ACCOUNT_NOT_CONFIGURED" : The Web Security Scanner service
  /// account is not configured under the project.
  /// - "TOO_MANY_SCANS" : A project has reached the maximum number of scans.
  /// - "UNABLE_TO_RESOLVE_PROJECT_INFO" : Resolving the details of the current
  /// project fails.
  /// - "UNSUPPORTED_BLACKLIST_PATTERN_FORMAT" : One or more blacklist patterns
  /// were in the wrong format.
  /// - "UNSUPPORTED_FILTER" : The supplied filter is not supported.
  /// - "UNSUPPORTED_FINDING_TYPE" : The supplied finding type is not supported.
  /// For example, we do not provide findings of the given finding type.
  /// - "UNSUPPORTED_URL_SCHEME" : The URL scheme of one or more of the supplied
  /// URLs is not supported.
  core.String? code;

  /// Indicates the full name of the ScanConfig field that triggers this error,
  /// for example "scan_config.max_qps".
  ///
  /// This field is provided for troubleshooting purposes only and its actual
  /// value can change in the future.
  ///
  /// Output only.
  core.String? fieldName;

  ScanConfigError({
    this.code,
    this.fieldName,
  });

  ScanConfigError.fromJson(core.Map json_)
      : this(
          code: json_.containsKey('code') ? json_['code'] as core.String : null,
          fieldName: json_.containsKey('fieldName')
              ? json_['fieldName'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (code != null) 'code': code!,
        if (fieldName != null) 'fieldName': fieldName!,
      };
}

/// A ScanRun is a output-only resource representing an actual run of the scan.
///
/// Next id: 12
class ScanRun {
  /// The time at which the ScanRun reached termination state - that the ScanRun
  /// is either finished or stopped by user.
  ///
  /// Output only.
  core.String? endTime;

  /// If result_state is an ERROR, this field provides the primary reason for
  /// scan's termination and more details, if such are available.
  ///
  /// Output only.
  ScanRunErrorTrace? errorTrace;

  /// The execution state of the ScanRun.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "EXECUTION_STATE_UNSPECIFIED" : Represents an invalid state caused by
  /// internal server error. This value should never be returned.
  /// - "QUEUED" : The scan is waiting in the queue.
  /// - "SCANNING" : The scan is in progress.
  /// - "FINISHED" : The scan is either finished or stopped by user.
  core.String? executionState;

  /// Whether the scan run has found any vulnerabilities.
  ///
  /// Output only.
  core.bool? hasVulnerabilities;

  /// The resource name of the ScanRun.
  ///
  /// The name follows the format of
  /// 'projects/{projectId}/scanConfigs/{scanConfigId}/scanRuns/{scanRunId}'.
  /// The ScanRun IDs are generated by the system.
  ///
  /// Output only.
  core.String? name;

  /// The percentage of total completion ranging from 0 to 100.
  ///
  /// If the scan is in queue, the value is 0. If the scan is running, the value
  /// ranges from 0 to 100. If the scan is finished, the value is 100.
  ///
  /// Output only.
  core.int? progressPercent;

  /// The result state of the ScanRun.
  ///
  /// This field is only available after the execution state reaches "FINISHED".
  ///
  /// Output only.
  /// Possible string values are:
  /// - "RESULT_STATE_UNSPECIFIED" : Default value. This value is returned when
  /// the ScanRun is not yet finished.
  /// - "SUCCESS" : The scan finished without errors.
  /// - "ERROR" : The scan finished with errors.
  /// - "KILLED" : The scan was terminated by user.
  core.String? resultState;

  /// The time at which the ScanRun started.
  ///
  /// Output only.
  core.String? startTime;

  /// The number of URLs crawled during this ScanRun.
  ///
  /// If the scan is in progress, the value represents the number of URLs
  /// crawled up to now.
  ///
  /// Output only.
  core.String? urlsCrawledCount;

  /// The number of URLs tested during this ScanRun.
  ///
  /// If the scan is in progress, the value represents the number of URLs tested
  /// up to now. The number of URLs tested is usually larger than the number
  /// URLS crawled because typically a crawled URL is tested with multiple test
  /// payloads.
  ///
  /// Output only.
  core.String? urlsTestedCount;

  /// A list of warnings, if such are encountered during this scan run.
  ///
  /// Output only.
  core.List<ScanRunWarningTrace>? warningTraces;

  ScanRun({
    this.endTime,
    this.errorTrace,
    this.executionState,
    this.hasVulnerabilities,
    this.name,
    this.progressPercent,
    this.resultState,
    this.startTime,
    this.urlsCrawledCount,
    this.urlsTestedCount,
    this.warningTraces,
  });

  ScanRun.fromJson(core.Map json_)
      : this(
          endTime: json_.containsKey('endTime')
              ? json_['endTime'] as core.String
              : null,
          errorTrace: json_.containsKey('errorTrace')
              ? ScanRunErrorTrace.fromJson(
                  json_['errorTrace'] as core.Map<core.String, core.dynamic>)
              : null,
          executionState: json_.containsKey('executionState')
              ? json_['executionState'] as core.String
              : null,
          hasVulnerabilities: json_.containsKey('hasVulnerabilities')
              ? json_['hasVulnerabilities'] as core.bool
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          progressPercent: json_.containsKey('progressPercent')
              ? json_['progressPercent'] as core.int
              : null,
          resultState: json_.containsKey('resultState')
              ? json_['resultState'] as core.String
              : null,
          startTime: json_.containsKey('startTime')
              ? json_['startTime'] as core.String
              : null,
          urlsCrawledCount: json_.containsKey('urlsCrawledCount')
              ? json_['urlsCrawledCount'] as core.String
              : null,
          urlsTestedCount: json_.containsKey('urlsTestedCount')
              ? json_['urlsTestedCount'] as core.String
              : null,
          warningTraces: json_.containsKey('warningTraces')
              ? (json_['warningTraces'] as core.List)
                  .map((value) => ScanRunWarningTrace.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (endTime != null) 'endTime': endTime!,
        if (errorTrace != null) 'errorTrace': errorTrace!,
        if (executionState != null) 'executionState': executionState!,
        if (hasVulnerabilities != null)
          'hasVulnerabilities': hasVulnerabilities!,
        if (name != null) 'name': name!,
        if (progressPercent != null) 'progressPercent': progressPercent!,
        if (resultState != null) 'resultState': resultState!,
        if (startTime != null) 'startTime': startTime!,
        if (urlsCrawledCount != null) 'urlsCrawledCount': urlsCrawledCount!,
        if (urlsTestedCount != null) 'urlsTestedCount': urlsTestedCount!,
        if (warningTraces != null) 'warningTraces': warningTraces!,
      };
}

/// Defines an error trace message for a ScanRun.
///
/// Output only.
class ScanRunErrorTrace {
  /// Indicates the error reason code.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "CODE_UNSPECIFIED" : Default value is never used.
  /// - "INTERNAL_ERROR" : Indicates that the scan run failed due to an internal
  /// server error.
  /// - "SCAN_CONFIG_ISSUE" : Indicates a scan configuration error, usually due
  /// to outdated ScanConfig settings, such as starting_urls or the DNS
  /// configuration.
  /// - "AUTHENTICATION_CONFIG_ISSUE" : Indicates an authentication error,
  /// usually due to outdated ScanConfig authentication settings.
  /// - "TIMED_OUT_WHILE_SCANNING" : Indicates a scan operation timeout, usually
  /// caused by a very large site.
  /// - "TOO_MANY_REDIRECTS" : Indicates that a scan encountered excessive
  /// redirects, either to authentication or some other page outside of the scan
  /// scope.
  /// - "TOO_MANY_HTTP_ERRORS" : Indicates that a scan encountered numerous
  /// errors from the web site pages. When available,
  /// most_common_http_error_code field indicates the most common HTTP error
  /// code encountered during the scan.
  core.String? code;

  /// If the scan encounters TOO_MANY_HTTP_ERRORS, this field indicates the most
  /// common HTTP error code, if such is available.
  ///
  /// For example, if this code is 404, the scan has encountered too many
  /// NOT_FOUND responses.
  ///
  /// Output only.
  core.int? mostCommonHttpErrorCode;

  /// If the scan encounters SCAN_CONFIG_ISSUE error, this field has the error
  /// message encountered during scan configuration validation that is performed
  /// before each scan run.
  ///
  /// Output only.
  ScanConfigError? scanConfigError;

  ScanRunErrorTrace({
    this.code,
    this.mostCommonHttpErrorCode,
    this.scanConfigError,
  });

  ScanRunErrorTrace.fromJson(core.Map json_)
      : this(
          code: json_.containsKey('code') ? json_['code'] as core.String : null,
          mostCommonHttpErrorCode: json_.containsKey('mostCommonHttpErrorCode')
              ? json_['mostCommonHttpErrorCode'] as core.int
              : null,
          scanConfigError: json_.containsKey('scanConfigError')
              ? ScanConfigError.fromJson(json_['scanConfigError']
                  as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (code != null) 'code': code!,
        if (mostCommonHttpErrorCode != null)
          'mostCommonHttpErrorCode': mostCommonHttpErrorCode!,
        if (scanConfigError != null) 'scanConfigError': scanConfigError!,
      };
}

/// Defines a warning trace message for ScanRun.
///
/// Warning traces provide customers with useful information that helps make the
/// scanning process more effective.
///
/// Output only.
class ScanRunWarningTrace {
  /// Indicates the warning code.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "CODE_UNSPECIFIED" : Default value is never used.
  /// - "INSUFFICIENT_CRAWL_RESULTS" : Indicates that a scan discovered an
  /// unexpectedly low number of URLs. This is sometimes caused by complex
  /// navigation features or by using a single URL for numerous pages.
  /// - "TOO_MANY_CRAWL_RESULTS" : Indicates that a scan discovered too many
  /// URLs to test, or excessive redundant URLs.
  /// - "TOO_MANY_FUZZ_TASKS" : Indicates that too many tests have been
  /// generated for the scan. Customer should try reducing the number of
  /// starting URLs, increasing the QPS rate, or narrowing down the scope of the
  /// scan using the excluded patterns.
  /// - "BLOCKED_BY_IAP" : Indicates that a scan is blocked by IAP.
  /// - "NO_STARTING_URL_FOUND_FOR_MANAGED_SCAN" : Indicates that no seeds is
  /// found for a scan
  core.String? code;

  ScanRunWarningTrace({
    this.code,
  });

  ScanRunWarningTrace.fromJson(core.Map json_)
      : this(
          code: json_.containsKey('code') ? json_['code'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (code != null) 'code': code!,
      };
}

/// Scan schedule configuration.
class Schedule {
  /// The duration of time between executions in days.
  ///
  /// Required.
  core.int? intervalDurationDays;

  /// A timestamp indicates when the next run will be scheduled.
  ///
  /// The value is refreshed by the server after each run. If unspecified, it
  /// will default to current server time, which means the scan will be
  /// scheduled to start immediately.
  core.String? scheduleTime;

  Schedule({
    this.intervalDurationDays,
    this.scheduleTime,
  });

  Schedule.fromJson(core.Map json_)
      : this(
          intervalDurationDays: json_.containsKey('intervalDurationDays')
              ? json_['intervalDurationDays'] as core.int
              : null,
          scheduleTime: json_.containsKey('scheduleTime')
              ? json_['scheduleTime'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (intervalDurationDays != null)
          'intervalDurationDays': intervalDurationDays!,
        if (scheduleTime != null) 'scheduleTime': scheduleTime!,
      };
}

/// Request for the `StartScanRun` method.
typedef StartScanRunRequest = $Empty;

/// Request for the `StopScanRun` method.
typedef StopScanRunRequest = $Empty;

/// Information regarding any resource causing the vulnerability such as
/// JavaScript sources, image, audio files, etc.
class ViolatingResource {
  /// The MIME type of this resource.
  core.String? contentType;

  /// URL of this violating resource.
  core.String? resourceUrl;

  ViolatingResource({
    this.contentType,
    this.resourceUrl,
  });

  ViolatingResource.fromJson(core.Map json_)
      : this(
          contentType: json_.containsKey('contentType')
              ? json_['contentType'] as core.String
              : null,
          resourceUrl: json_.containsKey('resourceUrl')
              ? json_['resourceUrl'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (contentType != null) 'contentType': contentType!,
        if (resourceUrl != null) 'resourceUrl': resourceUrl!,
      };
}

/// Information about vulnerable or missing HTTP Headers.
class VulnerableHeaders {
  /// List of vulnerable headers.
  core.List<Header>? headers;

  /// List of missing headers.
  core.List<Header>? missingHeaders;

  VulnerableHeaders({
    this.headers,
    this.missingHeaders,
  });

  VulnerableHeaders.fromJson(core.Map json_)
      : this(
          headers: json_.containsKey('headers')
              ? (json_['headers'] as core.List)
                  .map((value) => Header.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          missingHeaders: json_.containsKey('missingHeaders')
              ? (json_['missingHeaders'] as core.List)
                  .map((value) => Header.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (headers != null) 'headers': headers!,
        if (missingHeaders != null) 'missingHeaders': missingHeaders!,
      };
}

/// Information about vulnerable request parameters.
class VulnerableParameters {
  /// The vulnerable parameter names.
  core.List<core.String>? parameterNames;

  VulnerableParameters({
    this.parameterNames,
  });

  VulnerableParameters.fromJson(core.Map json_)
      : this(
          parameterNames: json_.containsKey('parameterNames')
              ? (json_['parameterNames'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (parameterNames != null) 'parameterNames': parameterNames!,
      };
}

/// Information reported for an XSS.
class Xss {
  /// The attack vector of the payload triggering this XSS.
  /// Possible string values are:
  /// - "ATTACK_VECTOR_UNSPECIFIED" : Unknown attack vector.
  /// - "LOCAL_STORAGE" : The attack comes from fuzzing the browser's
  /// localStorage.
  /// - "SESSION_STORAGE" : The attack comes from fuzzing the browser's
  /// sessionStorage.
  /// - "WINDOW_NAME" : The attack comes from fuzzing the window's name
  /// property.
  /// - "REFERRER" : The attack comes from fuzzing the referrer property.
  /// - "FORM_INPUT" : The attack comes from fuzzing an input element.
  /// - "COOKIE" : The attack comes from fuzzing the browser's cookies.
  /// - "POST_MESSAGE" : The attack comes from hijacking the post messaging
  /// mechanism.
  /// - "GET_PARAMETERS" : The attack comes from fuzzing parameters in the url.
  /// - "URL_FRAGMENT" : The attack comes from fuzzing the fragment in the url.
  /// - "HTML_COMMENT" : The attack comes from fuzzing the HTML comments.
  /// - "POST_PARAMETERS" : The attack comes from fuzzing the POST parameters.
  /// - "PROTOCOL" : The attack comes from fuzzing the protocol.
  /// - "STORED_XSS" : The attack comes from the server side and is stored.
  /// - "SAME_ORIGIN" : The attack is a Same-Origin Method Execution attack via
  /// a GET parameter.
  /// - "USER_CONTROLLABLE_URL" : The attack payload is received from a
  /// third-party host via a URL that is user-controllable
  core.String? attackVector;

  /// An error message generated by a javascript breakage.
  core.String? errorMessage;

  /// Stack traces leading to the point where the XSS occurred.
  core.List<core.String>? stackTraces;

  /// The reproduction url for the seeding POST request of a Stored XSS.
  core.String? storedXssSeedingUrl;

  Xss({
    this.attackVector,
    this.errorMessage,
    this.stackTraces,
    this.storedXssSeedingUrl,
  });

  Xss.fromJson(core.Map json_)
      : this(
          attackVector: json_.containsKey('attackVector')
              ? json_['attackVector'] as core.String
              : null,
          errorMessage: json_.containsKey('errorMessage')
              ? json_['errorMessage'] as core.String
              : null,
          stackTraces: json_.containsKey('stackTraces')
              ? (json_['stackTraces'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          storedXssSeedingUrl: json_.containsKey('storedXssSeedingUrl')
              ? json_['storedXssSeedingUrl'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (attackVector != null) 'attackVector': attackVector!,
        if (errorMessage != null) 'errorMessage': errorMessage!,
        if (stackTraces != null) 'stackTraces': stackTraces!,
        if (storedXssSeedingUrl != null)
          'storedXssSeedingUrl': storedXssSeedingUrl!,
      };
}

/// Information reported for an XXE.
class Xxe {
  /// Location within the request where the payload was placed.
  /// Possible string values are:
  /// - "LOCATION_UNSPECIFIED" : Unknown Location.
  /// - "COMPLETE_REQUEST_BODY" : The XML payload replaced the complete request
  /// body.
  core.String? payloadLocation;

  /// The XML string that triggered the XXE vulnerability.
  ///
  /// Non-payload values might be redacted.
  core.String? payloadValue;

  Xxe({
    this.payloadLocation,
    this.payloadValue,
  });

  Xxe.fromJson(core.Map json_)
      : this(
          payloadLocation: json_.containsKey('payloadLocation')
              ? json_['payloadLocation'] as core.String
              : null,
          payloadValue: json_.containsKey('payloadValue')
              ? json_['payloadValue'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (payloadLocation != null) 'payloadLocation': payloadLocation!,
        if (payloadValue != null) 'payloadValue': payloadValue!,
      };
}
