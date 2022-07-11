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

/// Blogger API - v3
///
/// The Blogger API provides access to posts, comments and pages of a Blogger
/// blog.
///
/// For more information, see
/// <https://developers.google.com/blogger/docs/3.0/getting_started>
///
/// Create an instance of [BloggerApi] to access these resources:
///
/// - [BlogUserInfosResource]
/// - [BlogsResource]
/// - [CommentsResource]
/// - [PageViewsResource]
/// - [PagesResource]
/// - [PostUserInfosResource]
/// - [PostsResource]
/// - [UsersResource]
library blogger.v3;

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

  BlogUserInfosResource get blogUserInfos => BlogUserInfosResource(_requester);
  BlogsResource get blogs => BlogsResource(_requester);
  CommentsResource get comments => CommentsResource(_requester);
  PageViewsResource get pageViews => PageViewsResource(_requester);
  PagesResource get pages => PagesResource(_requester);
  PostUserInfosResource get postUserInfos => PostUserInfosResource(_requester);
  PostsResource get posts => PostsResource(_requester);
  UsersResource get users => UsersResource(_requester);

  BloggerApi(http.Client client,
      {core.String rootUrl = 'https://blogger.googleapis.com/',
      core.String servicePath = ''})
      : _requester =
            commons.ApiRequester(client, rootUrl, servicePath, requestHeaders);
}

class BlogUserInfosResource {
  final commons.ApiRequester _requester;

  BlogUserInfosResource(commons.ApiRequester client) : _requester = client;

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
    core.int? maxPosts,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (maxPosts != null) 'maxPosts': ['${maxPosts}'],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v3/users/' +
        commons.escapeVariable('$userId') +
        '/blogs/' +
        commons.escapeVariable('$blogId');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return BlogUserInfo.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class BlogsResource {
  final commons.ApiRequester _requester;

  BlogsResource(commons.ApiRequester client) : _requester = client;

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
    core.int? maxPosts,
    core.String? view,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (maxPosts != null) 'maxPosts': ['${maxPosts}'],
      if (view != null) 'view': [view],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v3/blogs/' + commons.escapeVariable('$blogId');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return Blog.fromJson(_response as core.Map<core.String, core.dynamic>);
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
    core.String? view,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      'url': [url],
      if (view != null) 'view': [view],
      if ($fields != null) 'fields': [$fields],
    };

    const _url = 'v3/blogs/byurl';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return Blog.fromJson(_response as core.Map<core.String, core.dynamic>);
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
    core.bool? fetchUserInfo,
    core.List<core.String>? role,
    core.List<core.String>? status,
    core.String? view,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (fetchUserInfo != null) 'fetchUserInfo': ['${fetchUserInfo}'],
      if (role != null) 'role': role,
      if (status != null) 'status': status,
      if (view != null) 'view': [view],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v3/users/' + commons.escapeVariable('$userId') + '/blogs';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return BlogList.fromJson(_response as core.Map<core.String, core.dynamic>);
  }
}

class CommentsResource {
  final commons.ApiRequester _requester;

  CommentsResource(commons.ApiRequester client) : _requester = client;

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
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v3/blogs/' +
        commons.escapeVariable('$blogId') +
        '/posts/' +
        commons.escapeVariable('$postId') +
        '/comments/' +
        commons.escapeVariable('$commentId') +
        '/approve';

    final _response = await _requester.request(
      _url,
      'POST',
      queryParams: _queryParams,
    );
    return Comment.fromJson(_response as core.Map<core.String, core.dynamic>);
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
  async.Future<void> delete(
    core.String blogId,
    core.String postId,
    core.String commentId, {
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v3/blogs/' +
        commons.escapeVariable('$blogId') +
        '/posts/' +
        commons.escapeVariable('$postId') +
        '/comments/' +
        commons.escapeVariable('$commentId');

    await _requester.request(
      _url,
      'DELETE',
      queryParams: _queryParams,
      downloadOptions: null,
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
    core.String? view,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (view != null) 'view': [view],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v3/blogs/' +
        commons.escapeVariable('$blogId') +
        '/posts/' +
        commons.escapeVariable('$postId') +
        '/comments/' +
        commons.escapeVariable('$commentId');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return Comment.fromJson(_response as core.Map<core.String, core.dynamic>);
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
    core.String? endDate,
    core.bool? fetchBodies,
    core.int? maxResults,
    core.String? pageToken,
    core.String? startDate,
    core.String? status,
    core.String? view,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (endDate != null) 'endDate': [endDate],
      if (fetchBodies != null) 'fetchBodies': ['${fetchBodies}'],
      if (maxResults != null) 'maxResults': ['${maxResults}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if (startDate != null) 'startDate': [startDate],
      if (status != null) 'status': [status],
      if (view != null) 'view': [view],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v3/blogs/' +
        commons.escapeVariable('$blogId') +
        '/posts/' +
        commons.escapeVariable('$postId') +
        '/comments';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return CommentList.fromJson(
        _response as core.Map<core.String, core.dynamic>);
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
    core.String? endDate,
    core.bool? fetchBodies,
    core.int? maxResults,
    core.String? pageToken,
    core.String? startDate,
    core.List<core.String>? status,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (endDate != null) 'endDate': [endDate],
      if (fetchBodies != null) 'fetchBodies': ['${fetchBodies}'],
      if (maxResults != null) 'maxResults': ['${maxResults}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if (startDate != null) 'startDate': [startDate],
      if (status != null) 'status': status,
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v3/blogs/' + commons.escapeVariable('$blogId') + '/comments';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return CommentList.fromJson(
        _response as core.Map<core.String, core.dynamic>);
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
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v3/blogs/' +
        commons.escapeVariable('$blogId') +
        '/posts/' +
        commons.escapeVariable('$postId') +
        '/comments/' +
        commons.escapeVariable('$commentId') +
        '/spam';

    final _response = await _requester.request(
      _url,
      'POST',
      queryParams: _queryParams,
    );
    return Comment.fromJson(_response as core.Map<core.String, core.dynamic>);
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
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v3/blogs/' +
        commons.escapeVariable('$blogId') +
        '/posts/' +
        commons.escapeVariable('$postId') +
        '/comments/' +
        commons.escapeVariable('$commentId') +
        '/removecontent';

    final _response = await _requester.request(
      _url,
      'POST',
      queryParams: _queryParams,
    );
    return Comment.fromJson(_response as core.Map<core.String, core.dynamic>);
  }
}

class PageViewsResource {
  final commons.ApiRequester _requester;

  PageViewsResource(commons.ApiRequester client) : _requester = client;

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
    core.List<core.String>? range,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (range != null) 'range': range,
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v3/blogs/' + commons.escapeVariable('$blogId') + '/pageviews';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return Pageviews.fromJson(_response as core.Map<core.String, core.dynamic>);
  }
}

class PagesResource {
  final commons.ApiRequester _requester;

  PagesResource(commons.ApiRequester client) : _requester = client;

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
  async.Future<void> delete(
    core.String blogId,
    core.String pageId, {
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v3/blogs/' +
        commons.escapeVariable('$blogId') +
        '/pages/' +
        commons.escapeVariable('$pageId');

    await _requester.request(
      _url,
      'DELETE',
      queryParams: _queryParams,
      downloadOptions: null,
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
    core.String? view,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (view != null) 'view': [view],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v3/blogs/' +
        commons.escapeVariable('$blogId') +
        '/pages/' +
        commons.escapeVariable('$pageId');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return Page.fromJson(_response as core.Map<core.String, core.dynamic>);
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
    core.bool? isDraft,
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if (isDraft != null) 'isDraft': ['${isDraft}'],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v3/blogs/' + commons.escapeVariable('$blogId') + '/pages';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return Page.fromJson(_response as core.Map<core.String, core.dynamic>);
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
    core.bool? fetchBodies,
    core.int? maxResults,
    core.String? pageToken,
    core.List<core.String>? status,
    core.String? view,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (fetchBodies != null) 'fetchBodies': ['${fetchBodies}'],
      if (maxResults != null) 'maxResults': ['${maxResults}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if (status != null) 'status': status,
      if (view != null) 'view': [view],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v3/blogs/' + commons.escapeVariable('$blogId') + '/pages';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return PageList.fromJson(_response as core.Map<core.String, core.dynamic>);
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
    core.bool? publish_1,
    core.bool? revert_1,
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if (publish_1 != null) 'publish': ['${publish_1}'],
      if (revert_1 != null) 'revert': ['${revert_1}'],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v3/blogs/' +
        commons.escapeVariable('$blogId') +
        '/pages/' +
        commons.escapeVariable('$pageId');

    final _response = await _requester.request(
      _url,
      'PATCH',
      body: _body,
      queryParams: _queryParams,
    );
    return Page.fromJson(_response as core.Map<core.String, core.dynamic>);
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
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v3/blogs/' +
        commons.escapeVariable('$blogId') +
        '/pages/' +
        commons.escapeVariable('$pageId') +
        '/publish';

    final _response = await _requester.request(
      _url,
      'POST',
      queryParams: _queryParams,
    );
    return Page.fromJson(_response as core.Map<core.String, core.dynamic>);
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
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v3/blogs/' +
        commons.escapeVariable('$blogId') +
        '/pages/' +
        commons.escapeVariable('$pageId') +
        '/revert';

    final _response = await _requester.request(
      _url,
      'POST',
      queryParams: _queryParams,
    );
    return Page.fromJson(_response as core.Map<core.String, core.dynamic>);
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
    core.bool? publish_1,
    core.bool? revert_1,
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if (publish_1 != null) 'publish': ['${publish_1}'],
      if (revert_1 != null) 'revert': ['${revert_1}'],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v3/blogs/' +
        commons.escapeVariable('$blogId') +
        '/pages/' +
        commons.escapeVariable('$pageId');

    final _response = await _requester.request(
      _url,
      'PUT',
      body: _body,
      queryParams: _queryParams,
    );
    return Page.fromJson(_response as core.Map<core.String, core.dynamic>);
  }
}

class PostUserInfosResource {
  final commons.ApiRequester _requester;

  PostUserInfosResource(commons.ApiRequester client) : _requester = client;

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
    core.int? maxComments,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (maxComments != null) 'maxComments': ['${maxComments}'],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v3/users/' +
        commons.escapeVariable('$userId') +
        '/blogs/' +
        commons.escapeVariable('$blogId') +
        '/posts/' +
        commons.escapeVariable('$postId');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return PostUserInfo.fromJson(
        _response as core.Map<core.String, core.dynamic>);
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
    core.String? endDate,
    core.bool? fetchBodies,
    core.String? labels,
    core.int? maxResults,
    core.String? orderBy,
    core.String? pageToken,
    core.String? startDate,
    core.List<core.String>? status,
    core.String? view,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (endDate != null) 'endDate': [endDate],
      if (fetchBodies != null) 'fetchBodies': ['${fetchBodies}'],
      if (labels != null) 'labels': [labels],
      if (maxResults != null) 'maxResults': ['${maxResults}'],
      if (orderBy != null) 'orderBy': [orderBy],
      if (pageToken != null) 'pageToken': [pageToken],
      if (startDate != null) 'startDate': [startDate],
      if (status != null) 'status': status,
      if (view != null) 'view': [view],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v3/users/' +
        commons.escapeVariable('$userId') +
        '/blogs/' +
        commons.escapeVariable('$blogId') +
        '/posts';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return PostUserInfosList.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class PostsResource {
  final commons.ApiRequester _requester;

  PostsResource(commons.ApiRequester client) : _requester = client;

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
  async.Future<void> delete(
    core.String blogId,
    core.String postId, {
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v3/blogs/' +
        commons.escapeVariable('$blogId') +
        '/posts/' +
        commons.escapeVariable('$postId');

    await _requester.request(
      _url,
      'DELETE',
      queryParams: _queryParams,
      downloadOptions: null,
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
    core.bool? fetchBody,
    core.bool? fetchImages,
    core.int? maxComments,
    core.String? view,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (fetchBody != null) 'fetchBody': ['${fetchBody}'],
      if (fetchImages != null) 'fetchImages': ['${fetchImages}'],
      if (maxComments != null) 'maxComments': ['${maxComments}'],
      if (view != null) 'view': [view],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v3/blogs/' +
        commons.escapeVariable('$blogId') +
        '/posts/' +
        commons.escapeVariable('$postId');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return Post.fromJson(_response as core.Map<core.String, core.dynamic>);
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
    core.int? maxComments,
    core.String? view,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      'path': [path],
      if (maxComments != null) 'maxComments': ['${maxComments}'],
      if (view != null) 'view': [view],
      if ($fields != null) 'fields': [$fields],
    };

    final _url =
        'v3/blogs/' + commons.escapeVariable('$blogId') + '/posts/bypath';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return Post.fromJson(_response as core.Map<core.String, core.dynamic>);
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
    core.bool? fetchBody,
    core.bool? fetchImages,
    core.bool? isDraft,
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if (fetchBody != null) 'fetchBody': ['${fetchBody}'],
      if (fetchImages != null) 'fetchImages': ['${fetchImages}'],
      if (isDraft != null) 'isDraft': ['${isDraft}'],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v3/blogs/' + commons.escapeVariable('$blogId') + '/posts';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return Post.fromJson(_response as core.Map<core.String, core.dynamic>);
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
    core.String? endDate,
    core.bool? fetchBodies,
    core.bool? fetchImages,
    core.String? labels,
    core.int? maxResults,
    core.String? orderBy,
    core.String? pageToken,
    core.String? startDate,
    core.List<core.String>? status,
    core.String? view,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (endDate != null) 'endDate': [endDate],
      if (fetchBodies != null) 'fetchBodies': ['${fetchBodies}'],
      if (fetchImages != null) 'fetchImages': ['${fetchImages}'],
      if (labels != null) 'labels': [labels],
      if (maxResults != null) 'maxResults': ['${maxResults}'],
      if (orderBy != null) 'orderBy': [orderBy],
      if (pageToken != null) 'pageToken': [pageToken],
      if (startDate != null) 'startDate': [startDate],
      if (status != null) 'status': status,
      if (view != null) 'view': [view],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v3/blogs/' + commons.escapeVariable('$blogId') + '/posts';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return PostList.fromJson(_response as core.Map<core.String, core.dynamic>);
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
    core.bool? fetchBody,
    core.bool? fetchImages,
    core.int? maxComments,
    core.bool? publish_1,
    core.bool? revert_1,
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if (fetchBody != null) 'fetchBody': ['${fetchBody}'],
      if (fetchImages != null) 'fetchImages': ['${fetchImages}'],
      if (maxComments != null) 'maxComments': ['${maxComments}'],
      if (publish_1 != null) 'publish': ['${publish_1}'],
      if (revert_1 != null) 'revert': ['${revert_1}'],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v3/blogs/' +
        commons.escapeVariable('$blogId') +
        '/posts/' +
        commons.escapeVariable('$postId');

    final _response = await _requester.request(
      _url,
      'PATCH',
      body: _body,
      queryParams: _queryParams,
    );
    return Post.fromJson(_response as core.Map<core.String, core.dynamic>);
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
    core.String? publishDate,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (publishDate != null) 'publishDate': [publishDate],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v3/blogs/' +
        commons.escapeVariable('$blogId') +
        '/posts/' +
        commons.escapeVariable('$postId') +
        '/publish';

    final _response = await _requester.request(
      _url,
      'POST',
      queryParams: _queryParams,
    );
    return Post.fromJson(_response as core.Map<core.String, core.dynamic>);
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
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v3/blogs/' +
        commons.escapeVariable('$blogId') +
        '/posts/' +
        commons.escapeVariable('$postId') +
        '/revert';

    final _response = await _requester.request(
      _url,
      'POST',
      queryParams: _queryParams,
    );
    return Post.fromJson(_response as core.Map<core.String, core.dynamic>);
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
    core.bool? fetchBodies,
    core.String? orderBy,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      'q': [q],
      if (fetchBodies != null) 'fetchBodies': ['${fetchBodies}'],
      if (orderBy != null) 'orderBy': [orderBy],
      if ($fields != null) 'fields': [$fields],
    };

    final _url =
        'v3/blogs/' + commons.escapeVariable('$blogId') + '/posts/search';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return PostList.fromJson(_response as core.Map<core.String, core.dynamic>);
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
    core.bool? fetchBody,
    core.bool? fetchImages,
    core.int? maxComments,
    core.bool? publish_1,
    core.bool? revert_1,
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if (fetchBody != null) 'fetchBody': ['${fetchBody}'],
      if (fetchImages != null) 'fetchImages': ['${fetchImages}'],
      if (maxComments != null) 'maxComments': ['${maxComments}'],
      if (publish_1 != null) 'publish': ['${publish_1}'],
      if (revert_1 != null) 'revert': ['${revert_1}'],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v3/blogs/' +
        commons.escapeVariable('$blogId') +
        '/posts/' +
        commons.escapeVariable('$postId');

    final _response = await _requester.request(
      _url,
      'PUT',
      body: _body,
      queryParams: _queryParams,
    );
    return Post.fromJson(_response as core.Map<core.String, core.dynamic>);
  }
}

class UsersResource {
  final commons.ApiRequester _requester;

  UsersResource(commons.ApiRequester client) : _requester = client;

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
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v3/users/' + commons.escapeVariable('$userId');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return User.fromJson(_response as core.Map<core.String, core.dynamic>);
  }
}

/// The locale this Blog is set to.
class BlogLocale {
  /// The country this blog's locale is set to.
  core.String? country;

  /// The language this blog is authored in.
  core.String? language;

  /// The language variant this blog is authored in.
  core.String? variant;

  BlogLocale({
    this.country,
    this.language,
    this.variant,
  });

  BlogLocale.fromJson(core.Map _json)
      : this(
          country: _json.containsKey('country')
              ? _json['country'] as core.String
              : null,
          language: _json.containsKey('language')
              ? _json['language'] as core.String
              : null,
          variant: _json.containsKey('variant')
              ? _json['variant'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (country != null) 'country': country!,
        if (language != null) 'language': language!,
        if (variant != null) 'variant': variant!,
      };
}

/// The container of pages in this blog.
class BlogPages {
  /// The URL of the container for pages in this blog.
  core.String? selfLink;

  /// The count of pages in this blog.
  core.int? totalItems;

  BlogPages({
    this.selfLink,
    this.totalItems,
  });

  BlogPages.fromJson(core.Map _json)
      : this(
          selfLink: _json.containsKey('selfLink')
              ? _json['selfLink'] as core.String
              : null,
          totalItems: _json.containsKey('totalItems')
              ? _json['totalItems'] as core.int
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (selfLink != null) 'selfLink': selfLink!,
        if (totalItems != null) 'totalItems': totalItems!,
      };
}

/// The container of posts in this blog.
class BlogPosts {
  /// The List of Posts for this Blog.
  core.List<Post>? items;

  /// The URL of the container for posts in this blog.
  core.String? selfLink;

  /// The count of posts in this blog.
  core.int? totalItems;

  BlogPosts({
    this.items,
    this.selfLink,
    this.totalItems,
  });

  BlogPosts.fromJson(core.Map _json)
      : this(
          items: _json.containsKey('items')
              ? (_json['items'] as core.List)
                  .map((value) => Post.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          selfLink: _json.containsKey('selfLink')
              ? _json['selfLink'] as core.String
              : null,
          totalItems: _json.containsKey('totalItems')
              ? _json['totalItems'] as core.int
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (items != null) 'items': items!,
        if (selfLink != null) 'selfLink': selfLink!,
        if (totalItems != null) 'totalItems': totalItems!,
      };
}

class Blog {
  /// The JSON custom meta-data for the Blog.
  core.String? customMetaData;

  /// The description of this blog.
  ///
  /// This is displayed underneath the title.
  core.String? description;

  /// The identifier for this resource.
  core.String? id;

  /// The kind of this entry.
  ///
  /// Always blogger#blog.
  core.String? kind;

  /// The locale this Blog is set to.
  BlogLocale? locale;

  /// The name of this blog.
  ///
  /// This is displayed as the title.
  core.String? name;

  /// The container of pages in this blog.
  BlogPages? pages;

  /// The container of posts in this blog.
  BlogPosts? posts;

  /// RFC 3339 date-time when this blog was published.
  core.String? published;

  /// The API REST URL to fetch this resource from.
  core.String? selfLink;

  /// The status of the blog.
  /// Possible string values are:
  /// - "LIVE"
  /// - "DELETED"
  core.String? status;

  /// RFC 3339 date-time when this blog was last updated.
  core.String? updated;

  /// The URL where this blog is published.
  core.String? url;

  Blog({
    this.customMetaData,
    this.description,
    this.id,
    this.kind,
    this.locale,
    this.name,
    this.pages,
    this.posts,
    this.published,
    this.selfLink,
    this.status,
    this.updated,
    this.url,
  });

  Blog.fromJson(core.Map _json)
      : this(
          customMetaData: _json.containsKey('customMetaData')
              ? _json['customMetaData'] as core.String
              : null,
          description: _json.containsKey('description')
              ? _json['description'] as core.String
              : null,
          id: _json.containsKey('id') ? _json['id'] as core.String : null,
          kind: _json.containsKey('kind') ? _json['kind'] as core.String : null,
          locale: _json.containsKey('locale')
              ? BlogLocale.fromJson(
                  _json['locale'] as core.Map<core.String, core.dynamic>)
              : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          pages: _json.containsKey('pages')
              ? BlogPages.fromJson(
                  _json['pages'] as core.Map<core.String, core.dynamic>)
              : null,
          posts: _json.containsKey('posts')
              ? BlogPosts.fromJson(
                  _json['posts'] as core.Map<core.String, core.dynamic>)
              : null,
          published: _json.containsKey('published')
              ? _json['published'] as core.String
              : null,
          selfLink: _json.containsKey('selfLink')
              ? _json['selfLink'] as core.String
              : null,
          status: _json.containsKey('status')
              ? _json['status'] as core.String
              : null,
          updated: _json.containsKey('updated')
              ? _json['updated'] as core.String
              : null,
          url: _json.containsKey('url') ? _json['url'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (customMetaData != null) 'customMetaData': customMetaData!,
        if (description != null) 'description': description!,
        if (id != null) 'id': id!,
        if (kind != null) 'kind': kind!,
        if (locale != null) 'locale': locale!,
        if (name != null) 'name': name!,
        if (pages != null) 'pages': pages!,
        if (posts != null) 'posts': posts!,
        if (published != null) 'published': published!,
        if (selfLink != null) 'selfLink': selfLink!,
        if (status != null) 'status': status!,
        if (updated != null) 'updated': updated!,
        if (url != null) 'url': url!,
      };
}

class BlogList {
  /// Admin level list of blog per-user information.
  core.List<BlogUserInfo>? blogUserInfos;

  /// The list of Blogs this user has Authorship or Admin rights over.
  core.List<Blog>? items;

  /// The kind of this entity.
  ///
  /// Always blogger#blogList.
  core.String? kind;

  BlogList({
    this.blogUserInfos,
    this.items,
    this.kind,
  });

  BlogList.fromJson(core.Map _json)
      : this(
          blogUserInfos: _json.containsKey('blogUserInfos')
              ? (_json['blogUserInfos'] as core.List)
                  .map((value) => BlogUserInfo.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          items: _json.containsKey('items')
              ? (_json['items'] as core.List)
                  .map((value) => Blog.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          kind: _json.containsKey('kind') ? _json['kind'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (blogUserInfos != null) 'blogUserInfos': blogUserInfos!,
        if (items != null) 'items': items!,
        if (kind != null) 'kind': kind!,
      };
}

class BlogPerUserInfo {
  /// ID of the Blog resource.
  core.String? blogId;

  /// True if the user has Admin level access to the blog.
  core.bool? hasAdminAccess;

  /// The kind of this entity.
  ///
  /// Always blogger#blogPerUserInfo.
  core.String? kind;

  /// The Photo Album Key for the user when adding photos to the blog.
  core.String? photosAlbumKey;

  /// Access permissions that the user has for the blog (ADMIN, AUTHOR, or
  /// READER).
  /// Possible string values are:
  /// - "VIEW_TYPE_UNSPECIFIED"
  /// - "READER"
  /// - "AUTHOR"
  /// - "ADMIN"
  core.String? role;

  /// ID of the User.
  core.String? userId;

  BlogPerUserInfo({
    this.blogId,
    this.hasAdminAccess,
    this.kind,
    this.photosAlbumKey,
    this.role,
    this.userId,
  });

  BlogPerUserInfo.fromJson(core.Map _json)
      : this(
          blogId: _json.containsKey('blogId')
              ? _json['blogId'] as core.String
              : null,
          hasAdminAccess: _json.containsKey('hasAdminAccess')
              ? _json['hasAdminAccess'] as core.bool
              : null,
          kind: _json.containsKey('kind') ? _json['kind'] as core.String : null,
          photosAlbumKey: _json.containsKey('photosAlbumKey')
              ? _json['photosAlbumKey'] as core.String
              : null,
          role: _json.containsKey('role') ? _json['role'] as core.String : null,
          userId: _json.containsKey('userId')
              ? _json['userId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (blogId != null) 'blogId': blogId!,
        if (hasAdminAccess != null) 'hasAdminAccess': hasAdminAccess!,
        if (kind != null) 'kind': kind!,
        if (photosAlbumKey != null) 'photosAlbumKey': photosAlbumKey!,
        if (role != null) 'role': role!,
        if (userId != null) 'userId': userId!,
      };
}

class BlogUserInfo {
  /// The Blog resource.
  Blog? blog;

  /// Information about a User for the Blog.
  BlogPerUserInfo? blogUserInfo;

  /// The kind of this entity.
  ///
  /// Always blogger#blogUserInfo.
  core.String? kind;

  BlogUserInfo({
    this.blog,
    this.blogUserInfo,
    this.kind,
  });

  BlogUserInfo.fromJson(core.Map _json)
      : this(
          blog: _json.containsKey('blog')
              ? Blog.fromJson(
                  _json['blog'] as core.Map<core.String, core.dynamic>)
              : null,
          blogUserInfo: _json.containsKey('blog_user_info')
              ? BlogPerUserInfo.fromJson(_json['blog_user_info']
                  as core.Map<core.String, core.dynamic>)
              : null,
          kind: _json.containsKey('kind') ? _json['kind'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (blog != null) 'blog': blog!,
        if (blogUserInfo != null) 'blog_user_info': blogUserInfo!,
        if (kind != null) 'kind': kind!,
      };
}

/// The creator's avatar.
class CommentAuthorImage {
  /// The creator's avatar URL.
  core.String? url;

  CommentAuthorImage({
    this.url,
  });

  CommentAuthorImage.fromJson(core.Map _json)
      : this(
          url: _json.containsKey('url') ? _json['url'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (url != null) 'url': url!,
      };
}

/// The author of this Comment.
class CommentAuthor {
  /// The display name.
  core.String? displayName;

  /// The identifier of the creator.
  core.String? id;

  /// The creator's avatar.
  CommentAuthorImage? image;

  /// The URL of the creator's Profile page.
  core.String? url;

  CommentAuthor({
    this.displayName,
    this.id,
    this.image,
    this.url,
  });

  CommentAuthor.fromJson(core.Map _json)
      : this(
          displayName: _json.containsKey('displayName')
              ? _json['displayName'] as core.String
              : null,
          id: _json.containsKey('id') ? _json['id'] as core.String : null,
          image: _json.containsKey('image')
              ? CommentAuthorImage.fromJson(
                  _json['image'] as core.Map<core.String, core.dynamic>)
              : null,
          url: _json.containsKey('url') ? _json['url'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (displayName != null) 'displayName': displayName!,
        if (id != null) 'id': id!,
        if (image != null) 'image': image!,
        if (url != null) 'url': url!,
      };
}

/// Data about the blog containing this comment.
class CommentBlog {
  /// The identifier of the blog containing this comment.
  core.String? id;

  CommentBlog({
    this.id,
  });

  CommentBlog.fromJson(core.Map _json)
      : this(
          id: _json.containsKey('id') ? _json['id'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (id != null) 'id': id!,
      };
}

/// Data about the comment this is in reply to.
class CommentInReplyTo {
  /// The identified of the parent of this comment.
  core.String? id;

  CommentInReplyTo({
    this.id,
  });

  CommentInReplyTo.fromJson(core.Map _json)
      : this(
          id: _json.containsKey('id') ? _json['id'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (id != null) 'id': id!,
      };
}

/// Data about the post containing this comment.
class CommentPost {
  /// The identifier of the post containing this comment.
  core.String? id;

  CommentPost({
    this.id,
  });

  CommentPost.fromJson(core.Map _json)
      : this(
          id: _json.containsKey('id') ? _json['id'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (id != null) 'id': id!,
      };
}

class Comment {
  /// The author of this Comment.
  CommentAuthor? author;

  /// Data about the blog containing this comment.
  CommentBlog? blog;

  /// The actual content of the comment.
  ///
  /// May include HTML markup.
  core.String? content;

  /// The identifier for this resource.
  core.String? id;

  /// Data about the comment this is in reply to.
  CommentInReplyTo? inReplyTo;

  /// The kind of this entry.
  ///
  /// Always blogger#comment.
  core.String? kind;

  /// Data about the post containing this comment.
  CommentPost? post;

  /// RFC 3339 date-time when this comment was published.
  core.String? published;

  /// The API REST URL to fetch this resource from.
  core.String? selfLink;

  /// The status of the comment (only populated for admin users).
  /// Possible string values are:
  /// - "LIVE"
  /// - "EMPTIED"
  /// - "PENDING"
  /// - "SPAM"
  core.String? status;

  /// RFC 3339 date-time when this comment was last updated.
  core.String? updated;

  Comment({
    this.author,
    this.blog,
    this.content,
    this.id,
    this.inReplyTo,
    this.kind,
    this.post,
    this.published,
    this.selfLink,
    this.status,
    this.updated,
  });

  Comment.fromJson(core.Map _json)
      : this(
          author: _json.containsKey('author')
              ? CommentAuthor.fromJson(
                  _json['author'] as core.Map<core.String, core.dynamic>)
              : null,
          blog: _json.containsKey('blog')
              ? CommentBlog.fromJson(
                  _json['blog'] as core.Map<core.String, core.dynamic>)
              : null,
          content: _json.containsKey('content')
              ? _json['content'] as core.String
              : null,
          id: _json.containsKey('id') ? _json['id'] as core.String : null,
          inReplyTo: _json.containsKey('inReplyTo')
              ? CommentInReplyTo.fromJson(
                  _json['inReplyTo'] as core.Map<core.String, core.dynamic>)
              : null,
          kind: _json.containsKey('kind') ? _json['kind'] as core.String : null,
          post: _json.containsKey('post')
              ? CommentPost.fromJson(
                  _json['post'] as core.Map<core.String, core.dynamic>)
              : null,
          published: _json.containsKey('published')
              ? _json['published'] as core.String
              : null,
          selfLink: _json.containsKey('selfLink')
              ? _json['selfLink'] as core.String
              : null,
          status: _json.containsKey('status')
              ? _json['status'] as core.String
              : null,
          updated: _json.containsKey('updated')
              ? _json['updated'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (author != null) 'author': author!,
        if (blog != null) 'blog': blog!,
        if (content != null) 'content': content!,
        if (id != null) 'id': id!,
        if (inReplyTo != null) 'inReplyTo': inReplyTo!,
        if (kind != null) 'kind': kind!,
        if (post != null) 'post': post!,
        if (published != null) 'published': published!,
        if (selfLink != null) 'selfLink': selfLink!,
        if (status != null) 'status': status!,
        if (updated != null) 'updated': updated!,
      };
}

class CommentList {
  /// Etag of the response.
  core.String? etag;

  /// The List of Comments for a Post.
  core.List<Comment>? items;

  /// The kind of this entry.
  ///
  /// Always blogger#commentList.
  core.String? kind;

  /// Pagination token to fetch the next page, if one exists.
  core.String? nextPageToken;

  /// Pagination token to fetch the previous page, if one exists.
  core.String? prevPageToken;

  CommentList({
    this.etag,
    this.items,
    this.kind,
    this.nextPageToken,
    this.prevPageToken,
  });

  CommentList.fromJson(core.Map _json)
      : this(
          etag: _json.containsKey('etag') ? _json['etag'] as core.String : null,
          items: _json.containsKey('items')
              ? (_json['items'] as core.List)
                  .map((value) => Comment.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          kind: _json.containsKey('kind') ? _json['kind'] as core.String : null,
          nextPageToken: _json.containsKey('nextPageToken')
              ? _json['nextPageToken'] as core.String
              : null,
          prevPageToken: _json.containsKey('prevPageToken')
              ? _json['prevPageToken'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (etag != null) 'etag': etag!,
        if (items != null) 'items': items!,
        if (kind != null) 'kind': kind!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (prevPageToken != null) 'prevPageToken': prevPageToken!,
      };
}

/// The creator's avatar.
class PageAuthorImage {
  /// The creator's avatar URL.
  core.String? url;

  PageAuthorImage({
    this.url,
  });

  PageAuthorImage.fromJson(core.Map _json)
      : this(
          url: _json.containsKey('url') ? _json['url'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (url != null) 'url': url!,
      };
}

/// The author of this Page.
class PageAuthor {
  /// The display name.
  core.String? displayName;

  /// The identifier of the creator.
  core.String? id;

  /// The creator's avatar.
  PageAuthorImage? image;

  /// The URL of the creator's Profile page.
  core.String? url;

  PageAuthor({
    this.displayName,
    this.id,
    this.image,
    this.url,
  });

  PageAuthor.fromJson(core.Map _json)
      : this(
          displayName: _json.containsKey('displayName')
              ? _json['displayName'] as core.String
              : null,
          id: _json.containsKey('id') ? _json['id'] as core.String : null,
          image: _json.containsKey('image')
              ? PageAuthorImage.fromJson(
                  _json['image'] as core.Map<core.String, core.dynamic>)
              : null,
          url: _json.containsKey('url') ? _json['url'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (displayName != null) 'displayName': displayName!,
        if (id != null) 'id': id!,
        if (image != null) 'image': image!,
        if (url != null) 'url': url!,
      };
}

/// Data about the blog containing this Page.
class PageBlog {
  /// The identifier of the blog containing this page.
  core.String? id;

  PageBlog({
    this.id,
  });

  PageBlog.fromJson(core.Map _json)
      : this(
          id: _json.containsKey('id') ? _json['id'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (id != null) 'id': id!,
      };
}

class Page {
  /// The author of this Page.
  PageAuthor? author;

  /// Data about the blog containing this Page.
  PageBlog? blog;

  /// The body content of this Page, in HTML.
  core.String? content;

  /// Etag of the resource.
  core.String? etag;

  /// The identifier for this resource.
  core.String? id;

  /// The kind of this entity.
  ///
  /// Always blogger#page.
  core.String? kind;

  /// RFC 3339 date-time when this Page was published.
  core.String? published;

  /// The API REST URL to fetch this resource from.
  core.String? selfLink;

  /// The status of the page for admin resources (either LIVE or DRAFT).
  /// Possible string values are:
  /// - "LIVE"
  /// - "DRAFT"
  /// - "SOFT_TRASHED"
  core.String? status;

  /// The title of this entity.
  ///
  /// This is the name displayed in the Admin user interface.
  core.String? title;

  /// RFC 3339 date-time when this Page was trashed.
  core.String? trashed;

  /// RFC 3339 date-time when this Page was last updated.
  core.String? updated;

  /// The URL that this Page is displayed at.
  core.String? url;

  Page({
    this.author,
    this.blog,
    this.content,
    this.etag,
    this.id,
    this.kind,
    this.published,
    this.selfLink,
    this.status,
    this.title,
    this.trashed,
    this.updated,
    this.url,
  });

  Page.fromJson(core.Map _json)
      : this(
          author: _json.containsKey('author')
              ? PageAuthor.fromJson(
                  _json['author'] as core.Map<core.String, core.dynamic>)
              : null,
          blog: _json.containsKey('blog')
              ? PageBlog.fromJson(
                  _json['blog'] as core.Map<core.String, core.dynamic>)
              : null,
          content: _json.containsKey('content')
              ? _json['content'] as core.String
              : null,
          etag: _json.containsKey('etag') ? _json['etag'] as core.String : null,
          id: _json.containsKey('id') ? _json['id'] as core.String : null,
          kind: _json.containsKey('kind') ? _json['kind'] as core.String : null,
          published: _json.containsKey('published')
              ? _json['published'] as core.String
              : null,
          selfLink: _json.containsKey('selfLink')
              ? _json['selfLink'] as core.String
              : null,
          status: _json.containsKey('status')
              ? _json['status'] as core.String
              : null,
          title:
              _json.containsKey('title') ? _json['title'] as core.String : null,
          trashed: _json.containsKey('trashed')
              ? _json['trashed'] as core.String
              : null,
          updated: _json.containsKey('updated')
              ? _json['updated'] as core.String
              : null,
          url: _json.containsKey('url') ? _json['url'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (author != null) 'author': author!,
        if (blog != null) 'blog': blog!,
        if (content != null) 'content': content!,
        if (etag != null) 'etag': etag!,
        if (id != null) 'id': id!,
        if (kind != null) 'kind': kind!,
        if (published != null) 'published': published!,
        if (selfLink != null) 'selfLink': selfLink!,
        if (status != null) 'status': status!,
        if (title != null) 'title': title!,
        if (trashed != null) 'trashed': trashed!,
        if (updated != null) 'updated': updated!,
        if (url != null) 'url': url!,
      };
}

class PageList {
  /// Etag of the response.
  core.String? etag;

  /// The list of Pages for a Blog.
  core.List<Page>? items;

  /// The kind of this entity.
  ///
  /// Always blogger#pageList.
  core.String? kind;

  /// Pagination token to fetch the next page, if one exists.
  core.String? nextPageToken;

  PageList({
    this.etag,
    this.items,
    this.kind,
    this.nextPageToken,
  });

  PageList.fromJson(core.Map _json)
      : this(
          etag: _json.containsKey('etag') ? _json['etag'] as core.String : null,
          items: _json.containsKey('items')
              ? (_json['items'] as core.List)
                  .map((value) => Page.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          kind: _json.containsKey('kind') ? _json['kind'] as core.String : null,
          nextPageToken: _json.containsKey('nextPageToken')
              ? _json['nextPageToken'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (etag != null) 'etag': etag!,
        if (items != null) 'items': items!,
        if (kind != null) 'kind': kind!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
      };
}

class PageviewsCounts {
  /// Count of page views for the given time range.
  core.String? count;

  /// Time range the given count applies to.
  /// Possible string values are:
  /// - "ALL_TIME"
  /// - "THIRTY_DAYS"
  /// - "SEVEN_DAYS"
  core.String? timeRange;

  PageviewsCounts({
    this.count,
    this.timeRange,
  });

  PageviewsCounts.fromJson(core.Map _json)
      : this(
          count:
              _json.containsKey('count') ? _json['count'] as core.String : null,
          timeRange: _json.containsKey('timeRange')
              ? _json['timeRange'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (count != null) 'count': count!,
        if (timeRange != null) 'timeRange': timeRange!,
      };
}

class Pageviews {
  /// Blog Id.
  core.String? blogId;

  /// The container of posts in this blog.
  core.List<PageviewsCounts>? counts;

  /// The kind of this entry.
  ///
  /// Always blogger#page_views.
  core.String? kind;

  Pageviews({
    this.blogId,
    this.counts,
    this.kind,
  });

  Pageviews.fromJson(core.Map _json)
      : this(
          blogId: _json.containsKey('blogId')
              ? _json['blogId'] as core.String
              : null,
          counts: _json.containsKey('counts')
              ? (_json['counts'] as core.List)
                  .map((value) => PageviewsCounts.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          kind: _json.containsKey('kind') ? _json['kind'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (blogId != null) 'blogId': blogId!,
        if (counts != null) 'counts': counts!,
        if (kind != null) 'kind': kind!,
      };
}

/// The creator's avatar.
class PostAuthorImage {
  /// The creator's avatar URL.
  core.String? url;

  PostAuthorImage({
    this.url,
  });

  PostAuthorImage.fromJson(core.Map _json)
      : this(
          url: _json.containsKey('url') ? _json['url'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (url != null) 'url': url!,
      };
}

/// The author of this Post.
class PostAuthor {
  /// The display name.
  core.String? displayName;

  /// The identifier of the creator.
  core.String? id;

  /// The creator's avatar.
  PostAuthorImage? image;

  /// The URL of the creator's Profile page.
  core.String? url;

  PostAuthor({
    this.displayName,
    this.id,
    this.image,
    this.url,
  });

  PostAuthor.fromJson(core.Map _json)
      : this(
          displayName: _json.containsKey('displayName')
              ? _json['displayName'] as core.String
              : null,
          id: _json.containsKey('id') ? _json['id'] as core.String : null,
          image: _json.containsKey('image')
              ? PostAuthorImage.fromJson(
                  _json['image'] as core.Map<core.String, core.dynamic>)
              : null,
          url: _json.containsKey('url') ? _json['url'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (displayName != null) 'displayName': displayName!,
        if (id != null) 'id': id!,
        if (image != null) 'image': image!,
        if (url != null) 'url': url!,
      };
}

/// Data about the blog containing this Post.
class PostBlog {
  /// The identifier of the Blog that contains this Post.
  core.String? id;

  PostBlog({
    this.id,
  });

  PostBlog.fromJson(core.Map _json)
      : this(
          id: _json.containsKey('id') ? _json['id'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (id != null) 'id': id!,
      };
}

class PostImages {
  core.String? url;

  PostImages({
    this.url,
  });

  PostImages.fromJson(core.Map _json)
      : this(
          url: _json.containsKey('url') ? _json['url'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (url != null) 'url': url!,
      };
}

/// The location for geotagged posts.
class PostLocation {
  /// Location's latitude.
  core.double? lat;

  /// Location's longitude.
  core.double? lng;

  /// Location name.
  core.String? name;

  /// Location's viewport span.
  ///
  /// Can be used when rendering a map preview.
  core.String? span;

  PostLocation({
    this.lat,
    this.lng,
    this.name,
    this.span,
  });

  PostLocation.fromJson(core.Map _json)
      : this(
          lat: _json.containsKey('lat')
              ? (_json['lat'] as core.num).toDouble()
              : null,
          lng: _json.containsKey('lng')
              ? (_json['lng'] as core.num).toDouble()
              : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          span: _json.containsKey('span') ? _json['span'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (lat != null) 'lat': lat!,
        if (lng != null) 'lng': lng!,
        if (name != null) 'name': name!,
        if (span != null) 'span': span!,
      };
}

/// The container of comments on this Post.
class PostReplies {
  /// The List of Comments for this Post.
  core.List<Comment>? items;

  /// The URL of the comments on this post.
  core.String? selfLink;

  /// The count of comments on this post.
  core.String? totalItems;

  PostReplies({
    this.items,
    this.selfLink,
    this.totalItems,
  });

  PostReplies.fromJson(core.Map _json)
      : this(
          items: _json.containsKey('items')
              ? (_json['items'] as core.List)
                  .map((value) => Comment.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          selfLink: _json.containsKey('selfLink')
              ? _json['selfLink'] as core.String
              : null,
          totalItems: _json.containsKey('totalItems')
              ? _json['totalItems'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (items != null) 'items': items!,
        if (selfLink != null) 'selfLink': selfLink!,
        if (totalItems != null) 'totalItems': totalItems!,
      };
}

class Post {
  /// The author of this Post.
  PostAuthor? author;

  /// Data about the blog containing this Post.
  PostBlog? blog;

  /// The content of the Post.
  ///
  /// May contain HTML markup.
  core.String? content;

  /// The JSON meta-data for the Post.
  core.String? customMetaData;

  /// Etag of the resource.
  core.String? etag;

  /// The identifier of this Post.
  core.String? id;

  /// Display image for the Post.
  core.List<PostImages>? images;

  /// The kind of this entity.
  ///
  /// Always blogger#post.
  core.String? kind;

  /// The list of labels this Post was tagged with.
  core.List<core.String>? labels;

  /// The location for geotagged posts.
  PostLocation? location;

  /// RFC 3339 date-time when this Post was published.
  core.String? published;

  /// Comment control and display setting for readers of this post.
  /// Possible string values are:
  /// - "ALLOW"
  /// - "DONT_ALLOW_SHOW_EXISTING"
  /// - "DONT_ALLOW_HIDE_EXISTING"
  core.String? readerComments;

  /// The container of comments on this Post.
  PostReplies? replies;

  /// The API REST URL to fetch this resource from.
  core.String? selfLink;

  /// Status of the post.
  ///
  /// Only set for admin-level requests.
  /// Possible string values are:
  /// - "LIVE"
  /// - "DRAFT"
  /// - "SCHEDULED"
  /// - "SOFT_TRASHED"
  core.String? status;

  /// The title of the Post.
  core.String? title;

  /// The title link URL, similar to atom's related link.
  core.String? titleLink;

  /// RFC 3339 date-time when this Post was last trashed.
  core.String? trashed;

  /// RFC 3339 date-time when this Post was last updated.
  core.String? updated;

  /// The URL where this Post is displayed.
  core.String? url;

  Post({
    this.author,
    this.blog,
    this.content,
    this.customMetaData,
    this.etag,
    this.id,
    this.images,
    this.kind,
    this.labels,
    this.location,
    this.published,
    this.readerComments,
    this.replies,
    this.selfLink,
    this.status,
    this.title,
    this.titleLink,
    this.trashed,
    this.updated,
    this.url,
  });

  Post.fromJson(core.Map _json)
      : this(
          author: _json.containsKey('author')
              ? PostAuthor.fromJson(
                  _json['author'] as core.Map<core.String, core.dynamic>)
              : null,
          blog: _json.containsKey('blog')
              ? PostBlog.fromJson(
                  _json['blog'] as core.Map<core.String, core.dynamic>)
              : null,
          content: _json.containsKey('content')
              ? _json['content'] as core.String
              : null,
          customMetaData: _json.containsKey('customMetaData')
              ? _json['customMetaData'] as core.String
              : null,
          etag: _json.containsKey('etag') ? _json['etag'] as core.String : null,
          id: _json.containsKey('id') ? _json['id'] as core.String : null,
          images: _json.containsKey('images')
              ? (_json['images'] as core.List)
                  .map((value) => PostImages.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          kind: _json.containsKey('kind') ? _json['kind'] as core.String : null,
          labels: _json.containsKey('labels')
              ? (_json['labels'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          location: _json.containsKey('location')
              ? PostLocation.fromJson(
                  _json['location'] as core.Map<core.String, core.dynamic>)
              : null,
          published: _json.containsKey('published')
              ? _json['published'] as core.String
              : null,
          readerComments: _json.containsKey('readerComments')
              ? _json['readerComments'] as core.String
              : null,
          replies: _json.containsKey('replies')
              ? PostReplies.fromJson(
                  _json['replies'] as core.Map<core.String, core.dynamic>)
              : null,
          selfLink: _json.containsKey('selfLink')
              ? _json['selfLink'] as core.String
              : null,
          status: _json.containsKey('status')
              ? _json['status'] as core.String
              : null,
          title:
              _json.containsKey('title') ? _json['title'] as core.String : null,
          titleLink: _json.containsKey('titleLink')
              ? _json['titleLink'] as core.String
              : null,
          trashed: _json.containsKey('trashed')
              ? _json['trashed'] as core.String
              : null,
          updated: _json.containsKey('updated')
              ? _json['updated'] as core.String
              : null,
          url: _json.containsKey('url') ? _json['url'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (author != null) 'author': author!,
        if (blog != null) 'blog': blog!,
        if (content != null) 'content': content!,
        if (customMetaData != null) 'customMetaData': customMetaData!,
        if (etag != null) 'etag': etag!,
        if (id != null) 'id': id!,
        if (images != null) 'images': images!,
        if (kind != null) 'kind': kind!,
        if (labels != null) 'labels': labels!,
        if (location != null) 'location': location!,
        if (published != null) 'published': published!,
        if (readerComments != null) 'readerComments': readerComments!,
        if (replies != null) 'replies': replies!,
        if (selfLink != null) 'selfLink': selfLink!,
        if (status != null) 'status': status!,
        if (title != null) 'title': title!,
        if (titleLink != null) 'titleLink': titleLink!,
        if (trashed != null) 'trashed': trashed!,
        if (updated != null) 'updated': updated!,
        if (url != null) 'url': url!,
      };
}

class PostList {
  /// Etag of the response.
  core.String? etag;

  /// The list of Posts for this Blog.
  core.List<Post>? items;

  /// The kind of this entity.
  ///
  /// Always blogger#postList.
  core.String? kind;

  /// Pagination token to fetch the next page, if one exists.
  core.String? nextPageToken;

  /// Pagination token to fetch the previous page, if one exists.
  core.String? prevPageToken;

  PostList({
    this.etag,
    this.items,
    this.kind,
    this.nextPageToken,
    this.prevPageToken,
  });

  PostList.fromJson(core.Map _json)
      : this(
          etag: _json.containsKey('etag') ? _json['etag'] as core.String : null,
          items: _json.containsKey('items')
              ? (_json['items'] as core.List)
                  .map((value) => Post.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          kind: _json.containsKey('kind') ? _json['kind'] as core.String : null,
          nextPageToken: _json.containsKey('nextPageToken')
              ? _json['nextPageToken'] as core.String
              : null,
          prevPageToken: _json.containsKey('prevPageToken')
              ? _json['prevPageToken'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (etag != null) 'etag': etag!,
        if (items != null) 'items': items!,
        if (kind != null) 'kind': kind!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (prevPageToken != null) 'prevPageToken': prevPageToken!,
      };
}

class PostPerUserInfo {
  /// ID of the Blog that the post resource belongs to.
  core.String? blogId;

  /// True if the user has Author level access to the post.
  core.bool? hasEditAccess;

  /// The kind of this entity.
  ///
  /// Always blogger#postPerUserInfo.
  core.String? kind;

  /// ID of the Post resource.
  core.String? postId;

  /// ID of the User.
  core.String? userId;

  PostPerUserInfo({
    this.blogId,
    this.hasEditAccess,
    this.kind,
    this.postId,
    this.userId,
  });

  PostPerUserInfo.fromJson(core.Map _json)
      : this(
          blogId: _json.containsKey('blogId')
              ? _json['blogId'] as core.String
              : null,
          hasEditAccess: _json.containsKey('hasEditAccess')
              ? _json['hasEditAccess'] as core.bool
              : null,
          kind: _json.containsKey('kind') ? _json['kind'] as core.String : null,
          postId: _json.containsKey('postId')
              ? _json['postId'] as core.String
              : null,
          userId: _json.containsKey('userId')
              ? _json['userId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (blogId != null) 'blogId': blogId!,
        if (hasEditAccess != null) 'hasEditAccess': hasEditAccess!,
        if (kind != null) 'kind': kind!,
        if (postId != null) 'postId': postId!,
        if (userId != null) 'userId': userId!,
      };
}

class PostUserInfo {
  /// The kind of this entity.
  ///
  /// Always blogger#postUserInfo.
  core.String? kind;

  /// The Post resource.
  Post? post;

  /// Information about a User for the Post.
  PostPerUserInfo? postUserInfo;

  PostUserInfo({
    this.kind,
    this.post,
    this.postUserInfo,
  });

  PostUserInfo.fromJson(core.Map _json)
      : this(
          kind: _json.containsKey('kind') ? _json['kind'] as core.String : null,
          post: _json.containsKey('post')
              ? Post.fromJson(
                  _json['post'] as core.Map<core.String, core.dynamic>)
              : null,
          postUserInfo: _json.containsKey('post_user_info')
              ? PostPerUserInfo.fromJson(_json['post_user_info']
                  as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (kind != null) 'kind': kind!,
        if (post != null) 'post': post!,
        if (postUserInfo != null) 'post_user_info': postUserInfo!,
      };
}

class PostUserInfosList {
  /// The list of Posts with User information for the post, for this Blog.
  core.List<PostUserInfo>? items;

  /// The kind of this entity.
  ///
  /// Always blogger#postList.
  core.String? kind;

  /// Pagination token to fetch the next page, if one exists.
  core.String? nextPageToken;

  PostUserInfosList({
    this.items,
    this.kind,
    this.nextPageToken,
  });

  PostUserInfosList.fromJson(core.Map _json)
      : this(
          items: _json.containsKey('items')
              ? (_json['items'] as core.List)
                  .map((value) => PostUserInfo.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          kind: _json.containsKey('kind') ? _json['kind'] as core.String : null,
          nextPageToken: _json.containsKey('nextPageToken')
              ? _json['nextPageToken'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (items != null) 'items': items!,
        if (kind != null) 'kind': kind!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
      };
}

/// The container of blogs for this user.
class UserBlogs {
  /// The URL of the Blogs for this user.
  core.String? selfLink;

  UserBlogs({
    this.selfLink,
  });

  UserBlogs.fromJson(core.Map _json)
      : this(
          selfLink: _json.containsKey('selfLink')
              ? _json['selfLink'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (selfLink != null) 'selfLink': selfLink!,
      };
}

/// This user's locale
class UserLocale {
  /// The country this blog's locale is set to.
  core.String? country;

  /// The language this blog is authored in.
  core.String? language;

  /// The language variant this blog is authored in.
  core.String? variant;

  UserLocale({
    this.country,
    this.language,
    this.variant,
  });

  UserLocale.fromJson(core.Map _json)
      : this(
          country: _json.containsKey('country')
              ? _json['country'] as core.String
              : null,
          language: _json.containsKey('language')
              ? _json['language'] as core.String
              : null,
          variant: _json.containsKey('variant')
              ? _json['variant'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (country != null) 'country': country!,
        if (language != null) 'language': language!,
        if (variant != null) 'variant': variant!,
      };
}

class User {
  /// Profile summary information.
  core.String? about;

  /// The container of blogs for this user.
  UserBlogs? blogs;

  /// The timestamp of when this profile was created, in seconds since epoch.
  core.String? created;

  /// The display name.
  core.String? displayName;

  /// The identifier for this User.
  core.String? id;

  /// The kind of this entity.
  ///
  /// Always blogger#user.
  core.String? kind;

  /// This user's locale
  UserLocale? locale;

  /// The API REST URL to fetch this resource from.
  core.String? selfLink;

  /// The user's profile page.
  core.String? url;

  User({
    this.about,
    this.blogs,
    this.created,
    this.displayName,
    this.id,
    this.kind,
    this.locale,
    this.selfLink,
    this.url,
  });

  User.fromJson(core.Map _json)
      : this(
          about:
              _json.containsKey('about') ? _json['about'] as core.String : null,
          blogs: _json.containsKey('blogs')
              ? UserBlogs.fromJson(
                  _json['blogs'] as core.Map<core.String, core.dynamic>)
              : null,
          created: _json.containsKey('created')
              ? _json['created'] as core.String
              : null,
          displayName: _json.containsKey('displayName')
              ? _json['displayName'] as core.String
              : null,
          id: _json.containsKey('id') ? _json['id'] as core.String : null,
          kind: _json.containsKey('kind') ? _json['kind'] as core.String : null,
          locale: _json.containsKey('locale')
              ? UserLocale.fromJson(
                  _json['locale'] as core.Map<core.String, core.dynamic>)
              : null,
          selfLink: _json.containsKey('selfLink')
              ? _json['selfLink'] as core.String
              : null,
          url: _json.containsKey('url') ? _json['url'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (about != null) 'about': about!,
        if (blogs != null) 'blogs': blogs!,
        if (created != null) 'created': created!,
        if (displayName != null) 'displayName': displayName!,
        if (id != null) 'id': id!,
        if (kind != null) 'kind': kind!,
        if (locale != null) 'locale': locale!,
        if (selfLink != null) 'selfLink': selfLink!,
        if (url != null) 'url': url!,
      };
}
