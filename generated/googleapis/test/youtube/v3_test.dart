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

import 'package:googleapis/youtube/v3.dart' as api;
import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import '../test_shared.dart';

core.List<api.AbuseType> buildUnnamed3051() => [
      buildAbuseType(),
      buildAbuseType(),
    ];

void checkUnnamed3051(core.List<api.AbuseType> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAbuseType(o[0]);
  checkAbuseType(o[1]);
}

core.List<api.RelatedEntity> buildUnnamed3052() => [
      buildRelatedEntity(),
      buildRelatedEntity(),
    ];

void checkUnnamed3052(core.List<api.RelatedEntity> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkRelatedEntity(o[0]);
  checkRelatedEntity(o[1]);
}

core.int buildCounterAbuseReport = 0;
api.AbuseReport buildAbuseReport() {
  final o = api.AbuseReport();
  buildCounterAbuseReport++;
  if (buildCounterAbuseReport < 3) {
    o.abuseTypes = buildUnnamed3051();
    o.description = 'foo';
    o.relatedEntities = buildUnnamed3052();
    o.subject = buildEntity();
  }
  buildCounterAbuseReport--;
  return o;
}

void checkAbuseReport(api.AbuseReport o) {
  buildCounterAbuseReport++;
  if (buildCounterAbuseReport < 3) {
    checkUnnamed3051(o.abuseTypes!);
    unittest.expect(
      o.description!,
      unittest.equals('foo'),
    );
    checkUnnamed3052(o.relatedEntities!);
    checkEntity(o.subject!);
  }
  buildCounterAbuseReport--;
}

core.int buildCounterAbuseType = 0;
api.AbuseType buildAbuseType() {
  final o = api.AbuseType();
  buildCounterAbuseType++;
  if (buildCounterAbuseType < 3) {
    o.id = 'foo';
  }
  buildCounterAbuseType--;
  return o;
}

void checkAbuseType(api.AbuseType o) {
  buildCounterAbuseType++;
  if (buildCounterAbuseType < 3) {
    unittest.expect(
      o.id!,
      unittest.equals('foo'),
    );
  }
  buildCounterAbuseType--;
}

core.List<core.String> buildUnnamed3053() => [
      'foo',
      'foo',
    ];

void checkUnnamed3053(core.List<core.String> o) {
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

core.int buildCounterAccessPolicy = 0;
api.AccessPolicy buildAccessPolicy() {
  final o = api.AccessPolicy();
  buildCounterAccessPolicy++;
  if (buildCounterAccessPolicy < 3) {
    o.allowed = true;
    o.exception = buildUnnamed3053();
  }
  buildCounterAccessPolicy--;
  return o;
}

void checkAccessPolicy(api.AccessPolicy o) {
  buildCounterAccessPolicy++;
  if (buildCounterAccessPolicy < 3) {
    unittest.expect(o.allowed!, unittest.isTrue);
    checkUnnamed3053(o.exception!);
  }
  buildCounterAccessPolicy--;
}

core.int buildCounterActivity = 0;
api.Activity buildActivity() {
  final o = api.Activity();
  buildCounterActivity++;
  if (buildCounterActivity < 3) {
    o.contentDetails = buildActivityContentDetails();
    o.etag = 'foo';
    o.id = 'foo';
    o.kind = 'foo';
    o.snippet = buildActivitySnippet();
  }
  buildCounterActivity--;
  return o;
}

void checkActivity(api.Activity o) {
  buildCounterActivity++;
  if (buildCounterActivity < 3) {
    checkActivityContentDetails(o.contentDetails!);
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
    checkActivitySnippet(o.snippet!);
  }
  buildCounterActivity--;
}

core.int buildCounterActivityContentDetails = 0;
api.ActivityContentDetails buildActivityContentDetails() {
  final o = api.ActivityContentDetails();
  buildCounterActivityContentDetails++;
  if (buildCounterActivityContentDetails < 3) {
    o.bulletin = buildActivityContentDetailsBulletin();
    o.channelItem = buildActivityContentDetailsChannelItem();
    o.comment = buildActivityContentDetailsComment();
    o.favorite = buildActivityContentDetailsFavorite();
    o.like = buildActivityContentDetailsLike();
    o.playlistItem = buildActivityContentDetailsPlaylistItem();
    o.promotedItem = buildActivityContentDetailsPromotedItem();
    o.recommendation = buildActivityContentDetailsRecommendation();
    o.social = buildActivityContentDetailsSocial();
    o.subscription = buildActivityContentDetailsSubscription();
    o.upload = buildActivityContentDetailsUpload();
  }
  buildCounterActivityContentDetails--;
  return o;
}

void checkActivityContentDetails(api.ActivityContentDetails o) {
  buildCounterActivityContentDetails++;
  if (buildCounterActivityContentDetails < 3) {
    checkActivityContentDetailsBulletin(o.bulletin!);
    checkActivityContentDetailsChannelItem(o.channelItem!);
    checkActivityContentDetailsComment(o.comment!);
    checkActivityContentDetailsFavorite(o.favorite!);
    checkActivityContentDetailsLike(o.like!);
    checkActivityContentDetailsPlaylistItem(o.playlistItem!);
    checkActivityContentDetailsPromotedItem(o.promotedItem!);
    checkActivityContentDetailsRecommendation(o.recommendation!);
    checkActivityContentDetailsSocial(o.social!);
    checkActivityContentDetailsSubscription(o.subscription!);
    checkActivityContentDetailsUpload(o.upload!);
  }
  buildCounterActivityContentDetails--;
}

core.int buildCounterActivityContentDetailsBulletin = 0;
api.ActivityContentDetailsBulletin buildActivityContentDetailsBulletin() {
  final o = api.ActivityContentDetailsBulletin();
  buildCounterActivityContentDetailsBulletin++;
  if (buildCounterActivityContentDetailsBulletin < 3) {
    o.resourceId = buildResourceId();
  }
  buildCounterActivityContentDetailsBulletin--;
  return o;
}

void checkActivityContentDetailsBulletin(api.ActivityContentDetailsBulletin o) {
  buildCounterActivityContentDetailsBulletin++;
  if (buildCounterActivityContentDetailsBulletin < 3) {
    checkResourceId(o.resourceId!);
  }
  buildCounterActivityContentDetailsBulletin--;
}

core.int buildCounterActivityContentDetailsChannelItem = 0;
api.ActivityContentDetailsChannelItem buildActivityContentDetailsChannelItem() {
  final o = api.ActivityContentDetailsChannelItem();
  buildCounterActivityContentDetailsChannelItem++;
  if (buildCounterActivityContentDetailsChannelItem < 3) {
    o.resourceId = buildResourceId();
  }
  buildCounterActivityContentDetailsChannelItem--;
  return o;
}

void checkActivityContentDetailsChannelItem(
    api.ActivityContentDetailsChannelItem o) {
  buildCounterActivityContentDetailsChannelItem++;
  if (buildCounterActivityContentDetailsChannelItem < 3) {
    checkResourceId(o.resourceId!);
  }
  buildCounterActivityContentDetailsChannelItem--;
}

core.int buildCounterActivityContentDetailsComment = 0;
api.ActivityContentDetailsComment buildActivityContentDetailsComment() {
  final o = api.ActivityContentDetailsComment();
  buildCounterActivityContentDetailsComment++;
  if (buildCounterActivityContentDetailsComment < 3) {
    o.resourceId = buildResourceId();
  }
  buildCounterActivityContentDetailsComment--;
  return o;
}

void checkActivityContentDetailsComment(api.ActivityContentDetailsComment o) {
  buildCounterActivityContentDetailsComment++;
  if (buildCounterActivityContentDetailsComment < 3) {
    checkResourceId(o.resourceId!);
  }
  buildCounterActivityContentDetailsComment--;
}

core.int buildCounterActivityContentDetailsFavorite = 0;
api.ActivityContentDetailsFavorite buildActivityContentDetailsFavorite() {
  final o = api.ActivityContentDetailsFavorite();
  buildCounterActivityContentDetailsFavorite++;
  if (buildCounterActivityContentDetailsFavorite < 3) {
    o.resourceId = buildResourceId();
  }
  buildCounterActivityContentDetailsFavorite--;
  return o;
}

void checkActivityContentDetailsFavorite(api.ActivityContentDetailsFavorite o) {
  buildCounterActivityContentDetailsFavorite++;
  if (buildCounterActivityContentDetailsFavorite < 3) {
    checkResourceId(o.resourceId!);
  }
  buildCounterActivityContentDetailsFavorite--;
}

core.int buildCounterActivityContentDetailsLike = 0;
api.ActivityContentDetailsLike buildActivityContentDetailsLike() {
  final o = api.ActivityContentDetailsLike();
  buildCounterActivityContentDetailsLike++;
  if (buildCounterActivityContentDetailsLike < 3) {
    o.resourceId = buildResourceId();
  }
  buildCounterActivityContentDetailsLike--;
  return o;
}

void checkActivityContentDetailsLike(api.ActivityContentDetailsLike o) {
  buildCounterActivityContentDetailsLike++;
  if (buildCounterActivityContentDetailsLike < 3) {
    checkResourceId(o.resourceId!);
  }
  buildCounterActivityContentDetailsLike--;
}

core.int buildCounterActivityContentDetailsPlaylistItem = 0;
api.ActivityContentDetailsPlaylistItem
    buildActivityContentDetailsPlaylistItem() {
  final o = api.ActivityContentDetailsPlaylistItem();
  buildCounterActivityContentDetailsPlaylistItem++;
  if (buildCounterActivityContentDetailsPlaylistItem < 3) {
    o.playlistId = 'foo';
    o.playlistItemId = 'foo';
    o.resourceId = buildResourceId();
  }
  buildCounterActivityContentDetailsPlaylistItem--;
  return o;
}

void checkActivityContentDetailsPlaylistItem(
    api.ActivityContentDetailsPlaylistItem o) {
  buildCounterActivityContentDetailsPlaylistItem++;
  if (buildCounterActivityContentDetailsPlaylistItem < 3) {
    unittest.expect(
      o.playlistId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.playlistItemId!,
      unittest.equals('foo'),
    );
    checkResourceId(o.resourceId!);
  }
  buildCounterActivityContentDetailsPlaylistItem--;
}

core.List<core.String> buildUnnamed3054() => [
      'foo',
      'foo',
    ];

void checkUnnamed3054(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed3055() => [
      'foo',
      'foo',
    ];

void checkUnnamed3055(core.List<core.String> o) {
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

core.int buildCounterActivityContentDetailsPromotedItem = 0;
api.ActivityContentDetailsPromotedItem
    buildActivityContentDetailsPromotedItem() {
  final o = api.ActivityContentDetailsPromotedItem();
  buildCounterActivityContentDetailsPromotedItem++;
  if (buildCounterActivityContentDetailsPromotedItem < 3) {
    o.adTag = 'foo';
    o.clickTrackingUrl = 'foo';
    o.creativeViewUrl = 'foo';
    o.ctaType = 'foo';
    o.customCtaButtonText = 'foo';
    o.descriptionText = 'foo';
    o.destinationUrl = 'foo';
    o.forecastingUrl = buildUnnamed3054();
    o.impressionUrl = buildUnnamed3055();
    o.videoId = 'foo';
  }
  buildCounterActivityContentDetailsPromotedItem--;
  return o;
}

void checkActivityContentDetailsPromotedItem(
    api.ActivityContentDetailsPromotedItem o) {
  buildCounterActivityContentDetailsPromotedItem++;
  if (buildCounterActivityContentDetailsPromotedItem < 3) {
    unittest.expect(
      o.adTag!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.clickTrackingUrl!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.creativeViewUrl!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.ctaType!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.customCtaButtonText!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.descriptionText!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.destinationUrl!,
      unittest.equals('foo'),
    );
    checkUnnamed3054(o.forecastingUrl!);
    checkUnnamed3055(o.impressionUrl!);
    unittest.expect(
      o.videoId!,
      unittest.equals('foo'),
    );
  }
  buildCounterActivityContentDetailsPromotedItem--;
}

core.int buildCounterActivityContentDetailsRecommendation = 0;
api.ActivityContentDetailsRecommendation
    buildActivityContentDetailsRecommendation() {
  final o = api.ActivityContentDetailsRecommendation();
  buildCounterActivityContentDetailsRecommendation++;
  if (buildCounterActivityContentDetailsRecommendation < 3) {
    o.reason = 'foo';
    o.resourceId = buildResourceId();
    o.seedResourceId = buildResourceId();
  }
  buildCounterActivityContentDetailsRecommendation--;
  return o;
}

void checkActivityContentDetailsRecommendation(
    api.ActivityContentDetailsRecommendation o) {
  buildCounterActivityContentDetailsRecommendation++;
  if (buildCounterActivityContentDetailsRecommendation < 3) {
    unittest.expect(
      o.reason!,
      unittest.equals('foo'),
    );
    checkResourceId(o.resourceId!);
    checkResourceId(o.seedResourceId!);
  }
  buildCounterActivityContentDetailsRecommendation--;
}

core.int buildCounterActivityContentDetailsSocial = 0;
api.ActivityContentDetailsSocial buildActivityContentDetailsSocial() {
  final o = api.ActivityContentDetailsSocial();
  buildCounterActivityContentDetailsSocial++;
  if (buildCounterActivityContentDetailsSocial < 3) {
    o.author = 'foo';
    o.imageUrl = 'foo';
    o.referenceUrl = 'foo';
    o.resourceId = buildResourceId();
    o.type = 'foo';
  }
  buildCounterActivityContentDetailsSocial--;
  return o;
}

void checkActivityContentDetailsSocial(api.ActivityContentDetailsSocial o) {
  buildCounterActivityContentDetailsSocial++;
  if (buildCounterActivityContentDetailsSocial < 3) {
    unittest.expect(
      o.author!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.imageUrl!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.referenceUrl!,
      unittest.equals('foo'),
    );
    checkResourceId(o.resourceId!);
    unittest.expect(
      o.type!,
      unittest.equals('foo'),
    );
  }
  buildCounterActivityContentDetailsSocial--;
}

core.int buildCounterActivityContentDetailsSubscription = 0;
api.ActivityContentDetailsSubscription
    buildActivityContentDetailsSubscription() {
  final o = api.ActivityContentDetailsSubscription();
  buildCounterActivityContentDetailsSubscription++;
  if (buildCounterActivityContentDetailsSubscription < 3) {
    o.resourceId = buildResourceId();
  }
  buildCounterActivityContentDetailsSubscription--;
  return o;
}

void checkActivityContentDetailsSubscription(
    api.ActivityContentDetailsSubscription o) {
  buildCounterActivityContentDetailsSubscription++;
  if (buildCounterActivityContentDetailsSubscription < 3) {
    checkResourceId(o.resourceId!);
  }
  buildCounterActivityContentDetailsSubscription--;
}

core.int buildCounterActivityContentDetailsUpload = 0;
api.ActivityContentDetailsUpload buildActivityContentDetailsUpload() {
  final o = api.ActivityContentDetailsUpload();
  buildCounterActivityContentDetailsUpload++;
  if (buildCounterActivityContentDetailsUpload < 3) {
    o.videoId = 'foo';
  }
  buildCounterActivityContentDetailsUpload--;
  return o;
}

void checkActivityContentDetailsUpload(api.ActivityContentDetailsUpload o) {
  buildCounterActivityContentDetailsUpload++;
  if (buildCounterActivityContentDetailsUpload < 3) {
    unittest.expect(
      o.videoId!,
      unittest.equals('foo'),
    );
  }
  buildCounterActivityContentDetailsUpload--;
}

core.List<api.Activity> buildUnnamed3056() => [
      buildActivity(),
      buildActivity(),
    ];

void checkUnnamed3056(core.List<api.Activity> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkActivity(o[0]);
  checkActivity(o[1]);
}

core.int buildCounterActivityListResponse = 0;
api.ActivityListResponse buildActivityListResponse() {
  final o = api.ActivityListResponse();
  buildCounterActivityListResponse++;
  if (buildCounterActivityListResponse < 3) {
    o.etag = 'foo';
    o.eventId = 'foo';
    o.items = buildUnnamed3056();
    o.kind = 'foo';
    o.nextPageToken = 'foo';
    o.pageInfo = buildPageInfo();
    o.prevPageToken = 'foo';
    o.tokenPagination = buildTokenPagination();
    o.visitorId = 'foo';
  }
  buildCounterActivityListResponse--;
  return o;
}

void checkActivityListResponse(api.ActivityListResponse o) {
  buildCounterActivityListResponse++;
  if (buildCounterActivityListResponse < 3) {
    unittest.expect(
      o.etag!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.eventId!,
      unittest.equals('foo'),
    );
    checkUnnamed3056(o.items!);
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkPageInfo(o.pageInfo!);
    unittest.expect(
      o.prevPageToken!,
      unittest.equals('foo'),
    );
    checkTokenPagination(o.tokenPagination!);
    unittest.expect(
      o.visitorId!,
      unittest.equals('foo'),
    );
  }
  buildCounterActivityListResponse--;
}

core.int buildCounterActivitySnippet = 0;
api.ActivitySnippet buildActivitySnippet() {
  final o = api.ActivitySnippet();
  buildCounterActivitySnippet++;
  if (buildCounterActivitySnippet < 3) {
    o.channelId = 'foo';
    o.channelTitle = 'foo';
    o.description = 'foo';
    o.groupId = 'foo';
    o.publishedAt = core.DateTime.parse('2002-02-27T14:01:02');
    o.thumbnails = buildThumbnailDetails();
    o.title = 'foo';
    o.type = 'foo';
  }
  buildCounterActivitySnippet--;
  return o;
}

void checkActivitySnippet(api.ActivitySnippet o) {
  buildCounterActivitySnippet++;
  if (buildCounterActivitySnippet < 3) {
    unittest.expect(
      o.channelId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.channelTitle!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.description!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.groupId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.publishedAt!,
      unittest.equals(core.DateTime.parse('2002-02-27T14:01:02')),
    );
    checkThumbnailDetails(o.thumbnails!);
    unittest.expect(
      o.title!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.type!,
      unittest.equals('foo'),
    );
  }
  buildCounterActivitySnippet--;
}

core.int buildCounterCaption = 0;
api.Caption buildCaption() {
  final o = api.Caption();
  buildCounterCaption++;
  if (buildCounterCaption < 3) {
    o.etag = 'foo';
    o.id = 'foo';
    o.kind = 'foo';
    o.snippet = buildCaptionSnippet();
  }
  buildCounterCaption--;
  return o;
}

void checkCaption(api.Caption o) {
  buildCounterCaption++;
  if (buildCounterCaption < 3) {
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
    checkCaptionSnippet(o.snippet!);
  }
  buildCounterCaption--;
}

core.List<api.Caption> buildUnnamed3057() => [
      buildCaption(),
      buildCaption(),
    ];

void checkUnnamed3057(core.List<api.Caption> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCaption(o[0]);
  checkCaption(o[1]);
}

core.int buildCounterCaptionListResponse = 0;
api.CaptionListResponse buildCaptionListResponse() {
  final o = api.CaptionListResponse();
  buildCounterCaptionListResponse++;
  if (buildCounterCaptionListResponse < 3) {
    o.etag = 'foo';
    o.eventId = 'foo';
    o.items = buildUnnamed3057();
    o.kind = 'foo';
    o.visitorId = 'foo';
  }
  buildCounterCaptionListResponse--;
  return o;
}

void checkCaptionListResponse(api.CaptionListResponse o) {
  buildCounterCaptionListResponse++;
  if (buildCounterCaptionListResponse < 3) {
    unittest.expect(
      o.etag!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.eventId!,
      unittest.equals('foo'),
    );
    checkUnnamed3057(o.items!);
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.visitorId!,
      unittest.equals('foo'),
    );
  }
  buildCounterCaptionListResponse--;
}

core.int buildCounterCaptionSnippet = 0;
api.CaptionSnippet buildCaptionSnippet() {
  final o = api.CaptionSnippet();
  buildCounterCaptionSnippet++;
  if (buildCounterCaptionSnippet < 3) {
    o.audioTrackType = 'foo';
    o.failureReason = 'foo';
    o.isAutoSynced = true;
    o.isCC = true;
    o.isDraft = true;
    o.isEasyReader = true;
    o.isLarge = true;
    o.language = 'foo';
    o.lastUpdated = core.DateTime.parse('2002-02-27T14:01:02');
    o.name = 'foo';
    o.status = 'foo';
    o.trackKind = 'foo';
    o.videoId = 'foo';
  }
  buildCounterCaptionSnippet--;
  return o;
}

void checkCaptionSnippet(api.CaptionSnippet o) {
  buildCounterCaptionSnippet++;
  if (buildCounterCaptionSnippet < 3) {
    unittest.expect(
      o.audioTrackType!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.failureReason!,
      unittest.equals('foo'),
    );
    unittest.expect(o.isAutoSynced!, unittest.isTrue);
    unittest.expect(o.isCC!, unittest.isTrue);
    unittest.expect(o.isDraft!, unittest.isTrue);
    unittest.expect(o.isEasyReader!, unittest.isTrue);
    unittest.expect(o.isLarge!, unittest.isTrue);
    unittest.expect(
      o.language!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.lastUpdated!,
      unittest.equals(core.DateTime.parse('2002-02-27T14:01:02')),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.status!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.trackKind!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.videoId!,
      unittest.equals('foo'),
    );
  }
  buildCounterCaptionSnippet--;
}

core.int buildCounterCdnSettings = 0;
api.CdnSettings buildCdnSettings() {
  final o = api.CdnSettings();
  buildCounterCdnSettings++;
  if (buildCounterCdnSettings < 3) {
    o.format = 'foo';
    o.frameRate = 'foo';
    o.ingestionInfo = buildIngestionInfo();
    o.ingestionType = 'foo';
    o.resolution = 'foo';
  }
  buildCounterCdnSettings--;
  return o;
}

void checkCdnSettings(api.CdnSettings o) {
  buildCounterCdnSettings++;
  if (buildCounterCdnSettings < 3) {
    unittest.expect(
      o.format!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.frameRate!,
      unittest.equals('foo'),
    );
    checkIngestionInfo(o.ingestionInfo!);
    unittest.expect(
      o.ingestionType!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.resolution!,
      unittest.equals('foo'),
    );
  }
  buildCounterCdnSettings--;
}

core.Map<core.String, api.ChannelLocalization> buildUnnamed3058() => {
      'x': buildChannelLocalization(),
      'y': buildChannelLocalization(),
    };

void checkUnnamed3058(core.Map<core.String, api.ChannelLocalization> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkChannelLocalization(o['x']!);
  checkChannelLocalization(o['y']!);
}

core.int buildCounterChannel = 0;
api.Channel buildChannel() {
  final o = api.Channel();
  buildCounterChannel++;
  if (buildCounterChannel < 3) {
    o.auditDetails = buildChannelAuditDetails();
    o.brandingSettings = buildChannelBrandingSettings();
    o.contentDetails = buildChannelContentDetails();
    o.contentOwnerDetails = buildChannelContentOwnerDetails();
    o.conversionPings = buildChannelConversionPings();
    o.etag = 'foo';
    o.id = 'foo';
    o.kind = 'foo';
    o.localizations = buildUnnamed3058();
    o.snippet = buildChannelSnippet();
    o.statistics = buildChannelStatistics();
    o.status = buildChannelStatus();
    o.topicDetails = buildChannelTopicDetails();
  }
  buildCounterChannel--;
  return o;
}

void checkChannel(api.Channel o) {
  buildCounterChannel++;
  if (buildCounterChannel < 3) {
    checkChannelAuditDetails(o.auditDetails!);
    checkChannelBrandingSettings(o.brandingSettings!);
    checkChannelContentDetails(o.contentDetails!);
    checkChannelContentOwnerDetails(o.contentOwnerDetails!);
    checkChannelConversionPings(o.conversionPings!);
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
    checkUnnamed3058(o.localizations!);
    checkChannelSnippet(o.snippet!);
    checkChannelStatistics(o.statistics!);
    checkChannelStatus(o.status!);
    checkChannelTopicDetails(o.topicDetails!);
  }
  buildCounterChannel--;
}

core.int buildCounterChannelAuditDetails = 0;
api.ChannelAuditDetails buildChannelAuditDetails() {
  final o = api.ChannelAuditDetails();
  buildCounterChannelAuditDetails++;
  if (buildCounterChannelAuditDetails < 3) {
    o.communityGuidelinesGoodStanding = true;
    o.contentIdClaimsGoodStanding = true;
    o.copyrightStrikesGoodStanding = true;
  }
  buildCounterChannelAuditDetails--;
  return o;
}

void checkChannelAuditDetails(api.ChannelAuditDetails o) {
  buildCounterChannelAuditDetails++;
  if (buildCounterChannelAuditDetails < 3) {
    unittest.expect(o.communityGuidelinesGoodStanding!, unittest.isTrue);
    unittest.expect(o.contentIdClaimsGoodStanding!, unittest.isTrue);
    unittest.expect(o.copyrightStrikesGoodStanding!, unittest.isTrue);
  }
  buildCounterChannelAuditDetails--;
}

core.int buildCounterChannelBannerResource = 0;
api.ChannelBannerResource buildChannelBannerResource() {
  final o = api.ChannelBannerResource();
  buildCounterChannelBannerResource++;
  if (buildCounterChannelBannerResource < 3) {
    o.etag = 'foo';
    o.kind = 'foo';
    o.url = 'foo';
  }
  buildCounterChannelBannerResource--;
  return o;
}

void checkChannelBannerResource(api.ChannelBannerResource o) {
  buildCounterChannelBannerResource++;
  if (buildCounterChannelBannerResource < 3) {
    unittest.expect(
      o.etag!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.url!,
      unittest.equals('foo'),
    );
  }
  buildCounterChannelBannerResource--;
}

core.List<api.PropertyValue> buildUnnamed3059() => [
      buildPropertyValue(),
      buildPropertyValue(),
    ];

void checkUnnamed3059(core.List<api.PropertyValue> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPropertyValue(o[0]);
  checkPropertyValue(o[1]);
}

core.int buildCounterChannelBrandingSettings = 0;
api.ChannelBrandingSettings buildChannelBrandingSettings() {
  final o = api.ChannelBrandingSettings();
  buildCounterChannelBrandingSettings++;
  if (buildCounterChannelBrandingSettings < 3) {
    o.channel = buildChannelSettings();
    o.hints = buildUnnamed3059();
    o.image = buildImageSettings();
    o.watch = buildWatchSettings();
  }
  buildCounterChannelBrandingSettings--;
  return o;
}

void checkChannelBrandingSettings(api.ChannelBrandingSettings o) {
  buildCounterChannelBrandingSettings++;
  if (buildCounterChannelBrandingSettings < 3) {
    checkChannelSettings(o.channel!);
    checkUnnamed3059(o.hints!);
    checkImageSettings(o.image!);
    checkWatchSettings(o.watch!);
  }
  buildCounterChannelBrandingSettings--;
}

core.int buildCounterChannelContentDetailsRelatedPlaylists = 0;
api.ChannelContentDetailsRelatedPlaylists
    buildChannelContentDetailsRelatedPlaylists() {
  final o = api.ChannelContentDetailsRelatedPlaylists();
  buildCounterChannelContentDetailsRelatedPlaylists++;
  if (buildCounterChannelContentDetailsRelatedPlaylists < 3) {
    o.favorites = 'foo';
    o.likes = 'foo';
    o.uploads = 'foo';
    o.watchHistory = 'foo';
    o.watchLater = 'foo';
  }
  buildCounterChannelContentDetailsRelatedPlaylists--;
  return o;
}

void checkChannelContentDetailsRelatedPlaylists(
    api.ChannelContentDetailsRelatedPlaylists o) {
  buildCounterChannelContentDetailsRelatedPlaylists++;
  if (buildCounterChannelContentDetailsRelatedPlaylists < 3) {
    unittest.expect(
      o.favorites!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.likes!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.uploads!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.watchHistory!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.watchLater!,
      unittest.equals('foo'),
    );
  }
  buildCounterChannelContentDetailsRelatedPlaylists--;
}

core.int buildCounterChannelContentDetails = 0;
api.ChannelContentDetails buildChannelContentDetails() {
  final o = api.ChannelContentDetails();
  buildCounterChannelContentDetails++;
  if (buildCounterChannelContentDetails < 3) {
    o.relatedPlaylists = buildChannelContentDetailsRelatedPlaylists();
  }
  buildCounterChannelContentDetails--;
  return o;
}

void checkChannelContentDetails(api.ChannelContentDetails o) {
  buildCounterChannelContentDetails++;
  if (buildCounterChannelContentDetails < 3) {
    checkChannelContentDetailsRelatedPlaylists(o.relatedPlaylists!);
  }
  buildCounterChannelContentDetails--;
}

core.int buildCounterChannelContentOwnerDetails = 0;
api.ChannelContentOwnerDetails buildChannelContentOwnerDetails() {
  final o = api.ChannelContentOwnerDetails();
  buildCounterChannelContentOwnerDetails++;
  if (buildCounterChannelContentOwnerDetails < 3) {
    o.contentOwner = 'foo';
    o.timeLinked = core.DateTime.parse('2002-02-27T14:01:02');
  }
  buildCounterChannelContentOwnerDetails--;
  return o;
}

void checkChannelContentOwnerDetails(api.ChannelContentOwnerDetails o) {
  buildCounterChannelContentOwnerDetails++;
  if (buildCounterChannelContentOwnerDetails < 3) {
    unittest.expect(
      o.contentOwner!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.timeLinked!,
      unittest.equals(core.DateTime.parse('2002-02-27T14:01:02')),
    );
  }
  buildCounterChannelContentOwnerDetails--;
}

core.int buildCounterChannelConversionPing = 0;
api.ChannelConversionPing buildChannelConversionPing() {
  final o = api.ChannelConversionPing();
  buildCounterChannelConversionPing++;
  if (buildCounterChannelConversionPing < 3) {
    o.context = 'foo';
    o.conversionUrl = 'foo';
  }
  buildCounterChannelConversionPing--;
  return o;
}

void checkChannelConversionPing(api.ChannelConversionPing o) {
  buildCounterChannelConversionPing++;
  if (buildCounterChannelConversionPing < 3) {
    unittest.expect(
      o.context!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.conversionUrl!,
      unittest.equals('foo'),
    );
  }
  buildCounterChannelConversionPing--;
}

core.List<api.ChannelConversionPing> buildUnnamed3060() => [
      buildChannelConversionPing(),
      buildChannelConversionPing(),
    ];

void checkUnnamed3060(core.List<api.ChannelConversionPing> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkChannelConversionPing(o[0]);
  checkChannelConversionPing(o[1]);
}

core.int buildCounterChannelConversionPings = 0;
api.ChannelConversionPings buildChannelConversionPings() {
  final o = api.ChannelConversionPings();
  buildCounterChannelConversionPings++;
  if (buildCounterChannelConversionPings < 3) {
    o.pings = buildUnnamed3060();
  }
  buildCounterChannelConversionPings--;
  return o;
}

void checkChannelConversionPings(api.ChannelConversionPings o) {
  buildCounterChannelConversionPings++;
  if (buildCounterChannelConversionPings < 3) {
    checkUnnamed3060(o.pings!);
  }
  buildCounterChannelConversionPings--;
}

core.List<api.Channel> buildUnnamed3061() => [
      buildChannel(),
      buildChannel(),
    ];

void checkUnnamed3061(core.List<api.Channel> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkChannel(o[0]);
  checkChannel(o[1]);
}

core.int buildCounterChannelListResponse = 0;
api.ChannelListResponse buildChannelListResponse() {
  final o = api.ChannelListResponse();
  buildCounterChannelListResponse++;
  if (buildCounterChannelListResponse < 3) {
    o.etag = 'foo';
    o.eventId = 'foo';
    o.items = buildUnnamed3061();
    o.kind = 'foo';
    o.nextPageToken = 'foo';
    o.pageInfo = buildPageInfo();
    o.prevPageToken = 'foo';
    o.tokenPagination = buildTokenPagination();
    o.visitorId = 'foo';
  }
  buildCounterChannelListResponse--;
  return o;
}

void checkChannelListResponse(api.ChannelListResponse o) {
  buildCounterChannelListResponse++;
  if (buildCounterChannelListResponse < 3) {
    unittest.expect(
      o.etag!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.eventId!,
      unittest.equals('foo'),
    );
    checkUnnamed3061(o.items!);
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkPageInfo(o.pageInfo!);
    unittest.expect(
      o.prevPageToken!,
      unittest.equals('foo'),
    );
    checkTokenPagination(o.tokenPagination!);
    unittest.expect(
      o.visitorId!,
      unittest.equals('foo'),
    );
  }
  buildCounterChannelListResponse--;
}

core.int buildCounterChannelLocalization = 0;
api.ChannelLocalization buildChannelLocalization() {
  final o = api.ChannelLocalization();
  buildCounterChannelLocalization++;
  if (buildCounterChannelLocalization < 3) {
    o.description = 'foo';
    o.title = 'foo';
  }
  buildCounterChannelLocalization--;
  return o;
}

void checkChannelLocalization(api.ChannelLocalization o) {
  buildCounterChannelLocalization++;
  if (buildCounterChannelLocalization < 3) {
    unittest.expect(
      o.description!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.title!,
      unittest.equals('foo'),
    );
  }
  buildCounterChannelLocalization--;
}

core.int buildCounterChannelProfileDetails = 0;
api.ChannelProfileDetails buildChannelProfileDetails() {
  final o = api.ChannelProfileDetails();
  buildCounterChannelProfileDetails++;
  if (buildCounterChannelProfileDetails < 3) {
    o.channelId = 'foo';
    o.channelUrl = 'foo';
    o.displayName = 'foo';
    o.profileImageUrl = 'foo';
  }
  buildCounterChannelProfileDetails--;
  return o;
}

void checkChannelProfileDetails(api.ChannelProfileDetails o) {
  buildCounterChannelProfileDetails++;
  if (buildCounterChannelProfileDetails < 3) {
    unittest.expect(
      o.channelId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.channelUrl!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.displayName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.profileImageUrl!,
      unittest.equals('foo'),
    );
  }
  buildCounterChannelProfileDetails--;
}

core.Map<core.String, api.ChannelSectionLocalization> buildUnnamed3062() => {
      'x': buildChannelSectionLocalization(),
      'y': buildChannelSectionLocalization(),
    };

void checkUnnamed3062(core.Map<core.String, api.ChannelSectionLocalization> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkChannelSectionLocalization(o['x']!);
  checkChannelSectionLocalization(o['y']!);
}

core.int buildCounterChannelSection = 0;
api.ChannelSection buildChannelSection() {
  final o = api.ChannelSection();
  buildCounterChannelSection++;
  if (buildCounterChannelSection < 3) {
    o.contentDetails = buildChannelSectionContentDetails();
    o.etag = 'foo';
    o.id = 'foo';
    o.kind = 'foo';
    o.localizations = buildUnnamed3062();
    o.snippet = buildChannelSectionSnippet();
    o.targeting = buildChannelSectionTargeting();
  }
  buildCounterChannelSection--;
  return o;
}

void checkChannelSection(api.ChannelSection o) {
  buildCounterChannelSection++;
  if (buildCounterChannelSection < 3) {
    checkChannelSectionContentDetails(o.contentDetails!);
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
    checkUnnamed3062(o.localizations!);
    checkChannelSectionSnippet(o.snippet!);
    checkChannelSectionTargeting(o.targeting!);
  }
  buildCounterChannelSection--;
}

core.List<core.String> buildUnnamed3063() => [
      'foo',
      'foo',
    ];

void checkUnnamed3063(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed3064() => [
      'foo',
      'foo',
    ];

void checkUnnamed3064(core.List<core.String> o) {
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

core.int buildCounterChannelSectionContentDetails = 0;
api.ChannelSectionContentDetails buildChannelSectionContentDetails() {
  final o = api.ChannelSectionContentDetails();
  buildCounterChannelSectionContentDetails++;
  if (buildCounterChannelSectionContentDetails < 3) {
    o.channels = buildUnnamed3063();
    o.playlists = buildUnnamed3064();
  }
  buildCounterChannelSectionContentDetails--;
  return o;
}

void checkChannelSectionContentDetails(api.ChannelSectionContentDetails o) {
  buildCounterChannelSectionContentDetails++;
  if (buildCounterChannelSectionContentDetails < 3) {
    checkUnnamed3063(o.channels!);
    checkUnnamed3064(o.playlists!);
  }
  buildCounterChannelSectionContentDetails--;
}

core.List<api.ChannelSection> buildUnnamed3065() => [
      buildChannelSection(),
      buildChannelSection(),
    ];

void checkUnnamed3065(core.List<api.ChannelSection> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkChannelSection(o[0]);
  checkChannelSection(o[1]);
}

core.int buildCounterChannelSectionListResponse = 0;
api.ChannelSectionListResponse buildChannelSectionListResponse() {
  final o = api.ChannelSectionListResponse();
  buildCounterChannelSectionListResponse++;
  if (buildCounterChannelSectionListResponse < 3) {
    o.etag = 'foo';
    o.eventId = 'foo';
    o.items = buildUnnamed3065();
    o.kind = 'foo';
    o.visitorId = 'foo';
  }
  buildCounterChannelSectionListResponse--;
  return o;
}

void checkChannelSectionListResponse(api.ChannelSectionListResponse o) {
  buildCounterChannelSectionListResponse++;
  if (buildCounterChannelSectionListResponse < 3) {
    unittest.expect(
      o.etag!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.eventId!,
      unittest.equals('foo'),
    );
    checkUnnamed3065(o.items!);
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.visitorId!,
      unittest.equals('foo'),
    );
  }
  buildCounterChannelSectionListResponse--;
}

core.int buildCounterChannelSectionLocalization = 0;
api.ChannelSectionLocalization buildChannelSectionLocalization() {
  final o = api.ChannelSectionLocalization();
  buildCounterChannelSectionLocalization++;
  if (buildCounterChannelSectionLocalization < 3) {
    o.title = 'foo';
  }
  buildCounterChannelSectionLocalization--;
  return o;
}

void checkChannelSectionLocalization(api.ChannelSectionLocalization o) {
  buildCounterChannelSectionLocalization++;
  if (buildCounterChannelSectionLocalization < 3) {
    unittest.expect(
      o.title!,
      unittest.equals('foo'),
    );
  }
  buildCounterChannelSectionLocalization--;
}

core.int buildCounterChannelSectionSnippet = 0;
api.ChannelSectionSnippet buildChannelSectionSnippet() {
  final o = api.ChannelSectionSnippet();
  buildCounterChannelSectionSnippet++;
  if (buildCounterChannelSectionSnippet < 3) {
    o.channelId = 'foo';
    o.defaultLanguage = 'foo';
    o.localized = buildChannelSectionLocalization();
    o.position = 42;
    o.style = 'foo';
    o.title = 'foo';
    o.type = 'foo';
  }
  buildCounterChannelSectionSnippet--;
  return o;
}

void checkChannelSectionSnippet(api.ChannelSectionSnippet o) {
  buildCounterChannelSectionSnippet++;
  if (buildCounterChannelSectionSnippet < 3) {
    unittest.expect(
      o.channelId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.defaultLanguage!,
      unittest.equals('foo'),
    );
    checkChannelSectionLocalization(o.localized!);
    unittest.expect(
      o.position!,
      unittest.equals(42),
    );
    unittest.expect(
      o.style!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.title!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.type!,
      unittest.equals('foo'),
    );
  }
  buildCounterChannelSectionSnippet--;
}

core.List<core.String> buildUnnamed3066() => [
      'foo',
      'foo',
    ];

void checkUnnamed3066(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed3067() => [
      'foo',
      'foo',
    ];

void checkUnnamed3067(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed3068() => [
      'foo',
      'foo',
    ];

void checkUnnamed3068(core.List<core.String> o) {
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

core.int buildCounterChannelSectionTargeting = 0;
api.ChannelSectionTargeting buildChannelSectionTargeting() {
  final o = api.ChannelSectionTargeting();
  buildCounterChannelSectionTargeting++;
  if (buildCounterChannelSectionTargeting < 3) {
    o.countries = buildUnnamed3066();
    o.languages = buildUnnamed3067();
    o.regions = buildUnnamed3068();
  }
  buildCounterChannelSectionTargeting--;
  return o;
}

void checkChannelSectionTargeting(api.ChannelSectionTargeting o) {
  buildCounterChannelSectionTargeting++;
  if (buildCounterChannelSectionTargeting < 3) {
    checkUnnamed3066(o.countries!);
    checkUnnamed3067(o.languages!);
    checkUnnamed3068(o.regions!);
  }
  buildCounterChannelSectionTargeting--;
}

core.List<core.String> buildUnnamed3069() => [
      'foo',
      'foo',
    ];

void checkUnnamed3069(core.List<core.String> o) {
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

core.int buildCounterChannelSettings = 0;
api.ChannelSettings buildChannelSettings() {
  final o = api.ChannelSettings();
  buildCounterChannelSettings++;
  if (buildCounterChannelSettings < 3) {
    o.country = 'foo';
    o.defaultLanguage = 'foo';
    o.defaultTab = 'foo';
    o.description = 'foo';
    o.featuredChannelsTitle = 'foo';
    o.featuredChannelsUrls = buildUnnamed3069();
    o.keywords = 'foo';
    o.moderateComments = true;
    o.profileColor = 'foo';
    o.showBrowseView = true;
    o.showRelatedChannels = true;
    o.title = 'foo';
    o.trackingAnalyticsAccountId = 'foo';
    o.unsubscribedTrailer = 'foo';
  }
  buildCounterChannelSettings--;
  return o;
}

void checkChannelSettings(api.ChannelSettings o) {
  buildCounterChannelSettings++;
  if (buildCounterChannelSettings < 3) {
    unittest.expect(
      o.country!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.defaultLanguage!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.defaultTab!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.description!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.featuredChannelsTitle!,
      unittest.equals('foo'),
    );
    checkUnnamed3069(o.featuredChannelsUrls!);
    unittest.expect(
      o.keywords!,
      unittest.equals('foo'),
    );
    unittest.expect(o.moderateComments!, unittest.isTrue);
    unittest.expect(
      o.profileColor!,
      unittest.equals('foo'),
    );
    unittest.expect(o.showBrowseView!, unittest.isTrue);
    unittest.expect(o.showRelatedChannels!, unittest.isTrue);
    unittest.expect(
      o.title!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.trackingAnalyticsAccountId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.unsubscribedTrailer!,
      unittest.equals('foo'),
    );
  }
  buildCounterChannelSettings--;
}

core.int buildCounterChannelSnippet = 0;
api.ChannelSnippet buildChannelSnippet() {
  final o = api.ChannelSnippet();
  buildCounterChannelSnippet++;
  if (buildCounterChannelSnippet < 3) {
    o.country = 'foo';
    o.customUrl = 'foo';
    o.defaultLanguage = 'foo';
    o.description = 'foo';
    o.localized = buildChannelLocalization();
    o.publishedAt = core.DateTime.parse('2002-02-27T14:01:02');
    o.thumbnails = buildThumbnailDetails();
    o.title = 'foo';
  }
  buildCounterChannelSnippet--;
  return o;
}

void checkChannelSnippet(api.ChannelSnippet o) {
  buildCounterChannelSnippet++;
  if (buildCounterChannelSnippet < 3) {
    unittest.expect(
      o.country!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.customUrl!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.defaultLanguage!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.description!,
      unittest.equals('foo'),
    );
    checkChannelLocalization(o.localized!);
    unittest.expect(
      o.publishedAt!,
      unittest.equals(core.DateTime.parse('2002-02-27T14:01:02')),
    );
    checkThumbnailDetails(o.thumbnails!);
    unittest.expect(
      o.title!,
      unittest.equals('foo'),
    );
  }
  buildCounterChannelSnippet--;
}

core.int buildCounterChannelStatistics = 0;
api.ChannelStatistics buildChannelStatistics() {
  final o = api.ChannelStatistics();
  buildCounterChannelStatistics++;
  if (buildCounterChannelStatistics < 3) {
    o.commentCount = 'foo';
    o.hiddenSubscriberCount = true;
    o.subscriberCount = 'foo';
    o.videoCount = 'foo';
    o.viewCount = 'foo';
  }
  buildCounterChannelStatistics--;
  return o;
}

void checkChannelStatistics(api.ChannelStatistics o) {
  buildCounterChannelStatistics++;
  if (buildCounterChannelStatistics < 3) {
    unittest.expect(
      o.commentCount!,
      unittest.equals('foo'),
    );
    unittest.expect(o.hiddenSubscriberCount!, unittest.isTrue);
    unittest.expect(
      o.subscriberCount!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.videoCount!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.viewCount!,
      unittest.equals('foo'),
    );
  }
  buildCounterChannelStatistics--;
}

core.int buildCounterChannelStatus = 0;
api.ChannelStatus buildChannelStatus() {
  final o = api.ChannelStatus();
  buildCounterChannelStatus++;
  if (buildCounterChannelStatus < 3) {
    o.isLinked = true;
    o.longUploadsStatus = 'foo';
    o.madeForKids = true;
    o.privacyStatus = 'foo';
    o.selfDeclaredMadeForKids = true;
  }
  buildCounterChannelStatus--;
  return o;
}

void checkChannelStatus(api.ChannelStatus o) {
  buildCounterChannelStatus++;
  if (buildCounterChannelStatus < 3) {
    unittest.expect(o.isLinked!, unittest.isTrue);
    unittest.expect(
      o.longUploadsStatus!,
      unittest.equals('foo'),
    );
    unittest.expect(o.madeForKids!, unittest.isTrue);
    unittest.expect(
      o.privacyStatus!,
      unittest.equals('foo'),
    );
    unittest.expect(o.selfDeclaredMadeForKids!, unittest.isTrue);
  }
  buildCounterChannelStatus--;
}

core.int buildCounterChannelToStoreLinkDetails = 0;
api.ChannelToStoreLinkDetails buildChannelToStoreLinkDetails() {
  final o = api.ChannelToStoreLinkDetails();
  buildCounterChannelToStoreLinkDetails++;
  if (buildCounterChannelToStoreLinkDetails < 3) {
    o.storeName = 'foo';
    o.storeUrl = 'foo';
  }
  buildCounterChannelToStoreLinkDetails--;
  return o;
}

void checkChannelToStoreLinkDetails(api.ChannelToStoreLinkDetails o) {
  buildCounterChannelToStoreLinkDetails++;
  if (buildCounterChannelToStoreLinkDetails < 3) {
    unittest.expect(
      o.storeName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.storeUrl!,
      unittest.equals('foo'),
    );
  }
  buildCounterChannelToStoreLinkDetails--;
}

core.List<core.String> buildUnnamed3070() => [
      'foo',
      'foo',
    ];

void checkUnnamed3070(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed3071() => [
      'foo',
      'foo',
    ];

void checkUnnamed3071(core.List<core.String> o) {
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

core.int buildCounterChannelTopicDetails = 0;
api.ChannelTopicDetails buildChannelTopicDetails() {
  final o = api.ChannelTopicDetails();
  buildCounterChannelTopicDetails++;
  if (buildCounterChannelTopicDetails < 3) {
    o.topicCategories = buildUnnamed3070();
    o.topicIds = buildUnnamed3071();
  }
  buildCounterChannelTopicDetails--;
  return o;
}

void checkChannelTopicDetails(api.ChannelTopicDetails o) {
  buildCounterChannelTopicDetails++;
  if (buildCounterChannelTopicDetails < 3) {
    checkUnnamed3070(o.topicCategories!);
    checkUnnamed3071(o.topicIds!);
  }
  buildCounterChannelTopicDetails--;
}

core.int buildCounterComment = 0;
api.Comment buildComment() {
  final o = api.Comment();
  buildCounterComment++;
  if (buildCounterComment < 3) {
    o.etag = 'foo';
    o.id = 'foo';
    o.kind = 'foo';
    o.snippet = buildCommentSnippet();
  }
  buildCounterComment--;
  return o;
}

void checkComment(api.Comment o) {
  buildCounterComment++;
  if (buildCounterComment < 3) {
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
    checkCommentSnippet(o.snippet!);
  }
  buildCounterComment--;
}

core.List<api.Comment> buildUnnamed3072() => [
      buildComment(),
      buildComment(),
    ];

void checkUnnamed3072(core.List<api.Comment> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkComment(o[0]);
  checkComment(o[1]);
}

core.int buildCounterCommentListResponse = 0;
api.CommentListResponse buildCommentListResponse() {
  final o = api.CommentListResponse();
  buildCounterCommentListResponse++;
  if (buildCounterCommentListResponse < 3) {
    o.etag = 'foo';
    o.eventId = 'foo';
    o.items = buildUnnamed3072();
    o.kind = 'foo';
    o.nextPageToken = 'foo';
    o.pageInfo = buildPageInfo();
    o.tokenPagination = buildTokenPagination();
    o.visitorId = 'foo';
  }
  buildCounterCommentListResponse--;
  return o;
}

void checkCommentListResponse(api.CommentListResponse o) {
  buildCounterCommentListResponse++;
  if (buildCounterCommentListResponse < 3) {
    unittest.expect(
      o.etag!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.eventId!,
      unittest.equals('foo'),
    );
    checkUnnamed3072(o.items!);
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkPageInfo(o.pageInfo!);
    checkTokenPagination(o.tokenPagination!);
    unittest.expect(
      o.visitorId!,
      unittest.equals('foo'),
    );
  }
  buildCounterCommentListResponse--;
}

core.int buildCounterCommentSnippet = 0;
api.CommentSnippet buildCommentSnippet() {
  final o = api.CommentSnippet();
  buildCounterCommentSnippet++;
  if (buildCounterCommentSnippet < 3) {
    o.authorChannelId = buildCommentSnippetAuthorChannelId();
    o.authorChannelUrl = 'foo';
    o.authorDisplayName = 'foo';
    o.authorProfileImageUrl = 'foo';
    o.canRate = true;
    o.channelId = 'foo';
    o.likeCount = 42;
    o.moderationStatus = 'foo';
    o.parentId = 'foo';
    o.publishedAt = core.DateTime.parse('2002-02-27T14:01:02');
    o.textDisplay = 'foo';
    o.textOriginal = 'foo';
    o.updatedAt = core.DateTime.parse('2002-02-27T14:01:02');
    o.videoId = 'foo';
    o.viewerRating = 'foo';
  }
  buildCounterCommentSnippet--;
  return o;
}

void checkCommentSnippet(api.CommentSnippet o) {
  buildCounterCommentSnippet++;
  if (buildCounterCommentSnippet < 3) {
    checkCommentSnippetAuthorChannelId(o.authorChannelId!);
    unittest.expect(
      o.authorChannelUrl!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.authorDisplayName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.authorProfileImageUrl!,
      unittest.equals('foo'),
    );
    unittest.expect(o.canRate!, unittest.isTrue);
    unittest.expect(
      o.channelId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.likeCount!,
      unittest.equals(42),
    );
    unittest.expect(
      o.moderationStatus!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.parentId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.publishedAt!,
      unittest.equals(core.DateTime.parse('2002-02-27T14:01:02')),
    );
    unittest.expect(
      o.textDisplay!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.textOriginal!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.updatedAt!,
      unittest.equals(core.DateTime.parse('2002-02-27T14:01:02')),
    );
    unittest.expect(
      o.videoId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.viewerRating!,
      unittest.equals('foo'),
    );
  }
  buildCounterCommentSnippet--;
}

core.int buildCounterCommentSnippetAuthorChannelId = 0;
api.CommentSnippetAuthorChannelId buildCommentSnippetAuthorChannelId() {
  final o = api.CommentSnippetAuthorChannelId();
  buildCounterCommentSnippetAuthorChannelId++;
  if (buildCounterCommentSnippetAuthorChannelId < 3) {
    o.value = 'foo';
  }
  buildCounterCommentSnippetAuthorChannelId--;
  return o;
}

void checkCommentSnippetAuthorChannelId(api.CommentSnippetAuthorChannelId o) {
  buildCounterCommentSnippetAuthorChannelId++;
  if (buildCounterCommentSnippetAuthorChannelId < 3) {
    unittest.expect(
      o.value!,
      unittest.equals('foo'),
    );
  }
  buildCounterCommentSnippetAuthorChannelId--;
}

core.int buildCounterCommentThread = 0;
api.CommentThread buildCommentThread() {
  final o = api.CommentThread();
  buildCounterCommentThread++;
  if (buildCounterCommentThread < 3) {
    o.etag = 'foo';
    o.id = 'foo';
    o.kind = 'foo';
    o.replies = buildCommentThreadReplies();
    o.snippet = buildCommentThreadSnippet();
  }
  buildCounterCommentThread--;
  return o;
}

void checkCommentThread(api.CommentThread o) {
  buildCounterCommentThread++;
  if (buildCounterCommentThread < 3) {
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
    checkCommentThreadReplies(o.replies!);
    checkCommentThreadSnippet(o.snippet!);
  }
  buildCounterCommentThread--;
}

core.List<api.CommentThread> buildUnnamed3073() => [
      buildCommentThread(),
      buildCommentThread(),
    ];

void checkUnnamed3073(core.List<api.CommentThread> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCommentThread(o[0]);
  checkCommentThread(o[1]);
}

core.int buildCounterCommentThreadListResponse = 0;
api.CommentThreadListResponse buildCommentThreadListResponse() {
  final o = api.CommentThreadListResponse();
  buildCounterCommentThreadListResponse++;
  if (buildCounterCommentThreadListResponse < 3) {
    o.etag = 'foo';
    o.eventId = 'foo';
    o.items = buildUnnamed3073();
    o.kind = 'foo';
    o.nextPageToken = 'foo';
    o.pageInfo = buildPageInfo();
    o.tokenPagination = buildTokenPagination();
    o.visitorId = 'foo';
  }
  buildCounterCommentThreadListResponse--;
  return o;
}

void checkCommentThreadListResponse(api.CommentThreadListResponse o) {
  buildCounterCommentThreadListResponse++;
  if (buildCounterCommentThreadListResponse < 3) {
    unittest.expect(
      o.etag!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.eventId!,
      unittest.equals('foo'),
    );
    checkUnnamed3073(o.items!);
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkPageInfo(o.pageInfo!);
    checkTokenPagination(o.tokenPagination!);
    unittest.expect(
      o.visitorId!,
      unittest.equals('foo'),
    );
  }
  buildCounterCommentThreadListResponse--;
}

core.List<api.Comment> buildUnnamed3074() => [
      buildComment(),
      buildComment(),
    ];

void checkUnnamed3074(core.List<api.Comment> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkComment(o[0]);
  checkComment(o[1]);
}

core.int buildCounterCommentThreadReplies = 0;
api.CommentThreadReplies buildCommentThreadReplies() {
  final o = api.CommentThreadReplies();
  buildCounterCommentThreadReplies++;
  if (buildCounterCommentThreadReplies < 3) {
    o.comments = buildUnnamed3074();
  }
  buildCounterCommentThreadReplies--;
  return o;
}

void checkCommentThreadReplies(api.CommentThreadReplies o) {
  buildCounterCommentThreadReplies++;
  if (buildCounterCommentThreadReplies < 3) {
    checkUnnamed3074(o.comments!);
  }
  buildCounterCommentThreadReplies--;
}

core.int buildCounterCommentThreadSnippet = 0;
api.CommentThreadSnippet buildCommentThreadSnippet() {
  final o = api.CommentThreadSnippet();
  buildCounterCommentThreadSnippet++;
  if (buildCounterCommentThreadSnippet < 3) {
    o.canReply = true;
    o.channelId = 'foo';
    o.isPublic = true;
    o.topLevelComment = buildComment();
    o.totalReplyCount = 42;
    o.videoId = 'foo';
  }
  buildCounterCommentThreadSnippet--;
  return o;
}

void checkCommentThreadSnippet(api.CommentThreadSnippet o) {
  buildCounterCommentThreadSnippet++;
  if (buildCounterCommentThreadSnippet < 3) {
    unittest.expect(o.canReply!, unittest.isTrue);
    unittest.expect(
      o.channelId!,
      unittest.equals('foo'),
    );
    unittest.expect(o.isPublic!, unittest.isTrue);
    checkComment(o.topLevelComment!);
    unittest.expect(
      o.totalReplyCount!,
      unittest.equals(42),
    );
    unittest.expect(
      o.videoId!,
      unittest.equals('foo'),
    );
  }
  buildCounterCommentThreadSnippet--;
}

core.List<core.String> buildUnnamed3075() => [
      'foo',
      'foo',
    ];

void checkUnnamed3075(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed3076() => [
      'foo',
      'foo',
    ];

void checkUnnamed3076(core.List<core.String> o) {
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

core.int buildCounterContentRating = 0;
api.ContentRating buildContentRating() {
  final o = api.ContentRating();
  buildCounterContentRating++;
  if (buildCounterContentRating < 3) {
    o.acbRating = 'foo';
    o.agcomRating = 'foo';
    o.anatelRating = 'foo';
    o.bbfcRating = 'foo';
    o.bfvcRating = 'foo';
    o.bmukkRating = 'foo';
    o.catvRating = 'foo';
    o.catvfrRating = 'foo';
    o.cbfcRating = 'foo';
    o.cccRating = 'foo';
    o.cceRating = 'foo';
    o.chfilmRating = 'foo';
    o.chvrsRating = 'foo';
    o.cicfRating = 'foo';
    o.cnaRating = 'foo';
    o.cncRating = 'foo';
    o.csaRating = 'foo';
    o.cscfRating = 'foo';
    o.czfilmRating = 'foo';
    o.djctqRating = 'foo';
    o.djctqRatingReasons = buildUnnamed3075();
    o.ecbmctRating = 'foo';
    o.eefilmRating = 'foo';
    o.egfilmRating = 'foo';
    o.eirinRating = 'foo';
    o.fcbmRating = 'foo';
    o.fcoRating = 'foo';
    o.fmocRating = 'foo';
    o.fpbRating = 'foo';
    o.fpbRatingReasons = buildUnnamed3076();
    o.fskRating = 'foo';
    o.grfilmRating = 'foo';
    o.icaaRating = 'foo';
    o.ifcoRating = 'foo';
    o.ilfilmRating = 'foo';
    o.incaaRating = 'foo';
    o.kfcbRating = 'foo';
    o.kijkwijzerRating = 'foo';
    o.kmrbRating = 'foo';
    o.lsfRating = 'foo';
    o.mccaaRating = 'foo';
    o.mccypRating = 'foo';
    o.mcstRating = 'foo';
    o.mdaRating = 'foo';
    o.medietilsynetRating = 'foo';
    o.mekuRating = 'foo';
    o.menaMpaaRating = 'foo';
    o.mibacRating = 'foo';
    o.mocRating = 'foo';
    o.moctwRating = 'foo';
    o.mpaaRating = 'foo';
    o.mpaatRating = 'foo';
    o.mtrcbRating = 'foo';
    o.nbcRating = 'foo';
    o.nbcplRating = 'foo';
    o.nfrcRating = 'foo';
    o.nfvcbRating = 'foo';
    o.nkclvRating = 'foo';
    o.nmcRating = 'foo';
    o.oflcRating = 'foo';
    o.pefilmRating = 'foo';
    o.rcnofRating = 'foo';
    o.resorteviolenciaRating = 'foo';
    o.rtcRating = 'foo';
    o.rteRating = 'foo';
    o.russiaRating = 'foo';
    o.skfilmRating = 'foo';
    o.smaisRating = 'foo';
    o.smsaRating = 'foo';
    o.tvpgRating = 'foo';
    o.ytRating = 'foo';
  }
  buildCounterContentRating--;
  return o;
}

void checkContentRating(api.ContentRating o) {
  buildCounterContentRating++;
  if (buildCounterContentRating < 3) {
    unittest.expect(
      o.acbRating!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.agcomRating!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.anatelRating!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.bbfcRating!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.bfvcRating!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.bmukkRating!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.catvRating!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.catvfrRating!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.cbfcRating!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.cccRating!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.cceRating!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.chfilmRating!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.chvrsRating!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.cicfRating!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.cnaRating!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.cncRating!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.csaRating!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.cscfRating!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.czfilmRating!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.djctqRating!,
      unittest.equals('foo'),
    );
    checkUnnamed3075(o.djctqRatingReasons!);
    unittest.expect(
      o.ecbmctRating!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.eefilmRating!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.egfilmRating!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.eirinRating!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.fcbmRating!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.fcoRating!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.fmocRating!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.fpbRating!,
      unittest.equals('foo'),
    );
    checkUnnamed3076(o.fpbRatingReasons!);
    unittest.expect(
      o.fskRating!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.grfilmRating!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.icaaRating!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.ifcoRating!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.ilfilmRating!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.incaaRating!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.kfcbRating!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.kijkwijzerRating!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.kmrbRating!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.lsfRating!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.mccaaRating!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.mccypRating!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.mcstRating!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.mdaRating!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.medietilsynetRating!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.mekuRating!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.menaMpaaRating!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.mibacRating!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.mocRating!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.moctwRating!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.mpaaRating!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.mpaatRating!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.mtrcbRating!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.nbcRating!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.nbcplRating!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.nfrcRating!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.nfvcbRating!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.nkclvRating!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.nmcRating!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.oflcRating!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.pefilmRating!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.rcnofRating!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.resorteviolenciaRating!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.rtcRating!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.rteRating!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.russiaRating!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.skfilmRating!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.smaisRating!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.smsaRating!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.tvpgRating!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.ytRating!,
      unittest.equals('foo'),
    );
  }
  buildCounterContentRating--;
}

core.int buildCounterEntity = 0;
api.Entity buildEntity() {
  final o = api.Entity();
  buildCounterEntity++;
  if (buildCounterEntity < 3) {
    o.id = 'foo';
    o.typeId = 'foo';
    o.url = 'foo';
  }
  buildCounterEntity--;
  return o;
}

void checkEntity(api.Entity o) {
  buildCounterEntity++;
  if (buildCounterEntity < 3) {
    unittest.expect(
      o.id!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.typeId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.url!,
      unittest.equals('foo'),
    );
  }
  buildCounterEntity--;
}

core.int buildCounterGeoPoint = 0;
api.GeoPoint buildGeoPoint() {
  final o = api.GeoPoint();
  buildCounterGeoPoint++;
  if (buildCounterGeoPoint < 3) {
    o.altitude = 42.0;
    o.latitude = 42.0;
    o.longitude = 42.0;
  }
  buildCounterGeoPoint--;
  return o;
}

void checkGeoPoint(api.GeoPoint o) {
  buildCounterGeoPoint++;
  if (buildCounterGeoPoint < 3) {
    unittest.expect(
      o.altitude!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.latitude!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.longitude!,
      unittest.equals(42.0),
    );
  }
  buildCounterGeoPoint--;
}

core.int buildCounterI18nLanguage = 0;
api.I18nLanguage buildI18nLanguage() {
  final o = api.I18nLanguage();
  buildCounterI18nLanguage++;
  if (buildCounterI18nLanguage < 3) {
    o.etag = 'foo';
    o.id = 'foo';
    o.kind = 'foo';
    o.snippet = buildI18nLanguageSnippet();
  }
  buildCounterI18nLanguage--;
  return o;
}

void checkI18nLanguage(api.I18nLanguage o) {
  buildCounterI18nLanguage++;
  if (buildCounterI18nLanguage < 3) {
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
    checkI18nLanguageSnippet(o.snippet!);
  }
  buildCounterI18nLanguage--;
}

core.List<api.I18nLanguage> buildUnnamed3077() => [
      buildI18nLanguage(),
      buildI18nLanguage(),
    ];

void checkUnnamed3077(core.List<api.I18nLanguage> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkI18nLanguage(o[0]);
  checkI18nLanguage(o[1]);
}

core.int buildCounterI18nLanguageListResponse = 0;
api.I18nLanguageListResponse buildI18nLanguageListResponse() {
  final o = api.I18nLanguageListResponse();
  buildCounterI18nLanguageListResponse++;
  if (buildCounterI18nLanguageListResponse < 3) {
    o.etag = 'foo';
    o.eventId = 'foo';
    o.items = buildUnnamed3077();
    o.kind = 'foo';
    o.visitorId = 'foo';
  }
  buildCounterI18nLanguageListResponse--;
  return o;
}

void checkI18nLanguageListResponse(api.I18nLanguageListResponse o) {
  buildCounterI18nLanguageListResponse++;
  if (buildCounterI18nLanguageListResponse < 3) {
    unittest.expect(
      o.etag!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.eventId!,
      unittest.equals('foo'),
    );
    checkUnnamed3077(o.items!);
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.visitorId!,
      unittest.equals('foo'),
    );
  }
  buildCounterI18nLanguageListResponse--;
}

core.int buildCounterI18nLanguageSnippet = 0;
api.I18nLanguageSnippet buildI18nLanguageSnippet() {
  final o = api.I18nLanguageSnippet();
  buildCounterI18nLanguageSnippet++;
  if (buildCounterI18nLanguageSnippet < 3) {
    o.hl = 'foo';
    o.name = 'foo';
  }
  buildCounterI18nLanguageSnippet--;
  return o;
}

void checkI18nLanguageSnippet(api.I18nLanguageSnippet o) {
  buildCounterI18nLanguageSnippet++;
  if (buildCounterI18nLanguageSnippet < 3) {
    unittest.expect(
      o.hl!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
  }
  buildCounterI18nLanguageSnippet--;
}

core.int buildCounterI18nRegion = 0;
api.I18nRegion buildI18nRegion() {
  final o = api.I18nRegion();
  buildCounterI18nRegion++;
  if (buildCounterI18nRegion < 3) {
    o.etag = 'foo';
    o.id = 'foo';
    o.kind = 'foo';
    o.snippet = buildI18nRegionSnippet();
  }
  buildCounterI18nRegion--;
  return o;
}

void checkI18nRegion(api.I18nRegion o) {
  buildCounterI18nRegion++;
  if (buildCounterI18nRegion < 3) {
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
    checkI18nRegionSnippet(o.snippet!);
  }
  buildCounterI18nRegion--;
}

core.List<api.I18nRegion> buildUnnamed3078() => [
      buildI18nRegion(),
      buildI18nRegion(),
    ];

void checkUnnamed3078(core.List<api.I18nRegion> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkI18nRegion(o[0]);
  checkI18nRegion(o[1]);
}

core.int buildCounterI18nRegionListResponse = 0;
api.I18nRegionListResponse buildI18nRegionListResponse() {
  final o = api.I18nRegionListResponse();
  buildCounterI18nRegionListResponse++;
  if (buildCounterI18nRegionListResponse < 3) {
    o.etag = 'foo';
    o.eventId = 'foo';
    o.items = buildUnnamed3078();
    o.kind = 'foo';
    o.visitorId = 'foo';
  }
  buildCounterI18nRegionListResponse--;
  return o;
}

void checkI18nRegionListResponse(api.I18nRegionListResponse o) {
  buildCounterI18nRegionListResponse++;
  if (buildCounterI18nRegionListResponse < 3) {
    unittest.expect(
      o.etag!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.eventId!,
      unittest.equals('foo'),
    );
    checkUnnamed3078(o.items!);
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.visitorId!,
      unittest.equals('foo'),
    );
  }
  buildCounterI18nRegionListResponse--;
}

core.int buildCounterI18nRegionSnippet = 0;
api.I18nRegionSnippet buildI18nRegionSnippet() {
  final o = api.I18nRegionSnippet();
  buildCounterI18nRegionSnippet++;
  if (buildCounterI18nRegionSnippet < 3) {
    o.gl = 'foo';
    o.name = 'foo';
  }
  buildCounterI18nRegionSnippet--;
  return o;
}

void checkI18nRegionSnippet(api.I18nRegionSnippet o) {
  buildCounterI18nRegionSnippet++;
  if (buildCounterI18nRegionSnippet < 3) {
    unittest.expect(
      o.gl!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
  }
  buildCounterI18nRegionSnippet--;
}

core.int buildCounterImageSettings = 0;
api.ImageSettings buildImageSettings() {
  final o = api.ImageSettings();
  buildCounterImageSettings++;
  if (buildCounterImageSettings < 3) {
    o.backgroundImageUrl = buildLocalizedProperty();
    o.bannerExternalUrl = 'foo';
    o.bannerImageUrl = 'foo';
    o.bannerMobileExtraHdImageUrl = 'foo';
    o.bannerMobileHdImageUrl = 'foo';
    o.bannerMobileImageUrl = 'foo';
    o.bannerMobileLowImageUrl = 'foo';
    o.bannerMobileMediumHdImageUrl = 'foo';
    o.bannerTabletExtraHdImageUrl = 'foo';
    o.bannerTabletHdImageUrl = 'foo';
    o.bannerTabletImageUrl = 'foo';
    o.bannerTabletLowImageUrl = 'foo';
    o.bannerTvHighImageUrl = 'foo';
    o.bannerTvImageUrl = 'foo';
    o.bannerTvLowImageUrl = 'foo';
    o.bannerTvMediumImageUrl = 'foo';
    o.largeBrandedBannerImageImapScript = buildLocalizedProperty();
    o.largeBrandedBannerImageUrl = buildLocalizedProperty();
    o.smallBrandedBannerImageImapScript = buildLocalizedProperty();
    o.smallBrandedBannerImageUrl = buildLocalizedProperty();
    o.trackingImageUrl = 'foo';
    o.watchIconImageUrl = 'foo';
  }
  buildCounterImageSettings--;
  return o;
}

void checkImageSettings(api.ImageSettings o) {
  buildCounterImageSettings++;
  if (buildCounterImageSettings < 3) {
    checkLocalizedProperty(o.backgroundImageUrl!);
    unittest.expect(
      o.bannerExternalUrl!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.bannerImageUrl!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.bannerMobileExtraHdImageUrl!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.bannerMobileHdImageUrl!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.bannerMobileImageUrl!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.bannerMobileLowImageUrl!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.bannerMobileMediumHdImageUrl!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.bannerTabletExtraHdImageUrl!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.bannerTabletHdImageUrl!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.bannerTabletImageUrl!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.bannerTabletLowImageUrl!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.bannerTvHighImageUrl!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.bannerTvImageUrl!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.bannerTvLowImageUrl!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.bannerTvMediumImageUrl!,
      unittest.equals('foo'),
    );
    checkLocalizedProperty(o.largeBrandedBannerImageImapScript!);
    checkLocalizedProperty(o.largeBrandedBannerImageUrl!);
    checkLocalizedProperty(o.smallBrandedBannerImageImapScript!);
    checkLocalizedProperty(o.smallBrandedBannerImageUrl!);
    unittest.expect(
      o.trackingImageUrl!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.watchIconImageUrl!,
      unittest.equals('foo'),
    );
  }
  buildCounterImageSettings--;
}

core.int buildCounterIngestionInfo = 0;
api.IngestionInfo buildIngestionInfo() {
  final o = api.IngestionInfo();
  buildCounterIngestionInfo++;
  if (buildCounterIngestionInfo < 3) {
    o.backupIngestionAddress = 'foo';
    o.ingestionAddress = 'foo';
    o.rtmpsBackupIngestionAddress = 'foo';
    o.rtmpsIngestionAddress = 'foo';
    o.streamName = 'foo';
  }
  buildCounterIngestionInfo--;
  return o;
}

void checkIngestionInfo(api.IngestionInfo o) {
  buildCounterIngestionInfo++;
  if (buildCounterIngestionInfo < 3) {
    unittest.expect(
      o.backupIngestionAddress!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.ingestionAddress!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.rtmpsBackupIngestionAddress!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.rtmpsIngestionAddress!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.streamName!,
      unittest.equals('foo'),
    );
  }
  buildCounterIngestionInfo--;
}

core.int buildCounterInvideoBranding = 0;
api.InvideoBranding buildInvideoBranding() {
  final o = api.InvideoBranding();
  buildCounterInvideoBranding++;
  if (buildCounterInvideoBranding < 3) {
    o.imageBytes = 'foo';
    o.imageUrl = 'foo';
    o.position = buildInvideoPosition();
    o.targetChannelId = 'foo';
    o.timing = buildInvideoTiming();
  }
  buildCounterInvideoBranding--;
  return o;
}

void checkInvideoBranding(api.InvideoBranding o) {
  buildCounterInvideoBranding++;
  if (buildCounterInvideoBranding < 3) {
    unittest.expect(
      o.imageBytes!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.imageUrl!,
      unittest.equals('foo'),
    );
    checkInvideoPosition(o.position!);
    unittest.expect(
      o.targetChannelId!,
      unittest.equals('foo'),
    );
    checkInvideoTiming(o.timing!);
  }
  buildCounterInvideoBranding--;
}

core.int buildCounterInvideoPosition = 0;
api.InvideoPosition buildInvideoPosition() {
  final o = api.InvideoPosition();
  buildCounterInvideoPosition++;
  if (buildCounterInvideoPosition < 3) {
    o.cornerPosition = 'foo';
    o.type = 'foo';
  }
  buildCounterInvideoPosition--;
  return o;
}

void checkInvideoPosition(api.InvideoPosition o) {
  buildCounterInvideoPosition++;
  if (buildCounterInvideoPosition < 3) {
    unittest.expect(
      o.cornerPosition!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.type!,
      unittest.equals('foo'),
    );
  }
  buildCounterInvideoPosition--;
}

core.int buildCounterInvideoTiming = 0;
api.InvideoTiming buildInvideoTiming() {
  final o = api.InvideoTiming();
  buildCounterInvideoTiming++;
  if (buildCounterInvideoTiming < 3) {
    o.durationMs = 'foo';
    o.offsetMs = 'foo';
    o.type = 'foo';
  }
  buildCounterInvideoTiming--;
  return o;
}

void checkInvideoTiming(api.InvideoTiming o) {
  buildCounterInvideoTiming++;
  if (buildCounterInvideoTiming < 3) {
    unittest.expect(
      o.durationMs!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.offsetMs!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.type!,
      unittest.equals('foo'),
    );
  }
  buildCounterInvideoTiming--;
}

core.int buildCounterLanguageTag = 0;
api.LanguageTag buildLanguageTag() {
  final o = api.LanguageTag();
  buildCounterLanguageTag++;
  if (buildCounterLanguageTag < 3) {
    o.value = 'foo';
  }
  buildCounterLanguageTag--;
  return o;
}

void checkLanguageTag(api.LanguageTag o) {
  buildCounterLanguageTag++;
  if (buildCounterLanguageTag < 3) {
    unittest.expect(
      o.value!,
      unittest.equals('foo'),
    );
  }
  buildCounterLanguageTag--;
}

core.int buildCounterLevelDetails = 0;
api.LevelDetails buildLevelDetails() {
  final o = api.LevelDetails();
  buildCounterLevelDetails++;
  if (buildCounterLevelDetails < 3) {
    o.displayName = 'foo';
  }
  buildCounterLevelDetails--;
  return o;
}

void checkLevelDetails(api.LevelDetails o) {
  buildCounterLevelDetails++;
  if (buildCounterLevelDetails < 3) {
    unittest.expect(
      o.displayName!,
      unittest.equals('foo'),
    );
  }
  buildCounterLevelDetails--;
}

core.int buildCounterLiveBroadcast = 0;
api.LiveBroadcast buildLiveBroadcast() {
  final o = api.LiveBroadcast();
  buildCounterLiveBroadcast++;
  if (buildCounterLiveBroadcast < 3) {
    o.contentDetails = buildLiveBroadcastContentDetails();
    o.etag = 'foo';
    o.id = 'foo';
    o.kind = 'foo';
    o.snippet = buildLiveBroadcastSnippet();
    o.statistics = buildLiveBroadcastStatistics();
    o.status = buildLiveBroadcastStatus();
  }
  buildCounterLiveBroadcast--;
  return o;
}

void checkLiveBroadcast(api.LiveBroadcast o) {
  buildCounterLiveBroadcast++;
  if (buildCounterLiveBroadcast < 3) {
    checkLiveBroadcastContentDetails(o.contentDetails!);
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
    checkLiveBroadcastSnippet(o.snippet!);
    checkLiveBroadcastStatistics(o.statistics!);
    checkLiveBroadcastStatus(o.status!);
  }
  buildCounterLiveBroadcast--;
}

core.int buildCounterLiveBroadcastContentDetails = 0;
api.LiveBroadcastContentDetails buildLiveBroadcastContentDetails() {
  final o = api.LiveBroadcastContentDetails();
  buildCounterLiveBroadcastContentDetails++;
  if (buildCounterLiveBroadcastContentDetails < 3) {
    o.boundStreamId = 'foo';
    o.boundStreamLastUpdateTimeMs = core.DateTime.parse('2002-02-27T14:01:02');
    o.closedCaptionsType = 'foo';
    o.enableAutoStart = true;
    o.enableAutoStop = true;
    o.enableClosedCaptions = true;
    o.enableContentEncryption = true;
    o.enableDvr = true;
    o.enableEmbed = true;
    o.enableLowLatency = true;
    o.latencyPreference = 'foo';
    o.mesh = 'foo';
    o.monitorStream = buildMonitorStreamInfo();
    o.projection = 'foo';
    o.recordFromStart = true;
    o.startWithSlate = true;
    o.stereoLayout = 'foo';
  }
  buildCounterLiveBroadcastContentDetails--;
  return o;
}

void checkLiveBroadcastContentDetails(api.LiveBroadcastContentDetails o) {
  buildCounterLiveBroadcastContentDetails++;
  if (buildCounterLiveBroadcastContentDetails < 3) {
    unittest.expect(
      o.boundStreamId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.boundStreamLastUpdateTimeMs!,
      unittest.equals(core.DateTime.parse('2002-02-27T14:01:02')),
    );
    unittest.expect(
      o.closedCaptionsType!,
      unittest.equals('foo'),
    );
    unittest.expect(o.enableAutoStart!, unittest.isTrue);
    unittest.expect(o.enableAutoStop!, unittest.isTrue);
    unittest.expect(o.enableClosedCaptions!, unittest.isTrue);
    unittest.expect(o.enableContentEncryption!, unittest.isTrue);
    unittest.expect(o.enableDvr!, unittest.isTrue);
    unittest.expect(o.enableEmbed!, unittest.isTrue);
    unittest.expect(o.enableLowLatency!, unittest.isTrue);
    unittest.expect(
      o.latencyPreference!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.mesh!,
      unittest.equals('foo'),
    );
    checkMonitorStreamInfo(o.monitorStream!);
    unittest.expect(
      o.projection!,
      unittest.equals('foo'),
    );
    unittest.expect(o.recordFromStart!, unittest.isTrue);
    unittest.expect(o.startWithSlate!, unittest.isTrue);
    unittest.expect(
      o.stereoLayout!,
      unittest.equals('foo'),
    );
  }
  buildCounterLiveBroadcastContentDetails--;
}

core.List<api.LiveBroadcast> buildUnnamed3079() => [
      buildLiveBroadcast(),
      buildLiveBroadcast(),
    ];

void checkUnnamed3079(core.List<api.LiveBroadcast> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkLiveBroadcast(o[0]);
  checkLiveBroadcast(o[1]);
}

core.int buildCounterLiveBroadcastListResponse = 0;
api.LiveBroadcastListResponse buildLiveBroadcastListResponse() {
  final o = api.LiveBroadcastListResponse();
  buildCounterLiveBroadcastListResponse++;
  if (buildCounterLiveBroadcastListResponse < 3) {
    o.etag = 'foo';
    o.eventId = 'foo';
    o.items = buildUnnamed3079();
    o.kind = 'foo';
    o.nextPageToken = 'foo';
    o.pageInfo = buildPageInfo();
    o.prevPageToken = 'foo';
    o.tokenPagination = buildTokenPagination();
    o.visitorId = 'foo';
  }
  buildCounterLiveBroadcastListResponse--;
  return o;
}

void checkLiveBroadcastListResponse(api.LiveBroadcastListResponse o) {
  buildCounterLiveBroadcastListResponse++;
  if (buildCounterLiveBroadcastListResponse < 3) {
    unittest.expect(
      o.etag!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.eventId!,
      unittest.equals('foo'),
    );
    checkUnnamed3079(o.items!);
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkPageInfo(o.pageInfo!);
    unittest.expect(
      o.prevPageToken!,
      unittest.equals('foo'),
    );
    checkTokenPagination(o.tokenPagination!);
    unittest.expect(
      o.visitorId!,
      unittest.equals('foo'),
    );
  }
  buildCounterLiveBroadcastListResponse--;
}

core.int buildCounterLiveBroadcastSnippet = 0;
api.LiveBroadcastSnippet buildLiveBroadcastSnippet() {
  final o = api.LiveBroadcastSnippet();
  buildCounterLiveBroadcastSnippet++;
  if (buildCounterLiveBroadcastSnippet < 3) {
    o.actualEndTime = core.DateTime.parse('2002-02-27T14:01:02');
    o.actualStartTime = core.DateTime.parse('2002-02-27T14:01:02');
    o.channelId = 'foo';
    o.description = 'foo';
    o.isDefaultBroadcast = true;
    o.liveChatId = 'foo';
    o.publishedAt = core.DateTime.parse('2002-02-27T14:01:02');
    o.scheduledEndTime = core.DateTime.parse('2002-02-27T14:01:02');
    o.scheduledStartTime = core.DateTime.parse('2002-02-27T14:01:02');
    o.thumbnails = buildThumbnailDetails();
    o.title = 'foo';
  }
  buildCounterLiveBroadcastSnippet--;
  return o;
}

void checkLiveBroadcastSnippet(api.LiveBroadcastSnippet o) {
  buildCounterLiveBroadcastSnippet++;
  if (buildCounterLiveBroadcastSnippet < 3) {
    unittest.expect(
      o.actualEndTime!,
      unittest.equals(core.DateTime.parse('2002-02-27T14:01:02')),
    );
    unittest.expect(
      o.actualStartTime!,
      unittest.equals(core.DateTime.parse('2002-02-27T14:01:02')),
    );
    unittest.expect(
      o.channelId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.description!,
      unittest.equals('foo'),
    );
    unittest.expect(o.isDefaultBroadcast!, unittest.isTrue);
    unittest.expect(
      o.liveChatId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.publishedAt!,
      unittest.equals(core.DateTime.parse('2002-02-27T14:01:02')),
    );
    unittest.expect(
      o.scheduledEndTime!,
      unittest.equals(core.DateTime.parse('2002-02-27T14:01:02')),
    );
    unittest.expect(
      o.scheduledStartTime!,
      unittest.equals(core.DateTime.parse('2002-02-27T14:01:02')),
    );
    checkThumbnailDetails(o.thumbnails!);
    unittest.expect(
      o.title!,
      unittest.equals('foo'),
    );
  }
  buildCounterLiveBroadcastSnippet--;
}

core.int buildCounterLiveBroadcastStatistics = 0;
api.LiveBroadcastStatistics buildLiveBroadcastStatistics() {
  final o = api.LiveBroadcastStatistics();
  buildCounterLiveBroadcastStatistics++;
  if (buildCounterLiveBroadcastStatistics < 3) {
    o.totalChatCount = 'foo';
  }
  buildCounterLiveBroadcastStatistics--;
  return o;
}

void checkLiveBroadcastStatistics(api.LiveBroadcastStatistics o) {
  buildCounterLiveBroadcastStatistics++;
  if (buildCounterLiveBroadcastStatistics < 3) {
    unittest.expect(
      o.totalChatCount!,
      unittest.equals('foo'),
    );
  }
  buildCounterLiveBroadcastStatistics--;
}

core.int buildCounterLiveBroadcastStatus = 0;
api.LiveBroadcastStatus buildLiveBroadcastStatus() {
  final o = api.LiveBroadcastStatus();
  buildCounterLiveBroadcastStatus++;
  if (buildCounterLiveBroadcastStatus < 3) {
    o.lifeCycleStatus = 'foo';
    o.liveBroadcastPriority = 'foo';
    o.madeForKids = true;
    o.privacyStatus = 'foo';
    o.recordingStatus = 'foo';
    o.selfDeclaredMadeForKids = true;
  }
  buildCounterLiveBroadcastStatus--;
  return o;
}

void checkLiveBroadcastStatus(api.LiveBroadcastStatus o) {
  buildCounterLiveBroadcastStatus++;
  if (buildCounterLiveBroadcastStatus < 3) {
    unittest.expect(
      o.lifeCycleStatus!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.liveBroadcastPriority!,
      unittest.equals('foo'),
    );
    unittest.expect(o.madeForKids!, unittest.isTrue);
    unittest.expect(
      o.privacyStatus!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.recordingStatus!,
      unittest.equals('foo'),
    );
    unittest.expect(o.selfDeclaredMadeForKids!, unittest.isTrue);
  }
  buildCounterLiveBroadcastStatus--;
}

core.int buildCounterLiveChatBan = 0;
api.LiveChatBan buildLiveChatBan() {
  final o = api.LiveChatBan();
  buildCounterLiveChatBan++;
  if (buildCounterLiveChatBan < 3) {
    o.etag = 'foo';
    o.id = 'foo';
    o.kind = 'foo';
    o.snippet = buildLiveChatBanSnippet();
  }
  buildCounterLiveChatBan--;
  return o;
}

void checkLiveChatBan(api.LiveChatBan o) {
  buildCounterLiveChatBan++;
  if (buildCounterLiveChatBan < 3) {
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
    checkLiveChatBanSnippet(o.snippet!);
  }
  buildCounterLiveChatBan--;
}

core.int buildCounterLiveChatBanSnippet = 0;
api.LiveChatBanSnippet buildLiveChatBanSnippet() {
  final o = api.LiveChatBanSnippet();
  buildCounterLiveChatBanSnippet++;
  if (buildCounterLiveChatBanSnippet < 3) {
    o.banDurationSeconds = 'foo';
    o.bannedUserDetails = buildChannelProfileDetails();
    o.liveChatId = 'foo';
    o.type = 'foo';
  }
  buildCounterLiveChatBanSnippet--;
  return o;
}

void checkLiveChatBanSnippet(api.LiveChatBanSnippet o) {
  buildCounterLiveChatBanSnippet++;
  if (buildCounterLiveChatBanSnippet < 3) {
    unittest.expect(
      o.banDurationSeconds!,
      unittest.equals('foo'),
    );
    checkChannelProfileDetails(o.bannedUserDetails!);
    unittest.expect(
      o.liveChatId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.type!,
      unittest.equals('foo'),
    );
  }
  buildCounterLiveChatBanSnippet--;
}

core.int buildCounterLiveChatFanFundingEventDetails = 0;
api.LiveChatFanFundingEventDetails buildLiveChatFanFundingEventDetails() {
  final o = api.LiveChatFanFundingEventDetails();
  buildCounterLiveChatFanFundingEventDetails++;
  if (buildCounterLiveChatFanFundingEventDetails < 3) {
    o.amountDisplayString = 'foo';
    o.amountMicros = 'foo';
    o.currency = 'foo';
    o.userComment = 'foo';
  }
  buildCounterLiveChatFanFundingEventDetails--;
  return o;
}

void checkLiveChatFanFundingEventDetails(api.LiveChatFanFundingEventDetails o) {
  buildCounterLiveChatFanFundingEventDetails++;
  if (buildCounterLiveChatFanFundingEventDetails < 3) {
    unittest.expect(
      o.amountDisplayString!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.amountMicros!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.currency!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.userComment!,
      unittest.equals('foo'),
    );
  }
  buildCounterLiveChatFanFundingEventDetails--;
}

core.int buildCounterLiveChatMessage = 0;
api.LiveChatMessage buildLiveChatMessage() {
  final o = api.LiveChatMessage();
  buildCounterLiveChatMessage++;
  if (buildCounterLiveChatMessage < 3) {
    o.authorDetails = buildLiveChatMessageAuthorDetails();
    o.etag = 'foo';
    o.id = 'foo';
    o.kind = 'foo';
    o.snippet = buildLiveChatMessageSnippet();
  }
  buildCounterLiveChatMessage--;
  return o;
}

void checkLiveChatMessage(api.LiveChatMessage o) {
  buildCounterLiveChatMessage++;
  if (buildCounterLiveChatMessage < 3) {
    checkLiveChatMessageAuthorDetails(o.authorDetails!);
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
    checkLiveChatMessageSnippet(o.snippet!);
  }
  buildCounterLiveChatMessage--;
}

core.int buildCounterLiveChatMessageAuthorDetails = 0;
api.LiveChatMessageAuthorDetails buildLiveChatMessageAuthorDetails() {
  final o = api.LiveChatMessageAuthorDetails();
  buildCounterLiveChatMessageAuthorDetails++;
  if (buildCounterLiveChatMessageAuthorDetails < 3) {
    o.channelId = 'foo';
    o.channelUrl = 'foo';
    o.displayName = 'foo';
    o.isChatModerator = true;
    o.isChatOwner = true;
    o.isChatSponsor = true;
    o.isVerified = true;
    o.profileImageUrl = 'foo';
  }
  buildCounterLiveChatMessageAuthorDetails--;
  return o;
}

void checkLiveChatMessageAuthorDetails(api.LiveChatMessageAuthorDetails o) {
  buildCounterLiveChatMessageAuthorDetails++;
  if (buildCounterLiveChatMessageAuthorDetails < 3) {
    unittest.expect(
      o.channelId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.channelUrl!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.displayName!,
      unittest.equals('foo'),
    );
    unittest.expect(o.isChatModerator!, unittest.isTrue);
    unittest.expect(o.isChatOwner!, unittest.isTrue);
    unittest.expect(o.isChatSponsor!, unittest.isTrue);
    unittest.expect(o.isVerified!, unittest.isTrue);
    unittest.expect(
      o.profileImageUrl!,
      unittest.equals('foo'),
    );
  }
  buildCounterLiveChatMessageAuthorDetails--;
}

core.int buildCounterLiveChatMessageDeletedDetails = 0;
api.LiveChatMessageDeletedDetails buildLiveChatMessageDeletedDetails() {
  final o = api.LiveChatMessageDeletedDetails();
  buildCounterLiveChatMessageDeletedDetails++;
  if (buildCounterLiveChatMessageDeletedDetails < 3) {
    o.deletedMessageId = 'foo';
  }
  buildCounterLiveChatMessageDeletedDetails--;
  return o;
}

void checkLiveChatMessageDeletedDetails(api.LiveChatMessageDeletedDetails o) {
  buildCounterLiveChatMessageDeletedDetails++;
  if (buildCounterLiveChatMessageDeletedDetails < 3) {
    unittest.expect(
      o.deletedMessageId!,
      unittest.equals('foo'),
    );
  }
  buildCounterLiveChatMessageDeletedDetails--;
}

core.List<api.LiveChatMessage> buildUnnamed3080() => [
      buildLiveChatMessage(),
      buildLiveChatMessage(),
    ];

void checkUnnamed3080(core.List<api.LiveChatMessage> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkLiveChatMessage(o[0]);
  checkLiveChatMessage(o[1]);
}

core.int buildCounterLiveChatMessageListResponse = 0;
api.LiveChatMessageListResponse buildLiveChatMessageListResponse() {
  final o = api.LiveChatMessageListResponse();
  buildCounterLiveChatMessageListResponse++;
  if (buildCounterLiveChatMessageListResponse < 3) {
    o.etag = 'foo';
    o.eventId = 'foo';
    o.items = buildUnnamed3080();
    o.kind = 'foo';
    o.nextPageToken = 'foo';
    o.offlineAt = core.DateTime.parse('2002-02-27T14:01:02');
    o.pageInfo = buildPageInfo();
    o.pollingIntervalMillis = 42;
    o.tokenPagination = buildTokenPagination();
    o.visitorId = 'foo';
  }
  buildCounterLiveChatMessageListResponse--;
  return o;
}

void checkLiveChatMessageListResponse(api.LiveChatMessageListResponse o) {
  buildCounterLiveChatMessageListResponse++;
  if (buildCounterLiveChatMessageListResponse < 3) {
    unittest.expect(
      o.etag!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.eventId!,
      unittest.equals('foo'),
    );
    checkUnnamed3080(o.items!);
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.offlineAt!,
      unittest.equals(core.DateTime.parse('2002-02-27T14:01:02')),
    );
    checkPageInfo(o.pageInfo!);
    unittest.expect(
      o.pollingIntervalMillis!,
      unittest.equals(42),
    );
    checkTokenPagination(o.tokenPagination!);
    unittest.expect(
      o.visitorId!,
      unittest.equals('foo'),
    );
  }
  buildCounterLiveChatMessageListResponse--;
}

core.int buildCounterLiveChatMessageRetractedDetails = 0;
api.LiveChatMessageRetractedDetails buildLiveChatMessageRetractedDetails() {
  final o = api.LiveChatMessageRetractedDetails();
  buildCounterLiveChatMessageRetractedDetails++;
  if (buildCounterLiveChatMessageRetractedDetails < 3) {
    o.retractedMessageId = 'foo';
  }
  buildCounterLiveChatMessageRetractedDetails--;
  return o;
}

void checkLiveChatMessageRetractedDetails(
    api.LiveChatMessageRetractedDetails o) {
  buildCounterLiveChatMessageRetractedDetails++;
  if (buildCounterLiveChatMessageRetractedDetails < 3) {
    unittest.expect(
      o.retractedMessageId!,
      unittest.equals('foo'),
    );
  }
  buildCounterLiveChatMessageRetractedDetails--;
}

core.int buildCounterLiveChatMessageSnippet = 0;
api.LiveChatMessageSnippet buildLiveChatMessageSnippet() {
  final o = api.LiveChatMessageSnippet();
  buildCounterLiveChatMessageSnippet++;
  if (buildCounterLiveChatMessageSnippet < 3) {
    o.authorChannelId = 'foo';
    o.displayMessage = 'foo';
    o.fanFundingEventDetails = buildLiveChatFanFundingEventDetails();
    o.hasDisplayContent = true;
    o.liveChatId = 'foo';
    o.messageDeletedDetails = buildLiveChatMessageDeletedDetails();
    o.messageRetractedDetails = buildLiveChatMessageRetractedDetails();
    o.publishedAt = core.DateTime.parse('2002-02-27T14:01:02');
    o.superChatDetails = buildLiveChatSuperChatDetails();
    o.superStickerDetails = buildLiveChatSuperStickerDetails();
    o.textMessageDetails = buildLiveChatTextMessageDetails();
    o.type = 'foo';
    o.userBannedDetails = buildLiveChatUserBannedMessageDetails();
  }
  buildCounterLiveChatMessageSnippet--;
  return o;
}

void checkLiveChatMessageSnippet(api.LiveChatMessageSnippet o) {
  buildCounterLiveChatMessageSnippet++;
  if (buildCounterLiveChatMessageSnippet < 3) {
    unittest.expect(
      o.authorChannelId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.displayMessage!,
      unittest.equals('foo'),
    );
    checkLiveChatFanFundingEventDetails(o.fanFundingEventDetails!);
    unittest.expect(o.hasDisplayContent!, unittest.isTrue);
    unittest.expect(
      o.liveChatId!,
      unittest.equals('foo'),
    );
    checkLiveChatMessageDeletedDetails(o.messageDeletedDetails!);
    checkLiveChatMessageRetractedDetails(o.messageRetractedDetails!);
    unittest.expect(
      o.publishedAt!,
      unittest.equals(core.DateTime.parse('2002-02-27T14:01:02')),
    );
    checkLiveChatSuperChatDetails(o.superChatDetails!);
    checkLiveChatSuperStickerDetails(o.superStickerDetails!);
    checkLiveChatTextMessageDetails(o.textMessageDetails!);
    unittest.expect(
      o.type!,
      unittest.equals('foo'),
    );
    checkLiveChatUserBannedMessageDetails(o.userBannedDetails!);
  }
  buildCounterLiveChatMessageSnippet--;
}

core.int buildCounterLiveChatModerator = 0;
api.LiveChatModerator buildLiveChatModerator() {
  final o = api.LiveChatModerator();
  buildCounterLiveChatModerator++;
  if (buildCounterLiveChatModerator < 3) {
    o.etag = 'foo';
    o.id = 'foo';
    o.kind = 'foo';
    o.snippet = buildLiveChatModeratorSnippet();
  }
  buildCounterLiveChatModerator--;
  return o;
}

void checkLiveChatModerator(api.LiveChatModerator o) {
  buildCounterLiveChatModerator++;
  if (buildCounterLiveChatModerator < 3) {
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
    checkLiveChatModeratorSnippet(o.snippet!);
  }
  buildCounterLiveChatModerator--;
}

core.List<api.LiveChatModerator> buildUnnamed3081() => [
      buildLiveChatModerator(),
      buildLiveChatModerator(),
    ];

void checkUnnamed3081(core.List<api.LiveChatModerator> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkLiveChatModerator(o[0]);
  checkLiveChatModerator(o[1]);
}

core.int buildCounterLiveChatModeratorListResponse = 0;
api.LiveChatModeratorListResponse buildLiveChatModeratorListResponse() {
  final o = api.LiveChatModeratorListResponse();
  buildCounterLiveChatModeratorListResponse++;
  if (buildCounterLiveChatModeratorListResponse < 3) {
    o.etag = 'foo';
    o.eventId = 'foo';
    o.items = buildUnnamed3081();
    o.kind = 'foo';
    o.nextPageToken = 'foo';
    o.pageInfo = buildPageInfo();
    o.prevPageToken = 'foo';
    o.tokenPagination = buildTokenPagination();
    o.visitorId = 'foo';
  }
  buildCounterLiveChatModeratorListResponse--;
  return o;
}

void checkLiveChatModeratorListResponse(api.LiveChatModeratorListResponse o) {
  buildCounterLiveChatModeratorListResponse++;
  if (buildCounterLiveChatModeratorListResponse < 3) {
    unittest.expect(
      o.etag!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.eventId!,
      unittest.equals('foo'),
    );
    checkUnnamed3081(o.items!);
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkPageInfo(o.pageInfo!);
    unittest.expect(
      o.prevPageToken!,
      unittest.equals('foo'),
    );
    checkTokenPagination(o.tokenPagination!);
    unittest.expect(
      o.visitorId!,
      unittest.equals('foo'),
    );
  }
  buildCounterLiveChatModeratorListResponse--;
}

core.int buildCounterLiveChatModeratorSnippet = 0;
api.LiveChatModeratorSnippet buildLiveChatModeratorSnippet() {
  final o = api.LiveChatModeratorSnippet();
  buildCounterLiveChatModeratorSnippet++;
  if (buildCounterLiveChatModeratorSnippet < 3) {
    o.liveChatId = 'foo';
    o.moderatorDetails = buildChannelProfileDetails();
  }
  buildCounterLiveChatModeratorSnippet--;
  return o;
}

void checkLiveChatModeratorSnippet(api.LiveChatModeratorSnippet o) {
  buildCounterLiveChatModeratorSnippet++;
  if (buildCounterLiveChatModeratorSnippet < 3) {
    unittest.expect(
      o.liveChatId!,
      unittest.equals('foo'),
    );
    checkChannelProfileDetails(o.moderatorDetails!);
  }
  buildCounterLiveChatModeratorSnippet--;
}

core.int buildCounterLiveChatSuperChatDetails = 0;
api.LiveChatSuperChatDetails buildLiveChatSuperChatDetails() {
  final o = api.LiveChatSuperChatDetails();
  buildCounterLiveChatSuperChatDetails++;
  if (buildCounterLiveChatSuperChatDetails < 3) {
    o.amountDisplayString = 'foo';
    o.amountMicros = 'foo';
    o.currency = 'foo';
    o.tier = 42;
    o.userComment = 'foo';
  }
  buildCounterLiveChatSuperChatDetails--;
  return o;
}

void checkLiveChatSuperChatDetails(api.LiveChatSuperChatDetails o) {
  buildCounterLiveChatSuperChatDetails++;
  if (buildCounterLiveChatSuperChatDetails < 3) {
    unittest.expect(
      o.amountDisplayString!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.amountMicros!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.currency!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.tier!,
      unittest.equals(42),
    );
    unittest.expect(
      o.userComment!,
      unittest.equals('foo'),
    );
  }
  buildCounterLiveChatSuperChatDetails--;
}

core.int buildCounterLiveChatSuperStickerDetails = 0;
api.LiveChatSuperStickerDetails buildLiveChatSuperStickerDetails() {
  final o = api.LiveChatSuperStickerDetails();
  buildCounterLiveChatSuperStickerDetails++;
  if (buildCounterLiveChatSuperStickerDetails < 3) {
    o.amountDisplayString = 'foo';
    o.amountMicros = 'foo';
    o.currency = 'foo';
    o.superStickerMetadata = buildSuperStickerMetadata();
    o.tier = 42;
  }
  buildCounterLiveChatSuperStickerDetails--;
  return o;
}

void checkLiveChatSuperStickerDetails(api.LiveChatSuperStickerDetails o) {
  buildCounterLiveChatSuperStickerDetails++;
  if (buildCounterLiveChatSuperStickerDetails < 3) {
    unittest.expect(
      o.amountDisplayString!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.amountMicros!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.currency!,
      unittest.equals('foo'),
    );
    checkSuperStickerMetadata(o.superStickerMetadata!);
    unittest.expect(
      o.tier!,
      unittest.equals(42),
    );
  }
  buildCounterLiveChatSuperStickerDetails--;
}

core.int buildCounterLiveChatTextMessageDetails = 0;
api.LiveChatTextMessageDetails buildLiveChatTextMessageDetails() {
  final o = api.LiveChatTextMessageDetails();
  buildCounterLiveChatTextMessageDetails++;
  if (buildCounterLiveChatTextMessageDetails < 3) {
    o.messageText = 'foo';
  }
  buildCounterLiveChatTextMessageDetails--;
  return o;
}

void checkLiveChatTextMessageDetails(api.LiveChatTextMessageDetails o) {
  buildCounterLiveChatTextMessageDetails++;
  if (buildCounterLiveChatTextMessageDetails < 3) {
    unittest.expect(
      o.messageText!,
      unittest.equals('foo'),
    );
  }
  buildCounterLiveChatTextMessageDetails--;
}

core.int buildCounterLiveChatUserBannedMessageDetails = 0;
api.LiveChatUserBannedMessageDetails buildLiveChatUserBannedMessageDetails() {
  final o = api.LiveChatUserBannedMessageDetails();
  buildCounterLiveChatUserBannedMessageDetails++;
  if (buildCounterLiveChatUserBannedMessageDetails < 3) {
    o.banDurationSeconds = 'foo';
    o.banType = 'foo';
    o.bannedUserDetails = buildChannelProfileDetails();
  }
  buildCounterLiveChatUserBannedMessageDetails--;
  return o;
}

void checkLiveChatUserBannedMessageDetails(
    api.LiveChatUserBannedMessageDetails o) {
  buildCounterLiveChatUserBannedMessageDetails++;
  if (buildCounterLiveChatUserBannedMessageDetails < 3) {
    unittest.expect(
      o.banDurationSeconds!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.banType!,
      unittest.equals('foo'),
    );
    checkChannelProfileDetails(o.bannedUserDetails!);
  }
  buildCounterLiveChatUserBannedMessageDetails--;
}

core.int buildCounterLiveStream = 0;
api.LiveStream buildLiveStream() {
  final o = api.LiveStream();
  buildCounterLiveStream++;
  if (buildCounterLiveStream < 3) {
    o.cdn = buildCdnSettings();
    o.contentDetails = buildLiveStreamContentDetails();
    o.etag = 'foo';
    o.id = 'foo';
    o.kind = 'foo';
    o.snippet = buildLiveStreamSnippet();
    o.status = buildLiveStreamStatus();
  }
  buildCounterLiveStream--;
  return o;
}

void checkLiveStream(api.LiveStream o) {
  buildCounterLiveStream++;
  if (buildCounterLiveStream < 3) {
    checkCdnSettings(o.cdn!);
    checkLiveStreamContentDetails(o.contentDetails!);
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
    checkLiveStreamSnippet(o.snippet!);
    checkLiveStreamStatus(o.status!);
  }
  buildCounterLiveStream--;
}

core.int buildCounterLiveStreamConfigurationIssue = 0;
api.LiveStreamConfigurationIssue buildLiveStreamConfigurationIssue() {
  final o = api.LiveStreamConfigurationIssue();
  buildCounterLiveStreamConfigurationIssue++;
  if (buildCounterLiveStreamConfigurationIssue < 3) {
    o.description = 'foo';
    o.reason = 'foo';
    o.severity = 'foo';
    o.type = 'foo';
  }
  buildCounterLiveStreamConfigurationIssue--;
  return o;
}

void checkLiveStreamConfigurationIssue(api.LiveStreamConfigurationIssue o) {
  buildCounterLiveStreamConfigurationIssue++;
  if (buildCounterLiveStreamConfigurationIssue < 3) {
    unittest.expect(
      o.description!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.reason!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.severity!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.type!,
      unittest.equals('foo'),
    );
  }
  buildCounterLiveStreamConfigurationIssue--;
}

core.int buildCounterLiveStreamContentDetails = 0;
api.LiveStreamContentDetails buildLiveStreamContentDetails() {
  final o = api.LiveStreamContentDetails();
  buildCounterLiveStreamContentDetails++;
  if (buildCounterLiveStreamContentDetails < 3) {
    o.closedCaptionsIngestionUrl = 'foo';
    o.isReusable = true;
  }
  buildCounterLiveStreamContentDetails--;
  return o;
}

void checkLiveStreamContentDetails(api.LiveStreamContentDetails o) {
  buildCounterLiveStreamContentDetails++;
  if (buildCounterLiveStreamContentDetails < 3) {
    unittest.expect(
      o.closedCaptionsIngestionUrl!,
      unittest.equals('foo'),
    );
    unittest.expect(o.isReusable!, unittest.isTrue);
  }
  buildCounterLiveStreamContentDetails--;
}

core.List<api.LiveStreamConfigurationIssue> buildUnnamed3082() => [
      buildLiveStreamConfigurationIssue(),
      buildLiveStreamConfigurationIssue(),
    ];

void checkUnnamed3082(core.List<api.LiveStreamConfigurationIssue> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkLiveStreamConfigurationIssue(o[0]);
  checkLiveStreamConfigurationIssue(o[1]);
}

core.int buildCounterLiveStreamHealthStatus = 0;
api.LiveStreamHealthStatus buildLiveStreamHealthStatus() {
  final o = api.LiveStreamHealthStatus();
  buildCounterLiveStreamHealthStatus++;
  if (buildCounterLiveStreamHealthStatus < 3) {
    o.configurationIssues = buildUnnamed3082();
    o.lastUpdateTimeSeconds = 'foo';
    o.status = 'foo';
  }
  buildCounterLiveStreamHealthStatus--;
  return o;
}

void checkLiveStreamHealthStatus(api.LiveStreamHealthStatus o) {
  buildCounterLiveStreamHealthStatus++;
  if (buildCounterLiveStreamHealthStatus < 3) {
    checkUnnamed3082(o.configurationIssues!);
    unittest.expect(
      o.lastUpdateTimeSeconds!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.status!,
      unittest.equals('foo'),
    );
  }
  buildCounterLiveStreamHealthStatus--;
}

core.List<api.LiveStream> buildUnnamed3083() => [
      buildLiveStream(),
      buildLiveStream(),
    ];

void checkUnnamed3083(core.List<api.LiveStream> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkLiveStream(o[0]);
  checkLiveStream(o[1]);
}

core.int buildCounterLiveStreamListResponse = 0;
api.LiveStreamListResponse buildLiveStreamListResponse() {
  final o = api.LiveStreamListResponse();
  buildCounterLiveStreamListResponse++;
  if (buildCounterLiveStreamListResponse < 3) {
    o.etag = 'foo';
    o.eventId = 'foo';
    o.items = buildUnnamed3083();
    o.kind = 'foo';
    o.nextPageToken = 'foo';
    o.pageInfo = buildPageInfo();
    o.prevPageToken = 'foo';
    o.tokenPagination = buildTokenPagination();
    o.visitorId = 'foo';
  }
  buildCounterLiveStreamListResponse--;
  return o;
}

void checkLiveStreamListResponse(api.LiveStreamListResponse o) {
  buildCounterLiveStreamListResponse++;
  if (buildCounterLiveStreamListResponse < 3) {
    unittest.expect(
      o.etag!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.eventId!,
      unittest.equals('foo'),
    );
    checkUnnamed3083(o.items!);
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkPageInfo(o.pageInfo!);
    unittest.expect(
      o.prevPageToken!,
      unittest.equals('foo'),
    );
    checkTokenPagination(o.tokenPagination!);
    unittest.expect(
      o.visitorId!,
      unittest.equals('foo'),
    );
  }
  buildCounterLiveStreamListResponse--;
}

core.int buildCounterLiveStreamSnippet = 0;
api.LiveStreamSnippet buildLiveStreamSnippet() {
  final o = api.LiveStreamSnippet();
  buildCounterLiveStreamSnippet++;
  if (buildCounterLiveStreamSnippet < 3) {
    o.channelId = 'foo';
    o.description = 'foo';
    o.isDefaultStream = true;
    o.publishedAt = core.DateTime.parse('2002-02-27T14:01:02');
    o.title = 'foo';
  }
  buildCounterLiveStreamSnippet--;
  return o;
}

void checkLiveStreamSnippet(api.LiveStreamSnippet o) {
  buildCounterLiveStreamSnippet++;
  if (buildCounterLiveStreamSnippet < 3) {
    unittest.expect(
      o.channelId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.description!,
      unittest.equals('foo'),
    );
    unittest.expect(o.isDefaultStream!, unittest.isTrue);
    unittest.expect(
      o.publishedAt!,
      unittest.equals(core.DateTime.parse('2002-02-27T14:01:02')),
    );
    unittest.expect(
      o.title!,
      unittest.equals('foo'),
    );
  }
  buildCounterLiveStreamSnippet--;
}

core.int buildCounterLiveStreamStatus = 0;
api.LiveStreamStatus buildLiveStreamStatus() {
  final o = api.LiveStreamStatus();
  buildCounterLiveStreamStatus++;
  if (buildCounterLiveStreamStatus < 3) {
    o.healthStatus = buildLiveStreamHealthStatus();
    o.streamStatus = 'foo';
  }
  buildCounterLiveStreamStatus--;
  return o;
}

void checkLiveStreamStatus(api.LiveStreamStatus o) {
  buildCounterLiveStreamStatus++;
  if (buildCounterLiveStreamStatus < 3) {
    checkLiveStreamHealthStatus(o.healthStatus!);
    unittest.expect(
      o.streamStatus!,
      unittest.equals('foo'),
    );
  }
  buildCounterLiveStreamStatus--;
}

core.List<api.LocalizedString> buildUnnamed3084() => [
      buildLocalizedString(),
      buildLocalizedString(),
    ];

void checkUnnamed3084(core.List<api.LocalizedString> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkLocalizedString(o[0]);
  checkLocalizedString(o[1]);
}

core.int buildCounterLocalizedProperty = 0;
api.LocalizedProperty buildLocalizedProperty() {
  final o = api.LocalizedProperty();
  buildCounterLocalizedProperty++;
  if (buildCounterLocalizedProperty < 3) {
    o.default_ = 'foo';
    o.defaultLanguage = buildLanguageTag();
    o.localized = buildUnnamed3084();
  }
  buildCounterLocalizedProperty--;
  return o;
}

void checkLocalizedProperty(api.LocalizedProperty o) {
  buildCounterLocalizedProperty++;
  if (buildCounterLocalizedProperty < 3) {
    unittest.expect(
      o.default_!,
      unittest.equals('foo'),
    );
    checkLanguageTag(o.defaultLanguage!);
    checkUnnamed3084(o.localized!);
  }
  buildCounterLocalizedProperty--;
}

core.int buildCounterLocalizedString = 0;
api.LocalizedString buildLocalizedString() {
  final o = api.LocalizedString();
  buildCounterLocalizedString++;
  if (buildCounterLocalizedString < 3) {
    o.language = 'foo';
    o.value = 'foo';
  }
  buildCounterLocalizedString--;
  return o;
}

void checkLocalizedString(api.LocalizedString o) {
  buildCounterLocalizedString++;
  if (buildCounterLocalizedString < 3) {
    unittest.expect(
      o.language!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.value!,
      unittest.equals('foo'),
    );
  }
  buildCounterLocalizedString--;
}

core.int buildCounterMember = 0;
api.Member buildMember() {
  final o = api.Member();
  buildCounterMember++;
  if (buildCounterMember < 3) {
    o.etag = 'foo';
    o.kind = 'foo';
    o.snippet = buildMemberSnippet();
  }
  buildCounterMember--;
  return o;
}

void checkMember(api.Member o) {
  buildCounterMember++;
  if (buildCounterMember < 3) {
    unittest.expect(
      o.etag!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    checkMemberSnippet(o.snippet!);
  }
  buildCounterMember--;
}

core.List<api.Member> buildUnnamed3085() => [
      buildMember(),
      buildMember(),
    ];

void checkUnnamed3085(core.List<api.Member> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMember(o[0]);
  checkMember(o[1]);
}

core.int buildCounterMemberListResponse = 0;
api.MemberListResponse buildMemberListResponse() {
  final o = api.MemberListResponse();
  buildCounterMemberListResponse++;
  if (buildCounterMemberListResponse < 3) {
    o.etag = 'foo';
    o.eventId = 'foo';
    o.items = buildUnnamed3085();
    o.kind = 'foo';
    o.nextPageToken = 'foo';
    o.pageInfo = buildPageInfo();
    o.tokenPagination = buildTokenPagination();
    o.visitorId = 'foo';
  }
  buildCounterMemberListResponse--;
  return o;
}

void checkMemberListResponse(api.MemberListResponse o) {
  buildCounterMemberListResponse++;
  if (buildCounterMemberListResponse < 3) {
    unittest.expect(
      o.etag!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.eventId!,
      unittest.equals('foo'),
    );
    checkUnnamed3085(o.items!);
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkPageInfo(o.pageInfo!);
    checkTokenPagination(o.tokenPagination!);
    unittest.expect(
      o.visitorId!,
      unittest.equals('foo'),
    );
  }
  buildCounterMemberListResponse--;
}

core.int buildCounterMemberSnippet = 0;
api.MemberSnippet buildMemberSnippet() {
  final o = api.MemberSnippet();
  buildCounterMemberSnippet++;
  if (buildCounterMemberSnippet < 3) {
    o.creatorChannelId = 'foo';
    o.memberDetails = buildChannelProfileDetails();
    o.membershipsDetails = buildMembershipsDetails();
  }
  buildCounterMemberSnippet--;
  return o;
}

void checkMemberSnippet(api.MemberSnippet o) {
  buildCounterMemberSnippet++;
  if (buildCounterMemberSnippet < 3) {
    unittest.expect(
      o.creatorChannelId!,
      unittest.equals('foo'),
    );
    checkChannelProfileDetails(o.memberDetails!);
    checkMembershipsDetails(o.membershipsDetails!);
  }
  buildCounterMemberSnippet--;
}

core.List<core.String> buildUnnamed3086() => [
      'foo',
      'foo',
    ];

void checkUnnamed3086(core.List<core.String> o) {
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

core.List<api.MembershipsDurationAtLevel> buildUnnamed3087() => [
      buildMembershipsDurationAtLevel(),
      buildMembershipsDurationAtLevel(),
    ];

void checkUnnamed3087(core.List<api.MembershipsDurationAtLevel> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMembershipsDurationAtLevel(o[0]);
  checkMembershipsDurationAtLevel(o[1]);
}

core.int buildCounterMembershipsDetails = 0;
api.MembershipsDetails buildMembershipsDetails() {
  final o = api.MembershipsDetails();
  buildCounterMembershipsDetails++;
  if (buildCounterMembershipsDetails < 3) {
    o.accessibleLevels = buildUnnamed3086();
    o.highestAccessibleLevel = 'foo';
    o.highestAccessibleLevelDisplayName = 'foo';
    o.membershipsDuration = buildMembershipsDuration();
    o.membershipsDurationAtLevels = buildUnnamed3087();
  }
  buildCounterMembershipsDetails--;
  return o;
}

void checkMembershipsDetails(api.MembershipsDetails o) {
  buildCounterMembershipsDetails++;
  if (buildCounterMembershipsDetails < 3) {
    checkUnnamed3086(o.accessibleLevels!);
    unittest.expect(
      o.highestAccessibleLevel!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.highestAccessibleLevelDisplayName!,
      unittest.equals('foo'),
    );
    checkMembershipsDuration(o.membershipsDuration!);
    checkUnnamed3087(o.membershipsDurationAtLevels!);
  }
  buildCounterMembershipsDetails--;
}

core.int buildCounterMembershipsDuration = 0;
api.MembershipsDuration buildMembershipsDuration() {
  final o = api.MembershipsDuration();
  buildCounterMembershipsDuration++;
  if (buildCounterMembershipsDuration < 3) {
    o.memberSince = 'foo';
    o.memberTotalDurationMonths = 42;
  }
  buildCounterMembershipsDuration--;
  return o;
}

void checkMembershipsDuration(api.MembershipsDuration o) {
  buildCounterMembershipsDuration++;
  if (buildCounterMembershipsDuration < 3) {
    unittest.expect(
      o.memberSince!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.memberTotalDurationMonths!,
      unittest.equals(42),
    );
  }
  buildCounterMembershipsDuration--;
}

core.int buildCounterMembershipsDurationAtLevel = 0;
api.MembershipsDurationAtLevel buildMembershipsDurationAtLevel() {
  final o = api.MembershipsDurationAtLevel();
  buildCounterMembershipsDurationAtLevel++;
  if (buildCounterMembershipsDurationAtLevel < 3) {
    o.level = 'foo';
    o.memberSince = 'foo';
    o.memberTotalDurationMonths = 42;
  }
  buildCounterMembershipsDurationAtLevel--;
  return o;
}

void checkMembershipsDurationAtLevel(api.MembershipsDurationAtLevel o) {
  buildCounterMembershipsDurationAtLevel++;
  if (buildCounterMembershipsDurationAtLevel < 3) {
    unittest.expect(
      o.level!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.memberSince!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.memberTotalDurationMonths!,
      unittest.equals(42),
    );
  }
  buildCounterMembershipsDurationAtLevel--;
}

core.int buildCounterMembershipsLevel = 0;
api.MembershipsLevel buildMembershipsLevel() {
  final o = api.MembershipsLevel();
  buildCounterMembershipsLevel++;
  if (buildCounterMembershipsLevel < 3) {
    o.etag = 'foo';
    o.id = 'foo';
    o.kind = 'foo';
    o.snippet = buildMembershipsLevelSnippet();
  }
  buildCounterMembershipsLevel--;
  return o;
}

void checkMembershipsLevel(api.MembershipsLevel o) {
  buildCounterMembershipsLevel++;
  if (buildCounterMembershipsLevel < 3) {
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
    checkMembershipsLevelSnippet(o.snippet!);
  }
  buildCounterMembershipsLevel--;
}

core.List<api.MembershipsLevel> buildUnnamed3088() => [
      buildMembershipsLevel(),
      buildMembershipsLevel(),
    ];

void checkUnnamed3088(core.List<api.MembershipsLevel> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMembershipsLevel(o[0]);
  checkMembershipsLevel(o[1]);
}

core.int buildCounterMembershipsLevelListResponse = 0;
api.MembershipsLevelListResponse buildMembershipsLevelListResponse() {
  final o = api.MembershipsLevelListResponse();
  buildCounterMembershipsLevelListResponse++;
  if (buildCounterMembershipsLevelListResponse < 3) {
    o.etag = 'foo';
    o.eventId = 'foo';
    o.items = buildUnnamed3088();
    o.kind = 'foo';
    o.visitorId = 'foo';
  }
  buildCounterMembershipsLevelListResponse--;
  return o;
}

void checkMembershipsLevelListResponse(api.MembershipsLevelListResponse o) {
  buildCounterMembershipsLevelListResponse++;
  if (buildCounterMembershipsLevelListResponse < 3) {
    unittest.expect(
      o.etag!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.eventId!,
      unittest.equals('foo'),
    );
    checkUnnamed3088(o.items!);
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.visitorId!,
      unittest.equals('foo'),
    );
  }
  buildCounterMembershipsLevelListResponse--;
}

core.int buildCounterMembershipsLevelSnippet = 0;
api.MembershipsLevelSnippet buildMembershipsLevelSnippet() {
  final o = api.MembershipsLevelSnippet();
  buildCounterMembershipsLevelSnippet++;
  if (buildCounterMembershipsLevelSnippet < 3) {
    o.creatorChannelId = 'foo';
    o.levelDetails = buildLevelDetails();
  }
  buildCounterMembershipsLevelSnippet--;
  return o;
}

void checkMembershipsLevelSnippet(api.MembershipsLevelSnippet o) {
  buildCounterMembershipsLevelSnippet++;
  if (buildCounterMembershipsLevelSnippet < 3) {
    unittest.expect(
      o.creatorChannelId!,
      unittest.equals('foo'),
    );
    checkLevelDetails(o.levelDetails!);
  }
  buildCounterMembershipsLevelSnippet--;
}

core.int buildCounterMonitorStreamInfo = 0;
api.MonitorStreamInfo buildMonitorStreamInfo() {
  final o = api.MonitorStreamInfo();
  buildCounterMonitorStreamInfo++;
  if (buildCounterMonitorStreamInfo < 3) {
    o.broadcastStreamDelayMs = 42;
    o.embedHtml = 'foo';
    o.enableMonitorStream = true;
  }
  buildCounterMonitorStreamInfo--;
  return o;
}

void checkMonitorStreamInfo(api.MonitorStreamInfo o) {
  buildCounterMonitorStreamInfo++;
  if (buildCounterMonitorStreamInfo < 3) {
    unittest.expect(
      o.broadcastStreamDelayMs!,
      unittest.equals(42),
    );
    unittest.expect(
      o.embedHtml!,
      unittest.equals('foo'),
    );
    unittest.expect(o.enableMonitorStream!, unittest.isTrue);
  }
  buildCounterMonitorStreamInfo--;
}

core.int buildCounterPageInfo = 0;
api.PageInfo buildPageInfo() {
  final o = api.PageInfo();
  buildCounterPageInfo++;
  if (buildCounterPageInfo < 3) {
    o.resultsPerPage = 42;
    o.totalResults = 42;
  }
  buildCounterPageInfo--;
  return o;
}

void checkPageInfo(api.PageInfo o) {
  buildCounterPageInfo++;
  if (buildCounterPageInfo < 3) {
    unittest.expect(
      o.resultsPerPage!,
      unittest.equals(42),
    );
    unittest.expect(
      o.totalResults!,
      unittest.equals(42),
    );
  }
  buildCounterPageInfo--;
}

core.Map<core.String, api.PlaylistLocalization> buildUnnamed3089() => {
      'x': buildPlaylistLocalization(),
      'y': buildPlaylistLocalization(),
    };

void checkUnnamed3089(core.Map<core.String, api.PlaylistLocalization> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPlaylistLocalization(o['x']!);
  checkPlaylistLocalization(o['y']!);
}

core.int buildCounterPlaylist = 0;
api.Playlist buildPlaylist() {
  final o = api.Playlist();
  buildCounterPlaylist++;
  if (buildCounterPlaylist < 3) {
    o.contentDetails = buildPlaylistContentDetails();
    o.etag = 'foo';
    o.id = 'foo';
    o.kind = 'foo';
    o.localizations = buildUnnamed3089();
    o.player = buildPlaylistPlayer();
    o.snippet = buildPlaylistSnippet();
    o.status = buildPlaylistStatus();
  }
  buildCounterPlaylist--;
  return o;
}

void checkPlaylist(api.Playlist o) {
  buildCounterPlaylist++;
  if (buildCounterPlaylist < 3) {
    checkPlaylistContentDetails(o.contentDetails!);
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
    checkUnnamed3089(o.localizations!);
    checkPlaylistPlayer(o.player!);
    checkPlaylistSnippet(o.snippet!);
    checkPlaylistStatus(o.status!);
  }
  buildCounterPlaylist--;
}

core.int buildCounterPlaylistContentDetails = 0;
api.PlaylistContentDetails buildPlaylistContentDetails() {
  final o = api.PlaylistContentDetails();
  buildCounterPlaylistContentDetails++;
  if (buildCounterPlaylistContentDetails < 3) {
    o.itemCount = 42;
  }
  buildCounterPlaylistContentDetails--;
  return o;
}

void checkPlaylistContentDetails(api.PlaylistContentDetails o) {
  buildCounterPlaylistContentDetails++;
  if (buildCounterPlaylistContentDetails < 3) {
    unittest.expect(
      o.itemCount!,
      unittest.equals(42),
    );
  }
  buildCounterPlaylistContentDetails--;
}

core.int buildCounterPlaylistItem = 0;
api.PlaylistItem buildPlaylistItem() {
  final o = api.PlaylistItem();
  buildCounterPlaylistItem++;
  if (buildCounterPlaylistItem < 3) {
    o.contentDetails = buildPlaylistItemContentDetails();
    o.etag = 'foo';
    o.id = 'foo';
    o.kind = 'foo';
    o.snippet = buildPlaylistItemSnippet();
    o.status = buildPlaylistItemStatus();
  }
  buildCounterPlaylistItem--;
  return o;
}

void checkPlaylistItem(api.PlaylistItem o) {
  buildCounterPlaylistItem++;
  if (buildCounterPlaylistItem < 3) {
    checkPlaylistItemContentDetails(o.contentDetails!);
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
    checkPlaylistItemSnippet(o.snippet!);
    checkPlaylistItemStatus(o.status!);
  }
  buildCounterPlaylistItem--;
}

core.int buildCounterPlaylistItemContentDetails = 0;
api.PlaylistItemContentDetails buildPlaylistItemContentDetails() {
  final o = api.PlaylistItemContentDetails();
  buildCounterPlaylistItemContentDetails++;
  if (buildCounterPlaylistItemContentDetails < 3) {
    o.endAt = 'foo';
    o.note = 'foo';
    o.startAt = 'foo';
    o.videoId = 'foo';
    o.videoPublishedAt = core.DateTime.parse('2002-02-27T14:01:02');
  }
  buildCounterPlaylistItemContentDetails--;
  return o;
}

void checkPlaylistItemContentDetails(api.PlaylistItemContentDetails o) {
  buildCounterPlaylistItemContentDetails++;
  if (buildCounterPlaylistItemContentDetails < 3) {
    unittest.expect(
      o.endAt!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.note!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.startAt!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.videoId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.videoPublishedAt!,
      unittest.equals(core.DateTime.parse('2002-02-27T14:01:02')),
    );
  }
  buildCounterPlaylistItemContentDetails--;
}

core.List<api.PlaylistItem> buildUnnamed3090() => [
      buildPlaylistItem(),
      buildPlaylistItem(),
    ];

void checkUnnamed3090(core.List<api.PlaylistItem> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPlaylistItem(o[0]);
  checkPlaylistItem(o[1]);
}

core.int buildCounterPlaylistItemListResponse = 0;
api.PlaylistItemListResponse buildPlaylistItemListResponse() {
  final o = api.PlaylistItemListResponse();
  buildCounterPlaylistItemListResponse++;
  if (buildCounterPlaylistItemListResponse < 3) {
    o.etag = 'foo';
    o.eventId = 'foo';
    o.items = buildUnnamed3090();
    o.kind = 'foo';
    o.nextPageToken = 'foo';
    o.pageInfo = buildPageInfo();
    o.prevPageToken = 'foo';
    o.tokenPagination = buildTokenPagination();
    o.visitorId = 'foo';
  }
  buildCounterPlaylistItemListResponse--;
  return o;
}

void checkPlaylistItemListResponse(api.PlaylistItemListResponse o) {
  buildCounterPlaylistItemListResponse++;
  if (buildCounterPlaylistItemListResponse < 3) {
    unittest.expect(
      o.etag!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.eventId!,
      unittest.equals('foo'),
    );
    checkUnnamed3090(o.items!);
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkPageInfo(o.pageInfo!);
    unittest.expect(
      o.prevPageToken!,
      unittest.equals('foo'),
    );
    checkTokenPagination(o.tokenPagination!);
    unittest.expect(
      o.visitorId!,
      unittest.equals('foo'),
    );
  }
  buildCounterPlaylistItemListResponse--;
}

core.int buildCounterPlaylistItemSnippet = 0;
api.PlaylistItemSnippet buildPlaylistItemSnippet() {
  final o = api.PlaylistItemSnippet();
  buildCounterPlaylistItemSnippet++;
  if (buildCounterPlaylistItemSnippet < 3) {
    o.channelId = 'foo';
    o.channelTitle = 'foo';
    o.description = 'foo';
    o.playlistId = 'foo';
    o.position = 42;
    o.publishedAt = core.DateTime.parse('2002-02-27T14:01:02');
    o.resourceId = buildResourceId();
    o.thumbnails = buildThumbnailDetails();
    o.title = 'foo';
    o.videoOwnerChannelId = 'foo';
    o.videoOwnerChannelTitle = 'foo';
  }
  buildCounterPlaylistItemSnippet--;
  return o;
}

void checkPlaylistItemSnippet(api.PlaylistItemSnippet o) {
  buildCounterPlaylistItemSnippet++;
  if (buildCounterPlaylistItemSnippet < 3) {
    unittest.expect(
      o.channelId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.channelTitle!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.description!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.playlistId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.position!,
      unittest.equals(42),
    );
    unittest.expect(
      o.publishedAt!,
      unittest.equals(core.DateTime.parse('2002-02-27T14:01:02')),
    );
    checkResourceId(o.resourceId!);
    checkThumbnailDetails(o.thumbnails!);
    unittest.expect(
      o.title!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.videoOwnerChannelId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.videoOwnerChannelTitle!,
      unittest.equals('foo'),
    );
  }
  buildCounterPlaylistItemSnippet--;
}

core.int buildCounterPlaylistItemStatus = 0;
api.PlaylistItemStatus buildPlaylistItemStatus() {
  final o = api.PlaylistItemStatus();
  buildCounterPlaylistItemStatus++;
  if (buildCounterPlaylistItemStatus < 3) {
    o.privacyStatus = 'foo';
  }
  buildCounterPlaylistItemStatus--;
  return o;
}

void checkPlaylistItemStatus(api.PlaylistItemStatus o) {
  buildCounterPlaylistItemStatus++;
  if (buildCounterPlaylistItemStatus < 3) {
    unittest.expect(
      o.privacyStatus!,
      unittest.equals('foo'),
    );
  }
  buildCounterPlaylistItemStatus--;
}

core.List<api.Playlist> buildUnnamed3091() => [
      buildPlaylist(),
      buildPlaylist(),
    ];

void checkUnnamed3091(core.List<api.Playlist> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPlaylist(o[0]);
  checkPlaylist(o[1]);
}

core.int buildCounterPlaylistListResponse = 0;
api.PlaylistListResponse buildPlaylistListResponse() {
  final o = api.PlaylistListResponse();
  buildCounterPlaylistListResponse++;
  if (buildCounterPlaylistListResponse < 3) {
    o.etag = 'foo';
    o.eventId = 'foo';
    o.items = buildUnnamed3091();
    o.kind = 'foo';
    o.nextPageToken = 'foo';
    o.pageInfo = buildPageInfo();
    o.prevPageToken = 'foo';
    o.tokenPagination = buildTokenPagination();
    o.visitorId = 'foo';
  }
  buildCounterPlaylistListResponse--;
  return o;
}

void checkPlaylistListResponse(api.PlaylistListResponse o) {
  buildCounterPlaylistListResponse++;
  if (buildCounterPlaylistListResponse < 3) {
    unittest.expect(
      o.etag!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.eventId!,
      unittest.equals('foo'),
    );
    checkUnnamed3091(o.items!);
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkPageInfo(o.pageInfo!);
    unittest.expect(
      o.prevPageToken!,
      unittest.equals('foo'),
    );
    checkTokenPagination(o.tokenPagination!);
    unittest.expect(
      o.visitorId!,
      unittest.equals('foo'),
    );
  }
  buildCounterPlaylistListResponse--;
}

core.int buildCounterPlaylistLocalization = 0;
api.PlaylistLocalization buildPlaylistLocalization() {
  final o = api.PlaylistLocalization();
  buildCounterPlaylistLocalization++;
  if (buildCounterPlaylistLocalization < 3) {
    o.description = 'foo';
    o.title = 'foo';
  }
  buildCounterPlaylistLocalization--;
  return o;
}

void checkPlaylistLocalization(api.PlaylistLocalization o) {
  buildCounterPlaylistLocalization++;
  if (buildCounterPlaylistLocalization < 3) {
    unittest.expect(
      o.description!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.title!,
      unittest.equals('foo'),
    );
  }
  buildCounterPlaylistLocalization--;
}

core.int buildCounterPlaylistPlayer = 0;
api.PlaylistPlayer buildPlaylistPlayer() {
  final o = api.PlaylistPlayer();
  buildCounterPlaylistPlayer++;
  if (buildCounterPlaylistPlayer < 3) {
    o.embedHtml = 'foo';
  }
  buildCounterPlaylistPlayer--;
  return o;
}

void checkPlaylistPlayer(api.PlaylistPlayer o) {
  buildCounterPlaylistPlayer++;
  if (buildCounterPlaylistPlayer < 3) {
    unittest.expect(
      o.embedHtml!,
      unittest.equals('foo'),
    );
  }
  buildCounterPlaylistPlayer--;
}

core.List<core.String> buildUnnamed3092() => [
      'foo',
      'foo',
    ];

void checkUnnamed3092(core.List<core.String> o) {
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

core.int buildCounterPlaylistSnippet = 0;
api.PlaylistSnippet buildPlaylistSnippet() {
  final o = api.PlaylistSnippet();
  buildCounterPlaylistSnippet++;
  if (buildCounterPlaylistSnippet < 3) {
    o.channelId = 'foo';
    o.channelTitle = 'foo';
    o.defaultLanguage = 'foo';
    o.description = 'foo';
    o.localized = buildPlaylistLocalization();
    o.publishedAt = core.DateTime.parse('2002-02-27T14:01:02');
    o.tags = buildUnnamed3092();
    o.thumbnailVideoId = 'foo';
    o.thumbnails = buildThumbnailDetails();
    o.title = 'foo';
  }
  buildCounterPlaylistSnippet--;
  return o;
}

void checkPlaylistSnippet(api.PlaylistSnippet o) {
  buildCounterPlaylistSnippet++;
  if (buildCounterPlaylistSnippet < 3) {
    unittest.expect(
      o.channelId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.channelTitle!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.defaultLanguage!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.description!,
      unittest.equals('foo'),
    );
    checkPlaylistLocalization(o.localized!);
    unittest.expect(
      o.publishedAt!,
      unittest.equals(core.DateTime.parse('2002-02-27T14:01:02')),
    );
    checkUnnamed3092(o.tags!);
    unittest.expect(
      o.thumbnailVideoId!,
      unittest.equals('foo'),
    );
    checkThumbnailDetails(o.thumbnails!);
    unittest.expect(
      o.title!,
      unittest.equals('foo'),
    );
  }
  buildCounterPlaylistSnippet--;
}

core.int buildCounterPlaylistStatus = 0;
api.PlaylistStatus buildPlaylistStatus() {
  final o = api.PlaylistStatus();
  buildCounterPlaylistStatus++;
  if (buildCounterPlaylistStatus < 3) {
    o.privacyStatus = 'foo';
  }
  buildCounterPlaylistStatus--;
  return o;
}

void checkPlaylistStatus(api.PlaylistStatus o) {
  buildCounterPlaylistStatus++;
  if (buildCounterPlaylistStatus < 3) {
    unittest.expect(
      o.privacyStatus!,
      unittest.equals('foo'),
    );
  }
  buildCounterPlaylistStatus--;
}

core.int buildCounterPropertyValue = 0;
api.PropertyValue buildPropertyValue() {
  final o = api.PropertyValue();
  buildCounterPropertyValue++;
  if (buildCounterPropertyValue < 3) {
    o.property = 'foo';
    o.value = 'foo';
  }
  buildCounterPropertyValue--;
  return o;
}

void checkPropertyValue(api.PropertyValue o) {
  buildCounterPropertyValue++;
  if (buildCounterPropertyValue < 3) {
    unittest.expect(
      o.property!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.value!,
      unittest.equals('foo'),
    );
  }
  buildCounterPropertyValue--;
}

core.int buildCounterRelatedEntity = 0;
api.RelatedEntity buildRelatedEntity() {
  final o = api.RelatedEntity();
  buildCounterRelatedEntity++;
  if (buildCounterRelatedEntity < 3) {
    o.entity = buildEntity();
  }
  buildCounterRelatedEntity--;
  return o;
}

void checkRelatedEntity(api.RelatedEntity o) {
  buildCounterRelatedEntity++;
  if (buildCounterRelatedEntity < 3) {
    checkEntity(o.entity!);
  }
  buildCounterRelatedEntity--;
}

core.int buildCounterResourceId = 0;
api.ResourceId buildResourceId() {
  final o = api.ResourceId();
  buildCounterResourceId++;
  if (buildCounterResourceId < 3) {
    o.channelId = 'foo';
    o.kind = 'foo';
    o.playlistId = 'foo';
    o.videoId = 'foo';
  }
  buildCounterResourceId--;
  return o;
}

void checkResourceId(api.ResourceId o) {
  buildCounterResourceId++;
  if (buildCounterResourceId < 3) {
    unittest.expect(
      o.channelId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.playlistId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.videoId!,
      unittest.equals('foo'),
    );
  }
  buildCounterResourceId--;
}

core.List<api.SearchResult> buildUnnamed3093() => [
      buildSearchResult(),
      buildSearchResult(),
    ];

void checkUnnamed3093(core.List<api.SearchResult> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSearchResult(o[0]);
  checkSearchResult(o[1]);
}

core.int buildCounterSearchListResponse = 0;
api.SearchListResponse buildSearchListResponse() {
  final o = api.SearchListResponse();
  buildCounterSearchListResponse++;
  if (buildCounterSearchListResponse < 3) {
    o.etag = 'foo';
    o.eventId = 'foo';
    o.items = buildUnnamed3093();
    o.kind = 'foo';
    o.nextPageToken = 'foo';
    o.pageInfo = buildPageInfo();
    o.prevPageToken = 'foo';
    o.regionCode = 'foo';
    o.tokenPagination = buildTokenPagination();
    o.visitorId = 'foo';
  }
  buildCounterSearchListResponse--;
  return o;
}

void checkSearchListResponse(api.SearchListResponse o) {
  buildCounterSearchListResponse++;
  if (buildCounterSearchListResponse < 3) {
    unittest.expect(
      o.etag!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.eventId!,
      unittest.equals('foo'),
    );
    checkUnnamed3093(o.items!);
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkPageInfo(o.pageInfo!);
    unittest.expect(
      o.prevPageToken!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.regionCode!,
      unittest.equals('foo'),
    );
    checkTokenPagination(o.tokenPagination!);
    unittest.expect(
      o.visitorId!,
      unittest.equals('foo'),
    );
  }
  buildCounterSearchListResponse--;
}

core.int buildCounterSearchResult = 0;
api.SearchResult buildSearchResult() {
  final o = api.SearchResult();
  buildCounterSearchResult++;
  if (buildCounterSearchResult < 3) {
    o.etag = 'foo';
    o.id = buildResourceId();
    o.kind = 'foo';
    o.snippet = buildSearchResultSnippet();
  }
  buildCounterSearchResult--;
  return o;
}

void checkSearchResult(api.SearchResult o) {
  buildCounterSearchResult++;
  if (buildCounterSearchResult < 3) {
    unittest.expect(
      o.etag!,
      unittest.equals('foo'),
    );
    checkResourceId(o.id!);
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    checkSearchResultSnippet(o.snippet!);
  }
  buildCounterSearchResult--;
}

core.int buildCounterSearchResultSnippet = 0;
api.SearchResultSnippet buildSearchResultSnippet() {
  final o = api.SearchResultSnippet();
  buildCounterSearchResultSnippet++;
  if (buildCounterSearchResultSnippet < 3) {
    o.channelId = 'foo';
    o.channelTitle = 'foo';
    o.description = 'foo';
    o.liveBroadcastContent = 'foo';
    o.publishedAt = core.DateTime.parse('2002-02-27T14:01:02');
    o.thumbnails = buildThumbnailDetails();
    o.title = 'foo';
  }
  buildCounterSearchResultSnippet--;
  return o;
}

void checkSearchResultSnippet(api.SearchResultSnippet o) {
  buildCounterSearchResultSnippet++;
  if (buildCounterSearchResultSnippet < 3) {
    unittest.expect(
      o.channelId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.channelTitle!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.description!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.liveBroadcastContent!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.publishedAt!,
      unittest.equals(core.DateTime.parse('2002-02-27T14:01:02')),
    );
    checkThumbnailDetails(o.thumbnails!);
    unittest.expect(
      o.title!,
      unittest.equals('foo'),
    );
  }
  buildCounterSearchResultSnippet--;
}

core.int buildCounterSubscription = 0;
api.Subscription buildSubscription() {
  final o = api.Subscription();
  buildCounterSubscription++;
  if (buildCounterSubscription < 3) {
    o.contentDetails = buildSubscriptionContentDetails();
    o.etag = 'foo';
    o.id = 'foo';
    o.kind = 'foo';
    o.snippet = buildSubscriptionSnippet();
    o.subscriberSnippet = buildSubscriptionSubscriberSnippet();
  }
  buildCounterSubscription--;
  return o;
}

void checkSubscription(api.Subscription o) {
  buildCounterSubscription++;
  if (buildCounterSubscription < 3) {
    checkSubscriptionContentDetails(o.contentDetails!);
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
    checkSubscriptionSnippet(o.snippet!);
    checkSubscriptionSubscriberSnippet(o.subscriberSnippet!);
  }
  buildCounterSubscription--;
}

core.int buildCounterSubscriptionContentDetails = 0;
api.SubscriptionContentDetails buildSubscriptionContentDetails() {
  final o = api.SubscriptionContentDetails();
  buildCounterSubscriptionContentDetails++;
  if (buildCounterSubscriptionContentDetails < 3) {
    o.activityType = 'foo';
    o.newItemCount = 42;
    o.totalItemCount = 42;
  }
  buildCounterSubscriptionContentDetails--;
  return o;
}

void checkSubscriptionContentDetails(api.SubscriptionContentDetails o) {
  buildCounterSubscriptionContentDetails++;
  if (buildCounterSubscriptionContentDetails < 3) {
    unittest.expect(
      o.activityType!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.newItemCount!,
      unittest.equals(42),
    );
    unittest.expect(
      o.totalItemCount!,
      unittest.equals(42),
    );
  }
  buildCounterSubscriptionContentDetails--;
}

core.List<api.Subscription> buildUnnamed3094() => [
      buildSubscription(),
      buildSubscription(),
    ];

void checkUnnamed3094(core.List<api.Subscription> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSubscription(o[0]);
  checkSubscription(o[1]);
}

core.int buildCounterSubscriptionListResponse = 0;
api.SubscriptionListResponse buildSubscriptionListResponse() {
  final o = api.SubscriptionListResponse();
  buildCounterSubscriptionListResponse++;
  if (buildCounterSubscriptionListResponse < 3) {
    o.etag = 'foo';
    o.eventId = 'foo';
    o.items = buildUnnamed3094();
    o.kind = 'foo';
    o.nextPageToken = 'foo';
    o.pageInfo = buildPageInfo();
    o.prevPageToken = 'foo';
    o.tokenPagination = buildTokenPagination();
    o.visitorId = 'foo';
  }
  buildCounterSubscriptionListResponse--;
  return o;
}

void checkSubscriptionListResponse(api.SubscriptionListResponse o) {
  buildCounterSubscriptionListResponse++;
  if (buildCounterSubscriptionListResponse < 3) {
    unittest.expect(
      o.etag!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.eventId!,
      unittest.equals('foo'),
    );
    checkUnnamed3094(o.items!);
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkPageInfo(o.pageInfo!);
    unittest.expect(
      o.prevPageToken!,
      unittest.equals('foo'),
    );
    checkTokenPagination(o.tokenPagination!);
    unittest.expect(
      o.visitorId!,
      unittest.equals('foo'),
    );
  }
  buildCounterSubscriptionListResponse--;
}

core.int buildCounterSubscriptionSnippet = 0;
api.SubscriptionSnippet buildSubscriptionSnippet() {
  final o = api.SubscriptionSnippet();
  buildCounterSubscriptionSnippet++;
  if (buildCounterSubscriptionSnippet < 3) {
    o.channelId = 'foo';
    o.channelTitle = 'foo';
    o.description = 'foo';
    o.publishedAt = core.DateTime.parse('2002-02-27T14:01:02');
    o.resourceId = buildResourceId();
    o.thumbnails = buildThumbnailDetails();
    o.title = 'foo';
  }
  buildCounterSubscriptionSnippet--;
  return o;
}

void checkSubscriptionSnippet(api.SubscriptionSnippet o) {
  buildCounterSubscriptionSnippet++;
  if (buildCounterSubscriptionSnippet < 3) {
    unittest.expect(
      o.channelId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.channelTitle!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.description!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.publishedAt!,
      unittest.equals(core.DateTime.parse('2002-02-27T14:01:02')),
    );
    checkResourceId(o.resourceId!);
    checkThumbnailDetails(o.thumbnails!);
    unittest.expect(
      o.title!,
      unittest.equals('foo'),
    );
  }
  buildCounterSubscriptionSnippet--;
}

core.int buildCounterSubscriptionSubscriberSnippet = 0;
api.SubscriptionSubscriberSnippet buildSubscriptionSubscriberSnippet() {
  final o = api.SubscriptionSubscriberSnippet();
  buildCounterSubscriptionSubscriberSnippet++;
  if (buildCounterSubscriptionSubscriberSnippet < 3) {
    o.channelId = 'foo';
    o.description = 'foo';
    o.thumbnails = buildThumbnailDetails();
    o.title = 'foo';
  }
  buildCounterSubscriptionSubscriberSnippet--;
  return o;
}

void checkSubscriptionSubscriberSnippet(api.SubscriptionSubscriberSnippet o) {
  buildCounterSubscriptionSubscriberSnippet++;
  if (buildCounterSubscriptionSubscriberSnippet < 3) {
    unittest.expect(
      o.channelId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.description!,
      unittest.equals('foo'),
    );
    checkThumbnailDetails(o.thumbnails!);
    unittest.expect(
      o.title!,
      unittest.equals('foo'),
    );
  }
  buildCounterSubscriptionSubscriberSnippet--;
}

core.int buildCounterSuperChatEvent = 0;
api.SuperChatEvent buildSuperChatEvent() {
  final o = api.SuperChatEvent();
  buildCounterSuperChatEvent++;
  if (buildCounterSuperChatEvent < 3) {
    o.etag = 'foo';
    o.id = 'foo';
    o.kind = 'foo';
    o.snippet = buildSuperChatEventSnippet();
  }
  buildCounterSuperChatEvent--;
  return o;
}

void checkSuperChatEvent(api.SuperChatEvent o) {
  buildCounterSuperChatEvent++;
  if (buildCounterSuperChatEvent < 3) {
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
    checkSuperChatEventSnippet(o.snippet!);
  }
  buildCounterSuperChatEvent--;
}

core.List<api.SuperChatEvent> buildUnnamed3095() => [
      buildSuperChatEvent(),
      buildSuperChatEvent(),
    ];

void checkUnnamed3095(core.List<api.SuperChatEvent> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSuperChatEvent(o[0]);
  checkSuperChatEvent(o[1]);
}

core.int buildCounterSuperChatEventListResponse = 0;
api.SuperChatEventListResponse buildSuperChatEventListResponse() {
  final o = api.SuperChatEventListResponse();
  buildCounterSuperChatEventListResponse++;
  if (buildCounterSuperChatEventListResponse < 3) {
    o.etag = 'foo';
    o.eventId = 'foo';
    o.items = buildUnnamed3095();
    o.kind = 'foo';
    o.nextPageToken = 'foo';
    o.pageInfo = buildPageInfo();
    o.tokenPagination = buildTokenPagination();
    o.visitorId = 'foo';
  }
  buildCounterSuperChatEventListResponse--;
  return o;
}

void checkSuperChatEventListResponse(api.SuperChatEventListResponse o) {
  buildCounterSuperChatEventListResponse++;
  if (buildCounterSuperChatEventListResponse < 3) {
    unittest.expect(
      o.etag!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.eventId!,
      unittest.equals('foo'),
    );
    checkUnnamed3095(o.items!);
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkPageInfo(o.pageInfo!);
    checkTokenPagination(o.tokenPagination!);
    unittest.expect(
      o.visitorId!,
      unittest.equals('foo'),
    );
  }
  buildCounterSuperChatEventListResponse--;
}

core.int buildCounterSuperChatEventSnippet = 0;
api.SuperChatEventSnippet buildSuperChatEventSnippet() {
  final o = api.SuperChatEventSnippet();
  buildCounterSuperChatEventSnippet++;
  if (buildCounterSuperChatEventSnippet < 3) {
    o.amountMicros = 'foo';
    o.channelId = 'foo';
    o.commentText = 'foo';
    o.createdAt = core.DateTime.parse('2002-02-27T14:01:02');
    o.currency = 'foo';
    o.displayString = 'foo';
    o.isSuperStickerEvent = true;
    o.messageType = 42;
    o.superStickerMetadata = buildSuperStickerMetadata();
    o.supporterDetails = buildChannelProfileDetails();
  }
  buildCounterSuperChatEventSnippet--;
  return o;
}

void checkSuperChatEventSnippet(api.SuperChatEventSnippet o) {
  buildCounterSuperChatEventSnippet++;
  if (buildCounterSuperChatEventSnippet < 3) {
    unittest.expect(
      o.amountMicros!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.channelId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.commentText!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.createdAt!,
      unittest.equals(core.DateTime.parse('2002-02-27T14:01:02')),
    );
    unittest.expect(
      o.currency!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.displayString!,
      unittest.equals('foo'),
    );
    unittest.expect(o.isSuperStickerEvent!, unittest.isTrue);
    unittest.expect(
      o.messageType!,
      unittest.equals(42),
    );
    checkSuperStickerMetadata(o.superStickerMetadata!);
    checkChannelProfileDetails(o.supporterDetails!);
  }
  buildCounterSuperChatEventSnippet--;
}

core.int buildCounterSuperStickerMetadata = 0;
api.SuperStickerMetadata buildSuperStickerMetadata() {
  final o = api.SuperStickerMetadata();
  buildCounterSuperStickerMetadata++;
  if (buildCounterSuperStickerMetadata < 3) {
    o.altText = 'foo';
    o.altTextLanguage = 'foo';
    o.stickerId = 'foo';
  }
  buildCounterSuperStickerMetadata--;
  return o;
}

void checkSuperStickerMetadata(api.SuperStickerMetadata o) {
  buildCounterSuperStickerMetadata++;
  if (buildCounterSuperStickerMetadata < 3) {
    unittest.expect(
      o.altText!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.altTextLanguage!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.stickerId!,
      unittest.equals('foo'),
    );
  }
  buildCounterSuperStickerMetadata--;
}

core.int buildCounterTestItem = 0;
api.TestItem buildTestItem() {
  final o = api.TestItem();
  buildCounterTestItem++;
  if (buildCounterTestItem < 3) {
    o.featuredPart = true;
    o.gaia = 'foo';
    o.id = 'foo';
    o.snippet = buildTestItemTestItemSnippet();
  }
  buildCounterTestItem--;
  return o;
}

void checkTestItem(api.TestItem o) {
  buildCounterTestItem++;
  if (buildCounterTestItem < 3) {
    unittest.expect(o.featuredPart!, unittest.isTrue);
    unittest.expect(
      o.gaia!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.id!,
      unittest.equals('foo'),
    );
    checkTestItemTestItemSnippet(o.snippet!);
  }
  buildCounterTestItem--;
}

core.int buildCounterTestItemTestItemSnippet = 0;
api.TestItemTestItemSnippet buildTestItemTestItemSnippet() {
  final o = api.TestItemTestItemSnippet();
  buildCounterTestItemTestItemSnippet++;
  if (buildCounterTestItemTestItemSnippet < 3) {}
  buildCounterTestItemTestItemSnippet--;
  return o;
}

void checkTestItemTestItemSnippet(api.TestItemTestItemSnippet o) {
  buildCounterTestItemTestItemSnippet++;
  if (buildCounterTestItemTestItemSnippet < 3) {}
  buildCounterTestItemTestItemSnippet--;
}

core.int buildCounterThirdPartyLink = 0;
api.ThirdPartyLink buildThirdPartyLink() {
  final o = api.ThirdPartyLink();
  buildCounterThirdPartyLink++;
  if (buildCounterThirdPartyLink < 3) {
    o.etag = 'foo';
    o.kind = 'foo';
    o.linkingToken = 'foo';
    o.snippet = buildThirdPartyLinkSnippet();
    o.status = buildThirdPartyLinkStatus();
  }
  buildCounterThirdPartyLink--;
  return o;
}

void checkThirdPartyLink(api.ThirdPartyLink o) {
  buildCounterThirdPartyLink++;
  if (buildCounterThirdPartyLink < 3) {
    unittest.expect(
      o.etag!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.linkingToken!,
      unittest.equals('foo'),
    );
    checkThirdPartyLinkSnippet(o.snippet!);
    checkThirdPartyLinkStatus(o.status!);
  }
  buildCounterThirdPartyLink--;
}

core.int buildCounterThirdPartyLinkSnippet = 0;
api.ThirdPartyLinkSnippet buildThirdPartyLinkSnippet() {
  final o = api.ThirdPartyLinkSnippet();
  buildCounterThirdPartyLinkSnippet++;
  if (buildCounterThirdPartyLinkSnippet < 3) {
    o.channelToStoreLink = buildChannelToStoreLinkDetails();
    o.type = 'foo';
  }
  buildCounterThirdPartyLinkSnippet--;
  return o;
}

void checkThirdPartyLinkSnippet(api.ThirdPartyLinkSnippet o) {
  buildCounterThirdPartyLinkSnippet++;
  if (buildCounterThirdPartyLinkSnippet < 3) {
    checkChannelToStoreLinkDetails(o.channelToStoreLink!);
    unittest.expect(
      o.type!,
      unittest.equals('foo'),
    );
  }
  buildCounterThirdPartyLinkSnippet--;
}

core.int buildCounterThirdPartyLinkStatus = 0;
api.ThirdPartyLinkStatus buildThirdPartyLinkStatus() {
  final o = api.ThirdPartyLinkStatus();
  buildCounterThirdPartyLinkStatus++;
  if (buildCounterThirdPartyLinkStatus < 3) {
    o.linkStatus = 'foo';
  }
  buildCounterThirdPartyLinkStatus--;
  return o;
}

void checkThirdPartyLinkStatus(api.ThirdPartyLinkStatus o) {
  buildCounterThirdPartyLinkStatus++;
  if (buildCounterThirdPartyLinkStatus < 3) {
    unittest.expect(
      o.linkStatus!,
      unittest.equals('foo'),
    );
  }
  buildCounterThirdPartyLinkStatus--;
}

core.int buildCounterThumbnail = 0;
api.Thumbnail buildThumbnail() {
  final o = api.Thumbnail();
  buildCounterThumbnail++;
  if (buildCounterThumbnail < 3) {
    o.height = 42;
    o.url = 'foo';
    o.width = 42;
  }
  buildCounterThumbnail--;
  return o;
}

void checkThumbnail(api.Thumbnail o) {
  buildCounterThumbnail++;
  if (buildCounterThumbnail < 3) {
    unittest.expect(
      o.height!,
      unittest.equals(42),
    );
    unittest.expect(
      o.url!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.width!,
      unittest.equals(42),
    );
  }
  buildCounterThumbnail--;
}

core.int buildCounterThumbnailDetails = 0;
api.ThumbnailDetails buildThumbnailDetails() {
  final o = api.ThumbnailDetails();
  buildCounterThumbnailDetails++;
  if (buildCounterThumbnailDetails < 3) {
    o.default_ = buildThumbnail();
    o.high = buildThumbnail();
    o.maxres = buildThumbnail();
    o.medium = buildThumbnail();
    o.standard = buildThumbnail();
  }
  buildCounterThumbnailDetails--;
  return o;
}

void checkThumbnailDetails(api.ThumbnailDetails o) {
  buildCounterThumbnailDetails++;
  if (buildCounterThumbnailDetails < 3) {
    checkThumbnail(o.default_!);
    checkThumbnail(o.high!);
    checkThumbnail(o.maxres!);
    checkThumbnail(o.medium!);
    checkThumbnail(o.standard!);
  }
  buildCounterThumbnailDetails--;
}

core.List<api.ThumbnailDetails> buildUnnamed3096() => [
      buildThumbnailDetails(),
      buildThumbnailDetails(),
    ];

void checkUnnamed3096(core.List<api.ThumbnailDetails> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkThumbnailDetails(o[0]);
  checkThumbnailDetails(o[1]);
}

core.int buildCounterThumbnailSetResponse = 0;
api.ThumbnailSetResponse buildThumbnailSetResponse() {
  final o = api.ThumbnailSetResponse();
  buildCounterThumbnailSetResponse++;
  if (buildCounterThumbnailSetResponse < 3) {
    o.etag = 'foo';
    o.eventId = 'foo';
    o.items = buildUnnamed3096();
    o.kind = 'foo';
    o.visitorId = 'foo';
  }
  buildCounterThumbnailSetResponse--;
  return o;
}

void checkThumbnailSetResponse(api.ThumbnailSetResponse o) {
  buildCounterThumbnailSetResponse++;
  if (buildCounterThumbnailSetResponse < 3) {
    unittest.expect(
      o.etag!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.eventId!,
      unittest.equals('foo'),
    );
    checkUnnamed3096(o.items!);
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.visitorId!,
      unittest.equals('foo'),
    );
  }
  buildCounterThumbnailSetResponse--;
}

core.int buildCounterTokenPagination = 0;
api.TokenPagination buildTokenPagination() {
  final o = api.TokenPagination();
  buildCounterTokenPagination++;
  if (buildCounterTokenPagination < 3) {}
  buildCounterTokenPagination--;
  return o;
}

void checkTokenPagination(api.TokenPagination o) {
  buildCounterTokenPagination++;
  if (buildCounterTokenPagination < 3) {}
  buildCounterTokenPagination--;
}

core.Map<core.String, api.VideoLocalization> buildUnnamed3097() => {
      'x': buildVideoLocalization(),
      'y': buildVideoLocalization(),
    };

void checkUnnamed3097(core.Map<core.String, api.VideoLocalization> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkVideoLocalization(o['x']!);
  checkVideoLocalization(o['y']!);
}

core.int buildCounterVideo = 0;
api.Video buildVideo() {
  final o = api.Video();
  buildCounterVideo++;
  if (buildCounterVideo < 3) {
    o.ageGating = buildVideoAgeGating();
    o.contentDetails = buildVideoContentDetails();
    o.etag = 'foo';
    o.fileDetails = buildVideoFileDetails();
    o.id = 'foo';
    o.kind = 'foo';
    o.liveStreamingDetails = buildVideoLiveStreamingDetails();
    o.localizations = buildUnnamed3097();
    o.monetizationDetails = buildVideoMonetizationDetails();
    o.player = buildVideoPlayer();
    o.processingDetails = buildVideoProcessingDetails();
    o.projectDetails = buildVideoProjectDetails();
    o.recordingDetails = buildVideoRecordingDetails();
    o.snippet = buildVideoSnippet();
    o.statistics = buildVideoStatistics();
    o.status = buildVideoStatus();
    o.suggestions = buildVideoSuggestions();
    o.topicDetails = buildVideoTopicDetails();
  }
  buildCounterVideo--;
  return o;
}

void checkVideo(api.Video o) {
  buildCounterVideo++;
  if (buildCounterVideo < 3) {
    checkVideoAgeGating(o.ageGating!);
    checkVideoContentDetails(o.contentDetails!);
    unittest.expect(
      o.etag!,
      unittest.equals('foo'),
    );
    checkVideoFileDetails(o.fileDetails!);
    unittest.expect(
      o.id!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    checkVideoLiveStreamingDetails(o.liveStreamingDetails!);
    checkUnnamed3097(o.localizations!);
    checkVideoMonetizationDetails(o.monetizationDetails!);
    checkVideoPlayer(o.player!);
    checkVideoProcessingDetails(o.processingDetails!);
    checkVideoProjectDetails(o.projectDetails!);
    checkVideoRecordingDetails(o.recordingDetails!);
    checkVideoSnippet(o.snippet!);
    checkVideoStatistics(o.statistics!);
    checkVideoStatus(o.status!);
    checkVideoSuggestions(o.suggestions!);
    checkVideoTopicDetails(o.topicDetails!);
  }
  buildCounterVideo--;
}

core.int buildCounterVideoAbuseReport = 0;
api.VideoAbuseReport buildVideoAbuseReport() {
  final o = api.VideoAbuseReport();
  buildCounterVideoAbuseReport++;
  if (buildCounterVideoAbuseReport < 3) {
    o.comments = 'foo';
    o.language = 'foo';
    o.reasonId = 'foo';
    o.secondaryReasonId = 'foo';
    o.videoId = 'foo';
  }
  buildCounterVideoAbuseReport--;
  return o;
}

void checkVideoAbuseReport(api.VideoAbuseReport o) {
  buildCounterVideoAbuseReport++;
  if (buildCounterVideoAbuseReport < 3) {
    unittest.expect(
      o.comments!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.language!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.reasonId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.secondaryReasonId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.videoId!,
      unittest.equals('foo'),
    );
  }
  buildCounterVideoAbuseReport--;
}

core.int buildCounterVideoAbuseReportReason = 0;
api.VideoAbuseReportReason buildVideoAbuseReportReason() {
  final o = api.VideoAbuseReportReason();
  buildCounterVideoAbuseReportReason++;
  if (buildCounterVideoAbuseReportReason < 3) {
    o.etag = 'foo';
    o.id = 'foo';
    o.kind = 'foo';
    o.snippet = buildVideoAbuseReportReasonSnippet();
  }
  buildCounterVideoAbuseReportReason--;
  return o;
}

void checkVideoAbuseReportReason(api.VideoAbuseReportReason o) {
  buildCounterVideoAbuseReportReason++;
  if (buildCounterVideoAbuseReportReason < 3) {
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
    checkVideoAbuseReportReasonSnippet(o.snippet!);
  }
  buildCounterVideoAbuseReportReason--;
}

core.List<api.VideoAbuseReportReason> buildUnnamed3098() => [
      buildVideoAbuseReportReason(),
      buildVideoAbuseReportReason(),
    ];

void checkUnnamed3098(core.List<api.VideoAbuseReportReason> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkVideoAbuseReportReason(o[0]);
  checkVideoAbuseReportReason(o[1]);
}

core.int buildCounterVideoAbuseReportReasonListResponse = 0;
api.VideoAbuseReportReasonListResponse
    buildVideoAbuseReportReasonListResponse() {
  final o = api.VideoAbuseReportReasonListResponse();
  buildCounterVideoAbuseReportReasonListResponse++;
  if (buildCounterVideoAbuseReportReasonListResponse < 3) {
    o.etag = 'foo';
    o.eventId = 'foo';
    o.items = buildUnnamed3098();
    o.kind = 'foo';
    o.visitorId = 'foo';
  }
  buildCounterVideoAbuseReportReasonListResponse--;
  return o;
}

void checkVideoAbuseReportReasonListResponse(
    api.VideoAbuseReportReasonListResponse o) {
  buildCounterVideoAbuseReportReasonListResponse++;
  if (buildCounterVideoAbuseReportReasonListResponse < 3) {
    unittest.expect(
      o.etag!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.eventId!,
      unittest.equals('foo'),
    );
    checkUnnamed3098(o.items!);
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.visitorId!,
      unittest.equals('foo'),
    );
  }
  buildCounterVideoAbuseReportReasonListResponse--;
}

core.List<api.VideoAbuseReportSecondaryReason> buildUnnamed3099() => [
      buildVideoAbuseReportSecondaryReason(),
      buildVideoAbuseReportSecondaryReason(),
    ];

void checkUnnamed3099(core.List<api.VideoAbuseReportSecondaryReason> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkVideoAbuseReportSecondaryReason(o[0]);
  checkVideoAbuseReportSecondaryReason(o[1]);
}

core.int buildCounterVideoAbuseReportReasonSnippet = 0;
api.VideoAbuseReportReasonSnippet buildVideoAbuseReportReasonSnippet() {
  final o = api.VideoAbuseReportReasonSnippet();
  buildCounterVideoAbuseReportReasonSnippet++;
  if (buildCounterVideoAbuseReportReasonSnippet < 3) {
    o.label = 'foo';
    o.secondaryReasons = buildUnnamed3099();
  }
  buildCounterVideoAbuseReportReasonSnippet--;
  return o;
}

void checkVideoAbuseReportReasonSnippet(api.VideoAbuseReportReasonSnippet o) {
  buildCounterVideoAbuseReportReasonSnippet++;
  if (buildCounterVideoAbuseReportReasonSnippet < 3) {
    unittest.expect(
      o.label!,
      unittest.equals('foo'),
    );
    checkUnnamed3099(o.secondaryReasons!);
  }
  buildCounterVideoAbuseReportReasonSnippet--;
}

core.int buildCounterVideoAbuseReportSecondaryReason = 0;
api.VideoAbuseReportSecondaryReason buildVideoAbuseReportSecondaryReason() {
  final o = api.VideoAbuseReportSecondaryReason();
  buildCounterVideoAbuseReportSecondaryReason++;
  if (buildCounterVideoAbuseReportSecondaryReason < 3) {
    o.id = 'foo';
    o.label = 'foo';
  }
  buildCounterVideoAbuseReportSecondaryReason--;
  return o;
}

void checkVideoAbuseReportSecondaryReason(
    api.VideoAbuseReportSecondaryReason o) {
  buildCounterVideoAbuseReportSecondaryReason++;
  if (buildCounterVideoAbuseReportSecondaryReason < 3) {
    unittest.expect(
      o.id!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.label!,
      unittest.equals('foo'),
    );
  }
  buildCounterVideoAbuseReportSecondaryReason--;
}

core.int buildCounterVideoAgeGating = 0;
api.VideoAgeGating buildVideoAgeGating() {
  final o = api.VideoAgeGating();
  buildCounterVideoAgeGating++;
  if (buildCounterVideoAgeGating < 3) {
    o.alcoholContent = true;
    o.restricted = true;
    o.videoGameRating = 'foo';
  }
  buildCounterVideoAgeGating--;
  return o;
}

void checkVideoAgeGating(api.VideoAgeGating o) {
  buildCounterVideoAgeGating++;
  if (buildCounterVideoAgeGating < 3) {
    unittest.expect(o.alcoholContent!, unittest.isTrue);
    unittest.expect(o.restricted!, unittest.isTrue);
    unittest.expect(
      o.videoGameRating!,
      unittest.equals('foo'),
    );
  }
  buildCounterVideoAgeGating--;
}

core.int buildCounterVideoCategory = 0;
api.VideoCategory buildVideoCategory() {
  final o = api.VideoCategory();
  buildCounterVideoCategory++;
  if (buildCounterVideoCategory < 3) {
    o.etag = 'foo';
    o.id = 'foo';
    o.kind = 'foo';
    o.snippet = buildVideoCategorySnippet();
  }
  buildCounterVideoCategory--;
  return o;
}

void checkVideoCategory(api.VideoCategory o) {
  buildCounterVideoCategory++;
  if (buildCounterVideoCategory < 3) {
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
    checkVideoCategorySnippet(o.snippet!);
  }
  buildCounterVideoCategory--;
}

core.List<api.VideoCategory> buildUnnamed3100() => [
      buildVideoCategory(),
      buildVideoCategory(),
    ];

void checkUnnamed3100(core.List<api.VideoCategory> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkVideoCategory(o[0]);
  checkVideoCategory(o[1]);
}

core.int buildCounterVideoCategoryListResponse = 0;
api.VideoCategoryListResponse buildVideoCategoryListResponse() {
  final o = api.VideoCategoryListResponse();
  buildCounterVideoCategoryListResponse++;
  if (buildCounterVideoCategoryListResponse < 3) {
    o.etag = 'foo';
    o.eventId = 'foo';
    o.items = buildUnnamed3100();
    o.kind = 'foo';
    o.nextPageToken = 'foo';
    o.pageInfo = buildPageInfo();
    o.prevPageToken = 'foo';
    o.tokenPagination = buildTokenPagination();
    o.visitorId = 'foo';
  }
  buildCounterVideoCategoryListResponse--;
  return o;
}

void checkVideoCategoryListResponse(api.VideoCategoryListResponse o) {
  buildCounterVideoCategoryListResponse++;
  if (buildCounterVideoCategoryListResponse < 3) {
    unittest.expect(
      o.etag!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.eventId!,
      unittest.equals('foo'),
    );
    checkUnnamed3100(o.items!);
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkPageInfo(o.pageInfo!);
    unittest.expect(
      o.prevPageToken!,
      unittest.equals('foo'),
    );
    checkTokenPagination(o.tokenPagination!);
    unittest.expect(
      o.visitorId!,
      unittest.equals('foo'),
    );
  }
  buildCounterVideoCategoryListResponse--;
}

core.int buildCounterVideoCategorySnippet = 0;
api.VideoCategorySnippet buildVideoCategorySnippet() {
  final o = api.VideoCategorySnippet();
  buildCounterVideoCategorySnippet++;
  if (buildCounterVideoCategorySnippet < 3) {
    o.assignable = true;
    o.channelId = 'foo';
    o.title = 'foo';
  }
  buildCounterVideoCategorySnippet--;
  return o;
}

void checkVideoCategorySnippet(api.VideoCategorySnippet o) {
  buildCounterVideoCategorySnippet++;
  if (buildCounterVideoCategorySnippet < 3) {
    unittest.expect(o.assignable!, unittest.isTrue);
    unittest.expect(
      o.channelId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.title!,
      unittest.equals('foo'),
    );
  }
  buildCounterVideoCategorySnippet--;
}

core.int buildCounterVideoContentDetails = 0;
api.VideoContentDetails buildVideoContentDetails() {
  final o = api.VideoContentDetails();
  buildCounterVideoContentDetails++;
  if (buildCounterVideoContentDetails < 3) {
    o.caption = 'foo';
    o.contentRating = buildContentRating();
    o.countryRestriction = buildAccessPolicy();
    o.definition = 'foo';
    o.dimension = 'foo';
    o.duration = 'foo';
    o.hasCustomThumbnail = true;
    o.licensedContent = true;
    o.projection = 'foo';
    o.regionRestriction = buildVideoContentDetailsRegionRestriction();
  }
  buildCounterVideoContentDetails--;
  return o;
}

void checkVideoContentDetails(api.VideoContentDetails o) {
  buildCounterVideoContentDetails++;
  if (buildCounterVideoContentDetails < 3) {
    unittest.expect(
      o.caption!,
      unittest.equals('foo'),
    );
    checkContentRating(o.contentRating!);
    checkAccessPolicy(o.countryRestriction!);
    unittest.expect(
      o.definition!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.dimension!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.duration!,
      unittest.equals('foo'),
    );
    unittest.expect(o.hasCustomThumbnail!, unittest.isTrue);
    unittest.expect(o.licensedContent!, unittest.isTrue);
    unittest.expect(
      o.projection!,
      unittest.equals('foo'),
    );
    checkVideoContentDetailsRegionRestriction(o.regionRestriction!);
  }
  buildCounterVideoContentDetails--;
}

core.List<core.String> buildUnnamed3101() => [
      'foo',
      'foo',
    ];

void checkUnnamed3101(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed3102() => [
      'foo',
      'foo',
    ];

void checkUnnamed3102(core.List<core.String> o) {
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

core.int buildCounterVideoContentDetailsRegionRestriction = 0;
api.VideoContentDetailsRegionRestriction
    buildVideoContentDetailsRegionRestriction() {
  final o = api.VideoContentDetailsRegionRestriction();
  buildCounterVideoContentDetailsRegionRestriction++;
  if (buildCounterVideoContentDetailsRegionRestriction < 3) {
    o.allowed = buildUnnamed3101();
    o.blocked = buildUnnamed3102();
  }
  buildCounterVideoContentDetailsRegionRestriction--;
  return o;
}

void checkVideoContentDetailsRegionRestriction(
    api.VideoContentDetailsRegionRestriction o) {
  buildCounterVideoContentDetailsRegionRestriction++;
  if (buildCounterVideoContentDetailsRegionRestriction < 3) {
    checkUnnamed3101(o.allowed!);
    checkUnnamed3102(o.blocked!);
  }
  buildCounterVideoContentDetailsRegionRestriction--;
}

core.List<api.VideoFileDetailsAudioStream> buildUnnamed3103() => [
      buildVideoFileDetailsAudioStream(),
      buildVideoFileDetailsAudioStream(),
    ];

void checkUnnamed3103(core.List<api.VideoFileDetailsAudioStream> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkVideoFileDetailsAudioStream(o[0]);
  checkVideoFileDetailsAudioStream(o[1]);
}

core.List<api.VideoFileDetailsVideoStream> buildUnnamed3104() => [
      buildVideoFileDetailsVideoStream(),
      buildVideoFileDetailsVideoStream(),
    ];

void checkUnnamed3104(core.List<api.VideoFileDetailsVideoStream> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkVideoFileDetailsVideoStream(o[0]);
  checkVideoFileDetailsVideoStream(o[1]);
}

core.int buildCounterVideoFileDetails = 0;
api.VideoFileDetails buildVideoFileDetails() {
  final o = api.VideoFileDetails();
  buildCounterVideoFileDetails++;
  if (buildCounterVideoFileDetails < 3) {
    o.audioStreams = buildUnnamed3103();
    o.bitrateBps = 'foo';
    o.container = 'foo';
    o.creationTime = 'foo';
    o.durationMs = 'foo';
    o.fileName = 'foo';
    o.fileSize = 'foo';
    o.fileType = 'foo';
    o.videoStreams = buildUnnamed3104();
  }
  buildCounterVideoFileDetails--;
  return o;
}

void checkVideoFileDetails(api.VideoFileDetails o) {
  buildCounterVideoFileDetails++;
  if (buildCounterVideoFileDetails < 3) {
    checkUnnamed3103(o.audioStreams!);
    unittest.expect(
      o.bitrateBps!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.container!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.creationTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.durationMs!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.fileName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.fileSize!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.fileType!,
      unittest.equals('foo'),
    );
    checkUnnamed3104(o.videoStreams!);
  }
  buildCounterVideoFileDetails--;
}

core.int buildCounterVideoFileDetailsAudioStream = 0;
api.VideoFileDetailsAudioStream buildVideoFileDetailsAudioStream() {
  final o = api.VideoFileDetailsAudioStream();
  buildCounterVideoFileDetailsAudioStream++;
  if (buildCounterVideoFileDetailsAudioStream < 3) {
    o.bitrateBps = 'foo';
    o.channelCount = 42;
    o.codec = 'foo';
    o.vendor = 'foo';
  }
  buildCounterVideoFileDetailsAudioStream--;
  return o;
}

void checkVideoFileDetailsAudioStream(api.VideoFileDetailsAudioStream o) {
  buildCounterVideoFileDetailsAudioStream++;
  if (buildCounterVideoFileDetailsAudioStream < 3) {
    unittest.expect(
      o.bitrateBps!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.channelCount!,
      unittest.equals(42),
    );
    unittest.expect(
      o.codec!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.vendor!,
      unittest.equals('foo'),
    );
  }
  buildCounterVideoFileDetailsAudioStream--;
}

core.int buildCounterVideoFileDetailsVideoStream = 0;
api.VideoFileDetailsVideoStream buildVideoFileDetailsVideoStream() {
  final o = api.VideoFileDetailsVideoStream();
  buildCounterVideoFileDetailsVideoStream++;
  if (buildCounterVideoFileDetailsVideoStream < 3) {
    o.aspectRatio = 42.0;
    o.bitrateBps = 'foo';
    o.codec = 'foo';
    o.frameRateFps = 42.0;
    o.heightPixels = 42;
    o.rotation = 'foo';
    o.vendor = 'foo';
    o.widthPixels = 42;
  }
  buildCounterVideoFileDetailsVideoStream--;
  return o;
}

void checkVideoFileDetailsVideoStream(api.VideoFileDetailsVideoStream o) {
  buildCounterVideoFileDetailsVideoStream++;
  if (buildCounterVideoFileDetailsVideoStream < 3) {
    unittest.expect(
      o.aspectRatio!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.bitrateBps!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.codec!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.frameRateFps!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.heightPixels!,
      unittest.equals(42),
    );
    unittest.expect(
      o.rotation!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.vendor!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.widthPixels!,
      unittest.equals(42),
    );
  }
  buildCounterVideoFileDetailsVideoStream--;
}

core.List<api.VideoRating> buildUnnamed3105() => [
      buildVideoRating(),
      buildVideoRating(),
    ];

void checkUnnamed3105(core.List<api.VideoRating> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkVideoRating(o[0]);
  checkVideoRating(o[1]);
}

core.int buildCounterVideoGetRatingResponse = 0;
api.VideoGetRatingResponse buildVideoGetRatingResponse() {
  final o = api.VideoGetRatingResponse();
  buildCounterVideoGetRatingResponse++;
  if (buildCounterVideoGetRatingResponse < 3) {
    o.etag = 'foo';
    o.eventId = 'foo';
    o.items = buildUnnamed3105();
    o.kind = 'foo';
    o.visitorId = 'foo';
  }
  buildCounterVideoGetRatingResponse--;
  return o;
}

void checkVideoGetRatingResponse(api.VideoGetRatingResponse o) {
  buildCounterVideoGetRatingResponse++;
  if (buildCounterVideoGetRatingResponse < 3) {
    unittest.expect(
      o.etag!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.eventId!,
      unittest.equals('foo'),
    );
    checkUnnamed3105(o.items!);
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.visitorId!,
      unittest.equals('foo'),
    );
  }
  buildCounterVideoGetRatingResponse--;
}

core.List<api.Video> buildUnnamed3106() => [
      buildVideo(),
      buildVideo(),
    ];

void checkUnnamed3106(core.List<api.Video> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkVideo(o[0]);
  checkVideo(o[1]);
}

core.int buildCounterVideoListResponse = 0;
api.VideoListResponse buildVideoListResponse() {
  final o = api.VideoListResponse();
  buildCounterVideoListResponse++;
  if (buildCounterVideoListResponse < 3) {
    o.etag = 'foo';
    o.eventId = 'foo';
    o.items = buildUnnamed3106();
    o.kind = 'foo';
    o.nextPageToken = 'foo';
    o.pageInfo = buildPageInfo();
    o.prevPageToken = 'foo';
    o.tokenPagination = buildTokenPagination();
    o.visitorId = 'foo';
  }
  buildCounterVideoListResponse--;
  return o;
}

void checkVideoListResponse(api.VideoListResponse o) {
  buildCounterVideoListResponse++;
  if (buildCounterVideoListResponse < 3) {
    unittest.expect(
      o.etag!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.eventId!,
      unittest.equals('foo'),
    );
    checkUnnamed3106(o.items!);
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkPageInfo(o.pageInfo!);
    unittest.expect(
      o.prevPageToken!,
      unittest.equals('foo'),
    );
    checkTokenPagination(o.tokenPagination!);
    unittest.expect(
      o.visitorId!,
      unittest.equals('foo'),
    );
  }
  buildCounterVideoListResponse--;
}

core.int buildCounterVideoLiveStreamingDetails = 0;
api.VideoLiveStreamingDetails buildVideoLiveStreamingDetails() {
  final o = api.VideoLiveStreamingDetails();
  buildCounterVideoLiveStreamingDetails++;
  if (buildCounterVideoLiveStreamingDetails < 3) {
    o.activeLiveChatId = 'foo';
    o.actualEndTime = core.DateTime.parse('2002-02-27T14:01:02');
    o.actualStartTime = core.DateTime.parse('2002-02-27T14:01:02');
    o.concurrentViewers = 'foo';
    o.scheduledEndTime = core.DateTime.parse('2002-02-27T14:01:02');
    o.scheduledStartTime = core.DateTime.parse('2002-02-27T14:01:02');
  }
  buildCounterVideoLiveStreamingDetails--;
  return o;
}

void checkVideoLiveStreamingDetails(api.VideoLiveStreamingDetails o) {
  buildCounterVideoLiveStreamingDetails++;
  if (buildCounterVideoLiveStreamingDetails < 3) {
    unittest.expect(
      o.activeLiveChatId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.actualEndTime!,
      unittest.equals(core.DateTime.parse('2002-02-27T14:01:02')),
    );
    unittest.expect(
      o.actualStartTime!,
      unittest.equals(core.DateTime.parse('2002-02-27T14:01:02')),
    );
    unittest.expect(
      o.concurrentViewers!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.scheduledEndTime!,
      unittest.equals(core.DateTime.parse('2002-02-27T14:01:02')),
    );
    unittest.expect(
      o.scheduledStartTime!,
      unittest.equals(core.DateTime.parse('2002-02-27T14:01:02')),
    );
  }
  buildCounterVideoLiveStreamingDetails--;
}

core.int buildCounterVideoLocalization = 0;
api.VideoLocalization buildVideoLocalization() {
  final o = api.VideoLocalization();
  buildCounterVideoLocalization++;
  if (buildCounterVideoLocalization < 3) {
    o.description = 'foo';
    o.title = 'foo';
  }
  buildCounterVideoLocalization--;
  return o;
}

void checkVideoLocalization(api.VideoLocalization o) {
  buildCounterVideoLocalization++;
  if (buildCounterVideoLocalization < 3) {
    unittest.expect(
      o.description!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.title!,
      unittest.equals('foo'),
    );
  }
  buildCounterVideoLocalization--;
}

core.int buildCounterVideoMonetizationDetails = 0;
api.VideoMonetizationDetails buildVideoMonetizationDetails() {
  final o = api.VideoMonetizationDetails();
  buildCounterVideoMonetizationDetails++;
  if (buildCounterVideoMonetizationDetails < 3) {
    o.access = buildAccessPolicy();
  }
  buildCounterVideoMonetizationDetails--;
  return o;
}

void checkVideoMonetizationDetails(api.VideoMonetizationDetails o) {
  buildCounterVideoMonetizationDetails++;
  if (buildCounterVideoMonetizationDetails < 3) {
    checkAccessPolicy(o.access!);
  }
  buildCounterVideoMonetizationDetails--;
}

core.int buildCounterVideoPlayer = 0;
api.VideoPlayer buildVideoPlayer() {
  final o = api.VideoPlayer();
  buildCounterVideoPlayer++;
  if (buildCounterVideoPlayer < 3) {
    o.embedHeight = 'foo';
    o.embedHtml = 'foo';
    o.embedWidth = 'foo';
  }
  buildCounterVideoPlayer--;
  return o;
}

void checkVideoPlayer(api.VideoPlayer o) {
  buildCounterVideoPlayer++;
  if (buildCounterVideoPlayer < 3) {
    unittest.expect(
      o.embedHeight!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.embedHtml!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.embedWidth!,
      unittest.equals('foo'),
    );
  }
  buildCounterVideoPlayer--;
}

core.int buildCounterVideoProcessingDetails = 0;
api.VideoProcessingDetails buildVideoProcessingDetails() {
  final o = api.VideoProcessingDetails();
  buildCounterVideoProcessingDetails++;
  if (buildCounterVideoProcessingDetails < 3) {
    o.editorSuggestionsAvailability = 'foo';
    o.fileDetailsAvailability = 'foo';
    o.processingFailureReason = 'foo';
    o.processingIssuesAvailability = 'foo';
    o.processingProgress = buildVideoProcessingDetailsProcessingProgress();
    o.processingStatus = 'foo';
    o.tagSuggestionsAvailability = 'foo';
    o.thumbnailsAvailability = 'foo';
  }
  buildCounterVideoProcessingDetails--;
  return o;
}

void checkVideoProcessingDetails(api.VideoProcessingDetails o) {
  buildCounterVideoProcessingDetails++;
  if (buildCounterVideoProcessingDetails < 3) {
    unittest.expect(
      o.editorSuggestionsAvailability!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.fileDetailsAvailability!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.processingFailureReason!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.processingIssuesAvailability!,
      unittest.equals('foo'),
    );
    checkVideoProcessingDetailsProcessingProgress(o.processingProgress!);
    unittest.expect(
      o.processingStatus!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.tagSuggestionsAvailability!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.thumbnailsAvailability!,
      unittest.equals('foo'),
    );
  }
  buildCounterVideoProcessingDetails--;
}

core.int buildCounterVideoProcessingDetailsProcessingProgress = 0;
api.VideoProcessingDetailsProcessingProgress
    buildVideoProcessingDetailsProcessingProgress() {
  final o = api.VideoProcessingDetailsProcessingProgress();
  buildCounterVideoProcessingDetailsProcessingProgress++;
  if (buildCounterVideoProcessingDetailsProcessingProgress < 3) {
    o.partsProcessed = 'foo';
    o.partsTotal = 'foo';
    o.timeLeftMs = 'foo';
  }
  buildCounterVideoProcessingDetailsProcessingProgress--;
  return o;
}

void checkVideoProcessingDetailsProcessingProgress(
    api.VideoProcessingDetailsProcessingProgress o) {
  buildCounterVideoProcessingDetailsProcessingProgress++;
  if (buildCounterVideoProcessingDetailsProcessingProgress < 3) {
    unittest.expect(
      o.partsProcessed!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.partsTotal!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.timeLeftMs!,
      unittest.equals('foo'),
    );
  }
  buildCounterVideoProcessingDetailsProcessingProgress--;
}

core.int buildCounterVideoProjectDetails = 0;
api.VideoProjectDetails buildVideoProjectDetails() {
  final o = api.VideoProjectDetails();
  buildCounterVideoProjectDetails++;
  if (buildCounterVideoProjectDetails < 3) {}
  buildCounterVideoProjectDetails--;
  return o;
}

void checkVideoProjectDetails(api.VideoProjectDetails o) {
  buildCounterVideoProjectDetails++;
  if (buildCounterVideoProjectDetails < 3) {}
  buildCounterVideoProjectDetails--;
}

core.int buildCounterVideoRating = 0;
api.VideoRating buildVideoRating() {
  final o = api.VideoRating();
  buildCounterVideoRating++;
  if (buildCounterVideoRating < 3) {
    o.rating = 'foo';
    o.videoId = 'foo';
  }
  buildCounterVideoRating--;
  return o;
}

void checkVideoRating(api.VideoRating o) {
  buildCounterVideoRating++;
  if (buildCounterVideoRating < 3) {
    unittest.expect(
      o.rating!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.videoId!,
      unittest.equals('foo'),
    );
  }
  buildCounterVideoRating--;
}

core.int buildCounterVideoRecordingDetails = 0;
api.VideoRecordingDetails buildVideoRecordingDetails() {
  final o = api.VideoRecordingDetails();
  buildCounterVideoRecordingDetails++;
  if (buildCounterVideoRecordingDetails < 3) {
    o.location = buildGeoPoint();
    o.locationDescription = 'foo';
    o.recordingDate = core.DateTime.parse('2002-02-27T14:01:02');
  }
  buildCounterVideoRecordingDetails--;
  return o;
}

void checkVideoRecordingDetails(api.VideoRecordingDetails o) {
  buildCounterVideoRecordingDetails++;
  if (buildCounterVideoRecordingDetails < 3) {
    checkGeoPoint(o.location!);
    unittest.expect(
      o.locationDescription!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.recordingDate!,
      unittest.equals(core.DateTime.parse('2002-02-27T14:01:02')),
    );
  }
  buildCounterVideoRecordingDetails--;
}

core.List<core.String> buildUnnamed3107() => [
      'foo',
      'foo',
    ];

void checkUnnamed3107(core.List<core.String> o) {
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

core.int buildCounterVideoSnippet = 0;
api.VideoSnippet buildVideoSnippet() {
  final o = api.VideoSnippet();
  buildCounterVideoSnippet++;
  if (buildCounterVideoSnippet < 3) {
    o.categoryId = 'foo';
    o.channelId = 'foo';
    o.channelTitle = 'foo';
    o.defaultAudioLanguage = 'foo';
    o.defaultLanguage = 'foo';
    o.description = 'foo';
    o.liveBroadcastContent = 'foo';
    o.localized = buildVideoLocalization();
    o.publishedAt = core.DateTime.parse('2002-02-27T14:01:02');
    o.tags = buildUnnamed3107();
    o.thumbnails = buildThumbnailDetails();
    o.title = 'foo';
  }
  buildCounterVideoSnippet--;
  return o;
}

void checkVideoSnippet(api.VideoSnippet o) {
  buildCounterVideoSnippet++;
  if (buildCounterVideoSnippet < 3) {
    unittest.expect(
      o.categoryId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.channelId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.channelTitle!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.defaultAudioLanguage!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.defaultLanguage!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.description!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.liveBroadcastContent!,
      unittest.equals('foo'),
    );
    checkVideoLocalization(o.localized!);
    unittest.expect(
      o.publishedAt!,
      unittest.equals(core.DateTime.parse('2002-02-27T14:01:02')),
    );
    checkUnnamed3107(o.tags!);
    checkThumbnailDetails(o.thumbnails!);
    unittest.expect(
      o.title!,
      unittest.equals('foo'),
    );
  }
  buildCounterVideoSnippet--;
}

core.int buildCounterVideoStatistics = 0;
api.VideoStatistics buildVideoStatistics() {
  final o = api.VideoStatistics();
  buildCounterVideoStatistics++;
  if (buildCounterVideoStatistics < 3) {
    o.commentCount = 'foo';
    o.dislikeCount = 'foo';
    o.favoriteCount = 'foo';
    o.likeCount = 'foo';
    o.viewCount = 'foo';
  }
  buildCounterVideoStatistics--;
  return o;
}

void checkVideoStatistics(api.VideoStatistics o) {
  buildCounterVideoStatistics++;
  if (buildCounterVideoStatistics < 3) {
    unittest.expect(
      o.commentCount!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.dislikeCount!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.favoriteCount!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.likeCount!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.viewCount!,
      unittest.equals('foo'),
    );
  }
  buildCounterVideoStatistics--;
}

core.int buildCounterVideoStatus = 0;
api.VideoStatus buildVideoStatus() {
  final o = api.VideoStatus();
  buildCounterVideoStatus++;
  if (buildCounterVideoStatus < 3) {
    o.embeddable = true;
    o.failureReason = 'foo';
    o.license = 'foo';
    o.madeForKids = true;
    o.privacyStatus = 'foo';
    o.publicStatsViewable = true;
    o.publishAt = core.DateTime.parse('2002-02-27T14:01:02');
    o.rejectionReason = 'foo';
    o.selfDeclaredMadeForKids = true;
    o.uploadStatus = 'foo';
  }
  buildCounterVideoStatus--;
  return o;
}

void checkVideoStatus(api.VideoStatus o) {
  buildCounterVideoStatus++;
  if (buildCounterVideoStatus < 3) {
    unittest.expect(o.embeddable!, unittest.isTrue);
    unittest.expect(
      o.failureReason!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.license!,
      unittest.equals('foo'),
    );
    unittest.expect(o.madeForKids!, unittest.isTrue);
    unittest.expect(
      o.privacyStatus!,
      unittest.equals('foo'),
    );
    unittest.expect(o.publicStatsViewable!, unittest.isTrue);
    unittest.expect(
      o.publishAt!,
      unittest.equals(core.DateTime.parse('2002-02-27T14:01:02')),
    );
    unittest.expect(
      o.rejectionReason!,
      unittest.equals('foo'),
    );
    unittest.expect(o.selfDeclaredMadeForKids!, unittest.isTrue);
    unittest.expect(
      o.uploadStatus!,
      unittest.equals('foo'),
    );
  }
  buildCounterVideoStatus--;
}

core.List<core.String> buildUnnamed3108() => [
      'foo',
      'foo',
    ];

void checkUnnamed3108(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed3109() => [
      'foo',
      'foo',
    ];

void checkUnnamed3109(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed3110() => [
      'foo',
      'foo',
    ];

void checkUnnamed3110(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed3111() => [
      'foo',
      'foo',
    ];

void checkUnnamed3111(core.List<core.String> o) {
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

core.List<api.VideoSuggestionsTagSuggestion> buildUnnamed3112() => [
      buildVideoSuggestionsTagSuggestion(),
      buildVideoSuggestionsTagSuggestion(),
    ];

void checkUnnamed3112(core.List<api.VideoSuggestionsTagSuggestion> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkVideoSuggestionsTagSuggestion(o[0]);
  checkVideoSuggestionsTagSuggestion(o[1]);
}

core.int buildCounterVideoSuggestions = 0;
api.VideoSuggestions buildVideoSuggestions() {
  final o = api.VideoSuggestions();
  buildCounterVideoSuggestions++;
  if (buildCounterVideoSuggestions < 3) {
    o.editorSuggestions = buildUnnamed3108();
    o.processingErrors = buildUnnamed3109();
    o.processingHints = buildUnnamed3110();
    o.processingWarnings = buildUnnamed3111();
    o.tagSuggestions = buildUnnamed3112();
  }
  buildCounterVideoSuggestions--;
  return o;
}

void checkVideoSuggestions(api.VideoSuggestions o) {
  buildCounterVideoSuggestions++;
  if (buildCounterVideoSuggestions < 3) {
    checkUnnamed3108(o.editorSuggestions!);
    checkUnnamed3109(o.processingErrors!);
    checkUnnamed3110(o.processingHints!);
    checkUnnamed3111(o.processingWarnings!);
    checkUnnamed3112(o.tagSuggestions!);
  }
  buildCounterVideoSuggestions--;
}

core.List<core.String> buildUnnamed3113() => [
      'foo',
      'foo',
    ];

void checkUnnamed3113(core.List<core.String> o) {
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

core.int buildCounterVideoSuggestionsTagSuggestion = 0;
api.VideoSuggestionsTagSuggestion buildVideoSuggestionsTagSuggestion() {
  final o = api.VideoSuggestionsTagSuggestion();
  buildCounterVideoSuggestionsTagSuggestion++;
  if (buildCounterVideoSuggestionsTagSuggestion < 3) {
    o.categoryRestricts = buildUnnamed3113();
    o.tag = 'foo';
  }
  buildCounterVideoSuggestionsTagSuggestion--;
  return o;
}

void checkVideoSuggestionsTagSuggestion(api.VideoSuggestionsTagSuggestion o) {
  buildCounterVideoSuggestionsTagSuggestion++;
  if (buildCounterVideoSuggestionsTagSuggestion < 3) {
    checkUnnamed3113(o.categoryRestricts!);
    unittest.expect(
      o.tag!,
      unittest.equals('foo'),
    );
  }
  buildCounterVideoSuggestionsTagSuggestion--;
}

core.List<core.String> buildUnnamed3114() => [
      'foo',
      'foo',
    ];

void checkUnnamed3114(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed3115() => [
      'foo',
      'foo',
    ];

void checkUnnamed3115(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed3116() => [
      'foo',
      'foo',
    ];

void checkUnnamed3116(core.List<core.String> o) {
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

core.int buildCounterVideoTopicDetails = 0;
api.VideoTopicDetails buildVideoTopicDetails() {
  final o = api.VideoTopicDetails();
  buildCounterVideoTopicDetails++;
  if (buildCounterVideoTopicDetails < 3) {
    o.relevantTopicIds = buildUnnamed3114();
    o.topicCategories = buildUnnamed3115();
    o.topicIds = buildUnnamed3116();
  }
  buildCounterVideoTopicDetails--;
  return o;
}

void checkVideoTopicDetails(api.VideoTopicDetails o) {
  buildCounterVideoTopicDetails++;
  if (buildCounterVideoTopicDetails < 3) {
    checkUnnamed3114(o.relevantTopicIds!);
    checkUnnamed3115(o.topicCategories!);
    checkUnnamed3116(o.topicIds!);
  }
  buildCounterVideoTopicDetails--;
}

core.int buildCounterWatchSettings = 0;
api.WatchSettings buildWatchSettings() {
  final o = api.WatchSettings();
  buildCounterWatchSettings++;
  if (buildCounterWatchSettings < 3) {
    o.backgroundColor = 'foo';
    o.featuredPlaylistId = 'foo';
    o.textColor = 'foo';
  }
  buildCounterWatchSettings--;
  return o;
}

void checkWatchSettings(api.WatchSettings o) {
  buildCounterWatchSettings++;
  if (buildCounterWatchSettings < 3) {
    unittest.expect(
      o.backgroundColor!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.featuredPlaylistId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.textColor!,
      unittest.equals('foo'),
    );
  }
  buildCounterWatchSettings--;
}

core.List<core.String> buildUnnamed3117() => [
      'foo',
      'foo',
    ];

void checkUnnamed3117(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed3118() => [
      'foo',
      'foo',
    ];

void checkUnnamed3118(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed3119() => [
      'foo',
      'foo',
    ];

void checkUnnamed3119(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed3120() => [
      'foo',
      'foo',
    ];

void checkUnnamed3120(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed3121() => [
      'foo',
      'foo',
    ];

void checkUnnamed3121(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed3122() => [
      'foo',
      'foo',
    ];

void checkUnnamed3122(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed3123() => [
      'foo',
      'foo',
    ];

void checkUnnamed3123(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed3124() => [
      'foo',
      'foo',
    ];

void checkUnnamed3124(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed3125() => [
      'foo',
      'foo',
    ];

void checkUnnamed3125(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed3126() => [
      'foo',
      'foo',
    ];

void checkUnnamed3126(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed3127() => [
      'foo',
      'foo',
    ];

void checkUnnamed3127(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed3128() => [
      'foo',
      'foo',
    ];

void checkUnnamed3128(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed3129() => [
      'foo',
      'foo',
    ];

void checkUnnamed3129(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed3130() => [
      'foo',
      'foo',
    ];

void checkUnnamed3130(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed3131() => [
      'foo',
      'foo',
    ];

void checkUnnamed3131(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed3132() => [
      'foo',
      'foo',
    ];

void checkUnnamed3132(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed3133() => [
      'foo',
      'foo',
    ];

void checkUnnamed3133(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed3134() => [
      'foo',
      'foo',
    ];

void checkUnnamed3134(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed3135() => [
      'foo',
      'foo',
    ];

void checkUnnamed3135(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed3136() => [
      'foo',
      'foo',
    ];

void checkUnnamed3136(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed3137() => [
      'foo',
      'foo',
    ];

void checkUnnamed3137(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed3138() => [
      'foo',
      'foo',
    ];

void checkUnnamed3138(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed3139() => [
      'foo',
      'foo',
    ];

void checkUnnamed3139(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed3140() => [
      'foo',
      'foo',
    ];

void checkUnnamed3140(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed3141() => [
      'foo',
      'foo',
    ];

void checkUnnamed3141(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed3142() => [
      'foo',
      'foo',
    ];

void checkUnnamed3142(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed3143() => [
      'foo',
      'foo',
    ];

void checkUnnamed3143(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed3144() => [
      'foo',
      'foo',
    ];

void checkUnnamed3144(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed3145() => [
      'foo',
      'foo',
    ];

void checkUnnamed3145(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed3146() => [
      'foo',
      'foo',
    ];

void checkUnnamed3146(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed3147() => [
      'foo',
      'foo',
    ];

void checkUnnamed3147(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed3148() => [
      'foo',
      'foo',
    ];

void checkUnnamed3148(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed3149() => [
      'foo',
      'foo',
    ];

void checkUnnamed3149(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed3150() => [
      'foo',
      'foo',
    ];

void checkUnnamed3150(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed3151() => [
      'foo',
      'foo',
    ];

void checkUnnamed3151(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed3152() => [
      'foo',
      'foo',
    ];

void checkUnnamed3152(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed3153() => [
      'foo',
      'foo',
    ];

void checkUnnamed3153(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed3154() => [
      'foo',
      'foo',
    ];

void checkUnnamed3154(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed3155() => [
      'foo',
      'foo',
    ];

void checkUnnamed3155(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed3156() => [
      'foo',
      'foo',
    ];

void checkUnnamed3156(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed3157() => [
      'foo',
      'foo',
    ];

void checkUnnamed3157(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed3158() => [
      'foo',
      'foo',
    ];

void checkUnnamed3158(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed3159() => [
      'foo',
      'foo',
    ];

void checkUnnamed3159(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed3160() => [
      'foo',
      'foo',
    ];

void checkUnnamed3160(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed3161() => [
      'foo',
      'foo',
    ];

void checkUnnamed3161(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed3162() => [
      'foo',
      'foo',
    ];

void checkUnnamed3162(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed3163() => [
      'foo',
      'foo',
    ];

void checkUnnamed3163(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed3164() => [
      'foo',
      'foo',
    ];

void checkUnnamed3164(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed3165() => [
      'foo',
      'foo',
    ];

void checkUnnamed3165(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed3166() => [
      'foo',
      'foo',
    ];

void checkUnnamed3166(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed3167() => [
      'foo',
      'foo',
    ];

void checkUnnamed3167(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed3168() => [
      'foo',
      'foo',
    ];

void checkUnnamed3168(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed3169() => [
      'foo',
      'foo',
    ];

void checkUnnamed3169(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed3170() => [
      'foo',
      'foo',
    ];

void checkUnnamed3170(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed3171() => [
      'foo',
      'foo',
    ];

void checkUnnamed3171(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed3172() => [
      'foo',
      'foo',
    ];

void checkUnnamed3172(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed3173() => [
      'foo',
      'foo',
    ];

void checkUnnamed3173(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed3174() => [
      'foo',
      'foo',
    ];

void checkUnnamed3174(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed3175() => [
      'foo',
      'foo',
    ];

void checkUnnamed3175(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed3176() => [
      'foo',
      'foo',
    ];

void checkUnnamed3176(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed3177() => [
      'foo',
      'foo',
    ];

void checkUnnamed3177(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed3178() => [
      'foo',
      'foo',
    ];

void checkUnnamed3178(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed3179() => [
      'foo',
      'foo',
    ];

void checkUnnamed3179(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed3180() => [
      'foo',
      'foo',
    ];

void checkUnnamed3180(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed3181() => [
      'foo',
      'foo',
    ];

void checkUnnamed3181(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed3182() => [
      'foo',
      'foo',
    ];

void checkUnnamed3182(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed3183() => [
      'foo',
      'foo',
    ];

void checkUnnamed3183(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed3184() => [
      'foo',
      'foo',
    ];

void checkUnnamed3184(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed3185() => [
      'foo',
      'foo',
    ];

void checkUnnamed3185(core.List<core.String> o) {
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
  unittest.group('obj-schema-AbuseReport', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAbuseReport();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AbuseReport.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAbuseReport(od);
    });
  });

  unittest.group('obj-schema-AbuseType', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAbuseType();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.AbuseType.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkAbuseType(od);
    });
  });

  unittest.group('obj-schema-AccessPolicy', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAccessPolicy();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AccessPolicy.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAccessPolicy(od);
    });
  });

  unittest.group('obj-schema-Activity', () {
    unittest.test('to-json--from-json', () async {
      final o = buildActivity();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Activity.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkActivity(od);
    });
  });

  unittest.group('obj-schema-ActivityContentDetails', () {
    unittest.test('to-json--from-json', () async {
      final o = buildActivityContentDetails();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ActivityContentDetails.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkActivityContentDetails(od);
    });
  });

  unittest.group('obj-schema-ActivityContentDetailsBulletin', () {
    unittest.test('to-json--from-json', () async {
      final o = buildActivityContentDetailsBulletin();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ActivityContentDetailsBulletin.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkActivityContentDetailsBulletin(od);
    });
  });

  unittest.group('obj-schema-ActivityContentDetailsChannelItem', () {
    unittest.test('to-json--from-json', () async {
      final o = buildActivityContentDetailsChannelItem();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ActivityContentDetailsChannelItem.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkActivityContentDetailsChannelItem(od);
    });
  });

  unittest.group('obj-schema-ActivityContentDetailsComment', () {
    unittest.test('to-json--from-json', () async {
      final o = buildActivityContentDetailsComment();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ActivityContentDetailsComment.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkActivityContentDetailsComment(od);
    });
  });

  unittest.group('obj-schema-ActivityContentDetailsFavorite', () {
    unittest.test('to-json--from-json', () async {
      final o = buildActivityContentDetailsFavorite();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ActivityContentDetailsFavorite.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkActivityContentDetailsFavorite(od);
    });
  });

  unittest.group('obj-schema-ActivityContentDetailsLike', () {
    unittest.test('to-json--from-json', () async {
      final o = buildActivityContentDetailsLike();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ActivityContentDetailsLike.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkActivityContentDetailsLike(od);
    });
  });

  unittest.group('obj-schema-ActivityContentDetailsPlaylistItem', () {
    unittest.test('to-json--from-json', () async {
      final o = buildActivityContentDetailsPlaylistItem();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ActivityContentDetailsPlaylistItem.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkActivityContentDetailsPlaylistItem(od);
    });
  });

  unittest.group('obj-schema-ActivityContentDetailsPromotedItem', () {
    unittest.test('to-json--from-json', () async {
      final o = buildActivityContentDetailsPromotedItem();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ActivityContentDetailsPromotedItem.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkActivityContentDetailsPromotedItem(od);
    });
  });

  unittest.group('obj-schema-ActivityContentDetailsRecommendation', () {
    unittest.test('to-json--from-json', () async {
      final o = buildActivityContentDetailsRecommendation();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ActivityContentDetailsRecommendation.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkActivityContentDetailsRecommendation(od);
    });
  });

  unittest.group('obj-schema-ActivityContentDetailsSocial', () {
    unittest.test('to-json--from-json', () async {
      final o = buildActivityContentDetailsSocial();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ActivityContentDetailsSocial.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkActivityContentDetailsSocial(od);
    });
  });

  unittest.group('obj-schema-ActivityContentDetailsSubscription', () {
    unittest.test('to-json--from-json', () async {
      final o = buildActivityContentDetailsSubscription();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ActivityContentDetailsSubscription.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkActivityContentDetailsSubscription(od);
    });
  });

  unittest.group('obj-schema-ActivityContentDetailsUpload', () {
    unittest.test('to-json--from-json', () async {
      final o = buildActivityContentDetailsUpload();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ActivityContentDetailsUpload.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkActivityContentDetailsUpload(od);
    });
  });

  unittest.group('obj-schema-ActivityListResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildActivityListResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ActivityListResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkActivityListResponse(od);
    });
  });

  unittest.group('obj-schema-ActivitySnippet', () {
    unittest.test('to-json--from-json', () async {
      final o = buildActivitySnippet();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ActivitySnippet.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkActivitySnippet(od);
    });
  });

  unittest.group('obj-schema-Caption', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCaption();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Caption.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkCaption(od);
    });
  });

  unittest.group('obj-schema-CaptionListResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCaptionListResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CaptionListResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCaptionListResponse(od);
    });
  });

  unittest.group('obj-schema-CaptionSnippet', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCaptionSnippet();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CaptionSnippet.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCaptionSnippet(od);
    });
  });

  unittest.group('obj-schema-CdnSettings', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCdnSettings();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CdnSettings.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCdnSettings(od);
    });
  });

  unittest.group('obj-schema-Channel', () {
    unittest.test('to-json--from-json', () async {
      final o = buildChannel();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Channel.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkChannel(od);
    });
  });

  unittest.group('obj-schema-ChannelAuditDetails', () {
    unittest.test('to-json--from-json', () async {
      final o = buildChannelAuditDetails();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ChannelAuditDetails.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkChannelAuditDetails(od);
    });
  });

  unittest.group('obj-schema-ChannelBannerResource', () {
    unittest.test('to-json--from-json', () async {
      final o = buildChannelBannerResource();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ChannelBannerResource.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkChannelBannerResource(od);
    });
  });

  unittest.group('obj-schema-ChannelBrandingSettings', () {
    unittest.test('to-json--from-json', () async {
      final o = buildChannelBrandingSettings();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ChannelBrandingSettings.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkChannelBrandingSettings(od);
    });
  });

  unittest.group('obj-schema-ChannelContentDetailsRelatedPlaylists', () {
    unittest.test('to-json--from-json', () async {
      final o = buildChannelContentDetailsRelatedPlaylists();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ChannelContentDetailsRelatedPlaylists.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkChannelContentDetailsRelatedPlaylists(od);
    });
  });

  unittest.group('obj-schema-ChannelContentDetails', () {
    unittest.test('to-json--from-json', () async {
      final o = buildChannelContentDetails();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ChannelContentDetails.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkChannelContentDetails(od);
    });
  });

  unittest.group('obj-schema-ChannelContentOwnerDetails', () {
    unittest.test('to-json--from-json', () async {
      final o = buildChannelContentOwnerDetails();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ChannelContentOwnerDetails.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkChannelContentOwnerDetails(od);
    });
  });

  unittest.group('obj-schema-ChannelConversionPing', () {
    unittest.test('to-json--from-json', () async {
      final o = buildChannelConversionPing();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ChannelConversionPing.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkChannelConversionPing(od);
    });
  });

  unittest.group('obj-schema-ChannelConversionPings', () {
    unittest.test('to-json--from-json', () async {
      final o = buildChannelConversionPings();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ChannelConversionPings.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkChannelConversionPings(od);
    });
  });

  unittest.group('obj-schema-ChannelListResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildChannelListResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ChannelListResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkChannelListResponse(od);
    });
  });

  unittest.group('obj-schema-ChannelLocalization', () {
    unittest.test('to-json--from-json', () async {
      final o = buildChannelLocalization();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ChannelLocalization.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkChannelLocalization(od);
    });
  });

  unittest.group('obj-schema-ChannelProfileDetails', () {
    unittest.test('to-json--from-json', () async {
      final o = buildChannelProfileDetails();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ChannelProfileDetails.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkChannelProfileDetails(od);
    });
  });

  unittest.group('obj-schema-ChannelSection', () {
    unittest.test('to-json--from-json', () async {
      final o = buildChannelSection();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ChannelSection.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkChannelSection(od);
    });
  });

  unittest.group('obj-schema-ChannelSectionContentDetails', () {
    unittest.test('to-json--from-json', () async {
      final o = buildChannelSectionContentDetails();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ChannelSectionContentDetails.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkChannelSectionContentDetails(od);
    });
  });

  unittest.group('obj-schema-ChannelSectionListResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildChannelSectionListResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ChannelSectionListResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkChannelSectionListResponse(od);
    });
  });

  unittest.group('obj-schema-ChannelSectionLocalization', () {
    unittest.test('to-json--from-json', () async {
      final o = buildChannelSectionLocalization();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ChannelSectionLocalization.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkChannelSectionLocalization(od);
    });
  });

  unittest.group('obj-schema-ChannelSectionSnippet', () {
    unittest.test('to-json--from-json', () async {
      final o = buildChannelSectionSnippet();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ChannelSectionSnippet.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkChannelSectionSnippet(od);
    });
  });

  unittest.group('obj-schema-ChannelSectionTargeting', () {
    unittest.test('to-json--from-json', () async {
      final o = buildChannelSectionTargeting();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ChannelSectionTargeting.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkChannelSectionTargeting(od);
    });
  });

  unittest.group('obj-schema-ChannelSettings', () {
    unittest.test('to-json--from-json', () async {
      final o = buildChannelSettings();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ChannelSettings.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkChannelSettings(od);
    });
  });

  unittest.group('obj-schema-ChannelSnippet', () {
    unittest.test('to-json--from-json', () async {
      final o = buildChannelSnippet();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ChannelSnippet.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkChannelSnippet(od);
    });
  });

  unittest.group('obj-schema-ChannelStatistics', () {
    unittest.test('to-json--from-json', () async {
      final o = buildChannelStatistics();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ChannelStatistics.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkChannelStatistics(od);
    });
  });

  unittest.group('obj-schema-ChannelStatus', () {
    unittest.test('to-json--from-json', () async {
      final o = buildChannelStatus();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ChannelStatus.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkChannelStatus(od);
    });
  });

  unittest.group('obj-schema-ChannelToStoreLinkDetails', () {
    unittest.test('to-json--from-json', () async {
      final o = buildChannelToStoreLinkDetails();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ChannelToStoreLinkDetails.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkChannelToStoreLinkDetails(od);
    });
  });

  unittest.group('obj-schema-ChannelTopicDetails', () {
    unittest.test('to-json--from-json', () async {
      final o = buildChannelTopicDetails();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ChannelTopicDetails.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkChannelTopicDetails(od);
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

  unittest.group('obj-schema-CommentListResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCommentListResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CommentListResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCommentListResponse(od);
    });
  });

  unittest.group('obj-schema-CommentSnippet', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCommentSnippet();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CommentSnippet.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCommentSnippet(od);
    });
  });

  unittest.group('obj-schema-CommentSnippetAuthorChannelId', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCommentSnippetAuthorChannelId();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CommentSnippetAuthorChannelId.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCommentSnippetAuthorChannelId(od);
    });
  });

  unittest.group('obj-schema-CommentThread', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCommentThread();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CommentThread.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCommentThread(od);
    });
  });

  unittest.group('obj-schema-CommentThreadListResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCommentThreadListResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CommentThreadListResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCommentThreadListResponse(od);
    });
  });

  unittest.group('obj-schema-CommentThreadReplies', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCommentThreadReplies();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CommentThreadReplies.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCommentThreadReplies(od);
    });
  });

  unittest.group('obj-schema-CommentThreadSnippet', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCommentThreadSnippet();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CommentThreadSnippet.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCommentThreadSnippet(od);
    });
  });

  unittest.group('obj-schema-ContentRating', () {
    unittest.test('to-json--from-json', () async {
      final o = buildContentRating();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ContentRating.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkContentRating(od);
    });
  });

  unittest.group('obj-schema-Entity', () {
    unittest.test('to-json--from-json', () async {
      final o = buildEntity();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Entity.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkEntity(od);
    });
  });

  unittest.group('obj-schema-GeoPoint', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGeoPoint();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GeoPoint.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGeoPoint(od);
    });
  });

  unittest.group('obj-schema-I18nLanguage', () {
    unittest.test('to-json--from-json', () async {
      final o = buildI18nLanguage();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.I18nLanguage.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkI18nLanguage(od);
    });
  });

  unittest.group('obj-schema-I18nLanguageListResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildI18nLanguageListResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.I18nLanguageListResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkI18nLanguageListResponse(od);
    });
  });

  unittest.group('obj-schema-I18nLanguageSnippet', () {
    unittest.test('to-json--from-json', () async {
      final o = buildI18nLanguageSnippet();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.I18nLanguageSnippet.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkI18nLanguageSnippet(od);
    });
  });

  unittest.group('obj-schema-I18nRegion', () {
    unittest.test('to-json--from-json', () async {
      final o = buildI18nRegion();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.I18nRegion.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkI18nRegion(od);
    });
  });

  unittest.group('obj-schema-I18nRegionListResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildI18nRegionListResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.I18nRegionListResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkI18nRegionListResponse(od);
    });
  });

  unittest.group('obj-schema-I18nRegionSnippet', () {
    unittest.test('to-json--from-json', () async {
      final o = buildI18nRegionSnippet();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.I18nRegionSnippet.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkI18nRegionSnippet(od);
    });
  });

  unittest.group('obj-schema-ImageSettings', () {
    unittest.test('to-json--from-json', () async {
      final o = buildImageSettings();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ImageSettings.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkImageSettings(od);
    });
  });

  unittest.group('obj-schema-IngestionInfo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildIngestionInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.IngestionInfo.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkIngestionInfo(od);
    });
  });

  unittest.group('obj-schema-InvideoBranding', () {
    unittest.test('to-json--from-json', () async {
      final o = buildInvideoBranding();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.InvideoBranding.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkInvideoBranding(od);
    });
  });

  unittest.group('obj-schema-InvideoPosition', () {
    unittest.test('to-json--from-json', () async {
      final o = buildInvideoPosition();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.InvideoPosition.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkInvideoPosition(od);
    });
  });

  unittest.group('obj-schema-InvideoTiming', () {
    unittest.test('to-json--from-json', () async {
      final o = buildInvideoTiming();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.InvideoTiming.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkInvideoTiming(od);
    });
  });

  unittest.group('obj-schema-LanguageTag', () {
    unittest.test('to-json--from-json', () async {
      final o = buildLanguageTag();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.LanguageTag.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkLanguageTag(od);
    });
  });

  unittest.group('obj-schema-LevelDetails', () {
    unittest.test('to-json--from-json', () async {
      final o = buildLevelDetails();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.LevelDetails.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkLevelDetails(od);
    });
  });

  unittest.group('obj-schema-LiveBroadcast', () {
    unittest.test('to-json--from-json', () async {
      final o = buildLiveBroadcast();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.LiveBroadcast.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkLiveBroadcast(od);
    });
  });

  unittest.group('obj-schema-LiveBroadcastContentDetails', () {
    unittest.test('to-json--from-json', () async {
      final o = buildLiveBroadcastContentDetails();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.LiveBroadcastContentDetails.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkLiveBroadcastContentDetails(od);
    });
  });

  unittest.group('obj-schema-LiveBroadcastListResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildLiveBroadcastListResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.LiveBroadcastListResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkLiveBroadcastListResponse(od);
    });
  });

  unittest.group('obj-schema-LiveBroadcastSnippet', () {
    unittest.test('to-json--from-json', () async {
      final o = buildLiveBroadcastSnippet();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.LiveBroadcastSnippet.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkLiveBroadcastSnippet(od);
    });
  });

  unittest.group('obj-schema-LiveBroadcastStatistics', () {
    unittest.test('to-json--from-json', () async {
      final o = buildLiveBroadcastStatistics();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.LiveBroadcastStatistics.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkLiveBroadcastStatistics(od);
    });
  });

  unittest.group('obj-schema-LiveBroadcastStatus', () {
    unittest.test('to-json--from-json', () async {
      final o = buildLiveBroadcastStatus();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.LiveBroadcastStatus.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkLiveBroadcastStatus(od);
    });
  });

  unittest.group('obj-schema-LiveChatBan', () {
    unittest.test('to-json--from-json', () async {
      final o = buildLiveChatBan();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.LiveChatBan.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkLiveChatBan(od);
    });
  });

  unittest.group('obj-schema-LiveChatBanSnippet', () {
    unittest.test('to-json--from-json', () async {
      final o = buildLiveChatBanSnippet();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.LiveChatBanSnippet.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkLiveChatBanSnippet(od);
    });
  });

  unittest.group('obj-schema-LiveChatFanFundingEventDetails', () {
    unittest.test('to-json--from-json', () async {
      final o = buildLiveChatFanFundingEventDetails();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.LiveChatFanFundingEventDetails.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkLiveChatFanFundingEventDetails(od);
    });
  });

  unittest.group('obj-schema-LiveChatMessage', () {
    unittest.test('to-json--from-json', () async {
      final o = buildLiveChatMessage();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.LiveChatMessage.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkLiveChatMessage(od);
    });
  });

  unittest.group('obj-schema-LiveChatMessageAuthorDetails', () {
    unittest.test('to-json--from-json', () async {
      final o = buildLiveChatMessageAuthorDetails();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.LiveChatMessageAuthorDetails.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkLiveChatMessageAuthorDetails(od);
    });
  });

  unittest.group('obj-schema-LiveChatMessageDeletedDetails', () {
    unittest.test('to-json--from-json', () async {
      final o = buildLiveChatMessageDeletedDetails();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.LiveChatMessageDeletedDetails.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkLiveChatMessageDeletedDetails(od);
    });
  });

  unittest.group('obj-schema-LiveChatMessageListResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildLiveChatMessageListResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.LiveChatMessageListResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkLiveChatMessageListResponse(od);
    });
  });

  unittest.group('obj-schema-LiveChatMessageRetractedDetails', () {
    unittest.test('to-json--from-json', () async {
      final o = buildLiveChatMessageRetractedDetails();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.LiveChatMessageRetractedDetails.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkLiveChatMessageRetractedDetails(od);
    });
  });

  unittest.group('obj-schema-LiveChatMessageSnippet', () {
    unittest.test('to-json--from-json', () async {
      final o = buildLiveChatMessageSnippet();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.LiveChatMessageSnippet.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkLiveChatMessageSnippet(od);
    });
  });

  unittest.group('obj-schema-LiveChatModerator', () {
    unittest.test('to-json--from-json', () async {
      final o = buildLiveChatModerator();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.LiveChatModerator.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkLiveChatModerator(od);
    });
  });

  unittest.group('obj-schema-LiveChatModeratorListResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildLiveChatModeratorListResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.LiveChatModeratorListResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkLiveChatModeratorListResponse(od);
    });
  });

  unittest.group('obj-schema-LiveChatModeratorSnippet', () {
    unittest.test('to-json--from-json', () async {
      final o = buildLiveChatModeratorSnippet();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.LiveChatModeratorSnippet.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkLiveChatModeratorSnippet(od);
    });
  });

  unittest.group('obj-schema-LiveChatSuperChatDetails', () {
    unittest.test('to-json--from-json', () async {
      final o = buildLiveChatSuperChatDetails();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.LiveChatSuperChatDetails.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkLiveChatSuperChatDetails(od);
    });
  });

  unittest.group('obj-schema-LiveChatSuperStickerDetails', () {
    unittest.test('to-json--from-json', () async {
      final o = buildLiveChatSuperStickerDetails();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.LiveChatSuperStickerDetails.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkLiveChatSuperStickerDetails(od);
    });
  });

  unittest.group('obj-schema-LiveChatTextMessageDetails', () {
    unittest.test('to-json--from-json', () async {
      final o = buildLiveChatTextMessageDetails();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.LiveChatTextMessageDetails.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkLiveChatTextMessageDetails(od);
    });
  });

  unittest.group('obj-schema-LiveChatUserBannedMessageDetails', () {
    unittest.test('to-json--from-json', () async {
      final o = buildLiveChatUserBannedMessageDetails();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.LiveChatUserBannedMessageDetails.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkLiveChatUserBannedMessageDetails(od);
    });
  });

  unittest.group('obj-schema-LiveStream', () {
    unittest.test('to-json--from-json', () async {
      final o = buildLiveStream();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.LiveStream.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkLiveStream(od);
    });
  });

  unittest.group('obj-schema-LiveStreamConfigurationIssue', () {
    unittest.test('to-json--from-json', () async {
      final o = buildLiveStreamConfigurationIssue();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.LiveStreamConfigurationIssue.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkLiveStreamConfigurationIssue(od);
    });
  });

  unittest.group('obj-schema-LiveStreamContentDetails', () {
    unittest.test('to-json--from-json', () async {
      final o = buildLiveStreamContentDetails();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.LiveStreamContentDetails.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkLiveStreamContentDetails(od);
    });
  });

  unittest.group('obj-schema-LiveStreamHealthStatus', () {
    unittest.test('to-json--from-json', () async {
      final o = buildLiveStreamHealthStatus();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.LiveStreamHealthStatus.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkLiveStreamHealthStatus(od);
    });
  });

  unittest.group('obj-schema-LiveStreamListResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildLiveStreamListResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.LiveStreamListResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkLiveStreamListResponse(od);
    });
  });

  unittest.group('obj-schema-LiveStreamSnippet', () {
    unittest.test('to-json--from-json', () async {
      final o = buildLiveStreamSnippet();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.LiveStreamSnippet.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkLiveStreamSnippet(od);
    });
  });

  unittest.group('obj-schema-LiveStreamStatus', () {
    unittest.test('to-json--from-json', () async {
      final o = buildLiveStreamStatus();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.LiveStreamStatus.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkLiveStreamStatus(od);
    });
  });

  unittest.group('obj-schema-LocalizedProperty', () {
    unittest.test('to-json--from-json', () async {
      final o = buildLocalizedProperty();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.LocalizedProperty.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkLocalizedProperty(od);
    });
  });

  unittest.group('obj-schema-LocalizedString', () {
    unittest.test('to-json--from-json', () async {
      final o = buildLocalizedString();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.LocalizedString.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkLocalizedString(od);
    });
  });

  unittest.group('obj-schema-Member', () {
    unittest.test('to-json--from-json', () async {
      final o = buildMember();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Member.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkMember(od);
    });
  });

  unittest.group('obj-schema-MemberListResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildMemberListResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.MemberListResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkMemberListResponse(od);
    });
  });

  unittest.group('obj-schema-MemberSnippet', () {
    unittest.test('to-json--from-json', () async {
      final o = buildMemberSnippet();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.MemberSnippet.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkMemberSnippet(od);
    });
  });

  unittest.group('obj-schema-MembershipsDetails', () {
    unittest.test('to-json--from-json', () async {
      final o = buildMembershipsDetails();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.MembershipsDetails.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkMembershipsDetails(od);
    });
  });

  unittest.group('obj-schema-MembershipsDuration', () {
    unittest.test('to-json--from-json', () async {
      final o = buildMembershipsDuration();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.MembershipsDuration.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkMembershipsDuration(od);
    });
  });

  unittest.group('obj-schema-MembershipsDurationAtLevel', () {
    unittest.test('to-json--from-json', () async {
      final o = buildMembershipsDurationAtLevel();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.MembershipsDurationAtLevel.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkMembershipsDurationAtLevel(od);
    });
  });

  unittest.group('obj-schema-MembershipsLevel', () {
    unittest.test('to-json--from-json', () async {
      final o = buildMembershipsLevel();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.MembershipsLevel.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkMembershipsLevel(od);
    });
  });

  unittest.group('obj-schema-MembershipsLevelListResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildMembershipsLevelListResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.MembershipsLevelListResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkMembershipsLevelListResponse(od);
    });
  });

  unittest.group('obj-schema-MembershipsLevelSnippet', () {
    unittest.test('to-json--from-json', () async {
      final o = buildMembershipsLevelSnippet();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.MembershipsLevelSnippet.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkMembershipsLevelSnippet(od);
    });
  });

  unittest.group('obj-schema-MonitorStreamInfo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildMonitorStreamInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.MonitorStreamInfo.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkMonitorStreamInfo(od);
    });
  });

  unittest.group('obj-schema-PageInfo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPageInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.PageInfo.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkPageInfo(od);
    });
  });

  unittest.group('obj-schema-Playlist', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPlaylist();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Playlist.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkPlaylist(od);
    });
  });

  unittest.group('obj-schema-PlaylistContentDetails', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPlaylistContentDetails();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PlaylistContentDetails.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkPlaylistContentDetails(od);
    });
  });

  unittest.group('obj-schema-PlaylistItem', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPlaylistItem();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PlaylistItem.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkPlaylistItem(od);
    });
  });

  unittest.group('obj-schema-PlaylistItemContentDetails', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPlaylistItemContentDetails();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PlaylistItemContentDetails.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkPlaylistItemContentDetails(od);
    });
  });

  unittest.group('obj-schema-PlaylistItemListResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPlaylistItemListResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PlaylistItemListResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkPlaylistItemListResponse(od);
    });
  });

  unittest.group('obj-schema-PlaylistItemSnippet', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPlaylistItemSnippet();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PlaylistItemSnippet.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkPlaylistItemSnippet(od);
    });
  });

  unittest.group('obj-schema-PlaylistItemStatus', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPlaylistItemStatus();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PlaylistItemStatus.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkPlaylistItemStatus(od);
    });
  });

  unittest.group('obj-schema-PlaylistListResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPlaylistListResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PlaylistListResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkPlaylistListResponse(od);
    });
  });

  unittest.group('obj-schema-PlaylistLocalization', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPlaylistLocalization();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PlaylistLocalization.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkPlaylistLocalization(od);
    });
  });

  unittest.group('obj-schema-PlaylistPlayer', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPlaylistPlayer();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PlaylistPlayer.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkPlaylistPlayer(od);
    });
  });

  unittest.group('obj-schema-PlaylistSnippet', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPlaylistSnippet();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PlaylistSnippet.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkPlaylistSnippet(od);
    });
  });

  unittest.group('obj-schema-PlaylistStatus', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPlaylistStatus();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PlaylistStatus.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkPlaylistStatus(od);
    });
  });

  unittest.group('obj-schema-PropertyValue', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPropertyValue();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PropertyValue.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkPropertyValue(od);
    });
  });

  unittest.group('obj-schema-RelatedEntity', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRelatedEntity();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RelatedEntity.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkRelatedEntity(od);
    });
  });

  unittest.group('obj-schema-ResourceId', () {
    unittest.test('to-json--from-json', () async {
      final o = buildResourceId();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.ResourceId.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkResourceId(od);
    });
  });

  unittest.group('obj-schema-SearchListResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSearchListResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SearchListResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSearchListResponse(od);
    });
  });

  unittest.group('obj-schema-SearchResult', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSearchResult();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SearchResult.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSearchResult(od);
    });
  });

  unittest.group('obj-schema-SearchResultSnippet', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSearchResultSnippet();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SearchResultSnippet.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSearchResultSnippet(od);
    });
  });

  unittest.group('obj-schema-Subscription', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSubscription();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Subscription.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSubscription(od);
    });
  });

  unittest.group('obj-schema-SubscriptionContentDetails', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSubscriptionContentDetails();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SubscriptionContentDetails.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSubscriptionContentDetails(od);
    });
  });

  unittest.group('obj-schema-SubscriptionListResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSubscriptionListResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SubscriptionListResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSubscriptionListResponse(od);
    });
  });

  unittest.group('obj-schema-SubscriptionSnippet', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSubscriptionSnippet();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SubscriptionSnippet.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSubscriptionSnippet(od);
    });
  });

  unittest.group('obj-schema-SubscriptionSubscriberSnippet', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSubscriptionSubscriberSnippet();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SubscriptionSubscriberSnippet.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSubscriptionSubscriberSnippet(od);
    });
  });

  unittest.group('obj-schema-SuperChatEvent', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSuperChatEvent();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SuperChatEvent.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSuperChatEvent(od);
    });
  });

  unittest.group('obj-schema-SuperChatEventListResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSuperChatEventListResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SuperChatEventListResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSuperChatEventListResponse(od);
    });
  });

  unittest.group('obj-schema-SuperChatEventSnippet', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSuperChatEventSnippet();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SuperChatEventSnippet.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSuperChatEventSnippet(od);
    });
  });

  unittest.group('obj-schema-SuperStickerMetadata', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSuperStickerMetadata();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SuperStickerMetadata.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSuperStickerMetadata(od);
    });
  });

  unittest.group('obj-schema-TestItem', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTestItem();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.TestItem.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkTestItem(od);
    });
  });

  unittest.group('obj-schema-TestItemTestItemSnippet', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTestItemTestItemSnippet();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.TestItemTestItemSnippet.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkTestItemTestItemSnippet(od);
    });
  });

  unittest.group('obj-schema-ThirdPartyLink', () {
    unittest.test('to-json--from-json', () async {
      final o = buildThirdPartyLink();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ThirdPartyLink.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkThirdPartyLink(od);
    });
  });

  unittest.group('obj-schema-ThirdPartyLinkSnippet', () {
    unittest.test('to-json--from-json', () async {
      final o = buildThirdPartyLinkSnippet();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ThirdPartyLinkSnippet.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkThirdPartyLinkSnippet(od);
    });
  });

  unittest.group('obj-schema-ThirdPartyLinkStatus', () {
    unittest.test('to-json--from-json', () async {
      final o = buildThirdPartyLinkStatus();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ThirdPartyLinkStatus.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkThirdPartyLinkStatus(od);
    });
  });

  unittest.group('obj-schema-Thumbnail', () {
    unittest.test('to-json--from-json', () async {
      final o = buildThumbnail();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Thumbnail.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkThumbnail(od);
    });
  });

  unittest.group('obj-schema-ThumbnailDetails', () {
    unittest.test('to-json--from-json', () async {
      final o = buildThumbnailDetails();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ThumbnailDetails.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkThumbnailDetails(od);
    });
  });

  unittest.group('obj-schema-ThumbnailSetResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildThumbnailSetResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ThumbnailSetResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkThumbnailSetResponse(od);
    });
  });

  unittest.group('obj-schema-TokenPagination', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTokenPagination();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.TokenPagination.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkTokenPagination(od);
    });
  });

  unittest.group('obj-schema-Video', () {
    unittest.test('to-json--from-json', () async {
      final o = buildVideo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Video.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkVideo(od);
    });
  });

  unittest.group('obj-schema-VideoAbuseReport', () {
    unittest.test('to-json--from-json', () async {
      final o = buildVideoAbuseReport();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.VideoAbuseReport.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkVideoAbuseReport(od);
    });
  });

  unittest.group('obj-schema-VideoAbuseReportReason', () {
    unittest.test('to-json--from-json', () async {
      final o = buildVideoAbuseReportReason();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.VideoAbuseReportReason.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkVideoAbuseReportReason(od);
    });
  });

  unittest.group('obj-schema-VideoAbuseReportReasonListResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildVideoAbuseReportReasonListResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.VideoAbuseReportReasonListResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkVideoAbuseReportReasonListResponse(od);
    });
  });

  unittest.group('obj-schema-VideoAbuseReportReasonSnippet', () {
    unittest.test('to-json--from-json', () async {
      final o = buildVideoAbuseReportReasonSnippet();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.VideoAbuseReportReasonSnippet.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkVideoAbuseReportReasonSnippet(od);
    });
  });

  unittest.group('obj-schema-VideoAbuseReportSecondaryReason', () {
    unittest.test('to-json--from-json', () async {
      final o = buildVideoAbuseReportSecondaryReason();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.VideoAbuseReportSecondaryReason.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkVideoAbuseReportSecondaryReason(od);
    });
  });

  unittest.group('obj-schema-VideoAgeGating', () {
    unittest.test('to-json--from-json', () async {
      final o = buildVideoAgeGating();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.VideoAgeGating.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkVideoAgeGating(od);
    });
  });

  unittest.group('obj-schema-VideoCategory', () {
    unittest.test('to-json--from-json', () async {
      final o = buildVideoCategory();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.VideoCategory.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkVideoCategory(od);
    });
  });

  unittest.group('obj-schema-VideoCategoryListResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildVideoCategoryListResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.VideoCategoryListResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkVideoCategoryListResponse(od);
    });
  });

  unittest.group('obj-schema-VideoCategorySnippet', () {
    unittest.test('to-json--from-json', () async {
      final o = buildVideoCategorySnippet();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.VideoCategorySnippet.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkVideoCategorySnippet(od);
    });
  });

  unittest.group('obj-schema-VideoContentDetails', () {
    unittest.test('to-json--from-json', () async {
      final o = buildVideoContentDetails();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.VideoContentDetails.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkVideoContentDetails(od);
    });
  });

  unittest.group('obj-schema-VideoContentDetailsRegionRestriction', () {
    unittest.test('to-json--from-json', () async {
      final o = buildVideoContentDetailsRegionRestriction();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.VideoContentDetailsRegionRestriction.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkVideoContentDetailsRegionRestriction(od);
    });
  });

  unittest.group('obj-schema-VideoFileDetails', () {
    unittest.test('to-json--from-json', () async {
      final o = buildVideoFileDetails();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.VideoFileDetails.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkVideoFileDetails(od);
    });
  });

  unittest.group('obj-schema-VideoFileDetailsAudioStream', () {
    unittest.test('to-json--from-json', () async {
      final o = buildVideoFileDetailsAudioStream();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.VideoFileDetailsAudioStream.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkVideoFileDetailsAudioStream(od);
    });
  });

  unittest.group('obj-schema-VideoFileDetailsVideoStream', () {
    unittest.test('to-json--from-json', () async {
      final o = buildVideoFileDetailsVideoStream();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.VideoFileDetailsVideoStream.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkVideoFileDetailsVideoStream(od);
    });
  });

  unittest.group('obj-schema-VideoGetRatingResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildVideoGetRatingResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.VideoGetRatingResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkVideoGetRatingResponse(od);
    });
  });

  unittest.group('obj-schema-VideoListResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildVideoListResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.VideoListResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkVideoListResponse(od);
    });
  });

  unittest.group('obj-schema-VideoLiveStreamingDetails', () {
    unittest.test('to-json--from-json', () async {
      final o = buildVideoLiveStreamingDetails();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.VideoLiveStreamingDetails.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkVideoLiveStreamingDetails(od);
    });
  });

  unittest.group('obj-schema-VideoLocalization', () {
    unittest.test('to-json--from-json', () async {
      final o = buildVideoLocalization();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.VideoLocalization.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkVideoLocalization(od);
    });
  });

  unittest.group('obj-schema-VideoMonetizationDetails', () {
    unittest.test('to-json--from-json', () async {
      final o = buildVideoMonetizationDetails();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.VideoMonetizationDetails.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkVideoMonetizationDetails(od);
    });
  });

  unittest.group('obj-schema-VideoPlayer', () {
    unittest.test('to-json--from-json', () async {
      final o = buildVideoPlayer();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.VideoPlayer.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkVideoPlayer(od);
    });
  });

  unittest.group('obj-schema-VideoProcessingDetails', () {
    unittest.test('to-json--from-json', () async {
      final o = buildVideoProcessingDetails();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.VideoProcessingDetails.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkVideoProcessingDetails(od);
    });
  });

  unittest.group('obj-schema-VideoProcessingDetailsProcessingProgress', () {
    unittest.test('to-json--from-json', () async {
      final o = buildVideoProcessingDetailsProcessingProgress();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.VideoProcessingDetailsProcessingProgress.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkVideoProcessingDetailsProcessingProgress(od);
    });
  });

  unittest.group('obj-schema-VideoProjectDetails', () {
    unittest.test('to-json--from-json', () async {
      final o = buildVideoProjectDetails();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.VideoProjectDetails.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkVideoProjectDetails(od);
    });
  });

  unittest.group('obj-schema-VideoRating', () {
    unittest.test('to-json--from-json', () async {
      final o = buildVideoRating();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.VideoRating.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkVideoRating(od);
    });
  });

  unittest.group('obj-schema-VideoRecordingDetails', () {
    unittest.test('to-json--from-json', () async {
      final o = buildVideoRecordingDetails();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.VideoRecordingDetails.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkVideoRecordingDetails(od);
    });
  });

  unittest.group('obj-schema-VideoSnippet', () {
    unittest.test('to-json--from-json', () async {
      final o = buildVideoSnippet();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.VideoSnippet.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkVideoSnippet(od);
    });
  });

  unittest.group('obj-schema-VideoStatistics', () {
    unittest.test('to-json--from-json', () async {
      final o = buildVideoStatistics();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.VideoStatistics.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkVideoStatistics(od);
    });
  });

  unittest.group('obj-schema-VideoStatus', () {
    unittest.test('to-json--from-json', () async {
      final o = buildVideoStatus();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.VideoStatus.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkVideoStatus(od);
    });
  });

  unittest.group('obj-schema-VideoSuggestions', () {
    unittest.test('to-json--from-json', () async {
      final o = buildVideoSuggestions();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.VideoSuggestions.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkVideoSuggestions(od);
    });
  });

  unittest.group('obj-schema-VideoSuggestionsTagSuggestion', () {
    unittest.test('to-json--from-json', () async {
      final o = buildVideoSuggestionsTagSuggestion();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.VideoSuggestionsTagSuggestion.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkVideoSuggestionsTagSuggestion(od);
    });
  });

  unittest.group('obj-schema-VideoTopicDetails', () {
    unittest.test('to-json--from-json', () async {
      final o = buildVideoTopicDetails();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.VideoTopicDetails.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkVideoTopicDetails(od);
    });
  });

  unittest.group('obj-schema-WatchSettings', () {
    unittest.test('to-json--from-json', () async {
      final o = buildWatchSettings();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.WatchSettings.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkWatchSettings(od);
    });
  });

  unittest.group('resource-AbuseReportsResource', () {
    unittest.test('method--insert', () async {
      final mock = HttpServerMock();
      final res = api.YouTubeApi(mock).abuseReports;
      final arg_request = buildAbuseReport();
      final arg_part = buildUnnamed3117();
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.AbuseReport.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkAbuseReport(obj);

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
          path.substring(pathOffset, pathOffset + 23),
          unittest.equals('youtube/v3/abuseReports'),
        );
        pathOffset += 23;

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
          queryMap['part']!,
          unittest.equals(arg_part),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildAbuseReport());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.insert(arg_request, arg_part, $fields: arg_$fields);
      checkAbuseReport(response as api.AbuseReport);
    });
  });

  unittest.group('resource-ActivitiesResource', () {
    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.YouTubeApi(mock).activities;
      final arg_part = buildUnnamed3118();
      final arg_channelId = 'foo';
      final arg_home = true;
      final arg_maxResults = 42;
      final arg_mine = true;
      final arg_pageToken = 'foo';
      final arg_publishedAfter = 'foo';
      final arg_publishedBefore = 'foo';
      final arg_regionCode = 'foo';
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
          path.substring(pathOffset, pathOffset + 21),
          unittest.equals('youtube/v3/activities'),
        );
        pathOffset += 21;

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
          queryMap['part']!,
          unittest.equals(arg_part),
        );
        unittest.expect(
          queryMap['channelId']!.first,
          unittest.equals(arg_channelId),
        );
        unittest.expect(
          queryMap['home']!.first,
          unittest.equals('$arg_home'),
        );
        unittest.expect(
          core.int.parse(queryMap['maxResults']!.first),
          unittest.equals(arg_maxResults),
        );
        unittest.expect(
          queryMap['mine']!.first,
          unittest.equals('$arg_mine'),
        );
        unittest.expect(
          queryMap['pageToken']!.first,
          unittest.equals(arg_pageToken),
        );
        unittest.expect(
          queryMap['publishedAfter']!.first,
          unittest.equals(arg_publishedAfter),
        );
        unittest.expect(
          queryMap['publishedBefore']!.first,
          unittest.equals(arg_publishedBefore),
        );
        unittest.expect(
          queryMap['regionCode']!.first,
          unittest.equals(arg_regionCode),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildActivityListResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_part,
          channelId: arg_channelId,
          home: arg_home,
          maxResults: arg_maxResults,
          mine: arg_mine,
          pageToken: arg_pageToken,
          publishedAfter: arg_publishedAfter,
          publishedBefore: arg_publishedBefore,
          regionCode: arg_regionCode,
          $fields: arg_$fields);
      checkActivityListResponse(response as api.ActivityListResponse);
    });
  });

  unittest.group('resource-CaptionsResource', () {
    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.YouTubeApi(mock).captions;
      final arg_id = 'foo';
      final arg_onBehalfOf = 'foo';
      final arg_onBehalfOfContentOwner = 'foo';
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
          path.substring(pathOffset, pathOffset + 19),
          unittest.equals('youtube/v3/captions'),
        );
        pathOffset += 19;

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
          queryMap['id']!.first,
          unittest.equals(arg_id),
        );
        unittest.expect(
          queryMap['onBehalfOf']!.first,
          unittest.equals(arg_onBehalfOf),
        );
        unittest.expect(
          queryMap['onBehalfOfContentOwner']!.first,
          unittest.equals(arg_onBehalfOfContentOwner),
        );
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
      await res.delete(arg_id,
          onBehalfOf: arg_onBehalfOf,
          onBehalfOfContentOwner: arg_onBehalfOfContentOwner,
          $fields: arg_$fields);
    });

    unittest.test('method--download', () async {
      // TODO: Implement tests for media upload;
      // TODO: Implement tests for media download;

      final mock = HttpServerMock();
      final res = api.YouTubeApi(mock).captions;
      final arg_id = 'foo';
      final arg_onBehalfOf = 'foo';
      final arg_onBehalfOfContentOwner = 'foo';
      final arg_tfmt = 'foo';
      final arg_tlang = 'foo';
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
          path.substring(pathOffset, pathOffset + 20),
          unittest.equals('youtube/v3/captions/'),
        );
        pathOffset += 20;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_id'),
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
          queryMap['onBehalfOf']!.first,
          unittest.equals(arg_onBehalfOf),
        );
        unittest.expect(
          queryMap['onBehalfOfContentOwner']!.first,
          unittest.equals(arg_onBehalfOfContentOwner),
        );
        unittest.expect(
          queryMap['tfmt']!.first,
          unittest.equals(arg_tfmt),
        );
        unittest.expect(
          queryMap['tlang']!.first,
          unittest.equals(arg_tlang),
        );
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
      await res.download(arg_id,
          onBehalfOf: arg_onBehalfOf,
          onBehalfOfContentOwner: arg_onBehalfOfContentOwner,
          tfmt: arg_tfmt,
          tlang: arg_tlang,
          $fields: arg_$fields);
    });

    unittest.test('method--insert', () async {
      // TODO: Implement tests for media upload;
      // TODO: Implement tests for media download;

      final mock = HttpServerMock();
      final res = api.YouTubeApi(mock).captions;
      final arg_request = buildCaption();
      final arg_part = buildUnnamed3119();
      final arg_onBehalfOf = 'foo';
      final arg_onBehalfOfContentOwner = 'foo';
      final arg_sync = true;
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.Caption.fromJson(json as core.Map<core.String, core.dynamic>);
        checkCaption(obj);

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
          path.substring(pathOffset, pathOffset + 19),
          unittest.equals('youtube/v3/captions'),
        );
        pathOffset += 19;

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
          queryMap['part']!,
          unittest.equals(arg_part),
        );
        unittest.expect(
          queryMap['onBehalfOf']!.first,
          unittest.equals(arg_onBehalfOf),
        );
        unittest.expect(
          queryMap['onBehalfOfContentOwner']!.first,
          unittest.equals(arg_onBehalfOfContentOwner),
        );
        unittest.expect(
          queryMap['sync']!.first,
          unittest.equals('$arg_sync'),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildCaption());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.insert(arg_request, arg_part,
          onBehalfOf: arg_onBehalfOf,
          onBehalfOfContentOwner: arg_onBehalfOfContentOwner,
          sync: arg_sync,
          $fields: arg_$fields);
      checkCaption(response as api.Caption);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.YouTubeApi(mock).captions;
      final arg_part = buildUnnamed3120();
      final arg_videoId = 'foo';
      final arg_id = buildUnnamed3121();
      final arg_onBehalfOf = 'foo';
      final arg_onBehalfOfContentOwner = 'foo';
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
          path.substring(pathOffset, pathOffset + 19),
          unittest.equals('youtube/v3/captions'),
        );
        pathOffset += 19;

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
          queryMap['part']!,
          unittest.equals(arg_part),
        );
        unittest.expect(
          queryMap['videoId']!.first,
          unittest.equals(arg_videoId),
        );
        unittest.expect(
          queryMap['id']!,
          unittest.equals(arg_id),
        );
        unittest.expect(
          queryMap['onBehalfOf']!.first,
          unittest.equals(arg_onBehalfOf),
        );
        unittest.expect(
          queryMap['onBehalfOfContentOwner']!.first,
          unittest.equals(arg_onBehalfOfContentOwner),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildCaptionListResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_part, arg_videoId,
          id: arg_id,
          onBehalfOf: arg_onBehalfOf,
          onBehalfOfContentOwner: arg_onBehalfOfContentOwner,
          $fields: arg_$fields);
      checkCaptionListResponse(response as api.CaptionListResponse);
    });

    unittest.test('method--update', () async {
      // TODO: Implement tests for media upload;
      // TODO: Implement tests for media download;

      final mock = HttpServerMock();
      final res = api.YouTubeApi(mock).captions;
      final arg_request = buildCaption();
      final arg_part = buildUnnamed3122();
      final arg_onBehalfOf = 'foo';
      final arg_onBehalfOfContentOwner = 'foo';
      final arg_sync = true;
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.Caption.fromJson(json as core.Map<core.String, core.dynamic>);
        checkCaption(obj);

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
          path.substring(pathOffset, pathOffset + 19),
          unittest.equals('youtube/v3/captions'),
        );
        pathOffset += 19;

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
          queryMap['part']!,
          unittest.equals(arg_part),
        );
        unittest.expect(
          queryMap['onBehalfOf']!.first,
          unittest.equals(arg_onBehalfOf),
        );
        unittest.expect(
          queryMap['onBehalfOfContentOwner']!.first,
          unittest.equals(arg_onBehalfOfContentOwner),
        );
        unittest.expect(
          queryMap['sync']!.first,
          unittest.equals('$arg_sync'),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildCaption());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.update(arg_request, arg_part,
          onBehalfOf: arg_onBehalfOf,
          onBehalfOfContentOwner: arg_onBehalfOfContentOwner,
          sync: arg_sync,
          $fields: arg_$fields);
      checkCaption(response as api.Caption);
    });
  });

  unittest.group('resource-ChannelBannersResource', () {
    unittest.test('method--insert', () async {
      // TODO: Implement tests for media upload;
      // TODO: Implement tests for media download;

      final mock = HttpServerMock();
      final res = api.YouTubeApi(mock).channelBanners;
      final arg_request = buildChannelBannerResource();
      final arg_channelId = 'foo';
      final arg_onBehalfOfContentOwner = 'foo';
      final arg_onBehalfOfContentOwnerChannel = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.ChannelBannerResource.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkChannelBannerResource(obj);

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
          path.substring(pathOffset, pathOffset + 32),
          unittest.equals('youtube/v3/channelBanners/insert'),
        );
        pathOffset += 32;

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
          queryMap['channelId']!.first,
          unittest.equals(arg_channelId),
        );
        unittest.expect(
          queryMap['onBehalfOfContentOwner']!.first,
          unittest.equals(arg_onBehalfOfContentOwner),
        );
        unittest.expect(
          queryMap['onBehalfOfContentOwnerChannel']!.first,
          unittest.equals(arg_onBehalfOfContentOwnerChannel),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildChannelBannerResource());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.insert(arg_request,
          channelId: arg_channelId,
          onBehalfOfContentOwner: arg_onBehalfOfContentOwner,
          onBehalfOfContentOwnerChannel: arg_onBehalfOfContentOwnerChannel,
          $fields: arg_$fields);
      checkChannelBannerResource(response as api.ChannelBannerResource);
    });
  });

  unittest.group('resource-ChannelSectionsResource', () {
    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.YouTubeApi(mock).channelSections;
      final arg_id = 'foo';
      final arg_onBehalfOfContentOwner = 'foo';
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
          path.substring(pathOffset, pathOffset + 26),
          unittest.equals('youtube/v3/channelSections'),
        );
        pathOffset += 26;

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
          queryMap['id']!.first,
          unittest.equals(arg_id),
        );
        unittest.expect(
          queryMap['onBehalfOfContentOwner']!.first,
          unittest.equals(arg_onBehalfOfContentOwner),
        );
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
      await res.delete(arg_id,
          onBehalfOfContentOwner: arg_onBehalfOfContentOwner,
          $fields: arg_$fields);
    });

    unittest.test('method--insert', () async {
      final mock = HttpServerMock();
      final res = api.YouTubeApi(mock).channelSections;
      final arg_request = buildChannelSection();
      final arg_part = buildUnnamed3123();
      final arg_onBehalfOfContentOwner = 'foo';
      final arg_onBehalfOfContentOwnerChannel = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.ChannelSection.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkChannelSection(obj);

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
          path.substring(pathOffset, pathOffset + 26),
          unittest.equals('youtube/v3/channelSections'),
        );
        pathOffset += 26;

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
          queryMap['part']!,
          unittest.equals(arg_part),
        );
        unittest.expect(
          queryMap['onBehalfOfContentOwner']!.first,
          unittest.equals(arg_onBehalfOfContentOwner),
        );
        unittest.expect(
          queryMap['onBehalfOfContentOwnerChannel']!.first,
          unittest.equals(arg_onBehalfOfContentOwnerChannel),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildChannelSection());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.insert(arg_request, arg_part,
          onBehalfOfContentOwner: arg_onBehalfOfContentOwner,
          onBehalfOfContentOwnerChannel: arg_onBehalfOfContentOwnerChannel,
          $fields: arg_$fields);
      checkChannelSection(response as api.ChannelSection);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.YouTubeApi(mock).channelSections;
      final arg_part = buildUnnamed3124();
      final arg_channelId = 'foo';
      final arg_hl = 'foo';
      final arg_id = buildUnnamed3125();
      final arg_mine = true;
      final arg_onBehalfOfContentOwner = 'foo';
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
          path.substring(pathOffset, pathOffset + 26),
          unittest.equals('youtube/v3/channelSections'),
        );
        pathOffset += 26;

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
          queryMap['part']!,
          unittest.equals(arg_part),
        );
        unittest.expect(
          queryMap['channelId']!.first,
          unittest.equals(arg_channelId),
        );
        unittest.expect(
          queryMap['hl']!.first,
          unittest.equals(arg_hl),
        );
        unittest.expect(
          queryMap['id']!,
          unittest.equals(arg_id),
        );
        unittest.expect(
          queryMap['mine']!.first,
          unittest.equals('$arg_mine'),
        );
        unittest.expect(
          queryMap['onBehalfOfContentOwner']!.first,
          unittest.equals(arg_onBehalfOfContentOwner),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildChannelSectionListResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_part,
          channelId: arg_channelId,
          hl: arg_hl,
          id: arg_id,
          mine: arg_mine,
          onBehalfOfContentOwner: arg_onBehalfOfContentOwner,
          $fields: arg_$fields);
      checkChannelSectionListResponse(
          response as api.ChannelSectionListResponse);
    });

    unittest.test('method--update', () async {
      final mock = HttpServerMock();
      final res = api.YouTubeApi(mock).channelSections;
      final arg_request = buildChannelSection();
      final arg_part = buildUnnamed3126();
      final arg_onBehalfOfContentOwner = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.ChannelSection.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkChannelSection(obj);

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
          path.substring(pathOffset, pathOffset + 26),
          unittest.equals('youtube/v3/channelSections'),
        );
        pathOffset += 26;

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
          queryMap['part']!,
          unittest.equals(arg_part),
        );
        unittest.expect(
          queryMap['onBehalfOfContentOwner']!.first,
          unittest.equals(arg_onBehalfOfContentOwner),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildChannelSection());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.update(arg_request, arg_part,
          onBehalfOfContentOwner: arg_onBehalfOfContentOwner,
          $fields: arg_$fields);
      checkChannelSection(response as api.ChannelSection);
    });
  });

  unittest.group('resource-ChannelsResource', () {
    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.YouTubeApi(mock).channels;
      final arg_part = buildUnnamed3127();
      final arg_categoryId = 'foo';
      final arg_forUsername = 'foo';
      final arg_hl = 'foo';
      final arg_id = buildUnnamed3128();
      final arg_managedByMe = true;
      final arg_maxResults = 42;
      final arg_mine = true;
      final arg_mySubscribers = true;
      final arg_onBehalfOfContentOwner = 'foo';
      final arg_pageToken = 'foo';
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
          path.substring(pathOffset, pathOffset + 19),
          unittest.equals('youtube/v3/channels'),
        );
        pathOffset += 19;

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
          queryMap['part']!,
          unittest.equals(arg_part),
        );
        unittest.expect(
          queryMap['categoryId']!.first,
          unittest.equals(arg_categoryId),
        );
        unittest.expect(
          queryMap['forUsername']!.first,
          unittest.equals(arg_forUsername),
        );
        unittest.expect(
          queryMap['hl']!.first,
          unittest.equals(arg_hl),
        );
        unittest.expect(
          queryMap['id']!,
          unittest.equals(arg_id),
        );
        unittest.expect(
          queryMap['managedByMe']!.first,
          unittest.equals('$arg_managedByMe'),
        );
        unittest.expect(
          core.int.parse(queryMap['maxResults']!.first),
          unittest.equals(arg_maxResults),
        );
        unittest.expect(
          queryMap['mine']!.first,
          unittest.equals('$arg_mine'),
        );
        unittest.expect(
          queryMap['mySubscribers']!.first,
          unittest.equals('$arg_mySubscribers'),
        );
        unittest.expect(
          queryMap['onBehalfOfContentOwner']!.first,
          unittest.equals(arg_onBehalfOfContentOwner),
        );
        unittest.expect(
          queryMap['pageToken']!.first,
          unittest.equals(arg_pageToken),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildChannelListResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_part,
          categoryId: arg_categoryId,
          forUsername: arg_forUsername,
          hl: arg_hl,
          id: arg_id,
          managedByMe: arg_managedByMe,
          maxResults: arg_maxResults,
          mine: arg_mine,
          mySubscribers: arg_mySubscribers,
          onBehalfOfContentOwner: arg_onBehalfOfContentOwner,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkChannelListResponse(response as api.ChannelListResponse);
    });

    unittest.test('method--update', () async {
      final mock = HttpServerMock();
      final res = api.YouTubeApi(mock).channels;
      final arg_request = buildChannel();
      final arg_part = buildUnnamed3129();
      final arg_onBehalfOfContentOwner = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.Channel.fromJson(json as core.Map<core.String, core.dynamic>);
        checkChannel(obj);

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
          path.substring(pathOffset, pathOffset + 19),
          unittest.equals('youtube/v3/channels'),
        );
        pathOffset += 19;

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
          queryMap['part']!,
          unittest.equals(arg_part),
        );
        unittest.expect(
          queryMap['onBehalfOfContentOwner']!.first,
          unittest.equals(arg_onBehalfOfContentOwner),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildChannel());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.update(arg_request, arg_part,
          onBehalfOfContentOwner: arg_onBehalfOfContentOwner,
          $fields: arg_$fields);
      checkChannel(response as api.Channel);
    });
  });

  unittest.group('resource-CommentThreadsResource', () {
    unittest.test('method--insert', () async {
      final mock = HttpServerMock();
      final res = api.YouTubeApi(mock).commentThreads;
      final arg_request = buildCommentThread();
      final arg_part = buildUnnamed3130();
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.CommentThread.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkCommentThread(obj);

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
          path.substring(pathOffset, pathOffset + 25),
          unittest.equals('youtube/v3/commentThreads'),
        );
        pathOffset += 25;

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
          queryMap['part']!,
          unittest.equals(arg_part),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildCommentThread());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.insert(arg_request, arg_part, $fields: arg_$fields);
      checkCommentThread(response as api.CommentThread);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.YouTubeApi(mock).commentThreads;
      final arg_part = buildUnnamed3131();
      final arg_allThreadsRelatedToChannelId = 'foo';
      final arg_channelId = 'foo';
      final arg_id = buildUnnamed3132();
      final arg_maxResults = 42;
      final arg_moderationStatus = 'foo';
      final arg_order = 'foo';
      final arg_pageToken = 'foo';
      final arg_searchTerms = 'foo';
      final arg_textFormat = 'foo';
      final arg_videoId = 'foo';
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
          path.substring(pathOffset, pathOffset + 25),
          unittest.equals('youtube/v3/commentThreads'),
        );
        pathOffset += 25;

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
          queryMap['part']!,
          unittest.equals(arg_part),
        );
        unittest.expect(
          queryMap['allThreadsRelatedToChannelId']!.first,
          unittest.equals(arg_allThreadsRelatedToChannelId),
        );
        unittest.expect(
          queryMap['channelId']!.first,
          unittest.equals(arg_channelId),
        );
        unittest.expect(
          queryMap['id']!,
          unittest.equals(arg_id),
        );
        unittest.expect(
          core.int.parse(queryMap['maxResults']!.first),
          unittest.equals(arg_maxResults),
        );
        unittest.expect(
          queryMap['moderationStatus']!.first,
          unittest.equals(arg_moderationStatus),
        );
        unittest.expect(
          queryMap['order']!.first,
          unittest.equals(arg_order),
        );
        unittest.expect(
          queryMap['pageToken']!.first,
          unittest.equals(arg_pageToken),
        );
        unittest.expect(
          queryMap['searchTerms']!.first,
          unittest.equals(arg_searchTerms),
        );
        unittest.expect(
          queryMap['textFormat']!.first,
          unittest.equals(arg_textFormat),
        );
        unittest.expect(
          queryMap['videoId']!.first,
          unittest.equals(arg_videoId),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildCommentThreadListResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_part,
          allThreadsRelatedToChannelId: arg_allThreadsRelatedToChannelId,
          channelId: arg_channelId,
          id: arg_id,
          maxResults: arg_maxResults,
          moderationStatus: arg_moderationStatus,
          order: arg_order,
          pageToken: arg_pageToken,
          searchTerms: arg_searchTerms,
          textFormat: arg_textFormat,
          videoId: arg_videoId,
          $fields: arg_$fields);
      checkCommentThreadListResponse(response as api.CommentThreadListResponse);
    });
  });

  unittest.group('resource-CommentsResource', () {
    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.YouTubeApi(mock).comments;
      final arg_id = 'foo';
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
          path.substring(pathOffset, pathOffset + 19),
          unittest.equals('youtube/v3/comments'),
        );
        pathOffset += 19;

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
          queryMap['id']!.first,
          unittest.equals(arg_id),
        );
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
      await res.delete(arg_id, $fields: arg_$fields);
    });

    unittest.test('method--insert', () async {
      final mock = HttpServerMock();
      final res = api.YouTubeApi(mock).comments;
      final arg_request = buildComment();
      final arg_part = buildUnnamed3133();
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.Comment.fromJson(json as core.Map<core.String, core.dynamic>);
        checkComment(obj);

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
          path.substring(pathOffset, pathOffset + 19),
          unittest.equals('youtube/v3/comments'),
        );
        pathOffset += 19;

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
          queryMap['part']!,
          unittest.equals(arg_part),
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
      final response =
          await res.insert(arg_request, arg_part, $fields: arg_$fields);
      checkComment(response as api.Comment);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.YouTubeApi(mock).comments;
      final arg_part = buildUnnamed3134();
      final arg_id = buildUnnamed3135();
      final arg_maxResults = 42;
      final arg_pageToken = 'foo';
      final arg_parentId = 'foo';
      final arg_textFormat = 'foo';
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
          path.substring(pathOffset, pathOffset + 19),
          unittest.equals('youtube/v3/comments'),
        );
        pathOffset += 19;

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
          queryMap['part']!,
          unittest.equals(arg_part),
        );
        unittest.expect(
          queryMap['id']!,
          unittest.equals(arg_id),
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
          queryMap['parentId']!.first,
          unittest.equals(arg_parentId),
        );
        unittest.expect(
          queryMap['textFormat']!.first,
          unittest.equals(arg_textFormat),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildCommentListResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_part,
          id: arg_id,
          maxResults: arg_maxResults,
          pageToken: arg_pageToken,
          parentId: arg_parentId,
          textFormat: arg_textFormat,
          $fields: arg_$fields);
      checkCommentListResponse(response as api.CommentListResponse);
    });

    unittest.test('method--markAsSpam', () async {
      final mock = HttpServerMock();
      final res = api.YouTubeApi(mock).comments;
      final arg_id = buildUnnamed3136();
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
          path.substring(pathOffset, pathOffset + 30),
          unittest.equals('youtube/v3/comments/markAsSpam'),
        );
        pathOffset += 30;

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
          queryMap['id']!,
          unittest.equals(arg_id),
        );
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
      await res.markAsSpam(arg_id, $fields: arg_$fields);
    });

    unittest.test('method--setModerationStatus', () async {
      final mock = HttpServerMock();
      final res = api.YouTubeApi(mock).comments;
      final arg_id = buildUnnamed3137();
      final arg_moderationStatus = 'foo';
      final arg_banAuthor = true;
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
          path.substring(pathOffset, pathOffset + 39),
          unittest.equals('youtube/v3/comments/setModerationStatus'),
        );
        pathOffset += 39;

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
          queryMap['id']!,
          unittest.equals(arg_id),
        );
        unittest.expect(
          queryMap['moderationStatus']!.first,
          unittest.equals(arg_moderationStatus),
        );
        unittest.expect(
          queryMap['banAuthor']!.first,
          unittest.equals('$arg_banAuthor'),
        );
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
      await res.setModerationStatus(arg_id, arg_moderationStatus,
          banAuthor: arg_banAuthor, $fields: arg_$fields);
    });

    unittest.test('method--update', () async {
      final mock = HttpServerMock();
      final res = api.YouTubeApi(mock).comments;
      final arg_request = buildComment();
      final arg_part = buildUnnamed3138();
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.Comment.fromJson(json as core.Map<core.String, core.dynamic>);
        checkComment(obj);

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
          path.substring(pathOffset, pathOffset + 19),
          unittest.equals('youtube/v3/comments'),
        );
        pathOffset += 19;

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
          queryMap['part']!,
          unittest.equals(arg_part),
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
      final response =
          await res.update(arg_request, arg_part, $fields: arg_$fields);
      checkComment(response as api.Comment);
    });
  });

  unittest.group('resource-I18nLanguagesResource', () {
    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.YouTubeApi(mock).i18nLanguages;
      final arg_part = buildUnnamed3139();
      final arg_hl = 'foo';
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
          path.substring(pathOffset, pathOffset + 24),
          unittest.equals('youtube/v3/i18nLanguages'),
        );
        pathOffset += 24;

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
          queryMap['part']!,
          unittest.equals(arg_part),
        );
        unittest.expect(
          queryMap['hl']!.first,
          unittest.equals(arg_hl),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildI18nLanguageListResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.list(arg_part, hl: arg_hl, $fields: arg_$fields);
      checkI18nLanguageListResponse(response as api.I18nLanguageListResponse);
    });
  });

  unittest.group('resource-I18nRegionsResource', () {
    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.YouTubeApi(mock).i18nRegions;
      final arg_part = buildUnnamed3140();
      final arg_hl = 'foo';
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
          path.substring(pathOffset, pathOffset + 22),
          unittest.equals('youtube/v3/i18nRegions'),
        );
        pathOffset += 22;

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
          queryMap['part']!,
          unittest.equals(arg_part),
        );
        unittest.expect(
          queryMap['hl']!.first,
          unittest.equals(arg_hl),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildI18nRegionListResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.list(arg_part, hl: arg_hl, $fields: arg_$fields);
      checkI18nRegionListResponse(response as api.I18nRegionListResponse);
    });
  });

  unittest.group('resource-LiveBroadcastsResource', () {
    unittest.test('method--bind', () async {
      final mock = HttpServerMock();
      final res = api.YouTubeApi(mock).liveBroadcasts;
      final arg_id = 'foo';
      final arg_part = buildUnnamed3141();
      final arg_onBehalfOfContentOwner = 'foo';
      final arg_onBehalfOfContentOwnerChannel = 'foo';
      final arg_streamId = 'foo';
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
          path.substring(pathOffset, pathOffset + 30),
          unittest.equals('youtube/v3/liveBroadcasts/bind'),
        );
        pathOffset += 30;

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
          queryMap['id']!.first,
          unittest.equals(arg_id),
        );
        unittest.expect(
          queryMap['part']!,
          unittest.equals(arg_part),
        );
        unittest.expect(
          queryMap['onBehalfOfContentOwner']!.first,
          unittest.equals(arg_onBehalfOfContentOwner),
        );
        unittest.expect(
          queryMap['onBehalfOfContentOwnerChannel']!.first,
          unittest.equals(arg_onBehalfOfContentOwnerChannel),
        );
        unittest.expect(
          queryMap['streamId']!.first,
          unittest.equals(arg_streamId),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildLiveBroadcast());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.bind(arg_id, arg_part,
          onBehalfOfContentOwner: arg_onBehalfOfContentOwner,
          onBehalfOfContentOwnerChannel: arg_onBehalfOfContentOwnerChannel,
          streamId: arg_streamId,
          $fields: arg_$fields);
      checkLiveBroadcast(response as api.LiveBroadcast);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.YouTubeApi(mock).liveBroadcasts;
      final arg_id = 'foo';
      final arg_onBehalfOfContentOwner = 'foo';
      final arg_onBehalfOfContentOwnerChannel = 'foo';
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
          path.substring(pathOffset, pathOffset + 25),
          unittest.equals('youtube/v3/liveBroadcasts'),
        );
        pathOffset += 25;

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
          queryMap['id']!.first,
          unittest.equals(arg_id),
        );
        unittest.expect(
          queryMap['onBehalfOfContentOwner']!.first,
          unittest.equals(arg_onBehalfOfContentOwner),
        );
        unittest.expect(
          queryMap['onBehalfOfContentOwnerChannel']!.first,
          unittest.equals(arg_onBehalfOfContentOwnerChannel),
        );
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
      await res.delete(arg_id,
          onBehalfOfContentOwner: arg_onBehalfOfContentOwner,
          onBehalfOfContentOwnerChannel: arg_onBehalfOfContentOwnerChannel,
          $fields: arg_$fields);
    });

    unittest.test('method--insert', () async {
      final mock = HttpServerMock();
      final res = api.YouTubeApi(mock).liveBroadcasts;
      final arg_request = buildLiveBroadcast();
      final arg_part = buildUnnamed3142();
      final arg_onBehalfOfContentOwner = 'foo';
      final arg_onBehalfOfContentOwnerChannel = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.LiveBroadcast.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkLiveBroadcast(obj);

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
          path.substring(pathOffset, pathOffset + 25),
          unittest.equals('youtube/v3/liveBroadcasts'),
        );
        pathOffset += 25;

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
          queryMap['part']!,
          unittest.equals(arg_part),
        );
        unittest.expect(
          queryMap['onBehalfOfContentOwner']!.first,
          unittest.equals(arg_onBehalfOfContentOwner),
        );
        unittest.expect(
          queryMap['onBehalfOfContentOwnerChannel']!.first,
          unittest.equals(arg_onBehalfOfContentOwnerChannel),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildLiveBroadcast());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.insert(arg_request, arg_part,
          onBehalfOfContentOwner: arg_onBehalfOfContentOwner,
          onBehalfOfContentOwnerChannel: arg_onBehalfOfContentOwnerChannel,
          $fields: arg_$fields);
      checkLiveBroadcast(response as api.LiveBroadcast);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.YouTubeApi(mock).liveBroadcasts;
      final arg_part = buildUnnamed3143();
      final arg_broadcastStatus = 'foo';
      final arg_broadcastType = 'foo';
      final arg_id = buildUnnamed3144();
      final arg_maxResults = 42;
      final arg_mine = true;
      final arg_onBehalfOfContentOwner = 'foo';
      final arg_onBehalfOfContentOwnerChannel = 'foo';
      final arg_pageToken = 'foo';
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
          path.substring(pathOffset, pathOffset + 25),
          unittest.equals('youtube/v3/liveBroadcasts'),
        );
        pathOffset += 25;

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
          queryMap['part']!,
          unittest.equals(arg_part),
        );
        unittest.expect(
          queryMap['broadcastStatus']!.first,
          unittest.equals(arg_broadcastStatus),
        );
        unittest.expect(
          queryMap['broadcastType']!.first,
          unittest.equals(arg_broadcastType),
        );
        unittest.expect(
          queryMap['id']!,
          unittest.equals(arg_id),
        );
        unittest.expect(
          core.int.parse(queryMap['maxResults']!.first),
          unittest.equals(arg_maxResults),
        );
        unittest.expect(
          queryMap['mine']!.first,
          unittest.equals('$arg_mine'),
        );
        unittest.expect(
          queryMap['onBehalfOfContentOwner']!.first,
          unittest.equals(arg_onBehalfOfContentOwner),
        );
        unittest.expect(
          queryMap['onBehalfOfContentOwnerChannel']!.first,
          unittest.equals(arg_onBehalfOfContentOwnerChannel),
        );
        unittest.expect(
          queryMap['pageToken']!.first,
          unittest.equals(arg_pageToken),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildLiveBroadcastListResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_part,
          broadcastStatus: arg_broadcastStatus,
          broadcastType: arg_broadcastType,
          id: arg_id,
          maxResults: arg_maxResults,
          mine: arg_mine,
          onBehalfOfContentOwner: arg_onBehalfOfContentOwner,
          onBehalfOfContentOwnerChannel: arg_onBehalfOfContentOwnerChannel,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkLiveBroadcastListResponse(response as api.LiveBroadcastListResponse);
    });

    unittest.test('method--transition', () async {
      final mock = HttpServerMock();
      final res = api.YouTubeApi(mock).liveBroadcasts;
      final arg_broadcastStatus = 'foo';
      final arg_id = 'foo';
      final arg_part = buildUnnamed3145();
      final arg_onBehalfOfContentOwner = 'foo';
      final arg_onBehalfOfContentOwnerChannel = 'foo';
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
          path.substring(pathOffset, pathOffset + 36),
          unittest.equals('youtube/v3/liveBroadcasts/transition'),
        );
        pathOffset += 36;

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
          queryMap['broadcastStatus']!.first,
          unittest.equals(arg_broadcastStatus),
        );
        unittest.expect(
          queryMap['id']!.first,
          unittest.equals(arg_id),
        );
        unittest.expect(
          queryMap['part']!,
          unittest.equals(arg_part),
        );
        unittest.expect(
          queryMap['onBehalfOfContentOwner']!.first,
          unittest.equals(arg_onBehalfOfContentOwner),
        );
        unittest.expect(
          queryMap['onBehalfOfContentOwnerChannel']!.first,
          unittest.equals(arg_onBehalfOfContentOwnerChannel),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildLiveBroadcast());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.transition(
          arg_broadcastStatus, arg_id, arg_part,
          onBehalfOfContentOwner: arg_onBehalfOfContentOwner,
          onBehalfOfContentOwnerChannel: arg_onBehalfOfContentOwnerChannel,
          $fields: arg_$fields);
      checkLiveBroadcast(response as api.LiveBroadcast);
    });

    unittest.test('method--update', () async {
      final mock = HttpServerMock();
      final res = api.YouTubeApi(mock).liveBroadcasts;
      final arg_request = buildLiveBroadcast();
      final arg_part = buildUnnamed3146();
      final arg_onBehalfOfContentOwner = 'foo';
      final arg_onBehalfOfContentOwnerChannel = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.LiveBroadcast.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkLiveBroadcast(obj);

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
          path.substring(pathOffset, pathOffset + 25),
          unittest.equals('youtube/v3/liveBroadcasts'),
        );
        pathOffset += 25;

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
          queryMap['part']!,
          unittest.equals(arg_part),
        );
        unittest.expect(
          queryMap['onBehalfOfContentOwner']!.first,
          unittest.equals(arg_onBehalfOfContentOwner),
        );
        unittest.expect(
          queryMap['onBehalfOfContentOwnerChannel']!.first,
          unittest.equals(arg_onBehalfOfContentOwnerChannel),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildLiveBroadcast());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.update(arg_request, arg_part,
          onBehalfOfContentOwner: arg_onBehalfOfContentOwner,
          onBehalfOfContentOwnerChannel: arg_onBehalfOfContentOwnerChannel,
          $fields: arg_$fields);
      checkLiveBroadcast(response as api.LiveBroadcast);
    });
  });

  unittest.group('resource-LiveChatBansResource', () {
    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.YouTubeApi(mock).liveChatBans;
      final arg_id = 'foo';
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
          path.substring(pathOffset, pathOffset + 24),
          unittest.equals('youtube/v3/liveChat/bans'),
        );
        pathOffset += 24;

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
          queryMap['id']!.first,
          unittest.equals(arg_id),
        );
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
      await res.delete(arg_id, $fields: arg_$fields);
    });

    unittest.test('method--insert', () async {
      final mock = HttpServerMock();
      final res = api.YouTubeApi(mock).liveChatBans;
      final arg_request = buildLiveChatBan();
      final arg_part = buildUnnamed3147();
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.LiveChatBan.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkLiveChatBan(obj);

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
          path.substring(pathOffset, pathOffset + 24),
          unittest.equals('youtube/v3/liveChat/bans'),
        );
        pathOffset += 24;

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
          queryMap['part']!,
          unittest.equals(arg_part),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildLiveChatBan());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.insert(arg_request, arg_part, $fields: arg_$fields);
      checkLiveChatBan(response as api.LiveChatBan);
    });
  });

  unittest.group('resource-LiveChatMessagesResource', () {
    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.YouTubeApi(mock).liveChatMessages;
      final arg_id = 'foo';
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
          path.substring(pathOffset, pathOffset + 28),
          unittest.equals('youtube/v3/liveChat/messages'),
        );
        pathOffset += 28;

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
          queryMap['id']!.first,
          unittest.equals(arg_id),
        );
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
      await res.delete(arg_id, $fields: arg_$fields);
    });

    unittest.test('method--insert', () async {
      final mock = HttpServerMock();
      final res = api.YouTubeApi(mock).liveChatMessages;
      final arg_request = buildLiveChatMessage();
      final arg_part = buildUnnamed3148();
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.LiveChatMessage.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkLiveChatMessage(obj);

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
          path.substring(pathOffset, pathOffset + 28),
          unittest.equals('youtube/v3/liveChat/messages'),
        );
        pathOffset += 28;

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
          queryMap['part']!,
          unittest.equals(arg_part),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildLiveChatMessage());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.insert(arg_request, arg_part, $fields: arg_$fields);
      checkLiveChatMessage(response as api.LiveChatMessage);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.YouTubeApi(mock).liveChatMessages;
      final arg_liveChatId = 'foo';
      final arg_part = buildUnnamed3149();
      final arg_hl = 'foo';
      final arg_maxResults = 42;
      final arg_pageToken = 'foo';
      final arg_profileImageSize = 42;
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
          path.substring(pathOffset, pathOffset + 28),
          unittest.equals('youtube/v3/liveChat/messages'),
        );
        pathOffset += 28;

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
          queryMap['liveChatId']!.first,
          unittest.equals(arg_liveChatId),
        );
        unittest.expect(
          queryMap['part']!,
          unittest.equals(arg_part),
        );
        unittest.expect(
          queryMap['hl']!.first,
          unittest.equals(arg_hl),
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
          core.int.parse(queryMap['profileImageSize']!.first),
          unittest.equals(arg_profileImageSize),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildLiveChatMessageListResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_liveChatId, arg_part,
          hl: arg_hl,
          maxResults: arg_maxResults,
          pageToken: arg_pageToken,
          profileImageSize: arg_profileImageSize,
          $fields: arg_$fields);
      checkLiveChatMessageListResponse(
          response as api.LiveChatMessageListResponse);
    });
  });

  unittest.group('resource-LiveChatModeratorsResource', () {
    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.YouTubeApi(mock).liveChatModerators;
      final arg_id = 'foo';
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
          path.substring(pathOffset, pathOffset + 30),
          unittest.equals('youtube/v3/liveChat/moderators'),
        );
        pathOffset += 30;

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
          queryMap['id']!.first,
          unittest.equals(arg_id),
        );
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
      await res.delete(arg_id, $fields: arg_$fields);
    });

    unittest.test('method--insert', () async {
      final mock = HttpServerMock();
      final res = api.YouTubeApi(mock).liveChatModerators;
      final arg_request = buildLiveChatModerator();
      final arg_part = buildUnnamed3150();
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.LiveChatModerator.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkLiveChatModerator(obj);

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
          path.substring(pathOffset, pathOffset + 30),
          unittest.equals('youtube/v3/liveChat/moderators'),
        );
        pathOffset += 30;

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
          queryMap['part']!,
          unittest.equals(arg_part),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildLiveChatModerator());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.insert(arg_request, arg_part, $fields: arg_$fields);
      checkLiveChatModerator(response as api.LiveChatModerator);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.YouTubeApi(mock).liveChatModerators;
      final arg_liveChatId = 'foo';
      final arg_part = buildUnnamed3151();
      final arg_maxResults = 42;
      final arg_pageToken = 'foo';
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
          path.substring(pathOffset, pathOffset + 30),
          unittest.equals('youtube/v3/liveChat/moderators'),
        );
        pathOffset += 30;

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
          queryMap['liveChatId']!.first,
          unittest.equals(arg_liveChatId),
        );
        unittest.expect(
          queryMap['part']!,
          unittest.equals(arg_part),
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
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildLiveChatModeratorListResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_liveChatId, arg_part,
          maxResults: arg_maxResults,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkLiveChatModeratorListResponse(
          response as api.LiveChatModeratorListResponse);
    });
  });

  unittest.group('resource-LiveStreamsResource', () {
    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.YouTubeApi(mock).liveStreams;
      final arg_id = 'foo';
      final arg_onBehalfOfContentOwner = 'foo';
      final arg_onBehalfOfContentOwnerChannel = 'foo';
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
          path.substring(pathOffset, pathOffset + 22),
          unittest.equals('youtube/v3/liveStreams'),
        );
        pathOffset += 22;

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
          queryMap['id']!.first,
          unittest.equals(arg_id),
        );
        unittest.expect(
          queryMap['onBehalfOfContentOwner']!.first,
          unittest.equals(arg_onBehalfOfContentOwner),
        );
        unittest.expect(
          queryMap['onBehalfOfContentOwnerChannel']!.first,
          unittest.equals(arg_onBehalfOfContentOwnerChannel),
        );
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
      await res.delete(arg_id,
          onBehalfOfContentOwner: arg_onBehalfOfContentOwner,
          onBehalfOfContentOwnerChannel: arg_onBehalfOfContentOwnerChannel,
          $fields: arg_$fields);
    });

    unittest.test('method--insert', () async {
      final mock = HttpServerMock();
      final res = api.YouTubeApi(mock).liveStreams;
      final arg_request = buildLiveStream();
      final arg_part = buildUnnamed3152();
      final arg_onBehalfOfContentOwner = 'foo';
      final arg_onBehalfOfContentOwnerChannel = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.LiveStream.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkLiveStream(obj);

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
          path.substring(pathOffset, pathOffset + 22),
          unittest.equals('youtube/v3/liveStreams'),
        );
        pathOffset += 22;

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
          queryMap['part']!,
          unittest.equals(arg_part),
        );
        unittest.expect(
          queryMap['onBehalfOfContentOwner']!.first,
          unittest.equals(arg_onBehalfOfContentOwner),
        );
        unittest.expect(
          queryMap['onBehalfOfContentOwnerChannel']!.first,
          unittest.equals(arg_onBehalfOfContentOwnerChannel),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildLiveStream());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.insert(arg_request, arg_part,
          onBehalfOfContentOwner: arg_onBehalfOfContentOwner,
          onBehalfOfContentOwnerChannel: arg_onBehalfOfContentOwnerChannel,
          $fields: arg_$fields);
      checkLiveStream(response as api.LiveStream);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.YouTubeApi(mock).liveStreams;
      final arg_part = buildUnnamed3153();
      final arg_id = buildUnnamed3154();
      final arg_maxResults = 42;
      final arg_mine = true;
      final arg_onBehalfOfContentOwner = 'foo';
      final arg_onBehalfOfContentOwnerChannel = 'foo';
      final arg_pageToken = 'foo';
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
          path.substring(pathOffset, pathOffset + 22),
          unittest.equals('youtube/v3/liveStreams'),
        );
        pathOffset += 22;

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
          queryMap['part']!,
          unittest.equals(arg_part),
        );
        unittest.expect(
          queryMap['id']!,
          unittest.equals(arg_id),
        );
        unittest.expect(
          core.int.parse(queryMap['maxResults']!.first),
          unittest.equals(arg_maxResults),
        );
        unittest.expect(
          queryMap['mine']!.first,
          unittest.equals('$arg_mine'),
        );
        unittest.expect(
          queryMap['onBehalfOfContentOwner']!.first,
          unittest.equals(arg_onBehalfOfContentOwner),
        );
        unittest.expect(
          queryMap['onBehalfOfContentOwnerChannel']!.first,
          unittest.equals(arg_onBehalfOfContentOwnerChannel),
        );
        unittest.expect(
          queryMap['pageToken']!.first,
          unittest.equals(arg_pageToken),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildLiveStreamListResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_part,
          id: arg_id,
          maxResults: arg_maxResults,
          mine: arg_mine,
          onBehalfOfContentOwner: arg_onBehalfOfContentOwner,
          onBehalfOfContentOwnerChannel: arg_onBehalfOfContentOwnerChannel,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkLiveStreamListResponse(response as api.LiveStreamListResponse);
    });

    unittest.test('method--update', () async {
      final mock = HttpServerMock();
      final res = api.YouTubeApi(mock).liveStreams;
      final arg_request = buildLiveStream();
      final arg_part = buildUnnamed3155();
      final arg_onBehalfOfContentOwner = 'foo';
      final arg_onBehalfOfContentOwnerChannel = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.LiveStream.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkLiveStream(obj);

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
          path.substring(pathOffset, pathOffset + 22),
          unittest.equals('youtube/v3/liveStreams'),
        );
        pathOffset += 22;

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
          queryMap['part']!,
          unittest.equals(arg_part),
        );
        unittest.expect(
          queryMap['onBehalfOfContentOwner']!.first,
          unittest.equals(arg_onBehalfOfContentOwner),
        );
        unittest.expect(
          queryMap['onBehalfOfContentOwnerChannel']!.first,
          unittest.equals(arg_onBehalfOfContentOwnerChannel),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildLiveStream());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.update(arg_request, arg_part,
          onBehalfOfContentOwner: arg_onBehalfOfContentOwner,
          onBehalfOfContentOwnerChannel: arg_onBehalfOfContentOwnerChannel,
          $fields: arg_$fields);
      checkLiveStream(response as api.LiveStream);
    });
  });

  unittest.group('resource-MembersResource', () {
    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.YouTubeApi(mock).members;
      final arg_part = buildUnnamed3156();
      final arg_filterByMemberChannelId = 'foo';
      final arg_hasAccessToLevel = 'foo';
      final arg_maxResults = 42;
      final arg_mode = 'foo';
      final arg_pageToken = 'foo';
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
          path.substring(pathOffset, pathOffset + 18),
          unittest.equals('youtube/v3/members'),
        );
        pathOffset += 18;

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
          queryMap['part']!,
          unittest.equals(arg_part),
        );
        unittest.expect(
          queryMap['filterByMemberChannelId']!.first,
          unittest.equals(arg_filterByMemberChannelId),
        );
        unittest.expect(
          queryMap['hasAccessToLevel']!.first,
          unittest.equals(arg_hasAccessToLevel),
        );
        unittest.expect(
          core.int.parse(queryMap['maxResults']!.first),
          unittest.equals(arg_maxResults),
        );
        unittest.expect(
          queryMap['mode']!.first,
          unittest.equals(arg_mode),
        );
        unittest.expect(
          queryMap['pageToken']!.first,
          unittest.equals(arg_pageToken),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildMemberListResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_part,
          filterByMemberChannelId: arg_filterByMemberChannelId,
          hasAccessToLevel: arg_hasAccessToLevel,
          maxResults: arg_maxResults,
          mode: arg_mode,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkMemberListResponse(response as api.MemberListResponse);
    });
  });

  unittest.group('resource-MembershipsLevelsResource', () {
    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.YouTubeApi(mock).membershipsLevels;
      final arg_part = buildUnnamed3157();
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
          path.substring(pathOffset, pathOffset + 28),
          unittest.equals('youtube/v3/membershipsLevels'),
        );
        pathOffset += 28;

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
          queryMap['part']!,
          unittest.equals(arg_part),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildMembershipsLevelListResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_part, $fields: arg_$fields);
      checkMembershipsLevelListResponse(
          response as api.MembershipsLevelListResponse);
    });
  });

  unittest.group('resource-PlaylistItemsResource', () {
    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.YouTubeApi(mock).playlistItems;
      final arg_id = 'foo';
      final arg_onBehalfOfContentOwner = 'foo';
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
          path.substring(pathOffset, pathOffset + 24),
          unittest.equals('youtube/v3/playlistItems'),
        );
        pathOffset += 24;

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
          queryMap['id']!.first,
          unittest.equals(arg_id),
        );
        unittest.expect(
          queryMap['onBehalfOfContentOwner']!.first,
          unittest.equals(arg_onBehalfOfContentOwner),
        );
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
      await res.delete(arg_id,
          onBehalfOfContentOwner: arg_onBehalfOfContentOwner,
          $fields: arg_$fields);
    });

    unittest.test('method--insert', () async {
      final mock = HttpServerMock();
      final res = api.YouTubeApi(mock).playlistItems;
      final arg_request = buildPlaylistItem();
      final arg_part = buildUnnamed3158();
      final arg_onBehalfOfContentOwner = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.PlaylistItem.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkPlaylistItem(obj);

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
          path.substring(pathOffset, pathOffset + 24),
          unittest.equals('youtube/v3/playlistItems'),
        );
        pathOffset += 24;

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
          queryMap['part']!,
          unittest.equals(arg_part),
        );
        unittest.expect(
          queryMap['onBehalfOfContentOwner']!.first,
          unittest.equals(arg_onBehalfOfContentOwner),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildPlaylistItem());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.insert(arg_request, arg_part,
          onBehalfOfContentOwner: arg_onBehalfOfContentOwner,
          $fields: arg_$fields);
      checkPlaylistItem(response as api.PlaylistItem);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.YouTubeApi(mock).playlistItems;
      final arg_part = buildUnnamed3159();
      final arg_id = buildUnnamed3160();
      final arg_maxResults = 42;
      final arg_onBehalfOfContentOwner = 'foo';
      final arg_pageToken = 'foo';
      final arg_playlistId = 'foo';
      final arg_videoId = 'foo';
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
          path.substring(pathOffset, pathOffset + 24),
          unittest.equals('youtube/v3/playlistItems'),
        );
        pathOffset += 24;

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
          queryMap['part']!,
          unittest.equals(arg_part),
        );
        unittest.expect(
          queryMap['id']!,
          unittest.equals(arg_id),
        );
        unittest.expect(
          core.int.parse(queryMap['maxResults']!.first),
          unittest.equals(arg_maxResults),
        );
        unittest.expect(
          queryMap['onBehalfOfContentOwner']!.first,
          unittest.equals(arg_onBehalfOfContentOwner),
        );
        unittest.expect(
          queryMap['pageToken']!.first,
          unittest.equals(arg_pageToken),
        );
        unittest.expect(
          queryMap['playlistId']!.first,
          unittest.equals(arg_playlistId),
        );
        unittest.expect(
          queryMap['videoId']!.first,
          unittest.equals(arg_videoId),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildPlaylistItemListResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_part,
          id: arg_id,
          maxResults: arg_maxResults,
          onBehalfOfContentOwner: arg_onBehalfOfContentOwner,
          pageToken: arg_pageToken,
          playlistId: arg_playlistId,
          videoId: arg_videoId,
          $fields: arg_$fields);
      checkPlaylistItemListResponse(response as api.PlaylistItemListResponse);
    });

    unittest.test('method--update', () async {
      final mock = HttpServerMock();
      final res = api.YouTubeApi(mock).playlistItems;
      final arg_request = buildPlaylistItem();
      final arg_part = buildUnnamed3161();
      final arg_onBehalfOfContentOwner = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.PlaylistItem.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkPlaylistItem(obj);

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
          path.substring(pathOffset, pathOffset + 24),
          unittest.equals('youtube/v3/playlistItems'),
        );
        pathOffset += 24;

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
          queryMap['part']!,
          unittest.equals(arg_part),
        );
        unittest.expect(
          queryMap['onBehalfOfContentOwner']!.first,
          unittest.equals(arg_onBehalfOfContentOwner),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildPlaylistItem());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.update(arg_request, arg_part,
          onBehalfOfContentOwner: arg_onBehalfOfContentOwner,
          $fields: arg_$fields);
      checkPlaylistItem(response as api.PlaylistItem);
    });
  });

  unittest.group('resource-PlaylistsResource', () {
    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.YouTubeApi(mock).playlists;
      final arg_id = 'foo';
      final arg_onBehalfOfContentOwner = 'foo';
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
          path.substring(pathOffset, pathOffset + 20),
          unittest.equals('youtube/v3/playlists'),
        );
        pathOffset += 20;

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
          queryMap['id']!.first,
          unittest.equals(arg_id),
        );
        unittest.expect(
          queryMap['onBehalfOfContentOwner']!.first,
          unittest.equals(arg_onBehalfOfContentOwner),
        );
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
      await res.delete(arg_id,
          onBehalfOfContentOwner: arg_onBehalfOfContentOwner,
          $fields: arg_$fields);
    });

    unittest.test('method--insert', () async {
      final mock = HttpServerMock();
      final res = api.YouTubeApi(mock).playlists;
      final arg_request = buildPlaylist();
      final arg_part = buildUnnamed3162();
      final arg_onBehalfOfContentOwner = 'foo';
      final arg_onBehalfOfContentOwnerChannel = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.Playlist.fromJson(json as core.Map<core.String, core.dynamic>);
        checkPlaylist(obj);

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
          path.substring(pathOffset, pathOffset + 20),
          unittest.equals('youtube/v3/playlists'),
        );
        pathOffset += 20;

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
          queryMap['part']!,
          unittest.equals(arg_part),
        );
        unittest.expect(
          queryMap['onBehalfOfContentOwner']!.first,
          unittest.equals(arg_onBehalfOfContentOwner),
        );
        unittest.expect(
          queryMap['onBehalfOfContentOwnerChannel']!.first,
          unittest.equals(arg_onBehalfOfContentOwnerChannel),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildPlaylist());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.insert(arg_request, arg_part,
          onBehalfOfContentOwner: arg_onBehalfOfContentOwner,
          onBehalfOfContentOwnerChannel: arg_onBehalfOfContentOwnerChannel,
          $fields: arg_$fields);
      checkPlaylist(response as api.Playlist);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.YouTubeApi(mock).playlists;
      final arg_part = buildUnnamed3163();
      final arg_channelId = 'foo';
      final arg_hl = 'foo';
      final arg_id = buildUnnamed3164();
      final arg_maxResults = 42;
      final arg_mine = true;
      final arg_onBehalfOfContentOwner = 'foo';
      final arg_onBehalfOfContentOwnerChannel = 'foo';
      final arg_pageToken = 'foo';
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
          path.substring(pathOffset, pathOffset + 20),
          unittest.equals('youtube/v3/playlists'),
        );
        pathOffset += 20;

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
          queryMap['part']!,
          unittest.equals(arg_part),
        );
        unittest.expect(
          queryMap['channelId']!.first,
          unittest.equals(arg_channelId),
        );
        unittest.expect(
          queryMap['hl']!.first,
          unittest.equals(arg_hl),
        );
        unittest.expect(
          queryMap['id']!,
          unittest.equals(arg_id),
        );
        unittest.expect(
          core.int.parse(queryMap['maxResults']!.first),
          unittest.equals(arg_maxResults),
        );
        unittest.expect(
          queryMap['mine']!.first,
          unittest.equals('$arg_mine'),
        );
        unittest.expect(
          queryMap['onBehalfOfContentOwner']!.first,
          unittest.equals(arg_onBehalfOfContentOwner),
        );
        unittest.expect(
          queryMap['onBehalfOfContentOwnerChannel']!.first,
          unittest.equals(arg_onBehalfOfContentOwnerChannel),
        );
        unittest.expect(
          queryMap['pageToken']!.first,
          unittest.equals(arg_pageToken),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildPlaylistListResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_part,
          channelId: arg_channelId,
          hl: arg_hl,
          id: arg_id,
          maxResults: arg_maxResults,
          mine: arg_mine,
          onBehalfOfContentOwner: arg_onBehalfOfContentOwner,
          onBehalfOfContentOwnerChannel: arg_onBehalfOfContentOwnerChannel,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkPlaylistListResponse(response as api.PlaylistListResponse);
    });

    unittest.test('method--update', () async {
      final mock = HttpServerMock();
      final res = api.YouTubeApi(mock).playlists;
      final arg_request = buildPlaylist();
      final arg_part = buildUnnamed3165();
      final arg_onBehalfOfContentOwner = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.Playlist.fromJson(json as core.Map<core.String, core.dynamic>);
        checkPlaylist(obj);

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
          path.substring(pathOffset, pathOffset + 20),
          unittest.equals('youtube/v3/playlists'),
        );
        pathOffset += 20;

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
          queryMap['part']!,
          unittest.equals(arg_part),
        );
        unittest.expect(
          queryMap['onBehalfOfContentOwner']!.first,
          unittest.equals(arg_onBehalfOfContentOwner),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildPlaylist());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.update(arg_request, arg_part,
          onBehalfOfContentOwner: arg_onBehalfOfContentOwner,
          $fields: arg_$fields);
      checkPlaylist(response as api.Playlist);
    });
  });

  unittest.group('resource-SearchResource', () {
    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.YouTubeApi(mock).search;
      final arg_part = buildUnnamed3166();
      final arg_channelId = 'foo';
      final arg_channelType = 'foo';
      final arg_eventType = 'foo';
      final arg_forContentOwner = true;
      final arg_forDeveloper = true;
      final arg_forMine = true;
      final arg_location = 'foo';
      final arg_locationRadius = 'foo';
      final arg_maxResults = 42;
      final arg_onBehalfOfContentOwner = 'foo';
      final arg_order = 'foo';
      final arg_pageToken = 'foo';
      final arg_publishedAfter = 'foo';
      final arg_publishedBefore = 'foo';
      final arg_q = 'foo';
      final arg_regionCode = 'foo';
      final arg_relatedToVideoId = 'foo';
      final arg_relevanceLanguage = 'foo';
      final arg_safeSearch = 'foo';
      final arg_topicId = 'foo';
      final arg_type = buildUnnamed3167();
      final arg_videoCaption = 'foo';
      final arg_videoCategoryId = 'foo';
      final arg_videoDefinition = 'foo';
      final arg_videoDimension = 'foo';
      final arg_videoDuration = 'foo';
      final arg_videoEmbeddable = 'foo';
      final arg_videoLicense = 'foo';
      final arg_videoSyndicated = 'foo';
      final arg_videoType = 'foo';
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
          path.substring(pathOffset, pathOffset + 17),
          unittest.equals('youtube/v3/search'),
        );
        pathOffset += 17;

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
          queryMap['part']!,
          unittest.equals(arg_part),
        );
        unittest.expect(
          queryMap['channelId']!.first,
          unittest.equals(arg_channelId),
        );
        unittest.expect(
          queryMap['channelType']!.first,
          unittest.equals(arg_channelType),
        );
        unittest.expect(
          queryMap['eventType']!.first,
          unittest.equals(arg_eventType),
        );
        unittest.expect(
          queryMap['forContentOwner']!.first,
          unittest.equals('$arg_forContentOwner'),
        );
        unittest.expect(
          queryMap['forDeveloper']!.first,
          unittest.equals('$arg_forDeveloper'),
        );
        unittest.expect(
          queryMap['forMine']!.first,
          unittest.equals('$arg_forMine'),
        );
        unittest.expect(
          queryMap['location']!.first,
          unittest.equals(arg_location),
        );
        unittest.expect(
          queryMap['locationRadius']!.first,
          unittest.equals(arg_locationRadius),
        );
        unittest.expect(
          core.int.parse(queryMap['maxResults']!.first),
          unittest.equals(arg_maxResults),
        );
        unittest.expect(
          queryMap['onBehalfOfContentOwner']!.first,
          unittest.equals(arg_onBehalfOfContentOwner),
        );
        unittest.expect(
          queryMap['order']!.first,
          unittest.equals(arg_order),
        );
        unittest.expect(
          queryMap['pageToken']!.first,
          unittest.equals(arg_pageToken),
        );
        unittest.expect(
          queryMap['publishedAfter']!.first,
          unittest.equals(arg_publishedAfter),
        );
        unittest.expect(
          queryMap['publishedBefore']!.first,
          unittest.equals(arg_publishedBefore),
        );
        unittest.expect(
          queryMap['q']!.first,
          unittest.equals(arg_q),
        );
        unittest.expect(
          queryMap['regionCode']!.first,
          unittest.equals(arg_regionCode),
        );
        unittest.expect(
          queryMap['relatedToVideoId']!.first,
          unittest.equals(arg_relatedToVideoId),
        );
        unittest.expect(
          queryMap['relevanceLanguage']!.first,
          unittest.equals(arg_relevanceLanguage),
        );
        unittest.expect(
          queryMap['safeSearch']!.first,
          unittest.equals(arg_safeSearch),
        );
        unittest.expect(
          queryMap['topicId']!.first,
          unittest.equals(arg_topicId),
        );
        unittest.expect(
          queryMap['type']!,
          unittest.equals(arg_type),
        );
        unittest.expect(
          queryMap['videoCaption']!.first,
          unittest.equals(arg_videoCaption),
        );
        unittest.expect(
          queryMap['videoCategoryId']!.first,
          unittest.equals(arg_videoCategoryId),
        );
        unittest.expect(
          queryMap['videoDefinition']!.first,
          unittest.equals(arg_videoDefinition),
        );
        unittest.expect(
          queryMap['videoDimension']!.first,
          unittest.equals(arg_videoDimension),
        );
        unittest.expect(
          queryMap['videoDuration']!.first,
          unittest.equals(arg_videoDuration),
        );
        unittest.expect(
          queryMap['videoEmbeddable']!.first,
          unittest.equals(arg_videoEmbeddable),
        );
        unittest.expect(
          queryMap['videoLicense']!.first,
          unittest.equals(arg_videoLicense),
        );
        unittest.expect(
          queryMap['videoSyndicated']!.first,
          unittest.equals(arg_videoSyndicated),
        );
        unittest.expect(
          queryMap['videoType']!.first,
          unittest.equals(arg_videoType),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildSearchListResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_part,
          channelId: arg_channelId,
          channelType: arg_channelType,
          eventType: arg_eventType,
          forContentOwner: arg_forContentOwner,
          forDeveloper: arg_forDeveloper,
          forMine: arg_forMine,
          location: arg_location,
          locationRadius: arg_locationRadius,
          maxResults: arg_maxResults,
          onBehalfOfContentOwner: arg_onBehalfOfContentOwner,
          order: arg_order,
          pageToken: arg_pageToken,
          publishedAfter: arg_publishedAfter,
          publishedBefore: arg_publishedBefore,
          q: arg_q,
          regionCode: arg_regionCode,
          relatedToVideoId: arg_relatedToVideoId,
          relevanceLanguage: arg_relevanceLanguage,
          safeSearch: arg_safeSearch,
          topicId: arg_topicId,
          type: arg_type,
          videoCaption: arg_videoCaption,
          videoCategoryId: arg_videoCategoryId,
          videoDefinition: arg_videoDefinition,
          videoDimension: arg_videoDimension,
          videoDuration: arg_videoDuration,
          videoEmbeddable: arg_videoEmbeddable,
          videoLicense: arg_videoLicense,
          videoSyndicated: arg_videoSyndicated,
          videoType: arg_videoType,
          $fields: arg_$fields);
      checkSearchListResponse(response as api.SearchListResponse);
    });
  });

  unittest.group('resource-SubscriptionsResource', () {
    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.YouTubeApi(mock).subscriptions;
      final arg_id = 'foo';
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
          path.substring(pathOffset, pathOffset + 24),
          unittest.equals('youtube/v3/subscriptions'),
        );
        pathOffset += 24;

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
          queryMap['id']!.first,
          unittest.equals(arg_id),
        );
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
      await res.delete(arg_id, $fields: arg_$fields);
    });

    unittest.test('method--insert', () async {
      final mock = HttpServerMock();
      final res = api.YouTubeApi(mock).subscriptions;
      final arg_request = buildSubscription();
      final arg_part = buildUnnamed3168();
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.Subscription.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkSubscription(obj);

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
          path.substring(pathOffset, pathOffset + 24),
          unittest.equals('youtube/v3/subscriptions'),
        );
        pathOffset += 24;

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
          queryMap['part']!,
          unittest.equals(arg_part),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildSubscription());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.insert(arg_request, arg_part, $fields: arg_$fields);
      checkSubscription(response as api.Subscription);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.YouTubeApi(mock).subscriptions;
      final arg_part = buildUnnamed3169();
      final arg_channelId = 'foo';
      final arg_forChannelId = 'foo';
      final arg_id = buildUnnamed3170();
      final arg_maxResults = 42;
      final arg_mine = true;
      final arg_myRecentSubscribers = true;
      final arg_mySubscribers = true;
      final arg_onBehalfOfContentOwner = 'foo';
      final arg_onBehalfOfContentOwnerChannel = 'foo';
      final arg_order = 'foo';
      final arg_pageToken = 'foo';
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
          path.substring(pathOffset, pathOffset + 24),
          unittest.equals('youtube/v3/subscriptions'),
        );
        pathOffset += 24;

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
          queryMap['part']!,
          unittest.equals(arg_part),
        );
        unittest.expect(
          queryMap['channelId']!.first,
          unittest.equals(arg_channelId),
        );
        unittest.expect(
          queryMap['forChannelId']!.first,
          unittest.equals(arg_forChannelId),
        );
        unittest.expect(
          queryMap['id']!,
          unittest.equals(arg_id),
        );
        unittest.expect(
          core.int.parse(queryMap['maxResults']!.first),
          unittest.equals(arg_maxResults),
        );
        unittest.expect(
          queryMap['mine']!.first,
          unittest.equals('$arg_mine'),
        );
        unittest.expect(
          queryMap['myRecentSubscribers']!.first,
          unittest.equals('$arg_myRecentSubscribers'),
        );
        unittest.expect(
          queryMap['mySubscribers']!.first,
          unittest.equals('$arg_mySubscribers'),
        );
        unittest.expect(
          queryMap['onBehalfOfContentOwner']!.first,
          unittest.equals(arg_onBehalfOfContentOwner),
        );
        unittest.expect(
          queryMap['onBehalfOfContentOwnerChannel']!.first,
          unittest.equals(arg_onBehalfOfContentOwnerChannel),
        );
        unittest.expect(
          queryMap['order']!.first,
          unittest.equals(arg_order),
        );
        unittest.expect(
          queryMap['pageToken']!.first,
          unittest.equals(arg_pageToken),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildSubscriptionListResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_part,
          channelId: arg_channelId,
          forChannelId: arg_forChannelId,
          id: arg_id,
          maxResults: arg_maxResults,
          mine: arg_mine,
          myRecentSubscribers: arg_myRecentSubscribers,
          mySubscribers: arg_mySubscribers,
          onBehalfOfContentOwner: arg_onBehalfOfContentOwner,
          onBehalfOfContentOwnerChannel: arg_onBehalfOfContentOwnerChannel,
          order: arg_order,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkSubscriptionListResponse(response as api.SubscriptionListResponse);
    });
  });

  unittest.group('resource-SuperChatEventsResource', () {
    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.YouTubeApi(mock).superChatEvents;
      final arg_part = buildUnnamed3171();
      final arg_hl = 'foo';
      final arg_maxResults = 42;
      final arg_pageToken = 'foo';
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
          path.substring(pathOffset, pathOffset + 26),
          unittest.equals('youtube/v3/superChatEvents'),
        );
        pathOffset += 26;

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
          queryMap['part']!,
          unittest.equals(arg_part),
        );
        unittest.expect(
          queryMap['hl']!.first,
          unittest.equals(arg_hl),
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
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildSuperChatEventListResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_part,
          hl: arg_hl,
          maxResults: arg_maxResults,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkSuperChatEventListResponse(
          response as api.SuperChatEventListResponse);
    });
  });

  unittest.group('resource-TestsResource', () {
    unittest.test('method--insert', () async {
      final mock = HttpServerMock();
      final res = api.YouTubeApi(mock).tests;
      final arg_request = buildTestItem();
      final arg_part = buildUnnamed3172();
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.TestItem.fromJson(json as core.Map<core.String, core.dynamic>);
        checkTestItem(obj);

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
          path.substring(pathOffset, pathOffset + 16),
          unittest.equals('youtube/v3/tests'),
        );
        pathOffset += 16;

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
          queryMap['part']!,
          unittest.equals(arg_part),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildTestItem());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.insert(arg_request, arg_part, $fields: arg_$fields);
      checkTestItem(response as api.TestItem);
    });
  });

  unittest.group('resource-ThirdPartyLinksResource', () {
    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.YouTubeApi(mock).thirdPartyLinks;
      final arg_linkingToken = 'foo';
      final arg_type = 'foo';
      final arg_part = buildUnnamed3173();
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
          path.substring(pathOffset, pathOffset + 26),
          unittest.equals('youtube/v3/thirdPartyLinks'),
        );
        pathOffset += 26;

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
          queryMap['linkingToken']!.first,
          unittest.equals(arg_linkingToken),
        );
        unittest.expect(
          queryMap['type']!.first,
          unittest.equals(arg_type),
        );
        unittest.expect(
          queryMap['part']!,
          unittest.equals(arg_part),
        );
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
      await res.delete(arg_linkingToken, arg_type,
          part: arg_part, $fields: arg_$fields);
    });

    unittest.test('method--insert', () async {
      final mock = HttpServerMock();
      final res = api.YouTubeApi(mock).thirdPartyLinks;
      final arg_request = buildThirdPartyLink();
      final arg_part = buildUnnamed3174();
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.ThirdPartyLink.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkThirdPartyLink(obj);

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
          path.substring(pathOffset, pathOffset + 26),
          unittest.equals('youtube/v3/thirdPartyLinks'),
        );
        pathOffset += 26;

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
          queryMap['part']!,
          unittest.equals(arg_part),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildThirdPartyLink());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.insert(arg_request, arg_part, $fields: arg_$fields);
      checkThirdPartyLink(response as api.ThirdPartyLink);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.YouTubeApi(mock).thirdPartyLinks;
      final arg_part = buildUnnamed3175();
      final arg_linkingToken = 'foo';
      final arg_type = 'foo';
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
          path.substring(pathOffset, pathOffset + 26),
          unittest.equals('youtube/v3/thirdPartyLinks'),
        );
        pathOffset += 26;

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
          queryMap['part']!,
          unittest.equals(arg_part),
        );
        unittest.expect(
          queryMap['linkingToken']!.first,
          unittest.equals(arg_linkingToken),
        );
        unittest.expect(
          queryMap['type']!.first,
          unittest.equals(arg_type),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildThirdPartyLink());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_part,
          linkingToken: arg_linkingToken, type: arg_type, $fields: arg_$fields);
      checkThirdPartyLink(response as api.ThirdPartyLink);
    });

    unittest.test('method--update', () async {
      final mock = HttpServerMock();
      final res = api.YouTubeApi(mock).thirdPartyLinks;
      final arg_request = buildThirdPartyLink();
      final arg_part = buildUnnamed3176();
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.ThirdPartyLink.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkThirdPartyLink(obj);

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
          path.substring(pathOffset, pathOffset + 26),
          unittest.equals('youtube/v3/thirdPartyLinks'),
        );
        pathOffset += 26;

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
          queryMap['part']!,
          unittest.equals(arg_part),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildThirdPartyLink());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.update(arg_request, arg_part, $fields: arg_$fields);
      checkThirdPartyLink(response as api.ThirdPartyLink);
    });
  });

  unittest.group('resource-ThumbnailsResource', () {
    unittest.test('method--set', () async {
      // TODO: Implement tests for media upload;
      // TODO: Implement tests for media download;

      final mock = HttpServerMock();
      final res = api.YouTubeApi(mock).thumbnails;
      final arg_videoId = 'foo';
      final arg_onBehalfOfContentOwner = 'foo';
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
          path.substring(pathOffset, pathOffset + 25),
          unittest.equals('youtube/v3/thumbnails/set'),
        );
        pathOffset += 25;

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
          queryMap['videoId']!.first,
          unittest.equals(arg_videoId),
        );
        unittest.expect(
          queryMap['onBehalfOfContentOwner']!.first,
          unittest.equals(arg_onBehalfOfContentOwner),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildThumbnailSetResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.set(arg_videoId,
          onBehalfOfContentOwner: arg_onBehalfOfContentOwner,
          $fields: arg_$fields);
      checkThumbnailSetResponse(response as api.ThumbnailSetResponse);
    });
  });

  unittest.group('resource-VideoAbuseReportReasonsResource', () {
    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.YouTubeApi(mock).videoAbuseReportReasons;
      final arg_part = buildUnnamed3177();
      final arg_hl = 'foo';
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
          path.substring(pathOffset, pathOffset + 34),
          unittest.equals('youtube/v3/videoAbuseReportReasons'),
        );
        pathOffset += 34;

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
          queryMap['part']!,
          unittest.equals(arg_part),
        );
        unittest.expect(
          queryMap['hl']!.first,
          unittest.equals(arg_hl),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp =
            convert.json.encode(buildVideoAbuseReportReasonListResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.list(arg_part, hl: arg_hl, $fields: arg_$fields);
      checkVideoAbuseReportReasonListResponse(
          response as api.VideoAbuseReportReasonListResponse);
    });
  });

  unittest.group('resource-VideoCategoriesResource', () {
    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.YouTubeApi(mock).videoCategories;
      final arg_part = buildUnnamed3178();
      final arg_hl = 'foo';
      final arg_id = buildUnnamed3179();
      final arg_regionCode = 'foo';
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
          path.substring(pathOffset, pathOffset + 26),
          unittest.equals('youtube/v3/videoCategories'),
        );
        pathOffset += 26;

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
          queryMap['part']!,
          unittest.equals(arg_part),
        );
        unittest.expect(
          queryMap['hl']!.first,
          unittest.equals(arg_hl),
        );
        unittest.expect(
          queryMap['id']!,
          unittest.equals(arg_id),
        );
        unittest.expect(
          queryMap['regionCode']!.first,
          unittest.equals(arg_regionCode),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildVideoCategoryListResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_part,
          hl: arg_hl,
          id: arg_id,
          regionCode: arg_regionCode,
          $fields: arg_$fields);
      checkVideoCategoryListResponse(response as api.VideoCategoryListResponse);
    });
  });

  unittest.group('resource-VideosResource', () {
    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.YouTubeApi(mock).videos;
      final arg_id = 'foo';
      final arg_onBehalfOfContentOwner = 'foo';
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
          path.substring(pathOffset, pathOffset + 17),
          unittest.equals('youtube/v3/videos'),
        );
        pathOffset += 17;

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
          queryMap['id']!.first,
          unittest.equals(arg_id),
        );
        unittest.expect(
          queryMap['onBehalfOfContentOwner']!.first,
          unittest.equals(arg_onBehalfOfContentOwner),
        );
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
      await res.delete(arg_id,
          onBehalfOfContentOwner: arg_onBehalfOfContentOwner,
          $fields: arg_$fields);
    });

    unittest.test('method--getRating', () async {
      final mock = HttpServerMock();
      final res = api.YouTubeApi(mock).videos;
      final arg_id = buildUnnamed3180();
      final arg_onBehalfOfContentOwner = 'foo';
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
          path.substring(pathOffset, pathOffset + 27),
          unittest.equals('youtube/v3/videos/getRating'),
        );
        pathOffset += 27;

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
          queryMap['id']!,
          unittest.equals(arg_id),
        );
        unittest.expect(
          queryMap['onBehalfOfContentOwner']!.first,
          unittest.equals(arg_onBehalfOfContentOwner),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildVideoGetRatingResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.getRating(arg_id,
          onBehalfOfContentOwner: arg_onBehalfOfContentOwner,
          $fields: arg_$fields);
      checkVideoGetRatingResponse(response as api.VideoGetRatingResponse);
    });

    unittest.test('method--insert', () async {
      // TODO: Implement tests for media upload;
      // TODO: Implement tests for media download;

      final mock = HttpServerMock();
      final res = api.YouTubeApi(mock).videos;
      final arg_request = buildVideo();
      final arg_part = buildUnnamed3181();
      final arg_autoLevels = true;
      final arg_notifySubscribers = true;
      final arg_onBehalfOfContentOwner = 'foo';
      final arg_onBehalfOfContentOwnerChannel = 'foo';
      final arg_stabilize = true;
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.Video.fromJson(json as core.Map<core.String, core.dynamic>);
        checkVideo(obj);

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
          path.substring(pathOffset, pathOffset + 17),
          unittest.equals('youtube/v3/videos'),
        );
        pathOffset += 17;

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
          queryMap['part']!,
          unittest.equals(arg_part),
        );
        unittest.expect(
          queryMap['autoLevels']!.first,
          unittest.equals('$arg_autoLevels'),
        );
        unittest.expect(
          queryMap['notifySubscribers']!.first,
          unittest.equals('$arg_notifySubscribers'),
        );
        unittest.expect(
          queryMap['onBehalfOfContentOwner']!.first,
          unittest.equals(arg_onBehalfOfContentOwner),
        );
        unittest.expect(
          queryMap['onBehalfOfContentOwnerChannel']!.first,
          unittest.equals(arg_onBehalfOfContentOwnerChannel),
        );
        unittest.expect(
          queryMap['stabilize']!.first,
          unittest.equals('$arg_stabilize'),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildVideo());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.insert(arg_request, arg_part,
          autoLevels: arg_autoLevels,
          notifySubscribers: arg_notifySubscribers,
          onBehalfOfContentOwner: arg_onBehalfOfContentOwner,
          onBehalfOfContentOwnerChannel: arg_onBehalfOfContentOwnerChannel,
          stabilize: arg_stabilize,
          $fields: arg_$fields);
      checkVideo(response as api.Video);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.YouTubeApi(mock).videos;
      final arg_part = buildUnnamed3182();
      final arg_chart = 'foo';
      final arg_hl = 'foo';
      final arg_id = buildUnnamed3183();
      final arg_locale = 'foo';
      final arg_maxHeight = 42;
      final arg_maxResults = 42;
      final arg_maxWidth = 42;
      final arg_myRating = 'foo';
      final arg_onBehalfOfContentOwner = 'foo';
      final arg_pageToken = 'foo';
      final arg_regionCode = 'foo';
      final arg_videoCategoryId = 'foo';
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
          path.substring(pathOffset, pathOffset + 17),
          unittest.equals('youtube/v3/videos'),
        );
        pathOffset += 17;

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
          queryMap['part']!,
          unittest.equals(arg_part),
        );
        unittest.expect(
          queryMap['chart']!.first,
          unittest.equals(arg_chart),
        );
        unittest.expect(
          queryMap['hl']!.first,
          unittest.equals(arg_hl),
        );
        unittest.expect(
          queryMap['id']!,
          unittest.equals(arg_id),
        );
        unittest.expect(
          queryMap['locale']!.first,
          unittest.equals(arg_locale),
        );
        unittest.expect(
          core.int.parse(queryMap['maxHeight']!.first),
          unittest.equals(arg_maxHeight),
        );
        unittest.expect(
          core.int.parse(queryMap['maxResults']!.first),
          unittest.equals(arg_maxResults),
        );
        unittest.expect(
          core.int.parse(queryMap['maxWidth']!.first),
          unittest.equals(arg_maxWidth),
        );
        unittest.expect(
          queryMap['myRating']!.first,
          unittest.equals(arg_myRating),
        );
        unittest.expect(
          queryMap['onBehalfOfContentOwner']!.first,
          unittest.equals(arg_onBehalfOfContentOwner),
        );
        unittest.expect(
          queryMap['pageToken']!.first,
          unittest.equals(arg_pageToken),
        );
        unittest.expect(
          queryMap['regionCode']!.first,
          unittest.equals(arg_regionCode),
        );
        unittest.expect(
          queryMap['videoCategoryId']!.first,
          unittest.equals(arg_videoCategoryId),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildVideoListResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_part,
          chart: arg_chart,
          hl: arg_hl,
          id: arg_id,
          locale: arg_locale,
          maxHeight: arg_maxHeight,
          maxResults: arg_maxResults,
          maxWidth: arg_maxWidth,
          myRating: arg_myRating,
          onBehalfOfContentOwner: arg_onBehalfOfContentOwner,
          pageToken: arg_pageToken,
          regionCode: arg_regionCode,
          videoCategoryId: arg_videoCategoryId,
          $fields: arg_$fields);
      checkVideoListResponse(response as api.VideoListResponse);
    });

    unittest.test('method--rate', () async {
      final mock = HttpServerMock();
      final res = api.YouTubeApi(mock).videos;
      final arg_id = 'foo';
      final arg_rating = 'foo';
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
          path.substring(pathOffset, pathOffset + 22),
          unittest.equals('youtube/v3/videos/rate'),
        );
        pathOffset += 22;

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
          queryMap['id']!.first,
          unittest.equals(arg_id),
        );
        unittest.expect(
          queryMap['rating']!.first,
          unittest.equals(arg_rating),
        );
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
      await res.rate(arg_id, arg_rating, $fields: arg_$fields);
    });

    unittest.test('method--reportAbuse', () async {
      final mock = HttpServerMock();
      final res = api.YouTubeApi(mock).videos;
      final arg_request = buildVideoAbuseReport();
      final arg_onBehalfOfContentOwner = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.VideoAbuseReport.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkVideoAbuseReport(obj);

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
          path.substring(pathOffset, pathOffset + 29),
          unittest.equals('youtube/v3/videos/reportAbuse'),
        );
        pathOffset += 29;

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
          queryMap['onBehalfOfContentOwner']!.first,
          unittest.equals(arg_onBehalfOfContentOwner),
        );
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
      await res.reportAbuse(arg_request,
          onBehalfOfContentOwner: arg_onBehalfOfContentOwner,
          $fields: arg_$fields);
    });

    unittest.test('method--update', () async {
      final mock = HttpServerMock();
      final res = api.YouTubeApi(mock).videos;
      final arg_request = buildVideo();
      final arg_part = buildUnnamed3184();
      final arg_onBehalfOfContentOwner = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.Video.fromJson(json as core.Map<core.String, core.dynamic>);
        checkVideo(obj);

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
          path.substring(pathOffset, pathOffset + 17),
          unittest.equals('youtube/v3/videos'),
        );
        pathOffset += 17;

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
          queryMap['part']!,
          unittest.equals(arg_part),
        );
        unittest.expect(
          queryMap['onBehalfOfContentOwner']!.first,
          unittest.equals(arg_onBehalfOfContentOwner),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildVideo());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.update(arg_request, arg_part,
          onBehalfOfContentOwner: arg_onBehalfOfContentOwner,
          $fields: arg_$fields);
      checkVideo(response as api.Video);
    });
  });

  unittest.group('resource-WatermarksResource', () {
    unittest.test('method--set', () async {
      // TODO: Implement tests for media upload;
      // TODO: Implement tests for media download;

      final mock = HttpServerMock();
      final res = api.YouTubeApi(mock).watermarks;
      final arg_request = buildInvideoBranding();
      final arg_channelId = 'foo';
      final arg_onBehalfOfContentOwner = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.InvideoBranding.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkInvideoBranding(obj);

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
          path.substring(pathOffset, pathOffset + 25),
          unittest.equals('youtube/v3/watermarks/set'),
        );
        pathOffset += 25;

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
          queryMap['channelId']!.first,
          unittest.equals(arg_channelId),
        );
        unittest.expect(
          queryMap['onBehalfOfContentOwner']!.first,
          unittest.equals(arg_onBehalfOfContentOwner),
        );
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
      await res.set(arg_request, arg_channelId,
          onBehalfOfContentOwner: arg_onBehalfOfContentOwner,
          $fields: arg_$fields);
    });

    unittest.test('method--unset', () async {
      final mock = HttpServerMock();
      final res = api.YouTubeApi(mock).watermarks;
      final arg_channelId = 'foo';
      final arg_onBehalfOfContentOwner = 'foo';
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
          path.substring(pathOffset, pathOffset + 27),
          unittest.equals('youtube/v3/watermarks/unset'),
        );
        pathOffset += 27;

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
          queryMap['channelId']!.first,
          unittest.equals(arg_channelId),
        );
        unittest.expect(
          queryMap['onBehalfOfContentOwner']!.first,
          unittest.equals(arg_onBehalfOfContentOwner),
        );
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
      await res.unset(arg_channelId,
          onBehalfOfContentOwner: arg_onBehalfOfContentOwner,
          $fields: arg_$fields);
    });
  });

  unittest.group('resource-YoutubeV3Resource', () {
    unittest.test('method--updateCommentThreads', () async {
      final mock = HttpServerMock();
      final res = api.YouTubeApi(mock).youtube.v3;
      final arg_request = buildCommentThread();
      final arg_part = buildUnnamed3185();
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.CommentThread.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkCommentThread(obj);

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
          path.substring(pathOffset, pathOffset + 25),
          unittest.equals('youtube/v3/commentThreads'),
        );
        pathOffset += 25;

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
          queryMap['part']!,
          unittest.equals(arg_part),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildCommentThread());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.updateCommentThreads(arg_request,
          part: arg_part, $fields: arg_$fields);
      checkCommentThread(response as api.CommentThread);
    });
  });
}
