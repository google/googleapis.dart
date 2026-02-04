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
      'maxPosts': ?maxPosts == null ? null : ['${maxPosts}'],
      'fields': ?$fields == null ? null : [$fields],
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
      'maxPosts': ?maxPosts == null ? null : ['${maxPosts}'],
      'view': ?view == null ? null : [view],
      'fields': ?$fields == null ? null : [$fields],
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
      'view': ?view == null ? null : [view],
      'fields': ?$fields == null ? null : [$fields],
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
      'fetchUserInfo': ?fetchUserInfo == null ? null : ['${fetchUserInfo}'],
      'role': ?role,
      'status': ?status,
      'view': ?view == null ? null : [view],
      'fields': ?$fields == null ? null : [$fields],
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
      'fields': ?$fields == null ? null : [$fields],
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
      'fields': ?$fields == null ? null : [$fields],
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
      'view': ?view == null ? null : [view],
      'fields': ?$fields == null ? null : [$fields],
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
      'endDate': ?endDate == null ? null : [endDate],
      'fetchBodies': ?fetchBodies == null ? null : ['${fetchBodies}'],
      'maxResults': ?maxResults == null ? null : ['${maxResults}'],
      'pageToken': ?pageToken == null ? null : [pageToken],
      'startDate': ?startDate == null ? null : [startDate],
      'status': ?status == null ? null : [status],
      'view': ?view == null ? null : [view],
      'fields': ?$fields == null ? null : [$fields],
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
      'endDate': ?endDate == null ? null : [endDate],
      'fetchBodies': ?fetchBodies == null ? null : ['${fetchBodies}'],
      'maxResults': ?maxResults == null ? null : ['${maxResults}'],
      'pageToken': ?pageToken == null ? null : [pageToken],
      'startDate': ?startDate == null ? null : [startDate],
      'status': ?status,
      'fields': ?$fields == null ? null : [$fields],
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
      'fields': ?$fields == null ? null : [$fields],
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
      'fields': ?$fields == null ? null : [$fields],
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
      'range': ?range,
      'fields': ?$fields == null ? null : [$fields],
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
      'useTrash': ?useTrash == null ? null : ['${useTrash}'],
      'fields': ?$fields == null ? null : [$fields],
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
      'view': ?view == null ? null : [view],
      'fields': ?$fields == null ? null : [$fields],
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
      'isDraft': ?isDraft == null ? null : ['${isDraft}'],
      'fields': ?$fields == null ? null : [$fields],
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
      'fetchBodies': ?fetchBodies == null ? null : ['${fetchBodies}'],
      'maxResults': ?maxResults == null ? null : ['${maxResults}'],
      'pageToken': ?pageToken == null ? null : [pageToken],
      'status': ?status,
      'view': ?view == null ? null : [view],
      'fields': ?$fields == null ? null : [$fields],
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
      'publish': ?publish_1 == null ? null : ['${publish_1}'],
      'revert': ?revert_1 == null ? null : ['${revert_1}'],
      'fields': ?$fields == null ? null : [$fields],
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
      'fields': ?$fields == null ? null : [$fields],
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
      'fields': ?$fields == null ? null : [$fields],
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
      'publish': ?publish_1 == null ? null : ['${publish_1}'],
      'revert': ?revert_1 == null ? null : ['${revert_1}'],
      'fields': ?$fields == null ? null : [$fields],
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
      'maxComments': ?maxComments == null ? null : ['${maxComments}'],
      'fields': ?$fields == null ? null : [$fields],
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
      'endDate': ?endDate == null ? null : [endDate],
      'fetchBodies': ?fetchBodies == null ? null : ['${fetchBodies}'],
      'labels': ?labels == null ? null : [labels],
      'maxResults': ?maxResults == null ? null : ['${maxResults}'],
      'orderBy': ?orderBy == null ? null : [orderBy],
      'pageToken': ?pageToken == null ? null : [pageToken],
      'startDate': ?startDate == null ? null : [startDate],
      'status': ?status,
      'view': ?view == null ? null : [view],
      'fields': ?$fields == null ? null : [$fields],
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
      'useTrash': ?useTrash == null ? null : ['${useTrash}'],
      'fields': ?$fields == null ? null : [$fields],
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
      'fetchBody': ?fetchBody == null ? null : ['${fetchBody}'],
      'fetchImages': ?fetchImages == null ? null : ['${fetchImages}'],
      'maxComments': ?maxComments == null ? null : ['${maxComments}'],
      'view': ?view == null ? null : [view],
      'fields': ?$fields == null ? null : [$fields],
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
      'maxComments': ?maxComments == null ? null : ['${maxComments}'],
      'view': ?view == null ? null : [view],
      'fields': ?$fields == null ? null : [$fields],
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
      'fetchBody': ?fetchBody == null ? null : ['${fetchBody}'],
      'fetchImages': ?fetchImages == null ? null : ['${fetchImages}'],
      'isDraft': ?isDraft == null ? null : ['${isDraft}'],
      'fields': ?$fields == null ? null : [$fields],
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
      'endDate': ?endDate == null ? null : [endDate],
      'fetchBodies': ?fetchBodies == null ? null : ['${fetchBodies}'],
      'fetchImages': ?fetchImages == null ? null : ['${fetchImages}'],
      'labels': ?labels == null ? null : [labels],
      'maxResults': ?maxResults == null ? null : ['${maxResults}'],
      'orderBy': ?orderBy == null ? null : [orderBy],
      'pageToken': ?pageToken == null ? null : [pageToken],
      'sortOption': ?sortOption == null ? null : [sortOption],
      'startDate': ?startDate == null ? null : [startDate],
      'status': ?status,
      'view': ?view == null ? null : [view],
      'fields': ?$fields == null ? null : [$fields],
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
      'fetchBody': ?fetchBody == null ? null : ['${fetchBody}'],
      'fetchImages': ?fetchImages == null ? null : ['${fetchImages}'],
      'maxComments': ?maxComments == null ? null : ['${maxComments}'],
      'publish': ?publish_1 == null ? null : ['${publish_1}'],
      'revert': ?revert_1 == null ? null : ['${revert_1}'],
      'fields': ?$fields == null ? null : [$fields],
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
      'publishDate': ?publishDate == null ? null : [publishDate],
      'fields': ?$fields == null ? null : [$fields],
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
      'fields': ?$fields == null ? null : [$fields],
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
      'fetchBodies': ?fetchBodies == null ? null : ['${fetchBodies}'],
      'orderBy': ?orderBy == null ? null : [orderBy],
      'fields': ?$fields == null ? null : [$fields],
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
      'fetchBody': ?fetchBody == null ? null : ['${fetchBody}'],
      'fetchImages': ?fetchImages == null ? null : ['${fetchImages}'],
      'maxComments': ?maxComments == null ? null : ['${maxComments}'],
      'publish': ?publish_1 == null ? null : ['${publish_1}'],
      'revert': ?revert_1 == null ? null : ['${revert_1}'],
      'fields': ?$fields == null ? null : [$fields],
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
      'fields': ?$fields == null ? null : [$fields],
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

  core.Map<core.String, core.dynamic> toJson() {
    final country = this.country;
    final language = this.language;
    final variant = this.variant;
    return {'country': ?country, 'language': ?language, 'variant': ?variant};
  }
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

  core.Map<core.String, core.dynamic> toJson() {
    final selfLink = this.selfLink;
    final totalItems = this.totalItems;
    return {'selfLink': ?selfLink, 'totalItems': ?totalItems};
  }
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
        items: (json_['items'] as core.List?)
            ?.map(
              (value) =>
                  Post.fromJson(value as core.Map<core.String, core.dynamic>),
            )
            .toList(),
        selfLink: json_['selfLink'] as core.String?,
        totalItems: json_['totalItems'] as core.int?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final items = this.items;
    final selfLink = this.selfLink;
    final totalItems = this.totalItems;
    return {'items': ?items, 'selfLink': ?selfLink, 'totalItems': ?totalItems};
  }
}

class Blog {
  /// The JSON custom meta-data for the Blog.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
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

  Blog.fromJson(core.Map json_)
    : this(
        customMetaData: json_['customMetaData'] as core.String?,
        description: json_['description'] as core.String?,
        id: json_['id'] as core.String?,
        kind: json_['kind'] as core.String?,
        locale: json_.containsKey('locale')
            ? BlogLocale.fromJson(
                json_['locale'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        name: json_['name'] as core.String?,
        pages: json_.containsKey('pages')
            ? BlogPages.fromJson(
                json_['pages'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        posts: json_.containsKey('posts')
            ? BlogPosts.fromJson(
                json_['posts'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        published: json_['published'] as core.String?,
        selfLink: json_['selfLink'] as core.String?,
        status: json_['status'] as core.String?,
        updated: json_['updated'] as core.String?,
        url: json_['url'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final customMetaData = this.customMetaData;
    final description = this.description;
    final id = this.id;
    final kind = this.kind;
    final locale = this.locale;
    final name = this.name;
    final pages = this.pages;
    final posts = this.posts;
    final published = this.published;
    final selfLink = this.selfLink;
    final status = this.status;
    final updated = this.updated;
    final url = this.url;
    return {
      'customMetaData': ?customMetaData,
      'description': ?description,
      'id': ?id,
      'kind': ?kind,
      'locale': ?locale,
      'name': ?name,
      'pages': ?pages,
      'posts': ?posts,
      'published': ?published,
      'selfLink': ?selfLink,
      'status': ?status,
      'updated': ?updated,
      'url': ?url,
    };
  }
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

  BlogList({this.blogUserInfos, this.items, this.kind});

  BlogList.fromJson(core.Map json_)
    : this(
        blogUserInfos: (json_['blogUserInfos'] as core.List?)
            ?.map(
              (value) => BlogUserInfo.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        items: (json_['items'] as core.List?)
            ?.map(
              (value) =>
                  Blog.fromJson(value as core.Map<core.String, core.dynamic>),
            )
            .toList(),
        kind: json_['kind'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final blogUserInfos = this.blogUserInfos;
    final items = this.items;
    final kind = this.kind;
    return {'blogUserInfos': ?blogUserInfos, 'items': ?items, 'kind': ?kind};
  }
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

  BlogPerUserInfo.fromJson(core.Map json_)
    : this(
        blogId: json_['blogId'] as core.String?,
        hasAdminAccess: json_['hasAdminAccess'] as core.bool?,
        kind: json_['kind'] as core.String?,
        photosAlbumKey: json_['photosAlbumKey'] as core.String?,
        role: json_['role'] as core.String?,
        userId: json_['userId'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final blogId = this.blogId;
    final hasAdminAccess = this.hasAdminAccess;
    final kind = this.kind;
    final photosAlbumKey = this.photosAlbumKey;
    final role = this.role;
    final userId = this.userId;
    return {
      'blogId': ?blogId,
      'hasAdminAccess': ?hasAdminAccess,
      'kind': ?kind,
      'photosAlbumKey': ?photosAlbumKey,
      'role': ?role,
      'userId': ?userId,
    };
  }
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

  BlogUserInfo({this.blog, this.blogUserInfo, this.kind});

  BlogUserInfo.fromJson(core.Map json_)
    : this(
        blog: json_.containsKey('blog')
            ? Blog.fromJson(
                json_['blog'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        blogUserInfo: json_.containsKey('blog_user_info')
            ? BlogPerUserInfo.fromJson(
                json_['blog_user_info'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        kind: json_['kind'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final blog = this.blog;
    final blogUserInfo = this.blogUserInfo;
    final kind = this.kind;
    return {'blog': ?blog, 'blog_user_info': ?blogUserInfo, 'kind': ?kind};
  }
}

/// The creator's avatar.
class CommentAuthorImage {
  /// The creator's avatar URL.
  core.String? url;

  CommentAuthorImage({this.url});

  CommentAuthorImage.fromJson(core.Map json_)
    : this(url: json_['url'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() {
    final url = this.url;
    return {'url': ?url};
  }
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
        image: json_.containsKey('image')
            ? CommentAuthorImage.fromJson(
                json_['image'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        url: json_['url'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final displayName = this.displayName;
    final id = this.id;
    final image = this.image;
    final url = this.url;
    return {
      'displayName': ?displayName,
      'id': ?id,
      'image': ?image,
      'url': ?url,
    };
  }
}

/// Data about the blog containing this comment.
class CommentBlog {
  /// The identifier of the blog containing this comment.
  core.String? id;

  CommentBlog({this.id});

  CommentBlog.fromJson(core.Map json_) : this(id: json_['id'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() {
    final id = this.id;
    return {'id': ?id};
  }
}

/// Data about the comment this is in reply to.
class CommentInReplyTo {
  /// The identified of the parent of this comment.
  core.String? id;

  CommentInReplyTo({this.id});

  CommentInReplyTo.fromJson(core.Map json_)
    : this(id: json_['id'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() {
    final id = this.id;
    return {'id': ?id};
  }
}

/// Data about the post containing this comment.
class CommentPost {
  /// The identifier of the post containing this comment.
  core.String? id;

  CommentPost({this.id});

  CommentPost.fromJson(core.Map json_) : this(id: json_['id'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() {
    final id = this.id;
    return {'id': ?id};
  }
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

  Comment.fromJson(core.Map json_)
    : this(
        author: json_.containsKey('author')
            ? CommentAuthor.fromJson(
                json_['author'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        blog: json_.containsKey('blog')
            ? CommentBlog.fromJson(
                json_['blog'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        content: json_['content'] as core.String?,
        id: json_['id'] as core.String?,
        inReplyTo: json_.containsKey('inReplyTo')
            ? CommentInReplyTo.fromJson(
                json_['inReplyTo'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        kind: json_['kind'] as core.String?,
        post: json_.containsKey('post')
            ? CommentPost.fromJson(
                json_['post'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        published: json_['published'] as core.String?,
        selfLink: json_['selfLink'] as core.String?,
        status: json_['status'] as core.String?,
        updated: json_['updated'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final author = this.author;
    final blog = this.blog;
    final content = this.content;
    final id = this.id;
    final inReplyTo = this.inReplyTo;
    final kind = this.kind;
    final post = this.post;
    final published = this.published;
    final selfLink = this.selfLink;
    final status = this.status;
    final updated = this.updated;
    return {
      'author': ?author,
      'blog': ?blog,
      'content': ?content,
      'id': ?id,
      'inReplyTo': ?inReplyTo,
      'kind': ?kind,
      'post': ?post,
      'published': ?published,
      'selfLink': ?selfLink,
      'status': ?status,
      'updated': ?updated,
    };
  }
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

  CommentList.fromJson(core.Map json_)
    : this(
        etag: json_['etag'] as core.String?,
        items: (json_['items'] as core.List?)
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

  core.Map<core.String, core.dynamic> toJson() {
    final etag = this.etag;
    final items = this.items;
    final kind = this.kind;
    final nextPageToken = this.nextPageToken;
    final prevPageToken = this.prevPageToken;
    return {
      'etag': ?etag,
      'items': ?items,
      'kind': ?kind,
      'nextPageToken': ?nextPageToken,
      'prevPageToken': ?prevPageToken,
    };
  }
}

/// The creator's avatar.
class PageAuthorImage {
  /// The creator's avatar URL.
  core.String? url;

  PageAuthorImage({this.url});

  PageAuthorImage.fromJson(core.Map json_)
    : this(url: json_['url'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() {
    final url = this.url;
    return {'url': ?url};
  }
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
        image: json_.containsKey('image')
            ? PageAuthorImage.fromJson(
                json_['image'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        url: json_['url'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final displayName = this.displayName;
    final id = this.id;
    final image = this.image;
    final url = this.url;
    return {
      'displayName': ?displayName,
      'id': ?id,
      'image': ?image,
      'url': ?url,
    };
  }
}

/// Data about the blog containing this Page.
class PageBlog {
  /// The identifier of the blog containing this page.
  core.String? id;

  PageBlog({this.id});

  PageBlog.fromJson(core.Map json_) : this(id: json_['id'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() {
    final id = this.id;
    return {'id': ?id};
  }
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

  Page.fromJson(core.Map json_)
    : this(
        author: json_.containsKey('author')
            ? PageAuthor.fromJson(
                json_['author'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        blog: json_.containsKey('blog')
            ? PageBlog.fromJson(
                json_['blog'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        content: json_['content'] as core.String?,
        etag: json_['etag'] as core.String?,
        id: json_['id'] as core.String?,
        kind: json_['kind'] as core.String?,
        published: json_['published'] as core.String?,
        selfLink: json_['selfLink'] as core.String?,
        status: json_['status'] as core.String?,
        title: json_['title'] as core.String?,
        trashed: json_['trashed'] as core.String?,
        updated: json_['updated'] as core.String?,
        url: json_['url'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final author = this.author;
    final blog = this.blog;
    final content = this.content;
    final etag = this.etag;
    final id = this.id;
    final kind = this.kind;
    final published = this.published;
    final selfLink = this.selfLink;
    final status = this.status;
    final title = this.title;
    final trashed = this.trashed;
    final updated = this.updated;
    final url = this.url;
    return {
      'author': ?author,
      'blog': ?blog,
      'content': ?content,
      'etag': ?etag,
      'id': ?id,
      'kind': ?kind,
      'published': ?published,
      'selfLink': ?selfLink,
      'status': ?status,
      'title': ?title,
      'trashed': ?trashed,
      'updated': ?updated,
      'url': ?url,
    };
  }
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

  PageList({this.etag, this.items, this.kind, this.nextPageToken});

  PageList.fromJson(core.Map json_)
    : this(
        etag: json_['etag'] as core.String?,
        items: (json_['items'] as core.List?)
            ?.map(
              (value) =>
                  Page.fromJson(value as core.Map<core.String, core.dynamic>),
            )
            .toList(),
        kind: json_['kind'] as core.String?,
        nextPageToken: json_['nextPageToken'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final etag = this.etag;
    final items = this.items;
    final kind = this.kind;
    final nextPageToken = this.nextPageToken;
    return {
      'etag': ?etag,
      'items': ?items,
      'kind': ?kind,
      'nextPageToken': ?nextPageToken,
    };
  }
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

  core.Map<core.String, core.dynamic> toJson() {
    final count = this.count;
    final timeRange = this.timeRange;
    return {'count': ?count, 'timeRange': ?timeRange};
  }
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
        counts: (json_['counts'] as core.List?)
            ?.map(
              (value) => PageviewsCounts.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        kind: json_['kind'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final blogId = this.blogId;
    final counts = this.counts;
    final kind = this.kind;
    return {'blogId': ?blogId, 'counts': ?counts, 'kind': ?kind};
  }
}

/// The creator's avatar.
class PostAuthorImage {
  /// The creator's avatar URL.
  core.String? url;

  PostAuthorImage({this.url});

  PostAuthorImage.fromJson(core.Map json_)
    : this(url: json_['url'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() {
    final url = this.url;
    return {'url': ?url};
  }
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
        image: json_.containsKey('image')
            ? PostAuthorImage.fromJson(
                json_['image'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        url: json_['url'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final displayName = this.displayName;
    final id = this.id;
    final image = this.image;
    final url = this.url;
    return {
      'displayName': ?displayName,
      'id': ?id,
      'image': ?image,
      'url': ?url,
    };
  }
}

/// Data about the blog containing this Post.
class PostBlog {
  /// The identifier of the Blog that contains this Post.
  core.String? id;

  PostBlog({this.id});

  PostBlog.fromJson(core.Map json_) : this(id: json_['id'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() {
    final id = this.id;
    return {'id': ?id};
  }
}

class PostImages {
  core.String? url;

  PostImages({this.url});

  PostImages.fromJson(core.Map json_) : this(url: json_['url'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() {
    final url = this.url;
    return {'url': ?url};
  }
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

  core.Map<core.String, core.dynamic> toJson() {
    final lat = this.lat;
    final lng = this.lng;
    final name = this.name;
    final span = this.span;
    return {'lat': ?lat, 'lng': ?lng, 'name': ?name, 'span': ?span};
  }
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
        items: (json_['items'] as core.List?)
            ?.map(
              (value) => Comment.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        selfLink: json_['selfLink'] as core.String?,
        totalItems: json_['totalItems'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final items = this.items;
    final selfLink = this.selfLink;
    final totalItems = this.totalItems;
    return {'items': ?items, 'selfLink': ?selfLink, 'totalItems': ?totalItems};
  }
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
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
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

  Post.fromJson(core.Map json_)
    : this(
        author: json_.containsKey('author')
            ? PostAuthor.fromJson(
                json_['author'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        blog: json_.containsKey('blog')
            ? PostBlog.fromJson(
                json_['blog'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        content: json_['content'] as core.String?,
        customMetaData: json_['customMetaData'] as core.String?,
        etag: json_['etag'] as core.String?,
        id: json_['id'] as core.String?,
        images: (json_['images'] as core.List?)
            ?.map(
              (value) => PostImages.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        kind: json_['kind'] as core.String?,
        labels: (json_['labels'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
        location: json_.containsKey('location')
            ? PostLocation.fromJson(
                json_['location'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        published: json_['published'] as core.String?,
        readerComments: json_['readerComments'] as core.String?,
        replies: json_.containsKey('replies')
            ? PostReplies.fromJson(
                json_['replies'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        selfLink: json_['selfLink'] as core.String?,
        status: json_['status'] as core.String?,
        title: json_['title'] as core.String?,
        titleLink: json_['titleLink'] as core.String?,
        trashed: json_['trashed'] as core.String?,
        updated: json_['updated'] as core.String?,
        url: json_['url'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final author = this.author;
    final blog = this.blog;
    final content = this.content;
    final customMetaData = this.customMetaData;
    final etag = this.etag;
    final id = this.id;
    final images = this.images;
    final kind = this.kind;
    final labels = this.labels;
    final location = this.location;
    final published = this.published;
    final readerComments = this.readerComments;
    final replies = this.replies;
    final selfLink = this.selfLink;
    final status = this.status;
    final title = this.title;
    final titleLink = this.titleLink;
    final trashed = this.trashed;
    final updated = this.updated;
    final url = this.url;
    return {
      'author': ?author,
      'blog': ?blog,
      'content': ?content,
      'customMetaData': ?customMetaData,
      'etag': ?etag,
      'id': ?id,
      'images': ?images,
      'kind': ?kind,
      'labels': ?labels,
      'location': ?location,
      'published': ?published,
      'readerComments': ?readerComments,
      'replies': ?replies,
      'selfLink': ?selfLink,
      'status': ?status,
      'title': ?title,
      'titleLink': ?titleLink,
      'trashed': ?trashed,
      'updated': ?updated,
      'url': ?url,
    };
  }
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

  PostList.fromJson(core.Map json_)
    : this(
        etag: json_['etag'] as core.String?,
        items: (json_['items'] as core.List?)
            ?.map(
              (value) =>
                  Post.fromJson(value as core.Map<core.String, core.dynamic>),
            )
            .toList(),
        kind: json_['kind'] as core.String?,
        nextPageToken: json_['nextPageToken'] as core.String?,
        prevPageToken: json_['prevPageToken'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final etag = this.etag;
    final items = this.items;
    final kind = this.kind;
    final nextPageToken = this.nextPageToken;
    final prevPageToken = this.prevPageToken;
    return {
      'etag': ?etag,
      'items': ?items,
      'kind': ?kind,
      'nextPageToken': ?nextPageToken,
      'prevPageToken': ?prevPageToken,
    };
  }
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

  core.Map<core.String, core.dynamic> toJson() {
    final blogId = this.blogId;
    final hasEditAccess = this.hasEditAccess;
    final kind = this.kind;
    final postId = this.postId;
    final userId = this.userId;
    return {
      'blogId': ?blogId,
      'hasEditAccess': ?hasEditAccess,
      'kind': ?kind,
      'postId': ?postId,
      'userId': ?userId,
    };
  }
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
        post: json_.containsKey('post')
            ? Post.fromJson(
                json_['post'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        postUserInfo: json_.containsKey('post_user_info')
            ? PostPerUserInfo.fromJson(
                json_['post_user_info'] as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final kind = this.kind;
    final post = this.post;
    final postUserInfo = this.postUserInfo;
    return {'kind': ?kind, 'post': ?post, 'post_user_info': ?postUserInfo};
  }
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
        items: (json_['items'] as core.List?)
            ?.map(
              (value) => PostUserInfo.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        kind: json_['kind'] as core.String?,
        nextPageToken: json_['nextPageToken'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final items = this.items;
    final kind = this.kind;
    final nextPageToken = this.nextPageToken;
    return {'items': ?items, 'kind': ?kind, 'nextPageToken': ?nextPageToken};
  }
}

/// The container of blogs for this user.
class UserBlogs {
  /// The URL of the Blogs for this user.
  core.String? selfLink;

  UserBlogs({this.selfLink});

  UserBlogs.fromJson(core.Map json_)
    : this(selfLink: json_['selfLink'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() {
    final selfLink = this.selfLink;
    return {'selfLink': ?selfLink};
  }
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

  core.Map<core.String, core.dynamic> toJson() {
    final country = this.country;
    final language = this.language;
    final variant = this.variant;
    return {'country': ?country, 'language': ?language, 'variant': ?variant};
  }
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

  User.fromJson(core.Map json_)
    : this(
        about: json_['about'] as core.String?,
        blogs: json_.containsKey('blogs')
            ? UserBlogs.fromJson(
                json_['blogs'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        created: json_['created'] as core.String?,
        displayName: json_['displayName'] as core.String?,
        id: json_['id'] as core.String?,
        kind: json_['kind'] as core.String?,
        locale: json_.containsKey('locale')
            ? UserLocale.fromJson(
                json_['locale'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        selfLink: json_['selfLink'] as core.String?,
        url: json_['url'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final about = this.about;
    final blogs = this.blogs;
    final created = this.created;
    final displayName = this.displayName;
    final id = this.id;
    final kind = this.kind;
    final locale = this.locale;
    final selfLink = this.selfLink;
    final url = this.url;
    return {
      'about': ?about,
      'blogs': ?blogs,
      'created': ?created,
      'displayName': ?displayName,
      'id': ?id,
      'kind': ?kind,
      'locale': ?locale,
      'selfLink': ?selfLink,
      'url': ?url,
    };
  }
}
