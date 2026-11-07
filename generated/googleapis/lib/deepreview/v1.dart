// Copyright 2026 Google LLC
//
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file or at
// https://developers.google.com/open-source/licenses/bsd

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

/// Deep Review API - v1
///
/// Deep Review API for automated, in-depth document reviews.
///
/// For more information, see <https://research.google/deepreview>
///
/// Create an instance of [DeepReviewApi] to access these resources:
///
/// - [DocumentsResource]
///   - [DocumentsReviewsResource]
/// - [MediaResource]
/// - [OperationsResource]
///   - [OperationsDocumentsResource]
///     - [OperationsDocumentsReviewsResource]
/// - [V1Resource]
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

/// Deep Review API for automated, in-depth document reviews.
class DeepReviewApi {
  /// See, edit, configure, and delete your Google Cloud data and see the email
  /// address for your Google Account.
  static const cloudPlatformScope =
      'https://www.googleapis.com/auth/cloud-platform';

  /// See, edit, create, and delete only the specific Google Drive files you use
  /// with this app
  static const driveFileScope = 'https://www.googleapis.com/auth/drive.file';

  final commons.ApiRequester _requester;

  DocumentsResource get documents => DocumentsResource(_requester);
  MediaResource get media => MediaResource(_requester);
  OperationsResource get operations => OperationsResource(_requester);
  V1Resource get v1 => V1Resource(_requester);

  DeepReviewApi(
    http.Client client, {
    core.String rootUrl = 'https://deepreview.googleapis.com/',
    core.String servicePath = '',
  }) : _requester = commons.ApiRequester(
         client,
         rootUrl,
         servicePath,
         requestHeaders,
       );
}

class DocumentsResource {
  final commons.ApiRequester _requester;

  DocumentsReviewsResource get reviews => DocumentsReviewsResource(_requester);

  DocumentsResource(commons.ApiRequester client) : _requester = client;

  /// Deletes a document and its stored content.
  ///
  /// If `force` is set to `true`, any associated reviews are also deleted.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name of the document to delete.
  /// Value must have pattern `^documents/\[^/\]+$`.
  ///
  /// [allowMissing] - Optional. If set to `true`, and the document is not
  /// found, the request succeeds.
  ///
  /// [force] - Optional. If set to `true`, any child resources (e.g. review
  /// resources) are also deleted. If `false` and the document has existing
  /// reviews, the request fails with `FAILED_PRECONDITION`.
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
    core.bool? allowMissing,
    core.bool? force,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'allowMissing': ?allowMissing == null ? null : ['${allowMissing}'],
      'force': ?force == null ? null : ['${force}'],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return Empty.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Estimates what a review of a document would cost on the caller's Gemini
  /// API key.
  ///
  /// The estimate comes from what past reviews with the same model, depth, and
  /// thinking level cost, adjusted to this document's size and repriced at the
  /// Gemini API's current list prices. It covers one review attempt that runs
  /// to completion, and doesn't include retries after errors.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [document] - Required. The document to review.
  /// Value must have pattern `^documents/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [EstimateReviewCostResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<EstimateReviewCostResponse> estimateReviewCost(
    EstimateReviewCostRequest request,
    core.String document, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ =
        'v1/' + core.Uri.encodeFull('$document') + ':estimateReviewCost';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return EstimateReviewCostResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Retrieves document metadata.
  ///
  /// The returned document includes its `latest_review_summary` when a review
  /// exists.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name of the document to retrieve.
  /// Value must have pattern `^documents/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Document].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Document> get(core.String name, {core.String? $fields}) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return Document.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists documents for the authenticated caller with cursor pagination.
  ///
  /// Each returned document includes its `latest_review_summary` when a review
  /// exists.
  ///
  /// Request parameters:
  ///
  /// [filter] - Optional. Custom filter expressions are not currently
  /// supported; non-empty values return INVALID_ARGUMENT.
  ///
  /// [orderBy] - Optional. Custom order_by expressions are not currently
  /// supported; non-empty values return INVALID_ARGUMENT.
  ///
  /// [pageSize] - Optional. The maximum number of documents to return in a
  /// single page. The server may return fewer than this value. If unspecified,
  /// at most 50 documents will be returned. The maximum value is 100; values
  /// above 100 will be coerced to 100.
  ///
  /// [pageToken] - Optional. A page token received from a previous
  /// `ListDocuments` call.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListDocumentsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListDocumentsResponse> list({
    core.String? filter,
    core.String? orderBy,
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'filter': ?filter == null ? null : [filter],
      'orderBy': ?orderBy == null ? null : [orderBy],
      'pageSize': ?pageSize == null ? null : ['${pageSize}'],
      'pageToken': ?pageToken == null ? null : [pageToken],
      'fields': ?$fields == null ? null : [$fields],
    };

    const url_ = 'v1/documents';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListDocumentsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class DocumentsReviewsResource {
  final commons.ApiRequester _requester;

  DocumentsReviewsResource(commons.ApiRequester client) : _requester = client;

  /// Creates and initiates an asynchronous multi-agent review for a document.
  ///
  /// Returns a google.longrunning.Operation. When the operation completes, the
  /// `response` field contains a `Review` and the `metadata` field contains
  /// `CreateReviewMetadata`.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent Document resource name where this review
  /// will be created.
  /// Value must have pattern `^documents/\[^/\]+$`.
  ///
  /// [requestId] - Optional. Idempotency identifier for network retry safety
  /// (AIP-155). Must be a valid UUID4 string.
  ///
  /// [reviewId] - Optional. The ID to use for the review, which will become the
  /// final component of the review's resource name. If not provided, a unique
  /// server-generated UUID will be assigned.
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
  async.Future<Operation> create(
    Review request,
    core.String parent, {
    core.String? requestId,
    core.String? reviewId,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'requestId': ?requestId == null ? null : [requestId],
      'reviewId': ?reviewId == null ? null : [reviewId],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/reviews';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Retrieves a specific review execution result.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name of the review to retrieve.
  /// Value must have pattern `^documents/\[^/\]+/reviews/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Review].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Review> get(core.String name, {core.String? $fields}) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return Review.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists all review execution runs for a document.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent Document resource name.
  /// Value must have pattern `^documents/\[^/\]+$`.
  ///
  /// [filter] - Optional. Custom filter expressions are not currently
  /// supported; non-empty values return INVALID_ARGUMENT.
  ///
  /// [orderBy] - Optional. Custom order_by expressions are not currently
  /// supported; non-empty values return INVALID_ARGUMENT.
  ///
  /// [pageSize] - Optional. The maximum number of reviews to return in a single
  /// page. The server may return fewer than this value. If unspecified, at most
  /// 50 reviews will be returned. The maximum value is 100; values above 100
  /// will be coerced to 100.
  ///
  /// [pageToken] - Optional. A page token received from a previous
  /// `ListReviews` call.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListReviewsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListReviewsResponse> list(
    core.String parent, {
    core.String? filter,
    core.String? orderBy,
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'filter': ?filter == null ? null : [filter],
      'orderBy': ?orderBy == null ? null : [orderBy],
      'pageSize': ?pageSize == null ? null : ['${pageSize}'],
      'pageToken': ?pageToken == null ? null : [pageToken],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/reviews';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListReviewsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class MediaResource {
  final commons.ApiRequester _requester;

  MediaResource(commons.ApiRequester client) : _requester = client;

  /// Downloads the original document content (PDF binary) using media
  /// streaming.
  ///
  /// Pass `alt=media` as a query parameter to stream the binary PDF bytes.
  /// Without `alt=media`, a JSON response is returned.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name of the document to download.
  /// Value must have pattern `^documents/\[^/\]+$`.
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
  /// - [DownloadDocumentResponse] for Metadata downloads (see
  /// [downloadOptions]).
  ///
  /// - [commons.Media] for Media downloads (see [downloadOptions]).
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<core.Object> download(
    core.String name, {
    core.String? $fields,
    commons.DownloadOptions downloadOptions = commons.DownloadOptions.metadata,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':download';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
      downloadOptions: downloadOptions,
    );
    if (downloadOptions.isMetadataDownload) {
      return DownloadDocumentResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>,
      );
    } else {
      return response_ as commons.Media;
    }
  }

  /// Creates a new Document resource and ingests the manuscript using media
  /// upload or Google Drive.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [documentId] - Optional. The ID to use for the document, which will become
  /// the final component of the document's resource name. If not provided, a
  /// unique server-generated UUID will be assigned.
  ///
  /// [requestId] - Optional. Idempotency identifier for network retry safety
  /// (AIP-155). Must be a valid UUID4 string.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// [uploadMedia] - The media to upload.
  ///
  /// [uploadOptions] - Options for the media upload. Streaming Media without
  /// the length being known ahead of time is only supported via resumable
  /// uploads.
  ///
  /// Completes with a [Document].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Document> upload(
    Document request, {
    core.String? documentId,
    core.String? requestId,
    core.String? $fields,
    commons.UploadOptions uploadOptions = commons.UploadOptions.defaultOptions,
    commons.Media? uploadMedia,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'documentId': ?documentId == null ? null : [documentId],
      'requestId': ?requestId == null ? null : [requestId],
      'fields': ?$fields == null ? null : [$fields],
    };

    core.String url_;
    if (uploadMedia == null) {
      url_ = 'v1/documents';
    } else if (uploadOptions is commons.ResumableUploadOptions) {
      url_ = '/resumable/upload/v1/documents';
    } else {
      url_ = '/upload/v1/documents';
    }

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
      uploadMedia: uploadMedia,
      uploadOptions: uploadOptions,
    );
    return Document.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }
}

class OperationsResource {
  final commons.ApiRequester _requester;

  OperationsDocumentsResource get documents =>
      OperationsDocumentsResource(_requester);

  OperationsResource(commons.ApiRequester client) : _requester = client;
}

class OperationsDocumentsResource {
  final commons.ApiRequester _requester;

  OperationsDocumentsReviewsResource get reviews =>
      OperationsDocumentsReviewsResource(_requester);

  OperationsDocumentsResource(commons.ApiRequester client)
    : _requester = client;
}

class OperationsDocumentsReviewsResource {
  final commons.ApiRequester _requester;

  OperationsDocumentsReviewsResource(commons.ApiRequester client)
    : _requester = client;

  /// Gets the latest state of a long-running operation.
  ///
  /// Clients can use this method to poll the operation result at intervals as
  /// recommended by the API service.
  ///
  /// Request parameters:
  ///
  /// [name] - The name of the operation resource.
  /// Value must have pattern `^operations/documents/\[^/\]+/reviews/\[^/\]+$`.
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
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }
}

class V1Resource {
  final commons.ApiRequester _requester;

  V1Resource(commons.ApiRequester client) : _requester = client;

  /// Retrieves the review quota limits and sliding-window usage for the
  /// authenticated caller.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name of the singleton user quota to
  /// retrieve.
  /// Value must have pattern `^userQuota$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [UserQuota].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<UserQuota> getUserQuota(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return UserQuota.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }
}

/// A structured review comment anchored to a specific location in the document.
class AnchoredReviewComment {
  /// Detailed markdown explanation of the review comment.
  ///
  /// Output only.
  core.String? bodyMarkdown;

  /// Optional structured citation verification report when this comment
  /// corresponds to a bibliography reference.
  ///
  /// Output only.
  CitationReport? citationReport;

  /// Unique identifier for the comment within the review.
  ///
  /// Output only.
  core.String? commentId;

  /// Polymorphic location in the document where this comment is anchored.
  ///
  /// Output only.
  DocumentLocation? location;

  /// Severity classification of the comment.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "SEVERITY_UNSPECIFIED" : Default unspecified severity.
  /// - "CRITICAL" : Critical flaw in proofs, methodology, or empirical claims.
  /// - "MAJOR" : Major issue affecting key conclusions or experimental
  /// validity.
  /// - "MINOR" : Minor issue, presentation clarity, or missing detail.
  /// - "SUGGESTION" : Constructive suggestion or optional improvement.
  core.String? severity;

  /// Optional suggested replacement text or edit for the anchored span.
  ///
  /// Output only.
  core.String? suggestedEdit;

  /// Short one-line summary of the review comment.
  ///
  /// Output only.
  core.String? summary;

  AnchoredReviewComment({
    this.bodyMarkdown,
    this.citationReport,
    this.commentId,
    this.location,
    this.severity,
    this.suggestedEdit,
    this.summary,
  });

  AnchoredReviewComment.fromJson(core.Map json_)
    : this(
        bodyMarkdown: json_['bodyMarkdown'] as core.String?,
        citationReport: json_.containsKey('citationReport')
            ? CitationReport.fromJson(
                json_['citationReport'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        commentId: json_['commentId'] as core.String?,
        location: json_.containsKey('location')
            ? DocumentLocation.fromJson(
                json_['location'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        severity: json_['severity'] as core.String?,
        suggestedEdit: json_['suggestedEdit'] as core.String?,
        summary: json_['summary'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final bodyMarkdown = this.bodyMarkdown;
    final citationReport = this.citationReport;
    final commentId = this.commentId;
    final location = this.location;
    final severity = this.severity;
    final suggestedEdit = this.suggestedEdit;
    final summary = this.summary;
    return {
      'bodyMarkdown': ?bodyMarkdown,
      'citationReport': ?citationReport,
      'commentId': ?commentId,
      'location': ?location,
      'severity': ?severity,
      'suggestedEdit': ?suggestedEdit,
      'summary': ?summary,
    };
  }
}

/// Author name components.
class Author {
  /// Author family name / surname (or organization name).
  ///
  /// Output only.
  core.String? familyName;

  /// Author given name / initials.
  ///
  /// Output only.
  core.String? givenName;

  Author({this.familyName, this.givenName});

  Author.fromJson(core.Map json_)
    : this(
        familyName: json_['familyName'] as core.String?,
        givenName: json_['givenName'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final familyName = this.familyName;
    final givenName = this.givenName;
    return {'familyName': ?familyName, 'givenName': ?givenName};
  }
}

/// Structured bibliographic metadata for an extracted or retrieved work.
class CitationMetadata {
  /// Ordered list of authors.
  ///
  /// Output only.
  core.List<Author>? authors;

  /// Digital Object Identifier (DOI).
  ///
  /// Output only.
  core.String? doi;

  /// Journal, conference, or venue name.
  ///
  /// Output only.
  core.String? journal;

  /// Page range or article number.
  ///
  /// Output only.
  core.String? pages;

  /// Publication date (month and day left as 0 if just year).
  ///
  /// Output only.
  Date? publicationDate;

  /// Source database for retrieved metadata (e.g., "openalex", "crossref").
  ///
  /// Empty on `extracted_metadata`.
  ///
  /// Output only.
  core.String? source;

  /// Work title.
  ///
  /// Output only.
  core.String? title;

  /// URLs associated with the reference.
  ///
  /// Output only.
  core.List<core.String>? urls;

  /// Volume identifier.
  ///
  /// Output only.
  core.String? volume;

  CitationMetadata({
    this.authors,
    this.doi,
    this.journal,
    this.pages,
    this.publicationDate,
    this.source,
    this.title,
    this.urls,
    this.volume,
  });

  CitationMetadata.fromJson(core.Map json_)
    : this(
        authors: (json_['authors'] as core.List?)
            ?.map(
              (value) =>
                  Author.fromJson(value as core.Map<core.String, core.dynamic>),
            )
            .toList(),
        doi: json_['doi'] as core.String?,
        journal: json_['journal'] as core.String?,
        pages: json_['pages'] as core.String?,
        publicationDate: json_.containsKey('publicationDate')
            ? Date.fromJson(
                json_['publicationDate'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        source: json_['source'] as core.String?,
        title: json_['title'] as core.String?,
        urls: (json_['urls'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
        volume: json_['volume'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final authors = this.authors;
    final doi = this.doi;
    final journal = this.journal;
    final pages = this.pages;
    final publicationDate = this.publicationDate;
    final source = this.source;
    final title = this.title;
    final urls = this.urls;
    final volume = this.volume;
    return {
      'authors': ?authors,
      'doi': ?doi,
      'journal': ?journal,
      'pages': ?pages,
      'publicationDate': ?publicationDate,
      'source': ?source,
      'title': ?title,
      'urls': ?urls,
      'volume': ?volume,
    };
  }
}

/// Structured citation verification report for a single bibliography reference.
class CitationReport {
  /// Generated BibTeX citation key (e.g., "smith2023deep").
  ///
  /// Output only.
  core.String? citationKey;

  /// BibTeX entry type (e.g., "article", "inproceedings", "misc").
  ///
  /// Output only.
  core.String? entryType;

  /// Metadata parsed from the paper's bibliography entry.
  ///
  /// Output only.
  CitationMetadata? extractedMetadata;

  /// Per-field comparisons (populated only when `retrieved_metadata` is
  /// present).
  ///
  /// Output only.
  core.List<FieldComparison>? fieldComparisons;

  /// Final combined verdict after database lookup and search grounding.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "VERDICT_UNSPECIFIED" : Default unspecified verdict.
  /// - "OK" : Reference metadata matches scholarly database record.
  /// - "MINOR_MISMATCH" : Minor discrepancy (e.g., publication year off by 1 or
  /// venue variation).
  /// - "MAJOR_MISMATCH" : Major discrepancy in authors, year, or venue.
  /// - "VERIFIED_BY_SEARCH" : Reference verified using Google Search grounding.
  /// - "NOT_FOUND" : Reference not found in scholarly databases and unverified
  /// by search.
  /// - "HALLUCINATED" : Reference flagged as likely hallucinated by Google
  /// Search grounding.
  /// - "SKIPPED" : Non-paper entry (e.g., software package or URL) skipped
  /// during lookup.
  core.String? finalVerdict;

  /// Whether the first author's family name matched between extracted and
  /// retrieved metadata.
  ///
  /// Output only.
  core.bool? firstAuthorFamilyNameMatch;

  /// Web sources surfaced during Google Search grounding.
  ///
  /// Output only.
  core.List<GroundingUrl>? groundingUrls;

  /// Verdict from scholarly database lookup (OpenAlex / Crossref) before search
  /// grounding.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "VERDICT_UNSPECIFIED" : Default unspecified verdict.
  /// - "OK" : Reference metadata matches scholarly database record.
  /// - "MINOR_MISMATCH" : Minor discrepancy (e.g., publication year off by 1 or
  /// venue variation).
  /// - "MAJOR_MISMATCH" : Major discrepancy in authors, year, or venue.
  /// - "VERIFIED_BY_SEARCH" : Reference verified using Google Search grounding.
  /// - "NOT_FOUND" : Reference not found in scholarly databases and unverified
  /// by search.
  /// - "HALLUCINATED" : Reference flagged as likely hallucinated by Google
  /// Search grounding.
  /// - "SKIPPED" : Non-paper entry (e.g., software package or URL) skipped
  /// during lookup.
  core.String? lookupVerdict;

  /// Verbatim reference string extracted from the paper's bibliography.
  ///
  /// Output only.
  core.String? rawReference;

  /// 1-indexed bibliography reference number in the paper.
  ///
  /// Output only.
  core.int? refNum;

  /// Formatted BibTeX entry for the verified `retrieved_metadata` when present.
  ///
  /// Empty when `retrieved_metadata` is absent.
  ///
  /// Output only.
  core.String? retrievedBibtex;

  /// Metadata retrieved from OpenAlex / Crossref.
  ///
  /// Populated only when the retrieved work's title matches the extracted
  /// title. Omitted when no candidate matches the title so unrelated papers are
  /// never displayed as candidates.
  ///
  /// Output only.
  CitationMetadata? retrievedMetadata;

  /// Strategy that produced the scholarly database match (e.g., "doi", "title",
  /// "title_author", "autocomplete").
  ///
  /// Empty when no title-matching candidate was found.
  ///
  /// Output only.
  core.String? searchMethod;

  /// Explanation from the Google Search grounding verification step (when run).
  ///
  /// Output only.
  core.String? searchRationale;

  /// Verdict from Google Search grounding verification (when run).
  ///
  /// Output only.
  /// Possible string values are:
  /// - "SEARCH_VERDICT_UNSPECIFIED" : Default unspecified search verdict
  /// (search grounding not run).
  /// - "NOT_HALLUCINATED" : Google Search grounding confirmed the work exists.
  /// - "HALLUCINATED_BY_SEARCH" : Google Search grounding determined the
  /// reference is likely hallucinated.
  /// - "SEARCH_ERROR" : Google Search grounding encountered an execution or
  /// parsing error.
  core.String? searchVerdict;

  CitationReport({
    this.citationKey,
    this.entryType,
    this.extractedMetadata,
    this.fieldComparisons,
    this.finalVerdict,
    this.firstAuthorFamilyNameMatch,
    this.groundingUrls,
    this.lookupVerdict,
    this.rawReference,
    this.refNum,
    this.retrievedBibtex,
    this.retrievedMetadata,
    this.searchMethod,
    this.searchRationale,
    this.searchVerdict,
  });

  CitationReport.fromJson(core.Map json_)
    : this(
        citationKey: json_['citationKey'] as core.String?,
        entryType: json_['entryType'] as core.String?,
        extractedMetadata: json_.containsKey('extractedMetadata')
            ? CitationMetadata.fromJson(
                json_['extractedMetadata']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        fieldComparisons: (json_['fieldComparisons'] as core.List?)
            ?.map(
              (value) => FieldComparison.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        finalVerdict: json_['finalVerdict'] as core.String?,
        firstAuthorFamilyNameMatch:
            json_['firstAuthorFamilyNameMatch'] as core.bool?,
        groundingUrls: (json_['groundingUrls'] as core.List?)
            ?.map(
              (value) => GroundingUrl.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        lookupVerdict: json_['lookupVerdict'] as core.String?,
        rawReference: json_['rawReference'] as core.String?,
        refNum: json_['refNum'] as core.int?,
        retrievedBibtex: json_['retrievedBibtex'] as core.String?,
        retrievedMetadata: json_.containsKey('retrievedMetadata')
            ? CitationMetadata.fromJson(
                json_['retrievedMetadata']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        searchMethod: json_['searchMethod'] as core.String?,
        searchRationale: json_['searchRationale'] as core.String?,
        searchVerdict: json_['searchVerdict'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final citationKey = this.citationKey;
    final entryType = this.entryType;
    final extractedMetadata = this.extractedMetadata;
    final fieldComparisons = this.fieldComparisons;
    final finalVerdict = this.finalVerdict;
    final firstAuthorFamilyNameMatch = this.firstAuthorFamilyNameMatch;
    final groundingUrls = this.groundingUrls;
    final lookupVerdict = this.lookupVerdict;
    final rawReference = this.rawReference;
    final refNum = this.refNum;
    final retrievedBibtex = this.retrievedBibtex;
    final retrievedMetadata = this.retrievedMetadata;
    final searchMethod = this.searchMethod;
    final searchRationale = this.searchRationale;
    final searchVerdict = this.searchVerdict;
    return {
      'citationKey': ?citationKey,
      'entryType': ?entryType,
      'extractedMetadata': ?extractedMetadata,
      'fieldComparisons': ?fieldComparisons,
      'finalVerdict': ?finalVerdict,
      'firstAuthorFamilyNameMatch': ?firstAuthorFamilyNameMatch,
      'groundingUrls': ?groundingUrls,
      'lookupVerdict': ?lookupVerdict,
      'rawReference': ?rawReference,
      'refNum': ?refNum,
      'retrievedBibtex': ?retrievedBibtex,
      'retrievedMetadata': ?retrievedMetadata,
      'searchMethod': ?searchMethod,
      'searchRationale': ?searchRationale,
      'searchVerdict': ?searchVerdict,
    };
  }
}

/// Represents a whole or partial calendar date, such as a birthday.
///
/// The time of day and time zone are either specified elsewhere or are
/// insignificant. The date is relative to the Gregorian Calendar. This can
/// represent one of the following: * A full date, with non-zero year, month,
/// and day values. * A month and day, with a zero year (for example, an
/// anniversary). * A year on its own, with a zero month and a zero day. * A
/// year and month, with a zero day (for example, a credit card expiration
/// date). Related types: * google.type.TimeOfDay * google.type.DateTime *
/// google.protobuf.Timestamp
typedef Date = $Date;

/// Configuration options for the multi-agent document review execution
/// pipeline.
class DeepReviewRunConfig {
  /// Input only.
  ///
  /// Developer Bring-Your-Own-Key Gemini API key. When provided, requests are
  /// billed to the caller's Gemini API project. Input only; forwarded to the
  /// asynchronous review runner in the task payload and never persisted in
  /// database records or returned in review resources (see companion field
  /// `gemini_api_key_set`, AIP-147).
  ///
  /// Optional.
  core.String? geminiApiKey;

  /// Indicates whether a developer Bring-Your-Own-Key Gemini API key was
  /// provided for this review run.
  ///
  /// Output only.
  core.bool? geminiApiKeySet;

  /// The Gemini model identifier to use for the review.
  ///
  /// If omitted, the server uses its default model. Unsupported values return
  /// INVALID_ARGUMENT.
  ///
  /// Optional.
  core.String? model;

  /// Reasoning effort level for model calls in the review pipeline.
  ///
  /// Defaults to `THINKING_LEVEL_MEDIUM` when omitted or
  /// `THINKING_LEVEL_UNSPECIFIED`. Non-`THINKING_LEVEL_MEDIUM` thinking levels
  /// require `gemini_api_key` when calling `CreateReview`; otherwise
  /// `CreateReview` returns `INVALID_ARGUMENT`.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "THINKING_LEVEL_UNSPECIFIED" : Default unspecified thinking level. The
  /// server uses its default thinking level (`THINKING_LEVEL_MEDIUM`).
  /// - "THINKING_LEVEL_LOW" : Low reasoning effort for faster turnaround and
  /// lower token cost.
  /// - "THINKING_LEVEL_MEDIUM" : Balanced reasoning effort. Used by default and
  /// for all reviews created without a developer Bring-Your-Own-Key Gemini API
  /// key.
  /// - "THINKING_LEVEL_HIGH" : Maximum reasoning effort for deep mathematical,
  /// theoretical, and logical verification.
  core.String? thinkingLevel;

  /// Review execution topology profile to use.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "TOPOLOGY_UNSPECIFIED" : Default unspecified topology. The server uses
  /// its default topology (`MID`).
  /// - "EXTRA_HIGH" : Extra high quality topology with exhaustive evaluation
  /// passes.
  /// - "HIGH" : Standard high quality conference review topology.
  /// - "MID" : Medium quality topology balancing review latency and depth.
  /// - "LOW" : Low latency / fast turnaround topology.
  core.String? topology;

  /// User-provided guidance, focus areas, or custom evaluation instructions
  /// passed to the review agents.
  ///
  /// Optional.
  core.String? userPrompt;

  DeepReviewRunConfig({
    this.geminiApiKey,
    this.geminiApiKeySet,
    this.model,
    this.thinkingLevel,
    this.topology,
    this.userPrompt,
  });

  DeepReviewRunConfig.fromJson(core.Map json_)
    : this(
        geminiApiKey: json_['geminiApiKey'] as core.String?,
        geminiApiKeySet: json_['geminiApiKeySet'] as core.bool?,
        model: json_['model'] as core.String?,
        thinkingLevel: json_['thinkingLevel'] as core.String?,
        topology: json_['topology'] as core.String?,
        userPrompt: json_['userPrompt'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final geminiApiKey = this.geminiApiKey;
    final geminiApiKeySet = this.geminiApiKeySet;
    final model = this.model;
    final thinkingLevel = this.thinkingLevel;
    final topology = this.topology;
    final userPrompt = this.userPrompt;
    return {
      'geminiApiKey': ?geminiApiKey,
      'geminiApiKeySet': ?geminiApiKeySet,
      'model': ?model,
      'thinkingLevel': ?thinkingLevel,
      'topology': ?topology,
      'userPrompt': ?userPrompt,
    };
  }
}

/// A document uploaded for automated review.
///
/// Documents are immutable post-creation; to review a new version, create a new
/// Document.
class Document {
  /// Timestamp when the document was initially created.
  ///
  /// Output only.
  core.String? createTime;

  /// User-provided display title or filename for the document.
  ///
  /// Optional.
  core.String? displayName;

  /// Reference to a Google Drive file to import.
  ///
  /// Optional.
  DriveSource? driveSource;

  /// Summary of the most recent review run for this document, if any.
  ///
  /// Populated by `GetDocument` and `ListDocuments`; unset on the document
  /// returned by `CreateDocument`, which has no reviews yet.
  ///
  /// Output only.
  ReviewSummary? latestReviewSummary;

  /// Identifier.
  ///
  /// Resource name in format `documents/{document}`.
  core.String? name;

  Document({
    this.createTime,
    this.displayName,
    this.driveSource,
    this.latestReviewSummary,
    this.name,
  });

  Document.fromJson(core.Map json_)
    : this(
        createTime: json_['createTime'] as core.String?,
        displayName: json_['displayName'] as core.String?,
        driveSource: json_.containsKey('driveSource')
            ? DriveSource.fromJson(
                json_['driveSource'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        latestReviewSummary: json_.containsKey('latestReviewSummary')
            ? ReviewSummary.fromJson(
                json_['latestReviewSummary']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        name: json_['name'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final createTime = this.createTime;
    final displayName = this.displayName;
    final driveSource = this.driveSource;
    final latestReviewSummary = this.latestReviewSummary;
    final name = this.name;
    return {
      'createTime': ?createTime,
      'displayName': ?displayName,
      'driveSource': ?driveSource,
      'latestReviewSummary': ?latestReviewSummary,
      'name': ?name,
    };
  }
}

/// A location targeting either a PDF page region/quote or text lines in the
/// document.
class DocumentLocation {
  /// Location within a rendered PDF document.
  ///
  /// Output only.
  PdfLocation? pdf;

  /// Location within a plain-text, Markdown, or LaTeX source document.
  ///
  /// Output only.
  TextLocation? text;

  DocumentLocation({this.pdf, this.text});

  DocumentLocation.fromJson(core.Map json_)
    : this(
        pdf: json_.containsKey('pdf')
            ? PdfLocation.fromJson(
                json_['pdf'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        text: json_.containsKey('text')
            ? TextLocation.fromJson(
                json_['text'] as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final pdf = this.pdf;
    final text = this.text;
    return {'pdf': ?pdf, 'text': ?text};
  }
}

/// Response message for downloading a Document's raw content using media
/// download.
typedef DownloadDocumentResponse = $Empty;

/// Configuration for importing a document directly from Google Drive.
class DriveSource {
  /// The Google Drive file ID (e.g.
  /// "1BxiMVs0XRA5nFMdKvBdBZjgmUUqptlbs74OgvE2upms").
  ///
  /// For Google Drive shortcuts, callers must pass the resolved target file's
  /// `file_id` and `resource_key`.
  ///
  /// Required. Immutable.
  core.String? fileId;

  /// Input only.
  ///
  /// Immutable. Resource key (`^[a-zA-Z0-9_-]{1,128}$`) required to access
  /// certain older link-shared Google Drive files returned by the Google Drive
  /// Picker (for shortcuts, pass the resolved target file's resource key).
  /// Never persisted in database records or returned in Document resources (see
  /// companion field `resource_key_set`, AIP-147).
  ///
  /// Optional.
  core.String? resourceKey;

  /// Indicates whether a resource key was provided for this Drive source.
  ///
  /// Output only.
  core.bool? resourceKeySet;

  /// Input only.
  ///
  /// Immutable. Importing a specific revision is not currently supported;
  /// non-empty values return INVALID_ARGUMENT.
  ///
  /// Optional.
  core.String? revisionId;

  DriveSource({
    this.fileId,
    this.resourceKey,
    this.resourceKeySet,
    this.revisionId,
  });

  DriveSource.fromJson(core.Map json_)
    : this(
        fileId: json_['fileId'] as core.String?,
        resourceKey: json_['resourceKey'] as core.String?,
        resourceKeySet: json_['resourceKeySet'] as core.bool?,
        revisionId: json_['revisionId'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final fileId = this.fileId;
    final resourceKey = this.resourceKey;
    final resourceKeySet = this.resourceKeySet;
    final revisionId = this.revisionId;
    return {
      'fileId': ?fileId,
      'resourceKey': ?resourceKey,
      'resourceKeySet': ?resourceKeySet,
      'revisionId': ?revisionId,
    };
  }
}

/// A generic empty message that you can re-use to avoid defining duplicated
/// empty messages in your APIs.
///
/// A typical example is to use it as the request or the response type of an API
/// method. For instance: service Foo { rpc Bar(google.protobuf.Empty) returns
/// (google.protobuf.Empty); }
typedef Empty = $Empty;

/// Request message for estimating what a review would cost.
class EstimateReviewCostRequest {
  /// The review to estimate, as it would be passed to `CreateReview`.
  ///
  /// Only its `run_config` is read, and `gemini_api_key` is ignored.
  ///
  /// Required.
  Review? review;

  EstimateReviewCostRequest({this.review});

  EstimateReviewCostRequest.fromJson(core.Map json_)
    : this(
        review: json_.containsKey('review')
            ? Review.fromJson(
                json_['review'] as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final review = this.review;
    return {'review': ?review};
  }
}

/// Response message for estimating what a review would cost.
///
/// When the cost can't be estimated, for example because too few past reviews
/// used the same model, depth, and thinking level, the costs are unset and
/// `past_review_count` is 0.
class EstimateReviewCostResponse {
  /// The 95th percentile of what comparable past reviews would cost for this
  /// document.
  Money? highCost;

  /// The 20th percentile of what comparable past reviews would cost for this
  /// document.
  Money? lowCost;

  /// The median of what comparable past reviews would cost for this document.
  Money? medianCost;

  /// Number of past reviews the estimate is based on.
  core.int? pastReviewCount;

  EstimateReviewCostResponse({
    this.highCost,
    this.lowCost,
    this.medianCost,
    this.pastReviewCount,
  });

  EstimateReviewCostResponse.fromJson(core.Map json_)
    : this(
        highCost: json_.containsKey('highCost')
            ? Money.fromJson(
                json_['highCost'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        lowCost: json_.containsKey('lowCost')
            ? Money.fromJson(
                json_['lowCost'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        medianCost: json_.containsKey('medianCost')
            ? Money.fromJson(
                json_['medianCost'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        pastReviewCount: json_['pastReviewCount'] as core.int?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final highCost = this.highCost;
    final lowCost = this.lowCost;
    final medianCost = this.medianCost;
    final pastReviewCount = this.pastReviewCount;
    return {
      'highCost': ?highCost,
      'lowCost': ?lowCost,
      'medianCost': ?medianCost,
      'pastReviewCount': ?pastReviewCount,
    };
  }
}

/// Per-field comparison result between extracted and retrieved metadata.
class FieldComparison {
  /// Human-readable comparison detail (e.g., "extracted=2023, found=2024
  /// (diff=1)").
  ///
  /// Output only.
  core.String? detail;

  /// Field key ("title", "authors", "year", "journal", "volume", "pages",
  /// "doi").
  ///
  /// Output only.
  core.String? fieldKey;

  /// Whether the extracted and retrieved values matched.
  ///
  /// Output only.
  core.bool? match;

  FieldComparison({this.detail, this.fieldKey, this.match});

  FieldComparison.fromJson(core.Map json_)
    : this(
        detail: json_['detail'] as core.String?,
        fieldKey: json_['fieldKey'] as core.String?,
        match: json_['match'] as core.bool?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final detail = this.detail;
    final fieldKey = this.fieldKey;
    final match = this.match;
    return {'detail': ?detail, 'fieldKey': ?fieldKey, 'match': ?match};
  }
}

/// Web source URL surfaced during Google Search grounding verification.
class GroundingUrl {
  /// Source page title or domain.
  ///
  /// Output only.
  core.String? title;

  /// Source URL.
  ///
  /// Output only.
  core.String? url;

  GroundingUrl({this.title, this.url});

  GroundingUrl.fromJson(core.Map json_)
    : this(
        title: json_['title'] as core.String?,
        url: json_['url'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final title = this.title;
    final url = this.url;
    return {'title': ?title, 'url': ?url};
  }
}

/// Response message for listing Document resources.
class ListDocumentsResponse {
  /// The list of Document resources.
  core.List<Document>? documents;

  /// A token to retrieve the next page of results, or empty if no further pages
  /// exist.
  core.String? nextPageToken;

  ListDocumentsResponse({this.documents, this.nextPageToken});

  ListDocumentsResponse.fromJson(core.Map json_)
    : this(
        documents: (json_['documents'] as core.List?)
            ?.map(
              (value) => Document.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        nextPageToken: json_['nextPageToken'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final documents = this.documents;
    final nextPageToken = this.nextPageToken;
    return {'documents': ?documents, 'nextPageToken': ?nextPageToken};
  }
}

/// Response message for listing Review resources.
class ListReviewsResponse {
  /// A token to retrieve the next page of results, or empty if no further pages
  /// exist.
  core.String? nextPageToken;

  /// The list of Review resources.
  core.List<Review>? reviews;

  ListReviewsResponse({this.nextPageToken, this.reviews});

  ListReviewsResponse.fromJson(core.Map json_)
    : this(
        nextPageToken: json_['nextPageToken'] as core.String?,
        reviews: (json_['reviews'] as core.List?)
            ?.map(
              (value) =>
                  Review.fromJson(value as core.Map<core.String, core.dynamic>),
            )
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final nextPageToken = this.nextPageToken;
    final reviews = this.reviews;
    return {'nextPageToken': ?nextPageToken, 'reviews': ?reviews};
  }
}

/// Represents an amount of money with its currency type.
typedef Money = $Money;

/// Bounding box in normalized \[0.0, 1.0\] page coordinates (origin top-left).
class NormalizedBoundingBox {
  /// Bottom coordinate in \[0.0, 1.0\].
  ///
  /// Output only.
  core.double? bottom;

  /// Left coordinate in \[0.0, 1.0\].
  ///
  /// Output only.
  core.double? left;

  /// Right coordinate in \[0.0, 1.0\].
  ///
  /// Output only.
  core.double? right;

  /// Top coordinate in \[0.0, 1.0\].
  ///
  /// Output only.
  core.double? top;

  NormalizedBoundingBox({this.bottom, this.left, this.right, this.top});

  NormalizedBoundingBox.fromJson(core.Map json_)
    : this(
        bottom: (json_['bottom'] as core.num?)?.toDouble(),
        left: (json_['left'] as core.num?)?.toDouble(),
        right: (json_['right'] as core.num?)?.toDouble(),
        top: (json_['top'] as core.num?)?.toDouble(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final bottom = this.bottom;
    final left = this.left;
    final right = this.right;
    final top = this.top;
    return {'bottom': ?bottom, 'left': ?left, 'right': ?right, 'top': ?top};
  }
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
        error: json_.containsKey('error')
            ? Status.fromJson(
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

  core.Map<core.String, core.dynamic> toJson() {
    final done = this.done;
    final error = this.error;
    final metadata = this.metadata;
    final name = this.name;
    final response = this.response;
    return {
      'done': ?done,
      'error': ?error,
      'metadata': ?metadata,
      'name': ?name,
      'response': ?response,
    };
  }
}

/// Location anchor within a PDF document.
class PdfLocation {
  /// Normalized bounding boxes \[0.0, 1.0\] relative to page width and height.
  ///
  /// At most 50 bounding boxes are returned per anchored span.
  ///
  /// Output only.
  core.List<NormalizedBoundingBox>? boundingBoxes;

  /// 1-indexed page number within the PDF document.
  ///
  /// Output only.
  core.int? pageNumber;

  /// W3C Web Annotation TextQuoteSelector
  /// (https://www.w3.org/TR/annotation-model/#text-quote-selector) for exact
  /// text span highlighting.
  ///
  /// Output only.
  TextQuoteSelector? quoteSelector;

  PdfLocation({this.boundingBoxes, this.pageNumber, this.quoteSelector});

  PdfLocation.fromJson(core.Map json_)
    : this(
        boundingBoxes: (json_['boundingBoxes'] as core.List?)
            ?.map(
              (value) => NormalizedBoundingBox.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        pageNumber: json_['pageNumber'] as core.int?,
        quoteSelector: json_.containsKey('quoteSelector')
            ? TextQuoteSelector.fromJson(
                json_['quoteSelector'] as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final boundingBoxes = this.boundingBoxes;
    final pageNumber = this.pageNumber;
    final quoteSelector = this.quoteSelector;
    return {
      'boundingBoxes': ?boundingBoxes,
      'pageNumber': ?pageNumber,
      'quoteSelector': ?quoteSelector,
    };
  }
}

/// Encapsulates the synthesized output or failure details of a single review
/// execution.
class Result {
  /// Structured review comments anchored to specific locations in the document.
  ///
  /// At most 300 anchored comments are returned per review.
  ///
  /// Output only.
  core.List<AnchoredReviewComment>? anchoredComments;

  /// Failure status details if review execution failed.
  ///
  /// Output only.
  Status? error;

  /// Synthesized review report markdown.
  ///
  /// Output only.
  core.String? reviewMarkdown;

  Result({this.anchoredComments, this.error, this.reviewMarkdown});

  Result.fromJson(core.Map json_)
    : this(
        anchoredComments: (json_['anchoredComments'] as core.List?)
            ?.map(
              (value) => AnchoredReviewComment.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        error: json_.containsKey('error')
            ? Status.fromJson(
                json_['error'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        reviewMarkdown: json_['reviewMarkdown'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final anchoredComments = this.anchoredComments;
    final error = this.error;
    final reviewMarkdown = this.reviewMarkdown;
    return {
      'anchoredComments': ?anchoredComments,
      'error': ?error,
      'reviewMarkdown': ?reviewMarkdown,
    };
  }
}

/// An evaluation run of a document.
class Review {
  /// Timestamp when this review attempt was initiated.
  ///
  /// Output only.
  core.String? createTime;

  /// Timestamp when the review reached a terminal state.
  ///
  /// Output only.
  core.String? endTime;

  /// Identifier.
  ///
  /// Resource name in format `documents/{document}/reviews/{review}`.
  core.String? name;

  /// Estimated completion progress percentage of the review in \[0, 100\].
  ///
  /// Output only.
  core.int? progressPercent;

  /// Review output (markdown, errors, and future modalities).
  ///
  /// Output only.
  Result? result;

  /// Run configuration parameters used for this review.
  ///
  /// Optional.
  DeepReviewRunConfig? runConfig;

  /// Timestamp when the worker started evaluation.
  ///
  /// Output only.
  core.String? startTime;

  /// Current review lifecycle state.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : Default unspecified state.
  /// - "PENDING" : Review created and queued, awaiting worker scheduling.
  /// - "RUNNING" : Review worker is actively evaluating the document.
  /// - "SUCCEEDED" : Review succeeded with generated report.
  /// - "FAILED" : Review failed after exhausting retry attempts.
  core.String? state;

  Review({
    this.createTime,
    this.endTime,
    this.name,
    this.progressPercent,
    this.result,
    this.runConfig,
    this.startTime,
    this.state,
  });

  Review.fromJson(core.Map json_)
    : this(
        createTime: json_['createTime'] as core.String?,
        endTime: json_['endTime'] as core.String?,
        name: json_['name'] as core.String?,
        progressPercent: json_['progressPercent'] as core.int?,
        result: json_.containsKey('result')
            ? Result.fromJson(
                json_['result'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        runConfig: json_.containsKey('runConfig')
            ? DeepReviewRunConfig.fromJson(
                json_['runConfig'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        startTime: json_['startTime'] as core.String?,
        state: json_['state'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final createTime = this.createTime;
    final endTime = this.endTime;
    final name = this.name;
    final progressPercent = this.progressPercent;
    final result = this.result;
    final runConfig = this.runConfig;
    final startTime = this.startTime;
    final state = this.state;
    return {
      'createTime': ?createTime,
      'endTime': ?endTime,
      'name': ?name,
      'progressPercent': ?progressPercent,
      'result': ?result,
      'runConfig': ?runConfig,
      'startTime': ?startTime,
      'state': ?state,
    };
  }
}

/// Lightweight summary of a Review execution run for display in Document views.
class ReviewSummary {
  /// Timestamp when this review attempt was initiated.
  ///
  /// Output only.
  core.String? createTime;

  /// Resource name of the Review.
  ///
  /// Output only.
  core.String? review;

  /// Current review lifecycle state.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : Default unspecified state.
  /// - "PENDING" : Review created and queued, awaiting worker scheduling.
  /// - "RUNNING" : Review worker is actively evaluating the document.
  /// - "SUCCEEDED" : Review succeeded with generated report.
  /// - "FAILED" : Review failed after exhausting retry attempts.
  core.String? state;

  ReviewSummary({this.createTime, this.review, this.state});

  ReviewSummary.fromJson(core.Map json_)
    : this(
        createTime: json_['createTime'] as core.String?,
        review: json_['review'] as core.String?,
        state: json_['state'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final createTime = this.createTime;
    final review = this.review;
    final state = this.state;
    return {'createTime': ?createTime, 'review': ?review, 'state': ?state};
  }
}

/// The `Status` type defines a logical error model that is suitable for
/// different programming environments, including REST APIs and RPC APIs.
///
/// It is used by [gRPC](https://github.com/grpc). Each `Status` message
/// contains three pieces of data: error code, error message, and error details.
/// You can find out more about this error model and how to work with it in the
/// [API Design Guide](https://cloud.google.com/apis/design/errors).
typedef Status = $Status00;

/// Location anchor within a plain-text, Markdown, or LaTeX source document.
class TextLocation {
  /// Optional 1-indexed inclusive first column offset within `first_line`.
  ///
  /// Output only.
  core.int? firstColumn;

  /// 1-indexed inclusive first line number.
  ///
  /// Output only.
  core.int? firstLine;

  /// Optional 1-indexed inclusive last column offset within `last_line`.
  ///
  /// Output only.
  core.int? lastColumn;

  /// 1-indexed inclusive last line number.
  ///
  /// Output only.
  core.int? lastLine;

  /// Verbatim snippet of the anchored source line(s).
  ///
  /// Output only.
  core.String? quotedLinePreview;

  TextLocation({
    this.firstColumn,
    this.firstLine,
    this.lastColumn,
    this.lastLine,
    this.quotedLinePreview,
  });

  TextLocation.fromJson(core.Map json_)
    : this(
        firstColumn: json_['firstColumn'] as core.int?,
        firstLine: json_['firstLine'] as core.int?,
        lastColumn: json_['lastColumn'] as core.int?,
        lastLine: json_['lastLine'] as core.int?,
        quotedLinePreview: json_['quotedLinePreview'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final firstColumn = this.firstColumn;
    final firstLine = this.firstLine;
    final lastColumn = this.lastColumn;
    final lastLine = this.lastLine;
    final quotedLinePreview = this.quotedLinePreview;
    return {
      'firstColumn': ?firstColumn,
      'firstLine': ?firstLine,
      'lastColumn': ?lastColumn,
      'lastLine': ?lastLine,
      'quotedLinePreview': ?quotedLinePreview,
    };
  }
}

/// W3C Web Annotation TextQuoteSelector for resilient text anchoring (see
/// https://www.w3.org/TR/annotation-model/#text-quote-selector for details).
class TextQuoteSelector {
  /// Verbatim substring extracted from the document character stream.
  ///
  /// Output only.
  core.String? exact;

  /// Characters immediately preceding `exact` for disambiguation.
  ///
  /// Output only.
  core.String? prefix;

  /// Characters immediately following `exact` for disambiguation.
  ///
  /// Output only.
  core.String? suffix;

  TextQuoteSelector({this.exact, this.prefix, this.suffix});

  TextQuoteSelector.fromJson(core.Map json_)
    : this(
        exact: json_['exact'] as core.String?,
        prefix: json_['prefix'] as core.String?,
        suffix: json_['suffix'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final exact = this.exact;
    final prefix = this.prefix;
    final suffix = this.suffix;
    return {'exact': ?exact, 'prefix': ?prefix, 'suffix': ?suffix};
  }
}

/// Singleton resource representing the authenticated caller's review quota
/// limits and sliding-window usage.
class UserQuota {
  /// Whether a custom per-user quota override is active for this user.
  ///
  /// Output only.
  core.bool? customLimitEnabled;

  /// Maximum free-tier reviews allowed per rolling 7-day window.
  ///
  /// Output only.
  core.int? maxReviewCountPerWeek;

  /// Identifier.
  ///
  /// Resource name of the singleton user quota (`userQuota`).
  core.String? name;

  /// Timestamp when the next review quota slot becomes available if
  /// `remaining_review_count` is 0; unset when quota is currently available.
  ///
  /// Output only.
  core.String? nextAvailableTime;

  /// Remaining free-tier reviews available in the current rolling 7-day window
  /// (`max(0, max_review_count_per_week - used_review_count)`).
  ///
  /// Output only.
  core.int? remainingReviewCount;

  /// Number of free-tier reviews used in the past 7 days.
  ///
  /// Output only.
  core.int? usedReviewCount;

  UserQuota({
    this.customLimitEnabled,
    this.maxReviewCountPerWeek,
    this.name,
    this.nextAvailableTime,
    this.remainingReviewCount,
    this.usedReviewCount,
  });

  UserQuota.fromJson(core.Map json_)
    : this(
        customLimitEnabled: json_['customLimitEnabled'] as core.bool?,
        maxReviewCountPerWeek: json_['maxReviewCountPerWeek'] as core.int?,
        name: json_['name'] as core.String?,
        nextAvailableTime: json_['nextAvailableTime'] as core.String?,
        remainingReviewCount: json_['remainingReviewCount'] as core.int?,
        usedReviewCount: json_['usedReviewCount'] as core.int?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final customLimitEnabled = this.customLimitEnabled;
    final maxReviewCountPerWeek = this.maxReviewCountPerWeek;
    final name = this.name;
    final nextAvailableTime = this.nextAvailableTime;
    final remainingReviewCount = this.remainingReviewCount;
    final usedReviewCount = this.usedReviewCount;
    return {
      'customLimitEnabled': ?customLimitEnabled,
      'maxReviewCountPerWeek': ?maxReviewCountPerWeek,
      'name': ?name,
      'nextAvailableTime': ?nextAvailableTime,
      'remainingReviewCount': ?remainingReviewCount,
      'usedReviewCount': ?usedReviewCount,
    };
  }
}
