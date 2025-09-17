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

/// Web Security Scanner API - v1alpha
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
library;

import 'dart:async' as async;
import 'dart:convert' as convert;
import 'dart:core' as core;

import 'package:_discoveryapis_commons/_discoveryapis_commons.dart' as commons;
import 'package:http/http.dart' as http;

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

  WebSecurityScannerApi(
    http.Client client, {
    core.String rootUrl = 'https://websecurityscanner.googleapis.com/',
    core.String servicePath = '',
  }) : _requester = commons.ApiRequester(
         client,
         rootUrl,
         servicePath,
         requestHeaders,
       );
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

    final url_ = 'v1alpha/' + core.Uri.encodeFull('$parent') + '/scanConfigs';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return ScanConfig.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
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
  async.Future<ScanConfig> get(core.String name, {core.String? $fields}) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1alpha/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ScanConfig.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
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

    final url_ = 'v1alpha/' + core.Uri.encodeFull('$parent') + '/scanConfigs';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListScanConfigsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
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

    final url_ = 'v1alpha/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return ScanConfig.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
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

    final url_ = 'v1alpha/' + core.Uri.encodeFull('$name') + ':start';

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
  async.Future<ScanRun> get(core.String name, {core.String? $fields}) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1alpha/' + core.Uri.encodeFull('$name');

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

    final url_ = 'v1alpha/' + core.Uri.encodeFull('$parent') + '/scanRuns';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListScanRunsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
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

    final url_ = 'v1alpha/' + core.Uri.encodeFull('$name') + ':stop';

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

    final url_ = 'v1alpha/' + core.Uri.encodeFull('$parent') + '/crawledUrls';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListCrawledUrlsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class ProjectsScanConfigsScanRunsFindingTypeStatsResource {
  final commons.ApiRequester _requester;

  ProjectsScanConfigsScanRunsFindingTypeStatsResource(
    commons.ApiRequester client,
  ) : _requester = client;

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

    final url_ =
        'v1alpha/' + core.Uri.encodeFull('$parent') + '/findingTypeStats';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListFindingTypeStatsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
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
  async.Future<Finding> get(core.String name, {core.String? $fields}) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1alpha/' + core.Uri.encodeFull('$name');

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
  /// [filter] - Required. The filter expression. The expression must be in the
  /// format: . Supported field: 'finding_type'. Supported operator: '='.
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

    final url_ = 'v1alpha/' + core.Uri.encodeFull('$parent') + '/findings';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListFindingsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

/// Scan authentication configuration.
class Authentication {
  /// Authentication using a custom account.
  CustomAccount? customAccount;

  /// Authentication using a Google account.
  GoogleAccount? googleAccount;

  Authentication({this.customAccount, this.googleAccount});

  Authentication.fromJson(core.Map json_)
    : this(
        customAccount:
            json_.containsKey('customAccount')
                ? CustomAccount.fromJson(
                  json_['customAccount'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        googleAccount:
            json_.containsKey('googleAccount')
                ? GoogleAccount.fromJson(
                  json_['googleAccount'] as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (customAccount != null) 'customAccount': customAccount!,
    if (googleAccount != null) 'googleAccount': googleAccount!,
  };
}

/// A CrawledUrl resource represents a URL that was crawled during a ScanRun.
///
/// Web Security Scanner Service crawls the web applications, following all
/// links within the scope of sites, to find the URLs to test against.
typedef CrawledUrl = $CrawledUrl;

/// Describes authentication configuration that uses a custom account.
typedef CustomAccount = $CustomAccount;

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
  core.String? body;

  /// The description of the vulnerability.
  core.String? description;

  /// The URL where the browser lands when the vulnerability is detected.
  core.String? finalUrl;

  /// The type of the Finding.
  /// Possible string values are:
  /// - "FINDING_TYPE_UNSPECIFIED" : The invalid finding type.
  /// - "MIXED_CONTENT" : A page that was served over HTTPS also resources over
  /// HTTP. A man-in-the-middle attacker could tamper with the HTTP resource and
  /// gain full access to the website that loads the resource or to monitor the
  /// actions taken by the user.
  /// - "OUTDATED_LIBRARY" : The version of an included library is known to
  /// contain a security issue. The scanner checks the version of library in use
  /// against a known list of vulnerable libraries. False positives are possible
  /// if the version detection fails or if the library has been manually
  /// patched.
  /// - "ROSETTA_FLASH" : This type of vulnerability occurs when the value of a
  /// request parameter is reflected at the beginning of the response, for
  /// example, in requests using JSONP. Under certain circumstances, an attacker
  /// may be able to supply an alphanumeric-only Flash file in the vulnerable
  /// parameter causing the browser to execute the Flash file as if it
  /// originated on the vulnerable server.
  /// - "XSS_CALLBACK" : A cross-site scripting (XSS) bug is found via
  /// JavaScript callback. For detailed explanations on XSS, see
  /// https://www.google.com/about/appsecurity/learning/xss/.
  /// - "XSS_ERROR" : A potential cross-site scripting (XSS) bug due to
  /// JavaScript breakage. In some circumstances, the application under test
  /// might modify the test string before it is parsed by the browser. When the
  /// browser attempts to runs this modified test string, it will likely break
  /// and throw a JavaScript execution error, thus an injection issue is
  /// occurring. However, it may not be exploitable. Manual verification is
  /// needed to see if the test string modifications can be evaded and confirm
  /// that the issue is in fact an XSS vulnerability. For detailed explanations
  /// on XSS, see https://www.google.com/about/appsecurity/learning/xss/.
  /// - "CLEAR_TEXT_PASSWORD" : An application appears to be transmitting a
  /// password field in clear text. An attacker can eavesdrop network traffic
  /// and sniff the password field.
  /// - "INVALID_CONTENT_TYPE" : An application returns sensitive content with
  /// an invalid content type, or without an 'X-Content-Type-Options: nosniff'
  /// header.
  /// - "XSS_ANGULAR_CALLBACK" : A cross-site scripting (XSS) vulnerability in
  /// AngularJS module that occurs when a user-provided string is interpolated
  /// by Angular.
  /// - "INVALID_HEADER" : A malformed or invalid valued header.
  /// - "MISSPELLED_SECURITY_HEADER_NAME" : Misspelled security header name.
  /// - "MISMATCHING_SECURITY_HEADER_VALUES" : Mismatching values in a duplicate
  /// security header.
  /// - "ACCESSIBLE_GIT_REPOSITORY" : A world-readable git repository that
  /// potentially leaks source code, commit history or sensitive information
  /// such as credentials.
  /// - "ACCESSIBLE_SVN_REPOSITORY" : A world-readable subversion repository
  /// that potentially leaks source code, commit history or sensitive
  /// information such as credentials.
  /// - "ACCESSIBLE_ENV_FILE" : A world-readable env file that potentially leaks
  /// source code, commit history or sensitive information such as credentials.
  core.String? findingType;

  /// If the vulnerability was originated from nested IFrame, the immediate
  /// parent IFrame is reported.
  core.String? frameUrl;

  /// The URL produced by the server-side fuzzer and used in the request that
  /// triggered the vulnerability.
  core.String? fuzzedUrl;

  /// The http method of the request that triggered the vulnerability, in
  /// uppercase.
  core.String? httpMethod;

  /// The resource name of the Finding.
  ///
  /// The name follows the format of
  /// 'projects/{projectId}/scanConfigs/{scanConfigId}/scanruns/{scanRunId}/findings/{findingId}'.
  /// The finding IDs are generated by the system.
  core.String? name;

  /// An addon containing information about outdated libraries.
  OutdatedLibrary? outdatedLibrary;

  /// The URL containing human-readable payload that user can leverage to
  /// reproduce the vulnerability.
  core.String? reproductionUrl;

  /// The tracking ID uniquely identifies a vulnerability instance across
  /// multiple ScanRuns.
  core.String? trackingId;

  /// An addon containing detailed information regarding any resource causing
  /// the vulnerability such as JavaScript sources, image, audio files, etc.
  ViolatingResource? violatingResource;

  /// An addon containing information about vulnerable or missing HTTP headers.
  VulnerableHeaders? vulnerableHeaders;

  /// An addon containing information about request parameters which were found
  /// to be vulnerable.
  VulnerableParameters? vulnerableParameters;

  /// An addon containing information reported for an XSS, if any.
  Xss? xss;

  Finding({
    this.body,
    this.description,
    this.finalUrl,
    this.findingType,
    this.frameUrl,
    this.fuzzedUrl,
    this.httpMethod,
    this.name,
    this.outdatedLibrary,
    this.reproductionUrl,
    this.trackingId,
    this.violatingResource,
    this.vulnerableHeaders,
    this.vulnerableParameters,
    this.xss,
  });

  Finding.fromJson(core.Map json_)
    : this(
        body: json_['body'] as core.String?,
        description: json_['description'] as core.String?,
        finalUrl: json_['finalUrl'] as core.String?,
        findingType: json_['findingType'] as core.String?,
        frameUrl: json_['frameUrl'] as core.String?,
        fuzzedUrl: json_['fuzzedUrl'] as core.String?,
        httpMethod: json_['httpMethod'] as core.String?,
        name: json_['name'] as core.String?,
        outdatedLibrary:
            json_.containsKey('outdatedLibrary')
                ? OutdatedLibrary.fromJson(
                  json_['outdatedLibrary']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        reproductionUrl: json_['reproductionUrl'] as core.String?,
        trackingId: json_['trackingId'] as core.String?,
        violatingResource:
            json_.containsKey('violatingResource')
                ? ViolatingResource.fromJson(
                  json_['violatingResource']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        vulnerableHeaders:
            json_.containsKey('vulnerableHeaders')
                ? VulnerableHeaders.fromJson(
                  json_['vulnerableHeaders']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        vulnerableParameters:
            json_.containsKey('vulnerableParameters')
                ? VulnerableParameters.fromJson(
                  json_['vulnerableParameters']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        xss:
            json_.containsKey('xss')
                ? Xss.fromJson(
                  json_['xss'] as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (body != null) 'body': body!,
    if (description != null) 'description': description!,
    if (finalUrl != null) 'finalUrl': finalUrl!,
    if (findingType != null) 'findingType': findingType!,
    if (frameUrl != null) 'frameUrl': frameUrl!,
    if (fuzzedUrl != null) 'fuzzedUrl': fuzzedUrl!,
    if (httpMethod != null) 'httpMethod': httpMethod!,
    if (name != null) 'name': name!,
    if (outdatedLibrary != null) 'outdatedLibrary': outdatedLibrary!,
    if (reproductionUrl != null) 'reproductionUrl': reproductionUrl!,
    if (trackingId != null) 'trackingId': trackingId!,
    if (violatingResource != null) 'violatingResource': violatingResource!,
    if (vulnerableHeaders != null) 'vulnerableHeaders': vulnerableHeaders!,
    if (vulnerableParameters != null)
      'vulnerableParameters': vulnerableParameters!,
    if (xss != null) 'xss': xss!,
  };
}

/// A FindingTypeStats resource represents stats regarding a specific
/// FindingType of Findings under a given ScanRun.
class FindingTypeStats {
  /// The count of findings belonging to this finding type.
  core.int? findingCount;

  /// The finding type associated with the stats.
  /// Possible string values are:
  /// - "FINDING_TYPE_UNSPECIFIED" : The invalid finding type.
  /// - "MIXED_CONTENT" : A page that was served over HTTPS also resources over
  /// HTTP. A man-in-the-middle attacker could tamper with the HTTP resource and
  /// gain full access to the website that loads the resource or to monitor the
  /// actions taken by the user.
  /// - "OUTDATED_LIBRARY" : The version of an included library is known to
  /// contain a security issue. The scanner checks the version of library in use
  /// against a known list of vulnerable libraries. False positives are possible
  /// if the version detection fails or if the library has been manually
  /// patched.
  /// - "ROSETTA_FLASH" : This type of vulnerability occurs when the value of a
  /// request parameter is reflected at the beginning of the response, for
  /// example, in requests using JSONP. Under certain circumstances, an attacker
  /// may be able to supply an alphanumeric-only Flash file in the vulnerable
  /// parameter causing the browser to execute the Flash file as if it
  /// originated on the vulnerable server.
  /// - "XSS_CALLBACK" : A cross-site scripting (XSS) bug is found via
  /// JavaScript callback. For detailed explanations on XSS, see
  /// https://www.google.com/about/appsecurity/learning/xss/.
  /// - "XSS_ERROR" : A potential cross-site scripting (XSS) bug due to
  /// JavaScript breakage. In some circumstances, the application under test
  /// might modify the test string before it is parsed by the browser. When the
  /// browser attempts to runs this modified test string, it will likely break
  /// and throw a JavaScript execution error, thus an injection issue is
  /// occurring. However, it may not be exploitable. Manual verification is
  /// needed to see if the test string modifications can be evaded and confirm
  /// that the issue is in fact an XSS vulnerability. For detailed explanations
  /// on XSS, see https://www.google.com/about/appsecurity/learning/xss/.
  /// - "CLEAR_TEXT_PASSWORD" : An application appears to be transmitting a
  /// password field in clear text. An attacker can eavesdrop network traffic
  /// and sniff the password field.
  /// - "INVALID_CONTENT_TYPE" : An application returns sensitive content with
  /// an invalid content type, or without an 'X-Content-Type-Options: nosniff'
  /// header.
  /// - "XSS_ANGULAR_CALLBACK" : A cross-site scripting (XSS) vulnerability in
  /// AngularJS module that occurs when a user-provided string is interpolated
  /// by Angular.
  /// - "INVALID_HEADER" : A malformed or invalid valued header.
  /// - "MISSPELLED_SECURITY_HEADER_NAME" : Misspelled security header name.
  /// - "MISMATCHING_SECURITY_HEADER_VALUES" : Mismatching values in a duplicate
  /// security header.
  /// - "ACCESSIBLE_GIT_REPOSITORY" : A world-readable git repository that
  /// potentially leaks source code, commit history or sensitive information
  /// such as credentials.
  /// - "ACCESSIBLE_SVN_REPOSITORY" : A world-readable subversion repository
  /// that potentially leaks source code, commit history or sensitive
  /// information such as credentials.
  /// - "ACCESSIBLE_ENV_FILE" : A world-readable env file that potentially leaks
  /// source code, commit history or sensitive information such as credentials.
  core.String? findingType;

  FindingTypeStats({this.findingCount, this.findingType});

  FindingTypeStats.fromJson(core.Map json_)
    : this(
        findingCount: json_['findingCount'] as core.int?,
        findingType: json_['findingType'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (findingCount != null) 'findingCount': findingCount!,
    if (findingType != null) 'findingType': findingType!,
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

  GoogleAccount({this.password, this.username});

  GoogleAccount.fromJson(core.Map json_)
    : this(
        password: json_['password'] as core.String?,
        username: json_['username'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (password != null) 'password': password!,
    if (username != null) 'username': username!,
  };
}

/// Describes a HTTP Header.
typedef Header = $Header00;

/// Response for the `ListCrawledUrls` method.
class ListCrawledUrlsResponse {
  /// The list of CrawledUrls returned.
  core.List<CrawledUrl>? crawledUrls;

  /// Token to retrieve the next page of results, or empty if there are no more
  /// results in the list.
  core.String? nextPageToken;

  ListCrawledUrlsResponse({this.crawledUrls, this.nextPageToken});

  ListCrawledUrlsResponse.fromJson(core.Map json_)
    : this(
        crawledUrls:
            (json_['crawledUrls'] as core.List?)
                ?.map(
                  (value) => CrawledUrl.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        nextPageToken: json_['nextPageToken'] as core.String?,
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

  ListFindingTypeStatsResponse({this.findingTypeStats});

  ListFindingTypeStatsResponse.fromJson(core.Map json_)
    : this(
        findingTypeStats:
            (json_['findingTypeStats'] as core.List?)
                ?.map(
                  (value) => FindingTypeStats.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
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

  ListFindingsResponse({this.findings, this.nextPageToken});

  ListFindingsResponse.fromJson(core.Map json_)
    : this(
        findings:
            (json_['findings'] as core.List?)
                ?.map(
                  (value) => Finding.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        nextPageToken: json_['nextPageToken'] as core.String?,
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

  ListScanConfigsResponse({this.nextPageToken, this.scanConfigs});

  ListScanConfigsResponse.fromJson(core.Map json_)
    : this(
        nextPageToken: json_['nextPageToken'] as core.String?,
        scanConfigs:
            (json_['scanConfigs'] as core.List?)
                ?.map(
                  (value) => ScanConfig.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
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

  ListScanRunsResponse({this.nextPageToken, this.scanRuns});

  ListScanRunsResponse.fromJson(core.Map json_)
    : this(
        nextPageToken: json_['nextPageToken'] as core.String?,
        scanRuns:
            (json_['scanRuns'] as core.List?)
                ?.map(
                  (value) => ScanRun.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (nextPageToken != null) 'nextPageToken': nextPageToken!,
    if (scanRuns != null) 'scanRuns': scanRuns!,
  };
}

/// Information reported for an outdated library.
typedef OutdatedLibrary = $OutdatedLibrary;

/// A ScanConfig resource contains the configurations to launch a scan.
///
/// next id: 12
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

  /// Latest ScanRun if available.
  ScanRun? latestRun;

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

  /// The schedule of the ScanConfig.
  Schedule? schedule;

  /// The starting URLs from which the scanner finds site pages.
  ///
  /// Required.
  core.List<core.String>? startingUrls;

  /// Set of Google Cloud platforms targeted by the scan.
  ///
  /// If empty, APP_ENGINE will be used as a default.
  core.List<core.String>? targetPlatforms;

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
    this.latestRun,
    this.maxQps,
    this.name,
    this.schedule,
    this.startingUrls,
    this.targetPlatforms,
    this.userAgent,
  });

  ScanConfig.fromJson(core.Map json_)
    : this(
        authentication:
            json_.containsKey('authentication')
                ? Authentication.fromJson(
                  json_['authentication']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        blacklistPatterns:
            (json_['blacklistPatterns'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        displayName: json_['displayName'] as core.String?,
        latestRun:
            json_.containsKey('latestRun')
                ? ScanRun.fromJson(
                  json_['latestRun'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        maxQps: json_['maxQps'] as core.int?,
        name: json_['name'] as core.String?,
        schedule:
            json_.containsKey('schedule')
                ? Schedule.fromJson(
                  json_['schedule'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        startingUrls:
            (json_['startingUrls'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        targetPlatforms:
            (json_['targetPlatforms'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        userAgent: json_['userAgent'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (authentication != null) 'authentication': authentication!,
    if (blacklistPatterns != null) 'blacklistPatterns': blacklistPatterns!,
    if (displayName != null) 'displayName': displayName!,
    if (latestRun != null) 'latestRun': latestRun!,
    if (maxQps != null) 'maxQps': maxQps!,
    if (name != null) 'name': name!,
    if (schedule != null) 'schedule': schedule!,
    if (startingUrls != null) 'startingUrls': startingUrls!,
    if (targetPlatforms != null) 'targetPlatforms': targetPlatforms!,
    if (userAgent != null) 'userAgent': userAgent!,
  };
}

/// A ScanRun is a output-only resource representing an actual run of the scan.
class ScanRun {
  /// The time at which the ScanRun reached termination state - that the ScanRun
  /// is either finished or stopped by user.
  core.String? endTime;

  /// The execution state of the ScanRun.
  /// Possible string values are:
  /// - "EXECUTION_STATE_UNSPECIFIED" : Represents an invalid state caused by
  /// internal server error. This value should never be returned.
  /// - "QUEUED" : The scan is waiting in the queue.
  /// - "SCANNING" : The scan is in progress.
  /// - "FINISHED" : The scan is either finished or stopped by user.
  core.String? executionState;

  /// Whether the scan run has found any vulnerabilities.
  core.bool? hasVulnerabilities;

  /// The resource name of the ScanRun.
  ///
  /// The name follows the format of
  /// 'projects/{projectId}/scanConfigs/{scanConfigId}/scanRuns/{scanRunId}'.
  /// The ScanRun IDs are generated by the system.
  core.String? name;

  /// The percentage of total completion ranging from 0 to 100.
  ///
  /// If the scan is in queue, the value is 0. If the scan is running, the value
  /// ranges from 0 to 100. If the scan is finished, the value is 100.
  core.int? progressPercent;

  /// The result state of the ScanRun.
  ///
  /// This field is only available after the execution state reaches "FINISHED".
  /// Possible string values are:
  /// - "RESULT_STATE_UNSPECIFIED" : Default value. This value is returned when
  /// the ScanRun is not yet finished.
  /// - "SUCCESS" : The scan finished without errors.
  /// - "ERROR" : The scan finished with errors.
  /// - "KILLED" : The scan was terminated by user.
  core.String? resultState;

  /// The time at which the ScanRun started.
  core.String? startTime;

  /// The number of URLs crawled during this ScanRun.
  ///
  /// If the scan is in progress, the value represents the number of URLs
  /// crawled up to now.
  core.String? urlsCrawledCount;

  /// The number of URLs tested during this ScanRun.
  ///
  /// If the scan is in progress, the value represents the number of URLs tested
  /// up to now. The number of URLs tested is usually larger than the number
  /// URLS crawled because typically a crawled URL is tested with multiple test
  /// payloads.
  core.String? urlsTestedCount;

  ScanRun({
    this.endTime,
    this.executionState,
    this.hasVulnerabilities,
    this.name,
    this.progressPercent,
    this.resultState,
    this.startTime,
    this.urlsCrawledCount,
    this.urlsTestedCount,
  });

  ScanRun.fromJson(core.Map json_)
    : this(
        endTime: json_['endTime'] as core.String?,
        executionState: json_['executionState'] as core.String?,
        hasVulnerabilities: json_['hasVulnerabilities'] as core.bool?,
        name: json_['name'] as core.String?,
        progressPercent: json_['progressPercent'] as core.int?,
        resultState: json_['resultState'] as core.String?,
        startTime: json_['startTime'] as core.String?,
        urlsCrawledCount: json_['urlsCrawledCount'] as core.String?,
        urlsTestedCount: json_['urlsTestedCount'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (endTime != null) 'endTime': endTime!,
    if (executionState != null) 'executionState': executionState!,
    if (hasVulnerabilities != null) 'hasVulnerabilities': hasVulnerabilities!,
    if (name != null) 'name': name!,
    if (progressPercent != null) 'progressPercent': progressPercent!,
    if (resultState != null) 'resultState': resultState!,
    if (startTime != null) 'startTime': startTime!,
    if (urlsCrawledCount != null) 'urlsCrawledCount': urlsCrawledCount!,
    if (urlsTestedCount != null) 'urlsTestedCount': urlsTestedCount!,
  };
}

/// Scan schedule configuration.
typedef Schedule = $Schedule;

/// Request for the `StartScanRun` method.
typedef StartScanRunRequest = $Empty;

/// Request for the `StopScanRun` method.
typedef StopScanRunRequest = $Empty;

/// Information regarding any resource causing the vulnerability such as
/// JavaScript sources, image, audio files, etc.
typedef ViolatingResource = $ViolatingResource;

/// Information about vulnerable or missing HTTP Headers.
class VulnerableHeaders {
  /// List of vulnerable headers.
  core.List<Header>? headers;

  /// List of missing headers.
  core.List<Header>? missingHeaders;

  VulnerableHeaders({this.headers, this.missingHeaders});

  VulnerableHeaders.fromJson(core.Map json_)
    : this(
        headers:
            (json_['headers'] as core.List?)
                ?.map(
                  (value) => Header.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        missingHeaders:
            (json_['missingHeaders'] as core.List?)
                ?.map(
                  (value) => Header.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (headers != null) 'headers': headers!,
    if (missingHeaders != null) 'missingHeaders': missingHeaders!,
  };
}

/// Information about vulnerable request parameters.
typedef VulnerableParameters = $VulnerableParameters;

/// Information reported for an XSS.
typedef Xss = $Xss;
