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
library;

import 'dart:async' as async;
import 'dart:convert' as convert;
import 'dart:core' as core;

import 'package:_discoveryapis_commons/_discoveryapis_commons.dart' as commons;
import 'package:http/http.dart' as http;

import '../shared.dart';
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

  BloggerApi(
    http.Client client, {
    core.String rootUrl = 'https://blogger.googleapis.com/',
    core.String servicePath = '',
  }) : _requester = commons.ApiRequester(
         client,
         rootUrl,
         servicePath,
         requestHeaders,
       );
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
    final queryParams_ = <core.String, core.List<core.String>>{
      if (maxPosts != null) 'maxPosts': ['${maxPosts}'],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v3/users/' +
        commons.escapeVariable('$userId') +
        '/blogs/' +
        commons.escapeVariable('$blogId');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return BlogUserInfo.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
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
    final queryParams_ = <core.String, core.List<core.String>>{
      if (maxPosts != null) 'maxPosts': ['${maxPosts}'],
      if (view != null) 'view': [view],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v3/blogs/' + commons.escapeVariable('$blogId');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return Blog.fromJson(response_ as core.Map<core.String, core.dynamic>);
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
    final queryParams_ = <core.String, core.List<core.String>>{
      'url': [url],
      if (view != null) 'view': [view],
      if ($fields != null) 'fields': [$fields],
    };

    const url_ = 'v3/blogs/byurl';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return Blog.fromJson(response_ as core.Map<core.String, core.dynamic>);
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
    final queryParams_ = <core.String, core.List<core.String>>{
      if (fetchUserInfo != null) 'fetchUserInfo': ['${fetchUserInfo}'],
      if (role != null) 'role': role,
      if (status != null) 'status': status,
      if (view != null) 'view': [view],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v3/users/' + commons.escapeVariable('$userId') + '/blogs';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return BlogList.fromJson(response_ as core.Map<core.String, core.dynamic>);
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
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v3/blogs/' +
        commons.escapeVariable('$blogId') +
        '/posts/' +
        commons.escapeVariable('$postId') +
        '/comments/' +
        commons.escapeVariable('$commentId') +
        '/approve';

    final response_ = await _requester.request(
      url_,
      'POST',
      queryParams: queryParams_,
    );
    return Comment.fromJson(response_ as core.Map<core.String, core.dynamic>);
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
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v3/blogs/' +
        commons.escapeVariable('$blogId') +
        '/posts/' +
        commons.escapeVariable('$postId') +
        '/comments/' +
        commons.escapeVariable('$commentId');

    await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
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
    final queryParams_ = <core.String, core.List<core.String>>{
      if (view != null) 'view': [view],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v3/blogs/' +
        commons.escapeVariable('$blogId') +
        '/posts/' +
        commons.escapeVariable('$postId') +
        '/comments/' +
        commons.escapeVariable('$commentId');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return Comment.fromJson(response_ as core.Map<core.String, core.dynamic>);
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
    final queryParams_ = <core.String, core.List<core.String>>{
      if (endDate != null) 'endDate': [endDate],
      if (fetchBodies != null) 'fetchBodies': ['${fetchBodies}'],
      if (maxResults != null) 'maxResults': ['${maxResults}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if (startDate != null) 'startDate': [startDate],
      if (status != null) 'status': [status],
      if (view != null) 'view': [view],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v3/blogs/' +
        commons.escapeVariable('$blogId') +
        '/posts/' +
        commons.escapeVariable('$postId') +
        '/comments';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return CommentList.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
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
    core.String? endDate,
    core.bool? fetchBodies,
    core.int? maxResults,
    core.String? pageToken,
    core.String? startDate,
    core.List<core.String>? status,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (endDate != null) 'endDate': [endDate],
      if (fetchBodies != null) 'fetchBodies': ['${fetchBodies}'],
      if (maxResults != null) 'maxResults': ['${maxResults}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if (startDate != null) 'startDate': [startDate],
      if (status != null) 'status': status,
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v3/blogs/' + commons.escapeVariable('$blogId') + '/comments';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return CommentList.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
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
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v3/blogs/' +
        commons.escapeVariable('$blogId') +
        '/posts/' +
        commons.escapeVariable('$postId') +
        '/comments/' +
        commons.escapeVariable('$commentId') +
        '/spam';

    final response_ = await _requester.request(
      url_,
      'POST',
      queryParams: queryParams_,
    );
    return Comment.fromJson(response_ as core.Map<core.String, core.dynamic>);
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
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v3/blogs/' +
        commons.escapeVariable('$blogId') +
        '/posts/' +
        commons.escapeVariable('$postId') +
        '/comments/' +
        commons.escapeVariable('$commentId') +
        '/removecontent';

    final response_ = await _requester.request(
      url_,
      'POST',
      queryParams: queryParams_,
    );
    return Comment.fromJson(response_ as core.Map<core.String, core.dynamic>);
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
    final queryParams_ = <core.String, core.List<core.String>>{
      if (range != null) 'range': range,
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v3/blogs/' + commons.escapeVariable('$blogId') + '/pageviews';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return Pageviews.fromJson(response_ as core.Map<core.String, core.dynamic>);
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
  /// [useTrash] - Move to Trash if possible
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
    core.bool? useTrash,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (useTrash != null) 'useTrash': ['${useTrash}'],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v3/blogs/' +
        commons.escapeVariable('$blogId') +
        '/pages/' +
        commons.escapeVariable('$pageId');

    await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
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
    final queryParams_ = <core.String, core.List<core.String>>{
      if (view != null) 'view': [view],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v3/blogs/' +
        commons.escapeVariable('$blogId') +
        '/pages/' +
        commons.escapeVariable('$pageId');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return Page.fromJson(response_ as core.Map<core.String, core.dynamic>);
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
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (isDraft != null) 'isDraft': ['${isDraft}'],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v3/blogs/' + commons.escapeVariable('$blogId') + '/pages';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Page.fromJson(response_ as core.Map<core.String, core.dynamic>);
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
    final queryParams_ = <core.String, core.List<core.String>>{
      if (fetchBodies != null) 'fetchBodies': ['${fetchBodies}'],
      if (maxResults != null) 'maxResults': ['${maxResults}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if (status != null) 'status': status,
      if (view != null) 'view': [view],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v3/blogs/' + commons.escapeVariable('$blogId') + '/pages';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return PageList.fromJson(response_ as core.Map<core.String, core.dynamic>);
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
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (publish_1 != null) 'publish': ['${publish_1}'],
      if (revert_1 != null) 'revert': ['${revert_1}'],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v3/blogs/' +
        commons.escapeVariable('$blogId') +
        '/pages/' +
        commons.escapeVariable('$pageId');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return Page.fromJson(response_ as core.Map<core.String, core.dynamic>);
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
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v3/blogs/' +
        commons.escapeVariable('$blogId') +
        '/pages/' +
        commons.escapeVariable('$pageId') +
        '/publish';

    final response_ = await _requester.request(
      url_,
      'POST',
      queryParams: queryParams_,
    );
    return Page.fromJson(response_ as core.Map<core.String, core.dynamic>);
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
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v3/blogs/' +
        commons.escapeVariable('$blogId') +
        '/pages/' +
        commons.escapeVariable('$pageId') +
        '/revert';

    final response_ = await _requester.request(
      url_,
      'POST',
      queryParams: queryParams_,
    );
    return Page.fromJson(response_ as core.Map<core.String, core.dynamic>);
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
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (publish_1 != null) 'publish': ['${publish_1}'],
      if (revert_1 != null) 'revert': ['${revert_1}'],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v3/blogs/' +
        commons.escapeVariable('$blogId') +
        '/pages/' +
        commons.escapeVariable('$pageId');

    final response_ = await _requester.request(
      url_,
      'PUT',
      body: body_,
      queryParams: queryParams_,
    );
    return Page.fromJson(response_ as core.Map<core.String, core.dynamic>);
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
    final queryParams_ = <core.String, core.List<core.String>>{
      if (maxComments != null) 'maxComments': ['${maxComments}'],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v3/users/' +
        commons.escapeVariable('$userId') +
        '/blogs/' +
        commons.escapeVariable('$blogId') +
        '/posts/' +
        commons.escapeVariable('$postId');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return PostUserInfo.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
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
    final queryParams_ = <core.String, core.List<core.String>>{
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

    final url_ =
        'v3/users/' +
        commons.escapeVariable('$userId') +
        '/blogs/' +
        commons.escapeVariable('$blogId') +
        '/posts';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return PostUserInfosList.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
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
  /// [useTrash] - Move to Trash if possible
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
    core.bool? useTrash,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (useTrash != null) 'useTrash': ['${useTrash}'],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v3/blogs/' +
        commons.escapeVariable('$blogId') +
        '/posts/' +
        commons.escapeVariable('$postId');

    await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
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
    final queryParams_ = <core.String, core.List<core.String>>{
      if (fetchBody != null) 'fetchBody': ['${fetchBody}'],
      if (fetchImages != null) 'fetchImages': ['${fetchImages}'],
      if (maxComments != null) 'maxComments': ['${maxComments}'],
      if (view != null) 'view': [view],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v3/blogs/' +
        commons.escapeVariable('$blogId') +
        '/posts/' +
        commons.escapeVariable('$postId');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return Post.fromJson(response_ as core.Map<core.String, core.dynamic>);
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
    final queryParams_ = <core.String, core.List<core.String>>{
      'path': [path],
      if (maxComments != null) 'maxComments': ['${maxComments}'],
      if (view != null) 'view': [view],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v3/blogs/' + commons.escapeVariable('$blogId') + '/posts/bypath';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return Post.fromJson(response_ as core.Map<core.String, core.dynamic>);
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
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (fetchBody != null) 'fetchBody': ['${fetchBody}'],
      if (fetchImages != null) 'fetchImages': ['${fetchImages}'],
      if (isDraft != null) 'isDraft': ['${isDraft}'],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v3/blogs/' + commons.escapeVariable('$blogId') + '/posts';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Post.fromJson(response_ as core.Map<core.String, core.dynamic>);
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
  /// [sortOption] - Sort direction applied to post list.
  /// Possible string values are:
  /// - "SORT_OPTION_UNSPECIFIED" : The unspecified sort option.
  /// - "DESCENDING" : The option to sort posts in descending order in time.
  /// - "ASCENDING" : The option to sort posts in ascending order in time.
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
    core.String? sortOption,
    core.String? startDate,
    core.List<core.String>? status,
    core.String? view,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (endDate != null) 'endDate': [endDate],
      if (fetchBodies != null) 'fetchBodies': ['${fetchBodies}'],
      if (fetchImages != null) 'fetchImages': ['${fetchImages}'],
      if (labels != null) 'labels': [labels],
      if (maxResults != null) 'maxResults': ['${maxResults}'],
      if (orderBy != null) 'orderBy': [orderBy],
      if (pageToken != null) 'pageToken': [pageToken],
      if (sortOption != null) 'sortOption': [sortOption],
      if (startDate != null) 'startDate': [startDate],
      if (status != null) 'status': status,
      if (view != null) 'view': [view],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v3/blogs/' + commons.escapeVariable('$blogId') + '/posts';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return PostList.fromJson(response_ as core.Map<core.String, core.dynamic>);
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
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (fetchBody != null) 'fetchBody': ['${fetchBody}'],
      if (fetchImages != null) 'fetchImages': ['${fetchImages}'],
      if (maxComments != null) 'maxComments': ['${maxComments}'],
      if (publish_1 != null) 'publish': ['${publish_1}'],
      if (revert_1 != null) 'revert': ['${revert_1}'],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v3/blogs/' +
        commons.escapeVariable('$blogId') +
        '/posts/' +
        commons.escapeVariable('$postId');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return Post.fromJson(response_ as core.Map<core.String, core.dynamic>);
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
    final queryParams_ = <core.String, core.List<core.String>>{
      if (publishDate != null) 'publishDate': [publishDate],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v3/blogs/' +
        commons.escapeVariable('$blogId') +
        '/posts/' +
        commons.escapeVariable('$postId') +
        '/publish';

    final response_ = await _requester.request(
      url_,
      'POST',
      queryParams: queryParams_,
    );
    return Post.fromJson(response_ as core.Map<core.String, core.dynamic>);
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
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v3/blogs/' +
        commons.escapeVariable('$blogId') +
        '/posts/' +
        commons.escapeVariable('$postId') +
        '/revert';

    final response_ = await _requester.request(
      url_,
      'POST',
      queryParams: queryParams_,
    );
    return Post.fromJson(response_ as core.Map<core.String, core.dynamic>);
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
    final queryParams_ = <core.String, core.List<core.String>>{
      'q': [q],
      if (fetchBodies != null) 'fetchBodies': ['${fetchBodies}'],
      if (orderBy != null) 'orderBy': [orderBy],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v3/blogs/' + commons.escapeVariable('$blogId') + '/posts/search';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return PostList.fromJson(response_ as core.Map<core.String, core.dynamic>);
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
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (fetchBody != null) 'fetchBody': ['${fetchBody}'],
      if (fetchImages != null) 'fetchImages': ['${fetchImages}'],
      if (maxComments != null) 'maxComments': ['${maxComments}'],
      if (publish_1 != null) 'publish': ['${publish_1}'],
      if (revert_1 != null) 'revert': ['${revert_1}'],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v3/blogs/' +
        commons.escapeVariable('$blogId') +
        '/posts/' +
        commons.escapeVariable('$postId');

    final response_ = await _requester.request(
      url_,
      'PUT',
      body: body_,
      queryParams: queryParams_,
    );
    return Post.fromJson(response_ as core.Map<core.String, core.dynamic>);
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
  async.Future<User> get(core.String userId, {core.String? $fields}) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v3/users/' + commons.escapeVariable('$userId');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return User.fromJson(response_ as core.Map<core.String, core.dynamic>);
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

  BlogLocale({this.country, this.language, this.variant});

  BlogLocale.fromJson(core.Map json_)
    : this(
        country: json_['country'] as core.String?,
        language: json_['language'] as core.String?,
        variant: json_['variant'] as core.String?,
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

  BlogPages({this.selfLink, this.totalItems});

  BlogPages.fromJson(core.Map json_)
    : this(
        selfLink: json_['selfLink'] as core.String?,
        totalItems: json_['totalItems'] as core.int?,
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

  BlogPosts({this.items, this.selfLink, this.totalItems});

  BlogPosts.fromJson(core.Map json_)
    : this(
        items:
            (json_['items'] as core.List?)
                ?.map(
                  (value) => Post.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        selfLink: json_['selfLink'] as core.String?,
        totalItems: json_['totalItems'] as core.int?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (items != null) 'items': items!,
    if (selfLink != null) 'selfLink': selfLink!,
    if (totalItems != null) 'totalItems': totalItems!,
  };
}

typedef Blog = $Blog;

class BlogList {
  /// Admin level list of blog per-user information.
  core.List<BlogUserInfo>? blogUserInfos;

  /// The list of Blogs this user has Authorship or Admin rights over.
  core.List<Blog>? items;

  /// The kind of this entity.
  ///
  /// Always blogger#blogList.
  core.String? kind;

  BlogList({this.blogUserInfos, this.items, this.kind});

  BlogList.fromJson(core.Map json_)
    : this(
        blogUserInfos:
            (json_['blogUserInfos'] as core.List?)
                ?.map(
                  (value) => BlogUserInfo.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        items:
            (json_['items'] as core.List?)
                ?.map(
                  (value) => Blog.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        kind: json_['kind'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (blogUserInfos != null) 'blogUserInfos': blogUserInfos!,
    if (items != null) 'items': items!,
    if (kind != null) 'kind': kind!,
  };
}

typedef BlogPerUserInfo = $BlogPerUserInfo;

class BlogUserInfo {
  /// The Blog resource.
  Blog? blog;

  /// Information about a User for the Blog.
  BlogPerUserInfo? blogUserInfo;

  /// The kind of this entity.
  ///
  /// Always blogger#blogUserInfo.
  core.String? kind;

  BlogUserInfo({this.blog, this.blogUserInfo, this.kind});

  BlogUserInfo.fromJson(core.Map json_)
    : this(
        blog:
            json_.containsKey('blog')
                ? Blog.fromJson(
                  json_['blog'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        blogUserInfo:
            json_.containsKey('blog_user_info')
                ? BlogPerUserInfo.fromJson(
                  json_['blog_user_info']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        kind: json_['kind'] as core.String?,
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

  CommentAuthorImage({this.url});

  CommentAuthorImage.fromJson(core.Map json_)
    : this(url: json_['url'] as core.String?);

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

  CommentAuthor({this.displayName, this.id, this.image, this.url});

  CommentAuthor.fromJson(core.Map json_)
    : this(
        displayName: json_['displayName'] as core.String?,
        id: json_['id'] as core.String?,
        image:
            json_.containsKey('image')
                ? CommentAuthorImage.fromJson(
                  json_['image'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        url: json_['url'] as core.String?,
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

  CommentBlog({this.id});

  CommentBlog.fromJson(core.Map json_) : this(id: json_['id'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() => {if (id != null) 'id': id!};
}

/// Data about the comment this is in reply to.
class CommentInReplyTo {
  /// The identified of the parent of this comment.
  core.String? id;

  CommentInReplyTo({this.id});

  CommentInReplyTo.fromJson(core.Map json_)
    : this(id: json_['id'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() => {if (id != null) 'id': id!};
}

/// Data about the post containing this comment.
class CommentPost {
  /// The identifier of the post containing this comment.
  core.String? id;

  CommentPost({this.id});

  CommentPost.fromJson(core.Map json_) : this(id: json_['id'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() => {if (id != null) 'id': id!};
}

typedef Comment = $Comment;

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

  CommentList.fromJson(core.Map json_)
    : this(
        etag: json_['etag'] as core.String?,
        items:
            (json_['items'] as core.List?)
                ?.map(
                  (value) => Comment.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        kind: json_['kind'] as core.String?,
        nextPageToken: json_['nextPageToken'] as core.String?,
        prevPageToken: json_['prevPageToken'] as core.String?,
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

  PageAuthorImage({this.url});

  PageAuthorImage.fromJson(core.Map json_)
    : this(url: json_['url'] as core.String?);

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

  PageAuthor({this.displayName, this.id, this.image, this.url});

  PageAuthor.fromJson(core.Map json_)
    : this(
        displayName: json_['displayName'] as core.String?,
        id: json_['id'] as core.String?,
        image:
            json_.containsKey('image')
                ? PageAuthorImage.fromJson(
                  json_['image'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        url: json_['url'] as core.String?,
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

  PageBlog({this.id});

  PageBlog.fromJson(core.Map json_) : this(id: json_['id'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() => {if (id != null) 'id': id!};
}

typedef Page = $Page;

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

  PageList({this.etag, this.items, this.kind, this.nextPageToken});

  PageList.fromJson(core.Map json_)
    : this(
        etag: json_['etag'] as core.String?,
        items:
            (json_['items'] as core.List?)
                ?.map(
                  (value) => Page.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        kind: json_['kind'] as core.String?,
        nextPageToken: json_['nextPageToken'] as core.String?,
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

  PageviewsCounts({this.count, this.timeRange});

  PageviewsCounts.fromJson(core.Map json_)
    : this(
        count: json_['count'] as core.String?,
        timeRange: json_['timeRange'] as core.String?,
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

  Pageviews({this.blogId, this.counts, this.kind});

  Pageviews.fromJson(core.Map json_)
    : this(
        blogId: json_['blogId'] as core.String?,
        counts:
            (json_['counts'] as core.List?)
                ?.map(
                  (value) => PageviewsCounts.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        kind: json_['kind'] as core.String?,
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

  PostAuthorImage({this.url});

  PostAuthorImage.fromJson(core.Map json_)
    : this(url: json_['url'] as core.String?);

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

  PostAuthor({this.displayName, this.id, this.image, this.url});

  PostAuthor.fromJson(core.Map json_)
    : this(
        displayName: json_['displayName'] as core.String?,
        id: json_['id'] as core.String?,
        image:
            json_.containsKey('image')
                ? PostAuthorImage.fromJson(
                  json_['image'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        url: json_['url'] as core.String?,
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

  PostBlog({this.id});

  PostBlog.fromJson(core.Map json_) : this(id: json_['id'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() => {if (id != null) 'id': id!};
}

class PostImages {
  core.String? url;

  PostImages({this.url});

  PostImages.fromJson(core.Map json_) : this(url: json_['url'] as core.String?);

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

  PostLocation({this.lat, this.lng, this.name, this.span});

  PostLocation.fromJson(core.Map json_)
    : this(
        lat: (json_['lat'] as core.num?)?.toDouble(),
        lng: (json_['lng'] as core.num?)?.toDouble(),
        name: json_['name'] as core.String?,
        span: json_['span'] as core.String?,
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

  PostReplies({this.items, this.selfLink, this.totalItems});

  PostReplies.fromJson(core.Map json_)
    : this(
        items:
            (json_['items'] as core.List?)
                ?.map(
                  (value) => Comment.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        selfLink: json_['selfLink'] as core.String?,
        totalItems: json_['totalItems'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (items != null) 'items': items!,
    if (selfLink != null) 'selfLink': selfLink!,
    if (totalItems != null) 'totalItems': totalItems!,
  };
}

typedef Post = $Post;

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

  PostList.fromJson(core.Map json_)
    : this(
        etag: json_['etag'] as core.String?,
        items:
            (json_['items'] as core.List?)
                ?.map(
                  (value) => Post.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        kind: json_['kind'] as core.String?,
        nextPageToken: json_['nextPageToken'] as core.String?,
        prevPageToken: json_['prevPageToken'] as core.String?,
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

  PostPerUserInfo.fromJson(core.Map json_)
    : this(
        blogId: json_['blogId'] as core.String?,
        hasEditAccess: json_['hasEditAccess'] as core.bool?,
        kind: json_['kind'] as core.String?,
        postId: json_['postId'] as core.String?,
        userId: json_['userId'] as core.String?,
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

  PostUserInfo({this.kind, this.post, this.postUserInfo});

  PostUserInfo.fromJson(core.Map json_)
    : this(
        kind: json_['kind'] as core.String?,
        post:
            json_.containsKey('post')
                ? Post.fromJson(
                  json_['post'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        postUserInfo:
            json_.containsKey('post_user_info')
                ? PostPerUserInfo.fromJson(
                  json_['post_user_info']
                      as core.Map<core.String, core.dynamic>,
                )
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

  PostUserInfosList({this.items, this.kind, this.nextPageToken});

  PostUserInfosList.fromJson(core.Map json_)
    : this(
        items:
            (json_['items'] as core.List?)
                ?.map(
                  (value) => PostUserInfo.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        kind: json_['kind'] as core.String?,
        nextPageToken: json_['nextPageToken'] as core.String?,
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

  UserBlogs({this.selfLink});

  UserBlogs.fromJson(core.Map json_)
    : this(selfLink: json_['selfLink'] as core.String?);

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

  UserLocale({this.country, this.language, this.variant});

  UserLocale.fromJson(core.Map json_)
    : this(
        country: json_['country'] as core.String?,
        language: json_['language'] as core.String?,
        variant: json_['variant'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (country != null) 'country': country!,
    if (language != null) 'language': language!,
    if (variant != null) 'variant': variant!,
  };
}

typedef User = $User01;
