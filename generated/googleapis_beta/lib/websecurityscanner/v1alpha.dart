// This is a generated file (see the discoveryapis_generator project).

// ignore_for_file: unnecessary_cast

library googleapis_beta.websecurityscanner.v1alpha;

import 'dart:core' as core;
import 'dart:async' as async;
import 'dart:convert' as convert;

import 'package:_discoveryapis_commons/_discoveryapis_commons.dart' as commons;
import 'package:http/http.dart' as http;

export 'package:_discoveryapis_commons/_discoveryapis_commons.dart'
    show ApiRequestError, DetailedApiRequestError;

const core.String USER_AGENT = 'dart-api-client websecurityscanner/v1alpha';

/// Web Security Scanner API (under development).
class WebsecurityscannerApi {
  /// View and manage your data across Google Cloud Platform services
  static const CloudPlatformScope =
      "https://www.googleapis.com/auth/cloud-platform";

  final commons.ApiRequester _requester;

  ProjectsResourceApi get projects => new ProjectsResourceApi(_requester);

  WebsecurityscannerApi(http.Client client,
      {core.String rootUrl: "https://websecurityscanner.googleapis.com/",
      core.String servicePath: ""})
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
  /// [parent] - Required.
  /// The parent resource name where the scan is created, which should be a
  /// project resource name in the format 'projects/{projectId}'.
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
    var _url = null;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.json.encode((request).toJson());
    }
    if (parent == null) {
      throw new core.ArgumentError("Parameter parent is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1alpha/' +
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
  /// [name] - Required.
  /// The resource name of the ScanConfig to be deleted. The name follows the
  /// format of 'projects/{projectId}/scanConfigs/{scanConfigId}'.
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
    var _url = null;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (name == null) {
      throw new core.ArgumentError("Parameter name is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1alpha/' + commons.Escaper.ecapeVariableReserved('$name');

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
  /// [name] - Required.
  /// The resource name of the ScanConfig to be returned. The name follows the
  /// format of 'projects/{projectId}/scanConfigs/{scanConfigId}'.
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
    var _url = null;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (name == null) {
      throw new core.ArgumentError("Parameter name is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1alpha/' + commons.Escaper.ecapeVariableReserved('$name');

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
  /// [parent] - Required.
  /// The parent resource name, which should be a project resource name in the
  /// format 'projects/{projectId}'.
  /// Value must have pattern "^projects/[^/]+$".
  ///
  /// [pageToken] - A token identifying a page of results to be returned. This
  /// should be a
  /// `next_page_token` value returned from a previous List request.
  /// If unspecified, the first page of results is returned.
  ///
  /// [pageSize] - The maximum number of ScanConfigs to return, can be limited
  /// by server.
  /// If not specified or not positive, the implementation will select a
  /// reasonable value.
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
      {core.String pageToken, core.int pageSize, core.String $fields}) {
    var _url = null;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

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

    _url = 'v1alpha/' +
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
  /// of
  /// 'projects/{projectId}/scanConfigs/{scanConfigId}'. The ScanConfig IDs are
  /// generated by the system.
  /// Value must have pattern "^projects/[^/]+/scanConfigs/[^/]+$".
  ///
  /// [updateMask] - Required.
  /// The update mask applies to the resource. For the `FieldMask` definition,
  /// see
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
    var _url = null;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

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

    _url = 'v1alpha/' + commons.Escaper.ecapeVariableReserved('$name');

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
  /// [name] - Required.
  /// The resource name of the ScanConfig to be used. The name follows the
  /// format of 'projects/{projectId}/scanConfigs/{scanConfigId}'.
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
    var _url = null;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.json.encode((request).toJson());
    }
    if (name == null) {
      throw new core.ArgumentError("Parameter name is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url =
        'v1alpha/' + commons.Escaper.ecapeVariableReserved('$name') + ':start';

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
  /// [name] - Required.
  /// The resource name of the ScanRun to be returned. The name follows the
  /// format of
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
    var _url = null;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (name == null) {
      throw new core.ArgumentError("Parameter name is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1alpha/' + commons.Escaper.ecapeVariableReserved('$name');

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
  /// [parent] - Required.
  /// The parent resource name, which should be a scan resource name in the
  /// format 'projects/{projectId}/scanConfigs/{scanConfigId}'.
  /// Value must have pattern "^projects/[^/]+/scanConfigs/[^/]+$".
  ///
  /// [pageSize] - The maximum number of ScanRuns to return, can be limited by
  /// server.
  /// If not specified or not positive, the implementation will select a
  /// reasonable value.
  ///
  /// [pageToken] - A token identifying a page of results to be returned. This
  /// should be a
  /// `next_page_token` value returned from a previous List request.
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
    var _url = null;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

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

    _url = 'v1alpha/' +
        commons.Escaper.ecapeVariableReserved('$parent') +
        '/scanRuns';

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
  /// [name] - Required.
  /// The resource name of the ScanRun to be stopped. The name follows the
  /// format of
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
    var _url = null;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.json.encode((request).toJson());
    }
    if (name == null) {
      throw new core.ArgumentError("Parameter name is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url =
        'v1alpha/' + commons.Escaper.ecapeVariableReserved('$name') + ':stop';

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
  /// [parent] - Required.
  /// The parent resource name, which should be a scan run resource name in the
  /// format
  /// 'projects/{projectId}/scanConfigs/{scanConfigId}/scanRuns/{scanRunId}'.
  /// Value must have pattern
  /// "^projects/[^/]+/scanConfigs/[^/]+/scanRuns/[^/]+$".
  ///
  /// [pageSize] - The maximum number of CrawledUrls to return, can be limited
  /// by server.
  /// If not specified or not positive, the implementation will select a
  /// reasonable value.
  ///
  /// [pageToken] - A token identifying a page of results to be returned. This
  /// should be a
  /// `next_page_token` value returned from a previous List request.
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
  async.Future<ListCrawledUrlsResponse> list(core.String parent,
      {core.int pageSize, core.String pageToken, core.String $fields}) {
    var _url = null;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

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

    _url = 'v1alpha/' +
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
  /// [parent] - Required.
  /// The parent resource name, which should be a scan run resource name in the
  /// format
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
    var _url = null;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (parent == null) {
      throw new core.ArgumentError("Parameter parent is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1alpha/' +
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
  /// [name] - Required.
  /// The resource name of the Finding to be returned. The name follows the
  /// format of
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
    var _url = null;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (name == null) {
      throw new core.ArgumentError("Parameter name is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1alpha/' + commons.Escaper.ecapeVariableReserved('$name');

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
  /// [parent] - Required.
  /// The parent resource name, which should be a scan run resource name in the
  /// format
  /// 'projects/{projectId}/scanConfigs/{scanConfigId}/scanRuns/{scanRunId}'.
  /// Value must have pattern
  /// "^projects/[^/]+/scanConfigs/[^/]+/scanRuns/[^/]+$".
  ///
  /// [pageSize] - The maximum number of Findings to return, can be limited by
  /// server.
  /// If not specified or not positive, the implementation will select a
  /// reasonable value.
  ///
  /// [filter] - The filter expression. The expression must be in the format:
  /// <field>
  /// <operator> <value>.
  /// Supported field: 'finding_type'.
  /// Supported operator: '='.
  ///
  /// [pageToken] - A token identifying a page of results to be returned. This
  /// should be a
  /// `next_page_token` value returned from a previous List request.
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
    var _url = null;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

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

    _url = 'v1alpha/' +
        commons.Escaper.ecapeVariableReserved('$parent') +
        '/findings';

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

  Authentication();

  Authentication.fromJson(core.Map _json) {
    if (_json.containsKey("customAccount")) {
      customAccount = new CustomAccount.fromJson(_json["customAccount"]);
    }
    if (_json.containsKey("googleAccount")) {
      googleAccount = new GoogleAccount.fromJson(_json["googleAccount"]);
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
    return _json;
  }
}

/// A CrawledUrl resource represents a URL that was crawled during a ScanRun.
/// Web
/// Security Scanner Service crawls the web applications, following all links
/// within the scope of sites, to find the URLs to test against.
class CrawledUrl {
  /// Output only.
  /// The body of the request that was used to visit the URL.
  core.String body;

  /// Output only.
  /// The http method of the request that was used to visit the URL, in
  /// uppercase.
  core.String httpMethod;

  /// Output only.
  /// The URL that was crawled.
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
  /// Required.
  /// The login form URL of the website.
  core.String loginUrl;

  /// Input only.
  /// Required.
  /// The password of the custom account. The credential is stored encrypted
  /// and not returned in any response nor included in audit logs.
  core.String password;

  /// Required.
  /// The user name of the custom account.
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

/// A Finding resource represents a vulnerability instance identified during a
/// ScanRun.
class Finding {
  /// Output only.
  /// The body of the request that triggered the vulnerability.
  core.String body;

  /// Output only.
  /// The description of the vulnerability.
  core.String description;

  /// Output only.
  /// The URL where the browser lands when the vulnerability is detected.
  core.String finalUrl;

  /// Output only.
  /// The type of the Finding.
  /// Possible string values are:
  /// - "FINDING_TYPE_UNSPECIFIED" : The invalid finding type.
  /// - "MIXED_CONTENT" : A page that was served over HTTPS also resources over
  /// HTTP. A
  /// man-in-the-middle attacker could tamper with the HTTP resource and gain
  /// full access to the website that loads the resource or to monitor the
  /// actions taken by the user.
  /// - "OUTDATED_LIBRARY" : The version of an included library is known to
  /// contain a security issue.
  /// The scanner checks the version of library in use against a known list of
  /// vulnerable libraries. False positives are possible if the version
  /// detection fails or if the library has been manually patched.
  /// - "ROSETTA_FLASH" : This type of vulnerability occurs when the value of a
  /// request parameter
  /// is reflected at the beginning of the response, for example, in requests
  /// using JSONP. Under certain circumstances, an attacker may be able to
  /// supply an alphanumeric-only Flash file in the vulnerable parameter
  /// causing the browser to execute the Flash file as if it originated on the
  /// vulnerable server.
  /// - "XSS_CALLBACK" : A cross-site scripting (XSS) bug is found via
  /// JavaScript callback. For
  /// detailed explanations on XSS, see
  /// https://www.google.com/about/appsecurity/learning/xss/.
  /// - "XSS_ERROR" : A potential cross-site scripting (XSS) bug due to
  /// JavaScript breakage.
  /// In some circumstances, the application under test might modify the test
  /// string before it is parsed by the browser. When the browser attempts to
  /// runs this modified test string, it will likely break and throw a
  /// JavaScript execution error, thus an injection issue is occurring.
  /// However, it may not be exploitable. Manual verification is needed to see
  /// if the test string modifications can be evaded and confirm that the issue
  /// is in fact an XSS vulnerability. For detailed explanations on XSS, see
  /// https://www.google.com/about/appsecurity/learning/xss/.
  /// - "CLEAR_TEXT_PASSWORD" : An application appears to be transmitting a
  /// password field in clear text.
  /// An attacker can eavesdrop network traffic and sniff the password field.
  /// - "INVALID_CONTENT_TYPE" : An application returns sensitive content with
  /// an invalid content type,
  /// or without an 'X-Content-Type-Options: nosniff' header.
  /// - "XSS_ANGULAR_CALLBACK" : A cross-site scripting (XSS) vulnerability in
  /// AngularJS module that
  /// occurs when a user-provided string is interpolated by Angular.
  core.String findingType;

  /// Output only.
  /// If the vulnerability was originated from nested IFrame, the immediate
  /// parent IFrame is reported.
  core.String frameUrl;

  /// Output only.
  /// The URL produced by the server-side fuzzer and used in the request that
  /// triggered the vulnerability.
  core.String fuzzedUrl;

  /// Output only.
  /// The http method of the request that triggered the vulnerability, in
  /// uppercase.
  core.String httpMethod;

  /// Output only.
  /// The resource name of the Finding. The name follows the format of
  /// 'projects/{projectId}/scanConfigs/{scanConfigId}/scanruns/{scanRunId}/findings/{findingId}'.
  /// The finding IDs are generated by the system.
  core.String name;

  /// Output only.
  /// An addon containing information about outdated libraries.
  OutdatedLibrary outdatedLibrary;

  /// Output only.
  /// The URL containing human-readable payload that user can leverage to
  /// reproduce the vulnerability.
  core.String reproductionUrl;

  /// Output only.
  /// The tracking ID uniquely identifies a vulnerability instance across
  /// multiple ScanRuns.
  core.String trackingId;

  /// Output only.
  /// An addon containing detailed information regarding any resource causing
  /// the
  /// vulnerability such as JavaScript sources, image, audio files, etc.
  ViolatingResource violatingResource;

  /// Output only.
  /// An addon containing information about vulnerable or missing HTTP headers.
  VulnerableHeaders vulnerableHeaders;

  /// Output only.
  /// An addon containing information about request parameters which were found
  /// to be vulnerable.
  VulnerableParameters vulnerableParameters;

  /// Output only.
  /// An addon containing information reported for an XSS, if any.
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
/// FindingType
/// of Findings under a given ScanRun.
class FindingTypeStats {
  /// Output only.
  /// The count of findings belonging to this finding type.
  core.int findingCount;

  /// Output only.
  /// The finding type associated with the stats.
  /// Possible string values are:
  /// - "FINDING_TYPE_UNSPECIFIED" : The invalid finding type.
  /// - "MIXED_CONTENT" : A page that was served over HTTPS also resources over
  /// HTTP. A
  /// man-in-the-middle attacker could tamper with the HTTP resource and gain
  /// full access to the website that loads the resource or to monitor the
  /// actions taken by the user.
  /// - "OUTDATED_LIBRARY" : The version of an included library is known to
  /// contain a security issue.
  /// The scanner checks the version of library in use against a known list of
  /// vulnerable libraries. False positives are possible if the version
  /// detection fails or if the library has been manually patched.
  /// - "ROSETTA_FLASH" : This type of vulnerability occurs when the value of a
  /// request parameter
  /// is reflected at the beginning of the response, for example, in requests
  /// using JSONP. Under certain circumstances, an attacker may be able to
  /// supply an alphanumeric-only Flash file in the vulnerable parameter
  /// causing the browser to execute the Flash file as if it originated on the
  /// vulnerable server.
  /// - "XSS_CALLBACK" : A cross-site scripting (XSS) bug is found via
  /// JavaScript callback. For
  /// detailed explanations on XSS, see
  /// https://www.google.com/about/appsecurity/learning/xss/.
  /// - "XSS_ERROR" : A potential cross-site scripting (XSS) bug due to
  /// JavaScript breakage.
  /// In some circumstances, the application under test might modify the test
  /// string before it is parsed by the browser. When the browser attempts to
  /// runs this modified test string, it will likely break and throw a
  /// JavaScript execution error, thus an injection issue is occurring.
  /// However, it may not be exploitable. Manual verification is needed to see
  /// if the test string modifications can be evaded and confirm that the issue
  /// is in fact an XSS vulnerability. For detailed explanations on XSS, see
  /// https://www.google.com/about/appsecurity/learning/xss/.
  /// - "CLEAR_TEXT_PASSWORD" : An application appears to be transmitting a
  /// password field in clear text.
  /// An attacker can eavesdrop network traffic and sniff the password field.
  /// - "INVALID_CONTENT_TYPE" : An application returns sensitive content with
  /// an invalid content type,
  /// or without an 'X-Content-Type-Options: nosniff' header.
  /// - "XSS_ANGULAR_CALLBACK" : A cross-site scripting (XSS) vulnerability in
  /// AngularJS module that
  /// occurs when a user-provided string is interpolated by Angular.
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

/// Describes authentication configuration that uses a Google account.
class GoogleAccount {
  /// Input only.
  /// Required.
  /// The password of the Google account. The credential is stored encrypted
  /// and not returned in any response nor included in audit logs.
  core.String password;

  /// Required.
  /// The user name of the Google account.
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

/// Response for the `ListCrawledUrls` method.
class ListCrawledUrlsResponse {
  /// The list of CrawledUrls returned.
  core.List<CrawledUrl> crawledUrls;

  /// Token to retrieve the next page of results, or empty if there are no
  /// more results in the list.
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

  /// Token to retrieve the next page of results, or empty if there are no
  /// more results in the list.
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
  /// Token to retrieve the next page of results, or empty if there are no
  /// more results in the list.
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
  /// Token to retrieve the next page of results, or empty if there are no
  /// more results in the list.
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

  /// The blacklist URL patterns as described in
  /// https://cloud.google.com/security-scanner/docs/excluded-urls
  core.List<core.String> blacklistPatterns;

  /// Required.
  /// The user provided display name of the ScanConfig.
  core.String displayName;

  /// The maximum QPS during scanning. A valid value ranges from 5 to 20
  /// inclusively. If the field is unspecified or its value is set 0, server
  /// will
  /// default to 15. Other values outside of [5, 20] range will be rejected with
  /// INVALID_ARGUMENT error.
  core.int maxQps;

  /// The resource name of the ScanConfig. The name follows the format of
  /// 'projects/{projectId}/scanConfigs/{scanConfigId}'. The ScanConfig IDs are
  /// generated by the system.
  core.String name;

  /// The schedule of the ScanConfig.
  Schedule schedule;

  /// Required.
  /// The starting URLs from which the scanner finds site pages.
  core.List<core.String> startingUrls;

  /// Set of Cloud Platforms targeted by the scan. If empty, APP_ENGINE will be
  /// used as a default.
  core.List<core.String> targetPlatforms;

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
    if (_json.containsKey("maxQps")) {
      maxQps = _json["maxQps"];
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
    if (_json.containsKey("schedule")) {
      schedule = new Schedule.fromJson(_json["schedule"]);
    }
    if (_json.containsKey("startingUrls")) {
      startingUrls = (_json["startingUrls"] as core.List).cast<core.String>();
    }
    if (_json.containsKey("targetPlatforms")) {
      targetPlatforms =
          (_json["targetPlatforms"] as core.List).cast<core.String>();
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
    if (maxQps != null) {
      _json["maxQps"] = maxQps;
    }
    if (name != null) {
      _json["name"] = name;
    }
    if (schedule != null) {
      _json["schedule"] = (schedule).toJson();
    }
    if (startingUrls != null) {
      _json["startingUrls"] = startingUrls;
    }
    if (targetPlatforms != null) {
      _json["targetPlatforms"] = targetPlatforms;
    }
    if (userAgent != null) {
      _json["userAgent"] = userAgent;
    }
    return _json;
  }
}

/// A ScanRun is a output-only resource representing an actual run of the scan.
class ScanRun {
  /// Output only.
  /// The time at which the ScanRun reached termination state - that the ScanRun
  /// is either finished or stopped by user.
  core.String endTime;

  /// Output only.
  /// The execution state of the ScanRun.
  /// Possible string values are:
  /// - "EXECUTION_STATE_UNSPECIFIED" : Represents an invalid state caused by
  /// internal server error. This value
  /// should never be returned.
  /// - "QUEUED" : The scan is waiting in the queue.
  /// - "SCANNING" : The scan is in progress.
  /// - "FINISHED" : The scan is either finished or stopped by user.
  core.String executionState;

  /// Output only.
  /// Whether the scan run has found any vulnerabilities.
  core.bool hasVulnerabilities;

  /// Output only.
  /// The resource name of the ScanRun. The name follows the format of
  /// 'projects/{projectId}/scanConfigs/{scanConfigId}/scanRuns/{scanRunId}'.
  /// The ScanRun IDs are generated by the system.
  core.String name;

  /// Output only.
  /// The percentage of total completion ranging from 0 to 100.
  /// If the scan is in queue, the value is 0.
  /// If the scan is running, the value ranges from 0 to 100.
  /// If the scan is finished, the value is 100.
  core.int progressPercent;

  /// Output only.
  /// The result state of the ScanRun. This field is only available after the
  /// execution state reaches "FINISHED".
  /// Possible string values are:
  /// - "RESULT_STATE_UNSPECIFIED" : Default value. This value is returned when
  /// the ScanRun is not yet
  /// finished.
  /// - "SUCCESS" : The scan finished without errors.
  /// - "ERROR" : The scan finished with errors.
  /// - "KILLED" : The scan was terminated by user.
  core.String resultState;

  /// Output only.
  /// The time at which the ScanRun started.
  core.String startTime;

  /// Output only.
  /// The number of URLs crawled during this ScanRun. If the scan is in
  /// progress,
  /// the value represents the number of URLs crawled up to now.
  core.String urlsCrawledCount;

  /// Output only.
  /// The number of URLs tested during this ScanRun. If the scan is in progress,
  /// the value represents the number of URLs tested up to now. The number of
  /// URLs tested is usually larger than the number URLS crawled because
  /// typically a crawled URL is tested with multiple test payloads.
  core.String urlsTestedCount;

  ScanRun();

  ScanRun.fromJson(core.Map _json) {
    if (_json.containsKey("endTime")) {
      endTime = _json["endTime"];
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
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (endTime != null) {
      _json["endTime"] = endTime;
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
    return _json;
  }
}

/// Scan schedule configuration.
class Schedule {
  /// Required.
  /// The duration of time between executions in days.
  core.int intervalDurationDays;

  /// A timestamp indicates when the next run will be scheduled. The value is
  /// refreshed by the server after each run. If unspecified, it will default
  /// to current server time, which means the scan will be scheduled to start
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

/// Information regarding any resource causing the vulnerability such
/// as JavaScript sources, image, audio files, etc.
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
  /// An error message generated by a javascript breakage.
  core.String errorMessage;

  /// Stack traces leading to the point where the XSS occurred.
  core.List<core.String> stackTraces;

  Xss();

  Xss.fromJson(core.Map _json) {
    if (_json.containsKey("errorMessage")) {
      errorMessage = _json["errorMessage"];
    }
    if (_json.containsKey("stackTraces")) {
      stackTraces = (_json["stackTraces"] as core.List).cast<core.String>();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (errorMessage != null) {
      _json["errorMessage"] = errorMessage;
    }
    if (stackTraces != null) {
      _json["stackTraces"] = stackTraces;
    }
    return _json;
  }
}
