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

/// Developer Knowledge API - v1
///
/// The Developer Knowledge API provides access to Google's developer knowledge.
///
/// For more information, see <https://developers.google.com/knowledge>
///
/// Create an instance of [DeveloperKnowledgeApi] to access these resources:
///
/// - [DocumentsResource]
library;

import 'dart:async' as async;
import 'dart:core' as core;

import 'package:_discoveryapis_commons/_discoveryapis_commons.dart' as commons;
import 'package:http/http.dart' as http;

import '../src/user_agent.dart';

export 'package:_discoveryapis_commons/_discoveryapis_commons.dart'
    show ApiRequestError, DetailedApiRequestError;

/// The Developer Knowledge API provides access to Google's developer knowledge.
class DeveloperKnowledgeApi {
  /// See, edit, configure, and delete your Google Cloud data and see the email
  /// address for your Google Account.
  static const cloudPlatformScope =
      'https://www.googleapis.com/auth/cloud-platform';

  final commons.ApiRequester _requester;

  DocumentsResource get documents => DocumentsResource(_requester);

  DeveloperKnowledgeApi(
    http.Client client, {
    core.String rootUrl = 'https://developerknowledge.googleapis.com/',
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

  DocumentsResource(commons.ApiRequester client) : _requester = client;

  /// Retrieves multiple documents, each with its full Markdown content.
  ///
  /// Request parameters:
  ///
  /// [names] - Required. Specifies the names of the documents to retrieve. A
  /// maximum of 20 documents can be retrieved in a batch. The documents are
  /// returned in the same order as the `names` in the request. Format:
  /// `documents/{uri_without_scheme}` Example:
  /// `documents/docs.cloud.google.com/storage/docs/creating-buckets`
  ///
  /// [view] - Optional. Specifies the DocumentView of the document. If
  /// unspecified, DeveloperKnowledge.BatchGetDocuments defaults to
  /// `DOCUMENT_VIEW_CONTENT`.
  /// Possible string values are:
  /// - "DOCUMENT_VIEW_UNSPECIFIED" : The default / unset value. See each API
  /// method for its default value if DocumentView is not specified.
  /// - "DOCUMENT_VIEW_BASIC" : Includes only the basic metadata fields: -
  /// `name` - `uri` - `data_source` - `title` - `description` - `update_time` -
  /// `view` This is the default of view for
  /// DeveloperKnowledge.SearchDocumentChunks.
  /// - "DOCUMENT_VIEW_FULL" : Includes all Document fields.
  /// - "DOCUMENT_VIEW_CONTENT" : Includes the `DOCUMENT_VIEW_BASIC` fields and
  /// the `content` field. This is the default of view for
  /// DeveloperKnowledge.GetDocument and DeveloperKnowledge.BatchGetDocuments.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [BatchGetDocumentsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<BatchGetDocumentsResponse> batchGet({
    core.List<core.String>? names,
    core.String? view,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'names': ?names,
      'view': ?view == null ? null : [view],
      'fields': ?$fields == null ? null : [$fields],
    };

    const url_ = 'v1/documents:batchGet';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return BatchGetDocumentsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Retrieves a single document with its full Markdown content.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Specifies the name of the document to retrieve. Format:
  /// `documents/{uri_without_scheme}` Example:
  /// `documents/docs.cloud.google.com/storage/docs/creating-buckets`
  /// Value must have pattern `^documents/.*$`.
  ///
  /// [view] - Optional. Specifies the DocumentView of the document. If
  /// unspecified, DeveloperKnowledge.GetDocument defaults to
  /// `DOCUMENT_VIEW_CONTENT`.
  /// Possible string values are:
  /// - "DOCUMENT_VIEW_UNSPECIFIED" : The default / unset value. See each API
  /// method for its default value if DocumentView is not specified.
  /// - "DOCUMENT_VIEW_BASIC" : Includes only the basic metadata fields: -
  /// `name` - `uri` - `data_source` - `title` - `description` - `update_time` -
  /// `view` This is the default of view for
  /// DeveloperKnowledge.SearchDocumentChunks.
  /// - "DOCUMENT_VIEW_FULL" : Includes all Document fields.
  /// - "DOCUMENT_VIEW_CONTENT" : Includes the `DOCUMENT_VIEW_BASIC` fields and
  /// the `content` field. This is the default of view for
  /// DeveloperKnowledge.GetDocument and DeveloperKnowledge.BatchGetDocuments.
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
  async.Future<Document> get(
    core.String name, {
    core.String? view,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'view': ?view == null ? null : [view],
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

  /// Searches for developer knowledge across Google's developer documentation.
  ///
  /// Returns DocumentChunks based on the user's query. There may be many chunks
  /// from the same Document. To retrieve full documents, use
  /// DeveloperKnowledge.GetDocument or DeveloperKnowledge.BatchGetDocuments
  /// with the DocumentChunk.parent returned in the
  /// SearchDocumentChunksResponse.results.
  ///
  /// Request parameters:
  ///
  /// [filter] - Optional. Applies a strict filter to the search results. The
  /// expression supports a subset of the syntax described at
  /// https://google.aip.dev/160. While `SearchDocumentChunks` returns
  /// DocumentChunks, the filter is applied to `DocumentChunk.document` fields.
  /// Supported fields for filtering: * `data_source` (STRING): The source of
  /// the document, e.g. `docs.cloud.google.com`. See
  /// https://developers.google.com/knowledge/reference/corpus-reference for the
  /// complete list of data sources in the corpus. * `update_time` (TIMESTAMP):
  /// The timestamp of when the document was last meaningfully updated. A
  /// meaningful update is one that changes document's markdown content or
  /// metadata. * `uri` (STRING): The document URI, e.g.
  /// `https://docs.cloud.google.com/bigquery/docs/tables`. STRING fields
  /// support `=` (equals) and `!=` (not equals) operators for **exact match**
  /// on the whole string. Partial match, prefix match, and regexp match are not
  /// supported. TIMESTAMP fields support `=`, `<`, `<=`, `>`, and `>=`
  /// operators. Timestamps must be in RFC-3339 format, e.g.,
  /// `"2025-01-01T00:00:00Z"`. You can combine expressions using `AND`, `OR`,
  /// and `NOT` (or `-`) logical operators. `OR` has higher precedence than
  /// `AND`. Use parentheses for explicit precedence grouping. Examples: *
  /// `data_source = "docs.cloud.google.com" OR data_source =
  /// "firebase.google.com"` * `data_source != "firebase.google.com"` *
  /// `update_time < "2024-01-01T00:00:00Z"` * `update_time >=
  /// "2025-01-22T00:00:00Z" AND (data_source = "developer.chrome.com" OR
  /// data_source = "web.dev")` * `uri =
  /// "https://docs.cloud.google.com/release-notes"` The `filter` string must
  /// not exceed 500 characters; values longer than 500 characters will result
  /// in an `INVALID_ARGUMENT` error.
  ///
  /// [pageSize] - Optional. Specifies the maximum number of results to return.
  /// The service may return fewer than this value. If unspecified, at most 5
  /// results will be returned. The maximum value is 20; values above 20 will
  /// result in an INVALID_ARGUMENT error.
  ///
  /// [pageToken] - Optional. Contains a page token, received from a previous
  /// `SearchDocumentChunks` call. Provide this to retrieve the subsequent page.
  ///
  /// [query] - Required. Provides the raw query string provided by the user,
  /// such as "How to create a Cloud Storage bucket?".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [SearchDocumentChunksResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<SearchDocumentChunksResponse> searchDocumentChunks({
    core.String? filter,
    core.int? pageSize,
    core.String? pageToken,
    core.String? query,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'filter': ?filter == null ? null : [filter],
      'pageSize': ?pageSize == null ? null : ['${pageSize}'],
      'pageToken': ?pageToken == null ? null : [pageToken],
      'query': ?query == null ? null : [query],
      'fields': ?$fields == null ? null : [$fields],
    };

    const url_ = 'v1/documents:searchDocumentChunks';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return SearchDocumentChunksResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

/// Response message for DeveloperKnowledge.BatchGetDocuments.
class BatchGetDocumentsResponse {
  /// Contains the documents requested.
  core.List<Document>? documents;

  BatchGetDocumentsResponse({this.documents});

  BatchGetDocumentsResponse.fromJson(core.Map json_)
    : this(
        documents: (json_['documents'] as core.List?)
            ?.map(
              (value) => Document.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final documents = this.documents;
    return {'documents': ?documents};
  }
}

/// A Document represents a piece of content from the Developer Knowledge
/// corpus.
class Document {
  /// Contains the full content of the document in Markdown format.
  ///
  /// Output only.
  core.String? content;

  /// Specifies the data source of the document.
  ///
  /// Example data source: `firebase.google.com`
  ///
  /// Output only.
  core.String? dataSource;

  /// Provides a description of the document.
  ///
  /// Output only.
  core.String? description;

  /// Identifier.
  ///
  /// Contains the resource name of the document. Format:
  /// `documents/{uri_without_scheme}` Example:
  /// `documents/docs.cloud.google.com/storage/docs/creating-buckets`
  core.String? name;

  /// Provides the title of the document.
  ///
  /// Output only.
  core.String? title;

  /// Represents the timestamp when the content or metadata of the document was
  /// last updated.
  ///
  /// Output only.
  core.String? updateTime;

  /// Provides the URI of the content, such as
  /// `docs.cloud.google.com/storage/docs/creating-buckets`.
  ///
  /// Output only.
  core.String? uri;

  /// Specifies the DocumentView of the document.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "DOCUMENT_VIEW_UNSPECIFIED" : The default / unset value. See each API
  /// method for its default value if DocumentView is not specified.
  /// - "DOCUMENT_VIEW_BASIC" : Includes only the basic metadata fields: -
  /// `name` - `uri` - `data_source` - `title` - `description` - `update_time` -
  /// `view` This is the default of view for
  /// DeveloperKnowledge.SearchDocumentChunks.
  /// - "DOCUMENT_VIEW_FULL" : Includes all Document fields.
  /// - "DOCUMENT_VIEW_CONTENT" : Includes the `DOCUMENT_VIEW_BASIC` fields and
  /// the `content` field. This is the default of view for
  /// DeveloperKnowledge.GetDocument and DeveloperKnowledge.BatchGetDocuments.
  core.String? view;

  Document({
    this.content,
    this.dataSource,
    this.description,
    this.name,
    this.title,
    this.updateTime,
    this.uri,
    this.view,
  });

  Document.fromJson(core.Map json_)
    : this(
        content: json_['content'] as core.String?,
        dataSource: json_['dataSource'] as core.String?,
        description: json_['description'] as core.String?,
        name: json_['name'] as core.String?,
        title: json_['title'] as core.String?,
        updateTime: json_['updateTime'] as core.String?,
        uri: json_['uri'] as core.String?,
        view: json_['view'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final content = this.content;
    final dataSource = this.dataSource;
    final description = this.description;
    final name = this.name;
    final title = this.title;
    final updateTime = this.updateTime;
    final uri = this.uri;
    final view = this.view;
    return {
      'content': ?content,
      'dataSource': ?dataSource,
      'description': ?description,
      'name': ?name,
      'title': ?title,
      'updateTime': ?updateTime,
      'uri': ?uri,
      'view': ?view,
    };
  }
}

/// A DocumentChunk represents a piece of content from a Document in the
/// DeveloperKnowledge corpus.
///
/// To fetch the entire document content, pass the `parent` to
/// DeveloperKnowledge.GetDocument or DeveloperKnowledge.BatchGetDocuments.
class DocumentChunk {
  /// Contains the content of the document chunk.
  ///
  /// Output only.
  core.String? content;

  /// Represents metadata about the Document this chunk is from.
  ///
  /// The DocumentView of this Document message will be set to
  /// `DOCUMENT_VIEW_BASIC`. It is included here for convenience so that clients
  /// do not need to call DeveloperKnowledge.GetDocument or
  /// DeveloperKnowledge.BatchGetDocuments if they only need the metadata
  /// fields. Otherwise, clients should use DeveloperKnowledge.GetDocument or
  /// DeveloperKnowledge.BatchGetDocuments to fetch the full document content.
  ///
  /// Output only.
  Document? document;

  /// Specifies the ID of this chunk within the document.
  ///
  /// The chunk ID is unique within a document, but not globally unique across
  /// documents. The chunk ID is not stable and may change over time.
  ///
  /// Output only.
  core.String? id;

  /// Contains the resource name of the document this chunk is from.
  ///
  /// Format: `documents/{uri_without_scheme}` Example:
  /// `documents/docs.cloud.google.com/storage/docs/creating-buckets`
  ///
  /// Output only.
  core.String? parent;

  DocumentChunk({this.content, this.document, this.id, this.parent});

  DocumentChunk.fromJson(core.Map json_)
    : this(
        content: json_['content'] as core.String?,
        document: json_.containsKey('document')
            ? Document.fromJson(
                json_['document'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        id: json_['id'] as core.String?,
        parent: json_['parent'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final content = this.content;
    final document = this.document;
    final id = this.id;
    final parent = this.parent;
    return {
      'content': ?content,
      'document': ?document,
      'id': ?id,
      'parent': ?parent,
    };
  }
}

/// Response message for DeveloperKnowledge.SearchDocumentChunks.
class SearchDocumentChunksResponse {
  /// Provides a token that can be sent as `page_token` to retrieve the next
  /// page.
  ///
  /// If this field is omitted, there are no subsequent pages.
  ///
  /// Optional.
  core.String? nextPageToken;

  /// Contains the search results for the given query.
  ///
  /// Each DocumentChunk in this list contains a snippet of content relevant to
  /// the search query. Use the DocumentChunk.parent field of each result with
  /// DeveloperKnowledge.GetDocument or DeveloperKnowledge.BatchGetDocuments to
  /// retrieve the full document content.
  core.List<DocumentChunk>? results;

  SearchDocumentChunksResponse({this.nextPageToken, this.results});

  SearchDocumentChunksResponse.fromJson(core.Map json_)
    : this(
        nextPageToken: json_['nextPageToken'] as core.String?,
        results: (json_['results'] as core.List?)
            ?.map(
              (value) => DocumentChunk.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final nextPageToken = this.nextPageToken;
    final results = this.results;
    return {'nextPageToken': ?nextPageToken, 'results': ?results};
  }
}
