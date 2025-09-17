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

/// Blogger API - v2
///
/// The Blogger API provides access to posts, comments and pages of a Blogger
/// blog.
///
/// For more information, see
/// <https://developers.google.com/blogger/docs/3.0/getting_started>
///
/// Create an instance of [BloggerApi] to access these resources:
///
/// - [BlogsResource]
/// - [CommentsResource]
/// - [PagesResource]
/// - [PostsResource]
/// - [UsersResource]
library;

import 'dart:async' as async;
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

  final commons.ApiRequester _requester;

  BlogsResource get blogs => BlogsResource(_requester);
  CommentsResource get comments => CommentsResource(_requester);
  PagesResource get pages => PagesResource(_requester);
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

class BlogsResource {
  final commons.ApiRequester _requester;

  BlogsResource(commons.ApiRequester client) : _requester = client;

  /// Gets a blog by id.
  ///
  /// Request parameters:
  ///
  /// [blogId] - null
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
  async.Future<Blog> get(core.String blogId, {core.String? $fields}) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2/blogs/' + commons.escapeVariable('$blogId');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return Blog.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists blogs by user id, possibly filtered.
  ///
  /// Request parameters:
  ///
  /// [userId] - null
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
  async.Future<BlogList> list(
    core.String userId, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2/users/' + commons.escapeVariable('$userId') + '/blogs';

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

  /// Gets a comment by blog id, post id and comment id.
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
  async.Future<Comment> get(
    core.String blogId,
    core.String postId,
    core.String commentId, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v2/blogs/' +
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
  /// [fetchBodies] - null
  ///
  /// [maxResults] - null
  ///
  /// [pageToken] - null
  ///
  /// [startDate] - null
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
    core.bool? fetchBodies,
    core.int? maxResults,
    core.String? pageToken,
    core.String? startDate,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (fetchBodies != null) 'fetchBodies': ['${fetchBodies}'],
      if (maxResults != null) 'maxResults': ['${maxResults}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if (startDate != null) 'startDate': [startDate],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v2/blogs/' +
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
}

class PagesResource {
  final commons.ApiRequester _requester;

  PagesResource(commons.ApiRequester client) : _requester = client;

  /// Gets a page by blog id and page id.
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
  async.Future<Page> get(
    core.String blogId,
    core.String pageId, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v2/blogs/' +
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

  /// Lists pages.
  ///
  /// Request parameters:
  ///
  /// [blogId] - null
  ///
  /// [fetchBodies] - null
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
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (fetchBodies != null) 'fetchBodies': ['${fetchBodies}'],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2/blogs/' + commons.escapeVariable('$blogId') + '/pages';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return PageList.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }
}

class PostsResource {
  final commons.ApiRequester _requester;

  PostsResource(commons.ApiRequester client) : _requester = client;

  /// Gets a post by blog id and post id
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
  async.Future<Post> get(
    core.String blogId,
    core.String postId, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v2/blogs/' +
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

  /// Lists posts.
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
  /// [startDate] - null
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
    core.bool? fetchBodies,
    core.int? maxResults,
    core.String? pageToken,
    core.String? startDate,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (fetchBodies != null) 'fetchBodies': ['${fetchBodies}'],
      if (maxResults != null) 'maxResults': ['${maxResults}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if (startDate != null) 'startDate': [startDate],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2/blogs/' + commons.escapeVariable('$blogId') + '/posts';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return PostList.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }
}

class UsersResource {
  final commons.ApiRequester _requester;

  UsersResource(commons.ApiRequester client) : _requester = client;

  /// Gets a user by user id.
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

    final url_ = 'v2/users/' + commons.escapeVariable('$userId');

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
