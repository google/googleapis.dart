library googleapis.playmoviespartner.v1.test;

import "dart:core" as core;
import "dart:collection" as collection;
import "dart:async" as async;
import "dart:convert" as convert;

import 'package:http/http.dart' as http;
import 'package:http/testing.dart' as http_testing;
import 'package:unittest/unittest.dart' as unittest;

import 'package:googleapis/playmoviespartner/v1.dart' as api;

class HttpServerMock extends http.BaseClient {
  core.Function _callback;
  core.bool _expectJson;

  void register(core.Function callback, core.bool expectJson) {
    _callback = callback;
    _expectJson = expectJson;
  }

  async.Future<http.StreamedResponse> send(http.BaseRequest request) {
    if (_expectJson) {
      return request.finalize()
          .transform(convert.UTF8.decoder)
          .join('')
          .then((core.String jsonString) {
        if (jsonString.isEmpty) {
          return _callback(request, null);
        } else {
          return _callback(request, convert.JSON.decode(jsonString));
        }
      });
    } else {
      var stream = request.finalize();
      if (stream == null) {
        return _callback(request, []);
      } else {
        return stream.toBytes().then((data) {
          return _callback(request, data);
        });
      }
    }
  }
}

http.StreamedResponse stringResponse(
    core.int status, core.Map headers, core.String body) {
  var stream = new async.Stream.fromIterable([convert.UTF8.encode(body)]);
  return new http.StreamedResponse(stream, status, headers: headers);
}

buildUnnamed3229() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3229(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterAvail = 0;
buildAvail() {
  var o = new api.Avail();
  buildCounterAvail++;
  if (buildCounterAvail < 3) {
    o.altId = "foo";
    o.availId = "foo";
    o.captionExemption = "foo";
    o.captionIncluded = true;
    o.contentId = "foo";
    o.displayName = "foo";
    o.encodeId = "foo";
    o.end = "foo";
    o.episodeAltId = "foo";
    o.episodeNumber = "foo";
    o.episodeTitleInternalAlias = "foo";
    o.formatProfile = "foo";
    o.licenseType = "foo";
    o.pphNames = buildUnnamed3229();
    o.priceType = "foo";
    o.priceValue = "foo";
    o.productId = "foo";
    o.ratingReason = "foo";
    o.ratingSystem = "foo";
    o.ratingValue = "foo";
    o.releaseDate = "foo";
    o.seasonAltId = "foo";
    o.seasonNumber = "foo";
    o.seasonTitleInternalAlias = "foo";
    o.seriesAltId = "foo";
    o.seriesTitleInternalAlias = "foo";
    o.start = "foo";
    o.storeLanguage = "foo";
    o.suppressionLiftDate = "foo";
    o.territory = "foo";
    o.titleInternalAlias = "foo";
    o.videoId = "foo";
    o.workType = "foo";
  }
  buildCounterAvail--;
  return o;
}

checkAvail(api.Avail o) {
  buildCounterAvail++;
  if (buildCounterAvail < 3) {
    unittest.expect(o.altId, unittest.equals('foo'));
    unittest.expect(o.availId, unittest.equals('foo'));
    unittest.expect(o.captionExemption, unittest.equals('foo'));
    unittest.expect(o.captionIncluded, unittest.isTrue);
    unittest.expect(o.contentId, unittest.equals('foo'));
    unittest.expect(o.displayName, unittest.equals('foo'));
    unittest.expect(o.encodeId, unittest.equals('foo'));
    unittest.expect(o.end, unittest.equals('foo'));
    unittest.expect(o.episodeAltId, unittest.equals('foo'));
    unittest.expect(o.episodeNumber, unittest.equals('foo'));
    unittest.expect(o.episodeTitleInternalAlias, unittest.equals('foo'));
    unittest.expect(o.formatProfile, unittest.equals('foo'));
    unittest.expect(o.licenseType, unittest.equals('foo'));
    checkUnnamed3229(o.pphNames);
    unittest.expect(o.priceType, unittest.equals('foo'));
    unittest.expect(o.priceValue, unittest.equals('foo'));
    unittest.expect(o.productId, unittest.equals('foo'));
    unittest.expect(o.ratingReason, unittest.equals('foo'));
    unittest.expect(o.ratingSystem, unittest.equals('foo'));
    unittest.expect(o.ratingValue, unittest.equals('foo'));
    unittest.expect(o.releaseDate, unittest.equals('foo'));
    unittest.expect(o.seasonAltId, unittest.equals('foo'));
    unittest.expect(o.seasonNumber, unittest.equals('foo'));
    unittest.expect(o.seasonTitleInternalAlias, unittest.equals('foo'));
    unittest.expect(o.seriesAltId, unittest.equals('foo'));
    unittest.expect(o.seriesTitleInternalAlias, unittest.equals('foo'));
    unittest.expect(o.start, unittest.equals('foo'));
    unittest.expect(o.storeLanguage, unittest.equals('foo'));
    unittest.expect(o.suppressionLiftDate, unittest.equals('foo'));
    unittest.expect(o.territory, unittest.equals('foo'));
    unittest.expect(o.titleInternalAlias, unittest.equals('foo'));
    unittest.expect(o.videoId, unittest.equals('foo'));
    unittest.expect(o.workType, unittest.equals('foo'));
  }
  buildCounterAvail--;
}

buildUnnamed3230() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3230(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed3231() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3231(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed3232() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3232(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed3233() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3233(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed3234() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3234(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed3235() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3235(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterComponent = 0;
buildComponent() {
  var o = new api.Component();
  buildCounterComponent++;
  if (buildCounterComponent < 3) {
    o.altCutIds = buildUnnamed3230();
    o.approvedTime = "foo";
    o.componentDetailType = "foo";
    o.componentId = "foo";
    o.customIds = buildUnnamed3231();
    o.editLevelEidrs = buildUnnamed3232();
    o.elIds = buildUnnamed3233();
    o.filename = "foo";
    o.language = "foo";
    o.name = "foo";
    o.normalizedPriority = "foo";
    o.playableUnitType = "foo";
    o.pphName = "foo";
    o.priority = 42.0;
    o.processingErrors = buildUnnamed3234();
    o.receivedTime = "foo";
    o.rejectionNote = "foo";
    o.status = "foo";
    o.statusDetail = "foo";
    o.studioName = "foo";
    o.titleLevelEidrs = buildUnnamed3235();
    o.type = "foo";
  }
  buildCounterComponent--;
  return o;
}

checkComponent(api.Component o) {
  buildCounterComponent++;
  if (buildCounterComponent < 3) {
    checkUnnamed3230(o.altCutIds);
    unittest.expect(o.approvedTime, unittest.equals('foo'));
    unittest.expect(o.componentDetailType, unittest.equals('foo'));
    unittest.expect(o.componentId, unittest.equals('foo'));
    checkUnnamed3231(o.customIds);
    checkUnnamed3232(o.editLevelEidrs);
    checkUnnamed3233(o.elIds);
    unittest.expect(o.filename, unittest.equals('foo'));
    unittest.expect(o.language, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.normalizedPriority, unittest.equals('foo'));
    unittest.expect(o.playableUnitType, unittest.equals('foo'));
    unittest.expect(o.pphName, unittest.equals('foo'));
    unittest.expect(o.priority, unittest.equals(42.0));
    checkUnnamed3234(o.processingErrors);
    unittest.expect(o.receivedTime, unittest.equals('foo'));
    unittest.expect(o.rejectionNote, unittest.equals('foo'));
    unittest.expect(o.status, unittest.equals('foo'));
    unittest.expect(o.statusDetail, unittest.equals('foo'));
    unittest.expect(o.studioName, unittest.equals('foo'));
    checkUnnamed3235(o.titleLevelEidrs);
    unittest.expect(o.type, unittest.equals('foo'));
  }
  buildCounterComponent--;
}

buildUnnamed3236() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3236(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed3237() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3237(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterExperienceLocale = 0;
buildExperienceLocale() {
  var o = new api.ExperienceLocale();
  buildCounterExperienceLocale++;
  if (buildCounterExperienceLocale < 3) {
    o.altCutId = "foo";
    o.approvedTime = "foo";
    o.channelId = "foo";
    o.country = "foo";
    o.createdTime = "foo";
    o.customIds = buildUnnamed3236();
    o.earliestAvailStartTime = "foo";
    o.editLevelEidr = "foo";
    o.elId = "foo";
    o.inventoryId = "foo";
    o.language = "foo";
    o.name = "foo";
    o.normalizedPriority = "foo";
    o.playableSequenceId = "foo";
    o.pphNames = buildUnnamed3237();
    o.presentationId = "foo";
    o.priority = 42.0;
    o.status = "foo";
    o.studioName = "foo";
    o.titleLevelEidr = "foo";
    o.trailerId = "foo";
    o.type = "foo";
    o.videoId = "foo";
  }
  buildCounterExperienceLocale--;
  return o;
}

checkExperienceLocale(api.ExperienceLocale o) {
  buildCounterExperienceLocale++;
  if (buildCounterExperienceLocale < 3) {
    unittest.expect(o.altCutId, unittest.equals('foo'));
    unittest.expect(o.approvedTime, unittest.equals('foo'));
    unittest.expect(o.channelId, unittest.equals('foo'));
    unittest.expect(o.country, unittest.equals('foo'));
    unittest.expect(o.createdTime, unittest.equals('foo'));
    checkUnnamed3236(o.customIds);
    unittest.expect(o.earliestAvailStartTime, unittest.equals('foo'));
    unittest.expect(o.editLevelEidr, unittest.equals('foo'));
    unittest.expect(o.elId, unittest.equals('foo'));
    unittest.expect(o.inventoryId, unittest.equals('foo'));
    unittest.expect(o.language, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.normalizedPriority, unittest.equals('foo'));
    unittest.expect(o.playableSequenceId, unittest.equals('foo'));
    checkUnnamed3237(o.pphNames);
    unittest.expect(o.presentationId, unittest.equals('foo'));
    unittest.expect(o.priority, unittest.equals(42.0));
    unittest.expect(o.status, unittest.equals('foo'));
    unittest.expect(o.studioName, unittest.equals('foo'));
    unittest.expect(o.titleLevelEidr, unittest.equals('foo'));
    unittest.expect(o.trailerId, unittest.equals('foo'));
    unittest.expect(o.type, unittest.equals('foo'));
    unittest.expect(o.videoId, unittest.equals('foo'));
  }
  buildCounterExperienceLocale--;
}

buildUnnamed3238() {
  var o = new core.List<api.Avail>();
  o.add(buildAvail());
  o.add(buildAvail());
  return o;
}

checkUnnamed3238(core.List<api.Avail> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAvail(o[0]);
  checkAvail(o[1]);
}

core.int buildCounterListAvailsResponse = 0;
buildListAvailsResponse() {
  var o = new api.ListAvailsResponse();
  buildCounterListAvailsResponse++;
  if (buildCounterListAvailsResponse < 3) {
    o.avails = buildUnnamed3238();
    o.nextPageToken = "foo";
    o.totalSize = 42;
  }
  buildCounterListAvailsResponse--;
  return o;
}

checkListAvailsResponse(api.ListAvailsResponse o) {
  buildCounterListAvailsResponse++;
  if (buildCounterListAvailsResponse < 3) {
    checkUnnamed3238(o.avails);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    unittest.expect(o.totalSize, unittest.equals(42));
  }
  buildCounterListAvailsResponse--;
}

buildUnnamed3239() {
  var o = new core.List<api.Component>();
  o.add(buildComponent());
  o.add(buildComponent());
  return o;
}

checkUnnamed3239(core.List<api.Component> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkComponent(o[0]);
  checkComponent(o[1]);
}

core.int buildCounterListComponentsResponse = 0;
buildListComponentsResponse() {
  var o = new api.ListComponentsResponse();
  buildCounterListComponentsResponse++;
  if (buildCounterListComponentsResponse < 3) {
    o.components = buildUnnamed3239();
    o.nextPageToken = "foo";
    o.totalSize = 42;
  }
  buildCounterListComponentsResponse--;
  return o;
}

checkListComponentsResponse(api.ListComponentsResponse o) {
  buildCounterListComponentsResponse++;
  if (buildCounterListComponentsResponse < 3) {
    checkUnnamed3239(o.components);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    unittest.expect(o.totalSize, unittest.equals(42));
  }
  buildCounterListComponentsResponse--;
}

buildUnnamed3240() {
  var o = new core.List<api.ExperienceLocale>();
  o.add(buildExperienceLocale());
  o.add(buildExperienceLocale());
  return o;
}

checkUnnamed3240(core.List<api.ExperienceLocale> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkExperienceLocale(o[0]);
  checkExperienceLocale(o[1]);
}

core.int buildCounterListExperienceLocalesResponse = 0;
buildListExperienceLocalesResponse() {
  var o = new api.ListExperienceLocalesResponse();
  buildCounterListExperienceLocalesResponse++;
  if (buildCounterListExperienceLocalesResponse < 3) {
    o.experienceLocales = buildUnnamed3240();
    o.nextPageToken = "foo";
    o.totalSize = 42;
  }
  buildCounterListExperienceLocalesResponse--;
  return o;
}

checkListExperienceLocalesResponse(api.ListExperienceLocalesResponse o) {
  buildCounterListExperienceLocalesResponse++;
  if (buildCounterListExperienceLocalesResponse < 3) {
    checkUnnamed3240(o.experienceLocales);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    unittest.expect(o.totalSize, unittest.equals(42));
  }
  buildCounterListExperienceLocalesResponse--;
}

buildUnnamed3241() {
  var o = new core.List<api.Order>();
  o.add(buildOrder());
  o.add(buildOrder());
  return o;
}

checkUnnamed3241(core.List<api.Order> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOrder(o[0]);
  checkOrder(o[1]);
}

core.int buildCounterListOrdersResponse = 0;
buildListOrdersResponse() {
  var o = new api.ListOrdersResponse();
  buildCounterListOrdersResponse++;
  if (buildCounterListOrdersResponse < 3) {
    o.nextPageToken = "foo";
    o.orders = buildUnnamed3241();
    o.totalSize = 42;
  }
  buildCounterListOrdersResponse--;
  return o;
}

checkListOrdersResponse(api.ListOrdersResponse o) {
  buildCounterListOrdersResponse++;
  if (buildCounterListOrdersResponse < 3) {
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    checkUnnamed3241(o.orders);
    unittest.expect(o.totalSize, unittest.equals(42));
  }
  buildCounterListOrdersResponse--;
}

buildUnnamed3242() {
  var o = new core.List<api.StoreInfo>();
  o.add(buildStoreInfo());
  o.add(buildStoreInfo());
  return o;
}

checkUnnamed3242(core.List<api.StoreInfo> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkStoreInfo(o[0]);
  checkStoreInfo(o[1]);
}

core.int buildCounterListStoreInfosResponse = 0;
buildListStoreInfosResponse() {
  var o = new api.ListStoreInfosResponse();
  buildCounterListStoreInfosResponse++;
  if (buildCounterListStoreInfosResponse < 3) {
    o.nextPageToken = "foo";
    o.storeInfos = buildUnnamed3242();
    o.totalSize = 42;
  }
  buildCounterListStoreInfosResponse--;
  return o;
}

checkListStoreInfosResponse(api.ListStoreInfosResponse o) {
  buildCounterListStoreInfosResponse++;
  if (buildCounterListStoreInfosResponse < 3) {
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    checkUnnamed3242(o.storeInfos);
    unittest.expect(o.totalSize, unittest.equals(42));
  }
  buildCounterListStoreInfosResponse--;
}

buildUnnamed3243() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3243(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterOrder = 0;
buildOrder() {
  var o = new api.Order();
  buildCounterOrder++;
  if (buildCounterOrder < 3) {
    o.approvedTime = "foo";
    o.channelId = "foo";
    o.channelName = "foo";
    o.countries = buildUnnamed3243();
    o.customId = "foo";
    o.earliestAvailStartTime = "foo";
    o.episodeName = "foo";
    o.legacyPriority = "foo";
    o.name = "foo";
    o.normalizedPriority = "foo";
    o.orderId = "foo";
    o.orderedTime = "foo";
    o.pphName = "foo";
    o.priority = 42.0;
    o.receivedTime = "foo";
    o.rejectionNote = "foo";
    o.seasonName = "foo";
    o.showName = "foo";
    o.status = "foo";
    o.statusDetail = "foo";
    o.studioName = "foo";
    o.type = "foo";
    o.videoId = "foo";
  }
  buildCounterOrder--;
  return o;
}

checkOrder(api.Order o) {
  buildCounterOrder++;
  if (buildCounterOrder < 3) {
    unittest.expect(o.approvedTime, unittest.equals('foo'));
    unittest.expect(o.channelId, unittest.equals('foo'));
    unittest.expect(o.channelName, unittest.equals('foo'));
    checkUnnamed3243(o.countries);
    unittest.expect(o.customId, unittest.equals('foo'));
    unittest.expect(o.earliestAvailStartTime, unittest.equals('foo'));
    unittest.expect(o.episodeName, unittest.equals('foo'));
    unittest.expect(o.legacyPriority, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.normalizedPriority, unittest.equals('foo'));
    unittest.expect(o.orderId, unittest.equals('foo'));
    unittest.expect(o.orderedTime, unittest.equals('foo'));
    unittest.expect(o.pphName, unittest.equals('foo'));
    unittest.expect(o.priority, unittest.equals(42.0));
    unittest.expect(o.receivedTime, unittest.equals('foo'));
    unittest.expect(o.rejectionNote, unittest.equals('foo'));
    unittest.expect(o.seasonName, unittest.equals('foo'));
    unittest.expect(o.showName, unittest.equals('foo'));
    unittest.expect(o.status, unittest.equals('foo'));
    unittest.expect(o.statusDetail, unittest.equals('foo'));
    unittest.expect(o.studioName, unittest.equals('foo'));
    unittest.expect(o.type, unittest.equals('foo'));
    unittest.expect(o.videoId, unittest.equals('foo'));
  }
  buildCounterOrder--;
}

buildUnnamed3244() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3244(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed3245() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3245(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed3246() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3246(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterStoreInfo = 0;
buildStoreInfo() {
  var o = new api.StoreInfo();
  buildCounterStoreInfo++;
  if (buildCounterStoreInfo < 3) {
    o.audioTracks = buildUnnamed3244();
    o.country = "foo";
    o.editLevelEidr = "foo";
    o.episodeNumber = "foo";
    o.hasAudio51 = true;
    o.hasEstOffer = true;
    o.hasHdOffer = true;
    o.hasInfoCards = true;
    o.hasSdOffer = true;
    o.hasVodOffer = true;
    o.liveTime = "foo";
    o.mid = "foo";
    o.name = "foo";
    o.pphNames = buildUnnamed3245();
    o.seasonId = "foo";
    o.seasonName = "foo";
    o.seasonNumber = "foo";
    o.showId = "foo";
    o.showName = "foo";
    o.studioName = "foo";
    o.subtitles = buildUnnamed3246();
    o.titleLevelEidr = "foo";
    o.trailerId = "foo";
    o.type = "foo";
    o.videoId = "foo";
  }
  buildCounterStoreInfo--;
  return o;
}

checkStoreInfo(api.StoreInfo o) {
  buildCounterStoreInfo++;
  if (buildCounterStoreInfo < 3) {
    checkUnnamed3244(o.audioTracks);
    unittest.expect(o.country, unittest.equals('foo'));
    unittest.expect(o.editLevelEidr, unittest.equals('foo'));
    unittest.expect(o.episodeNumber, unittest.equals('foo'));
    unittest.expect(o.hasAudio51, unittest.isTrue);
    unittest.expect(o.hasEstOffer, unittest.isTrue);
    unittest.expect(o.hasHdOffer, unittest.isTrue);
    unittest.expect(o.hasInfoCards, unittest.isTrue);
    unittest.expect(o.hasSdOffer, unittest.isTrue);
    unittest.expect(o.hasVodOffer, unittest.isTrue);
    unittest.expect(o.liveTime, unittest.equals('foo'));
    unittest.expect(o.mid, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    checkUnnamed3245(o.pphNames);
    unittest.expect(o.seasonId, unittest.equals('foo'));
    unittest.expect(o.seasonName, unittest.equals('foo'));
    unittest.expect(o.seasonNumber, unittest.equals('foo'));
    unittest.expect(o.showId, unittest.equals('foo'));
    unittest.expect(o.showName, unittest.equals('foo'));
    unittest.expect(o.studioName, unittest.equals('foo'));
    checkUnnamed3246(o.subtitles);
    unittest.expect(o.titleLevelEidr, unittest.equals('foo'));
    unittest.expect(o.trailerId, unittest.equals('foo'));
    unittest.expect(o.type, unittest.equals('foo'));
    unittest.expect(o.videoId, unittest.equals('foo'));
  }
  buildCounterStoreInfo--;
}

buildUnnamed3247() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3247(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed3248() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3248(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed3249() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3249(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed3250() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3250(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed3251() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3251(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed3252() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3252(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed3253() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3253(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed3254() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3254(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed3255() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3255(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed3256() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3256(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed3257() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3257(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed3258() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3258(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed3259() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3259(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed3260() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3260(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed3261() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3261(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed3262() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3262(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed3263() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3263(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed3264() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3264(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed3265() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3265(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed3266() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3266(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed3267() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3267(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}


main() {
  unittest.group("obj-schema-Avail", () {
    unittest.test("to-json--from-json", () {
      var o = buildAvail();
      var od = new api.Avail.fromJson(o.toJson());
      checkAvail(od);
    });
  });


  unittest.group("obj-schema-Component", () {
    unittest.test("to-json--from-json", () {
      var o = buildComponent();
      var od = new api.Component.fromJson(o.toJson());
      checkComponent(od);
    });
  });


  unittest.group("obj-schema-ExperienceLocale", () {
    unittest.test("to-json--from-json", () {
      var o = buildExperienceLocale();
      var od = new api.ExperienceLocale.fromJson(o.toJson());
      checkExperienceLocale(od);
    });
  });


  unittest.group("obj-schema-ListAvailsResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildListAvailsResponse();
      var od = new api.ListAvailsResponse.fromJson(o.toJson());
      checkListAvailsResponse(od);
    });
  });


  unittest.group("obj-schema-ListComponentsResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildListComponentsResponse();
      var od = new api.ListComponentsResponse.fromJson(o.toJson());
      checkListComponentsResponse(od);
    });
  });


  unittest.group("obj-schema-ListExperienceLocalesResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildListExperienceLocalesResponse();
      var od = new api.ListExperienceLocalesResponse.fromJson(o.toJson());
      checkListExperienceLocalesResponse(od);
    });
  });


  unittest.group("obj-schema-ListOrdersResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildListOrdersResponse();
      var od = new api.ListOrdersResponse.fromJson(o.toJson());
      checkListOrdersResponse(od);
    });
  });


  unittest.group("obj-schema-ListStoreInfosResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildListStoreInfosResponse();
      var od = new api.ListStoreInfosResponse.fromJson(o.toJson());
      checkListStoreInfosResponse(od);
    });
  });


  unittest.group("obj-schema-Order", () {
    unittest.test("to-json--from-json", () {
      var o = buildOrder();
      var od = new api.Order.fromJson(o.toJson());
      checkOrder(od);
    });
  });


  unittest.group("obj-schema-StoreInfo", () {
    unittest.test("to-json--from-json", () {
      var o = buildStoreInfo();
      var od = new api.StoreInfo.fromJson(o.toJson());
      checkStoreInfo(od);
    });
  });


  unittest.group("resource-AccountsAvailsResourceApi", () {
    unittest.test("method--get", () {

      var mock = new HttpServerMock();
      api.AccountsAvailsResourceApi res = new api.PlaymoviespartnerApi(mock).accounts.avails;
      var arg_accountId = "foo";
      var arg_availId = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 12), unittest.equals("v1/accounts/"));
        pathOffset += 12;
        index = path.indexOf("/avails/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_accountId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 8), unittest.equals("/avails/"));
        pathOffset += 8;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_availId"));

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }
        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildAvail());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.get(arg_accountId, arg_availId).then(unittest.expectAsync(((api.Avail response) {
        checkAvail(response);
      })));
    });

    unittest.test("method--list", () {

      var mock = new HttpServerMock();
      api.AccountsAvailsResourceApi res = new api.PlaymoviespartnerApi(mock).accounts.avails;
      var arg_accountId = "foo";
      var arg_pageSize = 42;
      var arg_pageToken = "foo";
      var arg_pphNames = buildUnnamed3247();
      var arg_studioNames = buildUnnamed3248();
      var arg_title = "foo";
      var arg_territories = buildUnnamed3249();
      var arg_altId = "foo";
      var arg_videoIds = buildUnnamed3250();
      var arg_altIds = buildUnnamed3251();
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 12), unittest.equals("v1/accounts/"));
        pathOffset += 12;
        index = path.indexOf("/avails", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_accountId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 7), unittest.equals("/avails"));
        pathOffset += 7;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }
        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(core.int.parse(queryMap["pageSize"].first), unittest.equals(arg_pageSize));
        unittest.expect(queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(queryMap["pphNames"], unittest.equals(arg_pphNames));
        unittest.expect(queryMap["studioNames"], unittest.equals(arg_studioNames));
        unittest.expect(queryMap["title"].first, unittest.equals(arg_title));
        unittest.expect(queryMap["territories"], unittest.equals(arg_territories));
        unittest.expect(queryMap["altId"].first, unittest.equals(arg_altId));
        unittest.expect(queryMap["videoIds"], unittest.equals(arg_videoIds));
        unittest.expect(queryMap["altIds"], unittest.equals(arg_altIds));


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildListAvailsResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.list(arg_accountId, pageSize: arg_pageSize, pageToken: arg_pageToken, pphNames: arg_pphNames, studioNames: arg_studioNames, title: arg_title, territories: arg_territories, altId: arg_altId, videoIds: arg_videoIds, altIds: arg_altIds).then(unittest.expectAsync(((api.ListAvailsResponse response) {
        checkListAvailsResponse(response);
      })));
    });

  });


  unittest.group("resource-AccountsComponentsResourceApi", () {
    unittest.test("method--list", () {

      var mock = new HttpServerMock();
      api.AccountsComponentsResourceApi res = new api.PlaymoviespartnerApi(mock).accounts.components;
      var arg_accountId = "foo";
      var arg_pageSize = 42;
      var arg_pageToken = "foo";
      var arg_pphNames = buildUnnamed3252();
      var arg_studioNames = buildUnnamed3253();
      var arg_titleLevelEidr = "foo";
      var arg_editLevelEidr = "foo";
      var arg_status = buildUnnamed3254();
      var arg_customId = "foo";
      var arg_inventoryId = "foo";
      var arg_presentationId = "foo";
      var arg_playableSequenceId = "foo";
      var arg_elId = "foo";
      var arg_altCutId = "foo";
      var arg_filename = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 12), unittest.equals("v1/accounts/"));
        pathOffset += 12;
        index = path.indexOf("/components", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_accountId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 11), unittest.equals("/components"));
        pathOffset += 11;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }
        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(core.int.parse(queryMap["pageSize"].first), unittest.equals(arg_pageSize));
        unittest.expect(queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(queryMap["pphNames"], unittest.equals(arg_pphNames));
        unittest.expect(queryMap["studioNames"], unittest.equals(arg_studioNames));
        unittest.expect(queryMap["titleLevelEidr"].first, unittest.equals(arg_titleLevelEidr));
        unittest.expect(queryMap["editLevelEidr"].first, unittest.equals(arg_editLevelEidr));
        unittest.expect(queryMap["status"], unittest.equals(arg_status));
        unittest.expect(queryMap["customId"].first, unittest.equals(arg_customId));
        unittest.expect(queryMap["inventoryId"].first, unittest.equals(arg_inventoryId));
        unittest.expect(queryMap["presentationId"].first, unittest.equals(arg_presentationId));
        unittest.expect(queryMap["playableSequenceId"].first, unittest.equals(arg_playableSequenceId));
        unittest.expect(queryMap["elId"].first, unittest.equals(arg_elId));
        unittest.expect(queryMap["altCutId"].first, unittest.equals(arg_altCutId));
        unittest.expect(queryMap["filename"].first, unittest.equals(arg_filename));


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildListComponentsResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.list(arg_accountId, pageSize: arg_pageSize, pageToken: arg_pageToken, pphNames: arg_pphNames, studioNames: arg_studioNames, titleLevelEidr: arg_titleLevelEidr, editLevelEidr: arg_editLevelEidr, status: arg_status, customId: arg_customId, inventoryId: arg_inventoryId, presentationId: arg_presentationId, playableSequenceId: arg_playableSequenceId, elId: arg_elId, altCutId: arg_altCutId, filename: arg_filename).then(unittest.expectAsync(((api.ListComponentsResponse response) {
        checkListComponentsResponse(response);
      })));
    });

  });


  unittest.group("resource-AccountsComponentsTypeResourceApi", () {
    unittest.test("method--get", () {

      var mock = new HttpServerMock();
      api.AccountsComponentsTypeResourceApi res = new api.PlaymoviespartnerApi(mock).accounts.components.type;
      var arg_accountId = "foo";
      var arg_componentId = "foo";
      var arg_type = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 12), unittest.equals("v1/accounts/"));
        pathOffset += 12;
        index = path.indexOf("/components/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_accountId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 12), unittest.equals("/components/"));
        pathOffset += 12;
        index = path.indexOf("/type/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_componentId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 6), unittest.equals("/type/"));
        pathOffset += 6;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_type"));

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }
        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildComponent());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.get(arg_accountId, arg_componentId, arg_type).then(unittest.expectAsync(((api.Component response) {
        checkComponent(response);
      })));
    });

  });


  unittest.group("resource-AccountsExperienceLocalesResourceApi", () {
    unittest.test("method--get", () {

      var mock = new HttpServerMock();
      api.AccountsExperienceLocalesResourceApi res = new api.PlaymoviespartnerApi(mock).accounts.experienceLocales;
      var arg_accountId = "foo";
      var arg_elId = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 12), unittest.equals("v1/accounts/"));
        pathOffset += 12;
        index = path.indexOf("/experienceLocales/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_accountId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 19), unittest.equals("/experienceLocales/"));
        pathOffset += 19;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_elId"));

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }
        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildExperienceLocale());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.get(arg_accountId, arg_elId).then(unittest.expectAsync(((api.ExperienceLocale response) {
        checkExperienceLocale(response);
      })));
    });

    unittest.test("method--list", () {

      var mock = new HttpServerMock();
      api.AccountsExperienceLocalesResourceApi res = new api.PlaymoviespartnerApi(mock).accounts.experienceLocales;
      var arg_accountId = "foo";
      var arg_pageSize = 42;
      var arg_pageToken = "foo";
      var arg_pphNames = buildUnnamed3255();
      var arg_studioNames = buildUnnamed3256();
      var arg_titleLevelEidr = "foo";
      var arg_editLevelEidr = "foo";
      var arg_status = buildUnnamed3257();
      var arg_customId = "foo";
      var arg_altCutId = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 12), unittest.equals("v1/accounts/"));
        pathOffset += 12;
        index = path.indexOf("/experienceLocales", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_accountId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 18), unittest.equals("/experienceLocales"));
        pathOffset += 18;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }
        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(core.int.parse(queryMap["pageSize"].first), unittest.equals(arg_pageSize));
        unittest.expect(queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(queryMap["pphNames"], unittest.equals(arg_pphNames));
        unittest.expect(queryMap["studioNames"], unittest.equals(arg_studioNames));
        unittest.expect(queryMap["titleLevelEidr"].first, unittest.equals(arg_titleLevelEidr));
        unittest.expect(queryMap["editLevelEidr"].first, unittest.equals(arg_editLevelEidr));
        unittest.expect(queryMap["status"], unittest.equals(arg_status));
        unittest.expect(queryMap["customId"].first, unittest.equals(arg_customId));
        unittest.expect(queryMap["altCutId"].first, unittest.equals(arg_altCutId));


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildListExperienceLocalesResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.list(arg_accountId, pageSize: arg_pageSize, pageToken: arg_pageToken, pphNames: arg_pphNames, studioNames: arg_studioNames, titleLevelEidr: arg_titleLevelEidr, editLevelEidr: arg_editLevelEidr, status: arg_status, customId: arg_customId, altCutId: arg_altCutId).then(unittest.expectAsync(((api.ListExperienceLocalesResponse response) {
        checkListExperienceLocalesResponse(response);
      })));
    });

  });


  unittest.group("resource-AccountsOrdersResourceApi", () {
    unittest.test("method--get", () {

      var mock = new HttpServerMock();
      api.AccountsOrdersResourceApi res = new api.PlaymoviespartnerApi(mock).accounts.orders;
      var arg_accountId = "foo";
      var arg_orderId = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 12), unittest.equals("v1/accounts/"));
        pathOffset += 12;
        index = path.indexOf("/orders/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_accountId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 8), unittest.equals("/orders/"));
        pathOffset += 8;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_orderId"));

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }
        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildOrder());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.get(arg_accountId, arg_orderId).then(unittest.expectAsync(((api.Order response) {
        checkOrder(response);
      })));
    });

    unittest.test("method--list", () {

      var mock = new HttpServerMock();
      api.AccountsOrdersResourceApi res = new api.PlaymoviespartnerApi(mock).accounts.orders;
      var arg_accountId = "foo";
      var arg_pageSize = 42;
      var arg_pageToken = "foo";
      var arg_pphNames = buildUnnamed3258();
      var arg_studioNames = buildUnnamed3259();
      var arg_name = "foo";
      var arg_status = buildUnnamed3260();
      var arg_customId = "foo";
      var arg_videoIds = buildUnnamed3261();
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 12), unittest.equals("v1/accounts/"));
        pathOffset += 12;
        index = path.indexOf("/orders", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_accountId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 7), unittest.equals("/orders"));
        pathOffset += 7;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }
        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(core.int.parse(queryMap["pageSize"].first), unittest.equals(arg_pageSize));
        unittest.expect(queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(queryMap["pphNames"], unittest.equals(arg_pphNames));
        unittest.expect(queryMap["studioNames"], unittest.equals(arg_studioNames));
        unittest.expect(queryMap["name"].first, unittest.equals(arg_name));
        unittest.expect(queryMap["status"], unittest.equals(arg_status));
        unittest.expect(queryMap["customId"].first, unittest.equals(arg_customId));
        unittest.expect(queryMap["videoIds"], unittest.equals(arg_videoIds));


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildListOrdersResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.list(arg_accountId, pageSize: arg_pageSize, pageToken: arg_pageToken, pphNames: arg_pphNames, studioNames: arg_studioNames, name: arg_name, status: arg_status, customId: arg_customId, videoIds: arg_videoIds).then(unittest.expectAsync(((api.ListOrdersResponse response) {
        checkListOrdersResponse(response);
      })));
    });

  });


  unittest.group("resource-AccountsStoreInfosResourceApi", () {
    unittest.test("method--list", () {

      var mock = new HttpServerMock();
      api.AccountsStoreInfosResourceApi res = new api.PlaymoviespartnerApi(mock).accounts.storeInfos;
      var arg_accountId = "foo";
      var arg_pageSize = 42;
      var arg_pageToken = "foo";
      var arg_pphNames = buildUnnamed3262();
      var arg_studioNames = buildUnnamed3263();
      var arg_videoId = "foo";
      var arg_countries = buildUnnamed3264();
      var arg_name = "foo";
      var arg_videoIds = buildUnnamed3265();
      var arg_mids = buildUnnamed3266();
      var arg_seasonIds = buildUnnamed3267();
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 12), unittest.equals("v1/accounts/"));
        pathOffset += 12;
        index = path.indexOf("/storeInfos", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_accountId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 11), unittest.equals("/storeInfos"));
        pathOffset += 11;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }
        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(core.int.parse(queryMap["pageSize"].first), unittest.equals(arg_pageSize));
        unittest.expect(queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(queryMap["pphNames"], unittest.equals(arg_pphNames));
        unittest.expect(queryMap["studioNames"], unittest.equals(arg_studioNames));
        unittest.expect(queryMap["videoId"].first, unittest.equals(arg_videoId));
        unittest.expect(queryMap["countries"], unittest.equals(arg_countries));
        unittest.expect(queryMap["name"].first, unittest.equals(arg_name));
        unittest.expect(queryMap["videoIds"], unittest.equals(arg_videoIds));
        unittest.expect(queryMap["mids"], unittest.equals(arg_mids));
        unittest.expect(queryMap["seasonIds"], unittest.equals(arg_seasonIds));


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildListStoreInfosResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.list(arg_accountId, pageSize: arg_pageSize, pageToken: arg_pageToken, pphNames: arg_pphNames, studioNames: arg_studioNames, videoId: arg_videoId, countries: arg_countries, name: arg_name, videoIds: arg_videoIds, mids: arg_mids, seasonIds: arg_seasonIds).then(unittest.expectAsync(((api.ListStoreInfosResponse response) {
        checkListStoreInfosResponse(response);
      })));
    });

  });


  unittest.group("resource-AccountsStoreInfosCountryResourceApi", () {
    unittest.test("method--get", () {

      var mock = new HttpServerMock();
      api.AccountsStoreInfosCountryResourceApi res = new api.PlaymoviespartnerApi(mock).accounts.storeInfos.country;
      var arg_accountId = "foo";
      var arg_videoId = "foo";
      var arg_country = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 12), unittest.equals("v1/accounts/"));
        pathOffset += 12;
        index = path.indexOf("/storeInfos/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_accountId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 12), unittest.equals("/storeInfos/"));
        pathOffset += 12;
        index = path.indexOf("/country/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_videoId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 9), unittest.equals("/country/"));
        pathOffset += 9;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_country"));

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }
        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildStoreInfo());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.get(arg_accountId, arg_videoId, arg_country).then(unittest.expectAsync(((api.StoreInfo response) {
        checkStoreInfo(response);
      })));
    });

  });


}

