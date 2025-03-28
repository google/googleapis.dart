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

/// Library Agent API - v1
///
/// A simple Google Example Library API.
///
/// For more information, see <https://cloud.google.com/docs/quota>
///
/// Create an instance of [LibraryagentApi] to access these resources:
///
/// - [ShelvesResource]
///   - [ShelvesBooksResource]
library;

import 'dart:async' as async;
import 'dart:core' as core;

import 'package:_discoveryapis_commons/_discoveryapis_commons.dart' as commons;
import 'package:http/http.dart' as http;

import '../src/user_agent.dart';

export 'package:_discoveryapis_commons/_discoveryapis_commons.dart'
    show ApiRequestError, DetailedApiRequestError;

/// A simple Google Example Library API.
class LibraryagentApi {
  /// See, edit, configure, and delete your Google Cloud data and see the email
  /// address for your Google Account.
  static const cloudPlatformScope =
      'https://www.googleapis.com/auth/cloud-platform';

  final commons.ApiRequester _requester;

  ShelvesResource get shelves => ShelvesResource(_requester);

  LibraryagentApi(http.Client client,
      {core.String rootUrl = 'https://libraryagent.googleapis.com/',
      core.String servicePath = ''})
      : _requester =
            commons.ApiRequester(client, rootUrl, servicePath, requestHeaders);
}

class ShelvesResource {
  final commons.ApiRequester _requester;

  ShelvesBooksResource get books => ShelvesBooksResource(_requester);

  ShelvesResource(commons.ApiRequester client) : _requester = client;

  /// Gets a shelf.
  ///
  /// Returns NOT_FOUND if the shelf does not exist.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the shelf to retrieve.
  /// Value must have pattern `^shelves/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleExampleLibraryagentV1Shelf].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleExampleLibraryagentV1Shelf> get(
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
    return GoogleExampleLibraryagentV1Shelf.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists shelves.
  ///
  /// The order is unspecified but deterministic. Newly created shelves will not
  /// necessarily be added to the end of this list.
  ///
  /// Request parameters:
  ///
  /// [pageSize] - Requested page size. Server may return fewer shelves than
  /// requested. If unspecified, server will pick an appropriate default.
  ///
  /// [pageToken] - A token identifying a page of results the server should
  /// return. Typically, this is the value of
  /// ListShelvesResponse.next_page_token returned from the previous call to
  /// `ListShelves` method.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleExampleLibraryagentV1ListShelvesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleExampleLibraryagentV1ListShelvesResponse> list({
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    const url_ = 'v1/shelves';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleExampleLibraryagentV1ListShelvesResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class ShelvesBooksResource {
  final commons.ApiRequester _requester;

  ShelvesBooksResource(commons.ApiRequester client) : _requester = client;

  /// Borrow a book from the library.
  ///
  /// Returns the book if it is borrowed successfully. Returns NOT_FOUND if the
  /// book does not exist in the library. Returns quota exceeded error if the
  /// amount of books borrowed exceeds allocation quota in any dimensions.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the book to borrow.
  /// Value must have pattern `^shelves/\[^/\]+/books/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleExampleLibraryagentV1Book].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleExampleLibraryagentV1Book> borrow(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':borrow';

    final response_ = await _requester.request(
      url_,
      'POST',
      queryParams: queryParams_,
    );
    return GoogleExampleLibraryagentV1Book.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Gets a book.
  ///
  /// Returns NOT_FOUND if the book does not exist.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the book to retrieve.
  /// Value must have pattern `^shelves/\[^/\]+/books/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleExampleLibraryagentV1Book].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleExampleLibraryagentV1Book> get(
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
    return GoogleExampleLibraryagentV1Book.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists books in a shelf.
  ///
  /// The order is unspecified but deterministic. Newly created books will not
  /// necessarily be added to the end of this list. Returns NOT_FOUND if the
  /// shelf does not exist.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The name of the shelf whose books we'd like to list.
  /// Value must have pattern `^shelves/\[^/\]+$`.
  ///
  /// [pageSize] - Requested page size. Server may return fewer books than
  /// requested. If unspecified, server will pick an appropriate default.
  ///
  /// [pageToken] - A token identifying a page of results the server should
  /// return. Typically, this is the value of ListBooksResponse.next_page_token.
  /// returned from the previous call to `ListBooks` method.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleExampleLibraryagentV1ListBooksResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleExampleLibraryagentV1ListBooksResponse> list(
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

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/books';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleExampleLibraryagentV1ListBooksResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Return a book to the library.
  ///
  /// Returns the book if it is returned to the library successfully. Returns
  /// error if the book does not belong to the library or the users didn't
  /// borrow before.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the book to return.
  /// Value must have pattern `^shelves/\[^/\]+/books/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleExampleLibraryagentV1Book].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleExampleLibraryagentV1Book> return_(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':return';

    final response_ = await _requester.request(
      url_,
      'POST',
      queryParams: queryParams_,
    );
    return GoogleExampleLibraryagentV1Book.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

/// A single book in the library.
class GoogleExampleLibraryagentV1Book {
  /// The name of the book author.
  core.String? author;

  /// The resource name of the book.
  ///
  /// Book names have the form `shelves/{shelf_id}/books/{book_id}`. The name is
  /// ignored when creating a book.
  core.String? name;

  /// Value indicating whether the book has been read.
  core.bool? read;

  /// The title of the book.
  core.String? title;

  GoogleExampleLibraryagentV1Book({
    this.author,
    this.name,
    this.read,
    this.title,
  });

  GoogleExampleLibraryagentV1Book.fromJson(core.Map json_)
      : this(
          author: json_['author'] as core.String?,
          name: json_['name'] as core.String?,
          read: json_['read'] as core.bool?,
          title: json_['title'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (author != null) 'author': author!,
        if (name != null) 'name': name!,
        if (read != null) 'read': read!,
        if (title != null) 'title': title!,
      };
}

/// Response message for LibraryAgent.ListBooks.
class GoogleExampleLibraryagentV1ListBooksResponse {
  /// The list of books.
  core.List<GoogleExampleLibraryagentV1Book>? books;

  /// A token to retrieve next page of results.
  ///
  /// Pass this value in the ListBooksRequest.page_token field in the subsequent
  /// call to `ListBooks` method to retrieve the next page of results.
  core.String? nextPageToken;

  GoogleExampleLibraryagentV1ListBooksResponse({
    this.books,
    this.nextPageToken,
  });

  GoogleExampleLibraryagentV1ListBooksResponse.fromJson(core.Map json_)
      : this(
          books: (json_['books'] as core.List?)
              ?.map((value) => GoogleExampleLibraryagentV1Book.fromJson(
                  value as core.Map<core.String, core.dynamic>))
              .toList(),
          nextPageToken: json_['nextPageToken'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (books != null) 'books': books!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
      };
}

/// Response message for LibraryAgent.ListShelves.
class GoogleExampleLibraryagentV1ListShelvesResponse {
  /// A token to retrieve next page of results.
  ///
  /// Pass this value in the ListShelvesRequest.page_token field in the
  /// subsequent call to `ListShelves` method to retrieve the next page of
  /// results.
  core.String? nextPageToken;

  /// The list of shelves.
  core.List<GoogleExampleLibraryagentV1Shelf>? shelves;

  GoogleExampleLibraryagentV1ListShelvesResponse({
    this.nextPageToken,
    this.shelves,
  });

  GoogleExampleLibraryagentV1ListShelvesResponse.fromJson(core.Map json_)
      : this(
          nextPageToken: json_['nextPageToken'] as core.String?,
          shelves: (json_['shelves'] as core.List?)
              ?.map((value) => GoogleExampleLibraryagentV1Shelf.fromJson(
                  value as core.Map<core.String, core.dynamic>))
              .toList(),
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (shelves != null) 'shelves': shelves!,
      };
}

/// A Shelf contains a collection of books with a theme.
class GoogleExampleLibraryagentV1Shelf {
  /// The resource name of the shelf.
  ///
  /// Shelf names have the form `shelves/{shelf_id}`. The name is ignored when
  /// creating a shelf.
  ///
  /// Output only.
  core.String? name;

  /// The theme of the shelf
  core.String? theme;

  GoogleExampleLibraryagentV1Shelf({
    this.name,
    this.theme,
  });

  GoogleExampleLibraryagentV1Shelf.fromJson(core.Map json_)
      : this(
          name: json_['name'] as core.String?,
          theme: json_['theme'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (name != null) 'name': name!,
        if (theme != null) 'theme': theme!,
      };
}
