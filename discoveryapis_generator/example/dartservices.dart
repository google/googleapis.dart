// This is a generated file (see the discoveryapis_generator project).

// ignore_for_file: camel_case_types
// ignore_for_file: comment_references
// ignore_for_file: file_names
// ignore_for_file: library_names
// ignore_for_file: lines_longer_than_80_chars
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: prefer_expression_function_bodies
// ignore_for_file: prefer_final_locals
// ignore_for_file: prefer_interpolation_to_compose_strings
// ignore_for_file: unnecessary_brace_in_string_interps
// ignore_for_file: unnecessary_cast
// ignore_for_file: unnecessary_lambdas
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: unnecessary_string_interpolations

library dartservices.v1;

import 'dart:async' as async;
import 'dart:convert' as convert;
import 'dart:core' as core;

import 'package:_discoveryapis_commons/_discoveryapis_commons.dart' as commons;
import 'package:http/http.dart' as http;

export 'package:_discoveryapis_commons/_discoveryapis_commons.dart'
    show ApiRequestError, DetailedApiRequestError;

const userAgent = 'dart-api-client dartservices/v1';

class DartservicesApi {
  final commons.ApiRequester _requester;

  DartservicesApi(http.Client client,
      {core.String rootUrl = 'http://localhost/',
      core.String servicePath = 'api/dartservices/v1/'})
      : _requester =
            commons.ApiRequester(client, rootUrl, servicePath, userAgent);

  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// Completes with a [AnalysisResults].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<AnalysisResults> analyze(SourceRequest request) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (request != null) {
      _body = convert.json.encode(request.toJson());
    }

    _url = 'analyze';

    final _response = _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then(
      (data) =>
          AnalysisResults.fromJson(data as core.Map<core.String, core.dynamic>),
    );
  }

  /// Request parameters:
  ///
  /// [source] - Query parameter: 'source'.
  ///
  /// Completes with a [AnalysisResults].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<AnalysisResults> analyzeGet({
    core.String source,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (source != null) {
      _queryParams['source'] = [source];
    }

    _url = 'analyze';

    final _response = _requester.request(
      _url,
      'GET',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then(
      (data) =>
          AnalysisResults.fromJson(data as core.Map<core.String, core.dynamic>),
    );
  }

  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// Completes with a [CompileResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<CompileResponse> compile(SourceRequest request) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (request != null) {
      _body = convert.json.encode(request.toJson());
    }

    _url = 'compile';

    final _response = _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then(
      (data) =>
          CompileResponse.fromJson(data as core.Map<core.String, core.dynamic>),
    );
  }

  /// Request parameters:
  ///
  /// [source] - Query parameter: 'source'.
  ///
  /// Completes with a [CompileResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<CompileResponse> compileGet({
    core.String source,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (source != null) {
      _queryParams['source'] = [source];
    }

    _url = 'compile';

    final _response = _requester.request(
      _url,
      'GET',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then(
      (data) =>
          CompileResponse.fromJson(data as core.Map<core.String, core.dynamic>),
    );
  }

  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future complete(SourceRequest request) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (request != null) {
      _body = convert.json.encode(request.toJson());
    }

    _downloadOptions = null;

    _url = 'complete';

    final _response = _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then(
      (data) => null,
    );
  }

  /// Request parameters:
  ///
  /// [offset] - Query parameter: 'offset'.
  ///
  /// [source] - Query parameter: 'source'.
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future completeGet({
    core.int offset,
    core.String source,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (offset != null) {
      _queryParams['offset'] = ['${offset}'];
    }
    if (source != null) {
      _queryParams['source'] = [source];
    }

    _downloadOptions = null;

    _url = 'complete';

    final _response = _requester.request(
      _url,
      'GET',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then(
      (data) => null,
    );
  }

  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// Completes with a [DocumentResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<DocumentResponse> document(SourceRequest request) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (request != null) {
      _body = convert.json.encode(request.toJson());
    }

    _url = 'document';

    final _response = _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then(
      (data) => DocumentResponse.fromJson(
          data as core.Map<core.String, core.dynamic>),
    );
  }

  /// Request parameters:
  ///
  /// [offset] - Query parameter: 'offset'.
  ///
  /// [source] - Query parameter: 'source'.
  ///
  /// Completes with a [DocumentResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<DocumentResponse> documentGet({
    core.int offset,
    core.String source,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (offset != null) {
      _queryParams['offset'] = ['${offset}'];
    }
    if (source != null) {
      _queryParams['source'] = [source];
    }

    _url = 'document';

    final _response = _requester.request(
      _url,
      'GET',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then(
      (data) => DocumentResponse.fromJson(
          data as core.Map<core.String, core.dynamic>),
    );
  }
}

class AnalysisIssue {
  core.int charLength;
  core.int charStart;
  core.String kind;
  core.int line;
  core.String location;
  core.String message;

  AnalysisIssue();

  AnalysisIssue.fromJson(core.Map _json) {
    if (_json.containsKey('charLength')) {
      charLength = _json['charLength'] as core.int;
    }
    if (_json.containsKey('charStart')) {
      charStart = _json['charStart'] as core.int;
    }
    if (_json.containsKey('kind')) {
      kind = _json['kind'] as core.String;
    }
    if (_json.containsKey('line')) {
      line = _json['line'] as core.int;
    }
    if (_json.containsKey('location')) {
      location = _json['location'] as core.String;
    }
    if (_json.containsKey('message')) {
      message = _json['message'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (charLength != null) {
      _json['charLength'] = charLength;
    }
    if (charStart != null) {
      _json['charStart'] = charStart;
    }
    if (kind != null) {
      _json['kind'] = kind;
    }
    if (line != null) {
      _json['line'] = line;
    }
    if (location != null) {
      _json['location'] = location;
    }
    if (message != null) {
      _json['message'] = message;
    }
    return _json;
  }
}

class AnalysisResults {
  core.List<AnalysisIssue> issues;

  AnalysisResults();

  AnalysisResults.fromJson(core.Map _json) {
    if (_json.containsKey('issues')) {
      issues = (_json['issues'] as core.List)
          .map<AnalysisIssue>((value) => AnalysisIssue.fromJson(
              value as core.Map<core.String, core.dynamic>))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (issues != null) {
      _json['issues'] = issues.map((value) => value.toJson()).toList();
    }
    return _json;
  }
}

class CompileResponse {
  core.String result;

  CompileResponse();

  CompileResponse.fromJson(core.Map _json) {
    if (_json.containsKey('result')) {
      result = _json['result'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (result != null) {
      _json['result'] = result;
    }
    return _json;
  }
}

class DocumentResponse {
  core.Map<core.String, core.String> info;

  DocumentResponse();

  DocumentResponse.fromJson(core.Map _json) {
    if (_json.containsKey('info')) {
      info = (_json['info'] as core.Map).cast<core.String, core.String>().map(
            (key, item) => core.MapEntry(
              key,
              item as core.String,
            ),
          );
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (info != null) {
      _json['info'] = info;
    }
    return _json;
  }
}

class SourceRequest {
  core.int offset;
  core.String source;

  SourceRequest();

  SourceRequest.fromJson(core.Map _json) {
    if (_json.containsKey('offset')) {
      offset = _json['offset'] as core.int;
    }
    if (_json.containsKey('source')) {
      source = _json['source'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (offset != null) {
      _json['offset'] = offset;
    }
    if (source != null) {
      _json['source'] = source;
    }
    return _json;
  }
}
