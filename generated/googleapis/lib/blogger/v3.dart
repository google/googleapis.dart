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

library googleapis.blogger.v3;

import 'dart:async' as async;
import 'dart:convert' as convert;
import 'dart:core' as core;

import 'package:_discoveryapis_commons/_discoveryapis_commons.dart' as commons;
import 'package:http/http.dart' as http;

import '../src/user_agent.dart';

export 'package:_discoveryapis_commons/_discoveryapis_commons.dart'
    show ApiRequestError, DetailedApiRequestError;

/// The Blogger API provides access to posts, comments and pages of a Blogger
/// blog.
class BloggerApi {
  /// Manage your Blogger account
  static const bloggerScope = 'https://www.googleapis.com/auth/blogger';

  /// View your Blogger account
  static const bloggerReadonlyScope =
      'https://www.googleapis.com/auth/blogger.readonly';

  final commons.ApiRequester _requester;

  BlogUserInfosResourceApi get blogUserInfos =>
      BlogUserInfosResourceApi(_requester);
  BlogsResourceApi get blogs => BlogsResourceApi(_requester);
  CommentsResourceApi get comments => CommentsResourceApi(_requester);
  PageViewsResourceApi get pageViews => PageViewsResourceApi(_requester);
  PagesResourceApi get pages => PagesResourceApi(_requester);
  PostUserInfosResourceApi get postUserInfos =>
      PostUserInfosResourceApi(_requester);
  PostsResourceApi get posts => PostsResourceApi(_requester);
  UsersResourceApi get users => UsersResourceApi(_requester);

  BloggerApi(http.Client client,
      {core.String rootUrl = 'https://blogger.googleapis.com/',
      core.String servicePath = ''})
      : _requester =
            commons.ApiRequester(client, rootUrl, servicePath, userAgent);
}

class BlogUserInfosResourceApi {
  final commons.ApiRequester _requester;

  BlogUserInfosResourceApi(commons.ApiRequester client) : _requester = client;

  /// Gets one blog and user info pair by blog id and user id.
  ///
  /// Request parameters:
  ///
  /// [userId] - null
  ///
  /// [blogId] - null
  ///
  /// [maxPosts] - null
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [BlogUserInfo].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<BlogUserInfo> get(
    core.String userId,
    core.String blogId, {
    core.int maxPosts,
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (userId == null) {
      throw core.ArgumentError('Parameter userId is required.');
    }
    if (blogId == null) {
      throw core.ArgumentError('Parameter blogId is required.');
    }
    if (maxPosts != null) {
      _queryParams['maxPosts'] = ['${maxPosts}'];
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v3/users/' +
        commons.Escaper.ecapeVariable('$userId') +
        '/blogs/' +
        commons.Escaper.ecapeVariable('$blogId');

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
          BlogUserInfo.fromJson(data as core.Map<core.String, core.dynamic>),
    );
  }
}

class BlogsResourceApi {
  final commons.ApiRequester _requester;

  BlogsResourceApi(commons.ApiRequester client) : _requester = client;

  /// Gets a blog by id.
  ///
  /// Request parameters:
  ///
  /// [blogId] - null
  ///
  /// [maxPosts] - null
  ///
  /// [view] - null
  /// Possible string values are:
  /// - "VIEW_TYPE_UNSPECIFIED"
  /// - "READER"
  /// - "AUTHOR"
  /// - "ADMIN"
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Blog].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Blog> get(
    core.String blogId, {
    core.int maxPosts,
    core.String view,
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (blogId == null) {
      throw core.ArgumentError('Parameter blogId is required.');
    }
    if (maxPosts != null) {
      _queryParams['maxPosts'] = ['${maxPosts}'];
    }
    if (view != null) {
      _queryParams['view'] = [view];
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v3/blogs/' + commons.Escaper.ecapeVariable('$blogId');

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
      (data) => Blog.fromJson(data as core.Map<core.String, core.dynamic>),
    );
  }

  /// Gets a blog by url.
  ///
  /// Request parameters:
  ///
  /// [url] - null
  ///
  /// [view] - null
  /// Possible string values are:
  /// - "VIEW_TYPE_UNSPECIFIED"
  /// - "READER"
  /// - "AUTHOR"
  /// - "ADMIN"
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Blog].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Blog> getByUrl(
    core.String url, {
    core.String view,
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (url == null) {
      throw core.ArgumentError('Parameter url is required.');
    }
    _queryParams['url'] = [url];
    if (view != null) {
      _queryParams['view'] = [view];
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v3/blogs/byurl';

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
      (data) => Blog.fromJson(data as core.Map<core.String, core.dynamic>),
    );
  }

  /// Lists blogs by user.
  ///
  /// Request parameters:
  ///
  /// [userId] - null
  ///
  /// [fetchUserInfo] - null
  ///
  /// [role] - null
  ///
  /// [status] - Default value of status is LIVE.
  ///
  /// [view] - null
  /// Possible string values are:
  /// - "VIEW_TYPE_UNSPECIFIED"
  /// - "READER"
  /// - "AUTHOR"
  /// - "ADMIN"
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [BlogList].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<BlogList> listByUser(
    core.String userId, {
    core.bool fetchUserInfo,
    core.List<core.String> role,
    core.List<core.String> status,
    core.String view,
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (userId == null) {
      throw core.ArgumentError('Parameter userId is required.');
    }
    if (fetchUserInfo != null) {
      _queryParams['fetchUserInfo'] = ['${fetchUserInfo}'];
    }
    if (role != null) {
      _queryParams['role'] = role;
    }
    if (status != null) {
      _queryParams['status'] = status;
    }
    if (view != null) {
      _queryParams['view'] = [view];
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v3/users/' + commons.Escaper.ecapeVariable('$userId') + '/blogs';

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
      (data) => BlogList.fromJson(data as core.Map<core.String, core.dynamic>),
    );
  }
}

class CommentsResourceApi {
  final commons.ApiRequester _requester;

  CommentsResourceApi(commons.ApiRequester client) : _requester = client;

  /// Marks a comment as not spam by blog id, post id and comment id.
  ///
  /// Request parameters:
  ///
  /// [blogId] - null
  ///
  /// [postId] - null
  ///
  /// [commentId] - null
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Comment].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Comment> approve(
    core.String blogId,
    core.String postId,
    core.String commentId, {
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (blogId == null) {
      throw core.ArgumentError('Parameter blogId is required.');
    }
    if (postId == null) {
      throw core.ArgumentError('Parameter postId is required.');
    }
    if (commentId == null) {
      throw core.ArgumentError('Parameter commentId is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v3/blogs/' +
        commons.Escaper.ecapeVariable('$blogId') +
        '/posts/' +
        commons.Escaper.ecapeVariable('$postId') +
        '/comments/' +
        commons.Escaper.ecapeVariable('$commentId') +
        '/approve';

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
      (data) => Comment.fromJson(data as core.Map<core.String, core.dynamic>),
    );
  }

  /// Deletes a comment by blog id, post id and comment id.
  ///
  /// Request parameters:
  ///
  /// [blogId] - null
  ///
  /// [postId] - null
  ///
  /// [commentId] - null
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future delete(
    core.String blogId,
    core.String postId,
    core.String commentId, {
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (blogId == null) {
      throw core.ArgumentError('Parameter blogId is required.');
    }
    if (postId == null) {
      throw core.ArgumentError('Parameter postId is required.');
    }
    if (commentId == null) {
      throw core.ArgumentError('Parameter commentId is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _downloadOptions = null;

    _url = 'v3/blogs/' +
        commons.Escaper.ecapeVariable('$blogId') +
        '/posts/' +
        commons.Escaper.ecapeVariable('$postId') +
        '/comments/' +
        commons.Escaper.ecapeVariable('$commentId');

    final _response = _requester.request(
      _url,
      'DELETE',
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

  /// Gets a comment by id.
  ///
  /// Request parameters:
  ///
  /// [blogId] - null
  ///
  /// [postId] - null
  ///
  /// [commentId] - null
  ///
  /// [view] - null
  /// Possible string values are:
  /// - "VIEW_TYPE_UNSPECIFIED"
  /// - "READER"
  /// - "AUTHOR"
  /// - "ADMIN"
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Comment].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Comment> get(
    core.String blogId,
    core.String postId,
    core.String commentId, {
    core.String view,
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (blogId == null) {
      throw core.ArgumentError('Parameter blogId is required.');
    }
    if (postId == null) {
      throw core.ArgumentError('Parameter postId is required.');
    }
    if (commentId == null) {
      throw core.ArgumentError('Parameter commentId is required.');
    }
    if (view != null) {
      _queryParams['view'] = [view];
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v3/blogs/' +
        commons.Escaper.ecapeVariable('$blogId') +
        '/posts/' +
        commons.Escaper.ecapeVariable('$postId') +
        '/comments/' +
        commons.Escaper.ecapeVariable('$commentId');

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
      (data) => Comment.fromJson(data as core.Map<core.String, core.dynamic>),
    );
  }

  /// Lists comments.
  ///
  /// Request parameters:
  ///
  /// [blogId] - null
  ///
  /// [postId] - null
  ///
  /// [endDate] - null
  ///
  /// [fetchBodies] - null
  ///
  /// [maxResults] - null
  ///
  /// [pageToken] - null
  ///
  /// [startDate] - null
  ///
  /// [status] - null
  /// Possible string values are:
  /// - "LIVE"
  /// - "EMPTIED"
  /// - "PENDING"
  /// - "SPAM"
  ///
  /// [view] - null
  /// Possible string values are:
  /// - "VIEW_TYPE_UNSPECIFIED"
  /// - "READER"
  /// - "AUTHOR"
  /// - "ADMIN"
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [CommentList].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<CommentList> list(
    core.String blogId,
    core.String postId, {
    core.String endDate,
    core.bool fetchBodies,
    core.int maxResults,
    core.String pageToken,
    core.String startDate,
    core.String status,
    core.String view,
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (blogId == null) {
      throw core.ArgumentError('Parameter blogId is required.');
    }
    if (postId == null) {
      throw core.ArgumentError('Parameter postId is required.');
    }
    if (endDate != null) {
      _queryParams['endDate'] = [endDate];
    }
    if (fetchBodies != null) {
      _queryParams['fetchBodies'] = ['${fetchBodies}'];
    }
    if (maxResults != null) {
      _queryParams['maxResults'] = ['${maxResults}'];
    }
    if (pageToken != null) {
      _queryParams['pageToken'] = [pageToken];
    }
    if (startDate != null) {
      _queryParams['startDate'] = [startDate];
    }
    if (status != null) {
      _queryParams['status'] = [status];
    }
    if (view != null) {
      _queryParams['view'] = [view];
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v3/blogs/' +
        commons.Escaper.ecapeVariable('$blogId') +
        '/posts/' +
        commons.Escaper.ecapeVariable('$postId') +
        '/comments';

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
          CommentList.fromJson(data as core.Map<core.String, core.dynamic>),
    );
  }

  /// Lists comments by blog.
  ///
  /// Request parameters:
  ///
  /// [blogId] - null
  ///
  /// [endDate] - null
  ///
  /// [fetchBodies] - null
  ///
  /// [maxResults] - null
  ///
  /// [pageToken] - null
  ///
  /// [startDate] - null
  ///
  /// [status] - null
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [CommentList].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<CommentList> listByBlog(
    core.String blogId, {
    core.String endDate,
    core.bool fetchBodies,
    core.int maxResults,
    core.String pageToken,
    core.String startDate,
    core.List<core.String> status,
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (blogId == null) {
      throw core.ArgumentError('Parameter blogId is required.');
    }
    if (endDate != null) {
      _queryParams['endDate'] = [endDate];
    }
    if (fetchBodies != null) {
      _queryParams['fetchBodies'] = ['${fetchBodies}'];
    }
    if (maxResults != null) {
      _queryParams['maxResults'] = ['${maxResults}'];
    }
    if (pageToken != null) {
      _queryParams['pageToken'] = [pageToken];
    }
    if (startDate != null) {
      _queryParams['startDate'] = [startDate];
    }
    if (status != null) {
      _queryParams['status'] = status;
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v3/blogs/' + commons.Escaper.ecapeVariable('$blogId') + '/comments';

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
          CommentList.fromJson(data as core.Map<core.String, core.dynamic>),
    );
  }

  /// Marks a comment as spam by blog id, post id and comment id.
  ///
  /// Request parameters:
  ///
  /// [blogId] - null
  ///
  /// [postId] - null
  ///
  /// [commentId] - null
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Comment].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Comment> markAsSpam(
    core.String blogId,
    core.String postId,
    core.String commentId, {
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (blogId == null) {
      throw core.ArgumentError('Parameter blogId is required.');
    }
    if (postId == null) {
      throw core.ArgumentError('Parameter postId is required.');
    }
    if (commentId == null) {
      throw core.ArgumentError('Parameter commentId is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v3/blogs/' +
        commons.Escaper.ecapeVariable('$blogId') +
        '/posts/' +
        commons.Escaper.ecapeVariable('$postId') +
        '/comments/' +
        commons.Escaper.ecapeVariable('$commentId') +
        '/spam';

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
      (data) => Comment.fromJson(data as core.Map<core.String, core.dynamic>),
    );
  }

  /// Removes the content of a comment by blog id, post id and comment id.
  ///
  /// Request parameters:
  ///
  /// [blogId] - null
  ///
  /// [postId] - null
  ///
  /// [commentId] - null
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Comment].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Comment> removeContent(
    core.String blogId,
    core.String postId,
    core.String commentId, {
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (blogId == null) {
      throw core.ArgumentError('Parameter blogId is required.');
    }
    if (postId == null) {
      throw core.ArgumentError('Parameter postId is required.');
    }
    if (commentId == null) {
      throw core.ArgumentError('Parameter commentId is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v3/blogs/' +
        commons.Escaper.ecapeVariable('$blogId') +
        '/posts/' +
        commons.Escaper.ecapeVariable('$postId') +
        '/comments/' +
        commons.Escaper.ecapeVariable('$commentId') +
        '/removecontent';

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
      (data) => Comment.fromJson(data as core.Map<core.String, core.dynamic>),
    );
  }
}

class PageViewsResourceApi {
  final commons.ApiRequester _requester;

  PageViewsResourceApi(commons.ApiRequester client) : _requester = client;

  /// Gets page views by blog id.
  ///
  /// Request parameters:
  ///
  /// [blogId] - null
  ///
  /// [range] - null
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Pageviews].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Pageviews> get(
    core.String blogId, {
    core.List<core.String> range,
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (blogId == null) {
      throw core.ArgumentError('Parameter blogId is required.');
    }
    if (range != null) {
      _queryParams['range'] = range;
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url =
        'v3/blogs/' + commons.Escaper.ecapeVariable('$blogId') + '/pageviews';

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
      (data) => Pageviews.fromJson(data as core.Map<core.String, core.dynamic>),
    );
  }
}

class PagesResourceApi {
  final commons.ApiRequester _requester;

  PagesResourceApi(commons.ApiRequester client) : _requester = client;

  /// Deletes a page by blog id and page id.
  ///
  /// Request parameters:
  ///
  /// [blogId] - null
  ///
  /// [pageId] - null
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future delete(
    core.String blogId,
    core.String pageId, {
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (blogId == null) {
      throw core.ArgumentError('Parameter blogId is required.');
    }
    if (pageId == null) {
      throw core.ArgumentError('Parameter pageId is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _downloadOptions = null;

    _url = 'v3/blogs/' +
        commons.Escaper.ecapeVariable('$blogId') +
        '/pages/' +
        commons.Escaper.ecapeVariable('$pageId');

    final _response = _requester.request(
      _url,
      'DELETE',
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

  /// Gets a page by blog id and page id.
  ///
  /// Request parameters:
  ///
  /// [blogId] - null
  ///
  /// [pageId] - null
  ///
  /// [view] - null
  /// Possible string values are:
  /// - "VIEW_TYPE_UNSPECIFIED"
  /// - "READER"
  /// - "AUTHOR"
  /// - "ADMIN"
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Page].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Page> get(
    core.String blogId,
    core.String pageId, {
    core.String view,
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (blogId == null) {
      throw core.ArgumentError('Parameter blogId is required.');
    }
    if (pageId == null) {
      throw core.ArgumentError('Parameter pageId is required.');
    }
    if (view != null) {
      _queryParams['view'] = [view];
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v3/blogs/' +
        commons.Escaper.ecapeVariable('$blogId') +
        '/pages/' +
        commons.Escaper.ecapeVariable('$pageId');

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
      (data) => Page.fromJson(data as core.Map<core.String, core.dynamic>),
    );
  }

  /// Inserts a page.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [blogId] - null
  ///
  /// [isDraft] - null
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Page].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Page> insert(
    Page request,
    core.String blogId, {
    core.bool isDraft,
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (request != null) {
      _body = convert.json.encode(request.toJson());
    }
    if (blogId == null) {
      throw core.ArgumentError('Parameter blogId is required.');
    }
    if (isDraft != null) {
      _queryParams['isDraft'] = ['${isDraft}'];
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v3/blogs/' + commons.Escaper.ecapeVariable('$blogId') + '/pages';

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
      (data) => Page.fromJson(data as core.Map<core.String, core.dynamic>),
    );
  }

  /// Lists pages.
  ///
  /// Request parameters:
  ///
  /// [blogId] - null
  ///
  /// [fetchBodies] - null
  ///
  /// [maxResults] - null
  ///
  /// [pageToken] - null
  ///
  /// [status] - null
  ///
  /// [view] - null
  /// Possible string values are:
  /// - "VIEW_TYPE_UNSPECIFIED"
  /// - "READER"
  /// - "AUTHOR"
  /// - "ADMIN"
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [PageList].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<PageList> list(
    core.String blogId, {
    core.bool fetchBodies,
    core.int maxResults,
    core.String pageToken,
    core.List<core.String> status,
    core.String view,
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (blogId == null) {
      throw core.ArgumentError('Parameter blogId is required.');
    }
    if (fetchBodies != null) {
      _queryParams['fetchBodies'] = ['${fetchBodies}'];
    }
    if (maxResults != null) {
      _queryParams['maxResults'] = ['${maxResults}'];
    }
    if (pageToken != null) {
      _queryParams['pageToken'] = [pageToken];
    }
    if (status != null) {
      _queryParams['status'] = status;
    }
    if (view != null) {
      _queryParams['view'] = [view];
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v3/blogs/' + commons.Escaper.ecapeVariable('$blogId') + '/pages';

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
      (data) => PageList.fromJson(data as core.Map<core.String, core.dynamic>),
    );
  }

  /// Patches a page.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [blogId] - null
  ///
  /// [pageId] - null
  ///
  /// [publish_1] - null
  ///
  /// [revert_1] - null
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Page].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Page> patch(
    Page request,
    core.String blogId,
    core.String pageId, {
    core.bool publish_1,
    core.bool revert_1,
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (request != null) {
      _body = convert.json.encode(request.toJson());
    }
    if (blogId == null) {
      throw core.ArgumentError('Parameter blogId is required.');
    }
    if (pageId == null) {
      throw core.ArgumentError('Parameter pageId is required.');
    }
    if (publish_1 != null) {
      _queryParams['publish'] = ['${publish_1}'];
    }
    if (revert_1 != null) {
      _queryParams['revert'] = ['${revert_1}'];
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v3/blogs/' +
        commons.Escaper.ecapeVariable('$blogId') +
        '/pages/' +
        commons.Escaper.ecapeVariable('$pageId');

    final _response = _requester.request(
      _url,
      'PATCH',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then(
      (data) => Page.fromJson(data as core.Map<core.String, core.dynamic>),
    );
  }

  /// Publishes a page.
  ///
  /// Request parameters:
  ///
  /// [blogId] - null
  ///
  /// [pageId] - null
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Page].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Page> publish(
    core.String blogId,
    core.String pageId, {
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (blogId == null) {
      throw core.ArgumentError('Parameter blogId is required.');
    }
    if (pageId == null) {
      throw core.ArgumentError('Parameter pageId is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v3/blogs/' +
        commons.Escaper.ecapeVariable('$blogId') +
        '/pages/' +
        commons.Escaper.ecapeVariable('$pageId') +
        '/publish';

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
      (data) => Page.fromJson(data as core.Map<core.String, core.dynamic>),
    );
  }

  /// Reverts a published or scheduled page to draft state.
  ///
  /// Request parameters:
  ///
  /// [blogId] - null
  ///
  /// [pageId] - null
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Page].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Page> revert(
    core.String blogId,
    core.String pageId, {
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (blogId == null) {
      throw core.ArgumentError('Parameter blogId is required.');
    }
    if (pageId == null) {
      throw core.ArgumentError('Parameter pageId is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v3/blogs/' +
        commons.Escaper.ecapeVariable('$blogId') +
        '/pages/' +
        commons.Escaper.ecapeVariable('$pageId') +
        '/revert';

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
      (data) => Page.fromJson(data as core.Map<core.String, core.dynamic>),
    );
  }

  /// Updates a page by blog id and page id.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [blogId] - null
  ///
  /// [pageId] - null
  ///
  /// [publish_1] - null
  ///
  /// [revert_1] - null
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Page].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Page> update(
    Page request,
    core.String blogId,
    core.String pageId, {
    core.bool publish_1,
    core.bool revert_1,
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (request != null) {
      _body = convert.json.encode(request.toJson());
    }
    if (blogId == null) {
      throw core.ArgumentError('Parameter blogId is required.');
    }
    if (pageId == null) {
      throw core.ArgumentError('Parameter pageId is required.');
    }
    if (publish_1 != null) {
      _queryParams['publish'] = ['${publish_1}'];
    }
    if (revert_1 != null) {
      _queryParams['revert'] = ['${revert_1}'];
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v3/blogs/' +
        commons.Escaper.ecapeVariable('$blogId') +
        '/pages/' +
        commons.Escaper.ecapeVariable('$pageId');

    final _response = _requester.request(
      _url,
      'PUT',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then(
      (data) => Page.fromJson(data as core.Map<core.String, core.dynamic>),
    );
  }
}

class PostUserInfosResourceApi {
  final commons.ApiRequester _requester;

  PostUserInfosResourceApi(commons.ApiRequester client) : _requester = client;

  /// Gets one post and user info pair, by post_id and user_id.
  ///
  /// Request parameters:
  ///
  /// [userId] - null
  ///
  /// [blogId] - null
  ///
  /// [postId] - null
  ///
  /// [maxComments] - null
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [PostUserInfo].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<PostUserInfo> get(
    core.String userId,
    core.String blogId,
    core.String postId, {
    core.int maxComments,
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (userId == null) {
      throw core.ArgumentError('Parameter userId is required.');
    }
    if (blogId == null) {
      throw core.ArgumentError('Parameter blogId is required.');
    }
    if (postId == null) {
      throw core.ArgumentError('Parameter postId is required.');
    }
    if (maxComments != null) {
      _queryParams['maxComments'] = ['${maxComments}'];
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v3/users/' +
        commons.Escaper.ecapeVariable('$userId') +
        '/blogs/' +
        commons.Escaper.ecapeVariable('$blogId') +
        '/posts/' +
        commons.Escaper.ecapeVariable('$postId');

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
          PostUserInfo.fromJson(data as core.Map<core.String, core.dynamic>),
    );
  }

  /// Lists post and user info pairs.
  ///
  /// Request parameters:
  ///
  /// [userId] - null
  ///
  /// [blogId] - null
  ///
  /// [endDate] - null
  ///
  /// [fetchBodies] - null
  ///
  /// [labels] - null
  ///
  /// [maxResults] - null
  ///
  /// [orderBy] - null
  /// Possible string values are:
  /// - "ORDER_BY_UNSPECIFIED"
  /// - "PUBLISHED"
  /// - "UPDATED"
  ///
  /// [pageToken] - null
  ///
  /// [startDate] - null
  ///
  /// [status] - null
  ///
  /// [view] - null
  /// Possible string values are:
  /// - "VIEW_TYPE_UNSPECIFIED"
  /// - "READER"
  /// - "AUTHOR"
  /// - "ADMIN"
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [PostUserInfosList].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<PostUserInfosList> list(
    core.String userId,
    core.String blogId, {
    core.String endDate,
    core.bool fetchBodies,
    core.String labels,
    core.int maxResults,
    core.String orderBy,
    core.String pageToken,
    core.String startDate,
    core.List<core.String> status,
    core.String view,
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (userId == null) {
      throw core.ArgumentError('Parameter userId is required.');
    }
    if (blogId == null) {
      throw core.ArgumentError('Parameter blogId is required.');
    }
    if (endDate != null) {
      _queryParams['endDate'] = [endDate];
    }
    if (fetchBodies != null) {
      _queryParams['fetchBodies'] = ['${fetchBodies}'];
    }
    if (labels != null) {
      _queryParams['labels'] = [labels];
    }
    if (maxResults != null) {
      _queryParams['maxResults'] = ['${maxResults}'];
    }
    if (orderBy != null) {
      _queryParams['orderBy'] = [orderBy];
    }
    if (pageToken != null) {
      _queryParams['pageToken'] = [pageToken];
    }
    if (startDate != null) {
      _queryParams['startDate'] = [startDate];
    }
    if (status != null) {
      _queryParams['status'] = status;
    }
    if (view != null) {
      _queryParams['view'] = [view];
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v3/users/' +
        commons.Escaper.ecapeVariable('$userId') +
        '/blogs/' +
        commons.Escaper.ecapeVariable('$blogId') +
        '/posts';

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
      (data) => PostUserInfosList.fromJson(
          data as core.Map<core.String, core.dynamic>),
    );
  }
}

class PostsResourceApi {
  final commons.ApiRequester _requester;

  PostsResourceApi(commons.ApiRequester client) : _requester = client;

  /// Deletes a post by blog id and post id.
  ///
  /// Request parameters:
  ///
  /// [blogId] - null
  ///
  /// [postId] - null
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future delete(
    core.String blogId,
    core.String postId, {
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (blogId == null) {
      throw core.ArgumentError('Parameter blogId is required.');
    }
    if (postId == null) {
      throw core.ArgumentError('Parameter postId is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _downloadOptions = null;

    _url = 'v3/blogs/' +
        commons.Escaper.ecapeVariable('$blogId') +
        '/posts/' +
        commons.Escaper.ecapeVariable('$postId');

    final _response = _requester.request(
      _url,
      'DELETE',
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

  /// Gets a post by blog id and post id
  ///
  /// Request parameters:
  ///
  /// [blogId] - null
  ///
  /// [postId] - null
  ///
  /// [fetchBody] - null
  ///
  /// [fetchImages] - null
  ///
  /// [maxComments] - null
  ///
  /// [view] - null
  /// Possible string values are:
  /// - "VIEW_TYPE_UNSPECIFIED"
  /// - "READER"
  /// - "AUTHOR"
  /// - "ADMIN"
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Post].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Post> get(
    core.String blogId,
    core.String postId, {
    core.bool fetchBody,
    core.bool fetchImages,
    core.int maxComments,
    core.String view,
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (blogId == null) {
      throw core.ArgumentError('Parameter blogId is required.');
    }
    if (postId == null) {
      throw core.ArgumentError('Parameter postId is required.');
    }
    if (fetchBody != null) {
      _queryParams['fetchBody'] = ['${fetchBody}'];
    }
    if (fetchImages != null) {
      _queryParams['fetchImages'] = ['${fetchImages}'];
    }
    if (maxComments != null) {
      _queryParams['maxComments'] = ['${maxComments}'];
    }
    if (view != null) {
      _queryParams['view'] = [view];
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v3/blogs/' +
        commons.Escaper.ecapeVariable('$blogId') +
        '/posts/' +
        commons.Escaper.ecapeVariable('$postId');

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
      (data) => Post.fromJson(data as core.Map<core.String, core.dynamic>),
    );
  }

  /// Gets a post by path.
  ///
  /// Request parameters:
  ///
  /// [blogId] - null
  ///
  /// [path] - null
  ///
  /// [maxComments] - null
  ///
  /// [view] - null
  /// Possible string values are:
  /// - "VIEW_TYPE_UNSPECIFIED"
  /// - "READER"
  /// - "AUTHOR"
  /// - "ADMIN"
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Post].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Post> getByPath(
    core.String blogId,
    core.String path, {
    core.int maxComments,
    core.String view,
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (blogId == null) {
      throw core.ArgumentError('Parameter blogId is required.');
    }
    if (path == null) {
      throw core.ArgumentError('Parameter path is required.');
    }
    _queryParams['path'] = [path];
    if (maxComments != null) {
      _queryParams['maxComments'] = ['${maxComments}'];
    }
    if (view != null) {
      _queryParams['view'] = [view];
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v3/blogs/' +
        commons.Escaper.ecapeVariable('$blogId') +
        '/posts/bypath';

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
      (data) => Post.fromJson(data as core.Map<core.String, core.dynamic>),
    );
  }

  /// Inserts a post.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [blogId] - null
  ///
  /// [fetchBody] - null
  ///
  /// [fetchImages] - null
  ///
  /// [isDraft] - null
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Post].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Post> insert(
    Post request,
    core.String blogId, {
    core.bool fetchBody,
    core.bool fetchImages,
    core.bool isDraft,
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (request != null) {
      _body = convert.json.encode(request.toJson());
    }
    if (blogId == null) {
      throw core.ArgumentError('Parameter blogId is required.');
    }
    if (fetchBody != null) {
      _queryParams['fetchBody'] = ['${fetchBody}'];
    }
    if (fetchImages != null) {
      _queryParams['fetchImages'] = ['${fetchImages}'];
    }
    if (isDraft != null) {
      _queryParams['isDraft'] = ['${isDraft}'];
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v3/blogs/' + commons.Escaper.ecapeVariable('$blogId') + '/posts';

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
      (data) => Post.fromJson(data as core.Map<core.String, core.dynamic>),
    );
  }

  /// Lists posts.
  ///
  /// Request parameters:
  ///
  /// [blogId] - null
  ///
  /// [endDate] - null
  ///
  /// [fetchBodies] - null
  ///
  /// [fetchImages] - null
  ///
  /// [labels] - null
  ///
  /// [maxResults] - null
  ///
  /// [orderBy] - null
  /// Possible string values are:
  /// - "ORDER_BY_UNSPECIFIED"
  /// - "PUBLISHED"
  /// - "UPDATED"
  ///
  /// [pageToken] - null
  ///
  /// [startDate] - null
  ///
  /// [status] - null
  ///
  /// [view] - null
  /// Possible string values are:
  /// - "VIEW_TYPE_UNSPECIFIED"
  /// - "READER"
  /// - "AUTHOR"
  /// - "ADMIN"
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [PostList].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<PostList> list(
    core.String blogId, {
    core.String endDate,
    core.bool fetchBodies,
    core.bool fetchImages,
    core.String labels,
    core.int maxResults,
    core.String orderBy,
    core.String pageToken,
    core.String startDate,
    core.List<core.String> status,
    core.String view,
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (blogId == null) {
      throw core.ArgumentError('Parameter blogId is required.');
    }
    if (endDate != null) {
      _queryParams['endDate'] = [endDate];
    }
    if (fetchBodies != null) {
      _queryParams['fetchBodies'] = ['${fetchBodies}'];
    }
    if (fetchImages != null) {
      _queryParams['fetchImages'] = ['${fetchImages}'];
    }
    if (labels != null) {
      _queryParams['labels'] = [labels];
    }
    if (maxResults != null) {
      _queryParams['maxResults'] = ['${maxResults}'];
    }
    if (orderBy != null) {
      _queryParams['orderBy'] = [orderBy];
    }
    if (pageToken != null) {
      _queryParams['pageToken'] = [pageToken];
    }
    if (startDate != null) {
      _queryParams['startDate'] = [startDate];
    }
    if (status != null) {
      _queryParams['status'] = status;
    }
    if (view != null) {
      _queryParams['view'] = [view];
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v3/blogs/' + commons.Escaper.ecapeVariable('$blogId') + '/posts';

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
      (data) => PostList.fromJson(data as core.Map<core.String, core.dynamic>),
    );
  }

  /// Patches a post.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [blogId] - null
  ///
  /// [postId] - null
  ///
  /// [fetchBody] - null
  ///
  /// [fetchImages] - null
  ///
  /// [maxComments] - null
  ///
  /// [publish_1] - null
  ///
  /// [revert_1] - null
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Post].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Post> patch(
    Post request,
    core.String blogId,
    core.String postId, {
    core.bool fetchBody,
    core.bool fetchImages,
    core.int maxComments,
    core.bool publish_1,
    core.bool revert_1,
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (request != null) {
      _body = convert.json.encode(request.toJson());
    }
    if (blogId == null) {
      throw core.ArgumentError('Parameter blogId is required.');
    }
    if (postId == null) {
      throw core.ArgumentError('Parameter postId is required.');
    }
    if (fetchBody != null) {
      _queryParams['fetchBody'] = ['${fetchBody}'];
    }
    if (fetchImages != null) {
      _queryParams['fetchImages'] = ['${fetchImages}'];
    }
    if (maxComments != null) {
      _queryParams['maxComments'] = ['${maxComments}'];
    }
    if (publish_1 != null) {
      _queryParams['publish'] = ['${publish_1}'];
    }
    if (revert_1 != null) {
      _queryParams['revert'] = ['${revert_1}'];
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v3/blogs/' +
        commons.Escaper.ecapeVariable('$blogId') +
        '/posts/' +
        commons.Escaper.ecapeVariable('$postId');

    final _response = _requester.request(
      _url,
      'PATCH',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then(
      (data) => Post.fromJson(data as core.Map<core.String, core.dynamic>),
    );
  }

  /// Publishes a post.
  ///
  /// Request parameters:
  ///
  /// [blogId] - null
  ///
  /// [postId] - null
  ///
  /// [publishDate] - null
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Post].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Post> publish(
    core.String blogId,
    core.String postId, {
    core.String publishDate,
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (blogId == null) {
      throw core.ArgumentError('Parameter blogId is required.');
    }
    if (postId == null) {
      throw core.ArgumentError('Parameter postId is required.');
    }
    if (publishDate != null) {
      _queryParams['publishDate'] = [publishDate];
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v3/blogs/' +
        commons.Escaper.ecapeVariable('$blogId') +
        '/posts/' +
        commons.Escaper.ecapeVariable('$postId') +
        '/publish';

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
      (data) => Post.fromJson(data as core.Map<core.String, core.dynamic>),
    );
  }

  /// Reverts a published or scheduled post to draft state.
  ///
  /// Request parameters:
  ///
  /// [blogId] - null
  ///
  /// [postId] - null
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Post].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Post> revert(
    core.String blogId,
    core.String postId, {
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (blogId == null) {
      throw core.ArgumentError('Parameter blogId is required.');
    }
    if (postId == null) {
      throw core.ArgumentError('Parameter postId is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v3/blogs/' +
        commons.Escaper.ecapeVariable('$blogId') +
        '/posts/' +
        commons.Escaper.ecapeVariable('$postId') +
        '/revert';

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
      (data) => Post.fromJson(data as core.Map<core.String, core.dynamic>),
    );
  }

  /// Searches for posts matching given query terms in the specified blog.
  ///
  /// Request parameters:
  ///
  /// [blogId] - null
  ///
  /// [q] - null
  ///
  /// [fetchBodies] - null
  ///
  /// [orderBy] - null
  /// Possible string values are:
  /// - "ORDER_BY_UNSPECIFIED"
  /// - "PUBLISHED"
  /// - "UPDATED"
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [PostList].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<PostList> search(
    core.String blogId,
    core.String q, {
    core.bool fetchBodies,
    core.String orderBy,
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (blogId == null) {
      throw core.ArgumentError('Parameter blogId is required.');
    }
    if (q == null) {
      throw core.ArgumentError('Parameter q is required.');
    }
    _queryParams['q'] = [q];
    if (fetchBodies != null) {
      _queryParams['fetchBodies'] = ['${fetchBodies}'];
    }
    if (orderBy != null) {
      _queryParams['orderBy'] = [orderBy];
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v3/blogs/' +
        commons.Escaper.ecapeVariable('$blogId') +
        '/posts/search';

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
      (data) => PostList.fromJson(data as core.Map<core.String, core.dynamic>),
    );
  }

  /// Updates a post by blog id and post id.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [blogId] - null
  ///
  /// [postId] - null
  ///
  /// [fetchBody] - null
  ///
  /// [fetchImages] - null
  ///
  /// [maxComments] - null
  ///
  /// [publish_1] - null
  ///
  /// [revert_1] - null
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Post].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Post> update(
    Post request,
    core.String blogId,
    core.String postId, {
    core.bool fetchBody,
    core.bool fetchImages,
    core.int maxComments,
    core.bool publish_1,
    core.bool revert_1,
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (request != null) {
      _body = convert.json.encode(request.toJson());
    }
    if (blogId == null) {
      throw core.ArgumentError('Parameter blogId is required.');
    }
    if (postId == null) {
      throw core.ArgumentError('Parameter postId is required.');
    }
    if (fetchBody != null) {
      _queryParams['fetchBody'] = ['${fetchBody}'];
    }
    if (fetchImages != null) {
      _queryParams['fetchImages'] = ['${fetchImages}'];
    }
    if (maxComments != null) {
      _queryParams['maxComments'] = ['${maxComments}'];
    }
    if (publish_1 != null) {
      _queryParams['publish'] = ['${publish_1}'];
    }
    if (revert_1 != null) {
      _queryParams['revert'] = ['${revert_1}'];
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v3/blogs/' +
        commons.Escaper.ecapeVariable('$blogId') +
        '/posts/' +
        commons.Escaper.ecapeVariable('$postId');

    final _response = _requester.request(
      _url,
      'PUT',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then(
      (data) => Post.fromJson(data as core.Map<core.String, core.dynamic>),
    );
  }
}

class UsersResourceApi {
  final commons.ApiRequester _requester;

  UsersResourceApi(commons.ApiRequester client) : _requester = client;

  /// Gets one user by user_id.
  ///
  /// Request parameters:
  ///
  /// [userId] - null
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [User].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<User> get(
    core.String userId, {
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (userId == null) {
      throw core.ArgumentError('Parameter userId is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v3/users/' + commons.Escaper.ecapeVariable('$userId');

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
      (data) => User.fromJson(data as core.Map<core.String, core.dynamic>),
    );
  }
}

/// The locale this Blog is set to.
class BlogLocale {
  /// The country this blog's locale is set to.
  core.String country;

  /// The language this blog is authored in.
  core.String language;

  /// The language variant this blog is authored in.
  core.String variant;

  BlogLocale();

  BlogLocale.fromJson(core.Map _json) {
    if (_json.containsKey('country')) {
      country = _json['country'] as core.String;
    }
    if (_json.containsKey('language')) {
      language = _json['language'] as core.String;
    }
    if (_json.containsKey('variant')) {
      variant = _json['variant'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (country != null) {
      _json['country'] = country;
    }
    if (language != null) {
      _json['language'] = language;
    }
    if (variant != null) {
      _json['variant'] = variant;
    }
    return _json;
  }
}

/// The container of pages in this blog.
class BlogPages {
  /// The URL of the container for pages in this blog.
  core.String selfLink;

  /// The count of pages in this blog.
  core.int totalItems;

  BlogPages();

  BlogPages.fromJson(core.Map _json) {
    if (_json.containsKey('selfLink')) {
      selfLink = _json['selfLink'] as core.String;
    }
    if (_json.containsKey('totalItems')) {
      totalItems = _json['totalItems'] as core.int;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (selfLink != null) {
      _json['selfLink'] = selfLink;
    }
    if (totalItems != null) {
      _json['totalItems'] = totalItems;
    }
    return _json;
  }
}

/// The container of posts in this blog.
class BlogPosts {
  /// The List of Posts for this Blog.
  core.List<Post> items;

  /// The URL of the container for posts in this blog.
  core.String selfLink;

  /// The count of posts in this blog.
  core.int totalItems;

  BlogPosts();

  BlogPosts.fromJson(core.Map _json) {
    if (_json.containsKey('items')) {
      items = (_json['items'] as core.List)
          .map<Post>((value) =>
              Post.fromJson(value as core.Map<core.String, core.dynamic>))
          .toList();
    }
    if (_json.containsKey('selfLink')) {
      selfLink = _json['selfLink'] as core.String;
    }
    if (_json.containsKey('totalItems')) {
      totalItems = _json['totalItems'] as core.int;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (items != null) {
      _json['items'] = items.map((value) => value.toJson()).toList();
    }
    if (selfLink != null) {
      _json['selfLink'] = selfLink;
    }
    if (totalItems != null) {
      _json['totalItems'] = totalItems;
    }
    return _json;
  }
}

class Blog {
  /// The JSON custom meta-data for the Blog.
  core.String customMetaData;

  /// The description of this blog. This is displayed underneath the title.
  core.String description;

  /// The identifier for this resource.
  core.String id;

  /// The kind of this entry. Always blogger#blog.
  core.String kind;

  /// The locale this Blog is set to.
  BlogLocale locale;

  /// The name of this blog. This is displayed as the title.
  core.String name;

  /// The container of pages in this blog.
  BlogPages pages;

  /// The container of posts in this blog.
  BlogPosts posts;

  /// RFC 3339 date-time when this blog was published.
  core.String published;

  /// The API REST URL to fetch this resource from.
  core.String selfLink;

  /// The status of the blog.
  /// Possible string values are:
  /// - "LIVE"
  /// - "DELETED"
  core.String status;

  /// RFC 3339 date-time when this blog was last updated.
  core.String updated;

  /// The URL where this blog is published.
  core.String url;

  Blog();

  Blog.fromJson(core.Map _json) {
    if (_json.containsKey('customMetaData')) {
      customMetaData = _json['customMetaData'] as core.String;
    }
    if (_json.containsKey('description')) {
      description = _json['description'] as core.String;
    }
    if (_json.containsKey('id')) {
      id = _json['id'] as core.String;
    }
    if (_json.containsKey('kind')) {
      kind = _json['kind'] as core.String;
    }
    if (_json.containsKey('locale')) {
      locale = BlogLocale.fromJson(
          _json['locale'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('name')) {
      name = _json['name'] as core.String;
    }
    if (_json.containsKey('pages')) {
      pages = BlogPages.fromJson(
          _json['pages'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('posts')) {
      posts = BlogPosts.fromJson(
          _json['posts'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('published')) {
      published = _json['published'] as core.String;
    }
    if (_json.containsKey('selfLink')) {
      selfLink = _json['selfLink'] as core.String;
    }
    if (_json.containsKey('status')) {
      status = _json['status'] as core.String;
    }
    if (_json.containsKey('updated')) {
      updated = _json['updated'] as core.String;
    }
    if (_json.containsKey('url')) {
      url = _json['url'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (customMetaData != null) {
      _json['customMetaData'] = customMetaData;
    }
    if (description != null) {
      _json['description'] = description;
    }
    if (id != null) {
      _json['id'] = id;
    }
    if (kind != null) {
      _json['kind'] = kind;
    }
    if (locale != null) {
      _json['locale'] = locale.toJson();
    }
    if (name != null) {
      _json['name'] = name;
    }
    if (pages != null) {
      _json['pages'] = pages.toJson();
    }
    if (posts != null) {
      _json['posts'] = posts.toJson();
    }
    if (published != null) {
      _json['published'] = published;
    }
    if (selfLink != null) {
      _json['selfLink'] = selfLink;
    }
    if (status != null) {
      _json['status'] = status;
    }
    if (updated != null) {
      _json['updated'] = updated;
    }
    if (url != null) {
      _json['url'] = url;
    }
    return _json;
  }
}

class BlogList {
  /// Admin level list of blog per-user information.
  core.List<BlogUserInfo> blogUserInfos;

  /// The list of Blogs this user has Authorship or Admin rights over.
  core.List<Blog> items;

  /// The kind of this entity. Always blogger#blogList.
  core.String kind;

  BlogList();

  BlogList.fromJson(core.Map _json) {
    if (_json.containsKey('blogUserInfos')) {
      blogUserInfos = (_json['blogUserInfos'] as core.List)
          .map<BlogUserInfo>((value) => BlogUserInfo.fromJson(
              value as core.Map<core.String, core.dynamic>))
          .toList();
    }
    if (_json.containsKey('items')) {
      items = (_json['items'] as core.List)
          .map<Blog>((value) =>
              Blog.fromJson(value as core.Map<core.String, core.dynamic>))
          .toList();
    }
    if (_json.containsKey('kind')) {
      kind = _json['kind'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (blogUserInfos != null) {
      _json['blogUserInfos'] =
          blogUserInfos.map((value) => value.toJson()).toList();
    }
    if (items != null) {
      _json['items'] = items.map((value) => value.toJson()).toList();
    }
    if (kind != null) {
      _json['kind'] = kind;
    }
    return _json;
  }
}

class BlogPerUserInfo {
  /// ID of the Blog resource.
  core.String blogId;

  /// True if the user has Admin level access to the blog.
  core.bool hasAdminAccess;

  /// The kind of this entity. Always blogger#blogPerUserInfo.
  core.String kind;

  /// The Photo Album Key for the user when adding photos to the blog.
  core.String photosAlbumKey;

  /// Access permissions that the user has for the blog (ADMIN, AUTHOR, or
  /// READER).
  /// Possible string values are:
  /// - "VIEW_TYPE_UNSPECIFIED"
  /// - "READER"
  /// - "AUTHOR"
  /// - "ADMIN"
  core.String role;

  /// ID of the User.
  core.String userId;

  BlogPerUserInfo();

  BlogPerUserInfo.fromJson(core.Map _json) {
    if (_json.containsKey('blogId')) {
      blogId = _json['blogId'] as core.String;
    }
    if (_json.containsKey('hasAdminAccess')) {
      hasAdminAccess = _json['hasAdminAccess'] as core.bool;
    }
    if (_json.containsKey('kind')) {
      kind = _json['kind'] as core.String;
    }
    if (_json.containsKey('photosAlbumKey')) {
      photosAlbumKey = _json['photosAlbumKey'] as core.String;
    }
    if (_json.containsKey('role')) {
      role = _json['role'] as core.String;
    }
    if (_json.containsKey('userId')) {
      userId = _json['userId'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (blogId != null) {
      _json['blogId'] = blogId;
    }
    if (hasAdminAccess != null) {
      _json['hasAdminAccess'] = hasAdminAccess;
    }
    if (kind != null) {
      _json['kind'] = kind;
    }
    if (photosAlbumKey != null) {
      _json['photosAlbumKey'] = photosAlbumKey;
    }
    if (role != null) {
      _json['role'] = role;
    }
    if (userId != null) {
      _json['userId'] = userId;
    }
    return _json;
  }
}

class BlogUserInfo {
  /// The Blog resource.
  Blog blog;

  /// Information about a User for the Blog.
  BlogPerUserInfo blogUserInfo;

  /// The kind of this entity. Always blogger#blogUserInfo.
  core.String kind;

  BlogUserInfo();

  BlogUserInfo.fromJson(core.Map _json) {
    if (_json.containsKey('blog')) {
      blog =
          Blog.fromJson(_json['blog'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('blog_user_info')) {
      blogUserInfo = BlogPerUserInfo.fromJson(
          _json['blog_user_info'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('kind')) {
      kind = _json['kind'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (blog != null) {
      _json['blog'] = blog.toJson();
    }
    if (blogUserInfo != null) {
      _json['blog_user_info'] = blogUserInfo.toJson();
    }
    if (kind != null) {
      _json['kind'] = kind;
    }
    return _json;
  }
}

/// The creator's avatar.
class CommentAuthorImage {
  /// The creator's avatar URL.
  core.String url;

  CommentAuthorImage();

  CommentAuthorImage.fromJson(core.Map _json) {
    if (_json.containsKey('url')) {
      url = _json['url'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (url != null) {
      _json['url'] = url;
    }
    return _json;
  }
}

/// The author of this Comment.
class CommentAuthor {
  /// The display name.
  core.String displayName;

  /// The identifier of the creator.
  core.String id;

  /// The creator's avatar.
  CommentAuthorImage image;

  /// The URL of the creator's Profile page.
  core.String url;

  CommentAuthor();

  CommentAuthor.fromJson(core.Map _json) {
    if (_json.containsKey('displayName')) {
      displayName = _json['displayName'] as core.String;
    }
    if (_json.containsKey('id')) {
      id = _json['id'] as core.String;
    }
    if (_json.containsKey('image')) {
      image = CommentAuthorImage.fromJson(
          _json['image'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('url')) {
      url = _json['url'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (displayName != null) {
      _json['displayName'] = displayName;
    }
    if (id != null) {
      _json['id'] = id;
    }
    if (image != null) {
      _json['image'] = image.toJson();
    }
    if (url != null) {
      _json['url'] = url;
    }
    return _json;
  }
}

/// Data about the blog containing this comment.
class CommentBlog {
  /// The identifier of the blog containing this comment.
  core.String id;

  CommentBlog();

  CommentBlog.fromJson(core.Map _json) {
    if (_json.containsKey('id')) {
      id = _json['id'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (id != null) {
      _json['id'] = id;
    }
    return _json;
  }
}

/// Data about the comment this is in reply to.
class CommentInReplyTo {
  /// The identified of the parent of this comment.
  core.String id;

  CommentInReplyTo();

  CommentInReplyTo.fromJson(core.Map _json) {
    if (_json.containsKey('id')) {
      id = _json['id'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (id != null) {
      _json['id'] = id;
    }
    return _json;
  }
}

/// Data about the post containing this comment.
class CommentPost {
  /// The identifier of the post containing this comment.
  core.String id;

  CommentPost();

  CommentPost.fromJson(core.Map _json) {
    if (_json.containsKey('id')) {
      id = _json['id'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (id != null) {
      _json['id'] = id;
    }
    return _json;
  }
}

class Comment {
  /// The author of this Comment.
  CommentAuthor author;

  /// Data about the blog containing this comment.
  CommentBlog blog;

  /// The actual content of the comment. May include HTML markup.
  core.String content;

  /// The identifier for this resource.
  core.String id;

  /// Data about the comment this is in reply to.
  CommentInReplyTo inReplyTo;

  /// The kind of this entry. Always blogger#comment.
  core.String kind;

  /// Data about the post containing this comment.
  CommentPost post;

  /// RFC 3339 date-time when this comment was published.
  core.String published;

  /// The API REST URL to fetch this resource from.
  core.String selfLink;

  /// The status of the comment (only populated for admin users).
  /// Possible string values are:
  /// - "LIVE"
  /// - "EMPTIED"
  /// - "PENDING"
  /// - "SPAM"
  core.String status;

  /// RFC 3339 date-time when this comment was last updated.
  core.String updated;

  Comment();

  Comment.fromJson(core.Map _json) {
    if (_json.containsKey('author')) {
      author = CommentAuthor.fromJson(
          _json['author'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('blog')) {
      blog = CommentBlog.fromJson(
          _json['blog'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('content')) {
      content = _json['content'] as core.String;
    }
    if (_json.containsKey('id')) {
      id = _json['id'] as core.String;
    }
    if (_json.containsKey('inReplyTo')) {
      inReplyTo = CommentInReplyTo.fromJson(
          _json['inReplyTo'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('kind')) {
      kind = _json['kind'] as core.String;
    }
    if (_json.containsKey('post')) {
      post = CommentPost.fromJson(
          _json['post'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('published')) {
      published = _json['published'] as core.String;
    }
    if (_json.containsKey('selfLink')) {
      selfLink = _json['selfLink'] as core.String;
    }
    if (_json.containsKey('status')) {
      status = _json['status'] as core.String;
    }
    if (_json.containsKey('updated')) {
      updated = _json['updated'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (author != null) {
      _json['author'] = author.toJson();
    }
    if (blog != null) {
      _json['blog'] = blog.toJson();
    }
    if (content != null) {
      _json['content'] = content;
    }
    if (id != null) {
      _json['id'] = id;
    }
    if (inReplyTo != null) {
      _json['inReplyTo'] = inReplyTo.toJson();
    }
    if (kind != null) {
      _json['kind'] = kind;
    }
    if (post != null) {
      _json['post'] = post.toJson();
    }
    if (published != null) {
      _json['published'] = published;
    }
    if (selfLink != null) {
      _json['selfLink'] = selfLink;
    }
    if (status != null) {
      _json['status'] = status;
    }
    if (updated != null) {
      _json['updated'] = updated;
    }
    return _json;
  }
}

class CommentList {
  /// Etag of the response.
  core.String etag;

  /// The List of Comments for a Post.
  core.List<Comment> items;

  /// The kind of this entry. Always blogger#commentList.
  core.String kind;

  /// Pagination token to fetch the next page, if one exists.
  core.String nextPageToken;

  /// Pagination token to fetch the previous page, if one exists.
  core.String prevPageToken;

  CommentList();

  CommentList.fromJson(core.Map _json) {
    if (_json.containsKey('etag')) {
      etag = _json['etag'] as core.String;
    }
    if (_json.containsKey('items')) {
      items = (_json['items'] as core.List)
          .map<Comment>((value) =>
              Comment.fromJson(value as core.Map<core.String, core.dynamic>))
          .toList();
    }
    if (_json.containsKey('kind')) {
      kind = _json['kind'] as core.String;
    }
    if (_json.containsKey('nextPageToken')) {
      nextPageToken = _json['nextPageToken'] as core.String;
    }
    if (_json.containsKey('prevPageToken')) {
      prevPageToken = _json['prevPageToken'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (etag != null) {
      _json['etag'] = etag;
    }
    if (items != null) {
      _json['items'] = items.map((value) => value.toJson()).toList();
    }
    if (kind != null) {
      _json['kind'] = kind;
    }
    if (nextPageToken != null) {
      _json['nextPageToken'] = nextPageToken;
    }
    if (prevPageToken != null) {
      _json['prevPageToken'] = prevPageToken;
    }
    return _json;
  }
}

/// The creator's avatar.
class PageAuthorImage {
  /// The creator's avatar URL.
  core.String url;

  PageAuthorImage();

  PageAuthorImage.fromJson(core.Map _json) {
    if (_json.containsKey('url')) {
      url = _json['url'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (url != null) {
      _json['url'] = url;
    }
    return _json;
  }
}

/// The author of this Page.
class PageAuthor {
  /// The display name.
  core.String displayName;

  /// The identifier of the creator.
  core.String id;

  /// The creator's avatar.
  PageAuthorImage image;

  /// The URL of the creator's Profile page.
  core.String url;

  PageAuthor();

  PageAuthor.fromJson(core.Map _json) {
    if (_json.containsKey('displayName')) {
      displayName = _json['displayName'] as core.String;
    }
    if (_json.containsKey('id')) {
      id = _json['id'] as core.String;
    }
    if (_json.containsKey('image')) {
      image = PageAuthorImage.fromJson(
          _json['image'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('url')) {
      url = _json['url'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (displayName != null) {
      _json['displayName'] = displayName;
    }
    if (id != null) {
      _json['id'] = id;
    }
    if (image != null) {
      _json['image'] = image.toJson();
    }
    if (url != null) {
      _json['url'] = url;
    }
    return _json;
  }
}

/// Data about the blog containing this Page.
class PageBlog {
  /// The identifier of the blog containing this page.
  core.String id;

  PageBlog();

  PageBlog.fromJson(core.Map _json) {
    if (_json.containsKey('id')) {
      id = _json['id'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (id != null) {
      _json['id'] = id;
    }
    return _json;
  }
}

class Page {
  /// The author of this Page.
  PageAuthor author;

  /// Data about the blog containing this Page.
  PageBlog blog;

  /// The body content of this Page, in HTML.
  core.String content;

  /// Etag of the resource.
  core.String etag;

  /// The identifier for this resource.
  core.String id;

  /// The kind of this entity. Always blogger#page.
  core.String kind;

  /// RFC 3339 date-time when this Page was published.
  core.String published;

  /// The API REST URL to fetch this resource from.
  core.String selfLink;

  /// The status of the page for admin resources (either LIVE or DRAFT).
  /// Possible string values are:
  /// - "LIVE"
  /// - "DRAFT"
  core.String status;

  /// The title of this entity. This is the name displayed in the Admin user
  /// interface.
  core.String title;

  /// RFC 3339 date-time when this Page was last updated.
  core.String updated;

  /// The URL that this Page is displayed at.
  core.String url;

  Page();

  Page.fromJson(core.Map _json) {
    if (_json.containsKey('author')) {
      author = PageAuthor.fromJson(
          _json['author'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('blog')) {
      blog = PageBlog.fromJson(
          _json['blog'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('content')) {
      content = _json['content'] as core.String;
    }
    if (_json.containsKey('etag')) {
      etag = _json['etag'] as core.String;
    }
    if (_json.containsKey('id')) {
      id = _json['id'] as core.String;
    }
    if (_json.containsKey('kind')) {
      kind = _json['kind'] as core.String;
    }
    if (_json.containsKey('published')) {
      published = _json['published'] as core.String;
    }
    if (_json.containsKey('selfLink')) {
      selfLink = _json['selfLink'] as core.String;
    }
    if (_json.containsKey('status')) {
      status = _json['status'] as core.String;
    }
    if (_json.containsKey('title')) {
      title = _json['title'] as core.String;
    }
    if (_json.containsKey('updated')) {
      updated = _json['updated'] as core.String;
    }
    if (_json.containsKey('url')) {
      url = _json['url'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (author != null) {
      _json['author'] = author.toJson();
    }
    if (blog != null) {
      _json['blog'] = blog.toJson();
    }
    if (content != null) {
      _json['content'] = content;
    }
    if (etag != null) {
      _json['etag'] = etag;
    }
    if (id != null) {
      _json['id'] = id;
    }
    if (kind != null) {
      _json['kind'] = kind;
    }
    if (published != null) {
      _json['published'] = published;
    }
    if (selfLink != null) {
      _json['selfLink'] = selfLink;
    }
    if (status != null) {
      _json['status'] = status;
    }
    if (title != null) {
      _json['title'] = title;
    }
    if (updated != null) {
      _json['updated'] = updated;
    }
    if (url != null) {
      _json['url'] = url;
    }
    return _json;
  }
}

class PageList {
  /// Etag of the response.
  core.String etag;

  /// The list of Pages for a Blog.
  core.List<Page> items;

  /// The kind of this entity. Always blogger#pageList.
  core.String kind;

  /// Pagination token to fetch the next page, if one exists.
  core.String nextPageToken;

  PageList();

  PageList.fromJson(core.Map _json) {
    if (_json.containsKey('etag')) {
      etag = _json['etag'] as core.String;
    }
    if (_json.containsKey('items')) {
      items = (_json['items'] as core.List)
          .map<Page>((value) =>
              Page.fromJson(value as core.Map<core.String, core.dynamic>))
          .toList();
    }
    if (_json.containsKey('kind')) {
      kind = _json['kind'] as core.String;
    }
    if (_json.containsKey('nextPageToken')) {
      nextPageToken = _json['nextPageToken'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (etag != null) {
      _json['etag'] = etag;
    }
    if (items != null) {
      _json['items'] = items.map((value) => value.toJson()).toList();
    }
    if (kind != null) {
      _json['kind'] = kind;
    }
    if (nextPageToken != null) {
      _json['nextPageToken'] = nextPageToken;
    }
    return _json;
  }
}

class PageviewsCounts {
  /// Count of page views for the given time range.
  core.String count;

  /// Time range the given count applies to.
  /// Possible string values are:
  /// - "ALL_TIME"
  /// - "THIRTY_DAYS"
  /// - "SEVEN_DAYS"
  core.String timeRange;

  PageviewsCounts();

  PageviewsCounts.fromJson(core.Map _json) {
    if (_json.containsKey('count')) {
      count = _json['count'] as core.String;
    }
    if (_json.containsKey('timeRange')) {
      timeRange = _json['timeRange'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (count != null) {
      _json['count'] = count;
    }
    if (timeRange != null) {
      _json['timeRange'] = timeRange;
    }
    return _json;
  }
}

class Pageviews {
  /// Blog Id.
  core.String blogId;

  /// The container of posts in this blog.
  core.List<PageviewsCounts> counts;

  /// The kind of this entry. Always blogger#page_views.
  core.String kind;

  Pageviews();

  Pageviews.fromJson(core.Map _json) {
    if (_json.containsKey('blogId')) {
      blogId = _json['blogId'] as core.String;
    }
    if (_json.containsKey('counts')) {
      counts = (_json['counts'] as core.List)
          .map<PageviewsCounts>((value) => PageviewsCounts.fromJson(
              value as core.Map<core.String, core.dynamic>))
          .toList();
    }
    if (_json.containsKey('kind')) {
      kind = _json['kind'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (blogId != null) {
      _json['blogId'] = blogId;
    }
    if (counts != null) {
      _json['counts'] = counts.map((value) => value.toJson()).toList();
    }
    if (kind != null) {
      _json['kind'] = kind;
    }
    return _json;
  }
}

/// The creator's avatar.
class PostAuthorImage {
  /// The creator's avatar URL.
  core.String url;

  PostAuthorImage();

  PostAuthorImage.fromJson(core.Map _json) {
    if (_json.containsKey('url')) {
      url = _json['url'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (url != null) {
      _json['url'] = url;
    }
    return _json;
  }
}

/// The author of this Post.
class PostAuthor {
  /// The display name.
  core.String displayName;

  /// The identifier of the creator.
  core.String id;

  /// The creator's avatar.
  PostAuthorImage image;

  /// The URL of the creator's Profile page.
  core.String url;

  PostAuthor();

  PostAuthor.fromJson(core.Map _json) {
    if (_json.containsKey('displayName')) {
      displayName = _json['displayName'] as core.String;
    }
    if (_json.containsKey('id')) {
      id = _json['id'] as core.String;
    }
    if (_json.containsKey('image')) {
      image = PostAuthorImage.fromJson(
          _json['image'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('url')) {
      url = _json['url'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (displayName != null) {
      _json['displayName'] = displayName;
    }
    if (id != null) {
      _json['id'] = id;
    }
    if (image != null) {
      _json['image'] = image.toJson();
    }
    if (url != null) {
      _json['url'] = url;
    }
    return _json;
  }
}

/// Data about the blog containing this Post.
class PostBlog {
  /// The identifier of the Blog that contains this Post.
  core.String id;

  PostBlog();

  PostBlog.fromJson(core.Map _json) {
    if (_json.containsKey('id')) {
      id = _json['id'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (id != null) {
      _json['id'] = id;
    }
    return _json;
  }
}

class PostImages {
  core.String url;

  PostImages();

  PostImages.fromJson(core.Map _json) {
    if (_json.containsKey('url')) {
      url = _json['url'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (url != null) {
      _json['url'] = url;
    }
    return _json;
  }
}

/// The location for geotagged posts.
class PostLocation {
  /// Location's latitude.
  core.double lat;

  /// Location's longitude.
  core.double lng;

  /// Location name.
  core.String name;

  /// Location's viewport span. Can be used when rendering a map preview.
  core.String span;

  PostLocation();

  PostLocation.fromJson(core.Map _json) {
    if (_json.containsKey('lat')) {
      lat = (_json['lat'] as core.num).toDouble();
    }
    if (_json.containsKey('lng')) {
      lng = (_json['lng'] as core.num).toDouble();
    }
    if (_json.containsKey('name')) {
      name = _json['name'] as core.String;
    }
    if (_json.containsKey('span')) {
      span = _json['span'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (lat != null) {
      _json['lat'] = lat;
    }
    if (lng != null) {
      _json['lng'] = lng;
    }
    if (name != null) {
      _json['name'] = name;
    }
    if (span != null) {
      _json['span'] = span;
    }
    return _json;
  }
}

/// The container of comments on this Post.
class PostReplies {
  /// The List of Comments for this Post.
  core.List<Comment> items;

  /// The URL of the comments on this post.
  core.String selfLink;

  /// The count of comments on this post.
  core.String totalItems;

  PostReplies();

  PostReplies.fromJson(core.Map _json) {
    if (_json.containsKey('items')) {
      items = (_json['items'] as core.List)
          .map<Comment>((value) =>
              Comment.fromJson(value as core.Map<core.String, core.dynamic>))
          .toList();
    }
    if (_json.containsKey('selfLink')) {
      selfLink = _json['selfLink'] as core.String;
    }
    if (_json.containsKey('totalItems')) {
      totalItems = _json['totalItems'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (items != null) {
      _json['items'] = items.map((value) => value.toJson()).toList();
    }
    if (selfLink != null) {
      _json['selfLink'] = selfLink;
    }
    if (totalItems != null) {
      _json['totalItems'] = totalItems;
    }
    return _json;
  }
}

class Post {
  /// The author of this Post.
  PostAuthor author;

  /// Data about the blog containing this Post.
  PostBlog blog;

  /// The content of the Post. May contain HTML markup.
  core.String content;

  /// The JSON meta-data for the Post.
  core.String customMetaData;

  /// Etag of the resource.
  core.String etag;

  /// The identifier of this Post.
  core.String id;

  /// Display image for the Post.
  core.List<PostImages> images;

  /// The kind of this entity. Always blogger#post.
  core.String kind;

  /// The list of labels this Post was tagged with.
  core.List<core.String> labels;

  /// The location for geotagged posts.
  PostLocation location;

  /// RFC 3339 date-time when this Post was published.
  core.String published;

  /// Comment control and display setting for readers of this post.
  /// Possible string values are:
  /// - "ALLOW"
  /// - "DONT_ALLOW_SHOW_EXISTING"
  /// - "DONT_ALLOW_HIDE_EXISTING"
  core.String readerComments;

  /// The container of comments on this Post.
  PostReplies replies;

  /// The API REST URL to fetch this resource from.
  core.String selfLink;

  /// Status of the post. Only set for admin-level requests.
  /// Possible string values are:
  /// - "LIVE"
  /// - "DRAFT"
  /// - "SCHEDULED"
  core.String status;

  /// The title of the Post.
  core.String title;

  /// The title link URL, similar to atom's related link.
  core.String titleLink;

  /// RFC 3339 date-time when this Post was last updated.
  core.String updated;

  /// The URL where this Post is displayed.
  core.String url;

  Post();

  Post.fromJson(core.Map _json) {
    if (_json.containsKey('author')) {
      author = PostAuthor.fromJson(
          _json['author'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('blog')) {
      blog = PostBlog.fromJson(
          _json['blog'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('content')) {
      content = _json['content'] as core.String;
    }
    if (_json.containsKey('customMetaData')) {
      customMetaData = _json['customMetaData'] as core.String;
    }
    if (_json.containsKey('etag')) {
      etag = _json['etag'] as core.String;
    }
    if (_json.containsKey('id')) {
      id = _json['id'] as core.String;
    }
    if (_json.containsKey('images')) {
      images = (_json['images'] as core.List)
          .map<PostImages>((value) =>
              PostImages.fromJson(value as core.Map<core.String, core.dynamic>))
          .toList();
    }
    if (_json.containsKey('kind')) {
      kind = _json['kind'] as core.String;
    }
    if (_json.containsKey('labels')) {
      labels = (_json['labels'] as core.List)
          .map<core.String>((value) => value as core.String)
          .toList();
    }
    if (_json.containsKey('location')) {
      location = PostLocation.fromJson(
          _json['location'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('published')) {
      published = _json['published'] as core.String;
    }
    if (_json.containsKey('readerComments')) {
      readerComments = _json['readerComments'] as core.String;
    }
    if (_json.containsKey('replies')) {
      replies = PostReplies.fromJson(
          _json['replies'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('selfLink')) {
      selfLink = _json['selfLink'] as core.String;
    }
    if (_json.containsKey('status')) {
      status = _json['status'] as core.String;
    }
    if (_json.containsKey('title')) {
      title = _json['title'] as core.String;
    }
    if (_json.containsKey('titleLink')) {
      titleLink = _json['titleLink'] as core.String;
    }
    if (_json.containsKey('updated')) {
      updated = _json['updated'] as core.String;
    }
    if (_json.containsKey('url')) {
      url = _json['url'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (author != null) {
      _json['author'] = author.toJson();
    }
    if (blog != null) {
      _json['blog'] = blog.toJson();
    }
    if (content != null) {
      _json['content'] = content;
    }
    if (customMetaData != null) {
      _json['customMetaData'] = customMetaData;
    }
    if (etag != null) {
      _json['etag'] = etag;
    }
    if (id != null) {
      _json['id'] = id;
    }
    if (images != null) {
      _json['images'] = images.map((value) => value.toJson()).toList();
    }
    if (kind != null) {
      _json['kind'] = kind;
    }
    if (labels != null) {
      _json['labels'] = labels;
    }
    if (location != null) {
      _json['location'] = location.toJson();
    }
    if (published != null) {
      _json['published'] = published;
    }
    if (readerComments != null) {
      _json['readerComments'] = readerComments;
    }
    if (replies != null) {
      _json['replies'] = replies.toJson();
    }
    if (selfLink != null) {
      _json['selfLink'] = selfLink;
    }
    if (status != null) {
      _json['status'] = status;
    }
    if (title != null) {
      _json['title'] = title;
    }
    if (titleLink != null) {
      _json['titleLink'] = titleLink;
    }
    if (updated != null) {
      _json['updated'] = updated;
    }
    if (url != null) {
      _json['url'] = url;
    }
    return _json;
  }
}

class PostList {
  /// Etag of the response.
  core.String etag;

  /// The list of Posts for this Blog.
  core.List<Post> items;

  /// The kind of this entity. Always blogger#postList.
  core.String kind;

  /// Pagination token to fetch the next page, if one exists.
  core.String nextPageToken;

  /// Pagination token to fetch the previous page, if one exists.
  core.String prevPageToken;

  PostList();

  PostList.fromJson(core.Map _json) {
    if (_json.containsKey('etag')) {
      etag = _json['etag'] as core.String;
    }
    if (_json.containsKey('items')) {
      items = (_json['items'] as core.List)
          .map<Post>((value) =>
              Post.fromJson(value as core.Map<core.String, core.dynamic>))
          .toList();
    }
    if (_json.containsKey('kind')) {
      kind = _json['kind'] as core.String;
    }
    if (_json.containsKey('nextPageToken')) {
      nextPageToken = _json['nextPageToken'] as core.String;
    }
    if (_json.containsKey('prevPageToken')) {
      prevPageToken = _json['prevPageToken'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (etag != null) {
      _json['etag'] = etag;
    }
    if (items != null) {
      _json['items'] = items.map((value) => value.toJson()).toList();
    }
    if (kind != null) {
      _json['kind'] = kind;
    }
    if (nextPageToken != null) {
      _json['nextPageToken'] = nextPageToken;
    }
    if (prevPageToken != null) {
      _json['prevPageToken'] = prevPageToken;
    }
    return _json;
  }
}

class PostPerUserInfo {
  /// ID of the Blog that the post resource belongs to.
  core.String blogId;

  /// True if the user has Author level access to the post.
  core.bool hasEditAccess;

  /// The kind of this entity. Always blogger#postPerUserInfo.
  core.String kind;

  /// ID of the Post resource.
  core.String postId;

  /// ID of the User.
  core.String userId;

  PostPerUserInfo();

  PostPerUserInfo.fromJson(core.Map _json) {
    if (_json.containsKey('blogId')) {
      blogId = _json['blogId'] as core.String;
    }
    if (_json.containsKey('hasEditAccess')) {
      hasEditAccess = _json['hasEditAccess'] as core.bool;
    }
    if (_json.containsKey('kind')) {
      kind = _json['kind'] as core.String;
    }
    if (_json.containsKey('postId')) {
      postId = _json['postId'] as core.String;
    }
    if (_json.containsKey('userId')) {
      userId = _json['userId'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (blogId != null) {
      _json['blogId'] = blogId;
    }
    if (hasEditAccess != null) {
      _json['hasEditAccess'] = hasEditAccess;
    }
    if (kind != null) {
      _json['kind'] = kind;
    }
    if (postId != null) {
      _json['postId'] = postId;
    }
    if (userId != null) {
      _json['userId'] = userId;
    }
    return _json;
  }
}

class PostUserInfo {
  /// The kind of this entity. Always blogger#postUserInfo.
  core.String kind;

  /// The Post resource.
  Post post;

  /// Information about a User for the Post.
  PostPerUserInfo postUserInfo;

  PostUserInfo();

  PostUserInfo.fromJson(core.Map _json) {
    if (_json.containsKey('kind')) {
      kind = _json['kind'] as core.String;
    }
    if (_json.containsKey('post')) {
      post =
          Post.fromJson(_json['post'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('post_user_info')) {
      postUserInfo = PostPerUserInfo.fromJson(
          _json['post_user_info'] as core.Map<core.String, core.dynamic>);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (kind != null) {
      _json['kind'] = kind;
    }
    if (post != null) {
      _json['post'] = post.toJson();
    }
    if (postUserInfo != null) {
      _json['post_user_info'] = postUserInfo.toJson();
    }
    return _json;
  }
}

class PostUserInfosList {
  /// The list of Posts with User information for the post, for this Blog.
  core.List<PostUserInfo> items;

  /// The kind of this entity. Always blogger#postList.
  core.String kind;

  /// Pagination token to fetch the next page, if one exists.
  core.String nextPageToken;

  PostUserInfosList();

  PostUserInfosList.fromJson(core.Map _json) {
    if (_json.containsKey('items')) {
      items = (_json['items'] as core.List)
          .map<PostUserInfo>((value) => PostUserInfo.fromJson(
              value as core.Map<core.String, core.dynamic>))
          .toList();
    }
    if (_json.containsKey('kind')) {
      kind = _json['kind'] as core.String;
    }
    if (_json.containsKey('nextPageToken')) {
      nextPageToken = _json['nextPageToken'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (items != null) {
      _json['items'] = items.map((value) => value.toJson()).toList();
    }
    if (kind != null) {
      _json['kind'] = kind;
    }
    if (nextPageToken != null) {
      _json['nextPageToken'] = nextPageToken;
    }
    return _json;
  }
}

/// The container of blogs for this user.
class UserBlogs {
  /// The URL of the Blogs for this user.
  core.String selfLink;

  UserBlogs();

  UserBlogs.fromJson(core.Map _json) {
    if (_json.containsKey('selfLink')) {
      selfLink = _json['selfLink'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (selfLink != null) {
      _json['selfLink'] = selfLink;
    }
    return _json;
  }
}

/// This user's locale
class UserLocale {
  /// The country this blog's locale is set to.
  core.String country;

  /// The language this blog is authored in.
  core.String language;

  /// The language variant this blog is authored in.
  core.String variant;

  UserLocale();

  UserLocale.fromJson(core.Map _json) {
    if (_json.containsKey('country')) {
      country = _json['country'] as core.String;
    }
    if (_json.containsKey('language')) {
      language = _json['language'] as core.String;
    }
    if (_json.containsKey('variant')) {
      variant = _json['variant'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (country != null) {
      _json['country'] = country;
    }
    if (language != null) {
      _json['language'] = language;
    }
    if (variant != null) {
      _json['variant'] = variant;
    }
    return _json;
  }
}

class User {
  /// Profile summary information.
  core.String about;

  /// The container of blogs for this user.
  UserBlogs blogs;

  /// The timestamp of when this profile was created, in seconds since epoch.
  core.String created;

  /// The display name.
  core.String displayName;

  /// The identifier for this User.
  core.String id;

  /// The kind of this entity. Always blogger#user.
  core.String kind;

  /// This user's locale
  UserLocale locale;

  /// The API REST URL to fetch this resource from.
  core.String selfLink;

  /// The user's profile page.
  core.String url;

  User();

  User.fromJson(core.Map _json) {
    if (_json.containsKey('about')) {
      about = _json['about'] as core.String;
    }
    if (_json.containsKey('blogs')) {
      blogs = UserBlogs.fromJson(
          _json['blogs'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('created')) {
      created = _json['created'] as core.String;
    }
    if (_json.containsKey('displayName')) {
      displayName = _json['displayName'] as core.String;
    }
    if (_json.containsKey('id')) {
      id = _json['id'] as core.String;
    }
    if (_json.containsKey('kind')) {
      kind = _json['kind'] as core.String;
    }
    if (_json.containsKey('locale')) {
      locale = UserLocale.fromJson(
          _json['locale'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('selfLink')) {
      selfLink = _json['selfLink'] as core.String;
    }
    if (_json.containsKey('url')) {
      url = _json['url'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (about != null) {
      _json['about'] = about;
    }
    if (blogs != null) {
      _json['blogs'] = blogs.toJson();
    }
    if (created != null) {
      _json['created'] = created;
    }
    if (displayName != null) {
      _json['displayName'] = displayName;
    }
    if (id != null) {
      _json['id'] = id;
    }
    if (kind != null) {
      _json['kind'] = kind;
    }
    if (locale != null) {
      _json['locale'] = locale.toJson();
    }
    if (selfLink != null) {
      _json['selfLink'] = selfLink;
    }
    if (url != null) {
      _json['url'] = url;
    }
    return _json;
  }
}
