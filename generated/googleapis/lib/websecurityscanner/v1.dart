// This is a generated file (see the discoveryapis_generator project).

// ignore_for_file: unused_import, unnecessary_cast

library googleapis.websecurityscanner.v1;

import 'dart:core' as core;
import 'dart:async' as async;
import 'dart:convert' as convert;

import 'package:_discoveryapis_commons/_discoveryapis_commons.dart' as commons;
import 'package:http/http.dart' as http;

export 'package:_discoveryapis_commons/_discoveryapis_commons.dart'
    show ApiRequestError, DetailedApiRequestError;

const core.String USER_AGENT = 'dart-api-client websecurityscanner/v1';

/// Scans your Compute and App Engine apps for common web vulnerabilities.
class WebsecurityscannerApi {
  /// View and manage your data across Google Cloud Platform services
  static const CloudPlatformScope =
      "https://www.googleapis.com/auth/cloud-platform";

  final commons.ApiRequester _requester;

  ProjectsResourceApi get projects => new ProjectsResourceApi(_requester);

  WebsecurityscannerApi(http.Client client,
      {core.String rootUrl = "https://websecurityscanner.googleapis.com/",
      core.String servicePath = ""})
      : _requester =
            new commons.ApiRequester(client, rootUrl, servicePath, USER_AGENT);
}

class ProjectsResourceApi {
  final commons.ApiRequester _requester;

  ProjectsScanConfigsResourceApi get scanConfigs =>
      new ProjectsScanConfigsResourceApi(_requester);

  ProjectsResourceApi(commons.ApiRequester client) : _requester = client;
}

class ProjectsScanConfigsResourceApi {
  final commons.ApiRequester _requester;

  ProjectsScanConfigsScanRunsResourceApi get scanRuns =>
      new ProjectsScanConfigsScanRunsResourceApi(_requester);

  ProjectsScanConfigsResourceApi(commons.ApiRequester client)
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
  /// Value must have pattern "^projects/[^/]+$".
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
  async.Future<ScanConfig> create(ScanConfig request, core.String parent,
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

    _url = 'v1/' +
        commons.Escaper.ecapeVariableReserved('$parent') +
        '/scanConfigs';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new ScanConfig.fromJson(data));
  }

  /// Deletes an existing ScanConfig and its child resources.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name of the ScanConfig to be deleted. The
  /// name follows the format of
  /// 'projects/{projectId}/scanConfigs/{scanConfigId}'.
  /// Value must have pattern "^projects/[^/]+/scanConfigs/[^/]+$".
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

    _url = 'v1/' + commons.Escaper.ecapeVariableReserved('$name');

    var _response = _requester.request(_url, "DELETE",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Empty.fromJson(data));
  }

  /// Gets a ScanConfig.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name of the ScanConfig to be returned. The
  /// name follows the format of
  /// 'projects/{projectId}/scanConfigs/{scanConfigId}'.
  /// Value must have pattern "^projects/[^/]+/scanConfigs/[^/]+$".
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
  async.Future<ScanConfig> get(core.String name, {core.String $fields}) {
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

    _url = 'v1/' + commons.Escaper.ecapeVariableReserved('$name');

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new ScanConfig.fromJson(data));
  }

  /// Lists ScanConfigs under a given project.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent resource name, which should be a project
  /// resource name in the format 'projects/{projectId}'.
  /// Value must have pattern "^projects/[^/]+$".
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
  async.Future<ListScanConfigsResponse> list(core.String parent,
      {core.int pageSize, core.String pageToken, core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (parent == null) {
      throw new core.ArgumentError("Parameter parent is required.");
    }
    if (pageSize != null) {
      _queryParams["pageSize"] = ["${pageSize}"];
    }
    if (pageToken != null) {
      _queryParams["pageToken"] = [pageToken];
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1/' +
        commons.Escaper.ecapeVariableReserved('$parent') +
        '/scanConfigs';

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new ListScanConfigsResponse.fromJson(data));
  }

  /// Updates a ScanConfig. This method support partial update of a ScanConfig.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - The resource name of the ScanConfig. The name follows the format
  /// of 'projects/{projectId}/scanConfigs/{scanConfigId}'. The ScanConfig IDs
  /// are generated by the system.
  /// Value must have pattern "^projects/[^/]+/scanConfigs/[^/]+$".
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
  async.Future<ScanConfig> patch(ScanConfig request, core.String name,
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

    _url = 'v1/' + commons.Escaper.ecapeVariableReserved('$name');

    var _response = _requester.request(_url, "PATCH",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new ScanConfig.fromJson(data));
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
  /// Value must have pattern "^projects/[^/]+/scanConfigs/[^/]+$".
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
  async.Future<ScanRun> start(StartScanRunRequest request, core.String name,
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
    if (name == null) {
      throw new core.ArgumentError("Parameter name is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1/' + commons.Escaper.ecapeVariableReserved('$name') + ':start';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new ScanRun.fromJson(data));
  }
}

class ProjectsScanConfigsScanRunsResourceApi {
  final commons.ApiRequester _requester;

  ProjectsScanConfigsScanRunsCrawledUrlsResourceApi get crawledUrls =>
      new ProjectsScanConfigsScanRunsCrawledUrlsResourceApi(_requester);
  ProjectsScanConfigsScanRunsFindingTypeStatsResourceApi get findingTypeStats =>
      new ProjectsScanConfigsScanRunsFindingTypeStatsResourceApi(_requester);
  ProjectsScanConfigsScanRunsFindingsResourceApi get findings =>
      new ProjectsScanConfigsScanRunsFindingsResourceApi(_requester);

  ProjectsScanConfigsScanRunsResourceApi(commons.ApiRequester client)
      : _requester = client;

  /// Gets a ScanRun.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name of the ScanRun to be returned. The
  /// name follows the format of
  /// 'projects/{projectId}/scanConfigs/{scanConfigId}/scanRuns/{scanRunId}'.
  /// Value must have pattern
  /// "^projects/[^/]+/scanConfigs/[^/]+/scanRuns/[^/]+$".
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
  async.Future<ScanRun> get(core.String name, {core.String $fields}) {
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

    _url = 'v1/' + commons.Escaper.ecapeVariableReserved('$name');

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new ScanRun.fromJson(data));
  }

  /// Lists ScanRuns under a given ScanConfig, in descending order of ScanRun
  /// stop time.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent resource name, which should be a scan
  /// resource name in the format
  /// 'projects/{projectId}/scanConfigs/{scanConfigId}'.
  /// Value must have pattern "^projects/[^/]+/scanConfigs/[^/]+$".
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
  async.Future<ListScanRunsResponse> list(core.String parent,
      {core.int pageSize, core.String pageToken, core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (parent == null) {
      throw new core.ArgumentError("Parameter parent is required.");
    }
    if (pageSize != null) {
      _queryParams["pageSize"] = ["${pageSize}"];
    }
    if (pageToken != null) {
      _queryParams["pageToken"] = [pageToken];
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url =
        'v1/' + commons.Escaper.ecapeVariableReserved('$parent') + '/scanRuns';

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new ListScanRunsResponse.fromJson(data));
  }

  /// Stops a ScanRun. The stopped ScanRun is returned.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name of the ScanRun to be stopped. The
  /// name follows the format of
  /// 'projects/{projectId}/scanConfigs/{scanConfigId}/scanRuns/{scanRunId}'.
  /// Value must have pattern
  /// "^projects/[^/]+/scanConfigs/[^/]+/scanRuns/[^/]+$".
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
  async.Future<ScanRun> stop(StopScanRunRequest request, core.String name,
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
    if (name == null) {
      throw new core.ArgumentError("Parameter name is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1/' + commons.Escaper.ecapeVariableReserved('$name') + ':stop';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new ScanRun.fromJson(data));
  }
}

class ProjectsScanConfigsScanRunsCrawledUrlsResourceApi {
  final commons.ApiRequester _requester;

  ProjectsScanConfigsScanRunsCrawledUrlsResourceApi(commons.ApiRequester client)
      : _requester = client;

  /// List CrawledUrls under a given ScanRun.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent resource name, which should be a scan run
  /// resource name in the format
  /// 'projects/{projectId}/scanConfigs/{scanConfigId}/scanRuns/{scanRunId}'.
  /// Value must have pattern
  /// "^projects/[^/]+/scanConfigs/[^/]+/scanRuns/[^/]+$".
  ///
  /// [pageToken] - A token identifying a page of results to be returned. This
  /// should be a `next_page_token` value returned from a previous List request.
  /// If unspecified, the first page of results is returned.
  ///
  /// [pageSize] - The maximum number of CrawledUrls to return, can be limited
  /// by server. If not specified or not positive, the implementation will
  /// select a reasonable value.
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
  async.Future<ListCrawledUrlsResponse> list(core.String parent,
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

    _url = 'v1/' +
        commons.Escaper.ecapeVariableReserved('$parent') +
        '/crawledUrls';

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new ListCrawledUrlsResponse.fromJson(data));
  }
}

class ProjectsScanConfigsScanRunsFindingTypeStatsResourceApi {
  final commons.ApiRequester _requester;

  ProjectsScanConfigsScanRunsFindingTypeStatsResourceApi(
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
  /// "^projects/[^/]+/scanConfigs/[^/]+/scanRuns/[^/]+$".
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
  async.Future<ListFindingTypeStatsResponse> list(core.String parent,
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

    _url = 'v1/' +
        commons.Escaper.ecapeVariableReserved('$parent') +
        '/findingTypeStats';

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response
        .then((data) => new ListFindingTypeStatsResponse.fromJson(data));
  }
}

class ProjectsScanConfigsScanRunsFindingsResourceApi {
  final commons.ApiRequester _requester;

  ProjectsScanConfigsScanRunsFindingsResourceApi(commons.ApiRequester client)
      : _requester = client;

  /// Gets a Finding.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name of the Finding to be returned. The
  /// name follows the format of
  /// 'projects/{projectId}/scanConfigs/{scanConfigId}/scanRuns/{scanRunId}/findings/{findingId}'.
  /// Value must have pattern
  /// "^projects/[^/]+/scanConfigs/[^/]+/scanRuns/[^/]+/findings/[^/]+$".
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
  async.Future<Finding> get(core.String name, {core.String $fields}) {
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

    _url = 'v1/' + commons.Escaper.ecapeVariableReserved('$name');

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Finding.fromJson(data));
  }

  /// List Findings under a given ScanRun.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent resource name, which should be a scan run
  /// resource name in the format
  /// 'projects/{projectId}/scanConfigs/{scanConfigId}/scanRuns/{scanRunId}'.
  /// Value must have pattern
  /// "^projects/[^/]+/scanConfigs/[^/]+/scanRuns/[^/]+$".
  ///
  /// [pageSize] - The maximum number of Findings to return, can be limited by
  /// server. If not specified or not positive, the implementation will select a
  /// reasonable value.
  ///
  /// [filter] - The filter expression. The expression must be in the format: .
  /// Supported field: 'finding_type'. Supported operator: '='.
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
  async.Future<ListFindingsResponse> list(core.String parent,
      {core.int pageSize,
      core.String filter,
      core.String pageToken,
      core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (parent == null) {
      throw new core.ArgumentError("Parameter parent is required.");
    }
    if (pageSize != null) {
      _queryParams["pageSize"] = ["${pageSize}"];
    }
    if (filter != null) {
      _queryParams["filter"] = [filter];
    }
    if (pageToken != null) {
      _queryParams["pageToken"] = [pageToken];
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url =
        'v1/' + commons.Escaper.ecapeVariableReserved('$parent') + '/findings';

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new ListFindingsResponse.fromJson(data));
  }
}

/// Scan authentication configuration.
class Authentication {
  /// Authentication using a custom account.
  CustomAccount customAccount;

  /// Authentication using a Google account.
  GoogleAccount googleAccount;

  /// Authentication using Identity-Aware-Proxy (IAP).
  IapCredential iapCredential;

  Authentication();

  Authentication.fromJson(core.Map _json) {
    if (_json.containsKey("customAccount")) {
      customAccount = new CustomAccount.fromJson(_json["customAccount"]);
    }
    if (_json.containsKey("googleAccount")) {
      googleAccount = new GoogleAccount.fromJson(_json["googleAccount"]);
    }
    if (_json.containsKey("iapCredential")) {
      iapCredential = new IapCredential.fromJson(_json["iapCredential"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (customAccount != null) {
      _json["customAccount"] = (customAccount).toJson();
    }
    if (googleAccount != null) {
      _json["googleAccount"] = (googleAccount).toJson();
    }
    if (iapCredential != null) {
      _json["iapCredential"] = (iapCredential).toJson();
    }
    return _json;
  }
}

/// A CrawledUrl resource represents a URL that was crawled during a ScanRun.
/// Web Security Scanner Service crawls the web applications, following all
/// links within the scope of sites, to find the URLs to test against.
class CrawledUrl {
  /// Output only. The body of the request that was used to visit the URL.
  core.String body;

  /// Output only. The http method of the request that was used to visit the
  /// URL, in uppercase.
  core.String httpMethod;

  /// Output only. The URL that was crawled.
  core.String url;

  CrawledUrl();

  CrawledUrl.fromJson(core.Map _json) {
    if (_json.containsKey("body")) {
      body = _json["body"];
    }
    if (_json.containsKey("httpMethod")) {
      httpMethod = _json["httpMethod"];
    }
    if (_json.containsKey("url")) {
      url = _json["url"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (body != null) {
      _json["body"] = body;
    }
    if (httpMethod != null) {
      _json["httpMethod"] = httpMethod;
    }
    if (url != null) {
      _json["url"] = url;
    }
    return _json;
  }
}

/// Describes authentication configuration that uses a custom account.
class CustomAccount {
  /// Required. The login form URL of the website.
  core.String loginUrl;

  /// Required. Input only. The password of the custom account. The credential
  /// is stored encrypted and not returned in any response nor included in audit
  /// logs.
  core.String password;

  /// Required. The user name of the custom account.
  core.String username;

  CustomAccount();

  CustomAccount.fromJson(core.Map _json) {
    if (_json.containsKey("loginUrl")) {
      loginUrl = _json["loginUrl"];
    }
    if (_json.containsKey("password")) {
      password = _json["password"];
    }
    if (_json.containsKey("username")) {
      username = _json["username"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (loginUrl != null) {
      _json["loginUrl"] = loginUrl;
    }
    if (password != null) {
      _json["password"] = password;
    }
    if (username != null) {
      _json["username"] = username;
    }
    return _json;
  }
}

/// A generic empty message that you can re-use to avoid defining duplicated
/// empty messages in your APIs. A typical example is to use it as the request
/// or the response type of an API method. For instance: service Foo { rpc
/// Bar(google.protobuf.Empty) returns (google.protobuf.Empty); } The JSON
/// representation for `Empty` is empty JSON object `{}`.
class Empty {
  Empty();

  Empty.fromJson(core.Map _json) {}

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    return _json;
  }
}

/// A Finding resource represents a vulnerability instance identified during a
/// ScanRun.
class Finding {
  /// Output only. The body of the request that triggered the vulnerability.
  core.String body;

  /// Output only. The description of the vulnerability.
  core.String description;

  /// Output only. The URL where the browser lands when the vulnerability is
  /// detected.
  core.String finalUrl;

  /// Output only. The type of the Finding. Detailed and up-to-date information
  /// on findings can be found here:
  /// https://cloud.google.com/security-command-center/docs/how-to-remediate-web-security-scanner-findings
  core.String findingType;

  /// Output only. An addon containing information reported for a vulnerability
  /// with an HTML form, if any.
  Form form;

  /// Output only. If the vulnerability was originated from nested IFrame, the
  /// immediate parent IFrame is reported.
  core.String frameUrl;

  /// Output only. The URL produced by the server-side fuzzer and used in the
  /// request that triggered the vulnerability.
  core.String fuzzedUrl;

  /// Output only. The http method of the request that triggered the
  /// vulnerability, in uppercase.
  core.String httpMethod;

  /// Output only. The resource name of the Finding. The name follows the format
  /// of
  /// 'projects/{projectId}/scanConfigs/{scanConfigId}/scanruns/{scanRunId}/findings/{findingId}'.
  /// The finding IDs are generated by the system.
  core.String name;

  /// Output only. An addon containing information about outdated libraries.
  OutdatedLibrary outdatedLibrary;

  /// Output only. The URL containing human-readable payload that user can
  /// leverage to reproduce the vulnerability.
  core.String reproductionUrl;

  /// Output only. The severity level of the reported vulnerability.
  /// Possible string values are:
  /// - "SEVERITY_UNSPECIFIED" : No severity specified. The default value.
  /// - "CRITICAL" : Critical severity.
  /// - "HIGH" : High severity.
  /// - "MEDIUM" : Medium severity.
  /// - "LOW" : Low severity.
  core.String severity;

  /// Output only. The tracking ID uniquely identifies a vulnerability instance
  /// across multiple ScanRuns.
  core.String trackingId;

  /// Output only. An addon containing detailed information regarding any
  /// resource causing the vulnerability such as JavaScript sources, image,
  /// audio files, etc.
  ViolatingResource violatingResource;

  /// Output only. An addon containing information about vulnerable or missing
  /// HTTP headers.
  VulnerableHeaders vulnerableHeaders;

  /// Output only. An addon containing information about request parameters
  /// which were found to be vulnerable.
  VulnerableParameters vulnerableParameters;

  /// Output only. An addon containing information reported for an XSS, if any.
  Xss xss;

  Finding();

  Finding.fromJson(core.Map _json) {
    if (_json.containsKey("body")) {
      body = _json["body"];
    }
    if (_json.containsKey("description")) {
      description = _json["description"];
    }
    if (_json.containsKey("finalUrl")) {
      finalUrl = _json["finalUrl"];
    }
    if (_json.containsKey("findingType")) {
      findingType = _json["findingType"];
    }
    if (_json.containsKey("form")) {
      form = new Form.fromJson(_json["form"]);
    }
    if (_json.containsKey("frameUrl")) {
      frameUrl = _json["frameUrl"];
    }
    if (_json.containsKey("fuzzedUrl")) {
      fuzzedUrl = _json["fuzzedUrl"];
    }
    if (_json.containsKey("httpMethod")) {
      httpMethod = _json["httpMethod"];
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
    if (_json.containsKey("outdatedLibrary")) {
      outdatedLibrary = new OutdatedLibrary.fromJson(_json["outdatedLibrary"]);
    }
    if (_json.containsKey("reproductionUrl")) {
      reproductionUrl = _json["reproductionUrl"];
    }
    if (_json.containsKey("severity")) {
      severity = _json["severity"];
    }
    if (_json.containsKey("trackingId")) {
      trackingId = _json["trackingId"];
    }
    if (_json.containsKey("violatingResource")) {
      violatingResource =
          new ViolatingResource.fromJson(_json["violatingResource"]);
    }
    if (_json.containsKey("vulnerableHeaders")) {
      vulnerableHeaders =
          new VulnerableHeaders.fromJson(_json["vulnerableHeaders"]);
    }
    if (_json.containsKey("vulnerableParameters")) {
      vulnerableParameters =
          new VulnerableParameters.fromJson(_json["vulnerableParameters"]);
    }
    if (_json.containsKey("xss")) {
      xss = new Xss.fromJson(_json["xss"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (body != null) {
      _json["body"] = body;
    }
    if (description != null) {
      _json["description"] = description;
    }
    if (finalUrl != null) {
      _json["finalUrl"] = finalUrl;
    }
    if (findingType != null) {
      _json["findingType"] = findingType;
    }
    if (form != null) {
      _json["form"] = (form).toJson();
    }
    if (frameUrl != null) {
      _json["frameUrl"] = frameUrl;
    }
    if (fuzzedUrl != null) {
      _json["fuzzedUrl"] = fuzzedUrl;
    }
    if (httpMethod != null) {
      _json["httpMethod"] = httpMethod;
    }
    if (name != null) {
      _json["name"] = name;
    }
    if (outdatedLibrary != null) {
      _json["outdatedLibrary"] = (outdatedLibrary).toJson();
    }
    if (reproductionUrl != null) {
      _json["reproductionUrl"] = reproductionUrl;
    }
    if (severity != null) {
      _json["severity"] = severity;
    }
    if (trackingId != null) {
      _json["trackingId"] = trackingId;
    }
    if (violatingResource != null) {
      _json["violatingResource"] = (violatingResource).toJson();
    }
    if (vulnerableHeaders != null) {
      _json["vulnerableHeaders"] = (vulnerableHeaders).toJson();
    }
    if (vulnerableParameters != null) {
      _json["vulnerableParameters"] = (vulnerableParameters).toJson();
    }
    if (xss != null) {
      _json["xss"] = (xss).toJson();
    }
    return _json;
  }
}

/// A FindingTypeStats resource represents stats regarding a specific
/// FindingType of Findings under a given ScanRun.
class FindingTypeStats {
  /// Output only. The count of findings belonging to this finding type.
  core.int findingCount;

  /// Output only. The finding type associated with the stats.
  core.String findingType;

  FindingTypeStats();

  FindingTypeStats.fromJson(core.Map _json) {
    if (_json.containsKey("findingCount")) {
      findingCount = _json["findingCount"];
    }
    if (_json.containsKey("findingType")) {
      findingType = _json["findingType"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (findingCount != null) {
      _json["findingCount"] = findingCount;
    }
    if (findingType != null) {
      _json["findingType"] = findingType;
    }
    return _json;
  }
}

/// ! Information about a vulnerability with an HTML.
class Form {
  /// ! The URI where to send the form when it's submitted.
  core.String actionUri;

  /// ! The names of form fields related to the vulnerability.
  core.List<core.String> fields;

  Form();

  Form.fromJson(core.Map _json) {
    if (_json.containsKey("actionUri")) {
      actionUri = _json["actionUri"];
    }
    if (_json.containsKey("fields")) {
      fields = (_json["fields"] as core.List).cast<core.String>();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (actionUri != null) {
      _json["actionUri"] = actionUri;
    }
    if (fields != null) {
      _json["fields"] = fields;
    }
    return _json;
  }
}

/// Describes authentication configuration that uses a Google account.
class GoogleAccount {
  /// Required. Input only. The password of the Google account. The credential
  /// is stored encrypted and not returned in any response nor included in audit
  /// logs.
  core.String password;

  /// Required. The user name of the Google account.
  core.String username;

  GoogleAccount();

  GoogleAccount.fromJson(core.Map _json) {
    if (_json.containsKey("password")) {
      password = _json["password"];
    }
    if (_json.containsKey("username")) {
      username = _json["username"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (password != null) {
      _json["password"] = password;
    }
    if (username != null) {
      _json["username"] = username;
    }
    return _json;
  }
}

/// Describes a HTTP Header.
class Header {
  /// Header name.
  core.String name;

  /// Header value.
  core.String value;

  Header();

  Header.fromJson(core.Map _json) {
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
    if (_json.containsKey("value")) {
      value = _json["value"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (name != null) {
      _json["name"] = name;
    }
    if (value != null) {
      _json["value"] = value;
    }
    return _json;
  }
}

/// Describes authentication configuration for Identity-Aware-Proxy (IAP).
class IapCredential {
  /// Authentication configuration when Web-Security-Scanner service account is
  /// added in Identity-Aware-Proxy (IAP) access policies.
  IapTestServiceAccountInfo iapTestServiceAccountInfo;

  IapCredential();

  IapCredential.fromJson(core.Map _json) {
    if (_json.containsKey("iapTestServiceAccountInfo")) {
      iapTestServiceAccountInfo = new IapTestServiceAccountInfo.fromJson(
          _json["iapTestServiceAccountInfo"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (iapTestServiceAccountInfo != null) {
      _json["iapTestServiceAccountInfo"] = (iapTestServiceAccountInfo).toJson();
    }
    return _json;
  }
}

/// Describes authentication configuration when Web-Security-Scanner service
/// account is added in Identity-Aware-Proxy (IAP) access policies.
class IapTestServiceAccountInfo {
  /// Required. Describes OAuth2 client id of resources protected by
  /// Identity-Aware-Proxy (IAP).
  core.String targetAudienceClientId;

  IapTestServiceAccountInfo();

  IapTestServiceAccountInfo.fromJson(core.Map _json) {
    if (_json.containsKey("targetAudienceClientId")) {
      targetAudienceClientId = _json["targetAudienceClientId"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (targetAudienceClientId != null) {
      _json["targetAudienceClientId"] = targetAudienceClientId;
    }
    return _json;
  }
}

/// Response for the `ListCrawledUrls` method.
class ListCrawledUrlsResponse {
  /// The list of CrawledUrls returned.
  core.List<CrawledUrl> crawledUrls;

  /// Token to retrieve the next page of results, or empty if there are no more
  /// results in the list.
  core.String nextPageToken;

  ListCrawledUrlsResponse();

  ListCrawledUrlsResponse.fromJson(core.Map _json) {
    if (_json.containsKey("crawledUrls")) {
      crawledUrls = (_json["crawledUrls"] as core.List)
          .map<CrawledUrl>((value) => new CrawledUrl.fromJson(value))
          .toList();
    }
    if (_json.containsKey("nextPageToken")) {
      nextPageToken = _json["nextPageToken"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (crawledUrls != null) {
      _json["crawledUrls"] =
          crawledUrls.map((value) => (value).toJson()).toList();
    }
    if (nextPageToken != null) {
      _json["nextPageToken"] = nextPageToken;
    }
    return _json;
  }
}

/// Response for the `ListFindingTypeStats` method.
class ListFindingTypeStatsResponse {
  /// The list of FindingTypeStats returned.
  core.List<FindingTypeStats> findingTypeStats;

  ListFindingTypeStatsResponse();

  ListFindingTypeStatsResponse.fromJson(core.Map _json) {
    if (_json.containsKey("findingTypeStats")) {
      findingTypeStats = (_json["findingTypeStats"] as core.List)
          .map<FindingTypeStats>(
              (value) => new FindingTypeStats.fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (findingTypeStats != null) {
      _json["findingTypeStats"] =
          findingTypeStats.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

/// Response for the `ListFindings` method.
class ListFindingsResponse {
  /// The list of Findings returned.
  core.List<Finding> findings;

  /// Token to retrieve the next page of results, or empty if there are no more
  /// results in the list.
  core.String nextPageToken;

  ListFindingsResponse();

  ListFindingsResponse.fromJson(core.Map _json) {
    if (_json.containsKey("findings")) {
      findings = (_json["findings"] as core.List)
          .map<Finding>((value) => new Finding.fromJson(value))
          .toList();
    }
    if (_json.containsKey("nextPageToken")) {
      nextPageToken = _json["nextPageToken"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (findings != null) {
      _json["findings"] = findings.map((value) => (value).toJson()).toList();
    }
    if (nextPageToken != null) {
      _json["nextPageToken"] = nextPageToken;
    }
    return _json;
  }
}

/// Response for the `ListScanConfigs` method.
class ListScanConfigsResponse {
  /// Token to retrieve the next page of results, or empty if there are no more
  /// results in the list.
  core.String nextPageToken;

  /// The list of ScanConfigs returned.
  core.List<ScanConfig> scanConfigs;

  ListScanConfigsResponse();

  ListScanConfigsResponse.fromJson(core.Map _json) {
    if (_json.containsKey("nextPageToken")) {
      nextPageToken = _json["nextPageToken"];
    }
    if (_json.containsKey("scanConfigs")) {
      scanConfigs = (_json["scanConfigs"] as core.List)
          .map<ScanConfig>((value) => new ScanConfig.fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (nextPageToken != null) {
      _json["nextPageToken"] = nextPageToken;
    }
    if (scanConfigs != null) {
      _json["scanConfigs"] =
          scanConfigs.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

/// Response for the `ListScanRuns` method.
class ListScanRunsResponse {
  /// Token to retrieve the next page of results, or empty if there are no more
  /// results in the list.
  core.String nextPageToken;

  /// The list of ScanRuns returned.
  core.List<ScanRun> scanRuns;

  ListScanRunsResponse();

  ListScanRunsResponse.fromJson(core.Map _json) {
    if (_json.containsKey("nextPageToken")) {
      nextPageToken = _json["nextPageToken"];
    }
    if (_json.containsKey("scanRuns")) {
      scanRuns = (_json["scanRuns"] as core.List)
          .map<ScanRun>((value) => new ScanRun.fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (nextPageToken != null) {
      _json["nextPageToken"] = nextPageToken;
    }
    if (scanRuns != null) {
      _json["scanRuns"] = scanRuns.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

/// Information reported for an outdated library.
class OutdatedLibrary {
  /// URLs to learn more information about the vulnerabilities in the library.
  core.List<core.String> learnMoreUrls;

  /// The name of the outdated library.
  core.String libraryName;

  /// The version number.
  core.String version;

  OutdatedLibrary();

  OutdatedLibrary.fromJson(core.Map _json) {
    if (_json.containsKey("learnMoreUrls")) {
      learnMoreUrls = (_json["learnMoreUrls"] as core.List).cast<core.String>();
    }
    if (_json.containsKey("libraryName")) {
      libraryName = _json["libraryName"];
    }
    if (_json.containsKey("version")) {
      version = _json["version"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (learnMoreUrls != null) {
      _json["learnMoreUrls"] = learnMoreUrls;
    }
    if (libraryName != null) {
      _json["libraryName"] = libraryName;
    }
    if (version != null) {
      _json["version"] = version;
    }
    return _json;
  }
}

/// A ScanConfig resource contains the configurations to launch a scan.
class ScanConfig {
  /// The authentication configuration. If specified, service will use the
  /// authentication configuration during scanning.
  Authentication authentication;

  /// The excluded URL patterns as described in
  /// https://cloud.google.com/security-command-center/docs/how-to-use-web-security-scanner#excluding_urls
  core.List<core.String> blacklistPatterns;

  /// Required. The user provided display name of the ScanConfig.
  core.String displayName;

  /// Controls export of scan configurations and results to Security Command
  /// Center.
  /// Possible string values are:
  /// - "EXPORT_TO_SECURITY_COMMAND_CENTER_UNSPECIFIED" : Use default, which is
  /// ENABLED.
  /// - "ENABLED" : Export results of this scan to Security Command Center.
  /// - "DISABLED" : Do not export results of this scan to Security Command
  /// Center.
  core.String exportToSecurityCommandCenter;

  /// Whether the scan config is managed by Web Security Scanner, output only.
  core.bool managedScan;

  /// The maximum QPS during scanning. A valid value ranges from 5 to 20
  /// inclusively. If the field is unspecified or its value is set 0, server
  /// will default to 15. Other values outside of [5, 20] range will be rejected
  /// with INVALID_ARGUMENT error.
  core.int maxQps;

  /// The resource name of the ScanConfig. The name follows the format of
  /// 'projects/{projectId}/scanConfigs/{scanConfigId}'. The ScanConfig IDs are
  /// generated by the system.
  core.String name;

  /// The risk level selected for the scan
  /// Possible string values are:
  /// - "RISK_LEVEL_UNSPECIFIED" : Use default, which is NORMAL.
  /// - "NORMAL" : Normal scanning (Recommended)
  /// - "LOW" : Lower impact scanning
  core.String riskLevel;

  /// The schedule of the ScanConfig.
  Schedule schedule;

  /// Required. The starting URLs from which the scanner finds site pages.
  core.List<core.String> startingUrls;

  /// Whether the scan configuration has enabled static IP address scan feature.
  /// If enabled, the scanner will access applications from static IP addresses.
  core.bool staticIpScan;

  /// The user agent used during scanning.
  /// Possible string values are:
  /// - "USER_AGENT_UNSPECIFIED" : The user agent is unknown. Service will
  /// default to CHROME_LINUX.
  /// - "CHROME_LINUX" : Chrome on Linux. This is the service default if
  /// unspecified.
  /// - "CHROME_ANDROID" : Chrome on Android.
  /// - "SAFARI_IPHONE" : Safari on IPhone.
  core.String userAgent;

  ScanConfig();

  ScanConfig.fromJson(core.Map _json) {
    if (_json.containsKey("authentication")) {
      authentication = new Authentication.fromJson(_json["authentication"]);
    }
    if (_json.containsKey("blacklistPatterns")) {
      blacklistPatterns =
          (_json["blacklistPatterns"] as core.List).cast<core.String>();
    }
    if (_json.containsKey("displayName")) {
      displayName = _json["displayName"];
    }
    if (_json.containsKey("exportToSecurityCommandCenter")) {
      exportToSecurityCommandCenter = _json["exportToSecurityCommandCenter"];
    }
    if (_json.containsKey("managedScan")) {
      managedScan = _json["managedScan"];
    }
    if (_json.containsKey("maxQps")) {
      maxQps = _json["maxQps"];
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
    if (_json.containsKey("riskLevel")) {
      riskLevel = _json["riskLevel"];
    }
    if (_json.containsKey("schedule")) {
      schedule = new Schedule.fromJson(_json["schedule"]);
    }
    if (_json.containsKey("startingUrls")) {
      startingUrls = (_json["startingUrls"] as core.List).cast<core.String>();
    }
    if (_json.containsKey("staticIpScan")) {
      staticIpScan = _json["staticIpScan"];
    }
    if (_json.containsKey("userAgent")) {
      userAgent = _json["userAgent"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (authentication != null) {
      _json["authentication"] = (authentication).toJson();
    }
    if (blacklistPatterns != null) {
      _json["blacklistPatterns"] = blacklistPatterns;
    }
    if (displayName != null) {
      _json["displayName"] = displayName;
    }
    if (exportToSecurityCommandCenter != null) {
      _json["exportToSecurityCommandCenter"] = exportToSecurityCommandCenter;
    }
    if (managedScan != null) {
      _json["managedScan"] = managedScan;
    }
    if (maxQps != null) {
      _json["maxQps"] = maxQps;
    }
    if (name != null) {
      _json["name"] = name;
    }
    if (riskLevel != null) {
      _json["riskLevel"] = riskLevel;
    }
    if (schedule != null) {
      _json["schedule"] = (schedule).toJson();
    }
    if (startingUrls != null) {
      _json["startingUrls"] = startingUrls;
    }
    if (staticIpScan != null) {
      _json["staticIpScan"] = staticIpScan;
    }
    if (userAgent != null) {
      _json["userAgent"] = userAgent;
    }
    return _json;
  }
}

/// Defines a custom error message used by CreateScanConfig and UpdateScanConfig
/// APIs when scan configuration validation fails. It is also reported as part
/// of a ScanRunErrorTrace message if scan validation fails due to a scan
/// configuration error.
class ScanConfigError {
  /// Output only. Indicates the reason code for a configuration failure.
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
  core.String code;

  /// Output only. Indicates the full name of the ScanConfig field that triggers
  /// this error, for example "scan_config.max_qps". This field is provided for
  /// troubleshooting purposes only and its actual value can change in the
  /// future.
  core.String fieldName;

  ScanConfigError();

  ScanConfigError.fromJson(core.Map _json) {
    if (_json.containsKey("code")) {
      code = _json["code"];
    }
    if (_json.containsKey("fieldName")) {
      fieldName = _json["fieldName"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (code != null) {
      _json["code"] = code;
    }
    if (fieldName != null) {
      _json["fieldName"] = fieldName;
    }
    return _json;
  }
}

/// A ScanRun is a output-only resource representing an actual run of the scan.
/// Next id: 12
class ScanRun {
  /// Output only. The time at which the ScanRun reached termination state -
  /// that the ScanRun is either finished or stopped by user.
  core.String endTime;

  /// Output only. If result_state is an ERROR, this field provides the primary
  /// reason for scan's termination and more details, if such are available.
  ScanRunErrorTrace errorTrace;

  /// Output only. The execution state of the ScanRun.
  /// Possible string values are:
  /// - "EXECUTION_STATE_UNSPECIFIED" : Represents an invalid state caused by
  /// internal server error. This value should never be returned.
  /// - "QUEUED" : The scan is waiting in the queue.
  /// - "SCANNING" : The scan is in progress.
  /// - "FINISHED" : The scan is either finished or stopped by user.
  core.String executionState;

  /// Output only. Whether the scan run has found any vulnerabilities.
  core.bool hasVulnerabilities;

  /// Output only. The resource name of the ScanRun. The name follows the format
  /// of 'projects/{projectId}/scanConfigs/{scanConfigId}/scanRuns/{scanRunId}'.
  /// The ScanRun IDs are generated by the system.
  core.String name;

  /// Output only. The percentage of total completion ranging from 0 to 100. If
  /// the scan is in queue, the value is 0. If the scan is running, the value
  /// ranges from 0 to 100. If the scan is finished, the value is 100.
  core.int progressPercent;

  /// Output only. The result state of the ScanRun. This field is only available
  /// after the execution state reaches "FINISHED".
  /// Possible string values are:
  /// - "RESULT_STATE_UNSPECIFIED" : Default value. This value is returned when
  /// the ScanRun is not yet finished.
  /// - "SUCCESS" : The scan finished without errors.
  /// - "ERROR" : The scan finished with errors.
  /// - "KILLED" : The scan was terminated by user.
  core.String resultState;

  /// Output only. The time at which the ScanRun started.
  core.String startTime;

  /// Output only. The number of URLs crawled during this ScanRun. If the scan
  /// is in progress, the value represents the number of URLs crawled up to now.
  core.String urlsCrawledCount;

  /// Output only. The number of URLs tested during this ScanRun. If the scan is
  /// in progress, the value represents the number of URLs tested up to now. The
  /// number of URLs tested is usually larger than the number URLS crawled
  /// because typically a crawled URL is tested with multiple test payloads.
  core.String urlsTestedCount;

  /// Output only. A list of warnings, if such are encountered during this scan
  /// run.
  core.List<ScanRunWarningTrace> warningTraces;

  ScanRun();

  ScanRun.fromJson(core.Map _json) {
    if (_json.containsKey("endTime")) {
      endTime = _json["endTime"];
    }
    if (_json.containsKey("errorTrace")) {
      errorTrace = new ScanRunErrorTrace.fromJson(_json["errorTrace"]);
    }
    if (_json.containsKey("executionState")) {
      executionState = _json["executionState"];
    }
    if (_json.containsKey("hasVulnerabilities")) {
      hasVulnerabilities = _json["hasVulnerabilities"];
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
    if (_json.containsKey("progressPercent")) {
      progressPercent = _json["progressPercent"];
    }
    if (_json.containsKey("resultState")) {
      resultState = _json["resultState"];
    }
    if (_json.containsKey("startTime")) {
      startTime = _json["startTime"];
    }
    if (_json.containsKey("urlsCrawledCount")) {
      urlsCrawledCount = _json["urlsCrawledCount"];
    }
    if (_json.containsKey("urlsTestedCount")) {
      urlsTestedCount = _json["urlsTestedCount"];
    }
    if (_json.containsKey("warningTraces")) {
      warningTraces = (_json["warningTraces"] as core.List)
          .map<ScanRunWarningTrace>(
              (value) => new ScanRunWarningTrace.fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (endTime != null) {
      _json["endTime"] = endTime;
    }
    if (errorTrace != null) {
      _json["errorTrace"] = (errorTrace).toJson();
    }
    if (executionState != null) {
      _json["executionState"] = executionState;
    }
    if (hasVulnerabilities != null) {
      _json["hasVulnerabilities"] = hasVulnerabilities;
    }
    if (name != null) {
      _json["name"] = name;
    }
    if (progressPercent != null) {
      _json["progressPercent"] = progressPercent;
    }
    if (resultState != null) {
      _json["resultState"] = resultState;
    }
    if (startTime != null) {
      _json["startTime"] = startTime;
    }
    if (urlsCrawledCount != null) {
      _json["urlsCrawledCount"] = urlsCrawledCount;
    }
    if (urlsTestedCount != null) {
      _json["urlsTestedCount"] = urlsTestedCount;
    }
    if (warningTraces != null) {
      _json["warningTraces"] =
          warningTraces.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

/// Output only. Defines an error trace message for a ScanRun.
class ScanRunErrorTrace {
  /// Output only. Indicates the error reason code.
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
  core.String code;

  /// Output only. If the scan encounters TOO_MANY_HTTP_ERRORS, this field
  /// indicates the most common HTTP error code, if such is available. For
  /// example, if this code is 404, the scan has encountered too many NOT_FOUND
  /// responses.
  core.int mostCommonHttpErrorCode;

  /// Output only. If the scan encounters SCAN_CONFIG_ISSUE error, this field
  /// has the error message encountered during scan configuration validation
  /// that is performed before each scan run.
  ScanConfigError scanConfigError;

  ScanRunErrorTrace();

  ScanRunErrorTrace.fromJson(core.Map _json) {
    if (_json.containsKey("code")) {
      code = _json["code"];
    }
    if (_json.containsKey("mostCommonHttpErrorCode")) {
      mostCommonHttpErrorCode = _json["mostCommonHttpErrorCode"];
    }
    if (_json.containsKey("scanConfigError")) {
      scanConfigError = new ScanConfigError.fromJson(_json["scanConfigError"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (code != null) {
      _json["code"] = code;
    }
    if (mostCommonHttpErrorCode != null) {
      _json["mostCommonHttpErrorCode"] = mostCommonHttpErrorCode;
    }
    if (scanConfigError != null) {
      _json["scanConfigError"] = (scanConfigError).toJson();
    }
    return _json;
  }
}

/// Output only. Defines a warning trace message for ScanRun. Warning traces
/// provide customers with useful information that helps make the scanning
/// process more effective.
class ScanRunWarningTrace {
  /// Output only. Indicates the warning code.
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
  core.String code;

  ScanRunWarningTrace();

  ScanRunWarningTrace.fromJson(core.Map _json) {
    if (_json.containsKey("code")) {
      code = _json["code"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (code != null) {
      _json["code"] = code;
    }
    return _json;
  }
}

/// Scan schedule configuration.
class Schedule {
  /// Required. The duration of time between executions in days.
  core.int intervalDurationDays;

  /// A timestamp indicates when the next run will be scheduled. The value is
  /// refreshed by the server after each run. If unspecified, it will default to
  /// current server time, which means the scan will be scheduled to start
  /// immediately.
  core.String scheduleTime;

  Schedule();

  Schedule.fromJson(core.Map _json) {
    if (_json.containsKey("intervalDurationDays")) {
      intervalDurationDays = _json["intervalDurationDays"];
    }
    if (_json.containsKey("scheduleTime")) {
      scheduleTime = _json["scheduleTime"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (intervalDurationDays != null) {
      _json["intervalDurationDays"] = intervalDurationDays;
    }
    if (scheduleTime != null) {
      _json["scheduleTime"] = scheduleTime;
    }
    return _json;
  }
}

/// Request for the `StartScanRun` method.
class StartScanRunRequest {
  StartScanRunRequest();

  StartScanRunRequest.fromJson(core.Map _json) {}

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    return _json;
  }
}

/// Request for the `StopScanRun` method.
class StopScanRunRequest {
  StopScanRunRequest();

  StopScanRunRequest.fromJson(core.Map _json) {}

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    return _json;
  }
}

/// Information regarding any resource causing the vulnerability such as
/// JavaScript sources, image, audio files, etc.
class ViolatingResource {
  /// The MIME type of this resource.
  core.String contentType;

  /// URL of this violating resource.
  core.String resourceUrl;

  ViolatingResource();

  ViolatingResource.fromJson(core.Map _json) {
    if (_json.containsKey("contentType")) {
      contentType = _json["contentType"];
    }
    if (_json.containsKey("resourceUrl")) {
      resourceUrl = _json["resourceUrl"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (contentType != null) {
      _json["contentType"] = contentType;
    }
    if (resourceUrl != null) {
      _json["resourceUrl"] = resourceUrl;
    }
    return _json;
  }
}

/// Information about vulnerable or missing HTTP Headers.
class VulnerableHeaders {
  /// List of vulnerable headers.
  core.List<Header> headers;

  /// List of missing headers.
  core.List<Header> missingHeaders;

  VulnerableHeaders();

  VulnerableHeaders.fromJson(core.Map _json) {
    if (_json.containsKey("headers")) {
      headers = (_json["headers"] as core.List)
          .map<Header>((value) => new Header.fromJson(value))
          .toList();
    }
    if (_json.containsKey("missingHeaders")) {
      missingHeaders = (_json["missingHeaders"] as core.List)
          .map<Header>((value) => new Header.fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (headers != null) {
      _json["headers"] = headers.map((value) => (value).toJson()).toList();
    }
    if (missingHeaders != null) {
      _json["missingHeaders"] =
          missingHeaders.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

/// Information about vulnerable request parameters.
class VulnerableParameters {
  /// The vulnerable parameter names.
  core.List<core.String> parameterNames;

  VulnerableParameters();

  VulnerableParameters.fromJson(core.Map _json) {
    if (_json.containsKey("parameterNames")) {
      parameterNames =
          (_json["parameterNames"] as core.List).cast<core.String>();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (parameterNames != null) {
      _json["parameterNames"] = parameterNames;
    }
    return _json;
  }
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
  core.String attackVector;

  /// An error message generated by a javascript breakage.
  core.String errorMessage;

  /// Stack traces leading to the point where the XSS occurred.
  core.List<core.String> stackTraces;

  /// The reproduction url for the seeding POST request of a Stored XSS.
  core.String storedXssSeedingUrl;

  Xss();

  Xss.fromJson(core.Map _json) {
    if (_json.containsKey("attackVector")) {
      attackVector = _json["attackVector"];
    }
    if (_json.containsKey("errorMessage")) {
      errorMessage = _json["errorMessage"];
    }
    if (_json.containsKey("stackTraces")) {
      stackTraces = (_json["stackTraces"] as core.List).cast<core.String>();
    }
    if (_json.containsKey("storedXssSeedingUrl")) {
      storedXssSeedingUrl = _json["storedXssSeedingUrl"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (attackVector != null) {
      _json["attackVector"] = attackVector;
    }
    if (errorMessage != null) {
      _json["errorMessage"] = errorMessage;
    }
    if (stackTraces != null) {
      _json["stackTraces"] = stackTraces;
    }
    if (storedXssSeedingUrl != null) {
      _json["storedXssSeedingUrl"] = storedXssSeedingUrl;
    }
    return _json;
  }
}
