// This is a generated file (see the discoveryapis_generator project).

library googleapis_beta.dlp.v2beta1;

import 'dart:core' as core;
import 'dart:async' as async;
import 'dart:convert' as convert;

import 'package:_discoveryapis_commons/_discoveryapis_commons.dart' as commons;
import 'package:http/http.dart' as http;

export 'package:_discoveryapis_commons/_discoveryapis_commons.dart'
    show ApiRequestError, DetailedApiRequestError;

const core.String USER_AGENT = 'dart-api-client dlp/v2beta1';

/// The Google Data Loss Prevention API provides methods for detection of
/// privacy-sensitive fragments in text, images, and Google Cloud Platform
/// storage repositories.
class DlpApi {
  /// View and manage your data across Google Cloud Platform services
  static const CloudPlatformScope =
      "https://www.googleapis.com/auth/cloud-platform";

  final commons.ApiRequester _requester;

  ContentResourceApi get content => new ContentResourceApi(_requester);
  DataSourceResourceApi get dataSource => new DataSourceResourceApi(_requester);
  InspectResourceApi get inspect => new InspectResourceApi(_requester);
  RiskAnalysisResourceApi get riskAnalysis =>
      new RiskAnalysisResourceApi(_requester);
  RootCategoriesResourceApi get rootCategories =>
      new RootCategoriesResourceApi(_requester);

  DlpApi(http.Client client,
      {core.String rootUrl: "https://dlp.googleapis.com/",
      core.String servicePath: ""})
      : _requester =
            new commons.ApiRequester(client, rootUrl, servicePath, USER_AGENT);
}

class ContentResourceApi {
  final commons.ApiRequester _requester;

  ContentResourceApi(commons.ApiRequester client) : _requester = client;

  /// De-identifies potentially sensitive info from a list of strings.
  /// This method has limits on input size and output size.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GooglePrivacyDlpV2beta1DeidentifyContentResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GooglePrivacyDlpV2beta1DeidentifyContentResponse> deidentify(
      GooglePrivacyDlpV2beta1DeidentifyContentRequest request,
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
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v2beta1/content:deidentify';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) =>
        new GooglePrivacyDlpV2beta1DeidentifyContentResponse.fromJson(data));
  }

  /// Finds potentially sensitive info in a list of strings.
  /// This method has limits on input size, processing time, and output size.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GooglePrivacyDlpV2beta1InspectContentResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GooglePrivacyDlpV2beta1InspectContentResponse> inspect(
      GooglePrivacyDlpV2beta1InspectContentRequest request,
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
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v2beta1/content:inspect';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) =>
        new GooglePrivacyDlpV2beta1InspectContentResponse.fromJson(data));
  }

  /// Redacts potentially sensitive info from a list of strings.
  /// This method has limits on input size, processing time, and output size.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GooglePrivacyDlpV2beta1RedactContentResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GooglePrivacyDlpV2beta1RedactContentResponse> redact(
      GooglePrivacyDlpV2beta1RedactContentRequest request,
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
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v2beta1/content:redact';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) =>
        new GooglePrivacyDlpV2beta1RedactContentResponse.fromJson(data));
  }
}

class DataSourceResourceApi {
  final commons.ApiRequester _requester;

  DataSourceResourceApi(commons.ApiRequester client) : _requester = client;

  /// Schedules a job to compute risk analysis metrics over content in a Google
  /// Cloud Platform repository.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
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
  async.Future<GoogleLongrunningOperation> analyze(
      GooglePrivacyDlpV2beta1AnalyzeDataSourceRiskRequest request,
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
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v2beta1/dataSource:analyze';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response
        .then((data) => new GoogleLongrunningOperation.fromJson(data));
  }
}

class InspectResourceApi {
  final commons.ApiRequester _requester;

  InspectOperationsResourceApi get operations =>
      new InspectOperationsResourceApi(_requester);
  InspectResultsResourceApi get results =>
      new InspectResultsResourceApi(_requester);

  InspectResourceApi(commons.ApiRequester client) : _requester = client;
}

class InspectOperationsResourceApi {
  final commons.ApiRequester _requester;

  InspectOperationsResourceApi(commons.ApiRequester client)
      : _requester = client;

  /// Cancels an operation. Use the `inspect.operations.get` to check whether
  /// the cancellation succeeded or the operation completed despite
  /// cancellation.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - The name of the operation resource to be cancelled.
  /// Value must have pattern "^inspect/operations/[^/]+$".
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
      GoogleLongrunningCancelOperationRequest request, core.String name,
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
        'v2beta1/' + commons.Escaper.ecapeVariableReserved('$name') + ':cancel';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new GoogleProtobufEmpty.fromJson(data));
  }

  /// Schedules a job scanning content in a Google Cloud Platform data
  /// repository.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
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
  async.Future<GoogleLongrunningOperation> create(
      GooglePrivacyDlpV2beta1CreateInspectOperationRequest request,
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
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v2beta1/inspect/operations';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response
        .then((data) => new GoogleLongrunningOperation.fromJson(data));
  }

  /// This method is not supported and the server returns `UNIMPLEMENTED`.
  ///
  /// Request parameters:
  ///
  /// [name] - The name of the operation resource to be deleted.
  /// Value must have pattern "^inspect/operations/[^/]+$".
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
  async.Future<GoogleProtobufEmpty> delete(core.String name,
      {core.String $fields}) {
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

    _url = 'v2beta1/' + commons.Escaper.ecapeVariableReserved('$name');

    var _response = _requester.request(_url, "DELETE",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new GoogleProtobufEmpty.fromJson(data));
  }

  /// Gets the latest state of a long-running operation.  Clients can use this
  /// method to poll the operation result at intervals as recommended by the API
  /// service.
  ///
  /// Request parameters:
  ///
  /// [name] - The name of the operation resource.
  /// Value must have pattern "^inspect/operations/[^/]+$".
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
  async.Future<GoogleLongrunningOperation> get(core.String name,
      {core.String $fields}) {
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

    _url = 'v2beta1/' + commons.Escaper.ecapeVariableReserved('$name');

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response
        .then((data) => new GoogleLongrunningOperation.fromJson(data));
  }

  /// Fetches the list of long running operations.
  ///
  /// Request parameters:
  ///
  /// [name] - The name of the operation's parent resource.
  /// Value must have pattern "^inspect/operations$".
  ///
  /// [pageSize] - The list page size. The maximum allowed value is 256 and the
  /// default is 100.
  ///
  /// [filter] - Filters by `done`. That is, `done=true` or `done=false`.
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
  async.Future<GoogleLongrunningListOperationsResponse> list(core.String name,
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

    if (name == null) {
      throw new core.ArgumentError("Parameter name is required.");
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

    _url = 'v2beta1/' + commons.Escaper.ecapeVariableReserved('$name');

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then(
        (data) => new GoogleLongrunningListOperationsResponse.fromJson(data));
  }
}

class InspectResultsResourceApi {
  final commons.ApiRequester _requester;

  InspectResultsFindingsResourceApi get findings =>
      new InspectResultsFindingsResourceApi(_requester);

  InspectResultsResourceApi(commons.ApiRequester client) : _requester = client;
}

class InspectResultsFindingsResourceApi {
  final commons.ApiRequester _requester;

  InspectResultsFindingsResourceApi(commons.ApiRequester client)
      : _requester = client;

  /// Returns list of results for given inspect operation result set id.
  ///
  /// Request parameters:
  ///
  /// [name] - Identifier of the results set returned as metadata of
  /// the longrunning operation created by a call to InspectDataSource.
  /// Should be in the format of `inspect/results/{id}`.
  /// Value must have pattern "^inspect/results/[^/]+$".
  ///
  /// [filter] - Restricts findings to items that match. Supports info_type and
  /// likelihood.
  ///
  /// Examples:
  ///
  /// - info_type=EMAIL_ADDRESS
  /// - info_type=PHONE_NUMBER,EMAIL_ADDRESS
  /// - likelihood=VERY_LIKELY
  /// - likelihood=VERY_LIKELY,LIKELY
  /// - info_type=EMAIL_ADDRESS,likelihood=VERY_LIKELY,LIKELY
  ///
  /// [pageToken] - The value returned by the last
  /// `ListInspectFindingsResponse`; indicates
  /// that this is a continuation of a prior `ListInspectFindings` call, and
  /// that
  /// the system should return the next page of data.
  ///
  /// [pageSize] - Maximum number of results to return.
  /// If 0, the implementation selects a reasonable value.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GooglePrivacyDlpV2beta1ListInspectFindingsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GooglePrivacyDlpV2beta1ListInspectFindingsResponse> list(
      core.String name,
      {core.String filter,
      core.String pageToken,
      core.int pageSize,
      core.String $fields}) {
    var _url = null;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (name == null) {
      throw new core.ArgumentError("Parameter name is required.");
    }
    if (filter != null) {
      _queryParams["filter"] = [filter];
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

    _url = 'v2beta1/' +
        commons.Escaper.ecapeVariableReserved('$name') +
        '/findings';

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) =>
        new GooglePrivacyDlpV2beta1ListInspectFindingsResponse.fromJson(data));
  }
}

class RiskAnalysisResourceApi {
  final commons.ApiRequester _requester;

  RiskAnalysisOperationsResourceApi get operations =>
      new RiskAnalysisOperationsResourceApi(_requester);

  RiskAnalysisResourceApi(commons.ApiRequester client) : _requester = client;
}

class RiskAnalysisOperationsResourceApi {
  final commons.ApiRequester _requester;

  RiskAnalysisOperationsResourceApi(commons.ApiRequester client)
      : _requester = client;

  /// Cancels an operation. Use the `inspect.operations.get` to check whether
  /// the cancellation succeeded or the operation completed despite
  /// cancellation.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - The name of the operation resource to be cancelled.
  /// Value must have pattern "^riskAnalysis/operations/[^/]+$".
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
      GoogleLongrunningCancelOperationRequest request, core.String name,
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
        'v2beta1/' + commons.Escaper.ecapeVariableReserved('$name') + ':cancel';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new GoogleProtobufEmpty.fromJson(data));
  }

  /// This method is not supported and the server returns `UNIMPLEMENTED`.
  ///
  /// Request parameters:
  ///
  /// [name] - The name of the operation resource to be deleted.
  /// Value must have pattern "^riskAnalysis/operations/[^/]+$".
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
  async.Future<GoogleProtobufEmpty> delete(core.String name,
      {core.String $fields}) {
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

    _url = 'v2beta1/' + commons.Escaper.ecapeVariableReserved('$name');

    var _response = _requester.request(_url, "DELETE",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new GoogleProtobufEmpty.fromJson(data));
  }

  /// Gets the latest state of a long-running operation.  Clients can use this
  /// method to poll the operation result at intervals as recommended by the API
  /// service.
  ///
  /// Request parameters:
  ///
  /// [name] - The name of the operation resource.
  /// Value must have pattern "^riskAnalysis/operations/[^/]+$".
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
  async.Future<GoogleLongrunningOperation> get(core.String name,
      {core.String $fields}) {
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

    _url = 'v2beta1/' + commons.Escaper.ecapeVariableReserved('$name');

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response
        .then((data) => new GoogleLongrunningOperation.fromJson(data));
  }

  /// Fetches the list of long running operations.
  ///
  /// Request parameters:
  ///
  /// [name] - The name of the operation's parent resource.
  /// Value must have pattern "^riskAnalysis/operations$".
  ///
  /// [pageToken] - The standard list page token.
  ///
  /// [pageSize] - The list page size. The maximum allowed value is 256 and the
  /// default is 100.
  ///
  /// [filter] - Filters by `done`. That is, `done=true` or `done=false`.
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
  async.Future<GoogleLongrunningListOperationsResponse> list(core.String name,
      {core.String pageToken,
      core.int pageSize,
      core.String filter,
      core.String $fields}) {
    var _url = null;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (name == null) {
      throw new core.ArgumentError("Parameter name is required.");
    }
    if (pageToken != null) {
      _queryParams["pageToken"] = [pageToken];
    }
    if (pageSize != null) {
      _queryParams["pageSize"] = ["${pageSize}"];
    }
    if (filter != null) {
      _queryParams["filter"] = [filter];
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v2beta1/' + commons.Escaper.ecapeVariableReserved('$name');

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then(
        (data) => new GoogleLongrunningListOperationsResponse.fromJson(data));
  }
}

class RootCategoriesResourceApi {
  final commons.ApiRequester _requester;

  RootCategoriesInfoTypesResourceApi get infoTypes =>
      new RootCategoriesInfoTypesResourceApi(_requester);

  RootCategoriesResourceApi(commons.ApiRequester client) : _requester = client;

  /// Returns the list of root categories of sensitive information.
  ///
  /// Request parameters:
  ///
  /// [languageCode] - Optional language code for localized friendly category
  /// names.
  /// If omitted or if localized strings are not available,
  /// en-US strings will be returned.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GooglePrivacyDlpV2beta1ListRootCategoriesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GooglePrivacyDlpV2beta1ListRootCategoriesResponse> list(
      {core.String languageCode, core.String $fields}) {
    var _url = null;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (languageCode != null) {
      _queryParams["languageCode"] = [languageCode];
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v2beta1/rootCategories';

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) =>
        new GooglePrivacyDlpV2beta1ListRootCategoriesResponse.fromJson(data));
  }
}

class RootCategoriesInfoTypesResourceApi {
  final commons.ApiRequester _requester;

  RootCategoriesInfoTypesResourceApi(commons.ApiRequester client)
      : _requester = client;

  /// Returns sensitive information types for given category.
  ///
  /// Request parameters:
  ///
  /// [category] - Category name as returned by ListRootCategories.
  /// Value must have pattern "^[^/]+$".
  ///
  /// [languageCode] - Optional BCP-47 language code for localized info type
  /// friendly
  /// names. If omitted, or if localized strings are not available,
  /// en-US strings will be returned.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GooglePrivacyDlpV2beta1ListInfoTypesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GooglePrivacyDlpV2beta1ListInfoTypesResponse> list(
      core.String category,
      {core.String languageCode,
      core.String $fields}) {
    var _url = null;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (category == null) {
      throw new core.ArgumentError("Parameter category is required.");
    }
    if (languageCode != null) {
      _queryParams["languageCode"] = [languageCode];
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v2beta1/rootCategories/' +
        commons.Escaper.ecapeVariableReserved('$category') +
        '/infoTypes';

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) =>
        new GooglePrivacyDlpV2beta1ListInfoTypesResponse.fromJson(data));
  }
}

/// The request message for Operations.CancelOperation.
class GoogleLongrunningCancelOperationRequest {
  GoogleLongrunningCancelOperationRequest();

  GoogleLongrunningCancelOperationRequest.fromJson(core.Map _json) {}

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    return _json;
  }
}

/// The response message for Operations.ListOperations.
class GoogleLongrunningListOperationsResponse {
  /// The standard List next-page token.
  core.String nextPageToken;

  /// A list of operations that matches the specified filter in the request.
  core.List<GoogleLongrunningOperation> operations;

  GoogleLongrunningListOperationsResponse();

  GoogleLongrunningListOperationsResponse.fromJson(core.Map _json) {
    if (_json.containsKey("nextPageToken")) {
      nextPageToken = _json["nextPageToken"];
    }
    if (_json.containsKey("operations")) {
      operations = (_json["operations"] as core.List)
          .map<GoogleLongrunningOperation>(
              (value) => new GoogleLongrunningOperation.fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (nextPageToken != null) {
      _json["nextPageToken"] = nextPageToken;
    }
    if (operations != null) {
      _json["operations"] =
          operations.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

/// This resource represents a long-running operation that is the result of a
/// network API call.
class GoogleLongrunningOperation {
  /// If the value is `false`, it means the operation is still in progress.
  /// If `true`, the operation is completed, and either `error` or `response` is
  /// available.
  core.bool done;

  /// The error result of the operation in case of failure or cancellation.
  GoogleRpcStatus error;

  /// This field will contain an InspectOperationMetadata object for
  /// `inspect.operations.create` or a RiskAnalysisOperationMetadata object for
  /// `dataSource.analyze`.  This will always be returned with the Operation.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object> metadata;

  /// The server-assigned name. The `name` should have the format of
  /// `inspect/operations/<identifier>`.
  core.String name;

  /// This field will contain an InspectOperationResult object for
  /// `inspect.operations.create` or a RiskAnalysisOperationResult object for
  /// `dataSource.analyze`.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object> response;

  GoogleLongrunningOperation();

  GoogleLongrunningOperation.fromJson(core.Map _json) {
    if (_json.containsKey("done")) {
      done = _json["done"];
    }
    if (_json.containsKey("error")) {
      error = new GoogleRpcStatus.fromJson(_json["error"]);
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

/// Request for creating a risk analysis operation.
class GooglePrivacyDlpV2beta1AnalyzeDataSourceRiskRequest {
  /// Privacy metric to compute.
  GooglePrivacyDlpV2beta1PrivacyMetric privacyMetric;

  /// Input dataset to compute metrics over.
  GooglePrivacyDlpV2beta1BigQueryTable sourceTable;

  GooglePrivacyDlpV2beta1AnalyzeDataSourceRiskRequest();

  GooglePrivacyDlpV2beta1AnalyzeDataSourceRiskRequest.fromJson(core.Map _json) {
    if (_json.containsKey("privacyMetric")) {
      privacyMetric = new GooglePrivacyDlpV2beta1PrivacyMetric.fromJson(
          _json["privacyMetric"]);
    }
    if (_json.containsKey("sourceTable")) {
      sourceTable = new GooglePrivacyDlpV2beta1BigQueryTable.fromJson(
          _json["sourceTable"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (privacyMetric != null) {
      _json["privacyMetric"] = (privacyMetric).toJson();
    }
    if (sourceTable != null) {
      _json["sourceTable"] = (sourceTable).toJson();
    }
    return _json;
  }
}

/// An auxiliary table contains statistical information on the relative
/// frequency of different quasi-identifiers values. It has one or several
/// quasi-identifiers columns, and one column that indicates the relative
/// frequency of each quasi-identifier tuple.
/// If a tuple is present in the data but not in the auxiliary table, the
/// corresponding relative frequency is assumed to be zero (and thus, the
/// tuple is highly reidentifiable).
class GooglePrivacyDlpV2beta1AuxiliaryTable {
  /// Quasi-identifier columns. [required]
  core.List<GooglePrivacyDlpV2beta1QuasiIdField> quasiIds;

  /// The relative frequency column must contain a floating-point number
  /// between 0 and 1 (inclusive). Null values are assumed to be zero.
  /// [required]
  GooglePrivacyDlpV2beta1FieldId relativeFrequency;

  /// Auxiliary table location. [required]
  GooglePrivacyDlpV2beta1BigQueryTable table;

  GooglePrivacyDlpV2beta1AuxiliaryTable();

  GooglePrivacyDlpV2beta1AuxiliaryTable.fromJson(core.Map _json) {
    if (_json.containsKey("quasiIds")) {
      quasiIds = (_json["quasiIds"] as core.List)
          .map<GooglePrivacyDlpV2beta1QuasiIdField>((value) =>
              new GooglePrivacyDlpV2beta1QuasiIdField.fromJson(value))
          .toList();
    }
    if (_json.containsKey("relativeFrequency")) {
      relativeFrequency = new GooglePrivacyDlpV2beta1FieldId.fromJson(
          _json["relativeFrequency"]);
    }
    if (_json.containsKey("table")) {
      table = new GooglePrivacyDlpV2beta1BigQueryTable.fromJson(_json["table"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (quasiIds != null) {
      _json["quasiIds"] = quasiIds.map((value) => (value).toJson()).toList();
    }
    if (relativeFrequency != null) {
      _json["relativeFrequency"] = (relativeFrequency).toJson();
    }
    if (table != null) {
      _json["table"] = (table).toJson();
    }
    return _json;
  }
}

/// Options defining BigQuery table and row identifiers.
class GooglePrivacyDlpV2beta1BigQueryOptions {
  /// References to fields uniquely identifying rows within the table.
  /// Nested fields in the format, like `person.birthdate.year`, are allowed.
  core.List<GooglePrivacyDlpV2beta1FieldId> identifyingFields;

  /// Complete BigQuery table reference.
  GooglePrivacyDlpV2beta1BigQueryTable tableReference;

  GooglePrivacyDlpV2beta1BigQueryOptions();

  GooglePrivacyDlpV2beta1BigQueryOptions.fromJson(core.Map _json) {
    if (_json.containsKey("identifyingFields")) {
      identifyingFields = (_json["identifyingFields"] as core.List)
          .map<GooglePrivacyDlpV2beta1FieldId>(
              (value) => new GooglePrivacyDlpV2beta1FieldId.fromJson(value))
          .toList();
    }
    if (_json.containsKey("tableReference")) {
      tableReference = new GooglePrivacyDlpV2beta1BigQueryTable.fromJson(
          _json["tableReference"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (identifyingFields != null) {
      _json["identifyingFields"] =
          identifyingFields.map((value) => (value).toJson()).toList();
    }
    if (tableReference != null) {
      _json["tableReference"] = (tableReference).toJson();
    }
    return _json;
  }
}

/// Message defining the location of a BigQuery table. A table is uniquely
/// identified  by its project_id, dataset_id, and table_name. Within a query
/// a table is often referenced with a string in the format of:
/// `<project_id>:<dataset_id>.<table_id>` or
/// `<project_id>.<dataset_id>.<table_id>`.
class GooglePrivacyDlpV2beta1BigQueryTable {
  /// Dataset ID of the table.
  core.String datasetId;

  /// The Google Cloud Platform project ID of the project containing the table.
  /// If omitted, project ID is inferred from the API call.
  core.String projectId;

  /// Name of the table.
  core.String tableId;

  GooglePrivacyDlpV2beta1BigQueryTable();

  GooglePrivacyDlpV2beta1BigQueryTable.fromJson(core.Map _json) {
    if (_json.containsKey("datasetId")) {
      datasetId = _json["datasetId"];
    }
    if (_json.containsKey("projectId")) {
      projectId = _json["projectId"];
    }
    if (_json.containsKey("tableId")) {
      tableId = _json["tableId"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (datasetId != null) {
      _json["datasetId"] = datasetId;
    }
    if (projectId != null) {
      _json["projectId"] = projectId;
    }
    if (tableId != null) {
      _json["tableId"] = tableId;
    }
    return _json;
  }
}

/// Buckets represented as ranges, along with replacement values. Ranges must
/// be non-overlapping.
class GooglePrivacyDlpV2beta1Bucket {
  /// Upper bound of the range, exclusive; type must match min.
  GooglePrivacyDlpV2beta1Value max;

  /// Lower bound of the range, inclusive. Type should be the same as max if
  /// used.
  GooglePrivacyDlpV2beta1Value min;

  /// Replacement value for this bucket. If not provided
  /// the default behavior will be to hyphenate the min-max range.
  GooglePrivacyDlpV2beta1Value replacementValue;

  GooglePrivacyDlpV2beta1Bucket();

  GooglePrivacyDlpV2beta1Bucket.fromJson(core.Map _json) {
    if (_json.containsKey("max")) {
      max = new GooglePrivacyDlpV2beta1Value.fromJson(_json["max"]);
    }
    if (_json.containsKey("min")) {
      min = new GooglePrivacyDlpV2beta1Value.fromJson(_json["min"]);
    }
    if (_json.containsKey("replacementValue")) {
      replacementValue =
          new GooglePrivacyDlpV2beta1Value.fromJson(_json["replacementValue"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (max != null) {
      _json["max"] = (max).toJson();
    }
    if (min != null) {
      _json["min"] = (min).toJson();
    }
    if (replacementValue != null) {
      _json["replacementValue"] = (replacementValue).toJson();
    }
    return _json;
  }
}

/// Generalization function that buckets values based on ranges. The ranges and
/// replacement values are dynamically provided by the user for custom behavior,
/// such as 1-30 -> LOW 31-65 -> MEDIUM 66-100 -> HIGH
/// This can be used on
/// data of type: number, long, string, timestamp.
/// If the bound `Value` type differs from the type of data being transformed,
/// we
/// will first attempt converting the type of the data to be transformed to
/// match
/// the type of the bound before comparing.
class GooglePrivacyDlpV2beta1BucketingConfig {
  core.List<GooglePrivacyDlpV2beta1Bucket> buckets;

  GooglePrivacyDlpV2beta1BucketingConfig();

  GooglePrivacyDlpV2beta1BucketingConfig.fromJson(core.Map _json) {
    if (_json.containsKey("buckets")) {
      buckets = (_json["buckets"] as core.List)
          .map<GooglePrivacyDlpV2beta1Bucket>(
              (value) => new GooglePrivacyDlpV2beta1Bucket.fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (buckets != null) {
      _json["buckets"] = buckets.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

/// Compute numerical stats over an individual column, including
/// number of distinct values and value count distribution.
class GooglePrivacyDlpV2beta1CategoricalStatsConfig {
  /// Field to compute categorical stats on. All column types are
  /// supported except for arrays and structs. However, it may be more
  /// informative to use NumericalStats when the field type is supported,
  /// depending on the data.
  GooglePrivacyDlpV2beta1FieldId field;

  GooglePrivacyDlpV2beta1CategoricalStatsConfig();

  GooglePrivacyDlpV2beta1CategoricalStatsConfig.fromJson(core.Map _json) {
    if (_json.containsKey("field")) {
      field = new GooglePrivacyDlpV2beta1FieldId.fromJson(_json["field"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (field != null) {
      _json["field"] = (field).toJson();
    }
    return _json;
  }
}

/// Histogram bucket of value frequencies in the column.
class GooglePrivacyDlpV2beta1CategoricalStatsHistogramBucket {
  /// Total number of records in this bucket.
  core.String bucketSize;

  /// Sample of value frequencies in this bucket. The total number of
  /// values returned per bucket is capped at 20.
  core.List<GooglePrivacyDlpV2beta1ValueFrequency> bucketValues;

  /// Lower bound on the value frequency of the values in this bucket.
  core.String valueFrequencyLowerBound;

  /// Upper bound on the value frequency of the values in this bucket.
  core.String valueFrequencyUpperBound;

  GooglePrivacyDlpV2beta1CategoricalStatsHistogramBucket();

  GooglePrivacyDlpV2beta1CategoricalStatsHistogramBucket.fromJson(
      core.Map _json) {
    if (_json.containsKey("bucketSize")) {
      bucketSize = _json["bucketSize"];
    }
    if (_json.containsKey("bucketValues")) {
      bucketValues = (_json["bucketValues"] as core.List)
          .map<GooglePrivacyDlpV2beta1ValueFrequency>((value) =>
              new GooglePrivacyDlpV2beta1ValueFrequency.fromJson(value))
          .toList();
    }
    if (_json.containsKey("valueFrequencyLowerBound")) {
      valueFrequencyLowerBound = _json["valueFrequencyLowerBound"];
    }
    if (_json.containsKey("valueFrequencyUpperBound")) {
      valueFrequencyUpperBound = _json["valueFrequencyUpperBound"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (bucketSize != null) {
      _json["bucketSize"] = bucketSize;
    }
    if (bucketValues != null) {
      _json["bucketValues"] =
          bucketValues.map((value) => (value).toJson()).toList();
    }
    if (valueFrequencyLowerBound != null) {
      _json["valueFrequencyLowerBound"] = valueFrequencyLowerBound;
    }
    if (valueFrequencyUpperBound != null) {
      _json["valueFrequencyUpperBound"] = valueFrequencyUpperBound;
    }
    return _json;
  }
}

/// Result of the categorical stats computation.
class GooglePrivacyDlpV2beta1CategoricalStatsResult {
  /// Histogram of value frequencies in the column.
  core.List<GooglePrivacyDlpV2beta1CategoricalStatsHistogramBucket>
      valueFrequencyHistogramBuckets;

  GooglePrivacyDlpV2beta1CategoricalStatsResult();

  GooglePrivacyDlpV2beta1CategoricalStatsResult.fromJson(core.Map _json) {
    if (_json.containsKey("valueFrequencyHistogramBuckets")) {
      valueFrequencyHistogramBuckets =
          (_json["valueFrequencyHistogramBuckets"] as core.List)
              .map<GooglePrivacyDlpV2beta1CategoricalStatsHistogramBucket>(
                  (value) =>
                      new GooglePrivacyDlpV2beta1CategoricalStatsHistogramBucket
                          .fromJson(value))
              .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (valueFrequencyHistogramBuckets != null) {
      _json["valueFrequencyHistogramBuckets"] = valueFrequencyHistogramBuckets
          .map((value) => (value).toJson())
          .toList();
    }
    return _json;
  }
}

/// Info Type Category description.
class GooglePrivacyDlpV2beta1CategoryDescription {
  /// Human readable form of the category name.
  core.String displayName;

  /// Internal name of the category.
  core.String name;

  GooglePrivacyDlpV2beta1CategoryDescription();

  GooglePrivacyDlpV2beta1CategoryDescription.fromJson(core.Map _json) {
    if (_json.containsKey("displayName")) {
      displayName = _json["displayName"];
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
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
    return _json;
  }
}

/// Partially mask a string by replacing a given number of characters with a
/// fixed character. Masking can start from the beginning or end of the string.
/// This can be used on data of any type (numbers, longs, and so on) and when
/// de-identifying structured data we'll attempt to preserve the original data's
/// type. (This allows you to take a long like 123 and modify it to a string
/// like
/// **3.
class GooglePrivacyDlpV2beta1CharacterMaskConfig {
  /// When masking a string, items in this list will be skipped when replacing.
  /// For example, if your string is 555-555-5555 and you ask us to skip `-` and
  /// mask 5 chars with * we would produce ***-*55-5555.
  core.List<GooglePrivacyDlpV2beta1CharsToIgnore> charactersToIgnore;

  /// Character to mask the sensitive values&mdash;for example, "*" for an
  /// alphabetic string such as name, or "0" for a numeric string such as ZIP
  /// code or credit card number. String must have length 1. If not supplied, we
  /// will default to "*" for strings, 0 for digits.
  core.String maskingCharacter;

  /// Number of characters to mask. If not set, all matching chars will be
  /// masked. Skipped characters do not count towards this tally.
  core.int numberToMask;

  /// Mask characters in reverse order. For example, if `masking_character` is
  /// '0', number_to_mask is 14, and `reverse_order` is false, then
  /// 1234-5678-9012-3456 -> 00000000000000-3456
  /// If `masking_character` is '*', `number_to_mask` is 3, and `reverse_order`
  /// is true, then 12345 -> 12***
  core.bool reverseOrder;

  GooglePrivacyDlpV2beta1CharacterMaskConfig();

  GooglePrivacyDlpV2beta1CharacterMaskConfig.fromJson(core.Map _json) {
    if (_json.containsKey("charactersToIgnore")) {
      charactersToIgnore = (_json["charactersToIgnore"] as core.List)
          .map<GooglePrivacyDlpV2beta1CharsToIgnore>((value) =>
              new GooglePrivacyDlpV2beta1CharsToIgnore.fromJson(value))
          .toList();
    }
    if (_json.containsKey("maskingCharacter")) {
      maskingCharacter = _json["maskingCharacter"];
    }
    if (_json.containsKey("numberToMask")) {
      numberToMask = _json["numberToMask"];
    }
    if (_json.containsKey("reverseOrder")) {
      reverseOrder = _json["reverseOrder"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (charactersToIgnore != null) {
      _json["charactersToIgnore"] =
          charactersToIgnore.map((value) => (value).toJson()).toList();
    }
    if (maskingCharacter != null) {
      _json["maskingCharacter"] = maskingCharacter;
    }
    if (numberToMask != null) {
      _json["numberToMask"] = numberToMask;
    }
    if (reverseOrder != null) {
      _json["reverseOrder"] = reverseOrder;
    }
    return _json;
  }
}

/// Characters to skip when doing deidentification of a value. These will be
/// left
/// alone and skipped.
class GooglePrivacyDlpV2beta1CharsToIgnore {
  core.String charactersToSkip;

  ///
  /// Possible string values are:
  /// - "CHARACTER_GROUP_UNSPECIFIED"
  /// - "NUMERIC" : 0-9
  /// - "ALPHA_UPPER_CASE" : A-Z
  /// - "ALPHA_LOWER_CASE" : a-z
  /// - "PUNCTUATION" : US Punctuation, one of !"#$%&'()*+,-./:;<=>?@[\]^_`{|}~
  /// - "WHITESPACE" : Whitespace character, one of [ \t\n\x0B\f\r]
  core.String commonCharactersToIgnore;

  GooglePrivacyDlpV2beta1CharsToIgnore();

  GooglePrivacyDlpV2beta1CharsToIgnore.fromJson(core.Map _json) {
    if (_json.containsKey("charactersToSkip")) {
      charactersToSkip = _json["charactersToSkip"];
    }
    if (_json.containsKey("commonCharactersToIgnore")) {
      commonCharactersToIgnore = _json["commonCharactersToIgnore"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (charactersToSkip != null) {
      _json["charactersToSkip"] = charactersToSkip;
    }
    if (commonCharactersToIgnore != null) {
      _json["commonCharactersToIgnore"] = commonCharactersToIgnore;
    }
    return _json;
  }
}

/// Record key for a finding in a Cloud Storage file.
class GooglePrivacyDlpV2beta1CloudStorageKey {
  /// Path to the file.
  core.String filePath;

  /// Byte offset of the referenced data in the file.
  core.String startOffset;

  GooglePrivacyDlpV2beta1CloudStorageKey();

  GooglePrivacyDlpV2beta1CloudStorageKey.fromJson(core.Map _json) {
    if (_json.containsKey("filePath")) {
      filePath = _json["filePath"];
    }
    if (_json.containsKey("startOffset")) {
      startOffset = _json["startOffset"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (filePath != null) {
      _json["filePath"] = filePath;
    }
    if (startOffset != null) {
      _json["startOffset"] = startOffset;
    }
    return _json;
  }
}

/// Options defining a file or a set of files (path ending with *) within
/// a Google Cloud Storage bucket.
class GooglePrivacyDlpV2beta1CloudStorageOptions {
  GooglePrivacyDlpV2beta1FileSet fileSet;

  GooglePrivacyDlpV2beta1CloudStorageOptions();

  GooglePrivacyDlpV2beta1CloudStorageOptions.fromJson(core.Map _json) {
    if (_json.containsKey("fileSet")) {
      fileSet = new GooglePrivacyDlpV2beta1FileSet.fromJson(_json["fileSet"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (fileSet != null) {
      _json["fileSet"] = (fileSet).toJson();
    }
    return _json;
  }
}

/// A location in Cloud Storage.
class GooglePrivacyDlpV2beta1CloudStoragePath {
  /// The url, in the format of `gs://bucket/<path>`.
  core.String path;

  GooglePrivacyDlpV2beta1CloudStoragePath();

  GooglePrivacyDlpV2beta1CloudStoragePath.fromJson(core.Map _json) {
    if (_json.containsKey("path")) {
      path = _json["path"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (path != null) {
      _json["path"] = path;
    }
    return _json;
  }
}

/// Represents a color in the RGB color space.
class GooglePrivacyDlpV2beta1Color {
  /// The amount of blue in the color as a value in the interval [0, 1].
  core.double blue;

  /// The amount of green in the color as a value in the interval [0, 1].
  core.double green;

  /// The amount of red in the color as a value in the interval [0, 1].
  core.double red;

  GooglePrivacyDlpV2beta1Color();

  GooglePrivacyDlpV2beta1Color.fromJson(core.Map _json) {
    if (_json.containsKey("blue")) {
      blue = _json["blue"].toDouble();
    }
    if (_json.containsKey("green")) {
      green = _json["green"].toDouble();
    }
    if (_json.containsKey("red")) {
      red = _json["red"].toDouble();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (blue != null) {
      _json["blue"] = blue;
    }
    if (green != null) {
      _json["green"] = green;
    }
    if (red != null) {
      _json["red"] = red;
    }
    return _json;
  }
}

/// The field type of `value` and `field` do not need to match to be
/// considered equal, but not all comparisons are possible.
///
/// A `value` of type:
///
/// - `string` can be compared against all other types
/// - `boolean` can only be compared against other booleans
/// - `integer` can be compared against doubles or a string if the string value
/// can be parsed as an integer.
/// - `double` can be compared against integers or a string if the string can
/// be parsed as a double.
/// - `Timestamp` can be compared against strings in RFC 3339 date string
/// format.
/// - `TimeOfDay` can be compared against timestamps and strings in the format
/// of 'HH:mm:ss'.
///
/// If we fail to compare do to type mismatch, a warning will be given and
/// the condition will evaluate to false.
class GooglePrivacyDlpV2beta1Condition {
  /// Field within the record this condition is evaluated against. [required]
  GooglePrivacyDlpV2beta1FieldId field;

  /// Operator used to compare the field or info type to the value. [required]
  /// Possible string values are:
  /// - "RELATIONAL_OPERATOR_UNSPECIFIED"
  /// - "EQUAL_TO" : Equal.
  /// - "NOT_EQUAL_TO" : Not equal to.
  /// - "GREATER_THAN" : Greater than.
  /// - "LESS_THAN" : Less than.
  /// - "GREATER_THAN_OR_EQUALS" : Greater than or equals.
  /// - "LESS_THAN_OR_EQUALS" : Less than or equals.
  /// - "EXISTS" : Exists
  core.String operator;

  /// Value to compare against. [Required, except for `EXISTS` tests.]
  GooglePrivacyDlpV2beta1Value value;

  GooglePrivacyDlpV2beta1Condition();

  GooglePrivacyDlpV2beta1Condition.fromJson(core.Map _json) {
    if (_json.containsKey("field")) {
      field = new GooglePrivacyDlpV2beta1FieldId.fromJson(_json["field"]);
    }
    if (_json.containsKey("operator")) {
      operator = _json["operator"];
    }
    if (_json.containsKey("value")) {
      value = new GooglePrivacyDlpV2beta1Value.fromJson(_json["value"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (field != null) {
      _json["field"] = (field).toJson();
    }
    if (operator != null) {
      _json["operator"] = operator;
    }
    if (value != null) {
      _json["value"] = (value).toJson();
    }
    return _json;
  }
}

class GooglePrivacyDlpV2beta1Conditions {
  core.List<GooglePrivacyDlpV2beta1Condition> conditions;

  GooglePrivacyDlpV2beta1Conditions();

  GooglePrivacyDlpV2beta1Conditions.fromJson(core.Map _json) {
    if (_json.containsKey("conditions")) {
      conditions = (_json["conditions"] as core.List)
          .map<GooglePrivacyDlpV2beta1Condition>(
              (value) => new GooglePrivacyDlpV2beta1Condition.fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (conditions != null) {
      _json["conditions"] =
          conditions.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

/// Container structure for the content to inspect.
class GooglePrivacyDlpV2beta1ContentItem {
  /// Content data to inspect or redact.
  core.String data;
  core.List<core.int> get dataAsBytes {
    return convert.base64.decode(data);
  }

  void set dataAsBytes(core.List<core.int> _bytes) {
    data =
        convert.base64.encode(_bytes).replaceAll("/", "_").replaceAll("+", "-");
  }

  /// Structured content for inspection.
  GooglePrivacyDlpV2beta1Table table;

  /// Type of the content, as defined in Content-Type HTTP header.
  /// Supported types are: all "text" types, octet streams, PNG images,
  /// JPEG images.
  core.String type;

  /// String data to inspect or redact.
  core.String value;

  GooglePrivacyDlpV2beta1ContentItem();

  GooglePrivacyDlpV2beta1ContentItem.fromJson(core.Map _json) {
    if (_json.containsKey("data")) {
      data = _json["data"];
    }
    if (_json.containsKey("table")) {
      table = new GooglePrivacyDlpV2beta1Table.fromJson(_json["table"]);
    }
    if (_json.containsKey("type")) {
      type = _json["type"];
    }
    if (_json.containsKey("value")) {
      value = _json["value"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (data != null) {
      _json["data"] = data;
    }
    if (table != null) {
      _json["table"] = (table).toJson();
    }
    if (type != null) {
      _json["type"] = type;
    }
    if (value != null) {
      _json["value"] = value;
    }
    return _json;
  }
}

/// Request for scheduling a scan of a data subset from a Google Platform data
/// repository.
class GooglePrivacyDlpV2beta1CreateInspectOperationRequest {
  /// Configuration for the inspector.
  GooglePrivacyDlpV2beta1InspectConfig inspectConfig;

  /// Additional configuration settings for long running operations.
  GooglePrivacyDlpV2beta1OperationConfig operationConfig;

  /// Optional location to store findings.
  GooglePrivacyDlpV2beta1OutputStorageConfig outputConfig;

  /// Specification of the data set to process.
  GooglePrivacyDlpV2beta1StorageConfig storageConfig;

  GooglePrivacyDlpV2beta1CreateInspectOperationRequest();

  GooglePrivacyDlpV2beta1CreateInspectOperationRequest.fromJson(
      core.Map _json) {
    if (_json.containsKey("inspectConfig")) {
      inspectConfig = new GooglePrivacyDlpV2beta1InspectConfig.fromJson(
          _json["inspectConfig"]);
    }
    if (_json.containsKey("operationConfig")) {
      operationConfig = new GooglePrivacyDlpV2beta1OperationConfig.fromJson(
          _json["operationConfig"]);
    }
    if (_json.containsKey("outputConfig")) {
      outputConfig = new GooglePrivacyDlpV2beta1OutputStorageConfig.fromJson(
          _json["outputConfig"]);
    }
    if (_json.containsKey("storageConfig")) {
      storageConfig = new GooglePrivacyDlpV2beta1StorageConfig.fromJson(
          _json["storageConfig"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (inspectConfig != null) {
      _json["inspectConfig"] = (inspectConfig).toJson();
    }
    if (operationConfig != null) {
      _json["operationConfig"] = (operationConfig).toJson();
    }
    if (outputConfig != null) {
      _json["outputConfig"] = (outputConfig).toJson();
    }
    if (storageConfig != null) {
      _json["storageConfig"] = (storageConfig).toJson();
    }
    return _json;
  }
}

/// Pseudonymization method that generates surrogates via cryptographic hashing.
/// Uses SHA-256.
/// Outputs a 32 byte digest as an uppercase hex string
/// (for example, 41D1567F7F99F1DC2A5FAB886DEE5BEE).
/// Currently, only string and integer values can be hashed.
class GooglePrivacyDlpV2beta1CryptoHashConfig {
  /// The key used by the hash function.
  GooglePrivacyDlpV2beta1CryptoKey cryptoKey;

  GooglePrivacyDlpV2beta1CryptoHashConfig();

  GooglePrivacyDlpV2beta1CryptoHashConfig.fromJson(core.Map _json) {
    if (_json.containsKey("cryptoKey")) {
      cryptoKey =
          new GooglePrivacyDlpV2beta1CryptoKey.fromJson(_json["cryptoKey"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (cryptoKey != null) {
      _json["cryptoKey"] = (cryptoKey).toJson();
    }
    return _json;
  }
}

/// This is a data encryption key (DEK) (as opposed to
/// a key encryption key (KEK) stored by KMS).
/// When using KMS to wrap/unwrap DEKs, be sure to set an appropriate
/// IAM policy on the KMS CryptoKey (KEK) to ensure an attacker cannot
/// unwrap the data crypto key.
class GooglePrivacyDlpV2beta1CryptoKey {
  GooglePrivacyDlpV2beta1KmsWrappedCryptoKey kmsWrapped;
  GooglePrivacyDlpV2beta1TransientCryptoKey transient;
  GooglePrivacyDlpV2beta1UnwrappedCryptoKey unwrapped;

  GooglePrivacyDlpV2beta1CryptoKey();

  GooglePrivacyDlpV2beta1CryptoKey.fromJson(core.Map _json) {
    if (_json.containsKey("kmsWrapped")) {
      kmsWrapped = new GooglePrivacyDlpV2beta1KmsWrappedCryptoKey.fromJson(
          _json["kmsWrapped"]);
    }
    if (_json.containsKey("transient")) {
      transient = new GooglePrivacyDlpV2beta1TransientCryptoKey.fromJson(
          _json["transient"]);
    }
    if (_json.containsKey("unwrapped")) {
      unwrapped = new GooglePrivacyDlpV2beta1UnwrappedCryptoKey.fromJson(
          _json["unwrapped"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (kmsWrapped != null) {
      _json["kmsWrapped"] = (kmsWrapped).toJson();
    }
    if (transient != null) {
      _json["transient"] = (transient).toJson();
    }
    if (unwrapped != null) {
      _json["unwrapped"] = (unwrapped).toJson();
    }
    return _json;
  }
}

/// Replaces an identifier with a surrogate using FPE with the FFX
/// mode of operation.
/// The identifier must be representable by the US-ASCII character set.
/// For a given crypto key and context, the same identifier will be
/// replaced with the same surrogate.
/// Identifiers must be at least two characters long.
/// In the case that the identifier is the empty string, it will be skipped.
class GooglePrivacyDlpV2beta1CryptoReplaceFfxFpeConfig {
  ///
  /// Possible string values are:
  /// - "FFX_COMMON_NATIVE_ALPHABET_UNSPECIFIED"
  /// - "NUMERIC" : [0-9] (radix of 10)
  /// - "HEXADECIMAL" : [0-9A-F] (radix of 16)
  /// - "UPPER_CASE_ALPHA_NUMERIC" : [0-9A-Z] (radix of 36)
  /// - "ALPHA_NUMERIC" : [0-9A-Za-z] (radix of 62)
  core.String commonAlphabet;

  /// A context may be used for higher security since the same
  /// identifier in two different contexts likely will be given a distinct
  /// surrogate. The principle is that the likeliness is inversely related
  /// to the ratio of the number of distinct identifiers per context over the
  /// number of possible surrogates: As long as this ratio is small, the
  /// likehood is large.
  ///
  /// If the context is not set, a default tweak will be used.
  /// If the context is set but:
  ///
  /// 1. there is no record present when transforming a given value or
  /// 1. the field is not present when transforming a given value,
  ///
  /// a default tweak will be used.
  ///
  /// Note that case (1) is expected when an `InfoTypeTransformation` is
  /// applied to both structured and non-structured `ContentItem`s.
  /// Currently, the referenced field may be of value type integer or string.
  ///
  /// The tweak is constructed as a sequence of bytes in big endian byte order
  /// such that:
  ///
  /// - a 64 bit integer is encoded followed by a single byte of value 1
  /// - a string is encoded in UTF-8 format followed by a single byte of value 2
  ///
  /// This is also known as the 'tweak', as in tweakable encryption.
  GooglePrivacyDlpV2beta1FieldId context;

  /// The key used by the encryption algorithm. [required]
  GooglePrivacyDlpV2beta1CryptoKey cryptoKey;

  /// This is supported by mapping these to the alphanumeric characters
  /// that the FFX mode natively supports. This happens before/after
  /// encryption/decryption.
  /// Each character listed must appear only once.
  /// Number of characters must be in the range [2, 62].
  /// This must be encoded as ASCII.
  /// The order of characters does not matter.
  core.String customAlphabet;

  /// The native way to select the alphabet. Must be in the range [2, 62].
  core.int radix;

  /// The custom info type to annotate the surrogate with.
  /// This annotation will be applied to the surrogate by prefixing it with
  /// the name of the custom info type followed by the number of
  /// characters comprising the surrogate. The following scheme defines the
  /// format: info_type_name(surrogate_character_count):surrogate
  ///
  /// For example, if the name of custom info type is 'MY_TOKEN_INFO_TYPE' and
  /// the surrogate is 'abc', the full replacement value
  /// will be: 'MY_TOKEN_INFO_TYPE(3):abc'
  ///
  /// This annotation identifies the surrogate when inspecting content using the
  /// custom info type
  /// [`SurrogateType`](/dlp/docs/reference/rest/v2beta1/InspectConfig#surrogatetype).
  /// This facilitates reversal of the surrogate when it occurs in free text.
  ///
  /// In order for inspection to work properly, the name of this info type must
  /// not occur naturally anywhere in your data; otherwise, inspection may
  /// find a surrogate that does not correspond to an actual identifier.
  /// Therefore, choose your custom info type name carefully after considering
  /// what your data looks like. One way to select a name that has a high chance
  /// of yielding reliable detection is to include one or more unicode
  /// characters
  /// that are highly improbable to exist in your data.
  /// For example, assuming your data is entered from a regular ASCII keyboard,
  /// the symbol with the hex code point 29DD might be used like so:
  /// ⧝MY_TOKEN_TYPE
  GooglePrivacyDlpV2beta1InfoType surrogateInfoType;

  GooglePrivacyDlpV2beta1CryptoReplaceFfxFpeConfig();

  GooglePrivacyDlpV2beta1CryptoReplaceFfxFpeConfig.fromJson(core.Map _json) {
    if (_json.containsKey("commonAlphabet")) {
      commonAlphabet = _json["commonAlphabet"];
    }
    if (_json.containsKey("context")) {
      context = new GooglePrivacyDlpV2beta1FieldId.fromJson(_json["context"]);
    }
    if (_json.containsKey("cryptoKey")) {
      cryptoKey =
          new GooglePrivacyDlpV2beta1CryptoKey.fromJson(_json["cryptoKey"]);
    }
    if (_json.containsKey("customAlphabet")) {
      customAlphabet = _json["customAlphabet"];
    }
    if (_json.containsKey("radix")) {
      radix = _json["radix"];
    }
    if (_json.containsKey("surrogateInfoType")) {
      surrogateInfoType = new GooglePrivacyDlpV2beta1InfoType.fromJson(
          _json["surrogateInfoType"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (commonAlphabet != null) {
      _json["commonAlphabet"] = commonAlphabet;
    }
    if (context != null) {
      _json["context"] = (context).toJson();
    }
    if (cryptoKey != null) {
      _json["cryptoKey"] = (cryptoKey).toJson();
    }
    if (customAlphabet != null) {
      _json["customAlphabet"] = customAlphabet;
    }
    if (radix != null) {
      _json["radix"] = radix;
    }
    if (surrogateInfoType != null) {
      _json["surrogateInfoType"] = (surrogateInfoType).toJson();
    }
    return _json;
  }
}

/// Custom information type provided by the user. Used to find domain-specific
/// sensitive information configurable to the data in question.
class GooglePrivacyDlpV2beta1CustomInfoType {
  /// Dictionary-based custom info type.
  GooglePrivacyDlpV2beta1Dictionary dictionary;

  /// Info type configuration. All custom info types must have configurations
  /// that do not conflict with built-in info types or other custom info types.
  GooglePrivacyDlpV2beta1InfoType infoType;

  /// Surrogate info type.
  GooglePrivacyDlpV2beta1SurrogateType surrogateType;

  GooglePrivacyDlpV2beta1CustomInfoType();

  GooglePrivacyDlpV2beta1CustomInfoType.fromJson(core.Map _json) {
    if (_json.containsKey("dictionary")) {
      dictionary =
          new GooglePrivacyDlpV2beta1Dictionary.fromJson(_json["dictionary"]);
    }
    if (_json.containsKey("infoType")) {
      infoType =
          new GooglePrivacyDlpV2beta1InfoType.fromJson(_json["infoType"]);
    }
    if (_json.containsKey("surrogateType")) {
      surrogateType = new GooglePrivacyDlpV2beta1SurrogateType.fromJson(
          _json["surrogateType"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (dictionary != null) {
      _json["dictionary"] = (dictionary).toJson();
    }
    if (infoType != null) {
      _json["infoType"] = (infoType).toJson();
    }
    if (surrogateType != null) {
      _json["surrogateType"] = (surrogateType).toJson();
    }
    return _json;
  }
}

/// Record key for a finding in Cloud Datastore.
class GooglePrivacyDlpV2beta1DatastoreKey {
  /// Datastore entity key.
  GooglePrivacyDlpV2beta1Key entityKey;

  GooglePrivacyDlpV2beta1DatastoreKey();

  GooglePrivacyDlpV2beta1DatastoreKey.fromJson(core.Map _json) {
    if (_json.containsKey("entityKey")) {
      entityKey = new GooglePrivacyDlpV2beta1Key.fromJson(_json["entityKey"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (entityKey != null) {
      _json["entityKey"] = (entityKey).toJson();
    }
    return _json;
  }
}

/// Options defining a data set within Google Cloud Datastore.
class GooglePrivacyDlpV2beta1DatastoreOptions {
  /// The kind to process.
  GooglePrivacyDlpV2beta1KindExpression kind;

  /// A partition ID identifies a grouping of entities. The grouping is always
  /// by project and namespace, however the namespace ID may be empty.
  GooglePrivacyDlpV2beta1PartitionId partitionId;

  /// Properties to scan. If none are specified, all properties will be scanned
  /// by default.
  core.List<GooglePrivacyDlpV2beta1Projection> projection;

  GooglePrivacyDlpV2beta1DatastoreOptions();

  GooglePrivacyDlpV2beta1DatastoreOptions.fromJson(core.Map _json) {
    if (_json.containsKey("kind")) {
      kind = new GooglePrivacyDlpV2beta1KindExpression.fromJson(_json["kind"]);
    }
    if (_json.containsKey("partitionId")) {
      partitionId =
          new GooglePrivacyDlpV2beta1PartitionId.fromJson(_json["partitionId"]);
    }
    if (_json.containsKey("projection")) {
      projection = (_json["projection"] as core.List)
          .map<GooglePrivacyDlpV2beta1Projection>(
              (value) => new GooglePrivacyDlpV2beta1Projection.fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (kind != null) {
      _json["kind"] = (kind).toJson();
    }
    if (partitionId != null) {
      _json["partitionId"] = (partitionId).toJson();
    }
    if (projection != null) {
      _json["projection"] =
          projection.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

/// High level summary of deidentification.
class GooglePrivacyDlpV2beta1DeidentificationSummary {
  /// Transformations applied to the dataset.
  core.List<GooglePrivacyDlpV2beta1TransformationSummary>
      transformationSummaries;

  /// Total size in bytes that were transformed in some way.
  core.String transformedBytes;

  GooglePrivacyDlpV2beta1DeidentificationSummary();

  GooglePrivacyDlpV2beta1DeidentificationSummary.fromJson(core.Map _json) {
    if (_json.containsKey("transformationSummaries")) {
      transformationSummaries = (_json["transformationSummaries"] as core.List)
          .map<GooglePrivacyDlpV2beta1TransformationSummary>((value) =>
              new GooglePrivacyDlpV2beta1TransformationSummary.fromJson(value))
          .toList();
    }
    if (_json.containsKey("transformedBytes")) {
      transformedBytes = _json["transformedBytes"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (transformationSummaries != null) {
      _json["transformationSummaries"] =
          transformationSummaries.map((value) => (value).toJson()).toList();
    }
    if (transformedBytes != null) {
      _json["transformedBytes"] = transformedBytes;
    }
    return _json;
  }
}

/// The configuration that controls how the data will change.
class GooglePrivacyDlpV2beta1DeidentifyConfig {
  /// Treat the dataset as free-form text and apply the same free text
  /// transformation everywhere.
  GooglePrivacyDlpV2beta1InfoTypeTransformations infoTypeTransformations;

  /// Treat the dataset as structured. Transformations can be applied to
  /// specific locations within structured datasets, such as transforming
  /// a column within a table.
  GooglePrivacyDlpV2beta1RecordTransformations recordTransformations;

  GooglePrivacyDlpV2beta1DeidentifyConfig();

  GooglePrivacyDlpV2beta1DeidentifyConfig.fromJson(core.Map _json) {
    if (_json.containsKey("infoTypeTransformations")) {
      infoTypeTransformations =
          new GooglePrivacyDlpV2beta1InfoTypeTransformations.fromJson(
              _json["infoTypeTransformations"]);
    }
    if (_json.containsKey("recordTransformations")) {
      recordTransformations =
          new GooglePrivacyDlpV2beta1RecordTransformations.fromJson(
              _json["recordTransformations"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (infoTypeTransformations != null) {
      _json["infoTypeTransformations"] = (infoTypeTransformations).toJson();
    }
    if (recordTransformations != null) {
      _json["recordTransformations"] = (recordTransformations).toJson();
    }
    return _json;
  }
}

/// Request to de-identify a list of items.
class GooglePrivacyDlpV2beta1DeidentifyContentRequest {
  /// Configuration for the de-identification of the list of content items.
  GooglePrivacyDlpV2beta1DeidentifyConfig deidentifyConfig;

  /// Configuration for the inspector.
  GooglePrivacyDlpV2beta1InspectConfig inspectConfig;

  /// The list of items to inspect. Up to 100 are allowed per request.
  /// All items will be treated as text / * .
  core.List<GooglePrivacyDlpV2beta1ContentItem> items;

  GooglePrivacyDlpV2beta1DeidentifyContentRequest();

  GooglePrivacyDlpV2beta1DeidentifyContentRequest.fromJson(core.Map _json) {
    if (_json.containsKey("deidentifyConfig")) {
      deidentifyConfig = new GooglePrivacyDlpV2beta1DeidentifyConfig.fromJson(
          _json["deidentifyConfig"]);
    }
    if (_json.containsKey("inspectConfig")) {
      inspectConfig = new GooglePrivacyDlpV2beta1InspectConfig.fromJson(
          _json["inspectConfig"]);
    }
    if (_json.containsKey("items")) {
      items = (_json["items"] as core.List)
          .map<GooglePrivacyDlpV2beta1ContentItem>(
              (value) => new GooglePrivacyDlpV2beta1ContentItem.fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (deidentifyConfig != null) {
      _json["deidentifyConfig"] = (deidentifyConfig).toJson();
    }
    if (inspectConfig != null) {
      _json["inspectConfig"] = (inspectConfig).toJson();
    }
    if (items != null) {
      _json["items"] = items.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

/// Results of de-identifying a list of items.
class GooglePrivacyDlpV2beta1DeidentifyContentResponse {
  core.List<GooglePrivacyDlpV2beta1ContentItem> items;

  /// A review of the transformations that took place for each item.
  core.List<GooglePrivacyDlpV2beta1DeidentificationSummary> summaries;

  GooglePrivacyDlpV2beta1DeidentifyContentResponse();

  GooglePrivacyDlpV2beta1DeidentifyContentResponse.fromJson(core.Map _json) {
    if (_json.containsKey("items")) {
      items = (_json["items"] as core.List)
          .map<GooglePrivacyDlpV2beta1ContentItem>(
              (value) => new GooglePrivacyDlpV2beta1ContentItem.fromJson(value))
          .toList();
    }
    if (_json.containsKey("summaries")) {
      summaries = (_json["summaries"] as core.List)
          .map<GooglePrivacyDlpV2beta1DeidentificationSummary>((value) =>
              new GooglePrivacyDlpV2beta1DeidentificationSummary.fromJson(
                  value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (items != null) {
      _json["items"] = items.map((value) => (value).toJson()).toList();
    }
    if (summaries != null) {
      _json["summaries"] = summaries.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

/// Custom information type based on a dictionary of words or phrases. This can
/// be used to match sensitive information specific to the data, such as a list
/// of employee IDs or job titles.
///
/// Dictionary words are case-insensitive and all characters other than letters
/// and digits in the unicode [Basic Multilingual
/// Plane](https://en.wikipedia.org/wiki/Plane_%28Unicode%29#Basic_Multilingual_Plane)
/// will be replaced with whitespace when scanning for matches, so the
/// dictionary phrase "Sam Johnson" will match all three phrases "sam johnson",
/// "Sam, Johnson", and "Sam (Johnson)". Additionally, the characters
/// surrounding any match must be of a different type than the adjacent
/// characters within the word, so letters must be next to non-letters and
/// digits next to non-digits. For example, the dictionary word "jen" will
/// match the first three letters of the text "jen123" but will return no
/// matches for "jennifer".
///
/// Dictionary words containing a large number of characters that are not
/// letters or digits may result in unexpected findings because such characters
/// are treated as whitespace.
class GooglePrivacyDlpV2beta1Dictionary {
  /// List of words or phrases to search for.
  GooglePrivacyDlpV2beta1WordList wordList;

  GooglePrivacyDlpV2beta1Dictionary();

  GooglePrivacyDlpV2beta1Dictionary.fromJson(core.Map _json) {
    if (_json.containsKey("wordList")) {
      wordList =
          new GooglePrivacyDlpV2beta1WordList.fromJson(_json["wordList"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (wordList != null) {
      _json["wordList"] = (wordList).toJson();
    }
    return _json;
  }
}

/// An entity in a dataset is a field or set of fields that correspond to a
/// single person. For example, in medical records the `EntityId` might be
/// a patient identifier, or for financial records it might be an account
/// identifier. This message is used when generalizations or analysis must be
/// consistent across multiple rows pertaining to the same entity.
class GooglePrivacyDlpV2beta1EntityId {
  /// Composite key indicating which field contains the entity identifier.
  GooglePrivacyDlpV2beta1FieldId field;

  GooglePrivacyDlpV2beta1EntityId();

  GooglePrivacyDlpV2beta1EntityId.fromJson(core.Map _json) {
    if (_json.containsKey("field")) {
      field = new GooglePrivacyDlpV2beta1FieldId.fromJson(_json["field"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (field != null) {
      _json["field"] = (field).toJson();
    }
    return _json;
  }
}

/// A collection of expressions
class GooglePrivacyDlpV2beta1Expressions {
  GooglePrivacyDlpV2beta1Conditions conditions;

  /// The operator to apply to the result of conditions. Default and currently
  /// only supported value is `AND`.
  /// Possible string values are:
  /// - "LOGICAL_OPERATOR_UNSPECIFIED"
  /// - "AND"
  core.String logicalOperator;

  GooglePrivacyDlpV2beta1Expressions();

  GooglePrivacyDlpV2beta1Expressions.fromJson(core.Map _json) {
    if (_json.containsKey("conditions")) {
      conditions =
          new GooglePrivacyDlpV2beta1Conditions.fromJson(_json["conditions"]);
    }
    if (_json.containsKey("logicalOperator")) {
      logicalOperator = _json["logicalOperator"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (conditions != null) {
      _json["conditions"] = (conditions).toJson();
    }
    if (logicalOperator != null) {
      _json["logicalOperator"] = logicalOperator;
    }
    return _json;
  }
}

/// General identifier of a data field in a storage service.
class GooglePrivacyDlpV2beta1FieldId {
  /// Name describing the field.
  core.String columnName;

  GooglePrivacyDlpV2beta1FieldId();

  GooglePrivacyDlpV2beta1FieldId.fromJson(core.Map _json) {
    if (_json.containsKey("columnName")) {
      columnName = _json["columnName"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (columnName != null) {
      _json["columnName"] = columnName;
    }
    return _json;
  }
}

/// The transformation to apply to the field.
class GooglePrivacyDlpV2beta1FieldTransformation {
  /// Only apply the transformation if the condition evaluates to true for the
  /// given `RecordCondition`. The conditions are allowed to reference fields
  /// that are not used in the actual transformation. [optional]
  ///
  /// Example Use Cases:
  ///
  /// - Apply a different bucket transformation to an age column if the zip code
  /// column for the same record is within a specific range.
  /// - Redact a field if the date of birth field is greater than 85.
  GooglePrivacyDlpV2beta1RecordCondition condition;

  /// Input field(s) to apply the transformation to. [required]
  core.List<GooglePrivacyDlpV2beta1FieldId> fields;

  /// Treat the contents of the field as free text, and selectively
  /// transform content that matches an `InfoType`.
  GooglePrivacyDlpV2beta1InfoTypeTransformations infoTypeTransformations;

  /// Apply the transformation to the entire field.
  GooglePrivacyDlpV2beta1PrimitiveTransformation primitiveTransformation;

  GooglePrivacyDlpV2beta1FieldTransformation();

  GooglePrivacyDlpV2beta1FieldTransformation.fromJson(core.Map _json) {
    if (_json.containsKey("condition")) {
      condition = new GooglePrivacyDlpV2beta1RecordCondition.fromJson(
          _json["condition"]);
    }
    if (_json.containsKey("fields")) {
      fields = (_json["fields"] as core.List)
          .map<GooglePrivacyDlpV2beta1FieldId>(
              (value) => new GooglePrivacyDlpV2beta1FieldId.fromJson(value))
          .toList();
    }
    if (_json.containsKey("infoTypeTransformations")) {
      infoTypeTransformations =
          new GooglePrivacyDlpV2beta1InfoTypeTransformations.fromJson(
              _json["infoTypeTransformations"]);
    }
    if (_json.containsKey("primitiveTransformation")) {
      primitiveTransformation =
          new GooglePrivacyDlpV2beta1PrimitiveTransformation.fromJson(
              _json["primitiveTransformation"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (condition != null) {
      _json["condition"] = (condition).toJson();
    }
    if (fields != null) {
      _json["fields"] = fields.map((value) => (value).toJson()).toList();
    }
    if (infoTypeTransformations != null) {
      _json["infoTypeTransformations"] = (infoTypeTransformations).toJson();
    }
    if (primitiveTransformation != null) {
      _json["primitiveTransformation"] = (primitiveTransformation).toJson();
    }
    return _json;
  }
}

/// Set of files to scan.
class GooglePrivacyDlpV2beta1FileSet {
  /// The url, in the format `gs://<bucket>/<path>`. Trailing wildcard in the
  /// path is allowed.
  core.String url;

  GooglePrivacyDlpV2beta1FileSet();

  GooglePrivacyDlpV2beta1FileSet.fromJson(core.Map _json) {
    if (_json.containsKey("url")) {
      url = _json["url"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (url != null) {
      _json["url"] = url;
    }
    return _json;
  }
}

/// Represents a piece of potentially sensitive content.
class GooglePrivacyDlpV2beta1Finding {
  /// Timestamp when finding was detected.
  core.String createTime;

  /// The type of content that might have been found.
  /// Provided if requested by the `InspectConfig`.
  GooglePrivacyDlpV2beta1InfoType infoType;

  /// Estimate of how likely it is that the `info_type` is correct.
  /// Possible string values are:
  /// - "LIKELIHOOD_UNSPECIFIED" : Default value; information with all
  /// likelihoods is included.
  /// - "VERY_UNLIKELY" : Few matching elements.
  /// - "UNLIKELY"
  /// - "POSSIBLE" : Some matching elements.
  /// - "LIKELY"
  /// - "VERY_LIKELY" : Many matching elements.
  core.String likelihood;

  /// Where the content was found.
  GooglePrivacyDlpV2beta1Location location;

  /// The content that was found. Even if the content is not textual, it
  /// may be converted to a textual representation here.
  /// Provided if requested by the `InspectConfig` and the finding is
  /// less than or equal to 4096 bytes long. If the finding exceeds 4096 bytes
  /// in length, the quote may be omitted.
  core.String quote;

  GooglePrivacyDlpV2beta1Finding();

  GooglePrivacyDlpV2beta1Finding.fromJson(core.Map _json) {
    if (_json.containsKey("createTime")) {
      createTime = _json["createTime"];
    }
    if (_json.containsKey("infoType")) {
      infoType =
          new GooglePrivacyDlpV2beta1InfoType.fromJson(_json["infoType"]);
    }
    if (_json.containsKey("likelihood")) {
      likelihood = _json["likelihood"];
    }
    if (_json.containsKey("location")) {
      location =
          new GooglePrivacyDlpV2beta1Location.fromJson(_json["location"]);
    }
    if (_json.containsKey("quote")) {
      quote = _json["quote"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (createTime != null) {
      _json["createTime"] = createTime;
    }
    if (infoType != null) {
      _json["infoType"] = (infoType).toJson();
    }
    if (likelihood != null) {
      _json["likelihood"] = likelihood;
    }
    if (location != null) {
      _json["location"] = (location).toJson();
    }
    if (quote != null) {
      _json["quote"] = quote;
    }
    return _json;
  }
}

/// Buckets values based on fixed size ranges. The
/// Bucketing transformation can provide all of this functionality,
/// but requires more configuration. This message is provided as a convenience
/// to
/// the user for simple bucketing strategies.
/// The resulting value will be a hyphenated string of
/// lower_bound-upper_bound.
/// This can be used on data of type: double, long.
/// If the bound Value type differs from the type of data
/// being transformed, we will first attempt converting the type of the data to
/// be transformed to match the type of the bound before comparing.
class GooglePrivacyDlpV2beta1FixedSizeBucketingConfig {
  /// Size of each bucket (except for minimum and maximum buckets). So if
  /// `lower_bound` = 10, `upper_bound` = 89, and `bucket_size` = 10, then the
  /// following buckets would be used: -10, 10-20, 20-30, 30-40, 40-50, 50-60,
  /// 60-70, 70-80, 80-89, 89+. Precision up to 2 decimals works. [Required].
  core.double bucketSize;

  /// Lower bound value of buckets. All values less than `lower_bound` are
  /// grouped together into a single bucket; for example if `lower_bound` = 10,
  /// then all values less than 10 are replaced with the value “-10”.
  /// [Required].
  GooglePrivacyDlpV2beta1Value lowerBound;

  /// Upper bound value of buckets. All values greater than upper_bound are
  /// grouped together into a single bucket; for example if `upper_bound` = 89,
  /// then all values greater than 89 are replaced with the value “89+”.
  /// [Required].
  GooglePrivacyDlpV2beta1Value upperBound;

  GooglePrivacyDlpV2beta1FixedSizeBucketingConfig();

  GooglePrivacyDlpV2beta1FixedSizeBucketingConfig.fromJson(core.Map _json) {
    if (_json.containsKey("bucketSize")) {
      bucketSize = _json["bucketSize"].toDouble();
    }
    if (_json.containsKey("lowerBound")) {
      lowerBound =
          new GooglePrivacyDlpV2beta1Value.fromJson(_json["lowerBound"]);
    }
    if (_json.containsKey("upperBound")) {
      upperBound =
          new GooglePrivacyDlpV2beta1Value.fromJson(_json["upperBound"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (bucketSize != null) {
      _json["bucketSize"] = bucketSize;
    }
    if (lowerBound != null) {
      _json["lowerBound"] = (lowerBound).toJson();
    }
    if (upperBound != null) {
      _json["upperBound"] = (upperBound).toJson();
    }
    return _json;
  }
}

/// Bounding box encompassing detected text within an image.
class GooglePrivacyDlpV2beta1ImageLocation {
  /// Height of the bounding box in pixels.
  core.int height;

  /// Left coordinate of the bounding box. (0,0) is upper left.
  core.int left;

  /// Top coordinate of the bounding box. (0,0) is upper left.
  core.int top;

  /// Width of the bounding box in pixels.
  core.int width;

  GooglePrivacyDlpV2beta1ImageLocation();

  GooglePrivacyDlpV2beta1ImageLocation.fromJson(core.Map _json) {
    if (_json.containsKey("height")) {
      height = _json["height"];
    }
    if (_json.containsKey("left")) {
      left = _json["left"];
    }
    if (_json.containsKey("top")) {
      top = _json["top"];
    }
    if (_json.containsKey("width")) {
      width = _json["width"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (height != null) {
      _json["height"] = height;
    }
    if (left != null) {
      _json["left"] = left;
    }
    if (top != null) {
      _json["top"] = top;
    }
    if (width != null) {
      _json["width"] = width;
    }
    return _json;
  }
}

/// Configuration for determining how redaction of images should occur.
class GooglePrivacyDlpV2beta1ImageRedactionConfig {
  /// Only one per info_type should be provided per request. If not
  /// specified, and redact_all_text is false, the DLP API will redact all
  /// text that it matches against all info_types that are found, but not
  /// specified in another ImageRedactionConfig.
  GooglePrivacyDlpV2beta1InfoType infoType;

  /// If true, all text found in the image, regardless whether it matches an
  /// info_type, is redacted.
  core.bool redactAllText;

  /// The color to use when redacting content from an image. If not specified,
  /// the default is black.
  GooglePrivacyDlpV2beta1Color redactionColor;

  GooglePrivacyDlpV2beta1ImageRedactionConfig();

  GooglePrivacyDlpV2beta1ImageRedactionConfig.fromJson(core.Map _json) {
    if (_json.containsKey("infoType")) {
      infoType =
          new GooglePrivacyDlpV2beta1InfoType.fromJson(_json["infoType"]);
    }
    if (_json.containsKey("redactAllText")) {
      redactAllText = _json["redactAllText"];
    }
    if (_json.containsKey("redactionColor")) {
      redactionColor =
          new GooglePrivacyDlpV2beta1Color.fromJson(_json["redactionColor"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (infoType != null) {
      _json["infoType"] = (infoType).toJson();
    }
    if (redactAllText != null) {
      _json["redactAllText"] = redactAllText;
    }
    if (redactionColor != null) {
      _json["redactionColor"] = (redactionColor).toJson();
    }
    return _json;
  }
}

/// Type of information detected by the API.
class GooglePrivacyDlpV2beta1InfoType {
  /// Name of the information type.
  core.String name;

  GooglePrivacyDlpV2beta1InfoType();

  GooglePrivacyDlpV2beta1InfoType.fromJson(core.Map _json) {
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (name != null) {
      _json["name"] = name;
    }
    return _json;
  }
}

/// Description of the information type (infoType).
class GooglePrivacyDlpV2beta1InfoTypeDescription {
  /// List of categories this infoType belongs to.
  core.List<GooglePrivacyDlpV2beta1CategoryDescription> categories;

  /// Human readable form of the infoType name.
  core.String displayName;

  /// Internal name of the infoType.
  core.String name;

  GooglePrivacyDlpV2beta1InfoTypeDescription();

  GooglePrivacyDlpV2beta1InfoTypeDescription.fromJson(core.Map _json) {
    if (_json.containsKey("categories")) {
      categories = (_json["categories"] as core.List)
          .map<GooglePrivacyDlpV2beta1CategoryDescription>((value) =>
              new GooglePrivacyDlpV2beta1CategoryDescription.fromJson(value))
          .toList();
    }
    if (_json.containsKey("displayName")) {
      displayName = _json["displayName"];
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (categories != null) {
      _json["categories"] =
          categories.map((value) => (value).toJson()).toList();
    }
    if (displayName != null) {
      _json["displayName"] = displayName;
    }
    if (name != null) {
      _json["name"] = name;
    }
    return _json;
  }
}

/// Max findings configuration per info type, per content item or long running
/// operation.
class GooglePrivacyDlpV2beta1InfoTypeLimit {
  /// Type of information the findings limit applies to. Only one limit per
  /// info_type should be provided. If InfoTypeLimit does not have an
  /// info_type, the DLP API applies the limit against all info_types that are
  /// found but not specified in another InfoTypeLimit.
  GooglePrivacyDlpV2beta1InfoType infoType;

  /// Max findings limit for the given infoType.
  core.int maxFindings;

  GooglePrivacyDlpV2beta1InfoTypeLimit();

  GooglePrivacyDlpV2beta1InfoTypeLimit.fromJson(core.Map _json) {
    if (_json.containsKey("infoType")) {
      infoType =
          new GooglePrivacyDlpV2beta1InfoType.fromJson(_json["infoType"]);
    }
    if (_json.containsKey("maxFindings")) {
      maxFindings = _json["maxFindings"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (infoType != null) {
      _json["infoType"] = (infoType).toJson();
    }
    if (maxFindings != null) {
      _json["maxFindings"] = maxFindings;
    }
    return _json;
  }
}

/// Statistics regarding a specific InfoType.
class GooglePrivacyDlpV2beta1InfoTypeStatistics {
  /// Number of findings for this info type.
  core.String count;

  /// The type of finding this stat is for.
  GooglePrivacyDlpV2beta1InfoType infoType;

  GooglePrivacyDlpV2beta1InfoTypeStatistics();

  GooglePrivacyDlpV2beta1InfoTypeStatistics.fromJson(core.Map _json) {
    if (_json.containsKey("count")) {
      count = _json["count"];
    }
    if (_json.containsKey("infoType")) {
      infoType =
          new GooglePrivacyDlpV2beta1InfoType.fromJson(_json["infoType"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (count != null) {
      _json["count"] = count;
    }
    if (infoType != null) {
      _json["infoType"] = (infoType).toJson();
    }
    return _json;
  }
}

/// A transformation to apply to text that is identified as a specific
/// info_type.
class GooglePrivacyDlpV2beta1InfoTypeTransformation {
  /// Info types to apply the transformation to. Empty list will match all
  /// available info types for this transformation.
  core.List<GooglePrivacyDlpV2beta1InfoType> infoTypes;

  /// Primitive transformation to apply to the info type. [required]
  GooglePrivacyDlpV2beta1PrimitiveTransformation primitiveTransformation;

  GooglePrivacyDlpV2beta1InfoTypeTransformation();

  GooglePrivacyDlpV2beta1InfoTypeTransformation.fromJson(core.Map _json) {
    if (_json.containsKey("infoTypes")) {
      infoTypes = (_json["infoTypes"] as core.List)
          .map<GooglePrivacyDlpV2beta1InfoType>(
              (value) => new GooglePrivacyDlpV2beta1InfoType.fromJson(value))
          .toList();
    }
    if (_json.containsKey("primitiveTransformation")) {
      primitiveTransformation =
          new GooglePrivacyDlpV2beta1PrimitiveTransformation.fromJson(
              _json["primitiveTransformation"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (infoTypes != null) {
      _json["infoTypes"] = infoTypes.map((value) => (value).toJson()).toList();
    }
    if (primitiveTransformation != null) {
      _json["primitiveTransformation"] = (primitiveTransformation).toJson();
    }
    return _json;
  }
}

/// A type of transformation that will scan unstructured text and
/// apply various `PrimitiveTransformation`s to each finding, where the
/// transformation is applied to only values that were identified as a specific
/// info_type.
class GooglePrivacyDlpV2beta1InfoTypeTransformations {
  /// Transformation for each info type. Cannot specify more than one
  /// for a given info type. [required]
  core.List<GooglePrivacyDlpV2beta1InfoTypeTransformation> transformations;

  GooglePrivacyDlpV2beta1InfoTypeTransformations();

  GooglePrivacyDlpV2beta1InfoTypeTransformations.fromJson(core.Map _json) {
    if (_json.containsKey("transformations")) {
      transformations = (_json["transformations"] as core.List)
          .map<GooglePrivacyDlpV2beta1InfoTypeTransformation>((value) =>
              new GooglePrivacyDlpV2beta1InfoTypeTransformation.fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (transformations != null) {
      _json["transformations"] =
          transformations.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

/// Configuration description of the scanning process.
/// When used with redactContent only info_types and min_likelihood are
/// currently
/// used.
class GooglePrivacyDlpV2beta1InspectConfig {
  /// Custom info types provided by the user.
  core.List<GooglePrivacyDlpV2beta1CustomInfoType> customInfoTypes;

  /// When true, excludes type information of the findings.
  core.bool excludeTypes;

  /// When true, a contextual quote from the data that triggered a finding is
  /// included in the response; see Finding.quote.
  core.bool includeQuote;

  /// Configuration of findings limit given for specified info types.
  core.List<GooglePrivacyDlpV2beta1InfoTypeLimit> infoTypeLimits;

  /// Restricts what info_types to look for. The values must correspond to
  /// InfoType values returned by ListInfoTypes or found in documentation.
  /// Empty info_types runs all enabled detectors.
  core.List<GooglePrivacyDlpV2beta1InfoType> infoTypes;

  /// Limits the number of findings per content item or long running operation.
  core.int maxFindings;

  /// Only returns findings equal or above this threshold.
  /// Possible string values are:
  /// - "LIKELIHOOD_UNSPECIFIED" : Default value; information with all
  /// likelihoods is included.
  /// - "VERY_UNLIKELY" : Few matching elements.
  /// - "UNLIKELY"
  /// - "POSSIBLE" : Some matching elements.
  /// - "LIKELY"
  /// - "VERY_LIKELY" : Many matching elements.
  core.String minLikelihood;

  GooglePrivacyDlpV2beta1InspectConfig();

  GooglePrivacyDlpV2beta1InspectConfig.fromJson(core.Map _json) {
    if (_json.containsKey("customInfoTypes")) {
      customInfoTypes = (_json["customInfoTypes"] as core.List)
          .map<GooglePrivacyDlpV2beta1CustomInfoType>((value) =>
              new GooglePrivacyDlpV2beta1CustomInfoType.fromJson(value))
          .toList();
    }
    if (_json.containsKey("excludeTypes")) {
      excludeTypes = _json["excludeTypes"];
    }
    if (_json.containsKey("includeQuote")) {
      includeQuote = _json["includeQuote"];
    }
    if (_json.containsKey("infoTypeLimits")) {
      infoTypeLimits = (_json["infoTypeLimits"] as core.List)
          .map<GooglePrivacyDlpV2beta1InfoTypeLimit>((value) =>
              new GooglePrivacyDlpV2beta1InfoTypeLimit.fromJson(value))
          .toList();
    }
    if (_json.containsKey("infoTypes")) {
      infoTypes = (_json["infoTypes"] as core.List)
          .map<GooglePrivacyDlpV2beta1InfoType>(
              (value) => new GooglePrivacyDlpV2beta1InfoType.fromJson(value))
          .toList();
    }
    if (_json.containsKey("maxFindings")) {
      maxFindings = _json["maxFindings"];
    }
    if (_json.containsKey("minLikelihood")) {
      minLikelihood = _json["minLikelihood"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (customInfoTypes != null) {
      _json["customInfoTypes"] =
          customInfoTypes.map((value) => (value).toJson()).toList();
    }
    if (excludeTypes != null) {
      _json["excludeTypes"] = excludeTypes;
    }
    if (includeQuote != null) {
      _json["includeQuote"] = includeQuote;
    }
    if (infoTypeLimits != null) {
      _json["infoTypeLimits"] =
          infoTypeLimits.map((value) => (value).toJson()).toList();
    }
    if (infoTypes != null) {
      _json["infoTypes"] = infoTypes.map((value) => (value).toJson()).toList();
    }
    if (maxFindings != null) {
      _json["maxFindings"] = maxFindings;
    }
    if (minLikelihood != null) {
      _json["minLikelihood"] = minLikelihood;
    }
    return _json;
  }
}

/// Request to search for potentially sensitive info in a list of items.
class GooglePrivacyDlpV2beta1InspectContentRequest {
  /// Configuration for the inspector.
  GooglePrivacyDlpV2beta1InspectConfig inspectConfig;

  /// The list of items to inspect. Items in a single request are
  /// considered "related" unless inspect_config.independent_inputs is true.
  /// Up to 100 are allowed per request.
  core.List<GooglePrivacyDlpV2beta1ContentItem> items;

  GooglePrivacyDlpV2beta1InspectContentRequest();

  GooglePrivacyDlpV2beta1InspectContentRequest.fromJson(core.Map _json) {
    if (_json.containsKey("inspectConfig")) {
      inspectConfig = new GooglePrivacyDlpV2beta1InspectConfig.fromJson(
          _json["inspectConfig"]);
    }
    if (_json.containsKey("items")) {
      items = (_json["items"] as core.List)
          .map<GooglePrivacyDlpV2beta1ContentItem>(
              (value) => new GooglePrivacyDlpV2beta1ContentItem.fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (inspectConfig != null) {
      _json["inspectConfig"] = (inspectConfig).toJson();
    }
    if (items != null) {
      _json["items"] = items.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

/// Results of inspecting a list of items.
class GooglePrivacyDlpV2beta1InspectContentResponse {
  /// Each content_item from the request has a result in this list, in the
  /// same order as the request.
  core.List<GooglePrivacyDlpV2beta1InspectResult> results;

  GooglePrivacyDlpV2beta1InspectContentResponse();

  GooglePrivacyDlpV2beta1InspectContentResponse.fromJson(core.Map _json) {
    if (_json.containsKey("results")) {
      results = (_json["results"] as core.List)
          .map<GooglePrivacyDlpV2beta1InspectResult>((value) =>
              new GooglePrivacyDlpV2beta1InspectResult.fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (results != null) {
      _json["results"] = results.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

/// Metadata returned within GetOperation for an inspect request.
class GooglePrivacyDlpV2beta1InspectOperationMetadata {
  /// The time which this request was started.
  core.String createTime;
  core.List<GooglePrivacyDlpV2beta1InfoTypeStatistics> infoTypeStats;

  /// Total size in bytes that were processed.
  core.String processedBytes;

  /// The inspect config used to create the Operation.
  GooglePrivacyDlpV2beta1InspectConfig requestInspectConfig;

  /// Optional location to store findings.
  GooglePrivacyDlpV2beta1OutputStorageConfig requestOutputConfig;

  /// The storage config used to create the Operation.
  GooglePrivacyDlpV2beta1StorageConfig requestStorageConfig;

  /// Estimate of the number of bytes to process.
  core.String totalEstimatedBytes;

  GooglePrivacyDlpV2beta1InspectOperationMetadata();

  GooglePrivacyDlpV2beta1InspectOperationMetadata.fromJson(core.Map _json) {
    if (_json.containsKey("createTime")) {
      createTime = _json["createTime"];
    }
    if (_json.containsKey("infoTypeStats")) {
      infoTypeStats = (_json["infoTypeStats"] as core.List)
          .map<GooglePrivacyDlpV2beta1InfoTypeStatistics>((value) =>
              new GooglePrivacyDlpV2beta1InfoTypeStatistics.fromJson(value))
          .toList();
    }
    if (_json.containsKey("processedBytes")) {
      processedBytes = _json["processedBytes"];
    }
    if (_json.containsKey("requestInspectConfig")) {
      requestInspectConfig = new GooglePrivacyDlpV2beta1InspectConfig.fromJson(
          _json["requestInspectConfig"]);
    }
    if (_json.containsKey("requestOutputConfig")) {
      requestOutputConfig =
          new GooglePrivacyDlpV2beta1OutputStorageConfig.fromJson(
              _json["requestOutputConfig"]);
    }
    if (_json.containsKey("requestStorageConfig")) {
      requestStorageConfig = new GooglePrivacyDlpV2beta1StorageConfig.fromJson(
          _json["requestStorageConfig"]);
    }
    if (_json.containsKey("totalEstimatedBytes")) {
      totalEstimatedBytes = _json["totalEstimatedBytes"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (createTime != null) {
      _json["createTime"] = createTime;
    }
    if (infoTypeStats != null) {
      _json["infoTypeStats"] =
          infoTypeStats.map((value) => (value).toJson()).toList();
    }
    if (processedBytes != null) {
      _json["processedBytes"] = processedBytes;
    }
    if (requestInspectConfig != null) {
      _json["requestInspectConfig"] = (requestInspectConfig).toJson();
    }
    if (requestOutputConfig != null) {
      _json["requestOutputConfig"] = (requestOutputConfig).toJson();
    }
    if (requestStorageConfig != null) {
      _json["requestStorageConfig"] = (requestStorageConfig).toJson();
    }
    if (totalEstimatedBytes != null) {
      _json["totalEstimatedBytes"] = totalEstimatedBytes;
    }
    return _json;
  }
}

/// The operational data.
class GooglePrivacyDlpV2beta1InspectOperationResult {
  /// The server-assigned name, which is only unique within the same service
  /// that
  /// originally returns it. If you use the default HTTP mapping, the
  /// `name` should have the format of `inspect/results/{id}`.
  core.String name;

  GooglePrivacyDlpV2beta1InspectOperationResult();

  GooglePrivacyDlpV2beta1InspectOperationResult.fromJson(core.Map _json) {
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (name != null) {
      _json["name"] = name;
    }
    return _json;
  }
}

/// All the findings for a single scanned item.
class GooglePrivacyDlpV2beta1InspectResult {
  /// List of findings for an item.
  core.List<GooglePrivacyDlpV2beta1Finding> findings;

  /// If true, then this item might have more findings than were returned,
  /// and the findings returned are an arbitrary subset of all findings.
  /// The findings list might be truncated because the input items were too
  /// large, or because the server reached the maximum amount of resources
  /// allowed for a single API call. For best results, divide the input into
  /// smaller batches.
  core.bool findingsTruncated;

  GooglePrivacyDlpV2beta1InspectResult();

  GooglePrivacyDlpV2beta1InspectResult.fromJson(core.Map _json) {
    if (_json.containsKey("findings")) {
      findings = (_json["findings"] as core.List)
          .map<GooglePrivacyDlpV2beta1Finding>(
              (value) => new GooglePrivacyDlpV2beta1Finding.fromJson(value))
          .toList();
    }
    if (_json.containsKey("findingsTruncated")) {
      findingsTruncated = _json["findingsTruncated"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (findings != null) {
      _json["findings"] = findings.map((value) => (value).toJson()).toList();
    }
    if (findingsTruncated != null) {
      _json["findingsTruncated"] = findingsTruncated;
    }
    return _json;
  }
}

/// k-anonymity metric, used for analysis of reidentification risk.
class GooglePrivacyDlpV2beta1KAnonymityConfig {
  /// Optional message indicating that each distinct entity_id should not
  /// contribute to the k-anonymity count more than once per equivalence class.
  /// If an entity_id appears on several rows with different quasi-identifier
  /// tuples, it will contribute to each count exactly once.
  ///
  /// This can lead to unexpected results. Consider a table where ID 1 is
  /// associated to quasi-identifier "foo", ID 2 to "bar", and ID 3 to *both*
  /// quasi-identifiers "foo" and "bar" (on separate rows), and where this ID
  /// is used as entity_id. Then, the anonymity value associated to ID 3 will
  /// be 2, even if it is the only ID to be associated to both values "foo" and
  /// "bar".
  GooglePrivacyDlpV2beta1EntityId entityId;

  /// Set of fields to compute k-anonymity over. When multiple fields are
  /// specified, they are considered a single composite key. Structs and
  /// repeated data types are not supported; however, nested fields are
  /// supported so long as they are not structs themselves or nested within
  /// a repeated field.
  core.List<GooglePrivacyDlpV2beta1FieldId> quasiIds;

  GooglePrivacyDlpV2beta1KAnonymityConfig();

  GooglePrivacyDlpV2beta1KAnonymityConfig.fromJson(core.Map _json) {
    if (_json.containsKey("entityId")) {
      entityId =
          new GooglePrivacyDlpV2beta1EntityId.fromJson(_json["entityId"]);
    }
    if (_json.containsKey("quasiIds")) {
      quasiIds = (_json["quasiIds"] as core.List)
          .map<GooglePrivacyDlpV2beta1FieldId>(
              (value) => new GooglePrivacyDlpV2beta1FieldId.fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (entityId != null) {
      _json["entityId"] = (entityId).toJson();
    }
    if (quasiIds != null) {
      _json["quasiIds"] = quasiIds.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

/// The set of columns' values that share the same k-anonymity value.
class GooglePrivacyDlpV2beta1KAnonymityEquivalenceClass {
  /// Size of the equivalence class, for example number of rows with the
  /// above set of values.
  core.String equivalenceClassSize;

  /// Set of values defining the equivalence class. One value per
  /// quasi-identifier column in the original KAnonymity metric message.
  /// The order is always the same as the original request.
  core.List<GooglePrivacyDlpV2beta1Value> quasiIdsValues;

  GooglePrivacyDlpV2beta1KAnonymityEquivalenceClass();

  GooglePrivacyDlpV2beta1KAnonymityEquivalenceClass.fromJson(core.Map _json) {
    if (_json.containsKey("equivalenceClassSize")) {
      equivalenceClassSize = _json["equivalenceClassSize"];
    }
    if (_json.containsKey("quasiIdsValues")) {
      quasiIdsValues = (_json["quasiIdsValues"] as core.List)
          .map<GooglePrivacyDlpV2beta1Value>(
              (value) => new GooglePrivacyDlpV2beta1Value.fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (equivalenceClassSize != null) {
      _json["equivalenceClassSize"] = equivalenceClassSize;
    }
    if (quasiIdsValues != null) {
      _json["quasiIdsValues"] =
          quasiIdsValues.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

/// Histogram bucket of equivalence class sizes in the table.
class GooglePrivacyDlpV2beta1KAnonymityHistogramBucket {
  /// Total number of records in this bucket.
  core.String bucketSize;

  /// Sample of equivalence classes in this bucket. The total number of
  /// classes returned per bucket is capped at 20.
  core.List<GooglePrivacyDlpV2beta1KAnonymityEquivalenceClass> bucketValues;

  /// Lower bound on the size of the equivalence classes in this bucket.
  core.String equivalenceClassSizeLowerBound;

  /// Upper bound on the size of the equivalence classes in this bucket.
  core.String equivalenceClassSizeUpperBound;

  GooglePrivacyDlpV2beta1KAnonymityHistogramBucket();

  GooglePrivacyDlpV2beta1KAnonymityHistogramBucket.fromJson(core.Map _json) {
    if (_json.containsKey("bucketSize")) {
      bucketSize = _json["bucketSize"];
    }
    if (_json.containsKey("bucketValues")) {
      bucketValues = (_json["bucketValues"] as core.List)
          .map<GooglePrivacyDlpV2beta1KAnonymityEquivalenceClass>((value) =>
              new GooglePrivacyDlpV2beta1KAnonymityEquivalenceClass.fromJson(
                  value))
          .toList();
    }
    if (_json.containsKey("equivalenceClassSizeLowerBound")) {
      equivalenceClassSizeLowerBound = _json["equivalenceClassSizeLowerBound"];
    }
    if (_json.containsKey("equivalenceClassSizeUpperBound")) {
      equivalenceClassSizeUpperBound = _json["equivalenceClassSizeUpperBound"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (bucketSize != null) {
      _json["bucketSize"] = bucketSize;
    }
    if (bucketValues != null) {
      _json["bucketValues"] =
          bucketValues.map((value) => (value).toJson()).toList();
    }
    if (equivalenceClassSizeLowerBound != null) {
      _json["equivalenceClassSizeLowerBound"] = equivalenceClassSizeLowerBound;
    }
    if (equivalenceClassSizeUpperBound != null) {
      _json["equivalenceClassSizeUpperBound"] = equivalenceClassSizeUpperBound;
    }
    return _json;
  }
}

/// Result of the k-anonymity computation.
class GooglePrivacyDlpV2beta1KAnonymityResult {
  /// Histogram of k-anonymity equivalence classes.
  core.List<GooglePrivacyDlpV2beta1KAnonymityHistogramBucket>
      equivalenceClassHistogramBuckets;

  GooglePrivacyDlpV2beta1KAnonymityResult();

  GooglePrivacyDlpV2beta1KAnonymityResult.fromJson(core.Map _json) {
    if (_json.containsKey("equivalenceClassHistogramBuckets")) {
      equivalenceClassHistogramBuckets =
          (_json["equivalenceClassHistogramBuckets"] as core.List)
              .map<GooglePrivacyDlpV2beta1KAnonymityHistogramBucket>((value) =>
                  new GooglePrivacyDlpV2beta1KAnonymityHistogramBucket.fromJson(
                      value))
              .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (equivalenceClassHistogramBuckets != null) {
      _json["equivalenceClassHistogramBuckets"] =
          equivalenceClassHistogramBuckets
              .map((value) => (value).toJson())
              .toList();
    }
    return _json;
  }
}

/// Reidentifiability metric. This corresponds to a risk model similar to what
/// is called "journalist risk" in the literature, except the attack dataset is
/// statistically modeled instead of being perfectly known. This can be done
/// using publicly available data (like the US Census), or using a custom
/// statistical model (indicated as one or several BigQuery tables), or by
/// extrapolating from the distribution of values in the input dataset.
class GooglePrivacyDlpV2beta1KMapEstimationConfig {
  /// Several auxiliary tables can be used in the analysis. Each custom_tag
  /// used to tag a quasi-identifiers column must appear in exactly one column
  /// of one auxiliary table.
  core.List<GooglePrivacyDlpV2beta1AuxiliaryTable> auxiliaryTables;

  /// Fields considered to be quasi-identifiers. No two columns can have the
  /// same tag. [required]
  core.List<GooglePrivacyDlpV2beta1TaggedField> quasiIds;

  /// ISO 3166-1 alpha-2 region code to use in the statistical modeling.
  /// Required if no column is tagged with a region-specific InfoType (like
  /// US_ZIP_5) or a region code.
  core.String regionCode;

  GooglePrivacyDlpV2beta1KMapEstimationConfig();

  GooglePrivacyDlpV2beta1KMapEstimationConfig.fromJson(core.Map _json) {
    if (_json.containsKey("auxiliaryTables")) {
      auxiliaryTables = (_json["auxiliaryTables"] as core.List)
          .map<GooglePrivacyDlpV2beta1AuxiliaryTable>((value) =>
              new GooglePrivacyDlpV2beta1AuxiliaryTable.fromJson(value))
          .toList();
    }
    if (_json.containsKey("quasiIds")) {
      quasiIds = (_json["quasiIds"] as core.List)
          .map<GooglePrivacyDlpV2beta1TaggedField>(
              (value) => new GooglePrivacyDlpV2beta1TaggedField.fromJson(value))
          .toList();
    }
    if (_json.containsKey("regionCode")) {
      regionCode = _json["regionCode"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (auxiliaryTables != null) {
      _json["auxiliaryTables"] =
          auxiliaryTables.map((value) => (value).toJson()).toList();
    }
    if (quasiIds != null) {
      _json["quasiIds"] = quasiIds.map((value) => (value).toJson()).toList();
    }
    if (regionCode != null) {
      _json["regionCode"] = regionCode;
    }
    return _json;
  }
}

/// A KMapEstimationHistogramBucket message with the following values:
///   min_anonymity: 3
///   max_anonymity: 5
///   frequency: 42
/// means that there are 42 records whose quasi-identifier values correspond
/// to 3, 4 or 5 people in the overlying population. An important particular
/// case is when min_anonymity = max_anonymity = 1: the frequency field then
/// corresponds to the number of uniquely identifiable records.
class GooglePrivacyDlpV2beta1KMapEstimationHistogramBucket {
  /// Number of records within these anonymity bounds.
  core.String bucketSize;

  /// Sample of quasi-identifier tuple values in this bucket. The total
  /// number of classes returned per bucket is capped at 20.
  core.List<GooglePrivacyDlpV2beta1KMapEstimationQuasiIdValues> bucketValues;

  /// Always greater than or equal to min_anonymity.
  core.String maxAnonymity;

  /// Always positive.
  core.String minAnonymity;

  GooglePrivacyDlpV2beta1KMapEstimationHistogramBucket();

  GooglePrivacyDlpV2beta1KMapEstimationHistogramBucket.fromJson(
      core.Map _json) {
    if (_json.containsKey("bucketSize")) {
      bucketSize = _json["bucketSize"];
    }
    if (_json.containsKey("bucketValues")) {
      bucketValues = (_json["bucketValues"] as core.List)
          .map<GooglePrivacyDlpV2beta1KMapEstimationQuasiIdValues>((value) =>
              new GooglePrivacyDlpV2beta1KMapEstimationQuasiIdValues.fromJson(
                  value))
          .toList();
    }
    if (_json.containsKey("maxAnonymity")) {
      maxAnonymity = _json["maxAnonymity"];
    }
    if (_json.containsKey("minAnonymity")) {
      minAnonymity = _json["minAnonymity"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (bucketSize != null) {
      _json["bucketSize"] = bucketSize;
    }
    if (bucketValues != null) {
      _json["bucketValues"] =
          bucketValues.map((value) => (value).toJson()).toList();
    }
    if (maxAnonymity != null) {
      _json["maxAnonymity"] = maxAnonymity;
    }
    if (minAnonymity != null) {
      _json["minAnonymity"] = minAnonymity;
    }
    return _json;
  }
}

/// A tuple of values for the quasi-identifier columns.
class GooglePrivacyDlpV2beta1KMapEstimationQuasiIdValues {
  /// The estimated anonymity for these quasi-identifier values.
  core.String estimatedAnonymity;

  /// The quasi-identifier values.
  core.List<GooglePrivacyDlpV2beta1Value> quasiIdsValues;

  GooglePrivacyDlpV2beta1KMapEstimationQuasiIdValues();

  GooglePrivacyDlpV2beta1KMapEstimationQuasiIdValues.fromJson(core.Map _json) {
    if (_json.containsKey("estimatedAnonymity")) {
      estimatedAnonymity = _json["estimatedAnonymity"];
    }
    if (_json.containsKey("quasiIdsValues")) {
      quasiIdsValues = (_json["quasiIdsValues"] as core.List)
          .map<GooglePrivacyDlpV2beta1Value>(
              (value) => new GooglePrivacyDlpV2beta1Value.fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (estimatedAnonymity != null) {
      _json["estimatedAnonymity"] = estimatedAnonymity;
    }
    if (quasiIdsValues != null) {
      _json["quasiIdsValues"] =
          quasiIdsValues.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

/// Result of the reidentifiability analysis. Note that these results are an
/// estimation, not exact values.
class GooglePrivacyDlpV2beta1KMapEstimationResult {
  /// The intervals [min_anonymity, max_anonymity] do not overlap. If a value
  /// doesn't correspond to any such interval, the associated frequency is
  /// zero. For example, the following records:
  ///   {min_anonymity: 1, max_anonymity: 1, frequency: 17}
  ///   {min_anonymity: 2, max_anonymity: 3, frequency: 42}
  ///   {min_anonymity: 5, max_anonymity: 10, frequency: 99}
  /// mean that there are no record with an estimated anonymity of 4, 5, or
  /// larger than 10.
  core.List<GooglePrivacyDlpV2beta1KMapEstimationHistogramBucket>
      kMapEstimationHistogram;

  GooglePrivacyDlpV2beta1KMapEstimationResult();

  GooglePrivacyDlpV2beta1KMapEstimationResult.fromJson(core.Map _json) {
    if (_json.containsKey("kMapEstimationHistogram")) {
      kMapEstimationHistogram = (_json["kMapEstimationHistogram"] as core.List)
          .map<GooglePrivacyDlpV2beta1KMapEstimationHistogramBucket>((value) =>
              new GooglePrivacyDlpV2beta1KMapEstimationHistogramBucket.fromJson(
                  value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (kMapEstimationHistogram != null) {
      _json["kMapEstimationHistogram"] =
          kMapEstimationHistogram.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

/// A unique identifier for a Datastore entity.
/// If a key's partition ID or any of its path kinds or names are
/// reserved/read-only, the key is reserved/read-only.
/// A reserved/read-only key is forbidden in certain documented contexts.
class GooglePrivacyDlpV2beta1Key {
  /// Entities are partitioned into subsets, currently identified by a project
  /// ID and namespace ID.
  /// Queries are scoped to a single partition.
  GooglePrivacyDlpV2beta1PartitionId partitionId;

  /// The entity path.
  /// An entity path consists of one or more elements composed of a kind and a
  /// string or numerical identifier, which identify entities. The first
  /// element identifies a _root entity_, the second element identifies
  /// a _child_ of the root entity, the third element identifies a child of the
  /// second entity, and so forth. The entities identified by all prefixes of
  /// the path are called the element's _ancestors_.
  ///
  /// A path can never be empty, and a path can have at most 100 elements.
  core.List<GooglePrivacyDlpV2beta1PathElement> path;

  GooglePrivacyDlpV2beta1Key();

  GooglePrivacyDlpV2beta1Key.fromJson(core.Map _json) {
    if (_json.containsKey("partitionId")) {
      partitionId =
          new GooglePrivacyDlpV2beta1PartitionId.fromJson(_json["partitionId"]);
    }
    if (_json.containsKey("path")) {
      path = (_json["path"] as core.List)
          .map<GooglePrivacyDlpV2beta1PathElement>(
              (value) => new GooglePrivacyDlpV2beta1PathElement.fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (partitionId != null) {
      _json["partitionId"] = (partitionId).toJson();
    }
    if (path != null) {
      _json["path"] = path.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

/// A representation of a Datastore kind.
class GooglePrivacyDlpV2beta1KindExpression {
  /// The name of the kind.
  core.String name;

  GooglePrivacyDlpV2beta1KindExpression();

  GooglePrivacyDlpV2beta1KindExpression.fromJson(core.Map _json) {
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (name != null) {
      _json["name"] = name;
    }
    return _json;
  }
}

/// Include to use an existing data crypto key wrapped by KMS.
/// Authorization requires the following IAM permissions when sending a request
/// to perform a crypto transformation using a kms-wrapped crypto key:
/// dlp.kms.encrypt
class GooglePrivacyDlpV2beta1KmsWrappedCryptoKey {
  /// The resource name of the KMS CryptoKey to use for unwrapping. [required]
  core.String cryptoKeyName;

  /// The wrapped data crypto key. [required]
  core.String wrappedKey;
  core.List<core.int> get wrappedKeyAsBytes {
    return convert.base64.decode(wrappedKey);
  }

  void set wrappedKeyAsBytes(core.List<core.int> _bytes) {
    wrappedKey =
        convert.base64.encode(_bytes).replaceAll("/", "_").replaceAll("+", "-");
  }

  GooglePrivacyDlpV2beta1KmsWrappedCryptoKey();

  GooglePrivacyDlpV2beta1KmsWrappedCryptoKey.fromJson(core.Map _json) {
    if (_json.containsKey("cryptoKeyName")) {
      cryptoKeyName = _json["cryptoKeyName"];
    }
    if (_json.containsKey("wrappedKey")) {
      wrappedKey = _json["wrappedKey"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (cryptoKeyName != null) {
      _json["cryptoKeyName"] = cryptoKeyName;
    }
    if (wrappedKey != null) {
      _json["wrappedKey"] = wrappedKey;
    }
    return _json;
  }
}

/// l-diversity metric, used for analysis of reidentification risk.
class GooglePrivacyDlpV2beta1LDiversityConfig {
  /// Set of quasi-identifiers indicating how equivalence classes are
  /// defined for the l-diversity computation. When multiple fields are
  /// specified, they are considered a single composite key.
  core.List<GooglePrivacyDlpV2beta1FieldId> quasiIds;

  /// Sensitive field for computing the l-value.
  GooglePrivacyDlpV2beta1FieldId sensitiveAttribute;

  GooglePrivacyDlpV2beta1LDiversityConfig();

  GooglePrivacyDlpV2beta1LDiversityConfig.fromJson(core.Map _json) {
    if (_json.containsKey("quasiIds")) {
      quasiIds = (_json["quasiIds"] as core.List)
          .map<GooglePrivacyDlpV2beta1FieldId>(
              (value) => new GooglePrivacyDlpV2beta1FieldId.fromJson(value))
          .toList();
    }
    if (_json.containsKey("sensitiveAttribute")) {
      sensitiveAttribute = new GooglePrivacyDlpV2beta1FieldId.fromJson(
          _json["sensitiveAttribute"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (quasiIds != null) {
      _json["quasiIds"] = quasiIds.map((value) => (value).toJson()).toList();
    }
    if (sensitiveAttribute != null) {
      _json["sensitiveAttribute"] = (sensitiveAttribute).toJson();
    }
    return _json;
  }
}

/// The set of columns' values that share the same l-diversity value.
class GooglePrivacyDlpV2beta1LDiversityEquivalenceClass {
  /// Size of the k-anonymity equivalence class.
  core.String equivalenceClassSize;

  /// Number of distinct sensitive values in this equivalence class.
  core.String numDistinctSensitiveValues;

  /// Quasi-identifier values defining the k-anonymity equivalence
  /// class. The order is always the same as the original request.
  core.List<GooglePrivacyDlpV2beta1Value> quasiIdsValues;

  /// Estimated frequencies of top sensitive values.
  core.List<GooglePrivacyDlpV2beta1ValueFrequency> topSensitiveValues;

  GooglePrivacyDlpV2beta1LDiversityEquivalenceClass();

  GooglePrivacyDlpV2beta1LDiversityEquivalenceClass.fromJson(core.Map _json) {
    if (_json.containsKey("equivalenceClassSize")) {
      equivalenceClassSize = _json["equivalenceClassSize"];
    }
    if (_json.containsKey("numDistinctSensitiveValues")) {
      numDistinctSensitiveValues = _json["numDistinctSensitiveValues"];
    }
    if (_json.containsKey("quasiIdsValues")) {
      quasiIdsValues = (_json["quasiIdsValues"] as core.List)
          .map<GooglePrivacyDlpV2beta1Value>(
              (value) => new GooglePrivacyDlpV2beta1Value.fromJson(value))
          .toList();
    }
    if (_json.containsKey("topSensitiveValues")) {
      topSensitiveValues = (_json["topSensitiveValues"] as core.List)
          .map<GooglePrivacyDlpV2beta1ValueFrequency>((value) =>
              new GooglePrivacyDlpV2beta1ValueFrequency.fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (equivalenceClassSize != null) {
      _json["equivalenceClassSize"] = equivalenceClassSize;
    }
    if (numDistinctSensitiveValues != null) {
      _json["numDistinctSensitiveValues"] = numDistinctSensitiveValues;
    }
    if (quasiIdsValues != null) {
      _json["quasiIdsValues"] =
          quasiIdsValues.map((value) => (value).toJson()).toList();
    }
    if (topSensitiveValues != null) {
      _json["topSensitiveValues"] =
          topSensitiveValues.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

/// Histogram bucket of sensitive value frequencies in the table.
class GooglePrivacyDlpV2beta1LDiversityHistogramBucket {
  /// Total number of records in this bucket.
  core.String bucketSize;

  /// Sample of equivalence classes in this bucket. The total number of
  /// classes returned per bucket is capped at 20.
  core.List<GooglePrivacyDlpV2beta1LDiversityEquivalenceClass> bucketValues;

  /// Lower bound on the sensitive value frequencies of the equivalence
  /// classes in this bucket.
  core.String sensitiveValueFrequencyLowerBound;

  /// Upper bound on the sensitive value frequencies of the equivalence
  /// classes in this bucket.
  core.String sensitiveValueFrequencyUpperBound;

  GooglePrivacyDlpV2beta1LDiversityHistogramBucket();

  GooglePrivacyDlpV2beta1LDiversityHistogramBucket.fromJson(core.Map _json) {
    if (_json.containsKey("bucketSize")) {
      bucketSize = _json["bucketSize"];
    }
    if (_json.containsKey("bucketValues")) {
      bucketValues = (_json["bucketValues"] as core.List)
          .map<GooglePrivacyDlpV2beta1LDiversityEquivalenceClass>((value) =>
              new GooglePrivacyDlpV2beta1LDiversityEquivalenceClass.fromJson(
                  value))
          .toList();
    }
    if (_json.containsKey("sensitiveValueFrequencyLowerBound")) {
      sensitiveValueFrequencyLowerBound =
          _json["sensitiveValueFrequencyLowerBound"];
    }
    if (_json.containsKey("sensitiveValueFrequencyUpperBound")) {
      sensitiveValueFrequencyUpperBound =
          _json["sensitiveValueFrequencyUpperBound"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (bucketSize != null) {
      _json["bucketSize"] = bucketSize;
    }
    if (bucketValues != null) {
      _json["bucketValues"] =
          bucketValues.map((value) => (value).toJson()).toList();
    }
    if (sensitiveValueFrequencyLowerBound != null) {
      _json["sensitiveValueFrequencyLowerBound"] =
          sensitiveValueFrequencyLowerBound;
    }
    if (sensitiveValueFrequencyUpperBound != null) {
      _json["sensitiveValueFrequencyUpperBound"] =
          sensitiveValueFrequencyUpperBound;
    }
    return _json;
  }
}

/// Result of the l-diversity computation.
class GooglePrivacyDlpV2beta1LDiversityResult {
  /// Histogram of l-diversity equivalence class sensitive value frequencies.
  core.List<GooglePrivacyDlpV2beta1LDiversityHistogramBucket>
      sensitiveValueFrequencyHistogramBuckets;

  GooglePrivacyDlpV2beta1LDiversityResult();

  GooglePrivacyDlpV2beta1LDiversityResult.fromJson(core.Map _json) {
    if (_json.containsKey("sensitiveValueFrequencyHistogramBuckets")) {
      sensitiveValueFrequencyHistogramBuckets =
          (_json["sensitiveValueFrequencyHistogramBuckets"] as core.List)
              .map<GooglePrivacyDlpV2beta1LDiversityHistogramBucket>((value) =>
                  new GooglePrivacyDlpV2beta1LDiversityHistogramBucket.fromJson(
                      value))
              .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (sensitiveValueFrequencyHistogramBuckets != null) {
      _json["sensitiveValueFrequencyHistogramBuckets"] =
          sensitiveValueFrequencyHistogramBuckets
              .map((value) => (value).toJson())
              .toList();
    }
    return _json;
  }
}

/// Response to the ListInfoTypes request.
class GooglePrivacyDlpV2beta1ListInfoTypesResponse {
  /// Set of sensitive info types belonging to a category.
  core.List<GooglePrivacyDlpV2beta1InfoTypeDescription> infoTypes;

  GooglePrivacyDlpV2beta1ListInfoTypesResponse();

  GooglePrivacyDlpV2beta1ListInfoTypesResponse.fromJson(core.Map _json) {
    if (_json.containsKey("infoTypes")) {
      infoTypes = (_json["infoTypes"] as core.List)
          .map<GooglePrivacyDlpV2beta1InfoTypeDescription>((value) =>
              new GooglePrivacyDlpV2beta1InfoTypeDescription.fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (infoTypes != null) {
      _json["infoTypes"] = infoTypes.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

/// Response to the ListInspectFindings request.
class GooglePrivacyDlpV2beta1ListInspectFindingsResponse {
  /// If not empty, indicates that there may be more results that match the
  /// request; this value should be passed in a new
  /// `ListInspectFindingsRequest`.
  core.String nextPageToken;

  /// The results.
  GooglePrivacyDlpV2beta1InspectResult result;

  GooglePrivacyDlpV2beta1ListInspectFindingsResponse();

  GooglePrivacyDlpV2beta1ListInspectFindingsResponse.fromJson(core.Map _json) {
    if (_json.containsKey("nextPageToken")) {
      nextPageToken = _json["nextPageToken"];
    }
    if (_json.containsKey("result")) {
      result =
          new GooglePrivacyDlpV2beta1InspectResult.fromJson(_json["result"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (nextPageToken != null) {
      _json["nextPageToken"] = nextPageToken;
    }
    if (result != null) {
      _json["result"] = (result).toJson();
    }
    return _json;
  }
}

/// Response for ListRootCategories request.
class GooglePrivacyDlpV2beta1ListRootCategoriesResponse {
  /// List of all into type categories supported by the API.
  core.List<GooglePrivacyDlpV2beta1CategoryDescription> categories;

  GooglePrivacyDlpV2beta1ListRootCategoriesResponse();

  GooglePrivacyDlpV2beta1ListRootCategoriesResponse.fromJson(core.Map _json) {
    if (_json.containsKey("categories")) {
      categories = (_json["categories"] as core.List)
          .map<GooglePrivacyDlpV2beta1CategoryDescription>((value) =>
              new GooglePrivacyDlpV2beta1CategoryDescription.fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (categories != null) {
      _json["categories"] =
          categories.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

/// Specifies the location of the finding.
class GooglePrivacyDlpV2beta1Location {
  /// Zero-based byte offsets delimiting the finding.
  /// These are relative to the finding's containing element.
  /// Note that when the content is not textual, this references
  /// the UTF-8 encoded textual representation of the content.
  /// Omitted if content is an image.
  GooglePrivacyDlpV2beta1Range byteRange;

  /// Unicode character offsets delimiting the finding.
  /// These are relative to the finding's containing element.
  /// Provided when the content is text.
  GooglePrivacyDlpV2beta1Range codepointRange;

  /// The pointer to the property or cell that contained the finding.
  /// Provided when the finding's containing element is a cell in a table
  /// or a property of storage object.
  GooglePrivacyDlpV2beta1FieldId fieldId;

  /// The area within the image that contained the finding.
  /// Provided when the content is an image.
  core.List<GooglePrivacyDlpV2beta1ImageLocation> imageBoxes;

  /// The pointer to the record in storage that contained the field the
  /// finding was found in.
  /// Provided when the finding's containing element is a property
  /// of a storage object.
  GooglePrivacyDlpV2beta1RecordKey recordKey;

  /// The pointer to the row of the table that contained the finding.
  /// Provided when the finding's containing element is a cell of a table.
  GooglePrivacyDlpV2beta1TableLocation tableLocation;

  GooglePrivacyDlpV2beta1Location();

  GooglePrivacyDlpV2beta1Location.fromJson(core.Map _json) {
    if (_json.containsKey("byteRange")) {
      byteRange = new GooglePrivacyDlpV2beta1Range.fromJson(_json["byteRange"]);
    }
    if (_json.containsKey("codepointRange")) {
      codepointRange =
          new GooglePrivacyDlpV2beta1Range.fromJson(_json["codepointRange"]);
    }
    if (_json.containsKey("fieldId")) {
      fieldId = new GooglePrivacyDlpV2beta1FieldId.fromJson(_json["fieldId"]);
    }
    if (_json.containsKey("imageBoxes")) {
      imageBoxes = (_json["imageBoxes"] as core.List)
          .map<GooglePrivacyDlpV2beta1ImageLocation>((value) =>
              new GooglePrivacyDlpV2beta1ImageLocation.fromJson(value))
          .toList();
    }
    if (_json.containsKey("recordKey")) {
      recordKey =
          new GooglePrivacyDlpV2beta1RecordKey.fromJson(_json["recordKey"]);
    }
    if (_json.containsKey("tableLocation")) {
      tableLocation = new GooglePrivacyDlpV2beta1TableLocation.fromJson(
          _json["tableLocation"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (byteRange != null) {
      _json["byteRange"] = (byteRange).toJson();
    }
    if (codepointRange != null) {
      _json["codepointRange"] = (codepointRange).toJson();
    }
    if (fieldId != null) {
      _json["fieldId"] = (fieldId).toJson();
    }
    if (imageBoxes != null) {
      _json["imageBoxes"] =
          imageBoxes.map((value) => (value).toJson()).toList();
    }
    if (recordKey != null) {
      _json["recordKey"] = (recordKey).toJson();
    }
    if (tableLocation != null) {
      _json["tableLocation"] = (tableLocation).toJson();
    }
    return _json;
  }
}

/// Compute numerical stats over an individual column, including
/// min, max, and quantiles.
class GooglePrivacyDlpV2beta1NumericalStatsConfig {
  /// Field to compute numerical stats on. Supported types are
  /// integer, float, date, datetime, timestamp, time.
  GooglePrivacyDlpV2beta1FieldId field;

  GooglePrivacyDlpV2beta1NumericalStatsConfig();

  GooglePrivacyDlpV2beta1NumericalStatsConfig.fromJson(core.Map _json) {
    if (_json.containsKey("field")) {
      field = new GooglePrivacyDlpV2beta1FieldId.fromJson(_json["field"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (field != null) {
      _json["field"] = (field).toJson();
    }
    return _json;
  }
}

/// Result of the numerical stats computation.
class GooglePrivacyDlpV2beta1NumericalStatsResult {
  /// Maximum value appearing in the column.
  GooglePrivacyDlpV2beta1Value maxValue;

  /// Minimum value appearing in the column.
  GooglePrivacyDlpV2beta1Value minValue;

  /// List of 99 values that partition the set of field values into 100 equal
  /// sized buckets.
  core.List<GooglePrivacyDlpV2beta1Value> quantileValues;

  GooglePrivacyDlpV2beta1NumericalStatsResult();

  GooglePrivacyDlpV2beta1NumericalStatsResult.fromJson(core.Map _json) {
    if (_json.containsKey("maxValue")) {
      maxValue = new GooglePrivacyDlpV2beta1Value.fromJson(_json["maxValue"]);
    }
    if (_json.containsKey("minValue")) {
      minValue = new GooglePrivacyDlpV2beta1Value.fromJson(_json["minValue"]);
    }
    if (_json.containsKey("quantileValues")) {
      quantileValues = (_json["quantileValues"] as core.List)
          .map<GooglePrivacyDlpV2beta1Value>(
              (value) => new GooglePrivacyDlpV2beta1Value.fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (maxValue != null) {
      _json["maxValue"] = (maxValue).toJson();
    }
    if (minValue != null) {
      _json["minValue"] = (minValue).toJson();
    }
    if (quantileValues != null) {
      _json["quantileValues"] =
          quantileValues.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

/// Additional configuration for inspect long running operations.
class GooglePrivacyDlpV2beta1OperationConfig {
  /// Max number of findings per file, Datastore entity, or database row.
  core.String maxItemFindings;

  GooglePrivacyDlpV2beta1OperationConfig();

  GooglePrivacyDlpV2beta1OperationConfig.fromJson(core.Map _json) {
    if (_json.containsKey("maxItemFindings")) {
      maxItemFindings = _json["maxItemFindings"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (maxItemFindings != null) {
      _json["maxItemFindings"] = maxItemFindings;
    }
    return _json;
  }
}

/// Cloud repository for storing output.
class GooglePrivacyDlpV2beta1OutputStorageConfig {
  /// The path to a Google Cloud Storage location to store output.
  /// The bucket must already exist and
  /// the Google APIs service account for DLP must have write permission to
  /// write to the given bucket.
  /// Results are split over multiple csv files with each file name matching
  /// the pattern "[operation_id]_[count].csv", for example
  /// `3094877188788974909_1.csv`. The `operation_id` matches the
  /// identifier for the Operation, and the `count` is a counter used for
  /// tracking the number of files written.
  ///
  /// The CSV file(s) contain the following columns regardless of storage type
  /// scanned:
  /// - id
  /// - info_type
  /// - likelihood
  /// - byte size of finding
  /// - quote
  /// - timestamp
  ///
  /// For Cloud Storage the next columns are:
  ///
  /// - file_path
  /// - start_offset
  ///
  /// For Cloud Datastore the next columns are:
  ///
  /// - project_id
  /// - namespace_id
  /// - path
  /// - column_name
  /// - offset
  ///
  /// For BigQuery the next columns are:
  ///
  /// - row_number
  /// - project_id
  /// - dataset_id
  /// - table_id
  GooglePrivacyDlpV2beta1CloudStoragePath storagePath;

  /// Store findings in a new table in the dataset.
  GooglePrivacyDlpV2beta1BigQueryTable table;

  GooglePrivacyDlpV2beta1OutputStorageConfig();

  GooglePrivacyDlpV2beta1OutputStorageConfig.fromJson(core.Map _json) {
    if (_json.containsKey("storagePath")) {
      storagePath = new GooglePrivacyDlpV2beta1CloudStoragePath.fromJson(
          _json["storagePath"]);
    }
    if (_json.containsKey("table")) {
      table = new GooglePrivacyDlpV2beta1BigQueryTable.fromJson(_json["table"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (storagePath != null) {
      _json["storagePath"] = (storagePath).toJson();
    }
    if (table != null) {
      _json["table"] = (table).toJson();
    }
    return _json;
  }
}

/// Datastore partition ID.
/// A partition ID identifies a grouping of entities. The grouping is always
/// by project and namespace, however the namespace ID may be empty.
///
/// A partition ID contains several dimensions:
/// project ID and namespace ID.
class GooglePrivacyDlpV2beta1PartitionId {
  /// If not empty, the ID of the namespace to which the entities belong.
  core.String namespaceId;

  /// The ID of the project to which the entities belong.
  core.String projectId;

  GooglePrivacyDlpV2beta1PartitionId();

  GooglePrivacyDlpV2beta1PartitionId.fromJson(core.Map _json) {
    if (_json.containsKey("namespaceId")) {
      namespaceId = _json["namespaceId"];
    }
    if (_json.containsKey("projectId")) {
      projectId = _json["projectId"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (namespaceId != null) {
      _json["namespaceId"] = namespaceId;
    }
    if (projectId != null) {
      _json["projectId"] = projectId;
    }
    return _json;
  }
}

/// A (kind, ID/name) pair used to construct a key path.
///
/// If either name or ID is set, the element is complete.
/// If neither is set, the element is incomplete.
class GooglePrivacyDlpV2beta1PathElement {
  /// The auto-allocated ID of the entity.
  /// Never equal to zero. Values less than zero are discouraged and may not
  /// be supported in the future.
  core.String id;

  /// The kind of the entity.
  /// A kind matching regex `__.*__` is reserved/read-only.
  /// A kind must not contain more than 1500 bytes when UTF-8 encoded.
  /// Cannot be `""`.
  core.String kind;

  /// The name of the entity.
  /// A name matching regex `__.*__` is reserved/read-only.
  /// A name must not be more than 1500 bytes when UTF-8 encoded.
  /// Cannot be `""`.
  core.String name;

  GooglePrivacyDlpV2beta1PathElement();

  GooglePrivacyDlpV2beta1PathElement.fromJson(core.Map _json) {
    if (_json.containsKey("id")) {
      id = _json["id"];
    }
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (id != null) {
      _json["id"] = id;
    }
    if (kind != null) {
      _json["kind"] = kind;
    }
    if (name != null) {
      _json["name"] = name;
    }
    return _json;
  }
}

/// A rule for transforming a value.
class GooglePrivacyDlpV2beta1PrimitiveTransformation {
  GooglePrivacyDlpV2beta1BucketingConfig bucketingConfig;
  GooglePrivacyDlpV2beta1CharacterMaskConfig characterMaskConfig;
  GooglePrivacyDlpV2beta1CryptoHashConfig cryptoHashConfig;
  GooglePrivacyDlpV2beta1CryptoReplaceFfxFpeConfig cryptoReplaceFfxFpeConfig;
  GooglePrivacyDlpV2beta1FixedSizeBucketingConfig fixedSizeBucketingConfig;
  GooglePrivacyDlpV2beta1RedactConfig redactConfig;
  GooglePrivacyDlpV2beta1ReplaceValueConfig replaceConfig;
  GooglePrivacyDlpV2beta1ReplaceWithInfoTypeConfig replaceWithInfoTypeConfig;
  GooglePrivacyDlpV2beta1TimePartConfig timePartConfig;

  GooglePrivacyDlpV2beta1PrimitiveTransformation();

  GooglePrivacyDlpV2beta1PrimitiveTransformation.fromJson(core.Map _json) {
    if (_json.containsKey("bucketingConfig")) {
      bucketingConfig = new GooglePrivacyDlpV2beta1BucketingConfig.fromJson(
          _json["bucketingConfig"]);
    }
    if (_json.containsKey("characterMaskConfig")) {
      characterMaskConfig =
          new GooglePrivacyDlpV2beta1CharacterMaskConfig.fromJson(
              _json["characterMaskConfig"]);
    }
    if (_json.containsKey("cryptoHashConfig")) {
      cryptoHashConfig = new GooglePrivacyDlpV2beta1CryptoHashConfig.fromJson(
          _json["cryptoHashConfig"]);
    }
    if (_json.containsKey("cryptoReplaceFfxFpeConfig")) {
      cryptoReplaceFfxFpeConfig =
          new GooglePrivacyDlpV2beta1CryptoReplaceFfxFpeConfig.fromJson(
              _json["cryptoReplaceFfxFpeConfig"]);
    }
    if (_json.containsKey("fixedSizeBucketingConfig")) {
      fixedSizeBucketingConfig =
          new GooglePrivacyDlpV2beta1FixedSizeBucketingConfig.fromJson(
              _json["fixedSizeBucketingConfig"]);
    }
    if (_json.containsKey("redactConfig")) {
      redactConfig = new GooglePrivacyDlpV2beta1RedactConfig.fromJson(
          _json["redactConfig"]);
    }
    if (_json.containsKey("replaceConfig")) {
      replaceConfig = new GooglePrivacyDlpV2beta1ReplaceValueConfig.fromJson(
          _json["replaceConfig"]);
    }
    if (_json.containsKey("replaceWithInfoTypeConfig")) {
      replaceWithInfoTypeConfig =
          new GooglePrivacyDlpV2beta1ReplaceWithInfoTypeConfig.fromJson(
              _json["replaceWithInfoTypeConfig"]);
    }
    if (_json.containsKey("timePartConfig")) {
      timePartConfig = new GooglePrivacyDlpV2beta1TimePartConfig.fromJson(
          _json["timePartConfig"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (bucketingConfig != null) {
      _json["bucketingConfig"] = (bucketingConfig).toJson();
    }
    if (characterMaskConfig != null) {
      _json["characterMaskConfig"] = (characterMaskConfig).toJson();
    }
    if (cryptoHashConfig != null) {
      _json["cryptoHashConfig"] = (cryptoHashConfig).toJson();
    }
    if (cryptoReplaceFfxFpeConfig != null) {
      _json["cryptoReplaceFfxFpeConfig"] = (cryptoReplaceFfxFpeConfig).toJson();
    }
    if (fixedSizeBucketingConfig != null) {
      _json["fixedSizeBucketingConfig"] = (fixedSizeBucketingConfig).toJson();
    }
    if (redactConfig != null) {
      _json["redactConfig"] = (redactConfig).toJson();
    }
    if (replaceConfig != null) {
      _json["replaceConfig"] = (replaceConfig).toJson();
    }
    if (replaceWithInfoTypeConfig != null) {
      _json["replaceWithInfoTypeConfig"] = (replaceWithInfoTypeConfig).toJson();
    }
    if (timePartConfig != null) {
      _json["timePartConfig"] = (timePartConfig).toJson();
    }
    return _json;
  }
}

/// Privacy metric to compute for reidentification risk analysis.
class GooglePrivacyDlpV2beta1PrivacyMetric {
  GooglePrivacyDlpV2beta1CategoricalStatsConfig categoricalStatsConfig;
  GooglePrivacyDlpV2beta1KAnonymityConfig kAnonymityConfig;
  GooglePrivacyDlpV2beta1KMapEstimationConfig kMapEstimationConfig;
  GooglePrivacyDlpV2beta1LDiversityConfig lDiversityConfig;
  GooglePrivacyDlpV2beta1NumericalStatsConfig numericalStatsConfig;

  GooglePrivacyDlpV2beta1PrivacyMetric();

  GooglePrivacyDlpV2beta1PrivacyMetric.fromJson(core.Map _json) {
    if (_json.containsKey("categoricalStatsConfig")) {
      categoricalStatsConfig =
          new GooglePrivacyDlpV2beta1CategoricalStatsConfig.fromJson(
              _json["categoricalStatsConfig"]);
    }
    if (_json.containsKey("kAnonymityConfig")) {
      kAnonymityConfig = new GooglePrivacyDlpV2beta1KAnonymityConfig.fromJson(
          _json["kAnonymityConfig"]);
    }
    if (_json.containsKey("kMapEstimationConfig")) {
      kMapEstimationConfig =
          new GooglePrivacyDlpV2beta1KMapEstimationConfig.fromJson(
              _json["kMapEstimationConfig"]);
    }
    if (_json.containsKey("lDiversityConfig")) {
      lDiversityConfig = new GooglePrivacyDlpV2beta1LDiversityConfig.fromJson(
          _json["lDiversityConfig"]);
    }
    if (_json.containsKey("numericalStatsConfig")) {
      numericalStatsConfig =
          new GooglePrivacyDlpV2beta1NumericalStatsConfig.fromJson(
              _json["numericalStatsConfig"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (categoricalStatsConfig != null) {
      _json["categoricalStatsConfig"] = (categoricalStatsConfig).toJson();
    }
    if (kAnonymityConfig != null) {
      _json["kAnonymityConfig"] = (kAnonymityConfig).toJson();
    }
    if (kMapEstimationConfig != null) {
      _json["kMapEstimationConfig"] = (kMapEstimationConfig).toJson();
    }
    if (lDiversityConfig != null) {
      _json["lDiversityConfig"] = (lDiversityConfig).toJson();
    }
    if (numericalStatsConfig != null) {
      _json["numericalStatsConfig"] = (numericalStatsConfig).toJson();
    }
    return _json;
  }
}

/// A representation of a Datastore property in a projection.
class GooglePrivacyDlpV2beta1Projection {
  /// The property to project.
  GooglePrivacyDlpV2beta1PropertyReference property;

  GooglePrivacyDlpV2beta1Projection();

  GooglePrivacyDlpV2beta1Projection.fromJson(core.Map _json) {
    if (_json.containsKey("property")) {
      property = new GooglePrivacyDlpV2beta1PropertyReference.fromJson(
          _json["property"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (property != null) {
      _json["property"] = (property).toJson();
    }
    return _json;
  }
}

/// A reference to a property relative to the Datastore kind expressions.
class GooglePrivacyDlpV2beta1PropertyReference {
  /// The name of the property.
  /// If name includes "."s, it may be interpreted as a property name path.
  core.String name;

  GooglePrivacyDlpV2beta1PropertyReference();

  GooglePrivacyDlpV2beta1PropertyReference.fromJson(core.Map _json) {
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (name != null) {
      _json["name"] = name;
    }
    return _json;
  }
}

/// A quasi-identifier column has a custom_tag, used to know which column
/// in the data corresponds to which column in the statistical model.
class GooglePrivacyDlpV2beta1QuasiIdField {
  core.String customTag;
  GooglePrivacyDlpV2beta1FieldId field;

  GooglePrivacyDlpV2beta1QuasiIdField();

  GooglePrivacyDlpV2beta1QuasiIdField.fromJson(core.Map _json) {
    if (_json.containsKey("customTag")) {
      customTag = _json["customTag"];
    }
    if (_json.containsKey("field")) {
      field = new GooglePrivacyDlpV2beta1FieldId.fromJson(_json["field"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (customTag != null) {
      _json["customTag"] = customTag;
    }
    if (field != null) {
      _json["field"] = (field).toJson();
    }
    return _json;
  }
}

/// Generic half-open interval [start, end)
class GooglePrivacyDlpV2beta1Range {
  /// Index of the last character of the range (exclusive).
  core.String end;

  /// Index of the first character of the range (inclusive).
  core.String start;

  GooglePrivacyDlpV2beta1Range();

  GooglePrivacyDlpV2beta1Range.fromJson(core.Map _json) {
    if (_json.containsKey("end")) {
      end = _json["end"];
    }
    if (_json.containsKey("start")) {
      start = _json["start"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (end != null) {
      _json["end"] = end;
    }
    if (start != null) {
      _json["start"] = start;
    }
    return _json;
  }
}

/// A condition for determining whether a transformation should be applied to
/// a field.
class GooglePrivacyDlpV2beta1RecordCondition {
  GooglePrivacyDlpV2beta1Expressions expressions;

  GooglePrivacyDlpV2beta1RecordCondition();

  GooglePrivacyDlpV2beta1RecordCondition.fromJson(core.Map _json) {
    if (_json.containsKey("expressions")) {
      expressions =
          new GooglePrivacyDlpV2beta1Expressions.fromJson(_json["expressions"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (expressions != null) {
      _json["expressions"] = (expressions).toJson();
    }
    return _json;
  }
}

/// Message for a unique key indicating a record that contains a finding.
class GooglePrivacyDlpV2beta1RecordKey {
  GooglePrivacyDlpV2beta1CloudStorageKey cloudStorageKey;
  GooglePrivacyDlpV2beta1DatastoreKey datastoreKey;

  GooglePrivacyDlpV2beta1RecordKey();

  GooglePrivacyDlpV2beta1RecordKey.fromJson(core.Map _json) {
    if (_json.containsKey("cloudStorageKey")) {
      cloudStorageKey = new GooglePrivacyDlpV2beta1CloudStorageKey.fromJson(
          _json["cloudStorageKey"]);
    }
    if (_json.containsKey("datastoreKey")) {
      datastoreKey = new GooglePrivacyDlpV2beta1DatastoreKey.fromJson(
          _json["datastoreKey"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (cloudStorageKey != null) {
      _json["cloudStorageKey"] = (cloudStorageKey).toJson();
    }
    if (datastoreKey != null) {
      _json["datastoreKey"] = (datastoreKey).toJson();
    }
    return _json;
  }
}

/// Configuration to suppress records whose suppression conditions evaluate to
/// true.
class GooglePrivacyDlpV2beta1RecordSuppression {
  GooglePrivacyDlpV2beta1RecordCondition condition;

  GooglePrivacyDlpV2beta1RecordSuppression();

  GooglePrivacyDlpV2beta1RecordSuppression.fromJson(core.Map _json) {
    if (_json.containsKey("condition")) {
      condition = new GooglePrivacyDlpV2beta1RecordCondition.fromJson(
          _json["condition"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (condition != null) {
      _json["condition"] = (condition).toJson();
    }
    return _json;
  }
}

/// A type of transformation that is applied over structured data such as a
/// table.
class GooglePrivacyDlpV2beta1RecordTransformations {
  /// Transform the record by applying various field transformations.
  core.List<GooglePrivacyDlpV2beta1FieldTransformation> fieldTransformations;

  /// Configuration defining which records get suppressed entirely. Records that
  /// match any suppression rule are omitted from the output [optional].
  core.List<GooglePrivacyDlpV2beta1RecordSuppression> recordSuppressions;

  GooglePrivacyDlpV2beta1RecordTransformations();

  GooglePrivacyDlpV2beta1RecordTransformations.fromJson(core.Map _json) {
    if (_json.containsKey("fieldTransformations")) {
      fieldTransformations = (_json["fieldTransformations"] as core.List)
          .map<GooglePrivacyDlpV2beta1FieldTransformation>((value) =>
              new GooglePrivacyDlpV2beta1FieldTransformation.fromJson(value))
          .toList();
    }
    if (_json.containsKey("recordSuppressions")) {
      recordSuppressions = (_json["recordSuppressions"] as core.List)
          .map<GooglePrivacyDlpV2beta1RecordSuppression>((value) =>
              new GooglePrivacyDlpV2beta1RecordSuppression.fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (fieldTransformations != null) {
      _json["fieldTransformations"] =
          fieldTransformations.map((value) => (value).toJson()).toList();
    }
    if (recordSuppressions != null) {
      _json["recordSuppressions"] =
          recordSuppressions.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

/// Redact a given value. For example, if used with an `InfoTypeTransformation`
/// transforming PHONE_NUMBER, and input 'My phone number is 206-555-0123', the
/// output would be 'My phone number is '.
class GooglePrivacyDlpV2beta1RedactConfig {
  GooglePrivacyDlpV2beta1RedactConfig();

  GooglePrivacyDlpV2beta1RedactConfig.fromJson(core.Map _json) {}

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    return _json;
  }
}

/// Request to search for potentially sensitive info in a list of items
/// and replace it with a default or provided content.
class GooglePrivacyDlpV2beta1RedactContentRequest {
  /// The configuration for specifying what content to redact from images.
  core.List<GooglePrivacyDlpV2beta1ImageRedactionConfig> imageRedactionConfigs;

  /// Configuration for the inspector.
  GooglePrivacyDlpV2beta1InspectConfig inspectConfig;

  /// The list of items to inspect. Up to 100 are allowed per request.
  core.List<GooglePrivacyDlpV2beta1ContentItem> items;

  /// The strings to replace findings text findings with. Must specify at least
  /// one of these or one ImageRedactionConfig if redacting images.
  core.List<GooglePrivacyDlpV2beta1ReplaceConfig> replaceConfigs;

  GooglePrivacyDlpV2beta1RedactContentRequest();

  GooglePrivacyDlpV2beta1RedactContentRequest.fromJson(core.Map _json) {
    if (_json.containsKey("imageRedactionConfigs")) {
      imageRedactionConfigs = (_json["imageRedactionConfigs"] as core.List)
          .map<GooglePrivacyDlpV2beta1ImageRedactionConfig>((value) =>
              new GooglePrivacyDlpV2beta1ImageRedactionConfig.fromJson(value))
          .toList();
    }
    if (_json.containsKey("inspectConfig")) {
      inspectConfig = new GooglePrivacyDlpV2beta1InspectConfig.fromJson(
          _json["inspectConfig"]);
    }
    if (_json.containsKey("items")) {
      items = (_json["items"] as core.List)
          .map<GooglePrivacyDlpV2beta1ContentItem>(
              (value) => new GooglePrivacyDlpV2beta1ContentItem.fromJson(value))
          .toList();
    }
    if (_json.containsKey("replaceConfigs")) {
      replaceConfigs = (_json["replaceConfigs"] as core.List)
          .map<GooglePrivacyDlpV2beta1ReplaceConfig>((value) =>
              new GooglePrivacyDlpV2beta1ReplaceConfig.fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (imageRedactionConfigs != null) {
      _json["imageRedactionConfigs"] =
          imageRedactionConfigs.map((value) => (value).toJson()).toList();
    }
    if (inspectConfig != null) {
      _json["inspectConfig"] = (inspectConfig).toJson();
    }
    if (items != null) {
      _json["items"] = items.map((value) => (value).toJson()).toList();
    }
    if (replaceConfigs != null) {
      _json["replaceConfigs"] =
          replaceConfigs.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

/// Results of redacting a list of items.
class GooglePrivacyDlpV2beta1RedactContentResponse {
  /// The redacted content.
  core.List<GooglePrivacyDlpV2beta1ContentItem> items;

  GooglePrivacyDlpV2beta1RedactContentResponse();

  GooglePrivacyDlpV2beta1RedactContentResponse.fromJson(core.Map _json) {
    if (_json.containsKey("items")) {
      items = (_json["items"] as core.List)
          .map<GooglePrivacyDlpV2beta1ContentItem>(
              (value) => new GooglePrivacyDlpV2beta1ContentItem.fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (items != null) {
      _json["items"] = items.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

class GooglePrivacyDlpV2beta1ReplaceConfig {
  /// Type of information to replace. Only one ReplaceConfig per info_type
  /// should be provided. If ReplaceConfig does not have an info_type, the DLP
  /// API matches it against all info_types that are found but not specified in
  /// another ReplaceConfig.
  GooglePrivacyDlpV2beta1InfoType infoType;

  /// Content replacing sensitive information of given type. Max 256 chars.
  core.String replaceWith;

  GooglePrivacyDlpV2beta1ReplaceConfig();

  GooglePrivacyDlpV2beta1ReplaceConfig.fromJson(core.Map _json) {
    if (_json.containsKey("infoType")) {
      infoType =
          new GooglePrivacyDlpV2beta1InfoType.fromJson(_json["infoType"]);
    }
    if (_json.containsKey("replaceWith")) {
      replaceWith = _json["replaceWith"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (infoType != null) {
      _json["infoType"] = (infoType).toJson();
    }
    if (replaceWith != null) {
      _json["replaceWith"] = replaceWith;
    }
    return _json;
  }
}

/// Replace each input value with a given `Value`.
class GooglePrivacyDlpV2beta1ReplaceValueConfig {
  /// Value to replace it with.
  GooglePrivacyDlpV2beta1Value newValue;

  GooglePrivacyDlpV2beta1ReplaceValueConfig();

  GooglePrivacyDlpV2beta1ReplaceValueConfig.fromJson(core.Map _json) {
    if (_json.containsKey("newValue")) {
      newValue = new GooglePrivacyDlpV2beta1Value.fromJson(_json["newValue"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (newValue != null) {
      _json["newValue"] = (newValue).toJson();
    }
    return _json;
  }
}

/// Replace each matching finding with the name of the info_type.
class GooglePrivacyDlpV2beta1ReplaceWithInfoTypeConfig {
  GooglePrivacyDlpV2beta1ReplaceWithInfoTypeConfig();

  GooglePrivacyDlpV2beta1ReplaceWithInfoTypeConfig.fromJson(core.Map _json) {}

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    return _json;
  }
}

/// Metadata returned within the
/// [`riskAnalysis.operations.get`](/dlp/docs/reference/rest/v2beta1/riskAnalysis.operations/get)
/// for risk analysis.
class GooglePrivacyDlpV2beta1RiskAnalysisOperationMetadata {
  /// The time which this request was started.
  core.String createTime;

  /// Privacy metric to compute.
  GooglePrivacyDlpV2beta1PrivacyMetric requestedPrivacyMetric;

  /// Input dataset to compute metrics over.
  GooglePrivacyDlpV2beta1BigQueryTable requestedSourceTable;

  GooglePrivacyDlpV2beta1RiskAnalysisOperationMetadata();

  GooglePrivacyDlpV2beta1RiskAnalysisOperationMetadata.fromJson(
      core.Map _json) {
    if (_json.containsKey("createTime")) {
      createTime = _json["createTime"];
    }
    if (_json.containsKey("requestedPrivacyMetric")) {
      requestedPrivacyMetric =
          new GooglePrivacyDlpV2beta1PrivacyMetric.fromJson(
              _json["requestedPrivacyMetric"]);
    }
    if (_json.containsKey("requestedSourceTable")) {
      requestedSourceTable = new GooglePrivacyDlpV2beta1BigQueryTable.fromJson(
          _json["requestedSourceTable"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (createTime != null) {
      _json["createTime"] = createTime;
    }
    if (requestedPrivacyMetric != null) {
      _json["requestedPrivacyMetric"] = (requestedPrivacyMetric).toJson();
    }
    if (requestedSourceTable != null) {
      _json["requestedSourceTable"] = (requestedSourceTable).toJson();
    }
    return _json;
  }
}

/// Result of a risk analysis
/// [`Operation`](/dlp/docs/reference/rest/v2beta1/inspect.operations)
/// request.
class GooglePrivacyDlpV2beta1RiskAnalysisOperationResult {
  GooglePrivacyDlpV2beta1CategoricalStatsResult categoricalStatsResult;
  GooglePrivacyDlpV2beta1KAnonymityResult kAnonymityResult;
  GooglePrivacyDlpV2beta1KMapEstimationResult kMapEstimationResult;
  GooglePrivacyDlpV2beta1LDiversityResult lDiversityResult;
  GooglePrivacyDlpV2beta1NumericalStatsResult numericalStatsResult;

  GooglePrivacyDlpV2beta1RiskAnalysisOperationResult();

  GooglePrivacyDlpV2beta1RiskAnalysisOperationResult.fromJson(core.Map _json) {
    if (_json.containsKey("categoricalStatsResult")) {
      categoricalStatsResult =
          new GooglePrivacyDlpV2beta1CategoricalStatsResult.fromJson(
              _json["categoricalStatsResult"]);
    }
    if (_json.containsKey("kAnonymityResult")) {
      kAnonymityResult = new GooglePrivacyDlpV2beta1KAnonymityResult.fromJson(
          _json["kAnonymityResult"]);
    }
    if (_json.containsKey("kMapEstimationResult")) {
      kMapEstimationResult =
          new GooglePrivacyDlpV2beta1KMapEstimationResult.fromJson(
              _json["kMapEstimationResult"]);
    }
    if (_json.containsKey("lDiversityResult")) {
      lDiversityResult = new GooglePrivacyDlpV2beta1LDiversityResult.fromJson(
          _json["lDiversityResult"]);
    }
    if (_json.containsKey("numericalStatsResult")) {
      numericalStatsResult =
          new GooglePrivacyDlpV2beta1NumericalStatsResult.fromJson(
              _json["numericalStatsResult"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (categoricalStatsResult != null) {
      _json["categoricalStatsResult"] = (categoricalStatsResult).toJson();
    }
    if (kAnonymityResult != null) {
      _json["kAnonymityResult"] = (kAnonymityResult).toJson();
    }
    if (kMapEstimationResult != null) {
      _json["kMapEstimationResult"] = (kMapEstimationResult).toJson();
    }
    if (lDiversityResult != null) {
      _json["lDiversityResult"] = (lDiversityResult).toJson();
    }
    if (numericalStatsResult != null) {
      _json["numericalStatsResult"] = (numericalStatsResult).toJson();
    }
    return _json;
  }
}

class GooglePrivacyDlpV2beta1Row {
  core.List<GooglePrivacyDlpV2beta1Value> values;

  GooglePrivacyDlpV2beta1Row();

  GooglePrivacyDlpV2beta1Row.fromJson(core.Map _json) {
    if (_json.containsKey("values")) {
      values = (_json["values"] as core.List)
          .map<GooglePrivacyDlpV2beta1Value>(
              (value) => new GooglePrivacyDlpV2beta1Value.fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (values != null) {
      _json["values"] = values.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

/// Shared message indicating Cloud storage type.
class GooglePrivacyDlpV2beta1StorageConfig {
  /// BigQuery options specification.
  GooglePrivacyDlpV2beta1BigQueryOptions bigQueryOptions;

  /// Google Cloud Storage options specification.
  GooglePrivacyDlpV2beta1CloudStorageOptions cloudStorageOptions;

  /// Google Cloud Datastore options specification.
  GooglePrivacyDlpV2beta1DatastoreOptions datastoreOptions;

  GooglePrivacyDlpV2beta1StorageConfig();

  GooglePrivacyDlpV2beta1StorageConfig.fromJson(core.Map _json) {
    if (_json.containsKey("bigQueryOptions")) {
      bigQueryOptions = new GooglePrivacyDlpV2beta1BigQueryOptions.fromJson(
          _json["bigQueryOptions"]);
    }
    if (_json.containsKey("cloudStorageOptions")) {
      cloudStorageOptions =
          new GooglePrivacyDlpV2beta1CloudStorageOptions.fromJson(
              _json["cloudStorageOptions"]);
    }
    if (_json.containsKey("datastoreOptions")) {
      datastoreOptions = new GooglePrivacyDlpV2beta1DatastoreOptions.fromJson(
          _json["datastoreOptions"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (bigQueryOptions != null) {
      _json["bigQueryOptions"] = (bigQueryOptions).toJson();
    }
    if (cloudStorageOptions != null) {
      _json["cloudStorageOptions"] = (cloudStorageOptions).toJson();
    }
    if (datastoreOptions != null) {
      _json["datastoreOptions"] = (datastoreOptions).toJson();
    }
    return _json;
  }
}

/// A collection that informs the user the number of times a particular
/// `TransformationResultCode` and error details occurred.
class GooglePrivacyDlpV2beta1SummaryResult {
  ///
  /// Possible string values are:
  /// - "TRANSFORMATION_RESULT_CODE_UNSPECIFIED"
  /// - "SUCCESS"
  /// - "ERROR"
  core.String code;
  core.String count;

  /// A place for warnings or errors to show up if a transformation didn't
  /// work as expected.
  core.String details;

  GooglePrivacyDlpV2beta1SummaryResult();

  GooglePrivacyDlpV2beta1SummaryResult.fromJson(core.Map _json) {
    if (_json.containsKey("code")) {
      code = _json["code"];
    }
    if (_json.containsKey("count")) {
      count = _json["count"];
    }
    if (_json.containsKey("details")) {
      details = _json["details"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (code != null) {
      _json["code"] = code;
    }
    if (count != null) {
      _json["count"] = count;
    }
    if (details != null) {
      _json["details"] = details;
    }
    return _json;
  }
}

/// Message for detecting output from deidentification transformations
/// such as
/// [`CryptoReplaceFfxFpeConfig`](/dlp/docs/reference/rest/v2beta1/content/deidentify#CryptoReplaceFfxFpeConfig).
/// These types of transformations are
/// those that perform pseudonymization, thereby producing a "surrogate" as
/// output. This should be used in conjunction with a field on the
/// transformation such as `surrogate_info_type`. This custom info type does
/// not support the use of `detection_rules`.
class GooglePrivacyDlpV2beta1SurrogateType {
  GooglePrivacyDlpV2beta1SurrogateType();

  GooglePrivacyDlpV2beta1SurrogateType.fromJson(core.Map _json) {}

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    return _json;
  }
}

/// Structured content to inspect. Up to 50,000 `Value`s per request allowed.
class GooglePrivacyDlpV2beta1Table {
  core.List<GooglePrivacyDlpV2beta1FieldId> headers;
  core.List<GooglePrivacyDlpV2beta1Row> rows;

  GooglePrivacyDlpV2beta1Table();

  GooglePrivacyDlpV2beta1Table.fromJson(core.Map _json) {
    if (_json.containsKey("headers")) {
      headers = (_json["headers"] as core.List)
          .map<GooglePrivacyDlpV2beta1FieldId>(
              (value) => new GooglePrivacyDlpV2beta1FieldId.fromJson(value))
          .toList();
    }
    if (_json.containsKey("rows")) {
      rows = (_json["rows"] as core.List)
          .map<GooglePrivacyDlpV2beta1Row>(
              (value) => new GooglePrivacyDlpV2beta1Row.fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (headers != null) {
      _json["headers"] = headers.map((value) => (value).toJson()).toList();
    }
    if (rows != null) {
      _json["rows"] = rows.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

/// Location of a finding within a table.
class GooglePrivacyDlpV2beta1TableLocation {
  /// The zero-based index of the row where the finding is located.
  core.String rowIndex;

  GooglePrivacyDlpV2beta1TableLocation();

  GooglePrivacyDlpV2beta1TableLocation.fromJson(core.Map _json) {
    if (_json.containsKey("rowIndex")) {
      rowIndex = _json["rowIndex"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (rowIndex != null) {
      _json["rowIndex"] = rowIndex;
    }
    return _json;
  }
}

/// A column with a semantic tag attached.
class GooglePrivacyDlpV2beta1TaggedField {
  /// A column can be tagged with a custom tag. In this case, the user must
  /// indicate an auxiliary table that contains statistical information on
  /// the possible values of this column (below).
  core.String customTag;

  /// Identifies the column. [required]
  GooglePrivacyDlpV2beta1FieldId field;

  /// If no semantic tag is indicated, we infer the statistical model from
  /// the distribution of values in the input data
  GoogleProtobufEmpty inferred;

  /// A column can be tagged with a InfoType to use the relevant public
  /// dataset as a statistical model of population, if available. We
  /// currently support US ZIP codes, region codes, ages and genders.
  GooglePrivacyDlpV2beta1InfoType infoType;

  GooglePrivacyDlpV2beta1TaggedField();

  GooglePrivacyDlpV2beta1TaggedField.fromJson(core.Map _json) {
    if (_json.containsKey("customTag")) {
      customTag = _json["customTag"];
    }
    if (_json.containsKey("field")) {
      field = new GooglePrivacyDlpV2beta1FieldId.fromJson(_json["field"]);
    }
    if (_json.containsKey("inferred")) {
      inferred = new GoogleProtobufEmpty.fromJson(_json["inferred"]);
    }
    if (_json.containsKey("infoType")) {
      infoType =
          new GooglePrivacyDlpV2beta1InfoType.fromJson(_json["infoType"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (customTag != null) {
      _json["customTag"] = customTag;
    }
    if (field != null) {
      _json["field"] = (field).toJson();
    }
    if (inferred != null) {
      _json["inferred"] = (inferred).toJson();
    }
    if (infoType != null) {
      _json["infoType"] = (infoType).toJson();
    }
    return _json;
  }
}

/// For use with `Date`, `Timestamp`, and `TimeOfDay`, extract or preserve a
/// portion of the value.
class GooglePrivacyDlpV2beta1TimePartConfig {
  ///
  /// Possible string values are:
  /// - "TIME_PART_UNSPECIFIED"
  /// - "YEAR" : [000-9999]
  /// - "MONTH" : [1-12]
  /// - "DAY_OF_MONTH" : [1-31]
  /// - "DAY_OF_WEEK" : [1-7]
  /// - "WEEK_OF_YEAR" : [1-52]
  /// - "HOUR_OF_DAY" : [0-24]
  core.String partToExtract;

  GooglePrivacyDlpV2beta1TimePartConfig();

  GooglePrivacyDlpV2beta1TimePartConfig.fromJson(core.Map _json) {
    if (_json.containsKey("partToExtract")) {
      partToExtract = _json["partToExtract"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (partToExtract != null) {
      _json["partToExtract"] = partToExtract;
    }
    return _json;
  }
}

/// Summary of a single tranformation.
/// Only one of 'transformation', 'field_transformation', or 'record_suppress'
/// will be set.
class GooglePrivacyDlpV2beta1TransformationSummary {
  /// Set if the transformation was limited to a specific FieldId.
  GooglePrivacyDlpV2beta1FieldId field;

  /// The field transformation that was applied.
  /// If multiple field transformations are requested for a single field,
  /// this list will contain all of them; otherwise, only one is supplied.
  core.List<GooglePrivacyDlpV2beta1FieldTransformation> fieldTransformations;

  /// Set if the transformation was limited to a specific info_type.
  GooglePrivacyDlpV2beta1InfoType infoType;

  /// The specific suppression option these stats apply to.
  GooglePrivacyDlpV2beta1RecordSuppression recordSuppress;
  core.List<GooglePrivacyDlpV2beta1SummaryResult> results;

  /// The specific transformation these stats apply to.
  GooglePrivacyDlpV2beta1PrimitiveTransformation transformation;

  /// Total size in bytes that were transformed in some way.
  core.String transformedBytes;

  GooglePrivacyDlpV2beta1TransformationSummary();

  GooglePrivacyDlpV2beta1TransformationSummary.fromJson(core.Map _json) {
    if (_json.containsKey("field")) {
      field = new GooglePrivacyDlpV2beta1FieldId.fromJson(_json["field"]);
    }
    if (_json.containsKey("fieldTransformations")) {
      fieldTransformations = (_json["fieldTransformations"] as core.List)
          .map<GooglePrivacyDlpV2beta1FieldTransformation>((value) =>
              new GooglePrivacyDlpV2beta1FieldTransformation.fromJson(value))
          .toList();
    }
    if (_json.containsKey("infoType")) {
      infoType =
          new GooglePrivacyDlpV2beta1InfoType.fromJson(_json["infoType"]);
    }
    if (_json.containsKey("recordSuppress")) {
      recordSuppress = new GooglePrivacyDlpV2beta1RecordSuppression.fromJson(
          _json["recordSuppress"]);
    }
    if (_json.containsKey("results")) {
      results = (_json["results"] as core.List)
          .map<GooglePrivacyDlpV2beta1SummaryResult>((value) =>
              new GooglePrivacyDlpV2beta1SummaryResult.fromJson(value))
          .toList();
    }
    if (_json.containsKey("transformation")) {
      transformation =
          new GooglePrivacyDlpV2beta1PrimitiveTransformation.fromJson(
              _json["transformation"]);
    }
    if (_json.containsKey("transformedBytes")) {
      transformedBytes = _json["transformedBytes"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (field != null) {
      _json["field"] = (field).toJson();
    }
    if (fieldTransformations != null) {
      _json["fieldTransformations"] =
          fieldTransformations.map((value) => (value).toJson()).toList();
    }
    if (infoType != null) {
      _json["infoType"] = (infoType).toJson();
    }
    if (recordSuppress != null) {
      _json["recordSuppress"] = (recordSuppress).toJson();
    }
    if (results != null) {
      _json["results"] = results.map((value) => (value).toJson()).toList();
    }
    if (transformation != null) {
      _json["transformation"] = (transformation).toJson();
    }
    if (transformedBytes != null) {
      _json["transformedBytes"] = transformedBytes;
    }
    return _json;
  }
}

/// Use this to have a random data crypto key generated.
/// It will be discarded after the operation/request finishes.
class GooglePrivacyDlpV2beta1TransientCryptoKey {
  /// Name of the key. [required]
  /// This is an arbitrary string used to differentiate different keys.
  /// A unique key is generated per name: two separate `TransientCryptoKey`
  /// protos share the same generated key if their names are the same.
  /// When the data crypto key is generated, this name is not used in any way
  /// (repeating the api call will result in a different key being generated).
  core.String name;

  GooglePrivacyDlpV2beta1TransientCryptoKey();

  GooglePrivacyDlpV2beta1TransientCryptoKey.fromJson(core.Map _json) {
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (name != null) {
      _json["name"] = name;
    }
    return _json;
  }
}

/// Using raw keys is prone to security risks due to accidentally
/// leaking the key. Choose another type of key if possible.
class GooglePrivacyDlpV2beta1UnwrappedCryptoKey {
  /// The AES 128/192/256 bit key. [required]
  core.String key;
  core.List<core.int> get keyAsBytes {
    return convert.base64.decode(key);
  }

  void set keyAsBytes(core.List<core.int> _bytes) {
    key =
        convert.base64.encode(_bytes).replaceAll("/", "_").replaceAll("+", "-");
  }

  GooglePrivacyDlpV2beta1UnwrappedCryptoKey();

  GooglePrivacyDlpV2beta1UnwrappedCryptoKey.fromJson(core.Map _json) {
    if (_json.containsKey("key")) {
      key = _json["key"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (key != null) {
      _json["key"] = key;
    }
    return _json;
  }
}

/// Set of primitive values supported by the system.
/// Note that for the purposes of inspection or transformation, the number
/// of bytes considered to comprise a 'Value' is based on its representation
/// as a UTF-8 encoded string. For example, if 'integer_value' is set to
/// 123456789, the number of bytes would be counted as 9, even though an
/// int64 only holds up to 8 bytes of data.
class GooglePrivacyDlpV2beta1Value {
  core.bool booleanValue;
  GoogleTypeDate dateValue;
  core.double floatValue;
  core.String integerValue;
  core.String stringValue;
  GoogleTypeTimeOfDay timeValue;
  core.String timestampValue;

  GooglePrivacyDlpV2beta1Value();

  GooglePrivacyDlpV2beta1Value.fromJson(core.Map _json) {
    if (_json.containsKey("booleanValue")) {
      booleanValue = _json["booleanValue"];
    }
    if (_json.containsKey("dateValue")) {
      dateValue = new GoogleTypeDate.fromJson(_json["dateValue"]);
    }
    if (_json.containsKey("floatValue")) {
      floatValue = _json["floatValue"].toDouble();
    }
    if (_json.containsKey("integerValue")) {
      integerValue = _json["integerValue"];
    }
    if (_json.containsKey("stringValue")) {
      stringValue = _json["stringValue"];
    }
    if (_json.containsKey("timeValue")) {
      timeValue = new GoogleTypeTimeOfDay.fromJson(_json["timeValue"]);
    }
    if (_json.containsKey("timestampValue")) {
      timestampValue = _json["timestampValue"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (booleanValue != null) {
      _json["booleanValue"] = booleanValue;
    }
    if (dateValue != null) {
      _json["dateValue"] = (dateValue).toJson();
    }
    if (floatValue != null) {
      _json["floatValue"] = floatValue;
    }
    if (integerValue != null) {
      _json["integerValue"] = integerValue;
    }
    if (stringValue != null) {
      _json["stringValue"] = stringValue;
    }
    if (timeValue != null) {
      _json["timeValue"] = (timeValue).toJson();
    }
    if (timestampValue != null) {
      _json["timestampValue"] = timestampValue;
    }
    return _json;
  }
}

/// A value of a field, including its frequency.
class GooglePrivacyDlpV2beta1ValueFrequency {
  /// How many times the value is contained in the field.
  core.String count;

  /// A value contained in the field in question.
  GooglePrivacyDlpV2beta1Value value;

  GooglePrivacyDlpV2beta1ValueFrequency();

  GooglePrivacyDlpV2beta1ValueFrequency.fromJson(core.Map _json) {
    if (_json.containsKey("count")) {
      count = _json["count"];
    }
    if (_json.containsKey("value")) {
      value = new GooglePrivacyDlpV2beta1Value.fromJson(_json["value"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (count != null) {
      _json["count"] = count;
    }
    if (value != null) {
      _json["value"] = (value).toJson();
    }
    return _json;
  }
}

/// Message defining a list of words or phrases to search for in the data.
class GooglePrivacyDlpV2beta1WordList {
  /// Words or phrases defining the dictionary. The dictionary must contain
  /// at least one phrase and every phrase must contain at least 2 characters
  /// that are letters or digits. [required]
  core.List<core.String> words;

  GooglePrivacyDlpV2beta1WordList();

  GooglePrivacyDlpV2beta1WordList.fromJson(core.Map _json) {
    if (_json.containsKey("words")) {
      words = (_json["words"] as core.List).cast<core.String>();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (words != null) {
      _json["words"] = words;
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
class GoogleProtobufEmpty {
  GoogleProtobufEmpty();

  GoogleProtobufEmpty.fromJson(core.Map _json) {}

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    return _json;
  }
}

/// The `Status` type defines a logical error model that is suitable for
/// different
/// programming environments, including REST APIs and RPC APIs. It is used by
/// [gRPC](https://github.com/grpc). The error model is designed to be:
///
/// - Simple to use and understand for most users
/// - Flexible enough to meet unexpected needs
///
/// # Overview
///
/// The `Status` message contains three pieces of data: error code, error
/// message,
/// and error details. The error code should be an enum value of
/// google.rpc.Code, but it may accept additional error codes if needed.  The
/// error message should be a developer-facing English message that helps
/// developers *understand* and *resolve* the error. If a localized user-facing
/// error message is needed, put the localized message in the error details or
/// localize it in the client. The optional error details may contain arbitrary
/// information about the error. There is a predefined set of error detail types
/// in the package `google.rpc` that can be used for common error conditions.
///
/// # Language mapping
///
/// The `Status` message is the logical representation of the error model, but
/// it
/// is not necessarily the actual wire format. When the `Status` message is
/// exposed in different client libraries and different wire protocols, it can
/// be
/// mapped differently. For example, it will likely be mapped to some exceptions
/// in Java, but more likely mapped to some error codes in C.
///
/// # Other uses
///
/// The error model and the `Status` message can be used in a variety of
/// environments, either with or without APIs, to provide a
/// consistent developer experience across different environments.
///
/// Example uses of this error model include:
///
/// - Partial errors. If a service needs to return partial errors to the client,
/// it may embed the `Status` in the normal response to indicate the partial
///     errors.
///
/// - Workflow errors. A typical workflow has multiple steps. Each step may
///     have a `Status` message for error reporting.
///
/// - Batch operations. If a client uses batch request and batch response, the
///     `Status` message should be used directly inside batch response, one for
///     each error sub-response.
///
/// - Asynchronous operations. If an API call embeds asynchronous operation
///     results in its response, the status of those operations should be
///     represented directly using the `Status` message.
///
/// - Logging. If some API errors are stored in logs, the message `Status` could
/// be used directly after any stripping needed for security/privacy reasons.
class GoogleRpcStatus {
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

  GoogleRpcStatus();

  GoogleRpcStatus.fromJson(core.Map _json) {
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

/// Represents a whole calendar date, e.g. date of birth. The time of day and
/// time zone are either specified elsewhere or are not significant. The date
/// is relative to the Proleptic Gregorian Calendar. The day may be 0 to
/// represent a year and month where the day is not significant, e.g. credit
/// card
/// expiration date. The year may be 0 to represent a month and day independent
/// of year, e.g. anniversary date. Related types are google.type.TimeOfDay
/// and `google.protobuf.Timestamp`.
class GoogleTypeDate {
  /// Day of month. Must be from 1 to 31 and valid for the year and month, or 0
  /// if specifying a year/month where the day is not significant.
  core.int day;

  /// Month of year. Must be from 1 to 12.
  core.int month;

  /// Year of date. Must be from 1 to 9999, or 0 if specifying a date without
  /// a year.
  core.int year;

  GoogleTypeDate();

  GoogleTypeDate.fromJson(core.Map _json) {
    if (_json.containsKey("day")) {
      day = _json["day"];
    }
    if (_json.containsKey("month")) {
      month = _json["month"];
    }
    if (_json.containsKey("year")) {
      year = _json["year"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (day != null) {
      _json["day"] = day;
    }
    if (month != null) {
      _json["month"] = month;
    }
    if (year != null) {
      _json["year"] = year;
    }
    return _json;
  }
}

/// Represents a time of day. The date and time zone are either not significant
/// or are specified elsewhere. An API may choose to allow leap seconds. Related
/// types are google.type.Date and `google.protobuf.Timestamp`.
class GoogleTypeTimeOfDay {
  /// Hours of day in 24 hour format. Should be from 0 to 23. An API may choose
  /// to allow the value "24:00:00" for scenarios like business closing time.
  core.int hours;

  /// Minutes of hour of day. Must be from 0 to 59.
  core.int minutes;

  /// Fractions of seconds in nanoseconds. Must be from 0 to 999,999,999.
  core.int nanos;

  /// Seconds of minutes of the time. Must normally be from 0 to 59. An API may
  /// allow the value 60 if it allows leap-seconds.
  core.int seconds;

  GoogleTypeTimeOfDay();

  GoogleTypeTimeOfDay.fromJson(core.Map _json) {
    if (_json.containsKey("hours")) {
      hours = _json["hours"];
    }
    if (_json.containsKey("minutes")) {
      minutes = _json["minutes"];
    }
    if (_json.containsKey("nanos")) {
      nanos = _json["nanos"];
    }
    if (_json.containsKey("seconds")) {
      seconds = _json["seconds"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (hours != null) {
      _json["hours"] = hours;
    }
    if (minutes != null) {
      _json["minutes"] = minutes;
    }
    if (nanos != null) {
      _json["nanos"] = nanos;
    }
    if (seconds != null) {
      _json["seconds"] = seconds;
    }
    return _json;
  }
}
