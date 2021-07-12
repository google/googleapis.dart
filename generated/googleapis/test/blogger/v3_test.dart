// ignore_for_file: camel_case_types
// ignore_for_file: cascade_invocations
// ignore_for_file: comment_references
// ignore_for_file: file_names
// ignore_for_file: library_names
// ignore_for_file: lines_longer_than_80_chars
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: prefer_const_declarations
// ignore_for_file: prefer_expression_function_bodies
// ignore_for_file: prefer_final_locals
// ignore_for_file: prefer_interpolation_to_compose_strings
// ignore_for_file: unnecessary_brace_in_string_interps
// ignore_for_file: unnecessary_cast
// ignore_for_file: unnecessary_lambdas
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: unnecessary_string_interpolations
// ignore_for_file: unused_local_variable

import 'dart:async' as async;
import 'dart:convert' as convert;
import 'dart:core' as core;

import 'package:googleapis/blogger/v3.dart' as api;
import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import '../test_shared.dart';

core.int buildCounterBlogLocale = 0;
api.BlogLocale buildBlogLocale() {
  final o = api.BlogLocale();
  buildCounterBlogLocale++;
  if (buildCounterBlogLocale < 3) {
    o.country = 'foo';
    o.language = 'foo';
    o.variant = 'foo';
  }
  buildCounterBlogLocale--;
  return o;
}

void checkBlogLocale(api.BlogLocale o) {
  buildCounterBlogLocale++;
  if (buildCounterBlogLocale < 3) {
    unittest.expect(
      o.country!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.language!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.variant!,
      unittest.equals('foo'),
    );
  }
  buildCounterBlogLocale--;
}

core.int buildCounterBlogPages = 0;
api.BlogPages buildBlogPages() {
  final o = api.BlogPages();
  buildCounterBlogPages++;
  if (buildCounterBlogPages < 3) {
    o.selfLink = 'foo';
    o.totalItems = 42;
  }
  buildCounterBlogPages--;
  return o;
}

void checkBlogPages(api.BlogPages o) {
  buildCounterBlogPages++;
  if (buildCounterBlogPages < 3) {
    unittest.expect(
      o.selfLink!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.totalItems!,
      unittest.equals(42),
    );
  }
  buildCounterBlogPages--;
}

core.List<api.Post> buildUnnamed241() {
  final o = <api.Post>[];
  o.add(buildPost());
  o.add(buildPost());
  return o;
}

void checkUnnamed241(core.List<api.Post> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPost(o[0]);
  checkPost(o[1]);
}

core.int buildCounterBlogPosts = 0;
api.BlogPosts buildBlogPosts() {
  final o = api.BlogPosts();
  buildCounterBlogPosts++;
  if (buildCounterBlogPosts < 3) {
    o.items = buildUnnamed241();
    o.selfLink = 'foo';
    o.totalItems = 42;
  }
  buildCounterBlogPosts--;
  return o;
}

void checkBlogPosts(api.BlogPosts o) {
  buildCounterBlogPosts++;
  if (buildCounterBlogPosts < 3) {
    checkUnnamed241(o.items!);
    unittest.expect(
      o.selfLink!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.totalItems!,
      unittest.equals(42),
    );
  }
  buildCounterBlogPosts--;
}

core.int buildCounterBlog = 0;
api.Blog buildBlog() {
  final o = api.Blog();
  buildCounterBlog++;
  if (buildCounterBlog < 3) {
    o.customMetaData = 'foo';
    o.description = 'foo';
    o.id = 'foo';
    o.kind = 'foo';
    o.locale = buildBlogLocale();
    o.name = 'foo';
    o.pages = buildBlogPages();
    o.posts = buildBlogPosts();
    o.published = 'foo';
    o.selfLink = 'foo';
    o.status = 'foo';
    o.updated = 'foo';
    o.url = 'foo';
  }
  buildCounterBlog--;
  return o;
}

void checkBlog(api.Blog o) {
  buildCounterBlog++;
  if (buildCounterBlog < 3) {
    unittest.expect(
      o.customMetaData!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.description!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.id!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    checkBlogLocale(o.locale!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkBlogPages(o.pages!);
    checkBlogPosts(o.posts!);
    unittest.expect(
      o.published!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.selfLink!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.status!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.updated!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.url!,
      unittest.equals('foo'),
    );
  }
  buildCounterBlog--;
}

core.List<api.BlogUserInfo> buildUnnamed242() {
  final o = <api.BlogUserInfo>[];
  o.add(buildBlogUserInfo());
  o.add(buildBlogUserInfo());
  return o;
}

void checkUnnamed242(core.List<api.BlogUserInfo> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkBlogUserInfo(o[0]);
  checkBlogUserInfo(o[1]);
}

core.List<api.Blog> buildUnnamed243() {
  final o = <api.Blog>[];
  o.add(buildBlog());
  o.add(buildBlog());
  return o;
}

void checkUnnamed243(core.List<api.Blog> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkBlog(o[0]);
  checkBlog(o[1]);
}

core.int buildCounterBlogList = 0;
api.BlogList buildBlogList() {
  final o = api.BlogList();
  buildCounterBlogList++;
  if (buildCounterBlogList < 3) {
    o.blogUserInfos = buildUnnamed242();
    o.items = buildUnnamed243();
    o.kind = 'foo';
  }
  buildCounterBlogList--;
  return o;
}

void checkBlogList(api.BlogList o) {
  buildCounterBlogList++;
  if (buildCounterBlogList < 3) {
    checkUnnamed242(o.blogUserInfos!);
    checkUnnamed243(o.items!);
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
  }
  buildCounterBlogList--;
}

core.int buildCounterBlogPerUserInfo = 0;
api.BlogPerUserInfo buildBlogPerUserInfo() {
  final o = api.BlogPerUserInfo();
  buildCounterBlogPerUserInfo++;
  if (buildCounterBlogPerUserInfo < 3) {
    o.blogId = 'foo';
    o.hasAdminAccess = true;
    o.kind = 'foo';
    o.photosAlbumKey = 'foo';
    o.role = 'foo';
    o.userId = 'foo';
  }
  buildCounterBlogPerUserInfo--;
  return o;
}

void checkBlogPerUserInfo(api.BlogPerUserInfo o) {
  buildCounterBlogPerUserInfo++;
  if (buildCounterBlogPerUserInfo < 3) {
    unittest.expect(
      o.blogId!,
      unittest.equals('foo'),
    );
    unittest.expect(o.hasAdminAccess!, unittest.isTrue);
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.photosAlbumKey!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.role!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.userId!,
      unittest.equals('foo'),
    );
  }
  buildCounterBlogPerUserInfo--;
}

core.int buildCounterBlogUserInfo = 0;
api.BlogUserInfo buildBlogUserInfo() {
  final o = api.BlogUserInfo();
  buildCounterBlogUserInfo++;
  if (buildCounterBlogUserInfo < 3) {
    o.blog = buildBlog();
    o.blogUserInfo = buildBlogPerUserInfo();
    o.kind = 'foo';
  }
  buildCounterBlogUserInfo--;
  return o;
}

void checkBlogUserInfo(api.BlogUserInfo o) {
  buildCounterBlogUserInfo++;
  if (buildCounterBlogUserInfo < 3) {
    checkBlog(o.blog!);
    checkBlogPerUserInfo(o.blogUserInfo!);
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
  }
  buildCounterBlogUserInfo--;
}

core.int buildCounterCommentAuthorImage = 0;
api.CommentAuthorImage buildCommentAuthorImage() {
  final o = api.CommentAuthorImage();
  buildCounterCommentAuthorImage++;
  if (buildCounterCommentAuthorImage < 3) {
    o.url = 'foo';
  }
  buildCounterCommentAuthorImage--;
  return o;
}

void checkCommentAuthorImage(api.CommentAuthorImage o) {
  buildCounterCommentAuthorImage++;
  if (buildCounterCommentAuthorImage < 3) {
    unittest.expect(
      o.url!,
      unittest.equals('foo'),
    );
  }
  buildCounterCommentAuthorImage--;
}

core.int buildCounterCommentAuthor = 0;
api.CommentAuthor buildCommentAuthor() {
  final o = api.CommentAuthor();
  buildCounterCommentAuthor++;
  if (buildCounterCommentAuthor < 3) {
    o.displayName = 'foo';
    o.id = 'foo';
    o.image = buildCommentAuthorImage();
    o.url = 'foo';
  }
  buildCounterCommentAuthor--;
  return o;
}

void checkCommentAuthor(api.CommentAuthor o) {
  buildCounterCommentAuthor++;
  if (buildCounterCommentAuthor < 3) {
    unittest.expect(
      o.displayName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.id!,
      unittest.equals('foo'),
    );
    checkCommentAuthorImage(o.image!);
    unittest.expect(
      o.url!,
      unittest.equals('foo'),
    );
  }
  buildCounterCommentAuthor--;
}

core.int buildCounterCommentBlog = 0;
api.CommentBlog buildCommentBlog() {
  final o = api.CommentBlog();
  buildCounterCommentBlog++;
  if (buildCounterCommentBlog < 3) {
    o.id = 'foo';
  }
  buildCounterCommentBlog--;
  return o;
}

void checkCommentBlog(api.CommentBlog o) {
  buildCounterCommentBlog++;
  if (buildCounterCommentBlog < 3) {
    unittest.expect(
      o.id!,
      unittest.equals('foo'),
    );
  }
  buildCounterCommentBlog--;
}

core.int buildCounterCommentInReplyTo = 0;
api.CommentInReplyTo buildCommentInReplyTo() {
  final o = api.CommentInReplyTo();
  buildCounterCommentInReplyTo++;
  if (buildCounterCommentInReplyTo < 3) {
    o.id = 'foo';
  }
  buildCounterCommentInReplyTo--;
  return o;
}

void checkCommentInReplyTo(api.CommentInReplyTo o) {
  buildCounterCommentInReplyTo++;
  if (buildCounterCommentInReplyTo < 3) {
    unittest.expect(
      o.id!,
      unittest.equals('foo'),
    );
  }
  buildCounterCommentInReplyTo--;
}

core.int buildCounterCommentPost = 0;
api.CommentPost buildCommentPost() {
  final o = api.CommentPost();
  buildCounterCommentPost++;
  if (buildCounterCommentPost < 3) {
    o.id = 'foo';
  }
  buildCounterCommentPost--;
  return o;
}

void checkCommentPost(api.CommentPost o) {
  buildCounterCommentPost++;
  if (buildCounterCommentPost < 3) {
    unittest.expect(
      o.id!,
      unittest.equals('foo'),
    );
  }
  buildCounterCommentPost--;
}

core.int buildCounterComment = 0;
api.Comment buildComment() {
  final o = api.Comment();
  buildCounterComment++;
  if (buildCounterComment < 3) {
    o.author = buildCommentAuthor();
    o.blog = buildCommentBlog();
    o.content = 'foo';
    o.id = 'foo';
    o.inReplyTo = buildCommentInReplyTo();
    o.kind = 'foo';
    o.post = buildCommentPost();
    o.published = 'foo';
    o.selfLink = 'foo';
    o.status = 'foo';
    o.updated = 'foo';
  }
  buildCounterComment--;
  return o;
}

void checkComment(api.Comment o) {
  buildCounterComment++;
  if (buildCounterComment < 3) {
    checkCommentAuthor(o.author!);
    checkCommentBlog(o.blog!);
    unittest.expect(
      o.content!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.id!,
      unittest.equals('foo'),
    );
    checkCommentInReplyTo(o.inReplyTo!);
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    checkCommentPost(o.post!);
    unittest.expect(
      o.published!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.selfLink!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.status!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.updated!,
      unittest.equals('foo'),
    );
  }
  buildCounterComment--;
}

core.List<api.Comment> buildUnnamed244() {
  final o = <api.Comment>[];
  o.add(buildComment());
  o.add(buildComment());
  return o;
}

void checkUnnamed244(core.List<api.Comment> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkComment(o[0]);
  checkComment(o[1]);
}

core.int buildCounterCommentList = 0;
api.CommentList buildCommentList() {
  final o = api.CommentList();
  buildCounterCommentList++;
  if (buildCounterCommentList < 3) {
    o.etag = 'foo';
    o.items = buildUnnamed244();
    o.kind = 'foo';
    o.nextPageToken = 'foo';
    o.prevPageToken = 'foo';
  }
  buildCounterCommentList--;
  return o;
}

void checkCommentList(api.CommentList o) {
  buildCounterCommentList++;
  if (buildCounterCommentList < 3) {
    unittest.expect(
      o.etag!,
      unittest.equals('foo'),
    );
    checkUnnamed244(o.items!);
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.prevPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterCommentList--;
}

core.int buildCounterPageAuthorImage = 0;
api.PageAuthorImage buildPageAuthorImage() {
  final o = api.PageAuthorImage();
  buildCounterPageAuthorImage++;
  if (buildCounterPageAuthorImage < 3) {
    o.url = 'foo';
  }
  buildCounterPageAuthorImage--;
  return o;
}

void checkPageAuthorImage(api.PageAuthorImage o) {
  buildCounterPageAuthorImage++;
  if (buildCounterPageAuthorImage < 3) {
    unittest.expect(
      o.url!,
      unittest.equals('foo'),
    );
  }
  buildCounterPageAuthorImage--;
}

core.int buildCounterPageAuthor = 0;
api.PageAuthor buildPageAuthor() {
  final o = api.PageAuthor();
  buildCounterPageAuthor++;
  if (buildCounterPageAuthor < 3) {
    o.displayName = 'foo';
    o.id = 'foo';
    o.image = buildPageAuthorImage();
    o.url = 'foo';
  }
  buildCounterPageAuthor--;
  return o;
}

void checkPageAuthor(api.PageAuthor o) {
  buildCounterPageAuthor++;
  if (buildCounterPageAuthor < 3) {
    unittest.expect(
      o.displayName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.id!,
      unittest.equals('foo'),
    );
    checkPageAuthorImage(o.image!);
    unittest.expect(
      o.url!,
      unittest.equals('foo'),
    );
  }
  buildCounterPageAuthor--;
}

core.int buildCounterPageBlog = 0;
api.PageBlog buildPageBlog() {
  final o = api.PageBlog();
  buildCounterPageBlog++;
  if (buildCounterPageBlog < 3) {
    o.id = 'foo';
  }
  buildCounterPageBlog--;
  return o;
}

void checkPageBlog(api.PageBlog o) {
  buildCounterPageBlog++;
  if (buildCounterPageBlog < 3) {
    unittest.expect(
      o.id!,
      unittest.equals('foo'),
    );
  }
  buildCounterPageBlog--;
}

core.int buildCounterPage = 0;
api.Page buildPage() {
  final o = api.Page();
  buildCounterPage++;
  if (buildCounterPage < 3) {
    o.author = buildPageAuthor();
    o.blog = buildPageBlog();
    o.content = 'foo';
    o.etag = 'foo';
    o.id = 'foo';
    o.kind = 'foo';
    o.published = 'foo';
    o.selfLink = 'foo';
    o.status = 'foo';
    o.title = 'foo';
    o.updated = 'foo';
    o.url = 'foo';
  }
  buildCounterPage--;
  return o;
}

void checkPage(api.Page o) {
  buildCounterPage++;
  if (buildCounterPage < 3) {
    checkPageAuthor(o.author!);
    checkPageBlog(o.blog!);
    unittest.expect(
      o.content!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.etag!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.id!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.published!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.selfLink!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.status!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.title!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.updated!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.url!,
      unittest.equals('foo'),
    );
  }
  buildCounterPage--;
}

core.List<api.Page> buildUnnamed245() {
  final o = <api.Page>[];
  o.add(buildPage());
  o.add(buildPage());
  return o;
}

void checkUnnamed245(core.List<api.Page> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPage(o[0]);
  checkPage(o[1]);
}

core.int buildCounterPageList = 0;
api.PageList buildPageList() {
  final o = api.PageList();
  buildCounterPageList++;
  if (buildCounterPageList < 3) {
    o.etag = 'foo';
    o.items = buildUnnamed245();
    o.kind = 'foo';
    o.nextPageToken = 'foo';
  }
  buildCounterPageList--;
  return o;
}

void checkPageList(api.PageList o) {
  buildCounterPageList++;
  if (buildCounterPageList < 3) {
    unittest.expect(
      o.etag!,
      unittest.equals('foo'),
    );
    checkUnnamed245(o.items!);
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterPageList--;
}

core.int buildCounterPageviewsCounts = 0;
api.PageviewsCounts buildPageviewsCounts() {
  final o = api.PageviewsCounts();
  buildCounterPageviewsCounts++;
  if (buildCounterPageviewsCounts < 3) {
    o.count = 'foo';
    o.timeRange = 'foo';
  }
  buildCounterPageviewsCounts--;
  return o;
}

void checkPageviewsCounts(api.PageviewsCounts o) {
  buildCounterPageviewsCounts++;
  if (buildCounterPageviewsCounts < 3) {
    unittest.expect(
      o.count!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.timeRange!,
      unittest.equals('foo'),
    );
  }
  buildCounterPageviewsCounts--;
}

core.List<api.PageviewsCounts> buildUnnamed246() {
  final o = <api.PageviewsCounts>[];
  o.add(buildPageviewsCounts());
  o.add(buildPageviewsCounts());
  return o;
}

void checkUnnamed246(core.List<api.PageviewsCounts> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPageviewsCounts(o[0]);
  checkPageviewsCounts(o[1]);
}

core.int buildCounterPageviews = 0;
api.Pageviews buildPageviews() {
  final o = api.Pageviews();
  buildCounterPageviews++;
  if (buildCounterPageviews < 3) {
    o.blogId = 'foo';
    o.counts = buildUnnamed246();
    o.kind = 'foo';
  }
  buildCounterPageviews--;
  return o;
}

void checkPageviews(api.Pageviews o) {
  buildCounterPageviews++;
  if (buildCounterPageviews < 3) {
    unittest.expect(
      o.blogId!,
      unittest.equals('foo'),
    );
    checkUnnamed246(o.counts!);
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
  }
  buildCounterPageviews--;
}

core.int buildCounterPostAuthorImage = 0;
api.PostAuthorImage buildPostAuthorImage() {
  final o = api.PostAuthorImage();
  buildCounterPostAuthorImage++;
  if (buildCounterPostAuthorImage < 3) {
    o.url = 'foo';
  }
  buildCounterPostAuthorImage--;
  return o;
}

void checkPostAuthorImage(api.PostAuthorImage o) {
  buildCounterPostAuthorImage++;
  if (buildCounterPostAuthorImage < 3) {
    unittest.expect(
      o.url!,
      unittest.equals('foo'),
    );
  }
  buildCounterPostAuthorImage--;
}

core.int buildCounterPostAuthor = 0;
api.PostAuthor buildPostAuthor() {
  final o = api.PostAuthor();
  buildCounterPostAuthor++;
  if (buildCounterPostAuthor < 3) {
    o.displayName = 'foo';
    o.id = 'foo';
    o.image = buildPostAuthorImage();
    o.url = 'foo';
  }
  buildCounterPostAuthor--;
  return o;
}

void checkPostAuthor(api.PostAuthor o) {
  buildCounterPostAuthor++;
  if (buildCounterPostAuthor < 3) {
    unittest.expect(
      o.displayName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.id!,
      unittest.equals('foo'),
    );
    checkPostAuthorImage(o.image!);
    unittest.expect(
      o.url!,
      unittest.equals('foo'),
    );
  }
  buildCounterPostAuthor--;
}

core.int buildCounterPostBlog = 0;
api.PostBlog buildPostBlog() {
  final o = api.PostBlog();
  buildCounterPostBlog++;
  if (buildCounterPostBlog < 3) {
    o.id = 'foo';
  }
  buildCounterPostBlog--;
  return o;
}

void checkPostBlog(api.PostBlog o) {
  buildCounterPostBlog++;
  if (buildCounterPostBlog < 3) {
    unittest.expect(
      o.id!,
      unittest.equals('foo'),
    );
  }
  buildCounterPostBlog--;
}

core.int buildCounterPostImages = 0;
api.PostImages buildPostImages() {
  final o = api.PostImages();
  buildCounterPostImages++;
  if (buildCounterPostImages < 3) {
    o.url = 'foo';
  }
  buildCounterPostImages--;
  return o;
}

void checkPostImages(api.PostImages o) {
  buildCounterPostImages++;
  if (buildCounterPostImages < 3) {
    unittest.expect(
      o.url!,
      unittest.equals('foo'),
    );
  }
  buildCounterPostImages--;
}

core.List<api.PostImages> buildUnnamed247() {
  final o = <api.PostImages>[];
  o.add(buildPostImages());
  o.add(buildPostImages());
  return o;
}

void checkUnnamed247(core.List<api.PostImages> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPostImages(o[0]);
  checkPostImages(o[1]);
}

core.List<core.String> buildUnnamed248() {
  final o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed248(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(
    o[0],
    unittest.equals('foo'),
  );
  unittest.expect(
    o[1],
    unittest.equals('foo'),
  );
}

core.int buildCounterPostLocation = 0;
api.PostLocation buildPostLocation() {
  final o = api.PostLocation();
  buildCounterPostLocation++;
  if (buildCounterPostLocation < 3) {
    o.lat = 42.0;
    o.lng = 42.0;
    o.name = 'foo';
    o.span = 'foo';
  }
  buildCounterPostLocation--;
  return o;
}

void checkPostLocation(api.PostLocation o) {
  buildCounterPostLocation++;
  if (buildCounterPostLocation < 3) {
    unittest.expect(
      o.lat!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.lng!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.span!,
      unittest.equals('foo'),
    );
  }
  buildCounterPostLocation--;
}

core.List<api.Comment> buildUnnamed249() {
  final o = <api.Comment>[];
  o.add(buildComment());
  o.add(buildComment());
  return o;
}

void checkUnnamed249(core.List<api.Comment> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkComment(o[0]);
  checkComment(o[1]);
}

core.int buildCounterPostReplies = 0;
api.PostReplies buildPostReplies() {
  final o = api.PostReplies();
  buildCounterPostReplies++;
  if (buildCounterPostReplies < 3) {
    o.items = buildUnnamed249();
    o.selfLink = 'foo';
    o.totalItems = 'foo';
  }
  buildCounterPostReplies--;
  return o;
}

void checkPostReplies(api.PostReplies o) {
  buildCounterPostReplies++;
  if (buildCounterPostReplies < 3) {
    checkUnnamed249(o.items!);
    unittest.expect(
      o.selfLink!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.totalItems!,
      unittest.equals('foo'),
    );
  }
  buildCounterPostReplies--;
}

core.int buildCounterPost = 0;
api.Post buildPost() {
  final o = api.Post();
  buildCounterPost++;
  if (buildCounterPost < 3) {
    o.author = buildPostAuthor();
    o.blog = buildPostBlog();
    o.content = 'foo';
    o.customMetaData = 'foo';
    o.etag = 'foo';
    o.id = 'foo';
    o.images = buildUnnamed247();
    o.kind = 'foo';
    o.labels = buildUnnamed248();
    o.location = buildPostLocation();
    o.published = 'foo';
    o.readerComments = 'foo';
    o.replies = buildPostReplies();
    o.selfLink = 'foo';
    o.status = 'foo';
    o.title = 'foo';
    o.titleLink = 'foo';
    o.updated = 'foo';
    o.url = 'foo';
  }
  buildCounterPost--;
  return o;
}

void checkPost(api.Post o) {
  buildCounterPost++;
  if (buildCounterPost < 3) {
    checkPostAuthor(o.author!);
    checkPostBlog(o.blog!);
    unittest.expect(
      o.content!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.customMetaData!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.etag!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.id!,
      unittest.equals('foo'),
    );
    checkUnnamed247(o.images!);
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    checkUnnamed248(o.labels!);
    checkPostLocation(o.location!);
    unittest.expect(
      o.published!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.readerComments!,
      unittest.equals('foo'),
    );
    checkPostReplies(o.replies!);
    unittest.expect(
      o.selfLink!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.status!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.title!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.titleLink!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.updated!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.url!,
      unittest.equals('foo'),
    );
  }
  buildCounterPost--;
}

core.List<api.Post> buildUnnamed250() {
  final o = <api.Post>[];
  o.add(buildPost());
  o.add(buildPost());
  return o;
}

void checkUnnamed250(core.List<api.Post> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPost(o[0]);
  checkPost(o[1]);
}

core.int buildCounterPostList = 0;
api.PostList buildPostList() {
  final o = api.PostList();
  buildCounterPostList++;
  if (buildCounterPostList < 3) {
    o.etag = 'foo';
    o.items = buildUnnamed250();
    o.kind = 'foo';
    o.nextPageToken = 'foo';
    o.prevPageToken = 'foo';
  }
  buildCounterPostList--;
  return o;
}

void checkPostList(api.PostList o) {
  buildCounterPostList++;
  if (buildCounterPostList < 3) {
    unittest.expect(
      o.etag!,
      unittest.equals('foo'),
    );
    checkUnnamed250(o.items!);
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.prevPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterPostList--;
}

core.int buildCounterPostPerUserInfo = 0;
api.PostPerUserInfo buildPostPerUserInfo() {
  final o = api.PostPerUserInfo();
  buildCounterPostPerUserInfo++;
  if (buildCounterPostPerUserInfo < 3) {
    o.blogId = 'foo';
    o.hasEditAccess = true;
    o.kind = 'foo';
    o.postId = 'foo';
    o.userId = 'foo';
  }
  buildCounterPostPerUserInfo--;
  return o;
}

void checkPostPerUserInfo(api.PostPerUserInfo o) {
  buildCounterPostPerUserInfo++;
  if (buildCounterPostPerUserInfo < 3) {
    unittest.expect(
      o.blogId!,
      unittest.equals('foo'),
    );
    unittest.expect(o.hasEditAccess!, unittest.isTrue);
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.postId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.userId!,
      unittest.equals('foo'),
    );
  }
  buildCounterPostPerUserInfo--;
}

core.int buildCounterPostUserInfo = 0;
api.PostUserInfo buildPostUserInfo() {
  final o = api.PostUserInfo();
  buildCounterPostUserInfo++;
  if (buildCounterPostUserInfo < 3) {
    o.kind = 'foo';
    o.post = buildPost();
    o.postUserInfo = buildPostPerUserInfo();
  }
  buildCounterPostUserInfo--;
  return o;
}

void checkPostUserInfo(api.PostUserInfo o) {
  buildCounterPostUserInfo++;
  if (buildCounterPostUserInfo < 3) {
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    checkPost(o.post!);
    checkPostPerUserInfo(o.postUserInfo!);
  }
  buildCounterPostUserInfo--;
}

core.List<api.PostUserInfo> buildUnnamed251() {
  final o = <api.PostUserInfo>[];
  o.add(buildPostUserInfo());
  o.add(buildPostUserInfo());
  return o;
}

void checkUnnamed251(core.List<api.PostUserInfo> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPostUserInfo(o[0]);
  checkPostUserInfo(o[1]);
}

core.int buildCounterPostUserInfosList = 0;
api.PostUserInfosList buildPostUserInfosList() {
  final o = api.PostUserInfosList();
  buildCounterPostUserInfosList++;
  if (buildCounterPostUserInfosList < 3) {
    o.items = buildUnnamed251();
    o.kind = 'foo';
    o.nextPageToken = 'foo';
  }
  buildCounterPostUserInfosList--;
  return o;
}

void checkPostUserInfosList(api.PostUserInfosList o) {
  buildCounterPostUserInfosList++;
  if (buildCounterPostUserInfosList < 3) {
    checkUnnamed251(o.items!);
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterPostUserInfosList--;
}

core.int buildCounterUserBlogs = 0;
api.UserBlogs buildUserBlogs() {
  final o = api.UserBlogs();
  buildCounterUserBlogs++;
  if (buildCounterUserBlogs < 3) {
    o.selfLink = 'foo';
  }
  buildCounterUserBlogs--;
  return o;
}

void checkUserBlogs(api.UserBlogs o) {
  buildCounterUserBlogs++;
  if (buildCounterUserBlogs < 3) {
    unittest.expect(
      o.selfLink!,
      unittest.equals('foo'),
    );
  }
  buildCounterUserBlogs--;
}

core.int buildCounterUserLocale = 0;
api.UserLocale buildUserLocale() {
  final o = api.UserLocale();
  buildCounterUserLocale++;
  if (buildCounterUserLocale < 3) {
    o.country = 'foo';
    o.language = 'foo';
    o.variant = 'foo';
  }
  buildCounterUserLocale--;
  return o;
}

void checkUserLocale(api.UserLocale o) {
  buildCounterUserLocale++;
  if (buildCounterUserLocale < 3) {
    unittest.expect(
      o.country!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.language!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.variant!,
      unittest.equals('foo'),
    );
  }
  buildCounterUserLocale--;
}

core.int buildCounterUser = 0;
api.User buildUser() {
  final o = api.User();
  buildCounterUser++;
  if (buildCounterUser < 3) {
    o.about = 'foo';
    o.blogs = buildUserBlogs();
    o.created = 'foo';
    o.displayName = 'foo';
    o.id = 'foo';
    o.kind = 'foo';
    o.locale = buildUserLocale();
    o.selfLink = 'foo';
    o.url = 'foo';
  }
  buildCounterUser--;
  return o;
}

void checkUser(api.User o) {
  buildCounterUser++;
  if (buildCounterUser < 3) {
    unittest.expect(
      o.about!,
      unittest.equals('foo'),
    );
    checkUserBlogs(o.blogs!);
    unittest.expect(
      o.created!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.displayName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.id!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    checkUserLocale(o.locale!);
    unittest.expect(
      o.selfLink!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.url!,
      unittest.equals('foo'),
    );
  }
  buildCounterUser--;
}

core.List<core.String> buildUnnamed252() {
  final o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed252(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(
    o[0],
    unittest.equals('foo'),
  );
  unittest.expect(
    o[1],
    unittest.equals('foo'),
  );
}

core.List<core.String> buildUnnamed253() {
  final o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed253(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(
    o[0],
    unittest.equals('foo'),
  );
  unittest.expect(
    o[1],
    unittest.equals('foo'),
  );
}

core.List<core.String> buildUnnamed254() {
  final o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed254(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(
    o[0],
    unittest.equals('foo'),
  );
  unittest.expect(
    o[1],
    unittest.equals('foo'),
  );
}

core.List<core.String> buildUnnamed255() {
  final o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed255(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(
    o[0],
    unittest.equals('foo'),
  );
  unittest.expect(
    o[1],
    unittest.equals('foo'),
  );
}

core.List<core.String> buildUnnamed256() {
  final o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed256(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(
    o[0],
    unittest.equals('foo'),
  );
  unittest.expect(
    o[1],
    unittest.equals('foo'),
  );
}

core.List<core.String> buildUnnamed257() {
  final o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed257(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(
    o[0],
    unittest.equals('foo'),
  );
  unittest.expect(
    o[1],
    unittest.equals('foo'),
  );
}

core.List<core.String> buildUnnamed258() {
  final o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed258(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(
    o[0],
    unittest.equals('foo'),
  );
  unittest.expect(
    o[1],
    unittest.equals('foo'),
  );
}

void main() {
  unittest.group('obj-schema-BlogLocale', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBlogLocale();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.BlogLocale.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkBlogLocale(od);
    });
  });

  unittest.group('obj-schema-BlogPages', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBlogPages();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.BlogPages.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkBlogPages(od);
    });
  });

  unittest.group('obj-schema-BlogPosts', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBlogPosts();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.BlogPosts.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkBlogPosts(od);
    });
  });

  unittest.group('obj-schema-Blog', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBlog();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Blog.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkBlog(od);
    });
  });

  unittest.group('obj-schema-BlogList', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBlogList();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.BlogList.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkBlogList(od);
    });
  });

  unittest.group('obj-schema-BlogPerUserInfo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBlogPerUserInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.BlogPerUserInfo.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkBlogPerUserInfo(od);
    });
  });

  unittest.group('obj-schema-BlogUserInfo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBlogUserInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.BlogUserInfo.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkBlogUserInfo(od);
    });
  });

  unittest.group('obj-schema-CommentAuthorImage', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCommentAuthorImage();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CommentAuthorImage.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCommentAuthorImage(od);
    });
  });

  unittest.group('obj-schema-CommentAuthor', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCommentAuthor();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CommentAuthor.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCommentAuthor(od);
    });
  });

  unittest.group('obj-schema-CommentBlog', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCommentBlog();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CommentBlog.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCommentBlog(od);
    });
  });

  unittest.group('obj-schema-CommentInReplyTo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCommentInReplyTo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CommentInReplyTo.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCommentInReplyTo(od);
    });
  });

  unittest.group('obj-schema-CommentPost', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCommentPost();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CommentPost.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCommentPost(od);
    });
  });

  unittest.group('obj-schema-Comment', () {
    unittest.test('to-json--from-json', () async {
      final o = buildComment();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Comment.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkComment(od);
    });
  });

  unittest.group('obj-schema-CommentList', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCommentList();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CommentList.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCommentList(od);
    });
  });

  unittest.group('obj-schema-PageAuthorImage', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPageAuthorImage();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PageAuthorImage.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkPageAuthorImage(od);
    });
  });

  unittest.group('obj-schema-PageAuthor', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPageAuthor();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.PageAuthor.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkPageAuthor(od);
    });
  });

  unittest.group('obj-schema-PageBlog', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPageBlog();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.PageBlog.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkPageBlog(od);
    });
  });

  unittest.group('obj-schema-Page', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPage();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Page.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkPage(od);
    });
  });

  unittest.group('obj-schema-PageList', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPageList();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.PageList.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkPageList(od);
    });
  });

  unittest.group('obj-schema-PageviewsCounts', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPageviewsCounts();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PageviewsCounts.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkPageviewsCounts(od);
    });
  });

  unittest.group('obj-schema-Pageviews', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPageviews();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Pageviews.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkPageviews(od);
    });
  });

  unittest.group('obj-schema-PostAuthorImage', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPostAuthorImage();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PostAuthorImage.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkPostAuthorImage(od);
    });
  });

  unittest.group('obj-schema-PostAuthor', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPostAuthor();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.PostAuthor.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkPostAuthor(od);
    });
  });

  unittest.group('obj-schema-PostBlog', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPostBlog();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.PostBlog.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkPostBlog(od);
    });
  });

  unittest.group('obj-schema-PostImages', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPostImages();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.PostImages.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkPostImages(od);
    });
  });

  unittest.group('obj-schema-PostLocation', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPostLocation();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PostLocation.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkPostLocation(od);
    });
  });

  unittest.group('obj-schema-PostReplies', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPostReplies();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PostReplies.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkPostReplies(od);
    });
  });

  unittest.group('obj-schema-Post', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPost();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Post.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkPost(od);
    });
  });

  unittest.group('obj-schema-PostList', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPostList();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.PostList.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkPostList(od);
    });
  });

  unittest.group('obj-schema-PostPerUserInfo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPostPerUserInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PostPerUserInfo.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkPostPerUserInfo(od);
    });
  });

  unittest.group('obj-schema-PostUserInfo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPostUserInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PostUserInfo.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkPostUserInfo(od);
    });
  });

  unittest.group('obj-schema-PostUserInfosList', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPostUserInfosList();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PostUserInfosList.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkPostUserInfosList(od);
    });
  });

  unittest.group('obj-schema-UserBlogs', () {
    unittest.test('to-json--from-json', () async {
      final o = buildUserBlogs();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.UserBlogs.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkUserBlogs(od);
    });
  });

  unittest.group('obj-schema-UserLocale', () {
    unittest.test('to-json--from-json', () async {
      final o = buildUserLocale();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.UserLocale.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkUserLocale(od);
    });
  });

  unittest.group('obj-schema-User', () {
    unittest.test('to-json--from-json', () async {
      final o = buildUser();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.User.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkUser(od);
    });
  });

  unittest.group('resource-BlogUserInfosResource', () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.BloggerApi(mock).blogUserInfos;
      final arg_userId = 'foo';
      final arg_blogId = 'foo';
      final arg_maxPosts = 42;
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals('v3/users/'),
        );
        pathOffset += 9;
        index = path.indexOf('/blogs/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_userId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals('/blogs/'),
        );
        pathOffset += 7;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_blogId'),
        );

        final query = (req.url).query;
        var queryOffset = 0;
        final queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            final keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          core.int.parse(queryMap['maxPosts']!.first),
          unittest.equals(arg_maxPosts),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildBlogUserInfo());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_userId, arg_blogId,
          maxPosts: arg_maxPosts, $fields: arg_$fields);
      checkBlogUserInfo(response as api.BlogUserInfo);
    });
  });

  unittest.group('resource-BlogsResource', () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.BloggerApi(mock).blogs;
      final arg_blogId = 'foo';
      final arg_maxPosts = 42;
      final arg_view = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals('v3/blogs/'),
        );
        pathOffset += 9;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_blogId'),
        );

        final query = (req.url).query;
        var queryOffset = 0;
        final queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            final keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          core.int.parse(queryMap['maxPosts']!.first),
          unittest.equals(arg_maxPosts),
        );
        unittest.expect(
          queryMap['view']!.first,
          unittest.equals(arg_view),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildBlog());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_blogId,
          maxPosts: arg_maxPosts, view: arg_view, $fields: arg_$fields);
      checkBlog(response as api.Blog);
    });

    unittest.test('method--getByUrl', () async {
      final mock = HttpServerMock();
      final res = api.BloggerApi(mock).blogs;
      final arg_url = 'foo';
      final arg_view = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 14),
          unittest.equals('v3/blogs/byurl'),
        );
        pathOffset += 14;

        final query = (req.url).query;
        var queryOffset = 0;
        final queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            final keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap['url']!.first,
          unittest.equals(arg_url),
        );
        unittest.expect(
          queryMap['view']!.first,
          unittest.equals(arg_view),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildBlog());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.getByUrl(arg_url, view: arg_view, $fields: arg_$fields);
      checkBlog(response as api.Blog);
    });

    unittest.test('method--listByUser', () async {
      final mock = HttpServerMock();
      final res = api.BloggerApi(mock).blogs;
      final arg_userId = 'foo';
      final arg_fetchUserInfo = true;
      final arg_role = buildUnnamed252();
      final arg_status = buildUnnamed253();
      final arg_view = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals('v3/users/'),
        );
        pathOffset += 9;
        index = path.indexOf('/blogs', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_userId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 6),
          unittest.equals('/blogs'),
        );
        pathOffset += 6;

        final query = (req.url).query;
        var queryOffset = 0;
        final queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            final keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap['fetchUserInfo']!.first,
          unittest.equals('$arg_fetchUserInfo'),
        );
        unittest.expect(
          queryMap['role']!,
          unittest.equals(arg_role),
        );
        unittest.expect(
          queryMap['status']!,
          unittest.equals(arg_status),
        );
        unittest.expect(
          queryMap['view']!.first,
          unittest.equals(arg_view),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildBlogList());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.listByUser(arg_userId,
          fetchUserInfo: arg_fetchUserInfo,
          role: arg_role,
          status: arg_status,
          view: arg_view,
          $fields: arg_$fields);
      checkBlogList(response as api.BlogList);
    });
  });

  unittest.group('resource-CommentsResource', () {
    unittest.test('method--approve', () async {
      final mock = HttpServerMock();
      final res = api.BloggerApi(mock).comments;
      final arg_blogId = 'foo';
      final arg_postId = 'foo';
      final arg_commentId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals('v3/blogs/'),
        );
        pathOffset += 9;
        index = path.indexOf('/posts/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_blogId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals('/posts/'),
        );
        pathOffset += 7;
        index = path.indexOf('/comments/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_postId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 10),
          unittest.equals('/comments/'),
        );
        pathOffset += 10;
        index = path.indexOf('/approve', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_commentId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('/approve'),
        );
        pathOffset += 8;

        final query = (req.url).query;
        var queryOffset = 0;
        final queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            final keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildComment());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.approve(arg_blogId, arg_postId, arg_commentId,
          $fields: arg_$fields);
      checkComment(response as api.Comment);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.BloggerApi(mock).comments;
      final arg_blogId = 'foo';
      final arg_postId = 'foo';
      final arg_commentId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals('v3/blogs/'),
        );
        pathOffset += 9;
        index = path.indexOf('/posts/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_blogId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals('/posts/'),
        );
        pathOffset += 7;
        index = path.indexOf('/comments/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_postId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 10),
          unittest.equals('/comments/'),
        );
        pathOffset += 10;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_commentId'),
        );

        final query = (req.url).query;
        var queryOffset = 0;
        final queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            final keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = '';
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      await res.delete(arg_blogId, arg_postId, arg_commentId,
          $fields: arg_$fields);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.BloggerApi(mock).comments;
      final arg_blogId = 'foo';
      final arg_postId = 'foo';
      final arg_commentId = 'foo';
      final arg_view = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals('v3/blogs/'),
        );
        pathOffset += 9;
        index = path.indexOf('/posts/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_blogId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals('/posts/'),
        );
        pathOffset += 7;
        index = path.indexOf('/comments/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_postId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 10),
          unittest.equals('/comments/'),
        );
        pathOffset += 10;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_commentId'),
        );

        final query = (req.url).query;
        var queryOffset = 0;
        final queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            final keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap['view']!.first,
          unittest.equals(arg_view),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildComment());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_blogId, arg_postId, arg_commentId,
          view: arg_view, $fields: arg_$fields);
      checkComment(response as api.Comment);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.BloggerApi(mock).comments;
      final arg_blogId = 'foo';
      final arg_postId = 'foo';
      final arg_endDate = 'foo';
      final arg_fetchBodies = true;
      final arg_maxResults = 42;
      final arg_pageToken = 'foo';
      final arg_startDate = 'foo';
      final arg_status = 'foo';
      final arg_view = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals('v3/blogs/'),
        );
        pathOffset += 9;
        index = path.indexOf('/posts/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_blogId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals('/posts/'),
        );
        pathOffset += 7;
        index = path.indexOf('/comments', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_postId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals('/comments'),
        );
        pathOffset += 9;

        final query = (req.url).query;
        var queryOffset = 0;
        final queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            final keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap['endDate']!.first,
          unittest.equals(arg_endDate),
        );
        unittest.expect(
          queryMap['fetchBodies']!.first,
          unittest.equals('$arg_fetchBodies'),
        );
        unittest.expect(
          core.int.parse(queryMap['maxResults']!.first),
          unittest.equals(arg_maxResults),
        );
        unittest.expect(
          queryMap['pageToken']!.first,
          unittest.equals(arg_pageToken),
        );
        unittest.expect(
          queryMap['startDate']!.first,
          unittest.equals(arg_startDate),
        );
        unittest.expect(
          queryMap['status']!.first,
          unittest.equals(arg_status),
        );
        unittest.expect(
          queryMap['view']!.first,
          unittest.equals(arg_view),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildCommentList());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_blogId, arg_postId,
          endDate: arg_endDate,
          fetchBodies: arg_fetchBodies,
          maxResults: arg_maxResults,
          pageToken: arg_pageToken,
          startDate: arg_startDate,
          status: arg_status,
          view: arg_view,
          $fields: arg_$fields);
      checkCommentList(response as api.CommentList);
    });

    unittest.test('method--listByBlog', () async {
      final mock = HttpServerMock();
      final res = api.BloggerApi(mock).comments;
      final arg_blogId = 'foo';
      final arg_endDate = 'foo';
      final arg_fetchBodies = true;
      final arg_maxResults = 42;
      final arg_pageToken = 'foo';
      final arg_startDate = 'foo';
      final arg_status = buildUnnamed254();
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals('v3/blogs/'),
        );
        pathOffset += 9;
        index = path.indexOf('/comments', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_blogId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals('/comments'),
        );
        pathOffset += 9;

        final query = (req.url).query;
        var queryOffset = 0;
        final queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            final keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap['endDate']!.first,
          unittest.equals(arg_endDate),
        );
        unittest.expect(
          queryMap['fetchBodies']!.first,
          unittest.equals('$arg_fetchBodies'),
        );
        unittest.expect(
          core.int.parse(queryMap['maxResults']!.first),
          unittest.equals(arg_maxResults),
        );
        unittest.expect(
          queryMap['pageToken']!.first,
          unittest.equals(arg_pageToken),
        );
        unittest.expect(
          queryMap['startDate']!.first,
          unittest.equals(arg_startDate),
        );
        unittest.expect(
          queryMap['status']!,
          unittest.equals(arg_status),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildCommentList());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.listByBlog(arg_blogId,
          endDate: arg_endDate,
          fetchBodies: arg_fetchBodies,
          maxResults: arg_maxResults,
          pageToken: arg_pageToken,
          startDate: arg_startDate,
          status: arg_status,
          $fields: arg_$fields);
      checkCommentList(response as api.CommentList);
    });

    unittest.test('method--markAsSpam', () async {
      final mock = HttpServerMock();
      final res = api.BloggerApi(mock).comments;
      final arg_blogId = 'foo';
      final arg_postId = 'foo';
      final arg_commentId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals('v3/blogs/'),
        );
        pathOffset += 9;
        index = path.indexOf('/posts/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_blogId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals('/posts/'),
        );
        pathOffset += 7;
        index = path.indexOf('/comments/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_postId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 10),
          unittest.equals('/comments/'),
        );
        pathOffset += 10;
        index = path.indexOf('/spam', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_commentId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 5),
          unittest.equals('/spam'),
        );
        pathOffset += 5;

        final query = (req.url).query;
        var queryOffset = 0;
        final queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            final keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildComment());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.markAsSpam(
          arg_blogId, arg_postId, arg_commentId,
          $fields: arg_$fields);
      checkComment(response as api.Comment);
    });

    unittest.test('method--removeContent', () async {
      final mock = HttpServerMock();
      final res = api.BloggerApi(mock).comments;
      final arg_blogId = 'foo';
      final arg_postId = 'foo';
      final arg_commentId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals('v3/blogs/'),
        );
        pathOffset += 9;
        index = path.indexOf('/posts/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_blogId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals('/posts/'),
        );
        pathOffset += 7;
        index = path.indexOf('/comments/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_postId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 10),
          unittest.equals('/comments/'),
        );
        pathOffset += 10;
        index = path.indexOf('/removecontent', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_commentId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 14),
          unittest.equals('/removecontent'),
        );
        pathOffset += 14;

        final query = (req.url).query;
        var queryOffset = 0;
        final queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            final keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildComment());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.removeContent(
          arg_blogId, arg_postId, arg_commentId,
          $fields: arg_$fields);
      checkComment(response as api.Comment);
    });
  });

  unittest.group('resource-PageViewsResource', () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.BloggerApi(mock).pageViews;
      final arg_blogId = 'foo';
      final arg_range = buildUnnamed255();
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals('v3/blogs/'),
        );
        pathOffset += 9;
        index = path.indexOf('/pageviews', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_blogId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 10),
          unittest.equals('/pageviews'),
        );
        pathOffset += 10;

        final query = (req.url).query;
        var queryOffset = 0;
        final queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            final keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap['range']!,
          unittest.equals(arg_range),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildPageviews());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.get(arg_blogId, range: arg_range, $fields: arg_$fields);
      checkPageviews(response as api.Pageviews);
    });
  });

  unittest.group('resource-PagesResource', () {
    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.BloggerApi(mock).pages;
      final arg_blogId = 'foo';
      final arg_pageId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals('v3/blogs/'),
        );
        pathOffset += 9;
        index = path.indexOf('/pages/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_blogId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals('/pages/'),
        );
        pathOffset += 7;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_pageId'),
        );

        final query = (req.url).query;
        var queryOffset = 0;
        final queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            final keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = '';
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      await res.delete(arg_blogId, arg_pageId, $fields: arg_$fields);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.BloggerApi(mock).pages;
      final arg_blogId = 'foo';
      final arg_pageId = 'foo';
      final arg_view = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals('v3/blogs/'),
        );
        pathOffset += 9;
        index = path.indexOf('/pages/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_blogId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals('/pages/'),
        );
        pathOffset += 7;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_pageId'),
        );

        final query = (req.url).query;
        var queryOffset = 0;
        final queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            final keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap['view']!.first,
          unittest.equals(arg_view),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildPage());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_blogId, arg_pageId,
          view: arg_view, $fields: arg_$fields);
      checkPage(response as api.Page);
    });

    unittest.test('method--insert', () async {
      final mock = HttpServerMock();
      final res = api.BloggerApi(mock).pages;
      final arg_request = buildPage();
      final arg_blogId = 'foo';
      final arg_isDraft = true;
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.Page.fromJson(json as core.Map<core.String, core.dynamic>);
        checkPage(obj);

        final path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals('v3/blogs/'),
        );
        pathOffset += 9;
        index = path.indexOf('/pages', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_blogId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 6),
          unittest.equals('/pages'),
        );
        pathOffset += 6;

        final query = (req.url).query;
        var queryOffset = 0;
        final queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            final keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap['isDraft']!.first,
          unittest.equals('$arg_isDraft'),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildPage());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.insert(arg_request, arg_blogId,
          isDraft: arg_isDraft, $fields: arg_$fields);
      checkPage(response as api.Page);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.BloggerApi(mock).pages;
      final arg_blogId = 'foo';
      final arg_fetchBodies = true;
      final arg_maxResults = 42;
      final arg_pageToken = 'foo';
      final arg_status = buildUnnamed256();
      final arg_view = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals('v3/blogs/'),
        );
        pathOffset += 9;
        index = path.indexOf('/pages', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_blogId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 6),
          unittest.equals('/pages'),
        );
        pathOffset += 6;

        final query = (req.url).query;
        var queryOffset = 0;
        final queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            final keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap['fetchBodies']!.first,
          unittest.equals('$arg_fetchBodies'),
        );
        unittest.expect(
          core.int.parse(queryMap['maxResults']!.first),
          unittest.equals(arg_maxResults),
        );
        unittest.expect(
          queryMap['pageToken']!.first,
          unittest.equals(arg_pageToken),
        );
        unittest.expect(
          queryMap['status']!,
          unittest.equals(arg_status),
        );
        unittest.expect(
          queryMap['view']!.first,
          unittest.equals(arg_view),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildPageList());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_blogId,
          fetchBodies: arg_fetchBodies,
          maxResults: arg_maxResults,
          pageToken: arg_pageToken,
          status: arg_status,
          view: arg_view,
          $fields: arg_$fields);
      checkPageList(response as api.PageList);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.BloggerApi(mock).pages;
      final arg_request = buildPage();
      final arg_blogId = 'foo';
      final arg_pageId = 'foo';
      final arg_publish_1 = true;
      final arg_revert_1 = true;
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.Page.fromJson(json as core.Map<core.String, core.dynamic>);
        checkPage(obj);

        final path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals('v3/blogs/'),
        );
        pathOffset += 9;
        index = path.indexOf('/pages/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_blogId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals('/pages/'),
        );
        pathOffset += 7;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_pageId'),
        );

        final query = (req.url).query;
        var queryOffset = 0;
        final queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            final keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap['publish']!.first,
          unittest.equals('$arg_publish_1'),
        );
        unittest.expect(
          queryMap['revert']!.first,
          unittest.equals('$arg_revert_1'),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildPage());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.patch(arg_request, arg_blogId, arg_pageId,
          publish_1: arg_publish_1,
          revert_1: arg_revert_1,
          $fields: arg_$fields);
      checkPage(response as api.Page);
    });

    unittest.test('method--publish', () async {
      final mock = HttpServerMock();
      final res = api.BloggerApi(mock).pages;
      final arg_blogId = 'foo';
      final arg_pageId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals('v3/blogs/'),
        );
        pathOffset += 9;
        index = path.indexOf('/pages/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_blogId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals('/pages/'),
        );
        pathOffset += 7;
        index = path.indexOf('/publish', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_pageId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('/publish'),
        );
        pathOffset += 8;

        final query = (req.url).query;
        var queryOffset = 0;
        final queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            final keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildPage());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.publish(arg_blogId, arg_pageId, $fields: arg_$fields);
      checkPage(response as api.Page);
    });

    unittest.test('method--revert', () async {
      final mock = HttpServerMock();
      final res = api.BloggerApi(mock).pages;
      final arg_blogId = 'foo';
      final arg_pageId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals('v3/blogs/'),
        );
        pathOffset += 9;
        index = path.indexOf('/pages/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_blogId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals('/pages/'),
        );
        pathOffset += 7;
        index = path.indexOf('/revert', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_pageId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals('/revert'),
        );
        pathOffset += 7;

        final query = (req.url).query;
        var queryOffset = 0;
        final queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            final keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildPage());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.revert(arg_blogId, arg_pageId, $fields: arg_$fields);
      checkPage(response as api.Page);
    });

    unittest.test('method--update', () async {
      final mock = HttpServerMock();
      final res = api.BloggerApi(mock).pages;
      final arg_request = buildPage();
      final arg_blogId = 'foo';
      final arg_pageId = 'foo';
      final arg_publish_1 = true;
      final arg_revert_1 = true;
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.Page.fromJson(json as core.Map<core.String, core.dynamic>);
        checkPage(obj);

        final path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals('v3/blogs/'),
        );
        pathOffset += 9;
        index = path.indexOf('/pages/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_blogId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals('/pages/'),
        );
        pathOffset += 7;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_pageId'),
        );

        final query = (req.url).query;
        var queryOffset = 0;
        final queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            final keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap['publish']!.first,
          unittest.equals('$arg_publish_1'),
        );
        unittest.expect(
          queryMap['revert']!.first,
          unittest.equals('$arg_revert_1'),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildPage());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.update(arg_request, arg_blogId, arg_pageId,
          publish_1: arg_publish_1,
          revert_1: arg_revert_1,
          $fields: arg_$fields);
      checkPage(response as api.Page);
    });
  });

  unittest.group('resource-PostUserInfosResource', () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.BloggerApi(mock).postUserInfos;
      final arg_userId = 'foo';
      final arg_blogId = 'foo';
      final arg_postId = 'foo';
      final arg_maxComments = 42;
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals('v3/users/'),
        );
        pathOffset += 9;
        index = path.indexOf('/blogs/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_userId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals('/blogs/'),
        );
        pathOffset += 7;
        index = path.indexOf('/posts/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_blogId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals('/posts/'),
        );
        pathOffset += 7;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_postId'),
        );

        final query = (req.url).query;
        var queryOffset = 0;
        final queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            final keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          core.int.parse(queryMap['maxComments']!.first),
          unittest.equals(arg_maxComments),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildPostUserInfo());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_userId, arg_blogId, arg_postId,
          maxComments: arg_maxComments, $fields: arg_$fields);
      checkPostUserInfo(response as api.PostUserInfo);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.BloggerApi(mock).postUserInfos;
      final arg_userId = 'foo';
      final arg_blogId = 'foo';
      final arg_endDate = 'foo';
      final arg_fetchBodies = true;
      final arg_labels = 'foo';
      final arg_maxResults = 42;
      final arg_orderBy = 'foo';
      final arg_pageToken = 'foo';
      final arg_startDate = 'foo';
      final arg_status = buildUnnamed257();
      final arg_view = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals('v3/users/'),
        );
        pathOffset += 9;
        index = path.indexOf('/blogs/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_userId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals('/blogs/'),
        );
        pathOffset += 7;
        index = path.indexOf('/posts', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_blogId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 6),
          unittest.equals('/posts'),
        );
        pathOffset += 6;

        final query = (req.url).query;
        var queryOffset = 0;
        final queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            final keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap['endDate']!.first,
          unittest.equals(arg_endDate),
        );
        unittest.expect(
          queryMap['fetchBodies']!.first,
          unittest.equals('$arg_fetchBodies'),
        );
        unittest.expect(
          queryMap['labels']!.first,
          unittest.equals(arg_labels),
        );
        unittest.expect(
          core.int.parse(queryMap['maxResults']!.first),
          unittest.equals(arg_maxResults),
        );
        unittest.expect(
          queryMap['orderBy']!.first,
          unittest.equals(arg_orderBy),
        );
        unittest.expect(
          queryMap['pageToken']!.first,
          unittest.equals(arg_pageToken),
        );
        unittest.expect(
          queryMap['startDate']!.first,
          unittest.equals(arg_startDate),
        );
        unittest.expect(
          queryMap['status']!,
          unittest.equals(arg_status),
        );
        unittest.expect(
          queryMap['view']!.first,
          unittest.equals(arg_view),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildPostUserInfosList());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_userId, arg_blogId,
          endDate: arg_endDate,
          fetchBodies: arg_fetchBodies,
          labels: arg_labels,
          maxResults: arg_maxResults,
          orderBy: arg_orderBy,
          pageToken: arg_pageToken,
          startDate: arg_startDate,
          status: arg_status,
          view: arg_view,
          $fields: arg_$fields);
      checkPostUserInfosList(response as api.PostUserInfosList);
    });
  });

  unittest.group('resource-PostsResource', () {
    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.BloggerApi(mock).posts;
      final arg_blogId = 'foo';
      final arg_postId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals('v3/blogs/'),
        );
        pathOffset += 9;
        index = path.indexOf('/posts/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_blogId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals('/posts/'),
        );
        pathOffset += 7;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_postId'),
        );

        final query = (req.url).query;
        var queryOffset = 0;
        final queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            final keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = '';
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      await res.delete(arg_blogId, arg_postId, $fields: arg_$fields);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.BloggerApi(mock).posts;
      final arg_blogId = 'foo';
      final arg_postId = 'foo';
      final arg_fetchBody = true;
      final arg_fetchImages = true;
      final arg_maxComments = 42;
      final arg_view = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals('v3/blogs/'),
        );
        pathOffset += 9;
        index = path.indexOf('/posts/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_blogId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals('/posts/'),
        );
        pathOffset += 7;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_postId'),
        );

        final query = (req.url).query;
        var queryOffset = 0;
        final queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            final keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap['fetchBody']!.first,
          unittest.equals('$arg_fetchBody'),
        );
        unittest.expect(
          queryMap['fetchImages']!.first,
          unittest.equals('$arg_fetchImages'),
        );
        unittest.expect(
          core.int.parse(queryMap['maxComments']!.first),
          unittest.equals(arg_maxComments),
        );
        unittest.expect(
          queryMap['view']!.first,
          unittest.equals(arg_view),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildPost());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_blogId, arg_postId,
          fetchBody: arg_fetchBody,
          fetchImages: arg_fetchImages,
          maxComments: arg_maxComments,
          view: arg_view,
          $fields: arg_$fields);
      checkPost(response as api.Post);
    });

    unittest.test('method--getByPath', () async {
      final mock = HttpServerMock();
      final res = api.BloggerApi(mock).posts;
      final arg_blogId = 'foo';
      final arg_path = 'foo';
      final arg_maxComments = 42;
      final arg_view = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals('v3/blogs/'),
        );
        pathOffset += 9;
        index = path.indexOf('/posts/bypath', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_blogId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 13),
          unittest.equals('/posts/bypath'),
        );
        pathOffset += 13;

        final query = (req.url).query;
        var queryOffset = 0;
        final queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            final keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap['path']!.first,
          unittest.equals(arg_path),
        );
        unittest.expect(
          core.int.parse(queryMap['maxComments']!.first),
          unittest.equals(arg_maxComments),
        );
        unittest.expect(
          queryMap['view']!.first,
          unittest.equals(arg_view),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildPost());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.getByPath(arg_blogId, arg_path,
          maxComments: arg_maxComments, view: arg_view, $fields: arg_$fields);
      checkPost(response as api.Post);
    });

    unittest.test('method--insert', () async {
      final mock = HttpServerMock();
      final res = api.BloggerApi(mock).posts;
      final arg_request = buildPost();
      final arg_blogId = 'foo';
      final arg_fetchBody = true;
      final arg_fetchImages = true;
      final arg_isDraft = true;
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.Post.fromJson(json as core.Map<core.String, core.dynamic>);
        checkPost(obj);

        final path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals('v3/blogs/'),
        );
        pathOffset += 9;
        index = path.indexOf('/posts', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_blogId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 6),
          unittest.equals('/posts'),
        );
        pathOffset += 6;

        final query = (req.url).query;
        var queryOffset = 0;
        final queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            final keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap['fetchBody']!.first,
          unittest.equals('$arg_fetchBody'),
        );
        unittest.expect(
          queryMap['fetchImages']!.first,
          unittest.equals('$arg_fetchImages'),
        );
        unittest.expect(
          queryMap['isDraft']!.first,
          unittest.equals('$arg_isDraft'),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildPost());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.insert(arg_request, arg_blogId,
          fetchBody: arg_fetchBody,
          fetchImages: arg_fetchImages,
          isDraft: arg_isDraft,
          $fields: arg_$fields);
      checkPost(response as api.Post);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.BloggerApi(mock).posts;
      final arg_blogId = 'foo';
      final arg_endDate = 'foo';
      final arg_fetchBodies = true;
      final arg_fetchImages = true;
      final arg_labels = 'foo';
      final arg_maxResults = 42;
      final arg_orderBy = 'foo';
      final arg_pageToken = 'foo';
      final arg_startDate = 'foo';
      final arg_status = buildUnnamed258();
      final arg_view = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals('v3/blogs/'),
        );
        pathOffset += 9;
        index = path.indexOf('/posts', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_blogId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 6),
          unittest.equals('/posts'),
        );
        pathOffset += 6;

        final query = (req.url).query;
        var queryOffset = 0;
        final queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            final keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap['endDate']!.first,
          unittest.equals(arg_endDate),
        );
        unittest.expect(
          queryMap['fetchBodies']!.first,
          unittest.equals('$arg_fetchBodies'),
        );
        unittest.expect(
          queryMap['fetchImages']!.first,
          unittest.equals('$arg_fetchImages'),
        );
        unittest.expect(
          queryMap['labels']!.first,
          unittest.equals(arg_labels),
        );
        unittest.expect(
          core.int.parse(queryMap['maxResults']!.first),
          unittest.equals(arg_maxResults),
        );
        unittest.expect(
          queryMap['orderBy']!.first,
          unittest.equals(arg_orderBy),
        );
        unittest.expect(
          queryMap['pageToken']!.first,
          unittest.equals(arg_pageToken),
        );
        unittest.expect(
          queryMap['startDate']!.first,
          unittest.equals(arg_startDate),
        );
        unittest.expect(
          queryMap['status']!,
          unittest.equals(arg_status),
        );
        unittest.expect(
          queryMap['view']!.first,
          unittest.equals(arg_view),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildPostList());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_blogId,
          endDate: arg_endDate,
          fetchBodies: arg_fetchBodies,
          fetchImages: arg_fetchImages,
          labels: arg_labels,
          maxResults: arg_maxResults,
          orderBy: arg_orderBy,
          pageToken: arg_pageToken,
          startDate: arg_startDate,
          status: arg_status,
          view: arg_view,
          $fields: arg_$fields);
      checkPostList(response as api.PostList);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.BloggerApi(mock).posts;
      final arg_request = buildPost();
      final arg_blogId = 'foo';
      final arg_postId = 'foo';
      final arg_fetchBody = true;
      final arg_fetchImages = true;
      final arg_maxComments = 42;
      final arg_publish_1 = true;
      final arg_revert_1 = true;
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.Post.fromJson(json as core.Map<core.String, core.dynamic>);
        checkPost(obj);

        final path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals('v3/blogs/'),
        );
        pathOffset += 9;
        index = path.indexOf('/posts/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_blogId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals('/posts/'),
        );
        pathOffset += 7;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_postId'),
        );

        final query = (req.url).query;
        var queryOffset = 0;
        final queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            final keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap['fetchBody']!.first,
          unittest.equals('$arg_fetchBody'),
        );
        unittest.expect(
          queryMap['fetchImages']!.first,
          unittest.equals('$arg_fetchImages'),
        );
        unittest.expect(
          core.int.parse(queryMap['maxComments']!.first),
          unittest.equals(arg_maxComments),
        );
        unittest.expect(
          queryMap['publish']!.first,
          unittest.equals('$arg_publish_1'),
        );
        unittest.expect(
          queryMap['revert']!.first,
          unittest.equals('$arg_revert_1'),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildPost());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.patch(arg_request, arg_blogId, arg_postId,
          fetchBody: arg_fetchBody,
          fetchImages: arg_fetchImages,
          maxComments: arg_maxComments,
          publish_1: arg_publish_1,
          revert_1: arg_revert_1,
          $fields: arg_$fields);
      checkPost(response as api.Post);
    });

    unittest.test('method--publish', () async {
      final mock = HttpServerMock();
      final res = api.BloggerApi(mock).posts;
      final arg_blogId = 'foo';
      final arg_postId = 'foo';
      final arg_publishDate = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals('v3/blogs/'),
        );
        pathOffset += 9;
        index = path.indexOf('/posts/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_blogId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals('/posts/'),
        );
        pathOffset += 7;
        index = path.indexOf('/publish', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_postId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('/publish'),
        );
        pathOffset += 8;

        final query = (req.url).query;
        var queryOffset = 0;
        final queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            final keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap['publishDate']!.first,
          unittest.equals(arg_publishDate),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildPost());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.publish(arg_blogId, arg_postId,
          publishDate: arg_publishDate, $fields: arg_$fields);
      checkPost(response as api.Post);
    });

    unittest.test('method--revert', () async {
      final mock = HttpServerMock();
      final res = api.BloggerApi(mock).posts;
      final arg_blogId = 'foo';
      final arg_postId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals('v3/blogs/'),
        );
        pathOffset += 9;
        index = path.indexOf('/posts/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_blogId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals('/posts/'),
        );
        pathOffset += 7;
        index = path.indexOf('/revert', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_postId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals('/revert'),
        );
        pathOffset += 7;

        final query = (req.url).query;
        var queryOffset = 0;
        final queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            final keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildPost());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.revert(arg_blogId, arg_postId, $fields: arg_$fields);
      checkPost(response as api.Post);
    });

    unittest.test('method--search', () async {
      final mock = HttpServerMock();
      final res = api.BloggerApi(mock).posts;
      final arg_blogId = 'foo';
      final arg_q = 'foo';
      final arg_fetchBodies = true;
      final arg_orderBy = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals('v3/blogs/'),
        );
        pathOffset += 9;
        index = path.indexOf('/posts/search', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_blogId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 13),
          unittest.equals('/posts/search'),
        );
        pathOffset += 13;

        final query = (req.url).query;
        var queryOffset = 0;
        final queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            final keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap['q']!.first,
          unittest.equals(arg_q),
        );
        unittest.expect(
          queryMap['fetchBodies']!.first,
          unittest.equals('$arg_fetchBodies'),
        );
        unittest.expect(
          queryMap['orderBy']!.first,
          unittest.equals(arg_orderBy),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildPostList());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.search(arg_blogId, arg_q,
          fetchBodies: arg_fetchBodies,
          orderBy: arg_orderBy,
          $fields: arg_$fields);
      checkPostList(response as api.PostList);
    });

    unittest.test('method--update', () async {
      final mock = HttpServerMock();
      final res = api.BloggerApi(mock).posts;
      final arg_request = buildPost();
      final arg_blogId = 'foo';
      final arg_postId = 'foo';
      final arg_fetchBody = true;
      final arg_fetchImages = true;
      final arg_maxComments = 42;
      final arg_publish_1 = true;
      final arg_revert_1 = true;
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.Post.fromJson(json as core.Map<core.String, core.dynamic>);
        checkPost(obj);

        final path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals('v3/blogs/'),
        );
        pathOffset += 9;
        index = path.indexOf('/posts/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_blogId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals('/posts/'),
        );
        pathOffset += 7;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_postId'),
        );

        final query = (req.url).query;
        var queryOffset = 0;
        final queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            final keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap['fetchBody']!.first,
          unittest.equals('$arg_fetchBody'),
        );
        unittest.expect(
          queryMap['fetchImages']!.first,
          unittest.equals('$arg_fetchImages'),
        );
        unittest.expect(
          core.int.parse(queryMap['maxComments']!.first),
          unittest.equals(arg_maxComments),
        );
        unittest.expect(
          queryMap['publish']!.first,
          unittest.equals('$arg_publish_1'),
        );
        unittest.expect(
          queryMap['revert']!.first,
          unittest.equals('$arg_revert_1'),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildPost());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.update(arg_request, arg_blogId, arg_postId,
          fetchBody: arg_fetchBody,
          fetchImages: arg_fetchImages,
          maxComments: arg_maxComments,
          publish_1: arg_publish_1,
          revert_1: arg_revert_1,
          $fields: arg_$fields);
      checkPost(response as api.Post);
    });
  });

  unittest.group('resource-UsersResource', () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.BloggerApi(mock).users;
      final arg_userId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals('v3/users/'),
        );
        pathOffset += 9;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_userId'),
        );

        final query = (req.url).query;
        var queryOffset = 0;
        final queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            final keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildUser());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_userId, $fields: arg_$fields);
      checkUser(response as api.User);
    });
  });
}
