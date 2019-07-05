// This is a generated file (see the discoveryapis_generator project).

// ignore_for_file: unnecessary_cast

library googleapis.youtubereporting.v1;

import 'dart:core' as core;
import 'dart:async' as async;
import 'dart:convert' as convert;

import 'package:_discoveryapis_commons/_discoveryapis_commons.dart' as commons;
import 'package:http/http.dart' as http;

export 'package:_discoveryapis_commons/_discoveryapis_commons.dart'
    show
        ApiRequestError,
        DetailedApiRequestError,
        Media,
        UploadOptions,
        ResumableUploadOptions,
        DownloadOptions,
        PartialDownloadOptions,
        ByteRange;

const core.String USER_AGENT = 'dart-api-client youtubereporting/v1';

/// Schedules reporting jobs containing your YouTube Analytics data and
/// downloads the resulting bulk data reports in the form of CSV files.
class YoutubereportingApi {
  /// View monetary and non-monetary YouTube Analytics reports for your YouTube
  /// content
  static const YtAnalyticsMonetaryReadonlyScope =
      "https://www.googleapis.com/auth/yt-analytics-monetary.readonly";

  /// View YouTube Analytics reports for your YouTube content
  static const YtAnalyticsReadonlyScope =
      "https://www.googleapis.com/auth/yt-analytics.readonly";

  final commons.ApiRequester _requester;

  JobsResourceApi get jobs => new JobsResourceApi(_requester);
  MediaResourceApi get media => new MediaResourceApi(_requester);
  ReportTypesResourceApi get reportTypes =>
      new ReportTypesResourceApi(_requester);

  YoutubereportingApi(http.Client client,
      {core.String rootUrl = "https://youtubereporting.googleapis.com/",
      core.String servicePath = ""})
      : _requester =
            new commons.ApiRequester(client, rootUrl, servicePath, USER_AGENT);
}

class JobsResourceApi {
  final commons.ApiRequester _requester;

  JobsReportsResourceApi get reports => new JobsReportsResourceApi(_requester);

  JobsResourceApi(commons.ApiRequester client) : _requester = client;

  /// Creates a job and returns it.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [onBehalfOfContentOwner] - The content owner's external ID on which behalf
  /// the user is acting on. If
  /// not set, the user is acting for himself (his own channel).
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Job].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Job> create(Job request,
      {core.String onBehalfOfContentOwner, core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (request != null) {
      _body = convert.json.encode((request).toJson());
    }
    if (onBehalfOfContentOwner != null) {
      _queryParams["onBehalfOfContentOwner"] = [onBehalfOfContentOwner];
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1/jobs';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Job.fromJson(data));
  }

  /// Deletes a job.
  ///
  /// Request parameters:
  ///
  /// [jobId] - The ID of the job to delete.
  ///
  /// [onBehalfOfContentOwner] - The content owner's external ID on which behalf
  /// the user is acting on. If
  /// not set, the user is acting for himself (his own channel).
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
  async.Future<Empty> delete(core.String jobId,
      {core.String onBehalfOfContentOwner, core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (jobId == null) {
      throw new core.ArgumentError("Parameter jobId is required.");
    }
    if (onBehalfOfContentOwner != null) {
      _queryParams["onBehalfOfContentOwner"] = [onBehalfOfContentOwner];
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1/jobs/' + commons.Escaper.ecapeVariable('$jobId');

    var _response = _requester.request(_url, "DELETE",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Empty.fromJson(data));
  }

  /// Gets a job.
  ///
  /// Request parameters:
  ///
  /// [jobId] - The ID of the job to retrieve.
  ///
  /// [onBehalfOfContentOwner] - The content owner's external ID on which behalf
  /// the user is acting on. If
  /// not set, the user is acting for himself (his own channel).
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Job].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Job> get(core.String jobId,
      {core.String onBehalfOfContentOwner, core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (jobId == null) {
      throw new core.ArgumentError("Parameter jobId is required.");
    }
    if (onBehalfOfContentOwner != null) {
      _queryParams["onBehalfOfContentOwner"] = [onBehalfOfContentOwner];
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1/jobs/' + commons.Escaper.ecapeVariable('$jobId');

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Job.fromJson(data));
  }

  /// Lists jobs.
  ///
  /// Request parameters:
  ///
  /// [pageToken] - A token identifying a page of results the server should
  /// return. Typically,
  /// this is the value of
  /// ListReportTypesResponse.next_page_token
  /// returned in response to the previous call to the `ListJobs` method.
  ///
  /// [includeSystemManaged] - If set to true, also system-managed jobs will be
  /// returned; otherwise only
  /// user-created jobs will be returned. System-managed jobs can neither be
  /// modified nor deleted.
  ///
  /// [pageSize] - Requested page size. Server may return fewer jobs than
  /// requested.
  /// If unspecified, server will pick an appropriate default.
  ///
  /// [onBehalfOfContentOwner] - The content owner's external ID on which behalf
  /// the user is acting on. If
  /// not set, the user is acting for himself (his own channel).
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListJobsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListJobsResponse> list(
      {core.String pageToken,
      core.bool includeSystemManaged,
      core.int pageSize,
      core.String onBehalfOfContentOwner,
      core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (pageToken != null) {
      _queryParams["pageToken"] = [pageToken];
    }
    if (includeSystemManaged != null) {
      _queryParams["includeSystemManaged"] = ["${includeSystemManaged}"];
    }
    if (pageSize != null) {
      _queryParams["pageSize"] = ["${pageSize}"];
    }
    if (onBehalfOfContentOwner != null) {
      _queryParams["onBehalfOfContentOwner"] = [onBehalfOfContentOwner];
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1/jobs';

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new ListJobsResponse.fromJson(data));
  }
}

class JobsReportsResourceApi {
  final commons.ApiRequester _requester;

  JobsReportsResourceApi(commons.ApiRequester client) : _requester = client;

  /// Gets the metadata of a specific report.
  ///
  /// Request parameters:
  ///
  /// [jobId] - The ID of the job.
  ///
  /// [reportId] - The ID of the report to retrieve.
  ///
  /// [onBehalfOfContentOwner] - The content owner's external ID on which behalf
  /// the user is acting on. If
  /// not set, the user is acting for himself (his own channel).
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Report].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Report> get(core.String jobId, core.String reportId,
      {core.String onBehalfOfContentOwner, core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (jobId == null) {
      throw new core.ArgumentError("Parameter jobId is required.");
    }
    if (reportId == null) {
      throw new core.ArgumentError("Parameter reportId is required.");
    }
    if (onBehalfOfContentOwner != null) {
      _queryParams["onBehalfOfContentOwner"] = [onBehalfOfContentOwner];
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1/jobs/' +
        commons.Escaper.ecapeVariable('$jobId') +
        '/reports/' +
        commons.Escaper.ecapeVariable('$reportId');

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Report.fromJson(data));
  }

  /// Lists reports created by a specific job.
  /// Returns NOT_FOUND if the job does not exist.
  ///
  /// Request parameters:
  ///
  /// [jobId] - The ID of the job.
  ///
  /// [onBehalfOfContentOwner] - The content owner's external ID on which behalf
  /// the user is acting on. If
  /// not set, the user is acting for himself (his own channel).
  ///
  /// [startTimeBefore] - If set, only reports whose start time is smaller than
  /// the specified
  /// date/time are returned.
  ///
  /// [createdAfter] - If set, only reports created after the specified
  /// date/time are returned.
  ///
  /// [pageToken] - A token identifying a page of results the server should
  /// return. Typically,
  /// this is the value of
  /// ListReportsResponse.next_page_token
  /// returned in response to the previous call to the `ListReports` method.
  ///
  /// [startTimeAtOrAfter] - If set, only reports whose start time is greater
  /// than or equal the
  /// specified date/time are returned.
  ///
  /// [pageSize] - Requested page size. Server may return fewer report types
  /// than requested.
  /// If unspecified, server will pick an appropriate default.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListReportsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListReportsResponse> list(core.String jobId,
      {core.String onBehalfOfContentOwner,
      core.String startTimeBefore,
      core.String createdAfter,
      core.String pageToken,
      core.String startTimeAtOrAfter,
      core.int pageSize,
      core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (jobId == null) {
      throw new core.ArgumentError("Parameter jobId is required.");
    }
    if (onBehalfOfContentOwner != null) {
      _queryParams["onBehalfOfContentOwner"] = [onBehalfOfContentOwner];
    }
    if (startTimeBefore != null) {
      _queryParams["startTimeBefore"] = [startTimeBefore];
    }
    if (createdAfter != null) {
      _queryParams["createdAfter"] = [createdAfter];
    }
    if (pageToken != null) {
      _queryParams["pageToken"] = [pageToken];
    }
    if (startTimeAtOrAfter != null) {
      _queryParams["startTimeAtOrAfter"] = [startTimeAtOrAfter];
    }
    if (pageSize != null) {
      _queryParams["pageSize"] = ["${pageSize}"];
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1/jobs/' + commons.Escaper.ecapeVariable('$jobId') + '/reports';

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new ListReportsResponse.fromJson(data));
  }
}

class MediaResourceApi {
  final commons.ApiRequester _requester;

  MediaResourceApi(commons.ApiRequester client) : _requester = client;

  /// Method for media download. Download is supported
  /// on the URI `/v1/media/{+name}?alt=media`.
  ///
  /// Request parameters:
  ///
  /// [resourceName] - Name of the media that is being downloaded.
  /// Value must have pattern "^.+$".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// [downloadOptions] - Options for downloading. A download can be either a
  /// Metadata (default) or Media download. Partial Media downloads are possible
  /// as well.
  ///
  /// Completes with a
  ///
  /// - [GdataMedia] for Metadata downloads (see [downloadOptions]).
  ///
  /// - [commons.Media] for Media downloads (see [downloadOptions]).
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future download(core.String resourceName,
      {core.String $fields,
      commons.DownloadOptions downloadOptions =
          commons.DownloadOptions.Metadata}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (resourceName == null) {
      throw new core.ArgumentError("Parameter resourceName is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _downloadOptions = downloadOptions;

    _url = 'v1/media/' + commons.Escaper.ecapeVariableReserved('$resourceName');

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    if (_downloadOptions == null ||
        _downloadOptions == commons.DownloadOptions.Metadata) {
      return _response.then((data) => new GdataMedia.fromJson(data));
    } else {
      return _response;
    }
  }
}

class ReportTypesResourceApi {
  final commons.ApiRequester _requester;

  ReportTypesResourceApi(commons.ApiRequester client) : _requester = client;

  /// Lists report types.
  ///
  /// Request parameters:
  ///
  /// [pageToken] - A token identifying a page of results the server should
  /// return. Typically,
  /// this is the value of
  /// ListReportTypesResponse.next_page_token
  /// returned in response to the previous call to the `ListReportTypes` method.
  ///
  /// [includeSystemManaged] - If set to true, also system-managed report types
  /// will be returned;
  /// otherwise only the report types that can be used to create new reporting
  /// jobs will be returned.
  ///
  /// [pageSize] - Requested page size. Server may return fewer report types
  /// than requested.
  /// If unspecified, server will pick an appropriate default.
  ///
  /// [onBehalfOfContentOwner] - The content owner's external ID on which behalf
  /// the user is acting on. If
  /// not set, the user is acting for himself (his own channel).
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListReportTypesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListReportTypesResponse> list(
      {core.String pageToken,
      core.bool includeSystemManaged,
      core.int pageSize,
      core.String onBehalfOfContentOwner,
      core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (pageToken != null) {
      _queryParams["pageToken"] = [pageToken];
    }
    if (includeSystemManaged != null) {
      _queryParams["includeSystemManaged"] = ["${includeSystemManaged}"];
    }
    if (pageSize != null) {
      _queryParams["pageSize"] = ["${pageSize}"];
    }
    if (onBehalfOfContentOwner != null) {
      _queryParams["onBehalfOfContentOwner"] = [onBehalfOfContentOwner];
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1/reportTypes';

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new ListReportTypesResponse.fromJson(data));
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

/// gdata
class GdataBlobstore2Info {
  /// gdata
  core.String blobGeneration;

  /// gdata
  core.String blobId;

  /// gdata
  core.String downloadReadHandle;
  core.List<core.int> get downloadReadHandleAsBytes {
    return convert.base64.decode(downloadReadHandle);
  }

  set downloadReadHandleAsBytes(core.List<core.int> _bytes) {
    downloadReadHandle =
        convert.base64.encode(_bytes).replaceAll("/", "_").replaceAll("+", "-");
  }

  /// gdata
  core.String readToken;

  /// gdata
  core.String uploadMetadataContainer;
  core.List<core.int> get uploadMetadataContainerAsBytes {
    return convert.base64.decode(uploadMetadataContainer);
  }

  set uploadMetadataContainerAsBytes(core.List<core.int> _bytes) {
    uploadMetadataContainer =
        convert.base64.encode(_bytes).replaceAll("/", "_").replaceAll("+", "-");
  }

  GdataBlobstore2Info();

  GdataBlobstore2Info.fromJson(core.Map _json) {
    if (_json.containsKey("blobGeneration")) {
      blobGeneration = _json["blobGeneration"];
    }
    if (_json.containsKey("blobId")) {
      blobId = _json["blobId"];
    }
    if (_json.containsKey("downloadReadHandle")) {
      downloadReadHandle = _json["downloadReadHandle"];
    }
    if (_json.containsKey("readToken")) {
      readToken = _json["readToken"];
    }
    if (_json.containsKey("uploadMetadataContainer")) {
      uploadMetadataContainer = _json["uploadMetadataContainer"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (blobGeneration != null) {
      _json["blobGeneration"] = blobGeneration;
    }
    if (blobId != null) {
      _json["blobId"] = blobId;
    }
    if (downloadReadHandle != null) {
      _json["downloadReadHandle"] = downloadReadHandle;
    }
    if (readToken != null) {
      _json["readToken"] = readToken;
    }
    if (uploadMetadataContainer != null) {
      _json["uploadMetadataContainer"] = uploadMetadataContainer;
    }
    return _json;
  }
}

/// gdata
class GdataCompositeMedia {
  /// gdata
  core.String blobRef;
  core.List<core.int> get blobRefAsBytes {
    return convert.base64.decode(blobRef);
  }

  set blobRefAsBytes(core.List<core.int> _bytes) {
    blobRef =
        convert.base64.encode(_bytes).replaceAll("/", "_").replaceAll("+", "-");
  }

  /// gdata
  GdataBlobstore2Info blobstore2Info;

  /// gdata
  core.String cosmoBinaryReference;
  core.List<core.int> get cosmoBinaryReferenceAsBytes {
    return convert.base64.decode(cosmoBinaryReference);
  }

  set cosmoBinaryReferenceAsBytes(core.List<core.int> _bytes) {
    cosmoBinaryReference =
        convert.base64.encode(_bytes).replaceAll("/", "_").replaceAll("+", "-");
  }

  /// gdata
  core.int crc32cHash;

  /// gdata
  core.String inline;
  core.List<core.int> get inlineAsBytes {
    return convert.base64.decode(inline);
  }

  set inlineAsBytes(core.List<core.int> _bytes) {
    inline =
        convert.base64.encode(_bytes).replaceAll("/", "_").replaceAll("+", "-");
  }

  /// gdata
  core.String length;

  /// gdata
  core.String md5Hash;
  core.List<core.int> get md5HashAsBytes {
    return convert.base64.decode(md5Hash);
  }

  set md5HashAsBytes(core.List<core.int> _bytes) {
    md5Hash =
        convert.base64.encode(_bytes).replaceAll("/", "_").replaceAll("+", "-");
  }

  /// gdata
  GdataObjectId objectId;

  /// gdata
  core.String path;

  /// gdata
  /// Possible string values are:
  /// - "PATH" : gdata
  /// - "BLOB_REF" : gdata
  /// - "INLINE" : gdata
  /// - "BIGSTORE_REF" : gdata
  /// - "COSMO_BINARY_REFERENCE" : gdata
  core.String referenceType;

  /// gdata
  core.String sha1Hash;
  core.List<core.int> get sha1HashAsBytes {
    return convert.base64.decode(sha1Hash);
  }

  set sha1HashAsBytes(core.List<core.int> _bytes) {
    sha1Hash =
        convert.base64.encode(_bytes).replaceAll("/", "_").replaceAll("+", "-");
  }

  GdataCompositeMedia();

  GdataCompositeMedia.fromJson(core.Map _json) {
    if (_json.containsKey("blobRef")) {
      blobRef = _json["blobRef"];
    }
    if (_json.containsKey("blobstore2Info")) {
      blobstore2Info =
          new GdataBlobstore2Info.fromJson(_json["blobstore2Info"]);
    }
    if (_json.containsKey("cosmoBinaryReference")) {
      cosmoBinaryReference = _json["cosmoBinaryReference"];
    }
    if (_json.containsKey("crc32cHash")) {
      crc32cHash = _json["crc32cHash"];
    }
    if (_json.containsKey("inline")) {
      inline = _json["inline"];
    }
    if (_json.containsKey("length")) {
      length = _json["length"];
    }
    if (_json.containsKey("md5Hash")) {
      md5Hash = _json["md5Hash"];
    }
    if (_json.containsKey("objectId")) {
      objectId = new GdataObjectId.fromJson(_json["objectId"]);
    }
    if (_json.containsKey("path")) {
      path = _json["path"];
    }
    if (_json.containsKey("referenceType")) {
      referenceType = _json["referenceType"];
    }
    if (_json.containsKey("sha1Hash")) {
      sha1Hash = _json["sha1Hash"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (blobRef != null) {
      _json["blobRef"] = blobRef;
    }
    if (blobstore2Info != null) {
      _json["blobstore2Info"] = (blobstore2Info).toJson();
    }
    if (cosmoBinaryReference != null) {
      _json["cosmoBinaryReference"] = cosmoBinaryReference;
    }
    if (crc32cHash != null) {
      _json["crc32cHash"] = crc32cHash;
    }
    if (inline != null) {
      _json["inline"] = inline;
    }
    if (length != null) {
      _json["length"] = length;
    }
    if (md5Hash != null) {
      _json["md5Hash"] = md5Hash;
    }
    if (objectId != null) {
      _json["objectId"] = (objectId).toJson();
    }
    if (path != null) {
      _json["path"] = path;
    }
    if (referenceType != null) {
      _json["referenceType"] = referenceType;
    }
    if (sha1Hash != null) {
      _json["sha1Hash"] = sha1Hash;
    }
    return _json;
  }
}

/// gdata
class GdataContentTypeInfo {
  /// gdata
  core.String bestGuess;

  /// gdata
  core.String fromBytes;

  /// gdata
  core.String fromFileName;

  /// gdata
  core.String fromHeader;

  /// gdata
  core.String fromUrlPath;

  GdataContentTypeInfo();

  GdataContentTypeInfo.fromJson(core.Map _json) {
    if (_json.containsKey("bestGuess")) {
      bestGuess = _json["bestGuess"];
    }
    if (_json.containsKey("fromBytes")) {
      fromBytes = _json["fromBytes"];
    }
    if (_json.containsKey("fromFileName")) {
      fromFileName = _json["fromFileName"];
    }
    if (_json.containsKey("fromHeader")) {
      fromHeader = _json["fromHeader"];
    }
    if (_json.containsKey("fromUrlPath")) {
      fromUrlPath = _json["fromUrlPath"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (bestGuess != null) {
      _json["bestGuess"] = bestGuess;
    }
    if (fromBytes != null) {
      _json["fromBytes"] = fromBytes;
    }
    if (fromFileName != null) {
      _json["fromFileName"] = fromFileName;
    }
    if (fromHeader != null) {
      _json["fromHeader"] = fromHeader;
    }
    if (fromUrlPath != null) {
      _json["fromUrlPath"] = fromUrlPath;
    }
    return _json;
  }
}

/// gdata
class GdataDiffChecksumsResponse {
  /// gdata
  GdataCompositeMedia checksumsLocation;

  /// gdata
  core.String chunkSizeBytes;

  /// gdata
  GdataCompositeMedia objectLocation;

  /// gdata
  core.String objectSizeBytes;

  /// gdata
  core.String objectVersion;

  GdataDiffChecksumsResponse();

  GdataDiffChecksumsResponse.fromJson(core.Map _json) {
    if (_json.containsKey("checksumsLocation")) {
      checksumsLocation =
          new GdataCompositeMedia.fromJson(_json["checksumsLocation"]);
    }
    if (_json.containsKey("chunkSizeBytes")) {
      chunkSizeBytes = _json["chunkSizeBytes"];
    }
    if (_json.containsKey("objectLocation")) {
      objectLocation =
          new GdataCompositeMedia.fromJson(_json["objectLocation"]);
    }
    if (_json.containsKey("objectSizeBytes")) {
      objectSizeBytes = _json["objectSizeBytes"];
    }
    if (_json.containsKey("objectVersion")) {
      objectVersion = _json["objectVersion"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (checksumsLocation != null) {
      _json["checksumsLocation"] = (checksumsLocation).toJson();
    }
    if (chunkSizeBytes != null) {
      _json["chunkSizeBytes"] = chunkSizeBytes;
    }
    if (objectLocation != null) {
      _json["objectLocation"] = (objectLocation).toJson();
    }
    if (objectSizeBytes != null) {
      _json["objectSizeBytes"] = objectSizeBytes;
    }
    if (objectVersion != null) {
      _json["objectVersion"] = objectVersion;
    }
    return _json;
  }
}

/// gdata
class GdataDiffDownloadResponse {
  /// gdata
  GdataCompositeMedia objectLocation;

  GdataDiffDownloadResponse();

  GdataDiffDownloadResponse.fromJson(core.Map _json) {
    if (_json.containsKey("objectLocation")) {
      objectLocation =
          new GdataCompositeMedia.fromJson(_json["objectLocation"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (objectLocation != null) {
      _json["objectLocation"] = (objectLocation).toJson();
    }
    return _json;
  }
}

/// gdata
class GdataDiffUploadRequest {
  /// gdata
  GdataCompositeMedia checksumsInfo;

  /// gdata
  GdataCompositeMedia objectInfo;

  /// gdata
  core.String objectVersion;

  GdataDiffUploadRequest();

  GdataDiffUploadRequest.fromJson(core.Map _json) {
    if (_json.containsKey("checksumsInfo")) {
      checksumsInfo = new GdataCompositeMedia.fromJson(_json["checksumsInfo"]);
    }
    if (_json.containsKey("objectInfo")) {
      objectInfo = new GdataCompositeMedia.fromJson(_json["objectInfo"]);
    }
    if (_json.containsKey("objectVersion")) {
      objectVersion = _json["objectVersion"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (checksumsInfo != null) {
      _json["checksumsInfo"] = (checksumsInfo).toJson();
    }
    if (objectInfo != null) {
      _json["objectInfo"] = (objectInfo).toJson();
    }
    if (objectVersion != null) {
      _json["objectVersion"] = objectVersion;
    }
    return _json;
  }
}

/// gdata
class GdataDiffUploadResponse {
  /// gdata
  core.String objectVersion;

  /// gdata
  GdataCompositeMedia originalObject;

  GdataDiffUploadResponse();

  GdataDiffUploadResponse.fromJson(core.Map _json) {
    if (_json.containsKey("objectVersion")) {
      objectVersion = _json["objectVersion"];
    }
    if (_json.containsKey("originalObject")) {
      originalObject =
          new GdataCompositeMedia.fromJson(_json["originalObject"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (objectVersion != null) {
      _json["objectVersion"] = objectVersion;
    }
    if (originalObject != null) {
      _json["originalObject"] = (originalObject).toJson();
    }
    return _json;
  }
}

/// gdata
class GdataDiffVersionResponse {
  /// gdata
  core.String objectSizeBytes;

  /// gdata
  core.String objectVersion;

  GdataDiffVersionResponse();

  GdataDiffVersionResponse.fromJson(core.Map _json) {
    if (_json.containsKey("objectSizeBytes")) {
      objectSizeBytes = _json["objectSizeBytes"];
    }
    if (_json.containsKey("objectVersion")) {
      objectVersion = _json["objectVersion"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (objectSizeBytes != null) {
      _json["objectSizeBytes"] = objectSizeBytes;
    }
    if (objectVersion != null) {
      _json["objectVersion"] = objectVersion;
    }
    return _json;
  }
}

/// gdata
class GdataDownloadParameters {
  /// gdata
  core.bool allowGzipCompression;

  /// gdata
  core.bool ignoreRange;

  GdataDownloadParameters();

  GdataDownloadParameters.fromJson(core.Map _json) {
    if (_json.containsKey("allowGzipCompression")) {
      allowGzipCompression = _json["allowGzipCompression"];
    }
    if (_json.containsKey("ignoreRange")) {
      ignoreRange = _json["ignoreRange"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (allowGzipCompression != null) {
      _json["allowGzipCompression"] = allowGzipCompression;
    }
    if (ignoreRange != null) {
      _json["ignoreRange"] = ignoreRange;
    }
    return _json;
  }
}

/// gdata
class GdataMedia {
  /// gdata
  core.String algorithm;

  /// gdata
  core.String bigstoreObjectRef;
  core.List<core.int> get bigstoreObjectRefAsBytes {
    return convert.base64.decode(bigstoreObjectRef);
  }

  set bigstoreObjectRefAsBytes(core.List<core.int> _bytes) {
    bigstoreObjectRef =
        convert.base64.encode(_bytes).replaceAll("/", "_").replaceAll("+", "-");
  }

  /// gdata
  core.String blobRef;
  core.List<core.int> get blobRefAsBytes {
    return convert.base64.decode(blobRef);
  }

  set blobRefAsBytes(core.List<core.int> _bytes) {
    blobRef =
        convert.base64.encode(_bytes).replaceAll("/", "_").replaceAll("+", "-");
  }

  /// gdata
  GdataBlobstore2Info blobstore2Info;

  /// gdata
  core.List<GdataCompositeMedia> compositeMedia;

  /// gdata
  core.String contentType;

  /// gdata
  GdataContentTypeInfo contentTypeInfo;

  /// gdata
  core.String cosmoBinaryReference;
  core.List<core.int> get cosmoBinaryReferenceAsBytes {
    return convert.base64.decode(cosmoBinaryReference);
  }

  set cosmoBinaryReferenceAsBytes(core.List<core.int> _bytes) {
    cosmoBinaryReference =
        convert.base64.encode(_bytes).replaceAll("/", "_").replaceAll("+", "-");
  }

  /// gdata
  core.int crc32cHash;

  /// gdata
  GdataDiffChecksumsResponse diffChecksumsResponse;

  /// gdata
  GdataDiffDownloadResponse diffDownloadResponse;

  /// gdata
  GdataDiffUploadRequest diffUploadRequest;

  /// gdata
  GdataDiffUploadResponse diffUploadResponse;

  /// gdata
  GdataDiffVersionResponse diffVersionResponse;

  /// gdata
  GdataDownloadParameters downloadParameters;

  /// gdata
  core.String filename;

  /// gdata
  core.String hash;

  /// gdata
  core.bool hashVerified;

  /// gdata
  core.String inline;
  core.List<core.int> get inlineAsBytes {
    return convert.base64.decode(inline);
  }

  set inlineAsBytes(core.List<core.int> _bytes) {
    inline =
        convert.base64.encode(_bytes).replaceAll("/", "_").replaceAll("+", "-");
  }

  /// gdata
  core.bool isPotentialRetry;

  /// gdata
  core.String length;

  /// gdata
  core.String md5Hash;
  core.List<core.int> get md5HashAsBytes {
    return convert.base64.decode(md5Hash);
  }

  set md5HashAsBytes(core.List<core.int> _bytes) {
    md5Hash =
        convert.base64.encode(_bytes).replaceAll("/", "_").replaceAll("+", "-");
  }

  /// gdata
  core.String mediaId;
  core.List<core.int> get mediaIdAsBytes {
    return convert.base64.decode(mediaId);
  }

  set mediaIdAsBytes(core.List<core.int> _bytes) {
    mediaId =
        convert.base64.encode(_bytes).replaceAll("/", "_").replaceAll("+", "-");
  }

  /// gdata
  GdataObjectId objectId;

  /// gdata
  core.String path;

  /// gdata
  /// Possible string values are:
  /// - "PATH" : gdata
  /// - "BLOB_REF" : gdata
  /// - "INLINE" : gdata
  /// - "GET_MEDIA" : gdata
  /// - "COMPOSITE_MEDIA" : gdata
  /// - "BIGSTORE_REF" : gdata
  /// - "DIFF_VERSION_RESPONSE" : gdata
  /// - "DIFF_CHECKSUMS_RESPONSE" : gdata
  /// - "DIFF_DOWNLOAD_RESPONSE" : gdata
  /// - "DIFF_UPLOAD_REQUEST" : gdata
  /// - "DIFF_UPLOAD_RESPONSE" : gdata
  /// - "COSMO_BINARY_REFERENCE" : gdata
  /// - "ARBITRARY_BYTES" : gdata
  core.String referenceType;

  /// gdata
  core.String sha1Hash;
  core.List<core.int> get sha1HashAsBytes {
    return convert.base64.decode(sha1Hash);
  }

  set sha1HashAsBytes(core.List<core.int> _bytes) {
    sha1Hash =
        convert.base64.encode(_bytes).replaceAll("/", "_").replaceAll("+", "-");
  }

  /// gdata
  core.String sha256Hash;
  core.List<core.int> get sha256HashAsBytes {
    return convert.base64.decode(sha256Hash);
  }

  set sha256HashAsBytes(core.List<core.int> _bytes) {
    sha256Hash =
        convert.base64.encode(_bytes).replaceAll("/", "_").replaceAll("+", "-");
  }

  /// gdata
  core.String timestamp;

  /// gdata
  core.String token;

  GdataMedia();

  GdataMedia.fromJson(core.Map _json) {
    if (_json.containsKey("algorithm")) {
      algorithm = _json["algorithm"];
    }
    if (_json.containsKey("bigstoreObjectRef")) {
      bigstoreObjectRef = _json["bigstoreObjectRef"];
    }
    if (_json.containsKey("blobRef")) {
      blobRef = _json["blobRef"];
    }
    if (_json.containsKey("blobstore2Info")) {
      blobstore2Info =
          new GdataBlobstore2Info.fromJson(_json["blobstore2Info"]);
    }
    if (_json.containsKey("compositeMedia")) {
      compositeMedia = (_json["compositeMedia"] as core.List)
          .map<GdataCompositeMedia>(
              (value) => new GdataCompositeMedia.fromJson(value))
          .toList();
    }
    if (_json.containsKey("contentType")) {
      contentType = _json["contentType"];
    }
    if (_json.containsKey("contentTypeInfo")) {
      contentTypeInfo =
          new GdataContentTypeInfo.fromJson(_json["contentTypeInfo"]);
    }
    if (_json.containsKey("cosmoBinaryReference")) {
      cosmoBinaryReference = _json["cosmoBinaryReference"];
    }
    if (_json.containsKey("crc32cHash")) {
      crc32cHash = _json["crc32cHash"];
    }
    if (_json.containsKey("diffChecksumsResponse")) {
      diffChecksumsResponse = new GdataDiffChecksumsResponse.fromJson(
          _json["diffChecksumsResponse"]);
    }
    if (_json.containsKey("diffDownloadResponse")) {
      diffDownloadResponse =
          new GdataDiffDownloadResponse.fromJson(_json["diffDownloadResponse"]);
    }
    if (_json.containsKey("diffUploadRequest")) {
      diffUploadRequest =
          new GdataDiffUploadRequest.fromJson(_json["diffUploadRequest"]);
    }
    if (_json.containsKey("diffUploadResponse")) {
      diffUploadResponse =
          new GdataDiffUploadResponse.fromJson(_json["diffUploadResponse"]);
    }
    if (_json.containsKey("diffVersionResponse")) {
      diffVersionResponse =
          new GdataDiffVersionResponse.fromJson(_json["diffVersionResponse"]);
    }
    if (_json.containsKey("downloadParameters")) {
      downloadParameters =
          new GdataDownloadParameters.fromJson(_json["downloadParameters"]);
    }
    if (_json.containsKey("filename")) {
      filename = _json["filename"];
    }
    if (_json.containsKey("hash")) {
      hash = _json["hash"];
    }
    if (_json.containsKey("hashVerified")) {
      hashVerified = _json["hashVerified"];
    }
    if (_json.containsKey("inline")) {
      inline = _json["inline"];
    }
    if (_json.containsKey("isPotentialRetry")) {
      isPotentialRetry = _json["isPotentialRetry"];
    }
    if (_json.containsKey("length")) {
      length = _json["length"];
    }
    if (_json.containsKey("md5Hash")) {
      md5Hash = _json["md5Hash"];
    }
    if (_json.containsKey("mediaId")) {
      mediaId = _json["mediaId"];
    }
    if (_json.containsKey("objectId")) {
      objectId = new GdataObjectId.fromJson(_json["objectId"]);
    }
    if (_json.containsKey("path")) {
      path = _json["path"];
    }
    if (_json.containsKey("referenceType")) {
      referenceType = _json["referenceType"];
    }
    if (_json.containsKey("sha1Hash")) {
      sha1Hash = _json["sha1Hash"];
    }
    if (_json.containsKey("sha256Hash")) {
      sha256Hash = _json["sha256Hash"];
    }
    if (_json.containsKey("timestamp")) {
      timestamp = _json["timestamp"];
    }
    if (_json.containsKey("token")) {
      token = _json["token"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (algorithm != null) {
      _json["algorithm"] = algorithm;
    }
    if (bigstoreObjectRef != null) {
      _json["bigstoreObjectRef"] = bigstoreObjectRef;
    }
    if (blobRef != null) {
      _json["blobRef"] = blobRef;
    }
    if (blobstore2Info != null) {
      _json["blobstore2Info"] = (blobstore2Info).toJson();
    }
    if (compositeMedia != null) {
      _json["compositeMedia"] =
          compositeMedia.map((value) => (value).toJson()).toList();
    }
    if (contentType != null) {
      _json["contentType"] = contentType;
    }
    if (contentTypeInfo != null) {
      _json["contentTypeInfo"] = (contentTypeInfo).toJson();
    }
    if (cosmoBinaryReference != null) {
      _json["cosmoBinaryReference"] = cosmoBinaryReference;
    }
    if (crc32cHash != null) {
      _json["crc32cHash"] = crc32cHash;
    }
    if (diffChecksumsResponse != null) {
      _json["diffChecksumsResponse"] = (diffChecksumsResponse).toJson();
    }
    if (diffDownloadResponse != null) {
      _json["diffDownloadResponse"] = (diffDownloadResponse).toJson();
    }
    if (diffUploadRequest != null) {
      _json["diffUploadRequest"] = (diffUploadRequest).toJson();
    }
    if (diffUploadResponse != null) {
      _json["diffUploadResponse"] = (diffUploadResponse).toJson();
    }
    if (diffVersionResponse != null) {
      _json["diffVersionResponse"] = (diffVersionResponse).toJson();
    }
    if (downloadParameters != null) {
      _json["downloadParameters"] = (downloadParameters).toJson();
    }
    if (filename != null) {
      _json["filename"] = filename;
    }
    if (hash != null) {
      _json["hash"] = hash;
    }
    if (hashVerified != null) {
      _json["hashVerified"] = hashVerified;
    }
    if (inline != null) {
      _json["inline"] = inline;
    }
    if (isPotentialRetry != null) {
      _json["isPotentialRetry"] = isPotentialRetry;
    }
    if (length != null) {
      _json["length"] = length;
    }
    if (md5Hash != null) {
      _json["md5Hash"] = md5Hash;
    }
    if (mediaId != null) {
      _json["mediaId"] = mediaId;
    }
    if (objectId != null) {
      _json["objectId"] = (objectId).toJson();
    }
    if (path != null) {
      _json["path"] = path;
    }
    if (referenceType != null) {
      _json["referenceType"] = referenceType;
    }
    if (sha1Hash != null) {
      _json["sha1Hash"] = sha1Hash;
    }
    if (sha256Hash != null) {
      _json["sha256Hash"] = sha256Hash;
    }
    if (timestamp != null) {
      _json["timestamp"] = timestamp;
    }
    if (token != null) {
      _json["token"] = token;
    }
    return _json;
  }
}

/// gdata
class GdataObjectId {
  /// gdata
  core.String bucketName;

  /// gdata
  core.String generation;

  /// gdata
  core.String objectName;

  GdataObjectId();

  GdataObjectId.fromJson(core.Map _json) {
    if (_json.containsKey("bucketName")) {
      bucketName = _json["bucketName"];
    }
    if (_json.containsKey("generation")) {
      generation = _json["generation"];
    }
    if (_json.containsKey("objectName")) {
      objectName = _json["objectName"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (bucketName != null) {
      _json["bucketName"] = bucketName;
    }
    if (generation != null) {
      _json["generation"] = generation;
    }
    if (objectName != null) {
      _json["objectName"] = objectName;
    }
    return _json;
  }
}

/// A job creating reports of a specific type.
class Job {
  /// The creation date/time of the job.
  core.String createTime;

  /// The date/time when this job will expire/expired. After a job expired, no
  /// new reports are generated.
  core.String expireTime;

  /// The server-generated ID of the job (max. 40 characters).
  core.String id;

  /// The name of the job (max. 100 characters).
  core.String name;

  /// The type of reports this job creates. Corresponds to the ID of a
  /// ReportType.
  core.String reportTypeId;

  /// True if this a system-managed job that cannot be modified by the user;
  /// otherwise false.
  core.bool systemManaged;

  Job();

  Job.fromJson(core.Map _json) {
    if (_json.containsKey("createTime")) {
      createTime = _json["createTime"];
    }
    if (_json.containsKey("expireTime")) {
      expireTime = _json["expireTime"];
    }
    if (_json.containsKey("id")) {
      id = _json["id"];
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
    if (_json.containsKey("reportTypeId")) {
      reportTypeId = _json["reportTypeId"];
    }
    if (_json.containsKey("systemManaged")) {
      systemManaged = _json["systemManaged"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (createTime != null) {
      _json["createTime"] = createTime;
    }
    if (expireTime != null) {
      _json["expireTime"] = expireTime;
    }
    if (id != null) {
      _json["id"] = id;
    }
    if (name != null) {
      _json["name"] = name;
    }
    if (reportTypeId != null) {
      _json["reportTypeId"] = reportTypeId;
    }
    if (systemManaged != null) {
      _json["systemManaged"] = systemManaged;
    }
    return _json;
  }
}

/// Response message for ReportingService.ListJobs.
class ListJobsResponse {
  /// The list of jobs.
  core.List<Job> jobs;

  /// A token to retrieve next page of results.
  /// Pass this value in the
  /// ListJobsRequest.page_token
  /// field in the subsequent call to `ListJobs` method to retrieve the next
  /// page of results.
  core.String nextPageToken;

  ListJobsResponse();

  ListJobsResponse.fromJson(core.Map _json) {
    if (_json.containsKey("jobs")) {
      jobs = (_json["jobs"] as core.List)
          .map<Job>((value) => new Job.fromJson(value))
          .toList();
    }
    if (_json.containsKey("nextPageToken")) {
      nextPageToken = _json["nextPageToken"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (jobs != null) {
      _json["jobs"] = jobs.map((value) => (value).toJson()).toList();
    }
    if (nextPageToken != null) {
      _json["nextPageToken"] = nextPageToken;
    }
    return _json;
  }
}

/// Response message for ReportingService.ListReportTypes.
class ListReportTypesResponse {
  /// A token to retrieve next page of results.
  /// Pass this value in the
  /// ListReportTypesRequest.page_token
  /// field in the subsequent call to `ListReportTypes` method to retrieve the
  /// next page of results.
  core.String nextPageToken;

  /// The list of report types.
  core.List<ReportType> reportTypes;

  ListReportTypesResponse();

  ListReportTypesResponse.fromJson(core.Map _json) {
    if (_json.containsKey("nextPageToken")) {
      nextPageToken = _json["nextPageToken"];
    }
    if (_json.containsKey("reportTypes")) {
      reportTypes = (_json["reportTypes"] as core.List)
          .map<ReportType>((value) => new ReportType.fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (nextPageToken != null) {
      _json["nextPageToken"] = nextPageToken;
    }
    if (reportTypes != null) {
      _json["reportTypes"] =
          reportTypes.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

/// Response message for ReportingService.ListReports.
class ListReportsResponse {
  /// A token to retrieve next page of results.
  /// Pass this value in the
  /// ListReportsRequest.page_token
  /// field in the subsequent call to `ListReports` method to retrieve the next
  /// page of results.
  core.String nextPageToken;

  /// The list of report types.
  core.List<Report> reports;

  ListReportsResponse();

  ListReportsResponse.fromJson(core.Map _json) {
    if (_json.containsKey("nextPageToken")) {
      nextPageToken = _json["nextPageToken"];
    }
    if (_json.containsKey("reports")) {
      reports = (_json["reports"] as core.List)
          .map<Report>((value) => new Report.fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (nextPageToken != null) {
      _json["nextPageToken"] = nextPageToken;
    }
    if (reports != null) {
      _json["reports"] = reports.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

/// A report's metadata including the URL from which the report itself can be
/// downloaded.
class Report {
  /// The date/time when this report was created.
  core.String createTime;

  /// The URL from which the report can be downloaded (max. 1000 characters).
  core.String downloadUrl;

  /// The end of the time period that the report instance covers. The value is
  /// exclusive.
  core.String endTime;

  /// The server-generated ID of the report.
  core.String id;

  /// The date/time when the job this report belongs to will expire/expired.
  core.String jobExpireTime;

  /// The ID of the job that created this report.
  core.String jobId;

  /// The start of the time period that the report instance covers. The value is
  /// inclusive.
  core.String startTime;

  Report();

  Report.fromJson(core.Map _json) {
    if (_json.containsKey("createTime")) {
      createTime = _json["createTime"];
    }
    if (_json.containsKey("downloadUrl")) {
      downloadUrl = _json["downloadUrl"];
    }
    if (_json.containsKey("endTime")) {
      endTime = _json["endTime"];
    }
    if (_json.containsKey("id")) {
      id = _json["id"];
    }
    if (_json.containsKey("jobExpireTime")) {
      jobExpireTime = _json["jobExpireTime"];
    }
    if (_json.containsKey("jobId")) {
      jobId = _json["jobId"];
    }
    if (_json.containsKey("startTime")) {
      startTime = _json["startTime"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (createTime != null) {
      _json["createTime"] = createTime;
    }
    if (downloadUrl != null) {
      _json["downloadUrl"] = downloadUrl;
    }
    if (endTime != null) {
      _json["endTime"] = endTime;
    }
    if (id != null) {
      _json["id"] = id;
    }
    if (jobExpireTime != null) {
      _json["jobExpireTime"] = jobExpireTime;
    }
    if (jobId != null) {
      _json["jobId"] = jobId;
    }
    if (startTime != null) {
      _json["startTime"] = startTime;
    }
    return _json;
  }
}

/// A report type.
class ReportType {
  /// The date/time when this report type was/will be deprecated.
  core.String deprecateTime;

  /// The ID of the report type (max. 100 characters).
  core.String id;

  /// The name of the report type (max. 100 characters).
  core.String name;

  /// True if this a system-managed report type; otherwise false. Reporting jobs
  /// for system-managed report types are created automatically and can thus not
  /// be used in the `CreateJob` method.
  core.bool systemManaged;

  ReportType();

  ReportType.fromJson(core.Map _json) {
    if (_json.containsKey("deprecateTime")) {
      deprecateTime = _json["deprecateTime"];
    }
    if (_json.containsKey("id")) {
      id = _json["id"];
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
    if (_json.containsKey("systemManaged")) {
      systemManaged = _json["systemManaged"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (deprecateTime != null) {
      _json["deprecateTime"] = deprecateTime;
    }
    if (id != null) {
      _json["id"] = id;
    }
    if (name != null) {
      _json["name"] = name;
    }
    if (systemManaged != null) {
      _json["systemManaged"] = systemManaged;
    }
    return _json;
  }
}
