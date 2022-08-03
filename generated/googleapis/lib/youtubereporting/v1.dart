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

/// YouTube Reporting API - v1
///
/// Schedules reporting jobs containing your YouTube Analytics data and
/// downloads the resulting bulk data reports in the form of CSV files.
///
/// For more information, see
/// <https://developers.google.com/youtube/reporting/v1/reports/>
///
/// Create an instance of [YouTubeReportingApi] to access these resources:
///
/// - [JobsResource]
///   - [JobsReportsResource]
/// - [MediaResource]
/// - [ReportTypesResource]
library youtubereporting.v1;

import 'dart:async' as async;
import 'dart:convert' as convert;
import 'dart:core' as core;

import 'package:_discoveryapis_commons/_discoveryapis_commons.dart' as commons;
import 'package:http/http.dart' as http;

// ignore: deprecated_member_use_from_same_package
import '../shared.dart';
import '../src/user_agent.dart';

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

/// Schedules reporting jobs containing your YouTube Analytics data and
/// downloads the resulting bulk data reports in the form of CSV files.
class YouTubeReportingApi {
  /// View monetary and non-monetary YouTube Analytics reports for your YouTube
  /// content
  static const ytAnalyticsMonetaryReadonlyScope =
      'https://www.googleapis.com/auth/yt-analytics-monetary.readonly';

  /// View YouTube Analytics reports for your YouTube content
  static const ytAnalyticsReadonlyScope =
      'https://www.googleapis.com/auth/yt-analytics.readonly';

  final commons.ApiRequester _requester;

  JobsResource get jobs => JobsResource(_requester);
  MediaResource get media => MediaResource(_requester);
  ReportTypesResource get reportTypes => ReportTypesResource(_requester);

  YouTubeReportingApi(http.Client client,
      {core.String rootUrl = 'https://youtubereporting.googleapis.com/',
      core.String servicePath = ''})
      : _requester =
            commons.ApiRequester(client, rootUrl, servicePath, requestHeaders);
}

class JobsResource {
  final commons.ApiRequester _requester;

  JobsReportsResource get reports => JobsReportsResource(_requester);

  JobsResource(commons.ApiRequester client) : _requester = client;

  /// Creates a job and returns it.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [onBehalfOfContentOwner] - The content owner's external ID on which behalf
  /// the user is acting on. If not set, the user is acting for himself (his own
  /// channel).
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
  async.Future<Job> create(
    Job request, {
    core.String? onBehalfOfContentOwner,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (onBehalfOfContentOwner != null)
        'onBehalfOfContentOwner': [onBehalfOfContentOwner],
      if ($fields != null) 'fields': [$fields],
    };

    const url_ = 'v1/jobs';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Job.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Deletes a job.
  ///
  /// Request parameters:
  ///
  /// [jobId] - The ID of the job to delete.
  ///
  /// [onBehalfOfContentOwner] - The content owner's external ID on which behalf
  /// the user is acting on. If not set, the user is acting for himself (his own
  /// channel).
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
    core.String jobId, {
    core.String? onBehalfOfContentOwner,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (onBehalfOfContentOwner != null)
        'onBehalfOfContentOwner': [onBehalfOfContentOwner],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/jobs/' + commons.escapeVariable('$jobId');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return Empty.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Gets a job.
  ///
  /// Request parameters:
  ///
  /// [jobId] - The ID of the job to retrieve.
  ///
  /// [onBehalfOfContentOwner] - The content owner's external ID on which behalf
  /// the user is acting on. If not set, the user is acting for himself (his own
  /// channel).
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
  async.Future<Job> get(
    core.String jobId, {
    core.String? onBehalfOfContentOwner,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (onBehalfOfContentOwner != null)
        'onBehalfOfContentOwner': [onBehalfOfContentOwner],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/jobs/' + commons.escapeVariable('$jobId');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return Job.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists jobs.
  ///
  /// Request parameters:
  ///
  /// [includeSystemManaged] - If set to true, also system-managed jobs will be
  /// returned; otherwise only user-created jobs will be returned.
  /// System-managed jobs can neither be modified nor deleted.
  ///
  /// [onBehalfOfContentOwner] - The content owner's external ID on which behalf
  /// the user is acting on. If not set, the user is acting for himself (his own
  /// channel).
  ///
  /// [pageSize] - Requested page size. Server may return fewer jobs than
  /// requested. If unspecified, server will pick an appropriate default.
  ///
  /// [pageToken] - A token identifying a page of results the server should
  /// return. Typically, this is the value of
  /// ListReportTypesResponse.next_page_token returned in response to the
  /// previous call to the `ListJobs` method.
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
  async.Future<ListJobsResponse> list({
    core.bool? includeSystemManaged,
    core.String? onBehalfOfContentOwner,
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (includeSystemManaged != null)
        'includeSystemManaged': ['${includeSystemManaged}'],
      if (onBehalfOfContentOwner != null)
        'onBehalfOfContentOwner': [onBehalfOfContentOwner],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    const url_ = 'v1/jobs';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListJobsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class JobsReportsResource {
  final commons.ApiRequester _requester;

  JobsReportsResource(commons.ApiRequester client) : _requester = client;

  /// Gets the metadata of a specific report.
  ///
  /// Request parameters:
  ///
  /// [jobId] - The ID of the job.
  ///
  /// [reportId] - The ID of the report to retrieve.
  ///
  /// [onBehalfOfContentOwner] - The content owner's external ID on which behalf
  /// the user is acting on. If not set, the user is acting for himself (his own
  /// channel).
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
  async.Future<Report> get(
    core.String jobId,
    core.String reportId, {
    core.String? onBehalfOfContentOwner,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (onBehalfOfContentOwner != null)
        'onBehalfOfContentOwner': [onBehalfOfContentOwner],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/jobs/' +
        commons.escapeVariable('$jobId') +
        '/reports/' +
        commons.escapeVariable('$reportId');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return Report.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists reports created by a specific job.
  ///
  /// Returns NOT_FOUND if the job does not exist.
  ///
  /// Request parameters:
  ///
  /// [jobId] - The ID of the job.
  ///
  /// [createdAfter] - If set, only reports created after the specified
  /// date/time are returned.
  ///
  /// [onBehalfOfContentOwner] - The content owner's external ID on which behalf
  /// the user is acting on. If not set, the user is acting for himself (his own
  /// channel).
  ///
  /// [pageSize] - Requested page size. Server may return fewer report types
  /// than requested. If unspecified, server will pick an appropriate default.
  ///
  /// [pageToken] - A token identifying a page of results the server should
  /// return. Typically, this is the value of
  /// ListReportsResponse.next_page_token returned in response to the previous
  /// call to the `ListReports` method.
  ///
  /// [startTimeAtOrAfter] - If set, only reports whose start time is greater
  /// than or equal the specified date/time are returned.
  ///
  /// [startTimeBefore] - If set, only reports whose start time is smaller than
  /// the specified date/time are returned.
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
  async.Future<ListReportsResponse> list(
    core.String jobId, {
    core.String? createdAfter,
    core.String? onBehalfOfContentOwner,
    core.int? pageSize,
    core.String? pageToken,
    core.String? startTimeAtOrAfter,
    core.String? startTimeBefore,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (createdAfter != null) 'createdAfter': [createdAfter],
      if (onBehalfOfContentOwner != null)
        'onBehalfOfContentOwner': [onBehalfOfContentOwner],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if (startTimeAtOrAfter != null)
        'startTimeAtOrAfter': [startTimeAtOrAfter],
      if (startTimeBefore != null) 'startTimeBefore': [startTimeBefore],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/jobs/' + commons.escapeVariable('$jobId') + '/reports';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListReportsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class MediaResource {
  final commons.ApiRequester _requester;

  MediaResource(commons.ApiRequester client) : _requester = client;

  /// Method for media download.
  ///
  /// Download is supported on the URI `/v1/media/{+name}?alt=media`.
  ///
  /// Request parameters:
  ///
  /// [resourceName] - Name of the media that is being downloaded.
  /// Value must have pattern `^.*$`.
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
  async.Future<core.Object> download(
    core.String resourceName, {
    core.String? $fields,
    commons.DownloadOptions downloadOptions = commons.DownloadOptions.metadata,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/media/' + core.Uri.encodeFull('$resourceName');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
      downloadOptions: downloadOptions,
    );
    if (downloadOptions.isMetadataDownload) {
      return GdataMedia.fromJson(
          response_ as core.Map<core.String, core.dynamic>);
    } else {
      return response_ as commons.Media;
    }
  }
}

class ReportTypesResource {
  final commons.ApiRequester _requester;

  ReportTypesResource(commons.ApiRequester client) : _requester = client;

  /// Lists report types.
  ///
  /// Request parameters:
  ///
  /// [includeSystemManaged] - If set to true, also system-managed report types
  /// will be returned; otherwise only the report types that can be used to
  /// create new reporting jobs will be returned.
  ///
  /// [onBehalfOfContentOwner] - The content owner's external ID on which behalf
  /// the user is acting on. If not set, the user is acting for himself (his own
  /// channel).
  ///
  /// [pageSize] - Requested page size. Server may return fewer report types
  /// than requested. If unspecified, server will pick an appropriate default.
  ///
  /// [pageToken] - A token identifying a page of results the server should
  /// return. Typically, this is the value of
  /// ListReportTypesResponse.next_page_token returned in response to the
  /// previous call to the `ListReportTypes` method.
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
  async.Future<ListReportTypesResponse> list({
    core.bool? includeSystemManaged,
    core.String? onBehalfOfContentOwner,
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (includeSystemManaged != null)
        'includeSystemManaged': ['${includeSystemManaged}'],
      if (onBehalfOfContentOwner != null)
        'onBehalfOfContentOwner': [onBehalfOfContentOwner],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    const url_ = 'v1/reportTypes';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListReportTypesResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

/// A generic empty message that you can re-use to avoid defining duplicated
/// empty messages in your APIs.
///
/// A typical example is to use it as the request or the response type of an API
/// method. For instance: service Foo { rpc Bar(google.protobuf.Empty) returns
/// (google.protobuf.Empty); }
typedef Empty = $Empty;

/// gdata
class GdataBlobstore2Info {
  /// gdata
  core.String? blobGeneration;

  /// gdata
  core.String? blobId;

  /// gdata
  core.String? downloadReadHandle;
  core.List<core.int> get downloadReadHandleAsBytes =>
      convert.base64.decode(downloadReadHandle!);

  set downloadReadHandleAsBytes(core.List<core.int> bytes_) {
    downloadReadHandle =
        convert.base64.encode(bytes_).replaceAll('/', '_').replaceAll('+', '-');
  }

  /// gdata
  core.String? readToken;

  /// gdata
  core.String? uploadMetadataContainer;
  core.List<core.int> get uploadMetadataContainerAsBytes =>
      convert.base64.decode(uploadMetadataContainer!);

  set uploadMetadataContainerAsBytes(core.List<core.int> bytes_) {
    uploadMetadataContainer =
        convert.base64.encode(bytes_).replaceAll('/', '_').replaceAll('+', '-');
  }

  GdataBlobstore2Info({
    this.blobGeneration,
    this.blobId,
    this.downloadReadHandle,
    this.readToken,
    this.uploadMetadataContainer,
  });

  GdataBlobstore2Info.fromJson(core.Map json_)
      : this(
          blobGeneration: json_.containsKey('blobGeneration')
              ? json_['blobGeneration'] as core.String
              : null,
          blobId: json_.containsKey('blobId')
              ? json_['blobId'] as core.String
              : null,
          downloadReadHandle: json_.containsKey('downloadReadHandle')
              ? json_['downloadReadHandle'] as core.String
              : null,
          readToken: json_.containsKey('readToken')
              ? json_['readToken'] as core.String
              : null,
          uploadMetadataContainer: json_.containsKey('uploadMetadataContainer')
              ? json_['uploadMetadataContainer'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (blobGeneration != null) 'blobGeneration': blobGeneration!,
        if (blobId != null) 'blobId': blobId!,
        if (downloadReadHandle != null)
          'downloadReadHandle': downloadReadHandle!,
        if (readToken != null) 'readToken': readToken!,
        if (uploadMetadataContainer != null)
          'uploadMetadataContainer': uploadMetadataContainer!,
      };
}

/// gdata
class GdataCompositeMedia {
  /// gdata
  core.String? blobRef;
  core.List<core.int> get blobRefAsBytes => convert.base64.decode(blobRef!);

  set blobRefAsBytes(core.List<core.int> bytes_) {
    blobRef =
        convert.base64.encode(bytes_).replaceAll('/', '_').replaceAll('+', '-');
  }

  /// gdata
  GdataBlobstore2Info? blobstore2Info;

  /// gdata
  core.String? cosmoBinaryReference;
  core.List<core.int> get cosmoBinaryReferenceAsBytes =>
      convert.base64.decode(cosmoBinaryReference!);

  set cosmoBinaryReferenceAsBytes(core.List<core.int> bytes_) {
    cosmoBinaryReference =
        convert.base64.encode(bytes_).replaceAll('/', '_').replaceAll('+', '-');
  }

  /// gdata
  core.int? crc32cHash;

  /// gdata
  core.String? inline;
  core.List<core.int> get inlineAsBytes => convert.base64.decode(inline!);

  set inlineAsBytes(core.List<core.int> bytes_) {
    inline =
        convert.base64.encode(bytes_).replaceAll('/', '_').replaceAll('+', '-');
  }

  /// gdata
  core.String? length;

  /// gdata
  core.String? md5Hash;
  core.List<core.int> get md5HashAsBytes => convert.base64.decode(md5Hash!);

  set md5HashAsBytes(core.List<core.int> bytes_) {
    md5Hash =
        convert.base64.encode(bytes_).replaceAll('/', '_').replaceAll('+', '-');
  }

  /// gdata
  GdataObjectId? objectId;

  /// gdata
  core.String? path;

  /// gdata
  /// Possible string values are:
  /// - "PATH" : gdata
  /// - "BLOB_REF" : gdata
  /// - "INLINE" : gdata
  /// - "BIGSTORE_REF" : gdata
  /// - "COSMO_BINARY_REFERENCE" : gdata
  core.String? referenceType;

  /// gdata
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
          blobRef: json_.containsKey('blobRef')
              ? json_['blobRef'] as core.String
              : null,
          blobstore2Info: json_.containsKey('blobstore2Info')
              ? GdataBlobstore2Info.fromJson(json_['blobstore2Info']
                  as core.Map<core.String, core.dynamic>)
              : null,
          cosmoBinaryReference: json_.containsKey('cosmoBinaryReference')
              ? json_['cosmoBinaryReference'] as core.String
              : null,
          crc32cHash: json_.containsKey('crc32cHash')
              ? json_['crc32cHash'] as core.int
              : null,
          inline: json_.containsKey('inline')
              ? json_['inline'] as core.String
              : null,
          length: json_.containsKey('length')
              ? json_['length'] as core.String
              : null,
          md5Hash: json_.containsKey('md5Hash')
              ? json_['md5Hash'] as core.String
              : null,
          objectId: json_.containsKey('objectId')
              ? GdataObjectId.fromJson(
                  json_['objectId'] as core.Map<core.String, core.dynamic>)
              : null,
          path: json_.containsKey('path') ? json_['path'] as core.String : null,
          referenceType: json_.containsKey('referenceType')
              ? json_['referenceType'] as core.String
              : null,
          sha1Hash: json_.containsKey('sha1Hash')
              ? json_['sha1Hash'] as core.String
              : null,
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

/// gdata
class GdataContentTypeInfo {
  /// gdata
  core.String? bestGuess;

  /// gdata
  core.String? fromBytes;

  /// gdata
  core.String? fromFileName;

  /// gdata
  core.String? fromHeader;

  /// gdata
  core.String? fromUrlPath;

  GdataContentTypeInfo({
    this.bestGuess,
    this.fromBytes,
    this.fromFileName,
    this.fromHeader,
    this.fromUrlPath,
  });

  GdataContentTypeInfo.fromJson(core.Map json_)
      : this(
          bestGuess: json_.containsKey('bestGuess')
              ? json_['bestGuess'] as core.String
              : null,
          fromBytes: json_.containsKey('fromBytes')
              ? json_['fromBytes'] as core.String
              : null,
          fromFileName: json_.containsKey('fromFileName')
              ? json_['fromFileName'] as core.String
              : null,
          fromHeader: json_.containsKey('fromHeader')
              ? json_['fromHeader'] as core.String
              : null,
          fromUrlPath: json_.containsKey('fromUrlPath')
              ? json_['fromUrlPath'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (bestGuess != null) 'bestGuess': bestGuess!,
        if (fromBytes != null) 'fromBytes': fromBytes!,
        if (fromFileName != null) 'fromFileName': fromFileName!,
        if (fromHeader != null) 'fromHeader': fromHeader!,
        if (fromUrlPath != null) 'fromUrlPath': fromUrlPath!,
      };
}

/// gdata
class GdataDiffChecksumsResponse {
  /// gdata
  GdataCompositeMedia? checksumsLocation;

  /// gdata
  core.String? chunkSizeBytes;

  /// gdata
  GdataCompositeMedia? objectLocation;

  /// gdata
  core.String? objectSizeBytes;

  /// gdata
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
              ? GdataCompositeMedia.fromJson(json_['checksumsLocation']
                  as core.Map<core.String, core.dynamic>)
              : null,
          chunkSizeBytes: json_.containsKey('chunkSizeBytes')
              ? json_['chunkSizeBytes'] as core.String
              : null,
          objectLocation: json_.containsKey('objectLocation')
              ? GdataCompositeMedia.fromJson(json_['objectLocation']
                  as core.Map<core.String, core.dynamic>)
              : null,
          objectSizeBytes: json_.containsKey('objectSizeBytes')
              ? json_['objectSizeBytes'] as core.String
              : null,
          objectVersion: json_.containsKey('objectVersion')
              ? json_['objectVersion'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (checksumsLocation != null) 'checksumsLocation': checksumsLocation!,
        if (chunkSizeBytes != null) 'chunkSizeBytes': chunkSizeBytes!,
        if (objectLocation != null) 'objectLocation': objectLocation!,
        if (objectSizeBytes != null) 'objectSizeBytes': objectSizeBytes!,
        if (objectVersion != null) 'objectVersion': objectVersion!,
      };
}

/// gdata
class GdataDiffDownloadResponse {
  /// gdata
  GdataCompositeMedia? objectLocation;

  GdataDiffDownloadResponse({
    this.objectLocation,
  });

  GdataDiffDownloadResponse.fromJson(core.Map json_)
      : this(
          objectLocation: json_.containsKey('objectLocation')
              ? GdataCompositeMedia.fromJson(json_['objectLocation']
                  as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (objectLocation != null) 'objectLocation': objectLocation!,
      };
}

/// gdata
class GdataDiffUploadRequest {
  /// gdata
  GdataCompositeMedia? checksumsInfo;

  /// gdata
  GdataCompositeMedia? objectInfo;

  /// gdata
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
                  json_['checksumsInfo'] as core.Map<core.String, core.dynamic>)
              : null,
          objectInfo: json_.containsKey('objectInfo')
              ? GdataCompositeMedia.fromJson(
                  json_['objectInfo'] as core.Map<core.String, core.dynamic>)
              : null,
          objectVersion: json_.containsKey('objectVersion')
              ? json_['objectVersion'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (checksumsInfo != null) 'checksumsInfo': checksumsInfo!,
        if (objectInfo != null) 'objectInfo': objectInfo!,
        if (objectVersion != null) 'objectVersion': objectVersion!,
      };
}

/// gdata
class GdataDiffUploadResponse {
  /// gdata
  core.String? objectVersion;

  /// gdata
  GdataCompositeMedia? originalObject;

  GdataDiffUploadResponse({
    this.objectVersion,
    this.originalObject,
  });

  GdataDiffUploadResponse.fromJson(core.Map json_)
      : this(
          objectVersion: json_.containsKey('objectVersion')
              ? json_['objectVersion'] as core.String
              : null,
          originalObject: json_.containsKey('originalObject')
              ? GdataCompositeMedia.fromJson(json_['originalObject']
                  as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (objectVersion != null) 'objectVersion': objectVersion!,
        if (originalObject != null) 'originalObject': originalObject!,
      };
}

/// gdata
class GdataDiffVersionResponse {
  /// gdata
  core.String? objectSizeBytes;

  /// gdata
  core.String? objectVersion;

  GdataDiffVersionResponse({
    this.objectSizeBytes,
    this.objectVersion,
  });

  GdataDiffVersionResponse.fromJson(core.Map json_)
      : this(
          objectSizeBytes: json_.containsKey('objectSizeBytes')
              ? json_['objectSizeBytes'] as core.String
              : null,
          objectVersion: json_.containsKey('objectVersion')
              ? json_['objectVersion'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (objectSizeBytes != null) 'objectSizeBytes': objectSizeBytes!,
        if (objectVersion != null) 'objectVersion': objectVersion!,
      };
}

/// gdata
class GdataDownloadParameters {
  /// gdata
  core.bool? allowGzipCompression;

  /// gdata
  core.bool? ignoreRange;

  GdataDownloadParameters({
    this.allowGzipCompression,
    this.ignoreRange,
  });

  GdataDownloadParameters.fromJson(core.Map json_)
      : this(
          allowGzipCompression: json_.containsKey('allowGzipCompression')
              ? json_['allowGzipCompression'] as core.bool
              : null,
          ignoreRange: json_.containsKey('ignoreRange')
              ? json_['ignoreRange'] as core.bool
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (allowGzipCompression != null)
          'allowGzipCompression': allowGzipCompression!,
        if (ignoreRange != null) 'ignoreRange': ignoreRange!,
      };
}

/// gdata
class GdataMedia {
  /// gdata
  core.String? algorithm;

  /// gdata
  core.String? bigstoreObjectRef;
  core.List<core.int> get bigstoreObjectRefAsBytes =>
      convert.base64.decode(bigstoreObjectRef!);

  set bigstoreObjectRefAsBytes(core.List<core.int> bytes_) {
    bigstoreObjectRef =
        convert.base64.encode(bytes_).replaceAll('/', '_').replaceAll('+', '-');
  }

  /// gdata
  core.String? blobRef;
  core.List<core.int> get blobRefAsBytes => convert.base64.decode(blobRef!);

  set blobRefAsBytes(core.List<core.int> bytes_) {
    blobRef =
        convert.base64.encode(bytes_).replaceAll('/', '_').replaceAll('+', '-');
  }

  /// gdata
  GdataBlobstore2Info? blobstore2Info;

  /// gdata
  core.List<GdataCompositeMedia>? compositeMedia;

  /// gdata
  core.String? contentType;

  /// gdata
  GdataContentTypeInfo? contentTypeInfo;

  /// gdata
  core.String? cosmoBinaryReference;
  core.List<core.int> get cosmoBinaryReferenceAsBytes =>
      convert.base64.decode(cosmoBinaryReference!);

  set cosmoBinaryReferenceAsBytes(core.List<core.int> bytes_) {
    cosmoBinaryReference =
        convert.base64.encode(bytes_).replaceAll('/', '_').replaceAll('+', '-');
  }

  /// gdata
  core.int? crc32cHash;

  /// gdata
  GdataDiffChecksumsResponse? diffChecksumsResponse;

  /// gdata
  GdataDiffDownloadResponse? diffDownloadResponse;

  /// gdata
  GdataDiffUploadRequest? diffUploadRequest;

  /// gdata
  GdataDiffUploadResponse? diffUploadResponse;

  /// gdata
  GdataDiffVersionResponse? diffVersionResponse;

  /// gdata
  GdataDownloadParameters? downloadParameters;

  /// gdata
  core.String? filename;

  /// gdata
  core.String? hash;

  /// gdata
  core.bool? hashVerified;

  /// gdata
  core.String? inline;
  core.List<core.int> get inlineAsBytes => convert.base64.decode(inline!);

  set inlineAsBytes(core.List<core.int> bytes_) {
    inline =
        convert.base64.encode(bytes_).replaceAll('/', '_').replaceAll('+', '-');
  }

  /// gdata
  core.bool? isPotentialRetry;

  /// gdata
  core.String? length;

  /// gdata
  core.String? md5Hash;
  core.List<core.int> get md5HashAsBytes => convert.base64.decode(md5Hash!);

  set md5HashAsBytes(core.List<core.int> bytes_) {
    md5Hash =
        convert.base64.encode(bytes_).replaceAll('/', '_').replaceAll('+', '-');
  }

  /// gdata
  core.String? mediaId;
  core.List<core.int> get mediaIdAsBytes => convert.base64.decode(mediaId!);

  set mediaIdAsBytes(core.List<core.int> bytes_) {
    mediaId =
        convert.base64.encode(bytes_).replaceAll('/', '_').replaceAll('+', '-');
  }

  /// gdata
  GdataObjectId? objectId;

  /// gdata
  core.String? path;

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
  core.String? referenceType;

  /// gdata
  core.String? sha1Hash;
  core.List<core.int> get sha1HashAsBytes => convert.base64.decode(sha1Hash!);

  set sha1HashAsBytes(core.List<core.int> bytes_) {
    sha1Hash =
        convert.base64.encode(bytes_).replaceAll('/', '_').replaceAll('+', '-');
  }

  /// gdata
  core.String? sha256Hash;
  core.List<core.int> get sha256HashAsBytes =>
      convert.base64.decode(sha256Hash!);

  set sha256HashAsBytes(core.List<core.int> bytes_) {
    sha256Hash =
        convert.base64.encode(bytes_).replaceAll('/', '_').replaceAll('+', '-');
  }

  /// gdata
  core.String? timestamp;

  /// gdata
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
          algorithm: json_.containsKey('algorithm')
              ? json_['algorithm'] as core.String
              : null,
          bigstoreObjectRef: json_.containsKey('bigstoreObjectRef')
              ? json_['bigstoreObjectRef'] as core.String
              : null,
          blobRef: json_.containsKey('blobRef')
              ? json_['blobRef'] as core.String
              : null,
          blobstore2Info: json_.containsKey('blobstore2Info')
              ? GdataBlobstore2Info.fromJson(json_['blobstore2Info']
                  as core.Map<core.String, core.dynamic>)
              : null,
          compositeMedia: json_.containsKey('compositeMedia')
              ? (json_['compositeMedia'] as core.List)
                  .map((value) => GdataCompositeMedia.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          contentType: json_.containsKey('contentType')
              ? json_['contentType'] as core.String
              : null,
          contentTypeInfo: json_.containsKey('contentTypeInfo')
              ? GdataContentTypeInfo.fromJson(json_['contentTypeInfo']
                  as core.Map<core.String, core.dynamic>)
              : null,
          cosmoBinaryReference: json_.containsKey('cosmoBinaryReference')
              ? json_['cosmoBinaryReference'] as core.String
              : null,
          crc32cHash: json_.containsKey('crc32cHash')
              ? json_['crc32cHash'] as core.int
              : null,
          diffChecksumsResponse: json_.containsKey('diffChecksumsResponse')
              ? GdataDiffChecksumsResponse.fromJson(
                  json_['diffChecksumsResponse']
                      as core.Map<core.String, core.dynamic>)
              : null,
          diffDownloadResponse: json_.containsKey('diffDownloadResponse')
              ? GdataDiffDownloadResponse.fromJson(json_['diffDownloadResponse']
                  as core.Map<core.String, core.dynamic>)
              : null,
          diffUploadRequest: json_.containsKey('diffUploadRequest')
              ? GdataDiffUploadRequest.fromJson(json_['diffUploadRequest']
                  as core.Map<core.String, core.dynamic>)
              : null,
          diffUploadResponse: json_.containsKey('diffUploadResponse')
              ? GdataDiffUploadResponse.fromJson(json_['diffUploadResponse']
                  as core.Map<core.String, core.dynamic>)
              : null,
          diffVersionResponse: json_.containsKey('diffVersionResponse')
              ? GdataDiffVersionResponse.fromJson(json_['diffVersionResponse']
                  as core.Map<core.String, core.dynamic>)
              : null,
          downloadParameters: json_.containsKey('downloadParameters')
              ? GdataDownloadParameters.fromJson(json_['downloadParameters']
                  as core.Map<core.String, core.dynamic>)
              : null,
          filename: json_.containsKey('filename')
              ? json_['filename'] as core.String
              : null,
          hash: json_.containsKey('hash') ? json_['hash'] as core.String : null,
          hashVerified: json_.containsKey('hashVerified')
              ? json_['hashVerified'] as core.bool
              : null,
          inline: json_.containsKey('inline')
              ? json_['inline'] as core.String
              : null,
          isPotentialRetry: json_.containsKey('isPotentialRetry')
              ? json_['isPotentialRetry'] as core.bool
              : null,
          length: json_.containsKey('length')
              ? json_['length'] as core.String
              : null,
          md5Hash: json_.containsKey('md5Hash')
              ? json_['md5Hash'] as core.String
              : null,
          mediaId: json_.containsKey('mediaId')
              ? json_['mediaId'] as core.String
              : null,
          objectId: json_.containsKey('objectId')
              ? GdataObjectId.fromJson(
                  json_['objectId'] as core.Map<core.String, core.dynamic>)
              : null,
          path: json_.containsKey('path') ? json_['path'] as core.String : null,
          referenceType: json_.containsKey('referenceType')
              ? json_['referenceType'] as core.String
              : null,
          sha1Hash: json_.containsKey('sha1Hash')
              ? json_['sha1Hash'] as core.String
              : null,
          sha256Hash: json_.containsKey('sha256Hash')
              ? json_['sha256Hash'] as core.String
              : null,
          timestamp: json_.containsKey('timestamp')
              ? json_['timestamp'] as core.String
              : null,
          token:
              json_.containsKey('token') ? json_['token'] as core.String : null,
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

/// gdata
class GdataObjectId {
  /// gdata
  core.String? bucketName;

  /// gdata
  core.String? generation;

  /// gdata
  core.String? objectName;

  GdataObjectId({
    this.bucketName,
    this.generation,
    this.objectName,
  });

  GdataObjectId.fromJson(core.Map json_)
      : this(
          bucketName: json_.containsKey('bucketName')
              ? json_['bucketName'] as core.String
              : null,
          generation: json_.containsKey('generation')
              ? json_['generation'] as core.String
              : null,
          objectName: json_.containsKey('objectName')
              ? json_['objectName'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (bucketName != null) 'bucketName': bucketName!,
        if (generation != null) 'generation': generation!,
        if (objectName != null) 'objectName': objectName!,
      };
}

/// A job creating reports of a specific type.
class Job {
  /// The creation date/time of the job.
  core.String? createTime;

  /// The date/time when this job will expire/expired.
  ///
  /// After a job expired, no new reports are generated.
  core.String? expireTime;

  /// The server-generated ID of the job (max.
  ///
  /// 40 characters).
  core.String? id;

  /// The name of the job (max.
  ///
  /// 100 characters).
  core.String? name;

  /// The type of reports this job creates.
  ///
  /// Corresponds to the ID of a ReportType.
  core.String? reportTypeId;

  /// True if this a system-managed job that cannot be modified by the user;
  /// otherwise false.
  core.bool? systemManaged;

  Job({
    this.createTime,
    this.expireTime,
    this.id,
    this.name,
    this.reportTypeId,
    this.systemManaged,
  });

  Job.fromJson(core.Map json_)
      : this(
          createTime: json_.containsKey('createTime')
              ? json_['createTime'] as core.String
              : null,
          expireTime: json_.containsKey('expireTime')
              ? json_['expireTime'] as core.String
              : null,
          id: json_.containsKey('id') ? json_['id'] as core.String : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          reportTypeId: json_.containsKey('reportTypeId')
              ? json_['reportTypeId'] as core.String
              : null,
          systemManaged: json_.containsKey('systemManaged')
              ? json_['systemManaged'] as core.bool
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (createTime != null) 'createTime': createTime!,
        if (expireTime != null) 'expireTime': expireTime!,
        if (id != null) 'id': id!,
        if (name != null) 'name': name!,
        if (reportTypeId != null) 'reportTypeId': reportTypeId!,
        if (systemManaged != null) 'systemManaged': systemManaged!,
      };
}

/// Response message for ReportingService.ListJobs.
class ListJobsResponse {
  /// The list of jobs.
  core.List<Job>? jobs;

  /// A token to retrieve next page of results.
  ///
  /// Pass this value in the ListJobsRequest.page_token field in the subsequent
  /// call to `ListJobs` method to retrieve the next page of results.
  core.String? nextPageToken;

  ListJobsResponse({
    this.jobs,
    this.nextPageToken,
  });

  ListJobsResponse.fromJson(core.Map json_)
      : this(
          jobs: json_.containsKey('jobs')
              ? (json_['jobs'] as core.List)
                  .map((value) => Job.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (jobs != null) 'jobs': jobs!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
      };
}

/// Response message for ReportingService.ListReportTypes.
class ListReportTypesResponse {
  /// A token to retrieve next page of results.
  ///
  /// Pass this value in the ListReportTypesRequest.page_token field in the
  /// subsequent call to `ListReportTypes` method to retrieve the next page of
  /// results.
  core.String? nextPageToken;

  /// The list of report types.
  core.List<ReportType>? reportTypes;

  ListReportTypesResponse({
    this.nextPageToken,
    this.reportTypes,
  });

  ListReportTypesResponse.fromJson(core.Map json_)
      : this(
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
          reportTypes: json_.containsKey('reportTypes')
              ? (json_['reportTypes'] as core.List)
                  .map((value) => ReportType.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (reportTypes != null) 'reportTypes': reportTypes!,
      };
}

/// Response message for ReportingService.ListReports.
class ListReportsResponse {
  /// A token to retrieve next page of results.
  ///
  /// Pass this value in the ListReportsRequest.page_token field in the
  /// subsequent call to `ListReports` method to retrieve the next page of
  /// results.
  core.String? nextPageToken;

  /// The list of report types.
  core.List<Report>? reports;

  ListReportsResponse({
    this.nextPageToken,
    this.reports,
  });

  ListReportsResponse.fromJson(core.Map json_)
      : this(
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
          reports: json_.containsKey('reports')
              ? (json_['reports'] as core.List)
                  .map((value) => Report.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (reports != null) 'reports': reports!,
      };
}

/// A report's metadata including the URL from which the report itself can be
/// downloaded.
class Report {
  /// The date/time when this report was created.
  core.String? createTime;

  /// The URL from which the report can be downloaded (max.
  ///
  /// 1000 characters).
  core.String? downloadUrl;

  /// The end of the time period that the report instance covers.
  ///
  /// The value is exclusive.
  core.String? endTime;

  /// The server-generated ID of the report.
  core.String? id;

  /// The date/time when the job this report belongs to will expire/expired.
  core.String? jobExpireTime;

  /// The ID of the job that created this report.
  core.String? jobId;

  /// The start of the time period that the report instance covers.
  ///
  /// The value is inclusive.
  core.String? startTime;

  Report({
    this.createTime,
    this.downloadUrl,
    this.endTime,
    this.id,
    this.jobExpireTime,
    this.jobId,
    this.startTime,
  });

  Report.fromJson(core.Map json_)
      : this(
          createTime: json_.containsKey('createTime')
              ? json_['createTime'] as core.String
              : null,
          downloadUrl: json_.containsKey('downloadUrl')
              ? json_['downloadUrl'] as core.String
              : null,
          endTime: json_.containsKey('endTime')
              ? json_['endTime'] as core.String
              : null,
          id: json_.containsKey('id') ? json_['id'] as core.String : null,
          jobExpireTime: json_.containsKey('jobExpireTime')
              ? json_['jobExpireTime'] as core.String
              : null,
          jobId:
              json_.containsKey('jobId') ? json_['jobId'] as core.String : null,
          startTime: json_.containsKey('startTime')
              ? json_['startTime'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (createTime != null) 'createTime': createTime!,
        if (downloadUrl != null) 'downloadUrl': downloadUrl!,
        if (endTime != null) 'endTime': endTime!,
        if (id != null) 'id': id!,
        if (jobExpireTime != null) 'jobExpireTime': jobExpireTime!,
        if (jobId != null) 'jobId': jobId!,
        if (startTime != null) 'startTime': startTime!,
      };
}

/// A report type.
class ReportType {
  /// The date/time when this report type was/will be deprecated.
  core.String? deprecateTime;

  /// The ID of the report type (max.
  ///
  /// 100 characters).
  core.String? id;

  /// The name of the report type (max.
  ///
  /// 100 characters).
  core.String? name;

  /// True if this a system-managed report type; otherwise false.
  ///
  /// Reporting jobs for system-managed report types are created automatically
  /// and can thus not be used in the `CreateJob` method.
  core.bool? systemManaged;

  ReportType({
    this.deprecateTime,
    this.id,
    this.name,
    this.systemManaged,
  });

  ReportType.fromJson(core.Map json_)
      : this(
          deprecateTime: json_.containsKey('deprecateTime')
              ? json_['deprecateTime'] as core.String
              : null,
          id: json_.containsKey('id') ? json_['id'] as core.String : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          systemManaged: json_.containsKey('systemManaged')
              ? json_['systemManaged'] as core.bool
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (deprecateTime != null) 'deprecateTime': deprecateTime!,
        if (id != null) 'id': id!,
        if (name != null) 'name': name!,
        if (systemManaged != null) 'systemManaged': systemManaged!,
      };
}
