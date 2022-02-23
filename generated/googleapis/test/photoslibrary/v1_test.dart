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

import 'package:googleapis/photoslibrary/v1.dart' as api;
import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import '../test_shared.dart';

core.int buildCounterAddEnrichmentToAlbumRequest = 0;
api.AddEnrichmentToAlbumRequest buildAddEnrichmentToAlbumRequest() {
  final o = api.AddEnrichmentToAlbumRequest();
  buildCounterAddEnrichmentToAlbumRequest++;
  if (buildCounterAddEnrichmentToAlbumRequest < 3) {
    o.albumPosition = buildAlbumPosition();
    o.newEnrichmentItem = buildNewEnrichmentItem();
  }
  buildCounterAddEnrichmentToAlbumRequest--;
  return o;
}

void checkAddEnrichmentToAlbumRequest(api.AddEnrichmentToAlbumRequest o) {
  buildCounterAddEnrichmentToAlbumRequest++;
  if (buildCounterAddEnrichmentToAlbumRequest < 3) {
    checkAlbumPosition(o.albumPosition!);
    checkNewEnrichmentItem(o.newEnrichmentItem!);
  }
  buildCounterAddEnrichmentToAlbumRequest--;
}

core.int buildCounterAddEnrichmentToAlbumResponse = 0;
api.AddEnrichmentToAlbumResponse buildAddEnrichmentToAlbumResponse() {
  final o = api.AddEnrichmentToAlbumResponse();
  buildCounterAddEnrichmentToAlbumResponse++;
  if (buildCounterAddEnrichmentToAlbumResponse < 3) {
    o.enrichmentItem = buildEnrichmentItem();
  }
  buildCounterAddEnrichmentToAlbumResponse--;
  return o;
}

void checkAddEnrichmentToAlbumResponse(api.AddEnrichmentToAlbumResponse o) {
  buildCounterAddEnrichmentToAlbumResponse++;
  if (buildCounterAddEnrichmentToAlbumResponse < 3) {
    checkEnrichmentItem(o.enrichmentItem!);
  }
  buildCounterAddEnrichmentToAlbumResponse--;
}

core.int buildCounterAlbum = 0;
api.Album buildAlbum() {
  final o = api.Album();
  buildCounterAlbum++;
  if (buildCounterAlbum < 3) {
    o.coverPhotoBaseUrl = 'foo';
    o.coverPhotoMediaItemId = 'foo';
    o.id = 'foo';
    o.isWriteable = true;
    o.mediaItemsCount = 'foo';
    o.productUrl = 'foo';
    o.shareInfo = buildShareInfo();
    o.title = 'foo';
  }
  buildCounterAlbum--;
  return o;
}

void checkAlbum(api.Album o) {
  buildCounterAlbum++;
  if (buildCounterAlbum < 3) {
    unittest.expect(
      o.coverPhotoBaseUrl!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.coverPhotoMediaItemId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.id!,
      unittest.equals('foo'),
    );
    unittest.expect(o.isWriteable!, unittest.isTrue);
    unittest.expect(
      o.mediaItemsCount!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.productUrl!,
      unittest.equals('foo'),
    );
    checkShareInfo(o.shareInfo!);
    unittest.expect(
      o.title!,
      unittest.equals('foo'),
    );
  }
  buildCounterAlbum--;
}

core.int buildCounterAlbumPosition = 0;
api.AlbumPosition buildAlbumPosition() {
  final o = api.AlbumPosition();
  buildCounterAlbumPosition++;
  if (buildCounterAlbumPosition < 3) {
    o.position = 'foo';
    o.relativeEnrichmentItemId = 'foo';
    o.relativeMediaItemId = 'foo';
  }
  buildCounterAlbumPosition--;
  return o;
}

void checkAlbumPosition(api.AlbumPosition o) {
  buildCounterAlbumPosition++;
  if (buildCounterAlbumPosition < 3) {
    unittest.expect(
      o.position!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.relativeEnrichmentItemId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.relativeMediaItemId!,
      unittest.equals('foo'),
    );
  }
  buildCounterAlbumPosition--;
}

core.List<core.String> buildUnnamed0() => [
      'foo',
      'foo',
    ];

void checkUnnamed0(core.List<core.String> o) {
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

core.int buildCounterBatchAddMediaItemsToAlbumRequest = 0;
api.BatchAddMediaItemsToAlbumRequest buildBatchAddMediaItemsToAlbumRequest() {
  final o = api.BatchAddMediaItemsToAlbumRequest();
  buildCounterBatchAddMediaItemsToAlbumRequest++;
  if (buildCounterBatchAddMediaItemsToAlbumRequest < 3) {
    o.mediaItemIds = buildUnnamed0();
  }
  buildCounterBatchAddMediaItemsToAlbumRequest--;
  return o;
}

void checkBatchAddMediaItemsToAlbumRequest(
    api.BatchAddMediaItemsToAlbumRequest o) {
  buildCounterBatchAddMediaItemsToAlbumRequest++;
  if (buildCounterBatchAddMediaItemsToAlbumRequest < 3) {
    checkUnnamed0(o.mediaItemIds!);
  }
  buildCounterBatchAddMediaItemsToAlbumRequest--;
}

core.int buildCounterBatchAddMediaItemsToAlbumResponse = 0;
api.BatchAddMediaItemsToAlbumResponse buildBatchAddMediaItemsToAlbumResponse() {
  final o = api.BatchAddMediaItemsToAlbumResponse();
  buildCounterBatchAddMediaItemsToAlbumResponse++;
  if (buildCounterBatchAddMediaItemsToAlbumResponse < 3) {}
  buildCounterBatchAddMediaItemsToAlbumResponse--;
  return o;
}

void checkBatchAddMediaItemsToAlbumResponse(
    api.BatchAddMediaItemsToAlbumResponse o) {
  buildCounterBatchAddMediaItemsToAlbumResponse++;
  if (buildCounterBatchAddMediaItemsToAlbumResponse < 3) {}
  buildCounterBatchAddMediaItemsToAlbumResponse--;
}

core.List<api.NewMediaItem> buildUnnamed1() => [
      buildNewMediaItem(),
      buildNewMediaItem(),
    ];

void checkUnnamed1(core.List<api.NewMediaItem> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkNewMediaItem(o[0]);
  checkNewMediaItem(o[1]);
}

core.int buildCounterBatchCreateMediaItemsRequest = 0;
api.BatchCreateMediaItemsRequest buildBatchCreateMediaItemsRequest() {
  final o = api.BatchCreateMediaItemsRequest();
  buildCounterBatchCreateMediaItemsRequest++;
  if (buildCounterBatchCreateMediaItemsRequest < 3) {
    o.albumId = 'foo';
    o.albumPosition = buildAlbumPosition();
    o.newMediaItems = buildUnnamed1();
  }
  buildCounterBatchCreateMediaItemsRequest--;
  return o;
}

void checkBatchCreateMediaItemsRequest(api.BatchCreateMediaItemsRequest o) {
  buildCounterBatchCreateMediaItemsRequest++;
  if (buildCounterBatchCreateMediaItemsRequest < 3) {
    unittest.expect(
      o.albumId!,
      unittest.equals('foo'),
    );
    checkAlbumPosition(o.albumPosition!);
    checkUnnamed1(o.newMediaItems!);
  }
  buildCounterBatchCreateMediaItemsRequest--;
}

core.List<api.NewMediaItemResult> buildUnnamed2() => [
      buildNewMediaItemResult(),
      buildNewMediaItemResult(),
    ];

void checkUnnamed2(core.List<api.NewMediaItemResult> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkNewMediaItemResult(o[0]);
  checkNewMediaItemResult(o[1]);
}

core.int buildCounterBatchCreateMediaItemsResponse = 0;
api.BatchCreateMediaItemsResponse buildBatchCreateMediaItemsResponse() {
  final o = api.BatchCreateMediaItemsResponse();
  buildCounterBatchCreateMediaItemsResponse++;
  if (buildCounterBatchCreateMediaItemsResponse < 3) {
    o.newMediaItemResults = buildUnnamed2();
  }
  buildCounterBatchCreateMediaItemsResponse--;
  return o;
}

void checkBatchCreateMediaItemsResponse(api.BatchCreateMediaItemsResponse o) {
  buildCounterBatchCreateMediaItemsResponse++;
  if (buildCounterBatchCreateMediaItemsResponse < 3) {
    checkUnnamed2(o.newMediaItemResults!);
  }
  buildCounterBatchCreateMediaItemsResponse--;
}

core.List<api.MediaItemResult> buildUnnamed3() => [
      buildMediaItemResult(),
      buildMediaItemResult(),
    ];

void checkUnnamed3(core.List<api.MediaItemResult> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMediaItemResult(o[0]);
  checkMediaItemResult(o[1]);
}

core.int buildCounterBatchGetMediaItemsResponse = 0;
api.BatchGetMediaItemsResponse buildBatchGetMediaItemsResponse() {
  final o = api.BatchGetMediaItemsResponse();
  buildCounterBatchGetMediaItemsResponse++;
  if (buildCounterBatchGetMediaItemsResponse < 3) {
    o.mediaItemResults = buildUnnamed3();
  }
  buildCounterBatchGetMediaItemsResponse--;
  return o;
}

void checkBatchGetMediaItemsResponse(api.BatchGetMediaItemsResponse o) {
  buildCounterBatchGetMediaItemsResponse++;
  if (buildCounterBatchGetMediaItemsResponse < 3) {
    checkUnnamed3(o.mediaItemResults!);
  }
  buildCounterBatchGetMediaItemsResponse--;
}

core.List<core.String> buildUnnamed4() => [
      'foo',
      'foo',
    ];

void checkUnnamed4(core.List<core.String> o) {
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

core.int buildCounterBatchRemoveMediaItemsFromAlbumRequest = 0;
api.BatchRemoveMediaItemsFromAlbumRequest
    buildBatchRemoveMediaItemsFromAlbumRequest() {
  final o = api.BatchRemoveMediaItemsFromAlbumRequest();
  buildCounterBatchRemoveMediaItemsFromAlbumRequest++;
  if (buildCounterBatchRemoveMediaItemsFromAlbumRequest < 3) {
    o.mediaItemIds = buildUnnamed4();
  }
  buildCounterBatchRemoveMediaItemsFromAlbumRequest--;
  return o;
}

void checkBatchRemoveMediaItemsFromAlbumRequest(
    api.BatchRemoveMediaItemsFromAlbumRequest o) {
  buildCounterBatchRemoveMediaItemsFromAlbumRequest++;
  if (buildCounterBatchRemoveMediaItemsFromAlbumRequest < 3) {
    checkUnnamed4(o.mediaItemIds!);
  }
  buildCounterBatchRemoveMediaItemsFromAlbumRequest--;
}

core.int buildCounterBatchRemoveMediaItemsFromAlbumResponse = 0;
api.BatchRemoveMediaItemsFromAlbumResponse
    buildBatchRemoveMediaItemsFromAlbumResponse() {
  final o = api.BatchRemoveMediaItemsFromAlbumResponse();
  buildCounterBatchRemoveMediaItemsFromAlbumResponse++;
  if (buildCounterBatchRemoveMediaItemsFromAlbumResponse < 3) {}
  buildCounterBatchRemoveMediaItemsFromAlbumResponse--;
  return o;
}

void checkBatchRemoveMediaItemsFromAlbumResponse(
    api.BatchRemoveMediaItemsFromAlbumResponse o) {
  buildCounterBatchRemoveMediaItemsFromAlbumResponse++;
  if (buildCounterBatchRemoveMediaItemsFromAlbumResponse < 3) {}
  buildCounterBatchRemoveMediaItemsFromAlbumResponse--;
}

core.List<core.String> buildUnnamed5() => [
      'foo',
      'foo',
    ];

void checkUnnamed5(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed6() => [
      'foo',
      'foo',
    ];

void checkUnnamed6(core.List<core.String> o) {
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

core.int buildCounterContentFilter = 0;
api.ContentFilter buildContentFilter() {
  final o = api.ContentFilter();
  buildCounterContentFilter++;
  if (buildCounterContentFilter < 3) {
    o.excludedContentCategories = buildUnnamed5();
    o.includedContentCategories = buildUnnamed6();
  }
  buildCounterContentFilter--;
  return o;
}

void checkContentFilter(api.ContentFilter o) {
  buildCounterContentFilter++;
  if (buildCounterContentFilter < 3) {
    checkUnnamed5(o.excludedContentCategories!);
    checkUnnamed6(o.includedContentCategories!);
  }
  buildCounterContentFilter--;
}

core.int buildCounterContributorInfo = 0;
api.ContributorInfo buildContributorInfo() {
  final o = api.ContributorInfo();
  buildCounterContributorInfo++;
  if (buildCounterContributorInfo < 3) {
    o.displayName = 'foo';
    o.profilePictureBaseUrl = 'foo';
  }
  buildCounterContributorInfo--;
  return o;
}

void checkContributorInfo(api.ContributorInfo o) {
  buildCounterContributorInfo++;
  if (buildCounterContributorInfo < 3) {
    unittest.expect(
      o.displayName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.profilePictureBaseUrl!,
      unittest.equals('foo'),
    );
  }
  buildCounterContributorInfo--;
}

core.int buildCounterCreateAlbumRequest = 0;
api.CreateAlbumRequest buildCreateAlbumRequest() {
  final o = api.CreateAlbumRequest();
  buildCounterCreateAlbumRequest++;
  if (buildCounterCreateAlbumRequest < 3) {
    o.album = buildAlbum();
  }
  buildCounterCreateAlbumRequest--;
  return o;
}

void checkCreateAlbumRequest(api.CreateAlbumRequest o) {
  buildCounterCreateAlbumRequest++;
  if (buildCounterCreateAlbumRequest < 3) {
    checkAlbum(o.album!);
  }
  buildCounterCreateAlbumRequest--;
}

core.int buildCounterDate = 0;
api.Date buildDate() {
  final o = api.Date();
  buildCounterDate++;
  if (buildCounterDate < 3) {
    o.day = 42;
    o.month = 42;
    o.year = 42;
  }
  buildCounterDate--;
  return o;
}

void checkDate(api.Date o) {
  buildCounterDate++;
  if (buildCounterDate < 3) {
    unittest.expect(
      o.day!,
      unittest.equals(42),
    );
    unittest.expect(
      o.month!,
      unittest.equals(42),
    );
    unittest.expect(
      o.year!,
      unittest.equals(42),
    );
  }
  buildCounterDate--;
}

core.List<api.Date> buildUnnamed7() => [
      buildDate(),
      buildDate(),
    ];

void checkUnnamed7(core.List<api.Date> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDate(o[0]);
  checkDate(o[1]);
}

core.List<api.DateRange> buildUnnamed8() => [
      buildDateRange(),
      buildDateRange(),
    ];

void checkUnnamed8(core.List<api.DateRange> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDateRange(o[0]);
  checkDateRange(o[1]);
}

core.int buildCounterDateFilter = 0;
api.DateFilter buildDateFilter() {
  final o = api.DateFilter();
  buildCounterDateFilter++;
  if (buildCounterDateFilter < 3) {
    o.dates = buildUnnamed7();
    o.ranges = buildUnnamed8();
  }
  buildCounterDateFilter--;
  return o;
}

void checkDateFilter(api.DateFilter o) {
  buildCounterDateFilter++;
  if (buildCounterDateFilter < 3) {
    checkUnnamed7(o.dates!);
    checkUnnamed8(o.ranges!);
  }
  buildCounterDateFilter--;
}

core.int buildCounterDateRange = 0;
api.DateRange buildDateRange() {
  final o = api.DateRange();
  buildCounterDateRange++;
  if (buildCounterDateRange < 3) {
    o.endDate = buildDate();
    o.startDate = buildDate();
  }
  buildCounterDateRange--;
  return o;
}

void checkDateRange(api.DateRange o) {
  buildCounterDateRange++;
  if (buildCounterDateRange < 3) {
    checkDate(o.endDate!);
    checkDate(o.startDate!);
  }
  buildCounterDateRange--;
}

core.int buildCounterEnrichmentItem = 0;
api.EnrichmentItem buildEnrichmentItem() {
  final o = api.EnrichmentItem();
  buildCounterEnrichmentItem++;
  if (buildCounterEnrichmentItem < 3) {
    o.id = 'foo';
  }
  buildCounterEnrichmentItem--;
  return o;
}

void checkEnrichmentItem(api.EnrichmentItem o) {
  buildCounterEnrichmentItem++;
  if (buildCounterEnrichmentItem < 3) {
    unittest.expect(
      o.id!,
      unittest.equals('foo'),
    );
  }
  buildCounterEnrichmentItem--;
}

core.List<core.String> buildUnnamed9() => [
      'foo',
      'foo',
    ];

void checkUnnamed9(core.List<core.String> o) {
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

core.int buildCounterFeatureFilter = 0;
api.FeatureFilter buildFeatureFilter() {
  final o = api.FeatureFilter();
  buildCounterFeatureFilter++;
  if (buildCounterFeatureFilter < 3) {
    o.includedFeatures = buildUnnamed9();
  }
  buildCounterFeatureFilter--;
  return o;
}

void checkFeatureFilter(api.FeatureFilter o) {
  buildCounterFeatureFilter++;
  if (buildCounterFeatureFilter < 3) {
    checkUnnamed9(o.includedFeatures!);
  }
  buildCounterFeatureFilter--;
}

core.int buildCounterFilters = 0;
api.Filters buildFilters() {
  final o = api.Filters();
  buildCounterFilters++;
  if (buildCounterFilters < 3) {
    o.contentFilter = buildContentFilter();
    o.dateFilter = buildDateFilter();
    o.excludeNonAppCreatedData = true;
    o.featureFilter = buildFeatureFilter();
    o.includeArchivedMedia = true;
    o.mediaTypeFilter = buildMediaTypeFilter();
  }
  buildCounterFilters--;
  return o;
}

void checkFilters(api.Filters o) {
  buildCounterFilters++;
  if (buildCounterFilters < 3) {
    checkContentFilter(o.contentFilter!);
    checkDateFilter(o.dateFilter!);
    unittest.expect(o.excludeNonAppCreatedData!, unittest.isTrue);
    checkFeatureFilter(o.featureFilter!);
    unittest.expect(o.includeArchivedMedia!, unittest.isTrue);
    checkMediaTypeFilter(o.mediaTypeFilter!);
  }
  buildCounterFilters--;
}

core.int buildCounterJoinSharedAlbumRequest = 0;
api.JoinSharedAlbumRequest buildJoinSharedAlbumRequest() {
  final o = api.JoinSharedAlbumRequest();
  buildCounterJoinSharedAlbumRequest++;
  if (buildCounterJoinSharedAlbumRequest < 3) {
    o.shareToken = 'foo';
  }
  buildCounterJoinSharedAlbumRequest--;
  return o;
}

void checkJoinSharedAlbumRequest(api.JoinSharedAlbumRequest o) {
  buildCounterJoinSharedAlbumRequest++;
  if (buildCounterJoinSharedAlbumRequest < 3) {
    unittest.expect(
      o.shareToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterJoinSharedAlbumRequest--;
}

core.int buildCounterJoinSharedAlbumResponse = 0;
api.JoinSharedAlbumResponse buildJoinSharedAlbumResponse() {
  final o = api.JoinSharedAlbumResponse();
  buildCounterJoinSharedAlbumResponse++;
  if (buildCounterJoinSharedAlbumResponse < 3) {
    o.album = buildAlbum();
  }
  buildCounterJoinSharedAlbumResponse--;
  return o;
}

void checkJoinSharedAlbumResponse(api.JoinSharedAlbumResponse o) {
  buildCounterJoinSharedAlbumResponse++;
  if (buildCounterJoinSharedAlbumResponse < 3) {
    checkAlbum(o.album!);
  }
  buildCounterJoinSharedAlbumResponse--;
}

core.int buildCounterLatLng = 0;
api.LatLng buildLatLng() {
  final o = api.LatLng();
  buildCounterLatLng++;
  if (buildCounterLatLng < 3) {
    o.latitude = 42.0;
    o.longitude = 42.0;
  }
  buildCounterLatLng--;
  return o;
}

void checkLatLng(api.LatLng o) {
  buildCounterLatLng++;
  if (buildCounterLatLng < 3) {
    unittest.expect(
      o.latitude!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.longitude!,
      unittest.equals(42.0),
    );
  }
  buildCounterLatLng--;
}

core.int buildCounterLeaveSharedAlbumRequest = 0;
api.LeaveSharedAlbumRequest buildLeaveSharedAlbumRequest() {
  final o = api.LeaveSharedAlbumRequest();
  buildCounterLeaveSharedAlbumRequest++;
  if (buildCounterLeaveSharedAlbumRequest < 3) {
    o.shareToken = 'foo';
  }
  buildCounterLeaveSharedAlbumRequest--;
  return o;
}

void checkLeaveSharedAlbumRequest(api.LeaveSharedAlbumRequest o) {
  buildCounterLeaveSharedAlbumRequest++;
  if (buildCounterLeaveSharedAlbumRequest < 3) {
    unittest.expect(
      o.shareToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterLeaveSharedAlbumRequest--;
}

core.int buildCounterLeaveSharedAlbumResponse = 0;
api.LeaveSharedAlbumResponse buildLeaveSharedAlbumResponse() {
  final o = api.LeaveSharedAlbumResponse();
  buildCounterLeaveSharedAlbumResponse++;
  if (buildCounterLeaveSharedAlbumResponse < 3) {}
  buildCounterLeaveSharedAlbumResponse--;
  return o;
}

void checkLeaveSharedAlbumResponse(api.LeaveSharedAlbumResponse o) {
  buildCounterLeaveSharedAlbumResponse++;
  if (buildCounterLeaveSharedAlbumResponse < 3) {}
  buildCounterLeaveSharedAlbumResponse--;
}

core.List<api.Album> buildUnnamed10() => [
      buildAlbum(),
      buildAlbum(),
    ];

void checkUnnamed10(core.List<api.Album> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAlbum(o[0]);
  checkAlbum(o[1]);
}

core.int buildCounterListAlbumsResponse = 0;
api.ListAlbumsResponse buildListAlbumsResponse() {
  final o = api.ListAlbumsResponse();
  buildCounterListAlbumsResponse++;
  if (buildCounterListAlbumsResponse < 3) {
    o.albums = buildUnnamed10();
    o.nextPageToken = 'foo';
  }
  buildCounterListAlbumsResponse--;
  return o;
}

void checkListAlbumsResponse(api.ListAlbumsResponse o) {
  buildCounterListAlbumsResponse++;
  if (buildCounterListAlbumsResponse < 3) {
    checkUnnamed10(o.albums!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterListAlbumsResponse--;
}

core.List<api.MediaItem> buildUnnamed11() => [
      buildMediaItem(),
      buildMediaItem(),
    ];

void checkUnnamed11(core.List<api.MediaItem> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMediaItem(o[0]);
  checkMediaItem(o[1]);
}

core.int buildCounterListMediaItemsResponse = 0;
api.ListMediaItemsResponse buildListMediaItemsResponse() {
  final o = api.ListMediaItemsResponse();
  buildCounterListMediaItemsResponse++;
  if (buildCounterListMediaItemsResponse < 3) {
    o.mediaItems = buildUnnamed11();
    o.nextPageToken = 'foo';
  }
  buildCounterListMediaItemsResponse--;
  return o;
}

void checkListMediaItemsResponse(api.ListMediaItemsResponse o) {
  buildCounterListMediaItemsResponse++;
  if (buildCounterListMediaItemsResponse < 3) {
    checkUnnamed11(o.mediaItems!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterListMediaItemsResponse--;
}

core.List<api.Album> buildUnnamed12() => [
      buildAlbum(),
      buildAlbum(),
    ];

void checkUnnamed12(core.List<api.Album> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAlbum(o[0]);
  checkAlbum(o[1]);
}

core.int buildCounterListSharedAlbumsResponse = 0;
api.ListSharedAlbumsResponse buildListSharedAlbumsResponse() {
  final o = api.ListSharedAlbumsResponse();
  buildCounterListSharedAlbumsResponse++;
  if (buildCounterListSharedAlbumsResponse < 3) {
    o.nextPageToken = 'foo';
    o.sharedAlbums = buildUnnamed12();
  }
  buildCounterListSharedAlbumsResponse--;
  return o;
}

void checkListSharedAlbumsResponse(api.ListSharedAlbumsResponse o) {
  buildCounterListSharedAlbumsResponse++;
  if (buildCounterListSharedAlbumsResponse < 3) {
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed12(o.sharedAlbums!);
  }
  buildCounterListSharedAlbumsResponse--;
}

core.int buildCounterLocation = 0;
api.Location buildLocation() {
  final o = api.Location();
  buildCounterLocation++;
  if (buildCounterLocation < 3) {
    o.latlng = buildLatLng();
    o.locationName = 'foo';
  }
  buildCounterLocation--;
  return o;
}

void checkLocation(api.Location o) {
  buildCounterLocation++;
  if (buildCounterLocation < 3) {
    checkLatLng(o.latlng!);
    unittest.expect(
      o.locationName!,
      unittest.equals('foo'),
    );
  }
  buildCounterLocation--;
}

core.int buildCounterLocationEnrichment = 0;
api.LocationEnrichment buildLocationEnrichment() {
  final o = api.LocationEnrichment();
  buildCounterLocationEnrichment++;
  if (buildCounterLocationEnrichment < 3) {
    o.location = buildLocation();
  }
  buildCounterLocationEnrichment--;
  return o;
}

void checkLocationEnrichment(api.LocationEnrichment o) {
  buildCounterLocationEnrichment++;
  if (buildCounterLocationEnrichment < 3) {
    checkLocation(o.location!);
  }
  buildCounterLocationEnrichment--;
}

core.int buildCounterMapEnrichment = 0;
api.MapEnrichment buildMapEnrichment() {
  final o = api.MapEnrichment();
  buildCounterMapEnrichment++;
  if (buildCounterMapEnrichment < 3) {
    o.destination = buildLocation();
    o.origin = buildLocation();
  }
  buildCounterMapEnrichment--;
  return o;
}

void checkMapEnrichment(api.MapEnrichment o) {
  buildCounterMapEnrichment++;
  if (buildCounterMapEnrichment < 3) {
    checkLocation(o.destination!);
    checkLocation(o.origin!);
  }
  buildCounterMapEnrichment--;
}

core.int buildCounterMediaItem = 0;
api.MediaItem buildMediaItem() {
  final o = api.MediaItem();
  buildCounterMediaItem++;
  if (buildCounterMediaItem < 3) {
    o.baseUrl = 'foo';
    o.contributorInfo = buildContributorInfo();
    o.description = 'foo';
    o.filename = 'foo';
    o.id = 'foo';
    o.mediaMetadata = buildMediaMetadata();
    o.mimeType = 'foo';
    o.productUrl = 'foo';
  }
  buildCounterMediaItem--;
  return o;
}

void checkMediaItem(api.MediaItem o) {
  buildCounterMediaItem++;
  if (buildCounterMediaItem < 3) {
    unittest.expect(
      o.baseUrl!,
      unittest.equals('foo'),
    );
    checkContributorInfo(o.contributorInfo!);
    unittest.expect(
      o.description!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.filename!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.id!,
      unittest.equals('foo'),
    );
    checkMediaMetadata(o.mediaMetadata!);
    unittest.expect(
      o.mimeType!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.productUrl!,
      unittest.equals('foo'),
    );
  }
  buildCounterMediaItem--;
}

core.int buildCounterMediaItemResult = 0;
api.MediaItemResult buildMediaItemResult() {
  final o = api.MediaItemResult();
  buildCounterMediaItemResult++;
  if (buildCounterMediaItemResult < 3) {
    o.mediaItem = buildMediaItem();
    o.status = buildStatus();
  }
  buildCounterMediaItemResult--;
  return o;
}

void checkMediaItemResult(api.MediaItemResult o) {
  buildCounterMediaItemResult++;
  if (buildCounterMediaItemResult < 3) {
    checkMediaItem(o.mediaItem!);
    checkStatus(o.status!);
  }
  buildCounterMediaItemResult--;
}

core.int buildCounterMediaMetadata = 0;
api.MediaMetadata buildMediaMetadata() {
  final o = api.MediaMetadata();
  buildCounterMediaMetadata++;
  if (buildCounterMediaMetadata < 3) {
    o.creationTime = 'foo';
    o.height = 'foo';
    o.photo = buildPhoto();
    o.video = buildVideo();
    o.width = 'foo';
  }
  buildCounterMediaMetadata--;
  return o;
}

void checkMediaMetadata(api.MediaMetadata o) {
  buildCounterMediaMetadata++;
  if (buildCounterMediaMetadata < 3) {
    unittest.expect(
      o.creationTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.height!,
      unittest.equals('foo'),
    );
    checkPhoto(o.photo!);
    checkVideo(o.video!);
    unittest.expect(
      o.width!,
      unittest.equals('foo'),
    );
  }
  buildCounterMediaMetadata--;
}

core.List<core.String> buildUnnamed13() => [
      'foo',
      'foo',
    ];

void checkUnnamed13(core.List<core.String> o) {
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

core.int buildCounterMediaTypeFilter = 0;
api.MediaTypeFilter buildMediaTypeFilter() {
  final o = api.MediaTypeFilter();
  buildCounterMediaTypeFilter++;
  if (buildCounterMediaTypeFilter < 3) {
    o.mediaTypes = buildUnnamed13();
  }
  buildCounterMediaTypeFilter--;
  return o;
}

void checkMediaTypeFilter(api.MediaTypeFilter o) {
  buildCounterMediaTypeFilter++;
  if (buildCounterMediaTypeFilter < 3) {
    checkUnnamed13(o.mediaTypes!);
  }
  buildCounterMediaTypeFilter--;
}

core.int buildCounterNewEnrichmentItem = 0;
api.NewEnrichmentItem buildNewEnrichmentItem() {
  final o = api.NewEnrichmentItem();
  buildCounterNewEnrichmentItem++;
  if (buildCounterNewEnrichmentItem < 3) {
    o.locationEnrichment = buildLocationEnrichment();
    o.mapEnrichment = buildMapEnrichment();
    o.textEnrichment = buildTextEnrichment();
  }
  buildCounterNewEnrichmentItem--;
  return o;
}

void checkNewEnrichmentItem(api.NewEnrichmentItem o) {
  buildCounterNewEnrichmentItem++;
  if (buildCounterNewEnrichmentItem < 3) {
    checkLocationEnrichment(o.locationEnrichment!);
    checkMapEnrichment(o.mapEnrichment!);
    checkTextEnrichment(o.textEnrichment!);
  }
  buildCounterNewEnrichmentItem--;
}

core.int buildCounterNewMediaItem = 0;
api.NewMediaItem buildNewMediaItem() {
  final o = api.NewMediaItem();
  buildCounterNewMediaItem++;
  if (buildCounterNewMediaItem < 3) {
    o.description = 'foo';
    o.simpleMediaItem = buildSimpleMediaItem();
  }
  buildCounterNewMediaItem--;
  return o;
}

void checkNewMediaItem(api.NewMediaItem o) {
  buildCounterNewMediaItem++;
  if (buildCounterNewMediaItem < 3) {
    unittest.expect(
      o.description!,
      unittest.equals('foo'),
    );
    checkSimpleMediaItem(o.simpleMediaItem!);
  }
  buildCounterNewMediaItem--;
}

core.int buildCounterNewMediaItemResult = 0;
api.NewMediaItemResult buildNewMediaItemResult() {
  final o = api.NewMediaItemResult();
  buildCounterNewMediaItemResult++;
  if (buildCounterNewMediaItemResult < 3) {
    o.mediaItem = buildMediaItem();
    o.status = buildStatus();
    o.uploadToken = 'foo';
  }
  buildCounterNewMediaItemResult--;
  return o;
}

void checkNewMediaItemResult(api.NewMediaItemResult o) {
  buildCounterNewMediaItemResult++;
  if (buildCounterNewMediaItemResult < 3) {
    checkMediaItem(o.mediaItem!);
    checkStatus(o.status!);
    unittest.expect(
      o.uploadToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterNewMediaItemResult--;
}

core.int buildCounterPhoto = 0;
api.Photo buildPhoto() {
  final o = api.Photo();
  buildCounterPhoto++;
  if (buildCounterPhoto < 3) {
    o.apertureFNumber = 42.0;
    o.cameraMake = 'foo';
    o.cameraModel = 'foo';
    o.exposureTime = 'foo';
    o.focalLength = 42.0;
    o.isoEquivalent = 42;
  }
  buildCounterPhoto--;
  return o;
}

void checkPhoto(api.Photo o) {
  buildCounterPhoto++;
  if (buildCounterPhoto < 3) {
    unittest.expect(
      o.apertureFNumber!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.cameraMake!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.cameraModel!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.exposureTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.focalLength!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.isoEquivalent!,
      unittest.equals(42),
    );
  }
  buildCounterPhoto--;
}

core.int buildCounterSearchMediaItemsRequest = 0;
api.SearchMediaItemsRequest buildSearchMediaItemsRequest() {
  final o = api.SearchMediaItemsRequest();
  buildCounterSearchMediaItemsRequest++;
  if (buildCounterSearchMediaItemsRequest < 3) {
    o.albumId = 'foo';
    o.filters = buildFilters();
    o.orderBy = 'foo';
    o.pageSize = 42;
    o.pageToken = 'foo';
  }
  buildCounterSearchMediaItemsRequest--;
  return o;
}

void checkSearchMediaItemsRequest(api.SearchMediaItemsRequest o) {
  buildCounterSearchMediaItemsRequest++;
  if (buildCounterSearchMediaItemsRequest < 3) {
    unittest.expect(
      o.albumId!,
      unittest.equals('foo'),
    );
    checkFilters(o.filters!);
    unittest.expect(
      o.orderBy!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.pageSize!,
      unittest.equals(42),
    );
    unittest.expect(
      o.pageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterSearchMediaItemsRequest--;
}

core.List<api.MediaItem> buildUnnamed14() => [
      buildMediaItem(),
      buildMediaItem(),
    ];

void checkUnnamed14(core.List<api.MediaItem> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMediaItem(o[0]);
  checkMediaItem(o[1]);
}

core.int buildCounterSearchMediaItemsResponse = 0;
api.SearchMediaItemsResponse buildSearchMediaItemsResponse() {
  final o = api.SearchMediaItemsResponse();
  buildCounterSearchMediaItemsResponse++;
  if (buildCounterSearchMediaItemsResponse < 3) {
    o.mediaItems = buildUnnamed14();
    o.nextPageToken = 'foo';
  }
  buildCounterSearchMediaItemsResponse--;
  return o;
}

void checkSearchMediaItemsResponse(api.SearchMediaItemsResponse o) {
  buildCounterSearchMediaItemsResponse++;
  if (buildCounterSearchMediaItemsResponse < 3) {
    checkUnnamed14(o.mediaItems!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterSearchMediaItemsResponse--;
}

core.int buildCounterShareAlbumRequest = 0;
api.ShareAlbumRequest buildShareAlbumRequest() {
  final o = api.ShareAlbumRequest();
  buildCounterShareAlbumRequest++;
  if (buildCounterShareAlbumRequest < 3) {
    o.sharedAlbumOptions = buildSharedAlbumOptions();
  }
  buildCounterShareAlbumRequest--;
  return o;
}

void checkShareAlbumRequest(api.ShareAlbumRequest o) {
  buildCounterShareAlbumRequest++;
  if (buildCounterShareAlbumRequest < 3) {
    checkSharedAlbumOptions(o.sharedAlbumOptions!);
  }
  buildCounterShareAlbumRequest--;
}

core.int buildCounterShareAlbumResponse = 0;
api.ShareAlbumResponse buildShareAlbumResponse() {
  final o = api.ShareAlbumResponse();
  buildCounterShareAlbumResponse++;
  if (buildCounterShareAlbumResponse < 3) {
    o.shareInfo = buildShareInfo();
  }
  buildCounterShareAlbumResponse--;
  return o;
}

void checkShareAlbumResponse(api.ShareAlbumResponse o) {
  buildCounterShareAlbumResponse++;
  if (buildCounterShareAlbumResponse < 3) {
    checkShareInfo(o.shareInfo!);
  }
  buildCounterShareAlbumResponse--;
}

core.int buildCounterShareInfo = 0;
api.ShareInfo buildShareInfo() {
  final o = api.ShareInfo();
  buildCounterShareInfo++;
  if (buildCounterShareInfo < 3) {
    o.isJoinable = true;
    o.isJoined = true;
    o.isOwned = true;
    o.shareToken = 'foo';
    o.shareableUrl = 'foo';
    o.sharedAlbumOptions = buildSharedAlbumOptions();
  }
  buildCounterShareInfo--;
  return o;
}

void checkShareInfo(api.ShareInfo o) {
  buildCounterShareInfo++;
  if (buildCounterShareInfo < 3) {
    unittest.expect(o.isJoinable!, unittest.isTrue);
    unittest.expect(o.isJoined!, unittest.isTrue);
    unittest.expect(o.isOwned!, unittest.isTrue);
    unittest.expect(
      o.shareToken!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.shareableUrl!,
      unittest.equals('foo'),
    );
    checkSharedAlbumOptions(o.sharedAlbumOptions!);
  }
  buildCounterShareInfo--;
}

core.int buildCounterSharedAlbumOptions = 0;
api.SharedAlbumOptions buildSharedAlbumOptions() {
  final o = api.SharedAlbumOptions();
  buildCounterSharedAlbumOptions++;
  if (buildCounterSharedAlbumOptions < 3) {
    o.isCollaborative = true;
    o.isCommentable = true;
  }
  buildCounterSharedAlbumOptions--;
  return o;
}

void checkSharedAlbumOptions(api.SharedAlbumOptions o) {
  buildCounterSharedAlbumOptions++;
  if (buildCounterSharedAlbumOptions < 3) {
    unittest.expect(o.isCollaborative!, unittest.isTrue);
    unittest.expect(o.isCommentable!, unittest.isTrue);
  }
  buildCounterSharedAlbumOptions--;
}

core.int buildCounterSimpleMediaItem = 0;
api.SimpleMediaItem buildSimpleMediaItem() {
  final o = api.SimpleMediaItem();
  buildCounterSimpleMediaItem++;
  if (buildCounterSimpleMediaItem < 3) {
    o.fileName = 'foo';
    o.uploadToken = 'foo';
  }
  buildCounterSimpleMediaItem--;
  return o;
}

void checkSimpleMediaItem(api.SimpleMediaItem o) {
  buildCounterSimpleMediaItem++;
  if (buildCounterSimpleMediaItem < 3) {
    unittest.expect(
      o.fileName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.uploadToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterSimpleMediaItem--;
}

core.Map<core.String, core.Object?> buildUnnamed15() => {
      'x': {
        'list': [1, 2, 3],
        'bool': true,
        'string': 'foo'
      },
      'y': {
        'list': [1, 2, 3],
        'bool': true,
        'string': 'foo'
      },
    };

void checkUnnamed15(core.Map<core.String, core.Object?> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted1 = (o['x']!) as core.Map;
  unittest.expect(casted1, unittest.hasLength(3));
  unittest.expect(
    casted1['list'],
    unittest.equals([1, 2, 3]),
  );
  unittest.expect(
    casted1['bool'],
    unittest.equals(true),
  );
  unittest.expect(
    casted1['string'],
    unittest.equals('foo'),
  );
  var casted2 = (o['y']!) as core.Map;
  unittest.expect(casted2, unittest.hasLength(3));
  unittest.expect(
    casted2['list'],
    unittest.equals([1, 2, 3]),
  );
  unittest.expect(
    casted2['bool'],
    unittest.equals(true),
  );
  unittest.expect(
    casted2['string'],
    unittest.equals('foo'),
  );
}

core.List<core.Map<core.String, core.Object?>> buildUnnamed16() => [
      buildUnnamed15(),
      buildUnnamed15(),
    ];

void checkUnnamed16(core.List<core.Map<core.String, core.Object?>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed15(o[0]);
  checkUnnamed15(o[1]);
}

core.int buildCounterStatus = 0;
api.Status buildStatus() {
  final o = api.Status();
  buildCounterStatus++;
  if (buildCounterStatus < 3) {
    o.code = 42;
    o.details = buildUnnamed16();
    o.message = 'foo';
  }
  buildCounterStatus--;
  return o;
}

void checkStatus(api.Status o) {
  buildCounterStatus++;
  if (buildCounterStatus < 3) {
    unittest.expect(
      o.code!,
      unittest.equals(42),
    );
    checkUnnamed16(o.details!);
    unittest.expect(
      o.message!,
      unittest.equals('foo'),
    );
  }
  buildCounterStatus--;
}

core.int buildCounterTextEnrichment = 0;
api.TextEnrichment buildTextEnrichment() {
  final o = api.TextEnrichment();
  buildCounterTextEnrichment++;
  if (buildCounterTextEnrichment < 3) {
    o.text = 'foo';
  }
  buildCounterTextEnrichment--;
  return o;
}

void checkTextEnrichment(api.TextEnrichment o) {
  buildCounterTextEnrichment++;
  if (buildCounterTextEnrichment < 3) {
    unittest.expect(
      o.text!,
      unittest.equals('foo'),
    );
  }
  buildCounterTextEnrichment--;
}

core.int buildCounterUnshareAlbumRequest = 0;
api.UnshareAlbumRequest buildUnshareAlbumRequest() {
  final o = api.UnshareAlbumRequest();
  buildCounterUnshareAlbumRequest++;
  if (buildCounterUnshareAlbumRequest < 3) {}
  buildCounterUnshareAlbumRequest--;
  return o;
}

void checkUnshareAlbumRequest(api.UnshareAlbumRequest o) {
  buildCounterUnshareAlbumRequest++;
  if (buildCounterUnshareAlbumRequest < 3) {}
  buildCounterUnshareAlbumRequest--;
}

core.int buildCounterUnshareAlbumResponse = 0;
api.UnshareAlbumResponse buildUnshareAlbumResponse() {
  final o = api.UnshareAlbumResponse();
  buildCounterUnshareAlbumResponse++;
  if (buildCounterUnshareAlbumResponse < 3) {}
  buildCounterUnshareAlbumResponse--;
  return o;
}

void checkUnshareAlbumResponse(api.UnshareAlbumResponse o) {
  buildCounterUnshareAlbumResponse++;
  if (buildCounterUnshareAlbumResponse < 3) {}
  buildCounterUnshareAlbumResponse--;
}

core.int buildCounterVideo = 0;
api.Video buildVideo() {
  final o = api.Video();
  buildCounterVideo++;
  if (buildCounterVideo < 3) {
    o.cameraMake = 'foo';
    o.cameraModel = 'foo';
    o.fps = 42.0;
    o.status = 'foo';
  }
  buildCounterVideo--;
  return o;
}

void checkVideo(api.Video o) {
  buildCounterVideo++;
  if (buildCounterVideo < 3) {
    unittest.expect(
      o.cameraMake!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.cameraModel!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.fps!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.status!,
      unittest.equals('foo'),
    );
  }
  buildCounterVideo--;
}

core.List<core.String> buildUnnamed17() => [
      'foo',
      'foo',
    ];

void checkUnnamed17(core.List<core.String> o) {
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
  unittest.group('obj-schema-AddEnrichmentToAlbumRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAddEnrichmentToAlbumRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AddEnrichmentToAlbumRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAddEnrichmentToAlbumRequest(od);
    });
  });

  unittest.group('obj-schema-AddEnrichmentToAlbumResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAddEnrichmentToAlbumResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AddEnrichmentToAlbumResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAddEnrichmentToAlbumResponse(od);
    });
  });

  unittest.group('obj-schema-Album', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAlbum();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Album.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkAlbum(od);
    });
  });

  unittest.group('obj-schema-AlbumPosition', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAlbumPosition();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AlbumPosition.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAlbumPosition(od);
    });
  });

  unittest.group('obj-schema-BatchAddMediaItemsToAlbumRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBatchAddMediaItemsToAlbumRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.BatchAddMediaItemsToAlbumRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkBatchAddMediaItemsToAlbumRequest(od);
    });
  });

  unittest.group('obj-schema-BatchAddMediaItemsToAlbumResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBatchAddMediaItemsToAlbumResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.BatchAddMediaItemsToAlbumResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkBatchAddMediaItemsToAlbumResponse(od);
    });
  });

  unittest.group('obj-schema-BatchCreateMediaItemsRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBatchCreateMediaItemsRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.BatchCreateMediaItemsRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkBatchCreateMediaItemsRequest(od);
    });
  });

  unittest.group('obj-schema-BatchCreateMediaItemsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBatchCreateMediaItemsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.BatchCreateMediaItemsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkBatchCreateMediaItemsResponse(od);
    });
  });

  unittest.group('obj-schema-BatchGetMediaItemsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBatchGetMediaItemsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.BatchGetMediaItemsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkBatchGetMediaItemsResponse(od);
    });
  });

  unittest.group('obj-schema-BatchRemoveMediaItemsFromAlbumRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBatchRemoveMediaItemsFromAlbumRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.BatchRemoveMediaItemsFromAlbumRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkBatchRemoveMediaItemsFromAlbumRequest(od);
    });
  });

  unittest.group('obj-schema-BatchRemoveMediaItemsFromAlbumResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBatchRemoveMediaItemsFromAlbumResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.BatchRemoveMediaItemsFromAlbumResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkBatchRemoveMediaItemsFromAlbumResponse(od);
    });
  });

  unittest.group('obj-schema-ContentFilter', () {
    unittest.test('to-json--from-json', () async {
      final o = buildContentFilter();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ContentFilter.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkContentFilter(od);
    });
  });

  unittest.group('obj-schema-ContributorInfo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildContributorInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ContributorInfo.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkContributorInfo(od);
    });
  });

  unittest.group('obj-schema-CreateAlbumRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCreateAlbumRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CreateAlbumRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCreateAlbumRequest(od);
    });
  });

  unittest.group('obj-schema-Date', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDate();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Date.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkDate(od);
    });
  });

  unittest.group('obj-schema-DateFilter', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDateFilter();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.DateFilter.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkDateFilter(od);
    });
  });

  unittest.group('obj-schema-DateRange', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDateRange();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.DateRange.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkDateRange(od);
    });
  });

  unittest.group('obj-schema-EnrichmentItem', () {
    unittest.test('to-json--from-json', () async {
      final o = buildEnrichmentItem();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.EnrichmentItem.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkEnrichmentItem(od);
    });
  });

  unittest.group('obj-schema-FeatureFilter', () {
    unittest.test('to-json--from-json', () async {
      final o = buildFeatureFilter();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.FeatureFilter.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkFeatureFilter(od);
    });
  });

  unittest.group('obj-schema-Filters', () {
    unittest.test('to-json--from-json', () async {
      final o = buildFilters();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Filters.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkFilters(od);
    });
  });

  unittest.group('obj-schema-JoinSharedAlbumRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildJoinSharedAlbumRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.JoinSharedAlbumRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkJoinSharedAlbumRequest(od);
    });
  });

  unittest.group('obj-schema-JoinSharedAlbumResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildJoinSharedAlbumResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.JoinSharedAlbumResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkJoinSharedAlbumResponse(od);
    });
  });

  unittest.group('obj-schema-LatLng', () {
    unittest.test('to-json--from-json', () async {
      final o = buildLatLng();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.LatLng.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkLatLng(od);
    });
  });

  unittest.group('obj-schema-LeaveSharedAlbumRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildLeaveSharedAlbumRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.LeaveSharedAlbumRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkLeaveSharedAlbumRequest(od);
    });
  });

  unittest.group('obj-schema-LeaveSharedAlbumResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildLeaveSharedAlbumResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.LeaveSharedAlbumResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkLeaveSharedAlbumResponse(od);
    });
  });

  unittest.group('obj-schema-ListAlbumsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListAlbumsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListAlbumsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListAlbumsResponse(od);
    });
  });

  unittest.group('obj-schema-ListMediaItemsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListMediaItemsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListMediaItemsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListMediaItemsResponse(od);
    });
  });

  unittest.group('obj-schema-ListSharedAlbumsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListSharedAlbumsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListSharedAlbumsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListSharedAlbumsResponse(od);
    });
  });

  unittest.group('obj-schema-Location', () {
    unittest.test('to-json--from-json', () async {
      final o = buildLocation();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Location.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkLocation(od);
    });
  });

  unittest.group('obj-schema-LocationEnrichment', () {
    unittest.test('to-json--from-json', () async {
      final o = buildLocationEnrichment();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.LocationEnrichment.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkLocationEnrichment(od);
    });
  });

  unittest.group('obj-schema-MapEnrichment', () {
    unittest.test('to-json--from-json', () async {
      final o = buildMapEnrichment();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.MapEnrichment.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkMapEnrichment(od);
    });
  });

  unittest.group('obj-schema-MediaItem', () {
    unittest.test('to-json--from-json', () async {
      final o = buildMediaItem();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.MediaItem.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkMediaItem(od);
    });
  });

  unittest.group('obj-schema-MediaItemResult', () {
    unittest.test('to-json--from-json', () async {
      final o = buildMediaItemResult();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.MediaItemResult.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkMediaItemResult(od);
    });
  });

  unittest.group('obj-schema-MediaMetadata', () {
    unittest.test('to-json--from-json', () async {
      final o = buildMediaMetadata();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.MediaMetadata.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkMediaMetadata(od);
    });
  });

  unittest.group('obj-schema-MediaTypeFilter', () {
    unittest.test('to-json--from-json', () async {
      final o = buildMediaTypeFilter();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.MediaTypeFilter.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkMediaTypeFilter(od);
    });
  });

  unittest.group('obj-schema-NewEnrichmentItem', () {
    unittest.test('to-json--from-json', () async {
      final o = buildNewEnrichmentItem();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.NewEnrichmentItem.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkNewEnrichmentItem(od);
    });
  });

  unittest.group('obj-schema-NewMediaItem', () {
    unittest.test('to-json--from-json', () async {
      final o = buildNewMediaItem();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.NewMediaItem.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkNewMediaItem(od);
    });
  });

  unittest.group('obj-schema-NewMediaItemResult', () {
    unittest.test('to-json--from-json', () async {
      final o = buildNewMediaItemResult();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.NewMediaItemResult.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkNewMediaItemResult(od);
    });
  });

  unittest.group('obj-schema-Photo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPhoto();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Photo.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkPhoto(od);
    });
  });

  unittest.group('obj-schema-SearchMediaItemsRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSearchMediaItemsRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SearchMediaItemsRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSearchMediaItemsRequest(od);
    });
  });

  unittest.group('obj-schema-SearchMediaItemsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSearchMediaItemsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SearchMediaItemsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSearchMediaItemsResponse(od);
    });
  });

  unittest.group('obj-schema-ShareAlbumRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildShareAlbumRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ShareAlbumRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkShareAlbumRequest(od);
    });
  });

  unittest.group('obj-schema-ShareAlbumResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildShareAlbumResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ShareAlbumResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkShareAlbumResponse(od);
    });
  });

  unittest.group('obj-schema-ShareInfo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildShareInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.ShareInfo.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkShareInfo(od);
    });
  });

  unittest.group('obj-schema-SharedAlbumOptions', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSharedAlbumOptions();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SharedAlbumOptions.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSharedAlbumOptions(od);
    });
  });

  unittest.group('obj-schema-SimpleMediaItem', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSimpleMediaItem();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SimpleMediaItem.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSimpleMediaItem(od);
    });
  });

  unittest.group('obj-schema-Status', () {
    unittest.test('to-json--from-json', () async {
      final o = buildStatus();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Status.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkStatus(od);
    });
  });

  unittest.group('obj-schema-TextEnrichment', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTextEnrichment();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.TextEnrichment.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkTextEnrichment(od);
    });
  });

  unittest.group('obj-schema-UnshareAlbumRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildUnshareAlbumRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.UnshareAlbumRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkUnshareAlbumRequest(od);
    });
  });

  unittest.group('obj-schema-UnshareAlbumResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildUnshareAlbumResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.UnshareAlbumResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkUnshareAlbumResponse(od);
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

  unittest.group('resource-AlbumsResource', () {
    unittest.test('method--addEnrichment', () async {
      final mock = HttpServerMock();
      final res = api.PhotosLibraryApi(mock).albums;
      final arg_request = buildAddEnrichmentToAlbumRequest();
      final arg_albumId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.AddEnrichmentToAlbumRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkAddEnrichmentToAlbumRequest(obj);

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
          path.substring(pathOffset, pathOffset + 10),
          unittest.equals('v1/albums/'),
        );
        pathOffset += 10;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
        final resp = convert.json.encode(buildAddEnrichmentToAlbumResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.addEnrichment(arg_request, arg_albumId,
          $fields: arg_$fields);
      checkAddEnrichmentToAlbumResponse(
          response as api.AddEnrichmentToAlbumResponse);
    });

    unittest.test('method--batchAddMediaItems', () async {
      final mock = HttpServerMock();
      final res = api.PhotosLibraryApi(mock).albums;
      final arg_request = buildBatchAddMediaItemsToAlbumRequest();
      final arg_albumId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.BatchAddMediaItemsToAlbumRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkBatchAddMediaItemsToAlbumRequest(obj);

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
          path.substring(pathOffset, pathOffset + 10),
          unittest.equals('v1/albums/'),
        );
        pathOffset += 10;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
        final resp =
            convert.json.encode(buildBatchAddMediaItemsToAlbumResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.batchAddMediaItems(arg_request, arg_albumId,
          $fields: arg_$fields);
      checkBatchAddMediaItemsToAlbumResponse(
          response as api.BatchAddMediaItemsToAlbumResponse);
    });

    unittest.test('method--batchRemoveMediaItems', () async {
      final mock = HttpServerMock();
      final res = api.PhotosLibraryApi(mock).albums;
      final arg_request = buildBatchRemoveMediaItemsFromAlbumRequest();
      final arg_albumId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.BatchRemoveMediaItemsFromAlbumRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkBatchRemoveMediaItemsFromAlbumRequest(obj);

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
          path.substring(pathOffset, pathOffset + 10),
          unittest.equals('v1/albums/'),
        );
        pathOffset += 10;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
        final resp =
            convert.json.encode(buildBatchRemoveMediaItemsFromAlbumResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.batchRemoveMediaItems(arg_request, arg_albumId,
          $fields: arg_$fields);
      checkBatchRemoveMediaItemsFromAlbumResponse(
          response as api.BatchRemoveMediaItemsFromAlbumResponse);
    });

    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.PhotosLibraryApi(mock).albums;
      final arg_request = buildCreateAlbumRequest();
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.CreateAlbumRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkCreateAlbumRequest(obj);

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
          unittest.equals('v1/albums'),
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
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildAlbum());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.create(arg_request, $fields: arg_$fields);
      checkAlbum(response as api.Album);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.PhotosLibraryApi(mock).albums;
      final arg_albumId = 'foo';
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
          path.substring(pathOffset, pathOffset + 10),
          unittest.equals('v1/albums/'),
        );
        pathOffset += 10;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
        final resp = convert.json.encode(buildAlbum());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_albumId, $fields: arg_$fields);
      checkAlbum(response as api.Album);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.PhotosLibraryApi(mock).albums;
      final arg_excludeNonAppCreatedData = true;
      final arg_pageSize = 42;
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
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals('v1/albums'),
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
          queryMap['excludeNonAppCreatedData']!.first,
          unittest.equals('$arg_excludeNonAppCreatedData'),
        );
        unittest.expect(
          core.int.parse(queryMap['pageSize']!.first),
          unittest.equals(arg_pageSize),
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
        final resp = convert.json.encode(buildListAlbumsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(
          excludeNonAppCreatedData: arg_excludeNonAppCreatedData,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkListAlbumsResponse(response as api.ListAlbumsResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.PhotosLibraryApi(mock).albums;
      final arg_request = buildAlbum();
      final arg_id = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.Album.fromJson(json as core.Map<core.String, core.dynamic>);
        checkAlbum(obj);

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
          path.substring(pathOffset, pathOffset + 10),
          unittest.equals('v1/albums/'),
        );
        pathOffset += 10;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
          queryMap['updateMask']!.first,
          unittest.equals(arg_updateMask),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildAlbum());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.patch(arg_request, arg_id,
          updateMask: arg_updateMask, $fields: arg_$fields);
      checkAlbum(response as api.Album);
    });

    unittest.test('method--share', () async {
      final mock = HttpServerMock();
      final res = api.PhotosLibraryApi(mock).albums;
      final arg_request = buildShareAlbumRequest();
      final arg_albumId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.ShareAlbumRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkShareAlbumRequest(obj);

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
          path.substring(pathOffset, pathOffset + 10),
          unittest.equals('v1/albums/'),
        );
        pathOffset += 10;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
        final resp = convert.json.encode(buildShareAlbumResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.share(arg_request, arg_albumId, $fields: arg_$fields);
      checkShareAlbumResponse(response as api.ShareAlbumResponse);
    });

    unittest.test('method--unshare', () async {
      final mock = HttpServerMock();
      final res = api.PhotosLibraryApi(mock).albums;
      final arg_request = buildUnshareAlbumRequest();
      final arg_albumId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.UnshareAlbumRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkUnshareAlbumRequest(obj);

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
          path.substring(pathOffset, pathOffset + 10),
          unittest.equals('v1/albums/'),
        );
        pathOffset += 10;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
        final resp = convert.json.encode(buildUnshareAlbumResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.unshare(arg_request, arg_albumId, $fields: arg_$fields);
      checkUnshareAlbumResponse(response as api.UnshareAlbumResponse);
    });
  });

  unittest.group('resource-MediaItemsResource', () {
    unittest.test('method--batchCreate', () async {
      final mock = HttpServerMock();
      final res = api.PhotosLibraryApi(mock).mediaItems;
      final arg_request = buildBatchCreateMediaItemsRequest();
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.BatchCreateMediaItemsRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkBatchCreateMediaItemsRequest(obj);

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
          unittest.equals('v1/mediaItems:batchCreate'),
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
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildBatchCreateMediaItemsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.batchCreate(arg_request, $fields: arg_$fields);
      checkBatchCreateMediaItemsResponse(
          response as api.BatchCreateMediaItemsResponse);
    });

    unittest.test('method--batchGet', () async {
      final mock = HttpServerMock();
      final res = api.PhotosLibraryApi(mock).mediaItems;
      final arg_mediaItemIds = buildUnnamed17();
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
          unittest.equals('v1/mediaItems:batchGet'),
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
          queryMap['mediaItemIds']!,
          unittest.equals(arg_mediaItemIds),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildBatchGetMediaItemsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.batchGet(
          mediaItemIds: arg_mediaItemIds, $fields: arg_$fields);
      checkBatchGetMediaItemsResponse(
          response as api.BatchGetMediaItemsResponse);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.PhotosLibraryApi(mock).mediaItems;
      final arg_mediaItemId = 'foo';
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
          unittest.equals('v1/mediaItems/'),
        );
        pathOffset += 14;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
        final resp = convert.json.encode(buildMediaItem());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_mediaItemId, $fields: arg_$fields);
      checkMediaItem(response as api.MediaItem);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.PhotosLibraryApi(mock).mediaItems;
      final arg_pageSize = 42;
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
          path.substring(pathOffset, pathOffset + 13),
          unittest.equals('v1/mediaItems'),
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
          core.int.parse(queryMap['pageSize']!.first),
          unittest.equals(arg_pageSize),
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
        final resp = convert.json.encode(buildListMediaItemsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkListMediaItemsResponse(response as api.ListMediaItemsResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.PhotosLibraryApi(mock).mediaItems;
      final arg_request = buildMediaItem();
      final arg_id = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.MediaItem.fromJson(json as core.Map<core.String, core.dynamic>);
        checkMediaItem(obj);

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
          unittest.equals('v1/mediaItems/'),
        );
        pathOffset += 14;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
          queryMap['updateMask']!.first,
          unittest.equals(arg_updateMask),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildMediaItem());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.patch(arg_request, arg_id,
          updateMask: arg_updateMask, $fields: arg_$fields);
      checkMediaItem(response as api.MediaItem);
    });

    unittest.test('method--search', () async {
      final mock = HttpServerMock();
      final res = api.PhotosLibraryApi(mock).mediaItems;
      final arg_request = buildSearchMediaItemsRequest();
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.SearchMediaItemsRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkSearchMediaItemsRequest(obj);

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
          unittest.equals('v1/mediaItems:search'),
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
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildSearchMediaItemsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.search(arg_request, $fields: arg_$fields);
      checkSearchMediaItemsResponse(response as api.SearchMediaItemsResponse);
    });
  });

  unittest.group('resource-SharedAlbumsResource', () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.PhotosLibraryApi(mock).sharedAlbums;
      final arg_shareToken = 'foo';
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
          path.substring(pathOffset, pathOffset + 16),
          unittest.equals('v1/sharedAlbums/'),
        );
        pathOffset += 16;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
        final resp = convert.json.encode(buildAlbum());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_shareToken, $fields: arg_$fields);
      checkAlbum(response as api.Album);
    });

    unittest.test('method--join', () async {
      final mock = HttpServerMock();
      final res = api.PhotosLibraryApi(mock).sharedAlbums;
      final arg_request = buildJoinSharedAlbumRequest();
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.JoinSharedAlbumRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkJoinSharedAlbumRequest(obj);

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
          unittest.equals('v1/sharedAlbums:join'),
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
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildJoinSharedAlbumResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.join(arg_request, $fields: arg_$fields);
      checkJoinSharedAlbumResponse(response as api.JoinSharedAlbumResponse);
    });

    unittest.test('method--leave', () async {
      final mock = HttpServerMock();
      final res = api.PhotosLibraryApi(mock).sharedAlbums;
      final arg_request = buildLeaveSharedAlbumRequest();
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.LeaveSharedAlbumRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkLeaveSharedAlbumRequest(obj);

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
          unittest.equals('v1/sharedAlbums:leave'),
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
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildLeaveSharedAlbumResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.leave(arg_request, $fields: arg_$fields);
      checkLeaveSharedAlbumResponse(response as api.LeaveSharedAlbumResponse);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.PhotosLibraryApi(mock).sharedAlbums;
      final arg_excludeNonAppCreatedData = true;
      final arg_pageSize = 42;
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
          path.substring(pathOffset, pathOffset + 15),
          unittest.equals('v1/sharedAlbums'),
        );
        pathOffset += 15;

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
          queryMap['excludeNonAppCreatedData']!.first,
          unittest.equals('$arg_excludeNonAppCreatedData'),
        );
        unittest.expect(
          core.int.parse(queryMap['pageSize']!.first),
          unittest.equals(arg_pageSize),
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
        final resp = convert.json.encode(buildListSharedAlbumsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(
          excludeNonAppCreatedData: arg_excludeNonAppCreatedData,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkListSharedAlbumsResponse(response as api.ListSharedAlbumsResponse);
    });
  });
}
