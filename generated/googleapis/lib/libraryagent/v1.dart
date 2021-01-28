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

/// Library Agent API - v1
///
/// A simple Google Example Library API.
///
/// For more information, see <https://cloud.google.com/docs/quota>
///
/// Create an instance of [LibraryagentApi] to access these resources:
///
/// - [ShelvesResourceApi]
///   - [ShelvesBooksResourceApi]
library libraryagent.v1;

import 'dart:async' as async;
import 'dart:core' as core;

import 'package:_discoveryapis_commons/_discoveryapis_commons.dart' as commons;
import 'package:http/http.dart' as http;

import '../src/user_agent.dart';

export 'package:_discoveryapis_commons/_discoveryapis_commons.dart'
    show ApiRequestError, DetailedApiRequestError;

/// A simple Google Example Library API.
class LibraryagentApi {
  /// View and manage your data across Google Cloud Platform services
  static const cloudPlatformScope =
      'https://www.googleapis.com/auth/cloud-platform';

  final commons.ApiRequester _requester;

  ShelvesResourceApi get shelves => ShelvesResourceApi(_requester);

  LibraryagentApi(http.Client client,
      {core.String rootUrl = 'https://libraryagent.googleapis.com/',
      core.String servicePath = ''})
      : _requester =
            commons.ApiRequester(client, rootUrl, servicePath, userAgent);
}

class ShelvesResourceApi {
  final commons.ApiRequester _requester;

  ShelvesBooksResourceApi get books => ShelvesBooksResourceApi(_requester);

  ShelvesResourceApi(commons.ApiRequester client) : _requester = client;

  /// Gets a shelf. Returns NOT_FOUND if the shelf does not exist.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the shelf to retrieve.
  /// Value must have pattern "^shelves/[^/]+$".
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
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (name == null) {
      throw core.ArgumentError('Parameter name is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1/' + commons.Escaper.ecapeVariableReserved('$name');

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
      (data) => GoogleExampleLibraryagentV1Shelf.fromJson(
          data as core.Map<core.String, core.dynamic>),
    );
  }

  /// Lists shelves. The order is unspecified but deterministic. Newly created
  /// shelves will not necessarily be added to the end of this list.
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
    core.int pageSize,
    core.String pageToken,
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (pageSize != null) {
      _queryParams['pageSize'] = ['${pageSize}'];
    }
    if (pageToken != null) {
      _queryParams['pageToken'] = [pageToken];
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1/shelves';

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
      (data) => GoogleExampleLibraryagentV1ListShelvesResponse.fromJson(
          data as core.Map<core.String, core.dynamic>),
    );
  }
}

class ShelvesBooksResourceApi {
  final commons.ApiRequester _requester;

  ShelvesBooksResourceApi(commons.ApiRequester client) : _requester = client;

  /// Borrow a book from the library. Returns the book if it is borrowed
  /// successfully. Returns NOT_FOUND if the book does not exist in the library.
  /// Returns quota exceeded error if the amount of books borrowed exceeds
  /// allocation quota in any dimensions.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the book to borrow.
  /// Value must have pattern "^shelves/[^/]+/books/[^/]+$".
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
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (name == null) {
      throw core.ArgumentError('Parameter name is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1/' + commons.Escaper.ecapeVariableReserved('$name') + ':borrow';

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
      (data) => GoogleExampleLibraryagentV1Book.fromJson(
          data as core.Map<core.String, core.dynamic>),
    );
  }

  /// Gets a book. Returns NOT_FOUND if the book does not exist.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the book to retrieve.
  /// Value must have pattern "^shelves/[^/]+/books/[^/]+$".
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
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (name == null) {
      throw core.ArgumentError('Parameter name is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1/' + commons.Escaper.ecapeVariableReserved('$name');

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
      (data) => GoogleExampleLibraryagentV1Book.fromJson(
          data as core.Map<core.String, core.dynamic>),
    );
  }

  /// Lists books in a shelf. The order is unspecified but deterministic. Newly
  /// created books will not necessarily be added to the end of this list.
  /// Returns NOT_FOUND if the shelf does not exist.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The name of the shelf whose books we'd like to list.
  /// Value must have pattern "^shelves/[^/]+$".
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
    core.int pageSize,
    core.String pageToken,
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (parent == null) {
      throw core.ArgumentError('Parameter parent is required.');
    }
    if (pageSize != null) {
      _queryParams['pageSize'] = ['${pageSize}'];
    }
    if (pageToken != null) {
      _queryParams['pageToken'] = [pageToken];
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1/' + commons.Escaper.ecapeVariableReserved('$parent') + '/books';

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
      (data) => GoogleExampleLibraryagentV1ListBooksResponse.fromJson(
          data as core.Map<core.String, core.dynamic>),
    );
  }

  /// Return a book to the library. Returns the book if it is returned to the
  /// library successfully. Returns error if the book does not belong to the
  /// library or the users didn't borrow before.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the book to return.
  /// Value must have pattern "^shelves/[^/]+/books/[^/]+$".
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
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (name == null) {
      throw core.ArgumentError('Parameter name is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1/' + commons.Escaper.ecapeVariableReserved('$name') + ':return';

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
      (data) => GoogleExampleLibraryagentV1Book.fromJson(
          data as core.Map<core.String, core.dynamic>),
    );
  }
}

/// A single book in the library.
class GoogleExampleLibraryagentV1Book {
  /// The name of the book author.
  core.String author;

  /// The resource name of the book. Book names have the form
  /// `shelves/{shelf_id}/books/{book_id}`. The name is ignored when creating a
  /// book.
  core.String name;

  /// Value indicating whether the book has been read.
  core.bool read;

  /// The title of the book.
  core.String title;

  GoogleExampleLibraryagentV1Book();

  GoogleExampleLibraryagentV1Book.fromJson(core.Map _json) {
    if (_json.containsKey('author')) {
      author = _json['author'] as core.String;
    }
    if (_json.containsKey('name')) {
      name = _json['name'] as core.String;
    }
    if (_json.containsKey('read')) {
      read = _json['read'] as core.bool;
    }
    if (_json.containsKey('title')) {
      title = _json['title'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (author != null) {
      _json['author'] = author;
    }
    if (name != null) {
      _json['name'] = name;
    }
    if (read != null) {
      _json['read'] = read;
    }
    if (title != null) {
      _json['title'] = title;
    }
    return _json;
  }
}

/// Response message for LibraryAgent.ListBooks.
class GoogleExampleLibraryagentV1ListBooksResponse {
  /// The list of books.
  core.List<GoogleExampleLibraryagentV1Book> books;

  /// A token to retrieve next page of results. Pass this value in the
  /// ListBooksRequest.page_token field in the subsequent call to `ListBooks`
  /// method to retrieve the next page of results.
  core.String nextPageToken;

  GoogleExampleLibraryagentV1ListBooksResponse();

  GoogleExampleLibraryagentV1ListBooksResponse.fromJson(core.Map _json) {
    if (_json.containsKey('books')) {
      books = (_json['books'] as core.List)
          .map<GoogleExampleLibraryagentV1Book>((value) =>
              GoogleExampleLibraryagentV1Book.fromJson(
                  value as core.Map<core.String, core.dynamic>))
          .toList();
    }
    if (_json.containsKey('nextPageToken')) {
      nextPageToken = _json['nextPageToken'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (books != null) {
      _json['books'] = books.map((value) => value.toJson()).toList();
    }
    if (nextPageToken != null) {
      _json['nextPageToken'] = nextPageToken;
    }
    return _json;
  }
}

/// Response message for LibraryAgent.ListShelves.
class GoogleExampleLibraryagentV1ListShelvesResponse {
  /// A token to retrieve next page of results. Pass this value in the
  /// ListShelvesRequest.page_token field in the subsequent call to
  /// `ListShelves` method to retrieve the next page of results.
  core.String nextPageToken;

  /// The list of shelves.
  core.List<GoogleExampleLibraryagentV1Shelf> shelves;

  GoogleExampleLibraryagentV1ListShelvesResponse();

  GoogleExampleLibraryagentV1ListShelvesResponse.fromJson(core.Map _json) {
    if (_json.containsKey('nextPageToken')) {
      nextPageToken = _json['nextPageToken'] as core.String;
    }
    if (_json.containsKey('shelves')) {
      shelves = (_json['shelves'] as core.List)
          .map<GoogleExampleLibraryagentV1Shelf>((value) =>
              GoogleExampleLibraryagentV1Shelf.fromJson(
                  value as core.Map<core.String, core.dynamic>))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (nextPageToken != null) {
      _json['nextPageToken'] = nextPageToken;
    }
    if (shelves != null) {
      _json['shelves'] = shelves.map((value) => value.toJson()).toList();
    }
    return _json;
  }
}

/// A Shelf contains a collection of books with a theme.
class GoogleExampleLibraryagentV1Shelf {
  /// Output only. The resource name of the shelf. Shelf names have the form
  /// `shelves/{shelf_id}`. The name is ignored when creating a shelf.
  core.String name;

  /// The theme of the shelf
  core.String theme;

  GoogleExampleLibraryagentV1Shelf();

  GoogleExampleLibraryagentV1Shelf.fromJson(core.Map _json) {
    if (_json.containsKey('name')) {
      name = _json['name'] as core.String;
    }
    if (_json.containsKey('theme')) {
      theme = _json['theme'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (name != null) {
      _json['name'] = name;
    }
    if (theme != null) {
      _json['theme'] = theme;
    }
    return _json;
  }
}
